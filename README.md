# ODeSSy — On-Demand SMT System for Compiler Super-Analysis

ODeSSy is an out-of-tree LLVM module pass that uses an SMT solver (Z3, QF_BV)
to **prove sanitizer traps and native language safety checks unreachable — and
delete them**. It is the first instantiation of a paradigm we call
**super-analysis**: the middle ground between conventional compiler
optimization (fast, heuristic, per-analysis) and super-optimization
(exhaustive search over programs). A super-analyzer does not search for new
code; it asks a solver to *logically conjoin* everything the compiler's own
lightweight analyses already know — range metadata, known bits, value
intervals, loop trip counts, dominating branch conditions — and to discharge
proofs that no single analysis, and no heuristic combination of them, can
reach.

```
conventional optimization  ──────  ODeSSy (super-analysis)  ──────  super-optimization
LLVM -O3: fast, heuristic          SMT-certified facts,             Souper/STOKE: search
per-analysis reasoning             online latency, sound            over program space
```

## Headline results

* **C/C++ (UBSan traps):** 11% of zlib's, 13.2% of zstd's, and 9.5% of lz4's
  sanitizer traps proven dead and eliminated (vs the double-compiled `base2x`
  attribution control; 243 attributable eliminations; ~35% vs plain base).
  Runtime recovery up to ~+0.6% of the 1.5–5.4% ANF ceiling on x86 servers
  (cold-path checks; wide OoO cores hide them), plus consistent **binary text
  shrink (−0.69% zlib, −1.21% lz4)**.
* **Swift (native bounds checks): the centerpiece.** In SHA-256's
  message-schedule inner loop, ODeSSy proves 3 of the 5 per-iteration bounds
  checks dead. Re-optimizing after elimination (the O3 sandwich) unlocks loop
  unrolling and yields **+4.2–4.3% median speedup on a Xeon server and
  +3.5–4.7% on Apple M-series** — replicated across two ISAs, with
  byte-identical program output (a built-in soundness gate). The eliminated
  checks are exactly 3 of 38 in the program: *value per check is wildly
  non-uniform, and one hot check can be worth more than fifty cold ones.*
* **Multi-analysis cooperative proofs:** the sha256 unsat cores read
  `|RM| |SCEV| |LVI| |SCEV| G0 G1 TRAP` — four independent LLVM fact sources
  plus programmer-written guards, composable only by a solver. This is the
  empirical existence proof for super-analysis.
* **Latency is a dial:** 96% of all proofs survive a 100 ms per-query timeout
  (52 → 50 UNSATs from 3 s down to 100 ms; the cliff is at 1–3 ms), and the
  parallel solve stage scales 2.73 s → 0.77 s at 8 threads (0.74 s at 12) with
  a determinism contract (verdicts and logs are byte-identical for any thread
  count). ODeSSy can run as an online pass, an offline binary optimizer, or a
  pure static analyzer.

## Architecture (v3 module pass)

Three stages. **Stage 1 (serial):** `TrapDiscovery` hunts anchored trap sites
(single-predecessor trap blocks behind a conditional branch), collects
dominating context guards + `llvm.assume` facts, and takes a backward slice.
**Stage 2 (parallel):** one `TrapSolver` worker per trap, each with a private
Z3 context; the heavy tier imports analysis facts (`!range`, range attributes,
KnownBits, LazyValueInfo, SCEV constant ranges, and SCEV-SYM symbolic
trip-count bounds) at the over-approximation boundaries, serialized through a
`FactGate` ticket turnstile so LVI/SCEV caches evolve deterministically.
**Stage 3 (serial):** UNSAT verdicts fold the anchor branches in discovery
order. Every UNSAT is audited: tracked assertions produce labeled unsat cores
(proof attribution) and a vacuity check re-solves the context alone (a
contradictory context refuses to eliminate).

### Pass string

```
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;heavy;ldeq;timeout=300;threads=8;traps=panic:boundserror>" ...
```

