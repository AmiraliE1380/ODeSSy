# ODeSSy — On-Demand SMT System for Compiler Super-Analysis

ODeSSy is an out-of-tree LLVM module pass that uses an SMT solver (Z3, QF_BV)
to **prove sanitizer traps and native-language safety checks unreachable — and
delete them**. It is the first instantiation of a paradigm we call
**super-analysis**: the middle ground between conventional compiler
optimization (fast, heuristic, per-analysis) and super-optimization
(exhaustive search over programs). A super-analyzer does not search for new
code; it asks a solver to *logically conjoin* everything the compiler's own
lightweight analyses already know — range metadata, known bits, value
intervals, loop trip counts, symbolic trip-count bounds, memory-frame
invariants, dominating branch conditions — and to discharge proofs that no
single analysis, and no heuristic combination of them, can reach.

```
conventional optimization  ──────  ODeSSy (super-analysis)  ──────  super-optimization
LLVM -O3: fast, heuristic          SMT-certified facts,             Souper/STOKE: search
per-analysis reasoning             online latency, sound            over program space
```

Every deletion is certified by an **unsat core** naming the fact sources that
proved it, audited for **vacuity** (a contradictory context refuses to
eliminate), and validated by a **byte-identical output gate** before any
timing is trusted.

## Headline results

**Julia stdlib GEMM — 16 of 16 trap edges proven, 3.6–4.2× speedup.**
The flagship. Its bounds checks defeated the base encoder entirely (0 of 16);
a heap-invariant extension — a frame-rule fact source over MemorySSA, a
definitional `freeze` encoding, subtraction-form symbolic trip counts, and
leaf pre-encoding — proves **all sixteen**, with the flagship proof drawing on
*six* independent fact sources at once. Deployed through Julia's own sanctioned
mechanism as **proof-licensed `@inbounds`** (today that annotation is trusted;
here it is *verified*), it yields **3.59× on Xeon and 4.16× on Apple M-series**
— 96.4% and 99.8% of the expert-annotation ceiling, and 100% by construction
now that every access is licensed. A 14-shape (m, n, k) sweep confirms the gain
at **every** problem shape, from 6.8× (cache-resident) down to 1.5× at 4096³
(fully memory-bound, 137 GFLOP).

**Swift SHA-256 — 98% of the checks-off ceiling, recovered soundly.**
Seven proofs in the message-schedule inner loop remove the side exits that
block unrolling: **+8.8% on Xeon** (against a 9.0% checked-vs-unchecked
ceiling) and **+6.9% on M-series**, medians of 30 shuffled repetitions, output
byte-identical. On M-series the gain *exceeds* the 2.8% checks-off gap — the
unlocked re-optimization is worth more than the checks themselves.

**Concentration beats count.** A *single* proof inside adler32's sixteen-fold
unrolled DO16 group buys **+3.7%** (32% of an 11.6% ceiling), while 183
scattered cold proofs in the CryptoSwift library buy nothing. The value of a
check is wildly non-uniform — and non-uniform in *sign*: non-unlocking
elimination is a measured, replicated two-sided re-optimization lottery.

**zstd — the first whole-library C speedup.** Six full-tier eliminations in
the compression path give **+2.3% against the double-O3 control** with a 0.24%
noise floor, on a 512 MB corpus with byte-identical output; decompression, whose
proofs land cold, stays flat. Also: Swift sha1 **+2.1%** (M-series, 27% of its
ceiling) and Julia sha256 **+6.9%** from partially licensed `@inbounds`.

**Latency is a dial, not a fixed cost.** 96% of provable facts survive a
**100 ms** per-query budget (50 of 52 on the densest workload), the verdict set
saturates by 3 s, and the per-trap parallel stage scales **3.8× at 8 threads,
4.05× at 16**. ODeSSy can run as an online pass, an offline binary optimizer,
or a pure static analyzer — the same knob spans five orders of magnitude of
query hardness (zlib is effectively free; OpenSSL's inlined guard chains need
30 s).

Static reach, for scale: **13.6%** of zstd's 19,197 sanitizer traps, 145 of
zlib's 1,298, 215 in the unmodified CryptoSwift library, and 1,027 of lz4's
3,403 where the entire O3 pipeline run a second time removes 834.

## Architecture

Three stages, one module pass.

**Stage 1 — discovery (serial).** `TrapDiscovery` hunts anchored trap sites
(single-predecessor trap blocks behind a conditional branch), collects
dominating context guards plus `llvm.assume` facts, takes a backward slice, and
harvests candidate frame pairs via a MemorySSA walk.

**Stage 2 — solve (parallel).** One `TrapSolver` worker per incoming trap edge,
each with a private Z3 context. `Z3Encoder` translates the slice (memoized CFG
encoding, redundant-load unification, `freeze` as identity); `FactEncoder`
imports analysis facts at the over-approximation boundaries — `!range` metadata
and range attributes, KnownBits, LazyValueInfo, SCEV constant ranges,
subtraction-form symbolic trip counts (SCEVSYM v2), SCEV leaf definitional
axioms, and frame facts (`load` equality across a non-clobbering memory region).
All analysis queries are serialized through a `FactGate` ticket turnstile so
LVI/SCEV caches evolve deterministically: **verdicts and logs are
byte-identical for any thread count.**

**Stage 3 — transform (serial).** UNSAT verdicts fold the anchor branches in
discovery order; conventional passes (`simplifycfg`, `adce`) clean up. Nothing
in the transform is speculative — the solver is used for *analysis only*.

### Pass string

```
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;heavy;ldeq;frame;timeout=300;threads=8;traps=panic:boundserror>" ...
```

