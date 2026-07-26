# ODeSSy — Developer Handoff & Full Project Documentation
> **Purpose.** Self-contained brief for continuing development in a fresh
> conversation or by a new collaborator. Covers philosophy, architecture,
> every module and invariant, the audit methodology, all current empirical
> results, known issues, and the NEXT tasks: **parallelizing SMT queries,
> perf runs on zlib+OpenSSL, and the sanitizer × benchmark slowdown matrix.**
>
> Owner: Amirali (UMich EECS). Advisor: Prof. Amir Shaikhha (weekly, Thu 11am EDT).
> Environments: (a) WSL2 Ubuntu x86-64, local LLVM build (23.0.0git trunk,
> `~/michigan/pl/llvm-project`), Z3 C++ API; (b) NEW: macOS (Apple Silicon)
> being provisioned — see §11; (c) planned: CloudLab server
> (https://www.cloudlab.us/) for parallel + x86 perf runs.
> Repo `~/michigan/pl/smt-compiler-oracle`, branch `cgo-research`.
> Target venue: CGO 2027, R2 deadline **Sept 10, 2026**.
> Paper title (working): *ODeSSy: On-Demand SMT System for Compiler
> Super-Analysis and Optimization*.
> Status date: 2026-07-26.

---

## 1. What ODeSSy is

**ODeSSy = On-Demand SMT (Compiler) System.** An out-of-tree LLVM
FunctionPass that proves UBSan integer-overflow traps unreachable using Z3
(`QF_BV`) and deletes the provably-dead ones.

Core philosophy (paper framing):
- **Super-analysis vs super-optimization (the invented term — use it).**
  Not a superoptimizer: no candidate-program search. Fixed transformation
  (delete dead check); the solver only proves the licensing fact. Positioning
  trichotomy: SMT to *find code* (Souper/STOKE), SMT to *check the compiler*
  (Alive2), SMT to *prove facts native analyses can't* (ODeSSy =
  super-analysis). Souper's path-conditions/blockpc are the closest
  structural relative but Souper does not import LLVM dataflow facts into
  query contexts and answers latency with offline caching, not cheap queries.
- **Sound + incomplete.** Every failure (Z3 exception, timeout, unknown,
  unmodeled instruction, memory, loops, multi-predecessor traps) degrades to
  "keep the trap". SAT never means "bug exists" — only "not provably dead
  under our over-approximation".
- **On-demand.** The work list = the `llvm.ubsantrap` sites. Compile latency
  is a first-class concern.
- **Signed vs unsigned split.** Signed overflow is UB (C11 6.5p5) — the real
  elimination target. Unsigned wrap is defined (C11 6.2.5p9) and often
  intentional; measured separately; unsigned all-SAT (crypto) is a
  spec-mismatch finding, demonstrated dynamically (§7).

**Trap semantics / the query.** For each trap: assert dominating context ∧
trap condition. UNSAT ⇒ eliminate (rewrite guarding branch condition to a
constant; downstream `simplifycfg,adce` delete the block; `verify` checks IR).
Eval pipeline: `opt -passes="oracle-pass,simplifycfg,adce,verify"`.
Analysis-only invocations (`-disable-output`) do NOT persist IR changes.

---

## 2. Repository layout

