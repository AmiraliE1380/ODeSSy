# ODeSSy — On-Demand SMT System

ODeSSy is an out-of-tree LLVM pass that proves safety checks unreachable
with an SMT solver (Z3) and removes them. It covers UBSan traps in C/C++,
Swift's bounds and overflow checks, Rust panics, and Julia bounds errors.
After the pass, a second `-O3` run performs the transformations the removed
checks were blocking, such as unrolling and vectorization.

## Super-analysis

Every optimizer pairs an *analysis*, which establishes that a rewrite is safe,
with a *transformation*, which performs it. Each part can be cheap or
expensive:

|                     | cheap transformation        | expensive transformation        |
|---------------------|-----------------------------|---------------------------------|
| **cheap analysis**  | conventional (LLVM `-O3`)   | super-transformation (e.g. equality saturation) |
| **expensive analysis** | **super-analysis** (ODeSSy) | superoptimization (Souper, STOKE) |

A *super-analysis* spends extra effort on analysis and leaves the
transformation to the compiler's existing passes. The term goes back to
combined dataflow analyses that solve several analyses in one fixpoint
(Lerner, Grove, and Chambers, POPL 2002). ODeSSy is an aggressive form of it:
for each check, it encodes the surrounding program context, together with the
facts LLVM's own analyses already computed (value ranges, known bits, trip
counts, heap invariants), as a bit-vector formula, and asks Z3 whether the
check can fire. An `unsat` answer is a proof, and the check is removed;
`sat` or `unknown` changes nothing.

ODeSSy also performs **guard synthesis**: for a check that is not dead for
every input, the solver synthesizes a cheap loop-invariant guard under which
it is dead, and the loop is cloned behind that guard with its checks removed.

## Repository layout

| Path | Contents |
|---|---|
| `OraclePass/` | the pass: discovery, encoding, solving, guard synthesis |
| `tests/` | regression suite (`.ll` inputs with expected verdicts) |
| `scripts/` | build, test, and experiment harnesses |
| `native_bench/` | Swift, Rust, and Julia benchmark kernels |
| `evaluation/` | IR inputs for the static experiments |
| `results/` | experiment outputs (CSVs, logs, tables) |
| `tools/`, `figs/` | plotting scripts |
| `docs/` | design notes |
| `paper/` | paper sources |

## Build

Requirements: LLVM trunk (23.x), Z3 ≥ 4.8, CMake, and Ninja. Swift 6.3,
Rust 1.97, and Julia 1.12 are needed only for the native benchmarks.

```bash
cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=Release   # set LLVM_DIR if LLVM is not on the default path
ninja -C build                                      # produces build/OraclePass.so
bash scripts/run_tests.sh                           # expected: PASS=30 FAIL=12
```

The twelve expected failures are tests that need a richer configuration than
the default one, plus SAT tripwires that must never become `unsat`.

## Usage

ODeSSy runs between two `-O3` pipelines:

```bash
clang -O3 -S -emit-llvm -fsanitize=signed-integer-overflow \
      -fsanitize-trap=signed-integer-overflow input.c -o input.ll
opt -load-pass-plugin=build/OraclePass.so \
    -passes='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=10>,default<O3>' \
    input.ll -S -o output.ll
```

Two configurations cover most uses:

| Configuration | Knobs | Use |
|---|---|---|
| **Fast** | `heavy;frame;mv;narrow;timeout=10;threads=10` | development builds; seconds per module |
| **Thorough** | `heavy;frame;ind;mv;narrow;timeout=10000;threads=10` | release builds; most proofs |

Main knobs:

| Knob | Effect |
|---|---|
| `heavy` | import LLVM's analyses (ranges, known bits, trip counts) as facts |
| `frame` | heap-invariance facts from MemorySSA |
| `ind` | prove loop checks by one-step induction |
| `mv`, `narrow` | guard synthesis and loop cloning |
| `timeout=<ms>`, `threads=<n>` | per-query budget and worker threads |
| `traps=<sym>:<sym>` | treat calls to these functions as checks (Rust: `panic`; Julia: `bounds_error:boundserror`) |
| `vacuity` | refuse any proof whose context alone is contradictory (audit) |
| `poison-loads` | drop the assumption that loaded values are not poison |

Rust and Julia need `traps=` so that their panic and bounds-error calls are
recognized as checks. Every knob is described in `OraclePass/OraclePass.cpp`.

## Reproducing the experiments

The harnesses in `scripts/` run each experiment end to end and write to
`results/`:

| Experiment | Script |
|---|---|
| runtime speedups (Swift / Rust / C) | `run_swift_perf.sh`, `run_rust_perf.sh`, `run_zstd_perf.sh`, `run_zlib_perf.sh` |
| Julia kernels | `native_bench/jl_*_arms.jl`, `native_bench/jl_gemm_sweep.jl` |
| guard-synthesis ablation | `run_guard_ablation.sh` |
| compile cost (per module and whole pipeline) | `run_compile_cost.sh`, `run_pipeline_cost.sh` |
| threads × timeout dial | `run_dial_matrix.sh` |
| comparison with Souper | `souper_static.sh` |

Timed runs pin to one socket with `numactl` and disable turbo; each timed
binary must produce byte-identical output to its baselines before its time
is recorded.
