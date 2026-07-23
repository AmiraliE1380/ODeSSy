# ODeSSy — On-Demand SMT System

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

## Philosophy

- **Analysis, not synthesis.** ODeSSy is *not* a superoptimizer: there is no
  candidate-program search. The transformation is fixed (delete a dead check);
  the solver only establishes the fact that licenses it. Dropping synthesis is
  what makes per-site solver queries affordable *inside* the pipeline
  (~10–250 ms/trap) instead of requiring offline caching.
- **Sound, incomplete, on demand.** A missed proof costs a redundant check; a
  wrong proof would miscompile — so every failure mode (solver exception,
  timeout, unmodeled instruction, memory, loops) degrades to "keep the trap."
  The work list is exactly the set of trap sites the sanitizer injected: the
  pass knows precisely where to spend solver time.
- **Audited, not trusted.** In audit mode every UNSAT passes a **vacuity
  check** (the context alone must be satisfiable — a contradictory context
  would make anything vacuously UNSAT) and reports its **unsat core** (the
  minimal set of named assumptions used), which maps mechanically back to
  source-level guards via debug locations.

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

# performance mode (no audits) — the configuration to benchmark
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass,simplifycfg,adce,verify" -S in.ll -o out.ll

# audit mode: vacuity check + unsat cores per UNSAT
opt ... -passes="oracle-pass<vacuity>" -disable-output in.ll

# per-query Z3 timeout in ms (default 10000); parameters compose
opt ... -passes="oracle-pass<vacuity;timeout=3000>" ...
```

Per-trap verdict logs land in `logs/compilations/<module-stem>.txt`
(greppable tokens: `UNSAT`, `SAT (WARNING`, `UNKNOWN (Solver gave up`,
`[vacuity-ok]`, `[VACUOUS]`, `[Skip]`, `Unsat core:`, `Trap source:`).

## Repository tour

| path | what |
|---|---|
| `OraclePass/OraclePass.cpp` | the pass: trap discovery, dominating-guard + `llvm.assume` collection, backward slice, kill, audit orchestration |
| `OraclePass/Z3Encoder.{h,cpp}` | LLVM IR → Z3 `QF_BV` translation, memoized CFG reachability for PHIs, vacuity/core plumbing |
| `run_tests.sh` | expectation-checked regression suite over `tests/*.ll` (`*_sat*` ⇒ SAT, else ⇒ UNSAT); CI gate |
| `run_zlib.sh` | audit harness: zlib/deflate × {signed, unsigned} × {O1, O3} with verdict accounting |
| `run_zlib_perf.sh` | performance protocol: 4 specs × {O3, O3∘O3 control, O3∘oracle∘O3} × 3 corpus sizes, shuffled interleaved timing, binary-size metrics |
| `make_perf_report.py`, `plot_smt_latencies.py` | reporting: speedup/shrink tables, per-verdict SMT latency distributions |
| `run_zlib_behavioral.sh` | end-to-end soundness: two minigzip builds differing only in eliminated traps must produce byte-identical output |
| `HANDOFF.md` | full developer documentation: internals, invariants, audit methodology, roadmap |

## Positioning

SMT has been used in compilers to *find new code* (superoptimization: Souper,
STOKE) and to *check the compiler itself* (translation validation: Alive2).
ODeSSy occupies a third slot: using the solver to *prove facts the compiler's
native analyses are too weak to prove*, licensing transformations the compiler
already knows. Souper's path conditions are the closest structural relative;
Souper synthesizes (and therefore caches offline), ODeSSy only decides — which
is what makes on-demand, in-pipeline use viable. Next on the roadmap is the
inverse import: asserting LLVM's own lightweight analysis facts (LVI ranges,
known bits, SCEV bounds) at the query's over-approximation boundaries.