* `light` / `heavy` — precision tier (light stays byte-identical to the
  pre-tier encoder; heavy adds analysis facts). Heavy is standard for native
  languages, light for C.
* `vacuity` — unsat cores + context-satisfiability audit on every UNSAT.
* `ldeq` — same-BB redundant-load unification (GVN's theorem at encoding time).
* `timeout=<ms>`, `threads=<n>` — the two orthogonal latency dials.
* `traps=<sub1>:<sub2>` — accept calls to named symbols as trap sites (Rust
  `panic`, Julia `boundserror`), behind a divergence gate (noreturn or
  call+`unreachable`). Empty default keeps the intrinsic-only Hunter
  byte-identical.

## Language coverage (one mechanism, four frontends)

| Language | Check model | Trap shape | Notes |
|---|---|---|---|
| C/C++ | `-fsanitize=...-trap` (UBSan) | `llvm.ubsantrap` (x86 `ud1`) | light tier standard |
| Swift | on by default at `-O`; `-Ounchecked` opt-out | `cond_fail` → `llvm.trap` | IR parses under trunk opt unmodified |
| Rust | bounds always on; overflow via `-C overflow-checks=on` | `core::panicking::*` calls — **compile with `-C panic=abort`** (unwind emits `invoke`, invisible to a call-based hunter) | `traps=panic` |
| Julia | bounds on by default; `--check-bounds` flag | 1.12 outlines to `j_throw_boundserror_NNN` thunks | `traps=boundserror`; loop multiversioning shares error blocks (multi-pred anchor gap) |

## Repository map

* `OraclePass/` — the pass: `OraclePass.cpp` (orchestration, parsing, kill
  stage), `TrapDiscovery.*` (hunter/anchor/guards/slice), `TrapSolver.*`
  (per-trap worker), `Z3Encoder.*` (IR→Z3, memoized CFG encoding, LDEQ),
  `FactEncoder.*` (heavy-tier fact sources incl. SCEV-SYM), `Scheduler.h`
  (FactGate).
* `tests/` — regression suite (`bash run_tests.sh`; expected gate
  **PASS=17 / FAIL=6** — the 6 "fails" are heavy/ldeq/stride tests run under
  the light gate by design). `tests/manual/` needs nonstandard pass strings.
* `native_bench/` — Swift (`nbody`, `sha256`, `lz77`), Rust
  (`lz77.rs`, `matmul.rs`), Julia (`lz77.jl`, `matmul.jl`, `julia_dump.jl`).
* Triage harnesses: `swift_triage.sh`, `rust_triage.sh`, `julia_triage.sh`
  (census → anchor coverage → verdicts → LDEQ relevance, with a lowering
  shape probe).
* Perf harnesses: `run_zlib_perf.sh`, `run_lz4_perf.sh`, `run_swift_perf.sh`
  (O3-sandwich + output-equivalence gate), `run_matrix.sh` /
  `run_matrix_native.sh` (sanitizer × benchmark opportunity matrices),
  `run_timeout_sweep.sh`, `run_zstd_audit.sh`.
* `PAPER_FACTS.md` — **the complete statistics, contributions, and narrative
  record for the CGO paper.** Start there for any number.

## Measurement doctrine (hard-won)

Median-primary statistics (min is corrupted by rare fast outliers — an
OpenSSL run once showed a fake +5.4% on min); every oracle delta is reported
against **both** `base` and `base2x` (the double-round-trip attribution
control; their gap is the noise floor); shuffled interleaved reps; pinned
socket + `no_turbo` on servers; and every perf binary must produce
**byte-identical output** to its baselines before any timing is trusted.

## Quick start

```bash
ninja -C build                    # build the plugin (needs LLVM trunk + Z3)
bash run_tests.sh                 # expect PASS=17 / FAIL=6
bash swift_triage.sh              # 10-minute Swift static triage
RUNARGS="200 perf_test/sha_input.bin" bash run_swift_perf.sh   # the headline experiment
```

Developed by Amirali Ebrahimzadeh (University of Michigan / advisor Prof.
Amir Shaikhha) targeting CGO 2027.