```
smt-compiler-oracle/            (branch cgo-research; tags: v1.0-course-submission, v2.0-overflow-core)
├── OraclePass/
│   ├── OraclePass.cpp          # the pass (§3)
│   ├── Z3Encoder.h / .cpp      # IR -> Z3 translation + fact primitives (§4)
│   ├── FactEncoder.h / .cpp    # HEAVY tier policy module (§9)
├── build/                      # cmake+ninja -> OraclePass.so (3 source files in CMakeLists)
├── tests/test_phi{1..8}*.ll    # 8 light-tier tests; *_sat* expect SAT, else UNSAT
├── tests/test_heavy_*.ll       # 3 heavy-tier tests: range_load (RM), scev_loop (SCEV),
│                               # range_call (RA); light=SAT, heavy=UNSAT with labeled core.
│                               # run_tests.sh is NOT yet tier-aware -> these show as
│                               # expected FAILs in the light gate (known issue, §8)
├── run_tests.sh                # regression gate; 8/8 among test_phi*
├── run_zlib.sh                 # audit harness; SPECS/OPTS/TIMEOUT_SECS/TIER knobs;
│                               # TIER=heavy uses _heavy stems (separate logs/.ll)
├── run_zlib_perf.sh            # perf protocol v2; RUNS/SIZES/LEVEL/COOLDOWN/TIER knobs;
│                               # TIER=heavy writes evaluation/perf_zlib_heavy.csv
├── run_zlib_behavioral.sh      # byte-identity soundness check
├── make_perf_report.py         # perf CSV -> report; [in] [out] [--specs both] (filters
│                               # rows/summaries; 'none' always kept as reference)
├── plot_smt_latencies.py       # per-verdict latency stats + 2x2 histograms; default glob
│                               # logs/compilations/*_analysis.txt (audit logs); pass the
│                               # perf logs (logs/compilations/{signed,unsigned,both}.*.txt)
│                               # explicitly to plot the perf experiment
├── evaluation/                 # .ll files, perf_zlib.csv, perf_zlib_report.csv (+_both, +heavy variants)
├── logs/compilations/          # per-module verdict logs (stem-derived, idempotent)
└── logs/opt_runs/              # captured opt stdout/stderr
```
Sibling benchmark repos in `~/michigan/pl/`: zlib (primary), zstd, openssl,
polybench, lz4, boringssl, libsodium, rodinia, npb. zlib compiles raw with
`-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1`.

Build: `cd build && ninja`. Expect ~11 benign deprecation warnings
(`BranchInst` API churn on trunk — cosmetic; do not "fix" mid-experiment).

---

## 3. OraclePass.cpp — the pass

Members: `bool VacuityCheck` (audit), `bool HeavyMode` (tier),
`unsigned QueryTimeoutMs` (default 10000).

**Pipeline registration parses parameters** (ride the pass name). Two
orthogonal axes, all IMPLEMENTED:
- `oracle-pass`                → perf mode, light tier (default)
- `oracle-pass<light>`         → explicit alias; `<light;heavy>` is rejected
- `oracle-pass<heavy>`         → perf mode, heavy tier (§9)
- `oracle-pass<vacuity>`       → audit mode
- `oracle-pass<vacuity;heavy;timeout=3000>` → parameters compose freely
Unknown parameters rejected. **Light must stay byte-for-byte identical to
pre-tier behavior** — the tier split doubles as the facts ablation; any
change to light-tier output is a bug. Heavy runs print `[tier: heavy]` per
function. LVI/SCEV analyses are fetched from the FAM only in heavy mode.

**Per-function flow (`run`):** unchanged from before the tier work except
step 5 gains Phase 2.5:
1. Per-module log `logs/compilations/<stem>.txt` (stem from module
   identifier; first function truncates, rest append; rerun overwrites).
2. **Hunter**: scan blocks for `llvm.ubsantrap` / `llvm.trap` calls.
3. **Anchor**: single-predecessor trap block ending in a conditional branch;
   multi-predecessor traps skipped (~9/26 signed single-TU — coverage lead).
   Prints `Trap source: file:line` from DebugLoc when input has `-g`.
4. Fresh `Z3Encoder Encoder(QueryTimeoutMs)` per trap;
   `enableUnsatCores()` in audit mode.
5. `tryEliminateTrap(...)`:
   - **Phase 0 — dominating guards.** Dom-tree walk up from PredBB; for each
     dominator D with a 2-way conditional branch whose one outgoing EDGE
     dominates PredBB, assert that edge's condition (polarity GVal). Logged
     `Guard[i] (true|false edge of 'bb'): <icmp ...>`. Sound incl. loops
     (SSA + last-visit argument).
   - **Phase 0.5 — dominating `llvm.assume` facts.**
   - **Phase 1 — backward slice.** Boundaries (free variables): loads, GEPs,
     loop-HEADER phis, alien calls. Non-header phis recurse via
     `collectPhiConditions`. Guards sliced too.
   - **Phase 2 — forward encode** in RPO (defs before uses).
   - **Phase 2.5 (HEAVY ONLY)** — FactEncoder walks the encoder's recorded
     free variables and asserts RM/RA/KB/LVI/SCEV facts, context-side
     (pre-push), tracked with labels in audit mode. Logs
     `[heavy] N analysis fact(s) on M boundary value(s)`.
   - **Phase 3 — assert & solve.** Audit: guards tracked `G0..Gn`, `push()`,
     trap tracked `TRAP`, check; on UNSAT log core (BEFORE pop), `pop()`,
     re-check context alone → UNSAT ⇒ `[VACUOUS]`, refuse to eliminate.
   - **Containment**: try/catch (`z3::exception`, `std::exception`) →
     `[Skip]`, trap kept. Timeout ⇒ `UNKNOWN (Solver gave up)` ⇒ kept.
