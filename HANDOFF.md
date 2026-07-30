# ODeSSy — Developer Handoff & Full Project Documentation
> **Purpose.** Self-contained brief for continuing development in a fresh
> conversation or by a new collaborator. Covers philosophy, architecture,
> every module and invariant, the audit methodology, all current empirical
> results, known issues, and the current NEXT tasks:
> **SMT timeout control / latency engineering, OpenSSL at scale, and the
> heavy-tier payoff experiment (PolyBench)** — BOTH parallelism levels are
> DONE: Level-1 (multi-process, per-TU) and Level-2 (multi-threaded traps
> inside the pass, incl. thread-safe heavy tier via FactGate) are
> implemented, tested, and documented in §10.
>
> Owner: Amirali (UMich EECS). Advisor: Prof. Amir Shaikhha (weekly, Thu 11am EDT).
> Environments:
>   (a) WSL2 Ubuntu x86-64 (Surface Laptop 3) — original machine, x86 perf runs;
>   (b) macOS Apple Silicon (M5 MacBook Pro) — primary dev machine, VERIFIED
>       full verdict parity (§6); ~3.8x faster per SMT query than (a);
>   (c) LIVE: CloudLab server (https://www.cloudlab.us/), 40 HW threads,
>       repo at /mydata/ODeSSy, LLVM via /etc/profile.d/llvm.sh
>       (/opt/llvm/bin), governor set to `performance` — x86 perf at scale.
>       First full zlib perf run landed 2026-07-29 (§6).
> Toolchain PIN (all machines): llvm-project commit
>   3cab3bc6384b5f58cab7140d00d7a527eade010e  (2026-04-28, 23.0.0git).
>   Keep this pin until the paper ships. Z3: system/Homebrew (4.16 on Mac —
>   verdicts confirmed stable across Z3 versions).
> Repo: git@github.com:AmiraliE1380/ODeSSy.git, branch `cgo-research`,
>   tags v1.0-course-submission, v2.0-overflow-core.
> Target venue: CGO 2027, R2 deadline **Sept 10, 2026**.
> Paper title (working): *ODeSSy: On-Demand SMT System for Compiler
> Super-Analysis and Optimization*.
> Status date: 2026-07-30.

---

## 1. What ODeSSy is

**ODeSSy = On-Demand SMT (Compiler) System.** An out-of-tree LLVM
MODULE pass (Level-2 redesign; formerly a FunctionPass) that proves UBSan
integer-overflow traps unreachable using Z3 (`QF_BV`) and deletes the
provably-dead ones. The scheduling unit is the TRAP, not the function —
the module-wide job list is what makes per-trap thread parallelism and
load balancing possible ("super-analysis level" scheduling).

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
  "keep the trap". SAT never means "bug exists".
- **On-demand.** Work list = the `llvm.ubsantrap` sites. Compile latency is
  a first-class concern — hence the parallelism campaign (§10).
- **Signed vs unsigned split.** Signed overflow is UB (C11 6.5p5) — the real
  elimination target. Unsigned wrap is defined and often intentional;
  measured separately; unsigned all-SAT (crypto) is a spec-mismatch finding,
  demonstrated dynamically (§7).

**Trap semantics / the query.** Per trap: assert dominating context ∧ trap
condition. UNSAT ⇒ eliminate (fold guarding branch to constant;
`simplifycfg,adce` delete the block; `verify` checks IR). Eval pipeline:
`opt -passes="oracle-pass,simplifycfg,adce,verify"`. Analysis-only
invocations (`-disable-output`) do NOT persist IR changes.

---

## 2. Repository layout

```
ODeSSy/                          (branch cgo-research)
├── OraclePass/
│   ├── OraclePass.cpp          # orchestration: 3-stage module pass (§3)
│   ├── TrapDiscovery.h / .cpp  # Stage 1: hunt/anchor/guards/assumes/slice
│   ├── TrapJob.h               # the seam: TrapJob + FunctionCtx structs
│   ├── TrapSolver.h / .cpp     # Stage 2: per-job encode/facts/solve phases
│   ├── Scheduler.h / .cpp      # runJobs worker pool + FactGate turnstile
│   ├── Z3Encoder.h / .cpp      # IR -> Z3 translation + fact primitives (§4)
│   ├── FactEncoder.h / .cpp    # HEAVY tier policy module (§9)
├── CMakeLists.txt              # PORTABLE (macOS/Linux): Z3 via find_path/
│                               # find_library; if(APPLE) -undefined dynamic_lookup
├── build/                      # UNTRACKED. cmake+ninja -> OraclePass.so
├── tests/test_phi{1..8}*.ll    # 8 light-tier tests; *_sat* => SAT, else UNSAT
├── tests/test_heavy_*.ll       # 3 heavy-tier tests (RM/SCEV/RA); light=SAT,
│                               # heavy=UNSAT with labeled core. run_tests.sh is
│                               # NOT tier-aware -> these show as 3 expected FAILs
├── run_tests.sh                # regression gate; self-locating ROOT
├── run_zlib.sh                 # audit harness (single TU, deflate.c);
│                               # SPECS/OPTS/TIMEOUT_SECS/TIER knobs; self-locating
├── run_zlib_perf.sh            # perf protocol v3: v2 + PARALLEL oracle stage
│                               # (JOBS=N processes over TUs; JOBS=1 == old serial;
│                               # ORACLE_S = stage wall-clock). TIER=heavy writes
│                               # evaluation/perf_zlib_heavy.csv
├── make_perf_report.py         # [in] [out] [--specs both]; 'none' always kept
├── plot_smt_latencies.py       # default glob = *_analysis.txt audit logs; pass
│                               # perf logs (logs/compilations/{spec}.{tu}.txt)
│                               # explicitly to plot a perf run
├── evaluation/                 # tracked: CSVs, reports, archive/ (paper evidence)
├── logs/, perf_test/           # UNTRACKED scratch (see archival convention §8)
```
Benchmarks live BESIDE the repo (`<repo-parent>/zlib` etc.); scripts are
self-locating (`ROOT` from script path, `PL_ROOT` = parent) and every path is
env-overridable. zlib compiles raw with `-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1`.
NOTE: the Mac's zlib is a fresh clone of madler/zlib develop (traps 125/1222/
1299 vs WSL's 125/1219/1296 — version drift, not a bug). TODO: pin zlib
commit alongside the LLVM pin for exact cross-machine parity.

Build: `cd build && ninja`. Expect ~11 benign BranchInst deprecation
warnings (trunk API churn at the pinned commit — cosmetic, do not "fix").

---

## 3. OraclePass.cpp — the pass (Level-2 three-stage module pass)

Members: `bool VacuityCheck` (audit), `bool HeavyMode` (tier),
`unsigned QueryTimeoutMs` (default 10000), `unsigned Threads` (default 1).

**Pass parameters** (parsed from the pass name; unknown params rejected):
- `oracle-pass` → perf mode, light tier (default); `<light>` explicit alias
- `oracle-pass<heavy>` → heavy tier (§9); `<light;heavy>` rejected
- `oracle-pass<vacuity>` → audit mode; `<vacuity;heavy;timeout=3000>` composes
- `oracle-pass<threads=N>` → Level-2 worker count. `threads=1` (default) =
  serial reference path (plain loop, no threads created); `threads=0` =
  one worker per hardware thread. Composes with everything.
**Light must stay byte-for-byte identical to pre-tier behavior** (the tier
split doubles as the facts ablation). Heavy prints `[tier: heavy]`; LVI/SCEV
fetched from FAM only in heavy mode.

**Module flow (`run`), three stages:**
1. Per-module log `logs/compilations/<stem>.txt` (stem from module id;
   truncate-then-append; idempotent across reruns).
2. **STAGE 1 — serial discovery (main thread, IR read-only).** Per
   function: fetch DT/LI (+ LVI/SE in heavy), **force DT DFS numbers**
   (`updateDFSNumbers()` — DT's lazy renumbering is a hidden write; forcing
   it on the main thread makes all worker-side `dominates()` const-safe).
   `discoverTraps` (TrapDiscovery.cpp) does Hunter (ubsantrap scan), Anchor
   (single-pred trap block + cond branch; multi-pred skipped — coverage
   lead), Phase 0 dominating guards, Phase 0.5 dominating `llvm.assume`s,
   Phase 1 backward slice — and appends one `TrapJob` per site to the
   MODULE-WIDE job list. `Job.Index` (global discovery order) is THE
   determinism key.
3. **STAGE 2 — parallel solve (worker pool, IR strictly read-only).**
   `runJobs(N, ...)` (Scheduler.cpp): workers claim job indices from an
   atomic counter. Each job constructs its own `TrapSolver` with a private
   `Z3Encoder`/`z3::context` and runs: `encodePhase` (Phase 2, RPO forward
   encode), `factPhase` (Phase 2.5, heavy only — under the FactGate ticket,
   see §9/§10), `solvePhase` (Phase 3: guards, `push()`, trap cond, check,
   vacuity audit). All log output goes to the job-private `LogText`.
   Every phase fences all exceptions → `[Skip]`, trap kept; a worker-level
   catch-all guards constructor throws too.
4. **STAGE 3a — the kill (serial, discovery order; the ONLY IR mutation).**
   For each `Eliminate` verdict, fold the anchor branch condition to the
   constant selecting the surviving edge; a `Folded` set refuses a
   contradictory second fold of the same branch. simplifycfg+adce do the
   physical removal downstream.
5. **STAGE 3b — log assembly (discovery order).** Per-function stats and
   `LogText` concatenation in `Job.Index` order ⇒ logs are byte-identical
   for ANY `threads` value (modulo latency numbers, which were never
   deterministic). "Total DFS & SMT Execution Time" sums per-job worker
   wall clock — CPU-time-like when threads>1; the honest elapsed number is
   the harness's stage wall clock.

**Determinism contract:** for a given module, `threads=N` and `threads=1`
produce identical verdicts, identical output IR, byte-identical logs
(modulo latencies). `diff` of output .ll across THREADS values is the
acceptance test. Analyze-then-kill note: verdicts are computed on pristine
IR, kills applied after; contexts are never weaker than the old interleaved
order (an eliminated trap's guard is provably true), so elimination counts
can only match or exceed the old pass's.

**Log tokens (load-bearing):** `UNSAT`, `SAT (WARNING`, `UNKNOWN (Solver gave
up`, `[vacuity-ok]`, `[VACUOUS]`, `[Skip]`, `[Abort]`, `Unsat core:`,
`Trap source:`, `Guard[`, `[tier: heavy]`, `[heavy]`, `Fact[RM:/RA:/KB:/LVI:/SCEV:`.

---

## 4. Z3Encoder — IR → QF_BV (mechanism layer)

One context+solver per trap query (thread-safe pattern: contexts are never
shared). `ValueMap: Value* -> z3::expr`.

**i1 invariant**: icmp results & bool constants are Bool; all else BV of LLVM
width; pointers/aliens free 64-bit BVs; `asBool`/`asBV` totalize every
bridge. Constants exact (uint64 overload / decimal string, i128-safe); NEVER
cast through `(unsigned)`.

**Encoded:** binops incl. shl/lshr/ashr; nsw/nuw as free facts; 10 icmp
predicates; trunc/zext/sext; full `{s,u}{add,sub,mul}.with.overflow`;
fshl/fshr/min/max/abs/bswap; select; non-header PHIs via memoized CFG
reachability (cache key (Root, BB, PhiBB)); switch edges. Free vars: loads,
GEPs, loop-header phis, alien calls, vectors, unknowns, alien edges.

**Boundary bookkeeping:** every free-var creation recorded in order in
`FreeVars`; `getFreeVariables()` exposes the boundary set (heavy tier).

**Fact primitives (mechanism; policy in FactEncoder):**
`assertRange(V, CR, Label)` — four extreme bounds, trivial bounds skipped,
full/empty sets refused; width sanity-checked. `assertKnownBits(V, KB,
Label)` — mask assertions, unknown/conflict refused. `bvConst(APInt)` —
width-exact, i128-safe. Label nonempty => tracked (cores).

---

## 5. Audit methodology (the "genuinity" chain) — all implemented

1. Cross-opt-level stability (O1 == O3). 2. Vacuity check (context alone must
be SAT; measured 0% on zlib both tiers; in heavy this is the bad-fact-import
alarm). 3. Unsat cores (healthy: `Gk ... TRAP`, optionally RM:/RA:/KB:/LVI:/
SCEV: labels — the "which analysis mattered" evidence; cores show 1–2 of ~12
guards used => guard-pruning lead). 4. Ablations (shift encoding: signed 2→0,
unsigned 41→25/24→8; light-vs-heavy tier flag). 5. Manual source mapping
(`Trap source:` + guard IR). 6. Behavioral equivalence (byte-identity + §7).

**Worked example (paper-ready):** zlib `deflate.c:1018` RANK macro; core
`{G0: f > -1, TRAP}`; bound travels through a shift; proven in `deflate` and
its inlined copy in `deflateParams`; ~2–5 ms each.

---

## 6. Empirical status

**Single-TU audit (deflate.c, `run_zlib.sh`) — LIGHT tier (x86/WSL):**
| spec | opt | traps | UNSAT | SAT | vacuous | skips |
|---|---|---|---|---|---|---|
| signed | O1/O3 | 26 | 2 | 15 | 0 | 0 |
| unsigned | O1 | 457 | 50 | 401 | 0 | 0 |
| unsigned | O3 | 438 | 33 | 391 | 0 | 0 |

**HEAVY ≡ LIGHT on zlib** (verdict sequences diff clean). Fact diagnosis
(unsigned O1): SCEV ×2 non-trivial (data-dependent while loops => full-set
ranges), RA ×15 (real inferred attrs, [0,4)/[0,6)), RM≈0 (no !range in C IR),
KB empty on raw loads, LVI redundant with exact guard encoding. No fact label
NECESSARY in any core. Heavy MECHANISM validated by 3 targeted tests
(RM/SCEV/RA each: light SAT => heavy UNSAT with correct core label);
vacuous=0 skips=0 everywhere. Heavy's expected payoff: affine benchmarks
(PolyBench/Rodinia/NPB) — pending experiment.

**Whole-library perf (light, x86/WSL, v2 protocol):** eliminations signed
10/125, unsigned 138/1219, both 142/1296; oracle vs O3∘O3 control (min):
signed ≈0, unsigned ≈+0.8%, **both +2.2% flat across sizes (warm-path)**;
sanitizer overhead 5.6% → 3.0% ⇒ **11% of checks = ~45% of overhead**;
`.text` −656 B; control ≈ base validates attribution. **Compile cost:
11–233 ms/trap serial** — the problem §10 attacks.

**macOS parity + M5 speed (2026-07-27 smoke run, RUNS=3 SIZES="8 64"):**
- Verdict parity: signed 10/125 identical; unsigned 144/1222, both 148/1299
  (vs 138/1219, 142/1296 — zlib version drift + arm64 IR, rates match:
  11.8%/11.4% vs 11.3%/11.0%). run_tests: 8/8 + 3 expected heavy FAILs —
  same across OS/arch/Z3-version. Strong reproducibility datapoint.
- **M5 SMT latency ≈ 3.8x faster than WSL**: 6.7 vs 11.4 ms/trap (signed),
  60.9 vs 233 (unsigned), 32.5 vs 128 (both). Serial oracle stage: 74 s
  unsigned, 42 s both.
- Mac runtime/size columns are NOT usable: ±1% noise at 3 reps and Mach-O
  page-aligned segments make `.text` deltas invisible (+0 B artifacts).
  Perf truth stays on x86.

**CloudLab first full perf run (x86, 40 threads, 2026-07-29, JOBS=4 ×
THREADS=8, avg-based report):** eliminations reproduce exactly (10/125,
138/1219, 142/1296). Oracle stage wall: signed 6.4 s, unsigned 77.8 s,
both 45.7 s. Runtime deltas oracle-vs-base2x are NOISE-DOMINATED and
inconsistent across sizes (e.g. signed −0.1/−1.6/−0.8%, both
+1.8/−0.3/−0.1%); sanitizer-overhead column even shows negative overhead
(−6.8% unsigned @512MB) — physically implausible ⇒ the run does not yet
meet the measurement doctrine. Suspects: avg (not min) statistic in this
report invocation, low rep count, one unsigned-oracle @512MB rep dying
rc=132 (the known §7 wraparound trap — expected, but it perturbs
protocol timing), NUMA/SMT topology on the 40-thread node, no
core-pinning. ACTION: rerun with min-based report, more reps, `taskset`
pinning to one socket, SMT siblings avoided, turbo policy recorded,
before quoting any server runtime number. The WSL +2.2% min-based result
remains the quotable headline until then. Also note the M5 shows no
speedup (<1% noise) — see the microarchitecture discussion: modern wide
cores hide perfectly-predicted never-taken checks; effect size is
machine-dependent and the paper should report per-machine.

**SMT latency logs from perf runs** live at
`logs/compilations/{signed,unsigned,both}.<tu>.txt` — pass them explicitly to
`plot_smt_latencies.py` (default glob only sees `*_analysis.txt`).

---

## 7. Dynamic findings from the 512 MB corpus (x86)

All `unsigned`/`both` binaries — baselines included — die SIGILL (rc=132) on
the 512 MB corpus; never at 8/64 MB; never signed/none. Real intentional
unsigned wraparound in zlib. Uses: spec-mismatch demonstrated dynamically;
soundness evidence (oracle traps exactly where baseline traps); 512 MB rows
valid within-spec, INVALID vs `none`. TODO (10 min): identify the wrapping
line with one `-O1 -g` build + gdb bt.

---

## 8. Known issues / hygiene

- **run_tests.sh not tier-aware**: 3 `test_heavy_*.ll` files are expected
  FAILs under the light gate. Fix: run `*heavy*` in a separate section with
  `oracle-pass<vacuity;heavy>` + re-run phi tests under heavy (expectations
  unchanged). Until then: 8/8 among `test_phi*` = pass.
- **Anchor skips multi-predecessor trap blocks** (~35% of signed single-TU
  traps). Coverage lead.
- **Serial in-function compile cost** (guard chains + O(traps×function-size)
  re-slice quadratic): blocks sha256/zstd (600 s timeouts). §10 Level-2 is
  the fix; guard pruning + encoder reuse are follow-ups.
- Trap counting: `call void @llvm.ubsantrap` (call sites), never bare grep.
- **Archival convention**: `logs/` is untracked scratch; when a run backs a
  published number, snapshot its logs into tracked
  `evaluation/archive/<date>-<name>/`. Already archived: (do this for the
  WSL whole-lib perf logs and the heavy-null-result audit logs if not yet).
- Measurement doctrine: min statistic; shuffled interleaved reps; never on
  battery/throttled. arm64 runtime numbers never comparable to x86 tables.
- **macOS one-time environment checklist** (all done on the M5, needed again
  for any new Mac): Homebrew cmake/ninja/z3/coreutils/bash; gnubin on PATH
  (GNU stat/timeout/shuf); `brew install bash` (stock bash 3.2 lacks
  `declare -A`); `export SDKROOT="$(xcrun --show-sdk-path)"` (self-built
  clang finds no SDK headers without it); Z3 via `-DCMAKE_PREFIX_PATH=
  /opt/homebrew` if CMake misses it; `size` is BSD on Mac => text_bytes
  column invalid there. All encoded in CMakeLists + script headers.
- sha256 unsigned UNSAT avalanche: un-audited; audit before counting.
- sha256 signed emits ZERO traps (crypto all-unsigned — a finding).

---

## 9. HEAVY tier — implemented (summary)

Mechanism/policy split: Z3Encoder records boundaries + provides assertRange/
assertKnownBits; FactEncoder (per trap, Phase 2.5, heavy only) fires five
labeled sources per integer boundary value:
RM (`!range` metadata, loads/calls), RA (`range` attribute:
`CallBase::getRange()` + param attrs), KB (`computeKnownBits(V, DL)`),
LVI (`getConstantRange(V, PredBB->getTerminator(), UndefAllowed=false)`,
dominance-gated), SCEV (loop-header phis only; unsigned+signed ranges;
SCEVUnknown/CouldNotCompute skipped). Facts are context-side (pre-push) =>
vacuity-audited; labels make cores attribute proofs. Soundness: poison
argument for value facts; dominance gate for LVI; empty ranges refused;
facts never move a boundary. Deferred ideas: context-sensitive KB, exact
wrapped ranges, SCEV backedge-count relations, derived post-conditions.

**Concurrency (as implemented in Level-2): LVI and ScalarEvolution mutate
internal caches on every query — NOT thread-safe. DominatorTree/LoopInfo
are const-query safe (DT DFS numbers forced in Stage 1). The original spec
said "heavy forced serial"; the SHIPPED solution is stronger: the
`FactGate` ticket turnstile (Scheduler.h) serializes ONLY the factPhase
LVI/SCEV queries, in strict discovery order — thread-safe AND
deterministic (LVI cache evolution identical to threads=1), while encode
and solve still run fully parallel. Every heavy job passes the gate
exactly once (dead/aborted jobs pass through) so the turnstile always
advances; no-deadlock argument in Scheduler.h.**

---

## 10. PARALLELISM — Level 1 DONE, Level 2 SPEC (the next conversation's task)

### 10.1 Level 1 (DONE, v3 perf script): multi-PROCESS over translation units
`run_zlib_perf.sh` oracle stage now launches up to `JOBS` concurrent `opt`
processes (default = CPU count; `JOBS=1` == old serial behavior). TUs are
independent (separate .ll in/out + per-module logs => no collisions).
`ORACLE_S` = stage wall-clock; derived per-trap ms in parallel runs is
wall-clock-based ("latency with parallelism") — label it as such. Failure
handling: post-wave check that every output .ll exists non-empty, FATAL with
pointer to the per-TU oracle.log otherwise. Expected effect: unsigned oracle
stage bounded by the fattest TU (deflate.c) instead of the sum — on the M5
roughly 74 s → ~20-35 s; bigger wins on many-TU benchmarks (OpenSSL).
Limit: Level 1 cannot speed up a single big file — that is Level 2.
NOTE: `run_zlib.sh` (dev harness) is single-TU: Level 1 does not apply;
it is the primary beneficiary of Level 2.

### 10.2 Level 2 — DONE: multi-THREADED trap solving inside the pass

**Status: IMPLEMENTED AND TESTED.** The pass is now the three-stage module
pass of §3 (TrapDiscovery → TrapSolver pool → serial kill/log), with
`threads=N` parsing, job-private Z3 contexts, discovery-order determinism,
and — beyond the original spec — a thread-safe heavy tier via FactGate
(§9) instead of the "force serial" fallback. Full design commentary lives
in the module headers (OraclePass.cpp, Scheduler.h, TrapJob.h,
TrapSolver.h) and LEVEL2_PARALLELISM.md.

**Measured thread scaling (M5, /tmp/deflate_u.ll, whole-`opt` wall time):**

| threads | 1 | 2 | 4 | 8 | 12 |
|---|---|---|---|---|---|
| real (s) | 2.73 | 1.55 | 1.00 | 0.77 | 0.74 |

~3.5–3.7x is the plateau: the residual is Stage-1 serial discovery +
per-job encode overhead + a latency tail of slow queries (Amdahl). ⇒ the
next compile-latency lever is NOT more threads but **per-query timeout
control** (sweep timeout at fixed threads; SAT-vs-UNSAT latency
distributions decide the cutoff) plus guard pruning / slice reuse.

The original spec below is retained for the record; deviations from it
as-built: (a) TrapSite grew into TrapJob (module-wide, not per-function);
(b) heavy tier is gated, not forced-serial; (c) verdicts are computed on
pristine IR for ALL thread counts (analyze-then-kill), so threads=1 is
also snapshot-based — the snapshot-vs-serial delta of point 5 no longer
exists between thread counts, only vs the PRE-Level-2 pass.

<details><summary>Original Level-2 spec (historical)</summary>

**Why threads, not processes:** traps share one parsed module + built
analyses; a process per trap would re-parse and re-analyze ~N-traps times
and `opt` has no per-trap selector. Threads share all of it read-only.

**Agreed architecture (decided with owner — do not re-litigate):**
1. **Pass parameter `threads=N`** parsed like `timeout=` (compose freely:
   `oracle-pass<vacuity;threads=8>`). Default `threads=1` MUST keep the
   exact current serial code path — byte-identical logs (it is the
   regression baseline and the ablation control). Optional `threads=0` =
   hardware_concurrency.
2. **Collect phase (serial):** scan the function, build
   `std::vector<TrapSite>` {TrapBB, TrapCall, PredBB, Br, OvfCondition,
   TrapOnTrue, DebugLoc-string} — i.e. everything the Hunter+Anchor produce
   today, WITHOUT solving.
3. **Solve phase (parallel):** thread pool of N `std::thread`s pulling trap
   indices from a `std::atomic<unsigned>` counter. Each worker, per trap:
   fresh `Z3Encoder` (already per-trap today — no sharing), run
   `tryEliminateTrap` against the FROZEN IR (no kills have happened),
   write all log output to a PER-TRAP `std::string` via
   `raw_string_ostream` (change `tryEliminateTrap`'s parameter from
   `raw_fd_ostream&` to `raw_ostream&` — source-compatible for serial too),
   store result {IsUnsat, LatencyMs, LogText} in a pre-sized results vector
   slot (no locking needed — one writer per slot).
   In parallel mode, suppress the per-trap `errs()` mirroring during solve;
   emit it (if wanted) at flush time. No IR mutation anywhere in this phase.
4. **Commit phase (serial, after join):** iterate traps in ORIGINAL order:
   append each trap's LogText to the module log (=> logs deterministic and
   grep-identical in structure), and for each IsUnsat verdict apply the
   kill (`Br->setCondition(constant selecting surviving edge)`). Sum
   counters (attempts, eliminated, latencies) from the results vector.
5. **Soundness of frozen-snapshot verdicts:** identical to today's serial
   argument (HANDOFF §3): a killed branch holds the constant consistent
   with its surviving edge, which is exactly what any other trap's guard
   assumed. Snapshot solving is if anything STRONGER than serial (serial
   sees already-killed branches as constant guards = weaker info), so
   `threads>1` may in rare guard-chained cases produce MORE UNSATs than
   serial, never fewer/different-wrong. On zlib expect identical counts.
6. **Thread-safety constraints (the one real landmine):**
   - DominatorTree, LoopInfo: const queries, safe to share. OK.
   - **LazyValueInfo, ScalarEvolution: lazy caches mutate on query — NOT
     thread-safe. v1 rule: if HeavyMode && threads>1, force threads=1 and
     log a notice** (`[heavy] threads forced to 1 (LVI/SCEV not
     thread-safe)`). v2 option (later): a global mutex around FactEncoder's
     LVI/SE queries.
   - Z3: separate context per trap (already true) — safe. Never share a
     z3::context across threads.
   - `getSafeName` uses pointer addresses — deterministic within a run,
     already the status quo.
7. **Timing/accounting:** per-trap LatencyMs unchanged in meaning (solver
   wall time inside the worker). Function-level "Total SMT Query Latency" =
   sum over traps (now > wall time — that's fine, it's CPU-ish); "Total
   DFS & SMT Execution Time" = wall clock and is the headline speedup
   number. Log the thread count once per function in parallel mode
   (`[threads: N]` — a NEW token, add to token list).
8. **Acceptance protocol:**
   a. `threads=1` (and default): logs byte-identical to current build on
      tests/ and deflate.c audit runs (diff the files).
   b. `bash run_tests.sh` unchanged (8/8 + 3 heavy FAILs).
   c. `SPECS=unsigned bash run_zlib.sh` with the audit invocation switched
      to `threads=8`: same UNSAT/SAT/vacuous/skip counts (50/401/0/0 at
      O1); any delta must be investigated (only acceptable direction: extra
      UNSATs from the snapshot effect, per point 5 — verify via cores).
   d. Thread sweep (advisor-requested): unsigned deflate O1, threads ∈
      {1,2,4,8,ncores}, record wall time; produce the scaling table/plot.
      Also sweep per-query timeout at fixed threads (second advisor sweep).
   e. Heavy tier: confirm forced-serial notice fires and heavy results are
      unchanged.
9. **Implementation order:** (i) refactor tryEliminateTrap to
   `raw_ostream&` + extract TrapSite collection — behavior-neutral commit,
   verify byte-identity; (ii) add threads= parsing + results-vector
   restructure with threads=1 still routed through the identical serial
   path; (iii) enable the pool; (iv) acceptance; (v) commit + tag
   `v2.1-parallel`.

</details>

### 10.3 After Level 2 (standing roadmap, in order)
1. ~~CloudLab migration; rerun zlib perf on x86 with JOBS + threads~~ DONE
   2026-07-29 (§6 — runtime deltas noisy, needs the min-based shuffled
   protocol + noise-control pass on the server); then
   **OpenSSL end-to-end** (high UNSAT density; sha256 avalanche audit —
   vacuity+cores — folds in here).
2. **Sanitizer × benchmark slowdown matrix** (X = sanitizer specs, Y =
   benchmarks, cell = overhead vs unsanitized, min-based; plus per-benchmark
   all-sanitizers vector column). Sort, target biggest cells. BV-suitable
   sanitizer candidates (triaged): bounds/local-bounds, shift,
   unsigned-shift-base, integer-divide-by-zero, implicit-conversion family
   (truncation/sign-change — huge counts, pure range checks), vla-bound;
   enum/bool need heavy-tier facts; null/nonnull expressible but low-value;
   FP/type-identity out of scope. Per new spec: 10-min IR triage first
   (trap-block shape vs the Anchor's single-pred assumption).
3. Heavy-tier payoff experiment: PolyBench (+ Rodinia/NPB) — SCEV's home
   turf; zlib's null result is the other half of that ablation table.
4. Index-in-bounds spec (`-fsanitize=bounds`); Julia/Haskell benchmarks
   with native bounds checks; Kronecker-product fixed-size-array angle.
5. Slides from paper intro (problem / SOTA / SOTA issues / approach /
   contributions).
6. Backlog: tier-aware run_tests.sh; multi-pred anchors; guard pruning +
   per-function encoder reuse; zstd; SPEC CPU 2017 triage; divide-by-zero
   no-trap proof-of-concept; LLVM Dev Meeting decision; circulate draft
   (UoM, Konstantinos @ UCLA, Nvidia contact); pin zlib commit.

---

## 11. Environment setup (new machine bring-up)

### macOS (Apple Silicon) — as performed on the M5, verified
```bash
xcode-select --install
brew install cmake ninja z3 coreutils bash tree
echo 'export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.zshrc
echo 'export SDKROOT="$(xcrun --show-sdk-path)"' >> ~/.zshrc

# LLVM at the PIN (shallow clone + single-commit fetch)
git clone --depth 1 https://github.com/llvm/llvm-project.git ~/Project/compiler/llvm-project
cd ~/Project/compiler/llvm-project
git fetch --depth 1 origin 3cab3bc6384b5f58cab7140d00d7a527eade010e
git checkout 3cab3bc6384b5f58cab7140d00d7a527eade010e
cmake -S llvm -B build -G Ninja -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_PROJECTS="clang" \
  -DLLVM_TARGETS_TO_BUILD="AArch64;X86" -DLLVM_INCLUDE_TESTS=OFF \
  -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_INCLUDE_BENCHMARKS=OFF \
  -DLLVM_PARALLEL_LINK_JOBS=4
ninja -C build opt clang llc llvm-config       # ~20-40 min on M5
echo 'export PATH="$HOME/Project/compiler/llvm-project/build/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc && clang --version              # must say 23.0.0git @ 3cab3bc6

# repo + benchmarks (benchmarks live BESIDE the repo)
git clone git@github.com:AmiraliE1380/ODeSSy.git ~/Project/compiler/ODeSSy
git clone https://github.com/madler/zlib.git    ~/Project/compiler/zlib
cd ~/Project/compiler/ODeSSy && mkdir build && cd build
CC=clang CXX=clang++ cmake -G Ninja \
  -DLLVM_DIR="$HOME/Project/compiler/llvm-project/build/lib/cmake/llvm" \
  -DCMAKE_PREFIX_PATH=/opt/homebrew ..
ninja && cd .. && bash run_tests.sh             # 8/8 test_phi* (+3 heavy FAILs)
```
Known Mac caveats: text_bytes column invalid (BSD `size`); runtime numbers
arm64-only (never compare to x86 tables); stock /bin/bash is 3.2 (scripts
need brew bash 5 via PATH).

### Linux (WSL2 / CloudLab)
Same pin + cmake flags (drop CMAKE_PREFIX_PATH; GNU userland native). On
CloudLab: `apt install cmake ninja-build libz3-dev clang` then identical
steps; scripts run unmodified thanks to self-locating ROOT.

---

## 12. Command cheat-sheet

```bash
cd <repo>
ninja -C build                                     # rebuild pass
bash run_tests.sh                                  # 8/8 test_phi* (+3 heavy FAILs)
SPECS=signed  bash run_zlib.sh                     # audit, light (2/15/0/0)
SPECS=signed  TIER=heavy bash run_zlib.sh          # audit, heavy (_heavy logs)
JOBS=8 RUNS=3 SIZES="8 64" COOLDOWN=15 bash run_zlib_perf.sh   # parallel smoke
nohup bash run_zlib_perf.sh > perf_run.log 2>&1 &  # full perf (x86 only!)
python3 make_perf_report.py [--specs both]
python3 plot_smt_latencies.py logs/compilations/{signed,unsigned,both}.*.txt
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;heavy;timeout=3000>" -disable-output some.ll
# Level-2 threads (composes with everything; threads=0 = all HW threads)
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<threads=8>" -S in.ll -o out.ll
```