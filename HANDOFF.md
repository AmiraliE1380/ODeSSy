# ODeSSy — Developer Handoff & Full Project Documentation
> **Purpose.** Self-contained brief for continuing development in a fresh
> conversation or by a new collaborator. Covers philosophy, architecture,
> every module and invariant, the audit methodology, all current empirical
> results, known issues, and a detailed design for the NEXT task:
> **encoding LLVM's lightweight analysis facts (LVI / known bits / SCEV) as
> SMT constraints at the over-approximation boundaries.**
>
> Owner: Amirali (UMich EECS). Advisor: Prof. Amir Shaikhha (weekly, Thu 11am EDT).
> Environment: WSL2 Ubuntu on x86-64; local LLVM build (23.0.0git trunk,
> `~/michigan/pl/llvm-project`); Z3 (C++ API, `<z3++.h>`); repo at
> `~/michigan/pl/smt-compiler-oracle`, branch `cgo-research`.
> Status date: 2026-07-17.

---

## 1. What ODeSSy is

**ODeSSy = On-Demand SMT (Compiler) System.** An out-of-tree LLVM
FunctionPass that proves UBSan integer-overflow traps unreachable using Z3
(`QF_BV`) and deletes the provably-dead ones.

Core philosophy (paper framing):
- **Analysis, not synthesis.** Not a superoptimizer: no candidate-program
  search. Fixed transformation (delete dead check); the solver only proves the
  licensing fact. Positioning trichotomy for related work: SMT to *find code*
  (Souper/STOKE), SMT to *check the compiler* (Alive2 translation validation),
  SMT to *prove facts native analyses can't* (ODeSSy). Souper's
  path-conditions/blockpc are the closest structural relative but Souper does
  not import LLVM dataflow facts into query contexts and answers latency with
  offline caching, not cheap queries.
- **Sound + incomplete.** Every failure (Z3 exception, timeout, unknown,
  unmodeled instruction, memory, loops, multi-predecessor traps) degrades to
  "keep the trap". SAT never means "bug exists" — only "not provably dead
  under our over-approximation".
- **On-demand.** The work list = the `llvm.ubsantrap` sites. Compile latency
  is a first-class concern (this emphasis distinguishes us from prior work).
- **Signed vs unsigned split.** Signed overflow is UB (C11 6.5p5) — the real
  elimination target. Unsigned wrap is defined (C11 6.2.5p9) and often
  intentional; we measure it separately and treat unsigned all-SAT (crypto) as
  a spec-mismatch finding, now also demonstrated *dynamically* (§7).

**Trap semantics / the query.** For each trap: assert dominating context ∧
trap condition. UNSAT ⇒ eliminate (rewrite guarding branch condition to a
constant; downstream `simplifycfg,adce` delete the block; `verify` checks IR).
Eval pipeline: `opt -passes="oracle-pass,simplifycfg,adce,verify"`.
Analysis-only invocations (`-disable-output`, pass alone) do NOT persist IR
changes — they exist to produce verdict logs.

---

## 2. Repository layout