6. **Kill**: `Br->setCondition(ConstantInt i1)`; physical removal is
   simplifycfg+adce's job.

**Log tokens (load-bearing for scripts):** `UNSAT`, `SAT (WARNING`,
`UNKNOWN (Solver gave up`, `[vacuity-ok]`, `[VACUOUS]`, `[Skip]`, `[Abort]`,
`Unsat core:`, `Trap source:`, `Guard[`, `[tier: heavy]`, `[heavy]`,
`Fact[RM:` / `Fact[RA:` / `Fact[KB:` / `Fact[LVI:` / `Fact[SCEV:`.
Identity in audit mode: #UNSAT-lines = #vacuity-ok + #VACUOUS.

---

## 4. Z3Encoder — IR → QF_BV (mechanism layer)

One context+solver per trap query. `ValueMap: Value* -> z3::expr`.

**The i1 invariant** (source of the original crash, now totalized): icmp
results & bool constants are Z3 **Bool**; everything else a **bit-vector**
of its LLVM width; pointers/aliens free 64-bit BVs. `asBool(e)` (BV≠0) and
`asBV(e, w)` (Bool→ite 0/1; resize via zext/extract) make every bridge
total. i1 icmp operands unified to 1-bit BVs; `trunc iN->i1` yields Bool.
Constants: exact via uint64 overload; >64-bit via decimal string
(i128-safe). NEVER cast a constant through `(unsigned)`.

**Encoded:** BinaryOps add/sub/mul/sdiv/udiv/srem/urem, and/or/xor (Bool at
W==1), **shl/lshr/ashr** (shift≥W poison in LLVM, 0 in SMT — sound for
defined executions); **nsw/nuw flags as free facts** (bv*_no_overflow/
underflow; poison argument); all 10 ICmp predicates; trunc/zext/sext;
ExtractValue over the FULL `{s,u}{add,sub,mul}.with.overflow` family (index
0 = wrapped result, index 1 = overflow bit via exact Z3 builtins);
fshl/fshr, umax/umin/smax/smin, abs, bswap; Select → ite; non-loop-header
**PHI** → nested ite gated by memoized CFG reachability
(`Reach(B) = OR over preds P: Reach(P) ∧ EdgeCond(P→B)`, cache keyed
**(Root, BB, PhiBB)** — 2-key cache was a real cross-PHI poisoning bug;
back edges skipped via recursion-stack set); switch edges (case equality /
default disequality conjunction). Free variables: loads, GEPs, loop-header
phis, alien calls, vector ops, unknowns, alien terminator edges.

**Boundary bookkeeping (new):** every free-variable creation is recorded in
creation order in `FreeVars`; `getFreeVariables()` exposes the boundary set
to the heavy tier. Recording happens in light too (vector push only — no
solver/log effect, byte-identity preserved).

**Fact primitives (new, mechanism only — policy lives in FactEncoder):**
- `assertRange(V, ConstantRange, Label)` — four extreme bounds
  (uge/ule/sge/sle), trivial bounds skipped, full/empty sets refused (empty
  = LVI "dead point"; importing it would fabricate a vacuous context).
  Width sanity-checked against V's type. Sound for wrapped ranges (bounds
  weaker there). Exact wrapped-range encoding deliberately deferred.
- `assertKnownBits(V, KnownBits, Label)` — `(X & Zero)==0 ∧ (X & One)==One`;
  unknown/conflicting masks refused.
- `bvConst(APInt)` — width-exact, i128-safe (decimal-string path).
- Label nonempty ⇒ tracked assertion (eligible for cores); empty ⇒ plain.

**Audit plumbing:** push/pop (context|trap boundary), enableUnsatCores,
assertConditionTracked, getUnsatCore (valid only immediately after an UNSAT
check, BEFORE pop).

