# ODeSSy Level-2 Parallelism — implementation notes

Level-2 multi-threads the super-analysis itself: one worker pool over every
trap site in the module, each worker owning a private Z3 context. It composes
with Level-1 (the `JOBS` concurrent `opt` processes in `run_zlib_perf.sh`).

## What changed in the repo tree

`OraclePass/` grows from 1 orchestration file to 5 modules. `Z3Encoder.{h,cpp}`
and `FactEncoder.{h,cpp}` are **byte-for-byte unchanged** — they were already
per-query objects, which is exactly the isolation Level-2 needs.

```
OraclePass/
├── OraclePass.cpp        REWRITTEN  module pass; orchestration + param parsing only
├── TrapJob.h             NEW        TrapJob / FunctionCtx: the seam between stages
├── TrapDiscovery.h/.cpp  NEW        Stage 1 (serial): anchor, guards, assumes, slice
├── TrapSolver.h/.cpp     NEW        Stage 2 (parallel): encode + facts + solve
├── Scheduler.h/.cpp      NEW        mechanism: worker pool + FactGate turnstile
├── Z3Encoder.h/.cpp      UNCHANGED
└── FactEncoder.h/.cpp    UNCHANGED
```

Scripts: `run_zlib.sh` and `run_zlib_perf.sh` gain a `THREADS` knob (injected
as the `threads=N` pass parameter). Everything else in the repo —
`make_perf_report.py`, `plot_smt_latencies.py`, `run_tests.sh`, the log
filename scheme, the CSV schema — is untouched and keeps working, because the
log files are byte-identical in format (see the determinism contract below).

### CMakeLists.txt edit (the one manual change)

Add the three new translation units to the existing `OraclePass` plugin target
and link pthreads:

```cmake
find_package(Threads REQUIRED)

# in the existing add_library(OraclePass MODULE ...) source list, add:
#   OraclePass/TrapDiscovery.cpp
#   OraclePass/TrapSolver.cpp
#   OraclePass/Scheduler.cpp

target_link_libraries(OraclePass PRIVATE Threads::Threads)
```

Exceptions must remain enabled (they already are — the pass catches
`z3::exception`), and libz3 must be a standard thread-safe build (default).

## Architecture (as approved)

**Stage 1 — discovery (serial, main thread).** Per function: request DT/LI
(+ LVI/SE in heavy) from the analysis manager, force DT's DFS numbering (see
invariants), then find and anchor every trap, collect dominating guards and
`llvm.assume` facts, run the backward slice. Output: one `TrapJob` per trap
site, in a module-wide list — the scheduling unit is the trap, not the
function, so a module with one 400-trap function and ten 2-trap functions
load-balances perfectly.

**Stage 2 — solve (parallel).** Workers claim jobs in index order. Each job:
RPO encode into a private `Z3Encoder` (reads IR only), heavy-tier boundary
facts under the FactGate ticket, then guards → push → trap condition →
`check()` → optional vacuity audit. Verdict and log text land in the job.

**Stage 3 — apply (serial, main thread).** Branch folds in discovery order
(the only IR mutation in the pass, with a defensive double-fold guard), then
log assembly in discovery order, then per-function stats.

## Concurrency invariants (the whole soundness story)

1. **One Z3 context per job, one job per worker.** Z3 contexts are not
   thread-safe; disjoint contexts on disjoint threads are. No solver state is
   shared, ever.
2. **IR is read-only during Stage 2.** All mutation (branch folding) is
   deferred to Stage 3 on the main thread, after the pool joins.
3. **DT/LI are concurrency-safe only because we make them so.**
   `DominatorTree::dominates()` lazily rebuilds DFS numbers after enough slow
   queries — a hidden write. Stage 1 calls `updateDFSNumbers()` on the main
   thread so every worker-side query takes the const path. `LoopInfo` lookups
   are plain map reads.
4. **LVI/SCEV queries pass through the FactGate.** Both analyses memoize on
   query (a data race if unsynchronized — and a corrupted cache could return a
   garbage "fact", i.e. a potential miscompile). The gate is a ticket
   turnstile keyed on discovery index: every heavy job acquires and releases
   exactly once, in order, even aborted jobs (pass-through). This gives
   thread-safety *and* order-determinism in one mechanism. Light tier never
   touches the gate.
5. **Workers never throw.** Every phase fences all exceptions internally and
   degrades to "keep the trap" — the pass's universal failure posture,
   unchanged.

## Determinism contract

For a given input module, `threads=N` and `threads=1` produce **identical
verdicts, identical output IR, and byte-identical logs** modulo the measured
latency numbers (which were never deterministic, even serially). Fact-query
order, kill order, and log order are all fixed by discovery index, not by
thread scheduling.

Acceptance test:

```bash
opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<threads=1>" -S in.ll -o t1.ll
opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<threads=8>" -S in.ll -o t8.ll
diff t1.ll t8.ll   # must be empty
# and the logs, ignoring timing numbers:
sed 's/[0-9.]* ms//g' logs/compilations/in.txt   # compare across runs
```

The one honest caveat: a query sitting near the solver timeout could flip
UNKNOWN↔decided between runs under heavy machine load. With a 10 s timeout and
observed zlib queries of 10–250 ms, the margin is ~40×; if it ever matters,
raise `timeout=`.

## Knobs

```bash
# pass parameters compose as before:
opt ... -passes="oracle-pass<heavy;vacuity;timeout=3000;threads=8>,simplifycfg,adce,verify" ...
# threads=1  (default) serial reference; threads=0 = one worker per HW thread

# harnesses:
THREADS=4 JOBS=4 bash run_zlib_perf.sh     # keep JOBS*THREADS <= cores
THREADS=8 TIER=heavy bash run_zlib.sh
```

## Behavioral notes vs the old pass

- **Function pass → module pass.** Pipeline strings are unchanged
  (`oracle-pass,simplifycfg,adce,verify` works: LLVM's PassBuilder auto-wraps
  the trailing function passes in adaptors). The only thing that no longer
  parses is explicitly nesting the pass inside `function(...)`.
- **Analyze-then-kill.** All verdicts are computed on pristine IR; folds are
  applied afterwards. Sound both ways, but the new order's contexts are never
  weaker (an eliminated trap's guard condition is provably true and remains
  valid context for later traps), so elimination counts can only match or
  exceed the old interleaved order. Expect identical counts on zlib.
- **Per-function `Total DFS & SMT Execution Time`** is now discovery time plus
  the *sum* of per-job worker wall times — CPU-time-like when threads overlap.
  The honest elapsed number is the harness's compile-stage wall clock, as
  before with Level-1.
- **stderr** now mirrors the full per-function log block after the pool joins
  (a superset of the old live output). Nothing in the harnesses greps stderr.
- **`DebugOracle` wiretaps** (raw `errs()` from encoder internals) are only
  meaningful at `threads=1`.

## For the paper

One sentence covers the discipline: *per-trap solver state is share-nothing
(one Z3 context per query); imported analysis facts are fetched through a
turnstile that serializes LVI/SCEV queries in discovery order, making verdicts
independent of thread count; IR mutation is deferred to a serial phase.* The
THREADS-invariance diff test turns the reproducibility question reviewers
would ask into a checkable invariant, and the per-trap latency histogram you
already collect gives the measured (not asserted) Amdahl story: discovery and
fact import are microseconds against 10–250 ms solves.