```
smt-compiler-oracle/            (branch cgo-research)
├── OraclePass/
│   ├── OraclePass.cpp          # the pass (see §3)
│   ├── Z3Encoder.h / .cpp      # IR -> Z3 translation (see §4)
├── build/                      # cmake+ninja -> OraclePass.so
├── tests/test_phi{1..8}*.ll    # 8 hand-written IR tests; *_sat* expect SAT, else UNSAT
├── run_tests.sh                # regression gate over tests/ (audit mode); exit!=0 on failure
├── run_zlib.sh                 # audit harness: deflate.c x SPECS x {O1,O3}; SPECS/OPTS/TIMEOUT_SECS knobs
├── run_zlib_perf.sh            # perf protocol v2 (see §6); RUNS/SIZES/LEVEL/COOLDOWN knobs
├── run_zlib_behavioral.sh      # 2 minigzip builds differing only in eliminated traps; byte-identity check
├── make_perf_report.py         # perf CSV -> report CSV + console tables (min-based)
├── plot_smt_latencies.py       # per-verdict latency stats + 2x2 histogram (SAT red, UNSAT blue, UNKNOWN green)
├── evaluation/                 # baseline+oracle .ll files, perf_zlib.csv, perf_zlib_report.csv
├── logs/compilations/          # per-module verdict logs (stem-derived filenames, idempotent)
├── logs/opt_runs/              # captured opt stdout/stderr
├── perf_run.log                # last overnight perf run transcript
└── benchmark_commands.sh       # older full-matrix harness (zstd/openssl/polybench); superseded for dev by run_zlib*.sh
```
Sibling benchmark repos in `~/michigan/pl/`: zlib (primary), zstd, openssl,
polybench, lz4, boringssl, libsodium, rodinia, npb. zlib compiles raw with
`-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1` (no ./configure needed).

Build: `cd build && ninja` (CC=clang CXX=clang++ cmake -G Ninja at first
setup). Expect ~11 benign deprecation warnings (`BranchInst`/`isConditional`/
`getCondition` deprecated on LLVM trunk in favor of CondBrInst — cosmetic,
upstream churn; do not "fix" mid-experiment).

---

## 3. OraclePass.cpp — the pass

`struct OraclePass : PassInfoMixin<OraclePass>` with members:
`bool VacuityCheck` (audit mode), `unsigned QueryTimeoutMs` (default 10000).