| Knob | Meaning |
|---|---|
| `light` / `heavy` | precision tier — light is the pure-IR encoder, heavy imports analysis facts |
| `ldeq` | same-BB redundant-load unification (GVN's theorem at encoding time) |
| `frame` | heap-invariant frame facts via MemorySSA (the GEMM result) |
| `vacuity` | unsat cores + context-satisfiability audit on every UNSAT |
| `timeout=<ms>` / `threads=<n>` | the two orthogonal latency dials |
| `traps=<sym1>:<sym2>` | accept calls to named symbols as trap sites (Rust `panic`, Julia `boundserror`), behind a divergence gate |

Three tiers are used throughout the evaluation: **light**, **heavy**
(`heavy;ldeq`), and **full** (`heavy;ldeq;frame`).

## Language coverage (one mechanism, four frontends)

| Language | Check model | Trap shape | Notes |
|---|---|---|---|
| C/C++ | `-fsanitize=…-trap` (UBSan) | `llvm.ubsantrap` (x86 `ud1`) | light/heavy standard; only non-firing specs are timed |
| Swift | on by default at `-O`; `-Ounchecked` opts out | `cond_fail` → `llvm.trap` | IR parses under trunk `opt` unmodified |
| Rust | bounds always on; overflow via `-C overflow-checks=on` | `core::panicking::*` calls — compile with **`-C panic=abort`** (unwind emits `invoke`) | `traps=panic` |
| Julia | bounds on by default; `--check-bounds` flag | 1.12 outlines to `j_throw_boundserror_NNN` | `traps=boundserror`; the JIT accepts no external IR, so proofs deploy as `@inbounds` |

## Build and quick start

Requires LLVM trunk (built with the same C++ ABI), Z3 ≥ 4.8, CMake + Ninja;
optionally swiftc 6.x, Julia 1.12, and rustup for the native benchmarks.

```bash
cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=Release   # point LLVM_DIR/Z3 at your installs
ninja -C build                                      # builds build/OraclePass.so
bash scripts/run_tests.sh                           # regression gate: expect PASS=20 / FAIL=8
```

The gate's 8 "fails" are heavy/ldeq/frame/stride/symstart tests run under the
light configuration by design, plus six SAT soundness tripwires that must stay
SAT forever — a tripwire flipping to UNSAT means a fact source has become
wrong-strong, and nothing else in the suite can catch that.

```bash
# static triage (census → anchor coverage → verdicts → fact relevance)
bash scripts/swift_triage.sh                 # or rust_triage.sh / julia_triage.sh

# the headline runtime experiment (O3 sandwich + byte-identical gate)
KERNEL=native_bench/sha256.swift RUNARGS="200 perf_test/sha_input.bin" REPS=30 \
ORACLE_PASSES="oracle-pass<heavy;ldeq;frame;timeout=300;threads=8>" \
  bash scripts/run_swift_perf.sh

# proof-licensed @inbounds, three arms (baseline / expert / ODeSSy-proven)
julia native_bench/jl_gemm_arms.jl
julia native_bench/jl_gemm_sweep.jl 11        # the (m, n, k) sweep
```

Workload files are machine-local and gitignored; recreate with
`head -c 1048576 /dev/urandom > perf_test/sha_input.bin`.

## Repository map

* `OraclePass/` — the pass: `OraclePass.cpp` (orchestration, knob parsing, kill
  stage), `TrapDiscovery.*` (hunter, anchor, guards, slice, frame pairs),
  `TrapSolver.*` (per-edge worker), `Z3Encoder.*` (IR→Z3), `FactEncoder.*`
  (fact sources incl. SCEVSYM v2 and FRAME), `Scheduler.h` (FactGate).
* `tests/` — regression suite and soundness tripwires (`scripts/run_tests.sh`).
* `native_bench/` — Swift, Rust, and Julia kernels plus the three-arm
  `@inbounds` experiments and the GEMM dimension sweep.
* `scripts/` — triage and performance harnesses (`run_swift_perf.sh`,
  `run_zlib_perf.sh`, `run_zstd_perf.sh`, `run_lz4_perf.sh`,
  `run_zstd_audit.sh`, `run_timeout_sweep.sh`, `run_dial_matrix.sh`, …).
* `tools/` — analysis and plotting (`plot_smt_latencies.py`,
  `plot_dial_matrix.py`, `plot_gemm_sweep.py`, report generators).
* `results/` — committed logs: `results/static/` (verdicts, audits, sweeps) and
  `results/perf/` (timings, ceilings, arms). `evaluation/` holds raw CSVs.
* `docs/PAPER_FACTS.md` — **the complete statistics and narrative record.**
  Start there for any number. `docs/HANDOFF.md` is the runbook.
* `paper/` — the CGO submission (`main.tex`) and its figures.

## Measurement doctrine (hard-won)

Median-primary statistics (min is corrupted by rare fast outliers). Every
oracle delta is reported against **both** `base` and `base2x` — the
double-O3 attribution control, whose gap is that run's noise floor — so no gain
can be an artifact of extra conventional optimization. Shuffled interleaved
repetitions (30 for kernels, 10–20 for whole libraries, 21 for annotation
arms); pinned socket and `no_turbo` on servers; corpora in tmpfs. Every timed
binary must produce byte-identical output to its baselines first. Recovery is
reported as a fraction of each machine's *own* checked-vs-unchecked ceiling,
which makes results portable across microarchitectures. Dynamic experiments use
only sanitizer specifications that do not fire at runtime; a firing spec is
recorded as an un-runnable finding, never timed.

---

Developed by Amirali Ebrahimzadeh (University of Michigan; advisor Prof. Amir
Shaikhha), targeting CGO 2027.
