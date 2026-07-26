# ODeSSy — On-Demand SMT System for Compiler Super-Analysis and Optimization
**An LLVM pass that uses an SMT solver to prove sanitizer checks unreachable — and deletes them.**
Author: Amirali Ebrahimzadeh (UMich EECS) · Advisor: Prof. Amir Shaikhha

## What it does
Compiling with `-fsanitize=signed-integer-overflow,unsigned-integer-overflow`
`-fsanitize-trap=...` makes clang guard every at-risk integer operation with a
runtime check ending in a trap (`ud2`). Many of those checks are *provably
dead*: the surrounding code — parameter validation, dominating branches,
`llvm.assume` facts, `nsw`/`nuw` flags — already implies the overflow cannot
happen. LLVM's built-in analyses (known-bits, LazyValueInfo, ConstraintElim)
miss a large class of these proofs, particularly when the bound must travel
through **shifts, rotates, and bitwise arithmetic**, where lightweight abstract
domains lose precision but a bit-vector decision procedure is exact.

ODeSSy runs as an out-of-tree function pass after clang -O3. For every
`llvm.ubsantrap` site it builds an SMT query — *dominating context* ∧ *trap
condition* — over Z3's `QF_BV` theory and asks for satisfiability:
- **UNSAT** → the trap is unreachable → the guarding branch is folded to a
  constant, and `simplifycfg`+`adce` physically remove the check.
- **SAT / UNKNOWN / timeout / any error** → the trap is kept. Always.

## Philosophy: super-analysis, not super-optimization
- **Analysis, not synthesis.** ODeSSy is a *super-analyzer*, not a
  superoptimizer: there is no candidate-program search. Where
  super-optimization uses the solver to *find new code* at exponential cost,
  super-analysis uses it to *prove existing facts* the compiler's native
  analyses are too weak to establish — licensing a transformation the compiler
  already knows (delete a dead check). Dropping synthesis is what makes
  per-site solver queries affordable *inside* the pipeline (~10–250 ms/trap)
  instead of requiring offline caching.
- **Sound, incomplete, on demand.** A missed proof costs a redundant check; a
  wrong proof would miscompile — so every failure mode (solver exception,
  timeout, unmodeled instruction, memory, loops) degrades to "keep the trap."
  The work list is exactly the set of trap sites the sanitizer injected: the
  pass knows precisely where to spend solver time.
- **Audited, not trusted.** In audit mode every UNSAT passes a **vacuity
  check** (the context alone must be satisfiable — a contradictory context
  would make anything vacuously UNSAT) and reports its **unsat core** (the
  minimal set of named assumptions used), which maps mechanically back to
  source-level guards and imported analysis facts via labels and debug
  locations.

## Two precision tiers
The pass has a user-facing latency/precision dial, selected by pass parameter:
- **light** (default) — dominating guards + `llvm.assume` + exact BV encoding
  of the backward slice. Over-approximation boundaries (loads, alien calls,
  loop-header phis, GEPs) are unconstrained free variables.
- **heavy** — light PLUS a `FactEncoder` module that imports everything
  LLVM's own lightweight analyses know about each boundary value as SMT
  constraints: `!range` metadata (RM), `range` attributes on call returns and
  parameters (RA), KnownBits masks (KB), LazyValueInfo point ranges (LVI,
  dominance-gated), and ScalarEvolution loop-phi ranges (SCEV). In audit mode
  each fact is tracked with a source label so unsat cores attribute proofs to
  the analysis that enabled them.

The light/heavy split doubles as the built-in ablation for the fact-import
feature. Honest finding on zlib: **heavy ≡ light** — every fact source fires
and is validated by targeted tests, but zlib's remaining SAT traps depend on
memory contents and data-dependent loop bounds no lightweight fact can
express. Heavy's expected payoff is affine, constant-trip-count workloads
(PolyBench/Rodinia/NPB), where SCEV ranges are tight.

## Headline results (zlib 1.3.x, whole library + minigzip, x86-64, clang/LLVM trunk)
| sanitizer spec | traps | eliminated | runtime vs O3∘O3 control | `.text` shrink |
|---|---|---|---|---|
| signed | 125 | 10 (8.0%) | ≈ 0% | −80 B |
| unsigned | 1219 | 138 (11.3%) | ≈ +0.8% | −120 B |
| signed+unsigned | 1296 | 142 (11.0%) | **+2.2%** (flat across 8–512 MB inputs) | −656 B |

Eliminating 11% of checks recovers **~45% of the total sanitizer runtime
overhead** on the combined spec. Compile cost is currently 11–233 ms per trap
(embarrassingly parallel across traps and translation units; see roadmap).