**Pipeline registration parses parameters** (a plugin `cl::opt` would arrive
after opt's arg parsing, so parameters ride the pass name). Two orthogonal
axes: *audit* (off | vacuity) and *precision tier* (light | heavy):
- `oracle-pass`                      → performance mode, **light** tier (default)
- `oracle-pass<light>`               → explicit alias of the default
- `oracle-pass<heavy>`               → performance mode, **heavy** tier: light
  PLUS LLVM analysis facts (LVI/KnownBits/SCEV/!range) asserted at the
  over-approximation boundaries (§9). More UNSATs, higher compile latency
  (extra encoding work + larger queries). NOT YET IMPLEMENTED — §9 is its spec.
- `oracle-pass<vacuity>`             → audit mode: vacuity check + unsat cores
- `oracle-pass<vacuity;heavy;timeout=3000>` → parameters compose freely
Unknown parameters are rejected (opt reports unknown pass). The light/heavy
split is the user-facing latency/precision dial AND the built-in ablation for
the facts feature (light-vs-heavy table = the analysis-facts contribution).

**Per-function flow (`run`):**
1. Per-module log file `logs/compilations/<stem>.txt` (stem from module
   identifier; first function truncates, rest append; rerun overwrites).
2. **Hunter**: scan blocks for `llvm.ubsantrap` / `llvm.trap` calls.
3. **Anchor**: trap block must have a single predecessor ending in a
   conditional branch; that branch condition = overflow condition;
   `TrapOnTrue` = which successor is the trap. Multi-predecessor traps are
   skipped (known coverage gap: ~9/26 in single-TU signed deflate).
   Prints `Trap source: file:line` from DebugLoc when the input has `-g`.
4. Fresh `Z3Encoder Encoder(QueryTimeoutMs)` per trap (no cross-trap state);
   `enableUnsatCores()` in audit mode.
5. `tryEliminateTrap(...)`:
   - **Phase 0 — dominating guards.** Walk dom tree up from PredBB; for each
     dominator D ending in a 2-way conditional branch, if one outgoing EDGE
     dominates PredBB, assert that edge's condition (polarity GVal). Logged
     with index + IR text: `Guard[i] (true|false edge of 'bb'): <icmp ...>`.
     Soundness incl. loops: last visit to D before the trap is in the same
     iteration (a back edge in between would force revisiting D), so SSA
     operands denote the same values. Eliminated-trap branches later hold a
     constant consistent with the surviving edge — no contradiction.
   - **Phase 0.5 — dominating `llvm.assume` facts.** Any assume whose
     instruction dominates PredBB contributes its condition as a guard.
   - **Phase 1 — backward slice.** Worklist over operands. Boundaries (become
     free variables, slicing stops): loads, GEPs, loop-HEADER phis
     (LoopInfo), alien calls (anything not `.with.overflow`). Non-header phis
     recurse via `collectPhiConditions` (collects region branch/switch
     conditions so PHI gates are encodable). Guards are sliced too.
   - **Phase 2 — forward encode** in ReversePostOrder (defs before uses),
     only `Visited` instructions, via `Encoder.encodeInstruction`.
   - **Phase 3 — assert & solve.** Audit mode: guards asserted TRACKED with
     labels `G0..Gn`, then `push()`, trap condition tracked as `TRAP`, check.
     On UNSAT (audit): log `Unsat core: ...` (must be read BEFORE pop), then
     `pop()` (drops only trap cond) and re-check → context alone UNSAT ⇒ log
     `[VACUOUS]` and refuse to eliminate; else `[vacuity-ok]`.
     Perf mode: plain untracked asserts, no re-check.
   - **Containment**: Phases 2–3 wrapped in try/catch (`z3::exception`,
     `std::exception`) → `[Skip]` log line, trap kept, process survives.
     Timeout ⇒ `UNKNOWN (Solver gave up)` ⇒ kept.
6. **Kill** on eliminate: `Br->setCondition(ConstantInt i1)`; physical removal
   is simplifycfg+adce's job (deliberate division of labor).

**Log tokens (greppable, load-bearing for all scripts):** `UNSAT`,
`SAT (WARNING`, `UNKNOWN (Solver gave up`, `[vacuity-ok]`, `[VACUOUS]`,
`[Skip]`, `[Abort]`, `Unsat core:`, `Trap source:`, `Guard[`.
Identity in audit mode: #UNSAT-lines = #vacuity-ok + #VACUOUS.

---

## 4. Z3Encoder — IR → QF_BV

One context+solver per trap query. `ValueMap: Value* -> z3::expr`.

**The i1 invariant (source of the original crash, now totalized).** i1 has a
dual representation: icmp results & bool constants are Z3 **Bool**; everything
else is a **bit-vector** of its LLVM width; pointers/aliens are free 64-bit
BVs. Two coercion helpers make every bridge total:
`asBool(e)` (BV≠0) and `asBV(e, w)` (Bool→ite 0/1; resize via zext/extract;
w==s identity guards zext(e,0)). Consumption points that MUST asBool:
assertCondition(s), branch edge conditions, logical i1 ops, select conds, i1
phi arms. i1 icmp operands are unified to 1-bit BVs. `trunc iN->i1` yields
Bool (low bit == 1). Constants: exact via uint64 overload; >64-bit via decimal
string (i128-safe). NEVER cast a constant through `(unsigned)` — a truncated
constant manufactures bogus UNSATs silently.

**Encoded today:**
- BinaryOps: add/sub/mul/sdiv/udiv/srem/urem, and/or/xor (Bool at W==1),
  **shl/lshr/ashr** (shift-amount ≥ W is poison in LLVM, 0 in SMT — sound for
  defined executions). Non-integer (vector/FP) binops → free var.
- **nsw/nuw flags asserted as free facts** (bvadd/bvsub/bvmul no_overflow/
  no_underflow builtins). Soundness: wrap ⇒ poison; every encoded op feeds a
  branched-on condition; branching on poison is UB ⇒ defined executions don't
  wrap. (`shl` flags currently skipped — no Z3 builtin.)
- ICmp: all 10 int predicates (i1 operands unified to BV1).
- Casts: trunc (incl. →i1 as Bool), zext (Bool-source via asBV), sext
  (i1-source via ite all-ones/0). Non-integer casts → free var.
- ExtractValue over the FULL `{s,u}{add,sub,mul}.with.overflow` family:
  index 0 = wrapped result (BV arith is mod 2^W); index 1 = overflow bit via
  Z3's exact `bv*_no_overflow/underflow` builtins with correct signedness.
- Value intrinsics: **fshl/fshr** (funnel shift/rotate: sh=c urem W;
  `shl(a,sh)|lshr(b,W-sh)` resp. mirrored; sh==0 falls out since shift≥W→0),
  umax/umin/smax/smin (ite), abs (ite neg), bswap (byte extract+concat, W%16==0).
- Select → ite (i1 arms asBool'd). Non-loop-header **PHI** → nested ite gated
  by memoized CFG reachability:
  `Reach(B) = OR over preds P: Reach(P) ∧ EdgeCond(P→B)` — cache keyed
  **(Root, BB, PhiBB)** (the PhiBB "boundary wall" is part of the meaning;
  a 2-key cache was a real bug: cross-PHI cache poisoning). Back edges skipped
  via recursion-stack set (acyclic semantics). Switch edges: case equality /
  default = conjunction of disequalities (widths unified via asBV).
- Free variables (over-approximation boundaries): loads, GEPs, loop-header
  phis, alien calls, vector ops, unknown instructions, alien terminator edges.

**Audit plumbing:** `push/pop` (context|trap boundary), `enableUnsatCores()`
(`Solver.set("unsat_core", true)`), `assertConditionTracked(V, IsTrue, Label)`
(`Solver.add(e, label)`), `getUnsatCore()` (stringified `Solver.unsat_core()`;
valid only immediately after an UNSAT check, before pop).

---

## 5. Audit methodology (the "genuinity" chain) — all implemented

A claimed UNSAT is only counted after surviving, in order:
1. **Cross-opt-level stability** (O1 == O3 verdicts on same source).
2. **Vacuity check** (audit mode, automatic): after UNSAT, drop the trap
   condition; guards alone must be SAT. Contradictory context ⇒ everything is
   vacuously UNSAT (encoding-bug signature: SAT...SAT then UNSAT-forever
   phase transition). Current measured vacuity rate on zlib: **0%**.
3. **Unsat core** (audit mode, automatic): minimal named-assumption set.
   Healthy shape: `Gk [Gm...] TRAP`. Core without `TRAP` = guards
   self-refuting (bug). Core = only `TRAP` = trap condition encoded false
   (bug). Cores also expose guard waste: typically 1–2 of ~12 collected
   guards are used → guard-pruning is a compile-time lead.
4. **Ablation** for mechanism claims (e.g. comment out the 3 shift lines →
   signed UNSATs 2→0, unsigned 41→25/24→8: shifts NECESSARY for all signed
   proofs, ~40–67% of unsigned).
5. **Manual source mapping** via `Trap source:` + guard IR text.
6. **Behavioral equivalence** (`run_zlib_behavioral.sh` + incidental §7 evidence).

**The worked example (paper-ready).** zlib `deflate.c:1018`,
`RANK(f) = ((f)*2) - ((f)>4 ? 9 : 0)` in
`else if (strm->avail_in==0 && RANK(flush) <= RANK(old_flush) ...)`.
Core = `G0 TRAP` where G0: `icmp sgt i32 %x, -1` (value ≥ 0); upper bound
comes from the encoded background slice; `f*2` travels through a shift (the
ablation's smoking gun). Proven dead in `deflate` AND its inlined copy inside
`deflateParams` (deflateParams calls deflate internally) — one source check,
two eliminations, ~2–5 ms each.

---

## 6. Empirical status

**Single-TU audit harness (deflate.c only, `run_zlib.sh`), current encoder:**
| spec | opt | traps (call sites) | UNSAT | SAT | vacuous | skips |
|---|---|---|---|---|---|---|
| signed | O1/O3 | 26 | 2 | 15 | 0 | 0 |
| unsigned | O1 | 457 | 50 | 401 | 0 | 0 |
| unsigned | O3 | 438 | 33 | 391 | 0 | 0 |
(9 signed traps skipped by the Anchor: multi-predecessor. The +9/+9 unsigned
gain came from the fshl/nsw/assume/minmax encodings.)

**Whole-library perf run (`run_zlib_perf.sh`, 15 TUs + unsanitized minigzip,
level 9, corpus 8/64/512 MB, 10 shuffled interleaved reps, min-statistic):**
- Configs per spec: `base` = clang -O3 (+aggressive inlining) → llc;
  `base2x` = + `opt default<O3>` (control); `oracle` = + oracle+cleanup +
  `opt default<O3>`. Backend is pure `llc -O3 -relocation-model=pic`
  (IMPORTANT: never `clang -O3 -c` on .ll — it silently reruns the whole
  mid-end and destroys the config distinctions).
- Eliminations: signed 10/125, unsigned 138/1219, both 142/1296.
- Runtime, oracle vs base2x (min-based): signed ≈0; unsigned ≈+0.8%;
  **both +2.2/+2.1/+2.1% at 8/64/512 MB — FLAT ⇒ warm-path effect**, not the
  predicted shrinking cold-path curve.
- Sanitizer overhead ceiling vs unsanitized: signed ~1%, unsigned ~2.6%,
  both ~5.6%. Oracle recovers both 5.6%→3.0% ⇒ **11% of checks = ~45% of
  overhead**. Superadditivity both ways (both > signed+unsigned in overhead
  AND in recovery) ⇒ combined spec = headline configuration.
- `base2x ≈ base` (±0.5%) everywhere ⇒ O3 is a de-facto fixpoint on this
  workload; control validates attribution. (`base2x` even GREW .text +448 B.)
- Binary size (deterministic corroboration): both.oracle `.text` −656 B vs
  base2x (−0.33%; ≈4.6 B/trap ≈ cmp+jcc+ud2).
- **Compile cost (the open problem):** oracle stage 1.4 s (signed, 11 ms/trap)
  / 289 s (unsigned, 233 ms/trap) / 170 s (both, 128 ms/trap). Causes: guard
  chains grow with trap index + O(traps × function-size) re-slice quadratic.
  Known mitigations, none implemented: parallelize TUs (trivial, ÷cores),
  parallelize traps (fully independent), guard pruning (cores show 1–2/12
  used), per-function encoder/RPO reuse.

**SMT latency tooling:** `plot_smt_latencies.py logs/compilations/*_analysis.txt`
→ stats CSV + 2×2 log-scale histograms per verdict class.

---

## 7. Dynamic findings from the 512 MB corpus

All `unsigned` and `both` binaries — **including untouched baselines** — die
with SIGILL (rc=132) on the 512 MB corpus, at the same input point, at 8/64 MB
never, in `signed`/`none` never. Meaning: a real intentional unsigned
wraparound in zlib accumulates past a threshold between 64 and 512 MB.
Two uses:
- **Spec-mismatch, demonstrated dynamically**: unsigned-overflow-sanitized
  zlib cannot compress large files at all.
- **Soundness evidence**: oracle binaries trap exactly where baselines trap
  (the firing check was SAT-kept). Divergence would have meant an unsound kill.
- Consequence for data: 512 MB rows are valid for *within-spec* comparisons
  (all configs did identical work before dying) but INVALID vs `none`
  (the "+7% speedup vs unsanitized" at 512 MB is a died-early artifact).
- TODO (10 min): identify the wrapping line — build one `-O1 -g` sanitized
  minigzip and `gdb -batch -ex 'run -9 < perf_test/corpus.512M > /dev/null'
  -ex bt`.

---

## 8. Known issues / hygiene

- **Anchor skips multi-predecessor trap blocks** (single guarding branch
  assumption). ~35% of signed single-TU traps never queried. Real coverage
  lead.
- **Quadratic + guard-chain compile cost** (§6). Not urgent for zlib; blocks
  sha256/zstd (analysis timeouts at 600 s with 2k+ traps/function).
- Deprecation warning wall on LLVM trunk (BranchInst API) — cosmetic.
- `grep -c 'llvm.ubsantrap'` counts the `declare` line too; scripts use
  `call void @llvm.ubsantrap` (call sites only). `.with.overflow` count
  similar caveat.
- Perf harness excludes corpora from git (`.gitignore perf_test/corpus.*`,
  `seed.txt`) — GitHub 100 MB limit; corpora regenerate from zlib sources.
- Measurement doctrine: deterministic workload ⇒ **min** statistic (noise is
  one-sided); shuffled interleaved reps guard against systematic drift;
  never benchmark on battery / without Best Performance power mode (WSL2 on
  Surface throttles hard — this once produced fake ±20% "results").
- Benchmarks where unsigned all-SAT is CORRECT: sha256 (mod-2^32 by design;
  signed spec emits ZERO traps there — crypto is all-unsigned, a finding).
- sha256 unsigned shows huge UNSAT avalanches via guard chaining (later
  checks implied by earlier ones) — plausible redundant-check elimination but
  NOT yet vacuity/core-audited (runs predate audit machinery + they time out).
  Audit before counting.

---

## 9. NEXT TASK (this is what the new conversation should build):
## The HEAVY tier — encoding LLVM's lightweight analysis facts at the boundaries

**Product framing (decided):** the pass gets two performance-mode tiers,
selected via pass parameter:
- **`light`** — the pass exactly as it exists today (default; nothing changes).
- **`heavy`** — everything in light, plus the boundary fact-encoding specified
  below. Higher compile latency by design (extra analysis queries + encoding
  time + bigger SMT formulas) in exchange for more eliminations. Users pick
  the tier; papers report both columns. Implementation: a second bool member
  (e.g. `HeavyMode`) parsed exactly like `vacuity` (see §3 registration),
  threaded to wherever boundary variables are created/annotated. `light` must
  remain byte-for-byte the current behavior — the tier split doubles as the
  facts ablation, so any change to light-tier output is a bug.

**Agreed design (do NOT re-litigate; rationale in git history/discussions):**
The over-approximation boundaries STAY where they are (loads, alien calls,
loop-header phis, GEPs, vectors, unknowns). Slicing *through* a load is
unsound without a memory model; calls have no body. The upgrade is:
**boundary values stop being free and become free-plus-constrained** — assert
everything LLVM already knows about them:

1. **LazyValueInfo (LVI)**: per-point constant ranges.
   `auto &LVI = FAM.getResult<LazyValueAnalysis>(F);`
   `ConstantRange CR = LVI.getConstantRange(V, CtxI /*e.g. PredBB terminator*/);`
2. **Known bits**: `KnownBits KB = computeKnownBits(V, DL);`
   (`llvm/Analysis/ValueTracking.h`; DL from `F.getParent()->getDataLayout()`).
   Assert `(x ^ knownValue) & knownMask == 0` where knownMask = KB.Zero|KB.One.
3. **SCEV for loop-header phis** (the big unlock for in-loop traps):
   `auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);`
   `ConstantRange CR = SE.getUnsignedRange(SE.getSCEV(Phi));` + signed range.
4. **!range metadata** on loads (`I.getMetadata(LLVMContext::MD_range)`) —
   loads are the most common boundary; this is the only fact source for them
   besides KnownBits.

**ConstantRange → Z3 (sound universal recipe):** skip full sets; otherwise
assert all four extreme bounds — `uge umin ∧ ule umax ∧ sge smin ∧ sle smax`
(using `CR.getUnsignedMin/Max`, `getSignedMin/Max`). Always sound including
wrapped ranges (bounds are just weaker there). Exact wrapped-range encoding
can come later.

**Where to hook:** after Phase 1, compute the boundary set = Visited values
that terminated slicing (or simpler: any sliced Value whose encoder image is a
free variable — consider having getOrCreateZ3Expr record "free" creations).
For each boundary value V:
- Only use point-sensitive facts (LVI) if V's def **dominates PredBB** (DT
  check) — else the fact's program point isn't valid at the trap. KnownBits /
  SCEV / !range are value-facts (poison-semantics caveat as with nsw) and
  don't need the dominance check.
- Assert facts TRACKED in audit mode with labels `LVI:<n>`, `KB:<n>`,
  `SCEV:<n>`, `RM:<n>` so unsat cores attribute proofs to fact sources —
  this directly produces the paper's "which analysis mattered" table.
- All fact assertions are gated behind the **`heavy`** parameter (see the
  product framing above): `oracle-pass<heavy>` in perf runs,
  `oracle-pass<vacuity;heavy>` in audit runs. Light-vs-heavy is the one-flag
  ablation, analogous to the shift ablation.

**Acceptance protocol for the feature (same bar as everything else):**
1. `bash run_tests.sh` stays 8/8 (add 1–2 new tests where ONLY a range fact
   can prove UNSAT, e.g. a load with !range metadata feeding an add).
2. `SPECS=signed bash run_zlib.sh` then unsigned, in BOTH tiers (update the
   script's analysis invocation to take a TIER knob → `oracle-pass<vacuity>`
   vs `oracle-pass<vacuity;heavy>`): light-tier numbers must be IDENTICAL to
   today's (regression guard); in heavy tier `skips` MUST stay 0 (sort bugs)
   and `vacuous` MUST stay 0 (a wrong fact assertion = contradictory context —
   the vacuity checker is precisely the alarm for a bad LVI/SCEV import).
   Count the UNSAT delta; core-inspect a sample of new UNSATs (expect
   `LVI:`/`SCEV:` labels in cores).
3. Light-vs-heavy ablation table (per spec, per opt): eliminations AND
   per-trap compile latency, since heavy's cost is part of its story.
4. Whole-lib perf rerun overnight (plugged in, Best Performance, `nohup`).
5. If SCEV lands: sha256/zstd may need the parallelization or bigger
   TIMEOUT_SECS first — don't let a precision experiment silently become a
   timeout experiment.

**After this feature (standing roadmap, in order):** guard pruning +
parallelize TUs/traps + per-function encoder reuse (compile cost);
multi-predecessor trap anchors (coverage); audit sha256's guard-chain
avalanche; zstd end-to-end; new benchmarks (SPEC CPU 2017 triage, Rodinia/
NPB); array-bounds spec (`-fsanitize=bounds`) on the same skeleton; paper
writing (mechanism = shift ablation + cores; methodology = vacuity/
containment/timeout semantics; results = §6/§7).

---

## 10. Command cheat-sheet

```bash
cd ~/michigan/pl/smt-compiler-oracle
ninja -C build                                   # rebuild pass
bash run_tests.sh                                # regression gate (8/8)
SPECS=signed  bash run_zlib.sh                   # audit run, signed
SPECS=unsigned bash run_zlib.sh                  # audit run, unsigned
grep -B25 'Unsat core' logs/compilations/deflate_integer_signed_O3_analysis.txt
nohup bash run_zlib_perf.sh > perf_run.log 2>&1 &   # overnight perf (O3-only by design)
python3 make_perf_report.py                      # tables from evaluation/perf_zlib.csv
python3 plot_smt_latencies.py logs/compilations/*_analysis.txt
bash run_zlib_behavioral.sh                      # byte-identity soundness check
# manual single run, audit mode, 3 s query timeout:
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;timeout=3000>" -disable-output some.ll
```