---

## 5. Audit methodology (the "genuinity" chain) — all implemented

A claimed UNSAT is only counted after surviving, in order:
1. **Cross-opt-level stability** (O1 == O3 verdicts on same source).
2. **Vacuity check** (audit mode, automatic): after UNSAT, drop the trap
   condition; guards+facts alone must be SAT. Measured vacuity rate on
   zlib, BOTH tiers: **0%**. In heavy tier this is ALSO the alarm for a
   wrong fact import (a bad LVI/SCEV/RA assertion = contradictory context).
3. **Unsat core** (audit mode, automatic): healthy shape `Gk [Gm...] TRAP`,
   now possibly with `RM:/RA:/KB:/LVI:/SCEV:` labels — the paper's "which
   analysis mattered" evidence. Core without `TRAP` = guards self-refuting
   (bug). Core = only `TRAP` = trap condition encoded false (bug). Cores
   show 1–2 of ~12 guards used ⇒ guard-pruning is a compile-time lead.
4. **Ablation** for mechanism claims: shift encoding (signed UNSATs 2→0,
   unsigned 41→25 / 24→8) and the one-flag light-vs-heavy tier split.
5. **Manual source mapping** via `Trap source:` + guard IR text.
6. **Behavioral equivalence** (`run_zlib_behavioral.sh` + §7 evidence).