Worked example: UBSan instruments the signed arithmetic in zlib's `RANK` flush
-ranking macro (`deflate.c:1018`, `((f)*2) - ((f)>4 ? 9 : 0)`). The operand is
range-limited by the API's own validation, but the bound travels through a
shift — LLVM keeps the check through -O3; ODeSSy proves it dead with the
two-assumption unsat core `{G0: f > -1, TRAP}` in under 5 ms, in both `deflate`
and its inlined copy in `deflateParams`. An ablation confirms the mechanism:
with shift encoding disabled, all signed proofs disappear.

A complementary *dynamic* finding: zlib binaries sanitized for **unsigned**
overflow abort on inputs ≥ ~512 MB — an intentional wraparound fires — in
baseline and ODeSSy builds identically (the pass had classified that check SAT
and kept it). Unsigned wraparound is defined C; sanitizing it is a spec
mismatch, which is why ODeSSy reports signed and unsigned separately.

## Usage
```bash
# build (out-of-tree pass; needs local LLVM trunk + Z3)
mkdir -p build && cd build && CC=clang CXX=clang++ cmake -G Ninja .. && ninja
# performance mode, light tier (default) — the configuration to benchmark
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass,simplifycfg,adce,verify" -S in.ll -o out.ll
# heavy tier: + LLVM analysis facts at the boundaries
opt ... -passes="oracle-pass<heavy>,simplifycfg,adce,verify" ...
# audit mode: vacuity check + unsat cores per UNSAT; parameters compose
opt ... -passes="oracle-pass<vacuity>" -disable-output in.ll
opt ... -passes="oracle-pass<vacuity;heavy;timeout=3000>" ...
```
Harness knobs: `TIER=heavy bash run_zlib.sh` (audit),
`TIER=heavy bash run_zlib_perf.sh` (perf; writes `perf_zlib_heavy.csv`),
`python3 make_perf_report.py --specs both` (filtered report).

Per-trap verdict logs land in `logs/compilations/<module-stem>.txt`
(greppable tokens: `UNSAT`, `SAT (WARNING`, `UNKNOWN (Solver gave up`,
`[vacuity-ok]`, `[VACUOUS]`, `[Skip]`, `Unsat core:`, `Trap source:`,
`[tier: heavy]`, `[heavy]`, `Fact[RM:`/`RA:`/`KB:`/`LVI:`/`SCEV:`).

## Repository tour
| path | what |
|---|---|
| `OraclePass/OraclePass.cpp` | the pass: trap discovery, dominating-guard + `llvm.assume` collection, backward slice, kill, tier + audit orchestration |
| `OraclePass/Z3Encoder.{h,cpp}` | LLVM IR → Z3 `QF_BV` translation, memoized CFG reachability for PHIs, boundary (free-variable) bookkeeping, generic range/known-bits assertion primitives, vacuity/core plumbing |
| `OraclePass/FactEncoder.{h,cpp}` | heavy tier policy: walks boundary values, queries RM/RA/KB/LVI/SCEV, asserts labeled facts |
| `run_tests.sh` | expectation-checked regression suite over `tests/*.ll` (`*_sat*` ⇒ SAT, else ⇒ UNSAT); the three `test_heavy_*` files are heavy-tier-only (expected FAIL under the light gate until it is tier-aware) |
| `run_zlib.sh` | audit harness: zlib/deflate × {signed, unsigned} × {O1, O3} × {light, heavy} with verdict accounting |
| `run_zlib_perf.sh` | performance protocol: 4 specs × {O3, O3∘O3 control, O3∘oracle∘O3} × 3 corpus sizes, shuffled interleaved timing, binary-size metrics, TIER knob |
| `make_perf_report.py`, `plot_smt_latencies.py` | reporting: speedup/shrink tables (`--specs` filter), per-verdict SMT latency distributions |
| `run_zlib_behavioral.sh` | end-to-end soundness: two minigzip builds differing only in eliminated traps must produce byte-identical output |
| `HANDOFF.md` | full developer documentation: internals, invariants, audit methodology, roadmap |

## Positioning
SMT has been used in compilers to *find new code* (superoptimization: Souper,
STOKE) and to *check the compiler itself* (translation validation: Alive2).
ODeSSy occupies a third slot — **super-analysis**: using the solver to *prove
facts the compiler's native analyses are too weak to prove*, licensing
transformations the compiler already knows. Souper's path conditions are the
closest structural relative; Souper synthesizes (and therefore caches
offline), ODeSSy only decides — which is what makes on-demand, in-pipeline use
viable. The import also runs in the other direction: the heavy tier asserts
LLVM's own lightweight analysis facts (LVI ranges, known bits, SCEV bounds,
range metadata/attributes) at the query's over-approximation boundaries, with
unsat-core attribution of which analysis mattered.