**The worked example (paper-ready).** zlib `deflate.c:1018`,
`RANK(f) = ((f)*2) - ((f)>4 ? 9 : 0)`. Core = `{G0: icmp sgt i32 %x, -1,
TRAP}`; upper bound from the encoded background slice; `f*2` travels
through a shift (the ablation's smoking gun). Proven dead in `deflate` AND
its inlined copy in `deflateParams` — one source check, two eliminations,
~2–5 ms each.

---

## 6. Empirical status

**Single-TU audit (deflate.c, `run_zlib.sh`) — LIGHT tier:**

| spec | opt | traps | UNSAT | SAT | vacuous | skips |
|---|---|---|---|---|---|---|
| signed | O1/O3 | 26 | 2 | 15 | 0 | 0 |
| unsigned | O1 | 457 | 50 | 401 | 0 | 0 |
| unsigned | O3 | 438 | 33 | 391 | 0 | 0 |

(9 signed traps skipped by the Anchor: multi-predecessor.)

**HEAVY tier on the same inputs: IDENTICAL verdicts (heavy ≡ light).**
Verdict sequences diff clean (checked). Fact-source diagnosis on unsigned
O1: `Fact[SCEV` ×2 (zlib loops are data-dependent `while`s ⇒ full-set
ranges), `Fact[RA` ×15 (real inferred attributes, e.g. [0,4), [0,6)),
RM ≈ 0 (C IR carries no !range), KB empty on raw loads, LVI redundant with
our exact guard encoding. No fact label is NECESSARY in any core (13 cores
*mention* fact labels — Z3 cores aren't minimal; convenient, not
necessary). This is the honest ablation row: on zlib, remaining SATs need
memory modeling / loop invariants, or are genuinely reachable (§7). The
heavy MECHANISM is validated by the 3 targeted tests (RM/SCEV/RA each
proving a light-SAT trap UNSAT with the correct core label) and by
vacuous=0, skips=0 everywhere. Heavy's expected payoff: affine
constant-trip-count workloads (PolyBench/Rodinia/NPB) — the pending
experiment.

**Whole-library perf run (light tier; 15 TUs + unsanitized minigzip, level
9, 8/64/512 MB corpora, 10 shuffled interleaved reps, min-statistic):**
- Configs: `base` = clang -O3 (+aggressive inlining) → llc; `base2x` =
  + `opt default<O3>` (control); `oracle` = + oracle+cleanup + `default<O3>`.
  Backend is pure `llc -O3 -relocation-model=pic` (never `clang -O3 -c` on
  .ll — it reruns the mid-end and destroys config distinctions).
- Eliminations: signed 10/125, unsigned 138/1219, both 142/1296.
- Runtime, oracle vs base2x (min-based): signed ≈0; unsigned ≈+0.8%;
  **both +2.2/+2.1/+2.1% at 8/64/512 MB — FLAT ⇒ warm-path effect.**
- Overhead ceiling vs unsanitized: signed ~1%, unsigned ~2.6%, both ~5.6%;
  oracle recovers 5.6%→3.0% ⇒ **11% of checks = ~45% of overhead**.
  Superadditive both ways ⇒ combined spec = headline configuration.
- `base2x ≈ base` (±0.5%) ⇒ O3 is a de-facto fixpoint here; control
  validates attribution. Binary size: both.oracle `.text` −656 B vs base2x
  (−0.33%; ≈4.6 B/trap ≈ cmp+jcc+ud2).
- **Compile cost (the open problem): 11–233 ms/trap** (1.4 s signed /
  289 s unsigned / 170 s both, whole lib). Causes: guard chains grow with
  trap index + O(traps × function-size) re-slice quadratic. Mitigations
  (none implemented): parallelize TUs, parallelize traps, guard pruning,
  per-function encoder/RPO reuse.

**Perf-run SMT latency logs** live at
`logs/compilations/{signed,unsigned,both}.<tu>.txt` (45 files, ~2640
queries) — pass them explicitly to `plot_smt_latencies.py` (its default
glob only sees `*_analysis.txt` audit logs).

---

## 7. Dynamic findings from the 512 MB corpus

All `unsigned`/`both` binaries — including untouched baselines — die SIGILL
(rc=132) on the 512 MB corpus, at the same input point; never at 8/64 MB;
never under signed/none. A real intentional unsigned wraparound in zlib
accumulates past a threshold between 64 and 512 MB. Uses:
- **Spec-mismatch demonstrated dynamically**: unsigned-sanitized zlib cannot
  compress large files at all.
- **Soundness evidence**: oracle binaries trap exactly where baselines trap
  (the firing check was SAT-kept).
- Data consequence: 512 MB rows valid within-spec, INVALID vs `none`.
- TODO (10 min): identify the wrapping line — one `-O1 -g` sanitized
  minigzip + `gdb -batch -ex run -ex bt`.

---

## 8. Known issues / hygiene

- **run_tests.sh is not tier-aware**: the three `tests/test_heavy_*.ll`
  files show as expected FAILs (light gate runs them light ⇒ SAT vs UNSAT
  expectation). Fix: run `*heavy*` files in a separate section with
  `oracle-pass<vacuity;heavy>`; also re-run the 8 phi tests under heavy
  (expectations unchanged — facts only add constraints). Until then:
  8/8 among `test_phi*` = pass.
- **Anchor skips multi-predecessor trap blocks** (~35% of signed single-TU
  traps never queried). Real coverage lead.
- **Quadratic + guard-chain compile cost** (§6). Blocks sha256/zstd
  (timeouts at 600 s with 2k+ traps/function). Parallelization is next (§10).
- Deprecation warning wall (BranchInst API) — cosmetic, leave alone.
- Trap counting: use `call void @llvm.ubsantrap` (call sites only), not a
  bare grep (counts the declare line).
- Perf corpora excluded from git; regenerate from zlib sources.
- Measurement doctrine: deterministic workload ⇒ **min** statistic;
  shuffled interleaved reps; never on battery / non-Best-Performance
  (WSL2 throttling once produced fake ±20% "results").
- **macOS portability of harness scripts**: they assume GNU userland
  (`timeout`, `stat -c`, `shuf`, `size` output format). On Mac either
  `brew install coreutils` and use g-prefixed tools, or keep benchmarking
  on Linux (WSL2/CloudLab) — recommended anyway for x86 comparability (§11).
- sha256 unsigned UNSAT avalanche (guard chaining): still un-audited; audit
  (vacuity + cores) before counting.
- Benchmarks where unsigned all-SAT is CORRECT: sha256 (mod-2^32 by design;
  signed spec emits ZERO traps there — crypto is all-unsigned, a finding).

---

## 9. HEAVY tier — IMPLEMENTED (was the spec; now documentation)

Architecture = mechanism/policy split:
- **Z3Encoder** (mechanism): records the boundary set (`FreeVars`), exposes
  `assertRange` / `assertKnownBits` primitives (§4). No LLVM-analysis
  dependencies — stays a pure IR→Z3 translator.
- **FactEncoder** (policy, `OraclePass/FactEncoder.{h,cpp}`): constructed
  per trap in Phase 2.5 (heavy only) with (Z3Encoder&, LVI*, SE*, DT, DL,
  Audit, Log). Walks integer-typed boundary values; fires five sources,
  each labeled and logged `Fact[<SRC>:<n>] <val> in <range>`:
  1. **RM** — `!range` metadata on loads/calls
     (`getConstantRangeFromMetadata(*MD)`).
  2. **RA** — `range` ATTRIBUTE on call-sites / callee returns
     (`CallBase::getRange()`) and on function parameters
     (`Function::getParamAttribute(ArgNo, Attribute::Range)`).
  3. **KB** — `computeKnownBits(V, DL)`; masks asserted unless unknown.
  4. **LVI** — `getConstantRange(V, PredBB->getTerminator(),
     UndefAllowed=false)`; POINT fact ⇒ gated on V's def dominating PredBB
     (Arguments always pass; other non-instructions skipped).
  5. **SCEV** — loop-header phis only (any free phi IS a header phi, since
     non-header phis are encoded as ite chains); `getUnsignedRange` +
     `getSignedRange` of `getSCEV(Phi)`; SCEVUnknown/CouldNotCompute skipped.
- Facts are context-side (asserted before `push()`): the vacuity audit
  covers them and the pop keeps them for the context-only re-check.
- Soundness: value facts carry the nsw poison-semantics argument (violation
  ⇒ poison ⇒ UB once branched on); LVI is dominance-gated; empty ranges
  refused; a fact never moves a boundary (free-plus-constrained, never
  sliced through).

Remaining heavy-tier ideas (deliberately deferred): context-sensitive
KnownBits (AC/CtxI/DT variant), exact wrapped-range encoding (disjunction),
SCEV backedge-count relations, and generally any *derived* (non-imported)
post-condition — the advisor-flagged "lightweight but more powerful
post-condition derivation" future-work item.

---

## 10. NEXT TASKS (in order — this is what the next conversation builds)

**Context: CGO 2027 R2 deadline Sept 10. Minimum viable paper = integer
overflow spec, done thoroughly. Target = + index-in-bounds spec, multiple
C/C++ benchmarks, ideally one Julia.**

1. **Parallelize SMT queries.** The single most valuable engineering task:
   it speeds the development cycle itself, not just the benchmark table.
   Per-trap queries are fully independent (fresh Z3Encoder per trap, no
   shared state) ⇒ thread pool over traps within a function (collect trap
   sites first; run tryEliminateTrap in parallel with per-thread log
   buffers merged in order; keep IR mutation serialized — collect verdicts
   in parallel, apply kills single-threaded after). TU-level parallelism is
   free in the harness (`xargs -P` / GNU parallel over opt invocations) and
   should land FIRST — zero pass code. Sweep #threads and per-query timeout
   (advisor-requested sweeps).
2. **Migrate long runs to the CloudLab server** (x86, stable clocks, many
   cores). Rerun zlib perf there; then **OpenSSL end-to-end** (known high
   UNSAT density + the scaling problem parallelism fixes). The sha256
   avalanche audit folds in here (needs the parallelism/timeout headroom).
3. **Sanitizer × benchmark slowdown matrix.** X = sanitizer specs, Y =
   benchmarks, cell = sanitizer runtime overhead vs unsanitized (min-based);
   plus a per-benchmark "all sanitizers on" vector column. Sort by overhead;
   target the biggest cells for elimination experiments — pick benchmarks
   where there is actually overhead to recover. Sanitizer candidates for BV
   reasoning (triaged): bounds/local-bounds, shift, unsigned-shift-base,
   integer-divide-by-zero, the implicit-conversion family (truncation /
   sign-change — huge trap counts, pure range checks), vla-bound;
   enum/bool need the heavy tier's !range facts; pointer/null checks
   expressible but low-value; FP and type-identity checks out of scope.
   Per new spec: 10-minute IR triage first (compile one TU, eyeball trap
   blocks vs the Anchor's single-pred assumption).
4. **Heavy-tier payoff experiment: PolyBench** (SCEV's home turf: affine,
   constant trip counts). Also Rodinia/NPB. This is where light-vs-heavy
   should separate; zlib's null result is the other half of that table.
5. **Index-in-bounds spec** (`-fsanitize=bounds`, statically-known array
   sizes; check the Kronecker-product / fixed-size-array angle; look for
   Julia/Haskell benchmarks with native bounds checks).
6. **Slides** from the paper intro: 1. general problem, 2. state of the
   art, 3. its issues, 4. our approach, 5. contributions.
7. Standing backlog: tier-aware run_tests.sh; multi-predecessor anchors;
   guard pruning + per-function encoder reuse; zstd end-to-end; SPEC CPU
   2017 triage; divide-by-zero-without-traps proof-of-concept (online
   safety analysis, no sanitizer needed); LLVM Dev Meeting registration /
   talk decision; circulate draft (UoM, Konstantinos @ UCLA, Nvidia
   contact).

---

## 11. NEW ENVIRONMENT: macOS (Apple Silicon) setup

Goal: develop + unit-test on the Mac; keep perf benchmarking on x86 Linux
(WSL2 or CloudLab) — arm64 runtime numbers are not comparable to the
existing tables, and the harness scripts assume GNU userland (§8).

```bash
# 0. prerequisites
xcode-select --install
brew install cmake ninja z3 coreutils

# 1. LLVM trunk (matches the WSL2 setup; ~30-60 min on Apple Silicon, ~50 GB)
git clone https://github.com/llvm/llvm-project.git ~/pl/llvm-project
cd ~/pl/llvm-project
cmake -S llvm -B build -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DLLVM_ENABLE_PROJECTS="clang" \
  -DLLVM_TARGETS_TO_BUILD="AArch64;X86" \
  -DLLVM_ENABLE_ZSTD=OFF
ninja -C build opt clang llc llvm-config
export PATH="$HOME/pl/llvm-project/build/bin:$PATH"   # add to shell profile

# 2. the pass
git clone <repo> ~/pl/smt-compiler-oracle && cd ~/pl/smt-compiler-oracle
mkdir -p build && cd build
CC=clang CXX=clang++ cmake -G Ninja \
  -DLLVM_DIR="$HOME/pl/llvm-project/build/lib/cmake/llvm" ..
ninja
bash ../run_tests.sh    # 8/8 among test_phi* = environment is good
```
Notes: (a) keep X86 in `LLVM_TARGETS_TO_BUILD` so `llc -mtriple=x86_64...`
can cross-compile for inspection, even though binaries won't run locally;
(b) Homebrew Z3 lives under `/opt/homebrew` — if CMake doesn't find
`z3++.h`, add `-DCMAKE_PREFIX_PATH=/opt/homebrew` (check CMakeLists' Z3
linking section, written against the Linux layout); (c) the `.so` suffix
override in CMakeLists is fine on macOS (opt loads it); (d) pin the same
llvm-project commit as WSL2 (`git rev-parse HEAD` there) to avoid API-churn
drift between machines; (e) benchmark scripts: replace `timeout` /
`stat -c` / `shuf` with `gtimeout` / `gstat -c` / `gshuf`, or run them on
Linux.

---

## 12. Command cheat-sheet

```bash
cd ~/michigan/pl/smt-compiler-oracle
ninja -C build                                    # rebuild pass
bash run_tests.sh                                 # gate: 8/8 among test_phi* (+3 known heavy FAILs)
SPECS=signed  bash run_zlib.sh                    # audit, light
SPECS=signed  TIER=heavy bash run_zlib.sh         # audit, heavy (separate _heavy logs)
grep -c 'Fact\[' logs/compilations/deflate_integer_unsigned_O1_heavy_analysis.txt
nohup bash run_zlib_perf.sh > perf_run.log 2>&1 &          # overnight perf, light
nohup env TIER=heavy bash run_zlib_perf.sh > perf_run_heavy.log 2>&1 &  # -> perf_zlib_heavy.csv
python3 make_perf_report.py                       # full report
python3 make_perf_report.py --specs both          # both+none only
python3 plot_smt_latencies.py logs/compilations/signed.*.txt \
    logs/compilations/unsigned.*.txt logs/compilations/both.*.txt   # perf-run latencies
bash run_zlib_behavioral.sh                       # byte-identity soundness
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;heavy;timeout=3000>" -disable-output some.ll
```