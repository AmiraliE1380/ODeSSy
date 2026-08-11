# PAPER_FACTS — the complete statistics, contributions, and narrative record
### (v2, updated Aug 10 2026 — supersedes the Aug 6 version; master table added)

Every number verified against the logs committed to this repo. This file is
the single source of truth for the CGO 2027 submission. Update here first.

---

## 0. MASTER TABLE — all benchmarks

Provenance: R = existing repo / faithful transpile of repo code; O = our
implementation of a standard algorithm. Ceiling = checked-vs-unchecked
(`-Ounchecked`, `--check-bounds=no`, or sanitizer-off ANF). Speedups are
oracle-vs-base2x medians (vs-base in parens where they differ materially).
"—" = not measured; "n/a" = measurement not meaningful (reason noted).

| Benchmark | Lang | Prov | Traps | UNSAT | % elim | Ceiling | Mac Δ | Server Δ |
|---|---|---|---|---|---|---|---|---|
| zlib (whole, combined spec) | C | R | 1296 | 142→144¹ | 11.0% | ANF +1.5% | — | ≈0 |
| zstd | C | R | ~1900 | 12.2% incl. bounds 18/198 | 12.2% | ANF +1.7–3.5% | — | — |
| lz4 | C | R | 3403² | ~9.5% | 9.5% | ANF +3.2–5.4% | — | ≈0 (layout noise) |
| OpenSSL | C | R | 2088 | — (not run) | — | ≈0 (asm-dominated) | — | — |
| CryptoSwift (whole lib) | Swift | **R** | 2807 | 183 | 6.5% | 2.5–3% | +2.3% (+1.4 vs base)³ | flat |
| sha256 | Swift | O | 38 | 5 | 13% | ~9.5% | +3.5–4.7% | **+4.7% (+5.0 vs base)** |
| sha1 | Swift | O | 26 | 7 | 27% | — | **+6.4% (+7.3 vs base)** | −4.5%⁴ |
| md5 | Swift | O | 27 | 5 | 19% | — | pending | n/a (Linux vectorizes)⁵ |
| adler32 (zlib transpile) | Swift | R | 39 | 1⁶ | 2.6% | **~5%** | pending | pending |
| crc32 (zlib transpile) | Swift | R | 38 | 0⁷ | 0 | — | n/a | n/a |
| utf8 validator | Swift | O | 22 | 2 | 9% | ≈0 both machines | −2%⁸ | +0.00%⁸ |
| base64 | Swift | O | 28 | 0⁷ | 0 | — | n/a | n/a |
| lz77 | Swift | O | 27 | 1 | 4% | — | — | — |
| nbody | Swift | O | 86 | 0⁹ | 0 | **+410% (5.1×)** | n/a | n/a |
| sha256 | Julia | O | 12 | 4 | 33% | ≈0¹⁰ | n/a | n/a |
| matmul | Julia | O | 3 | 0⁹ | 0 | ~4× class (gemm +309%) | n/a | n/a |
| lz77 | Julia | O | 2 | 0 | 0 | — | n/a | n/a |
| matmul / lz77 | Rust | O | 5 / 3 | 0⁹ | 0 | modest | n/a | n/a |
| sha256 | Zig | O | parked (0.16 API churn) | | | | | |

¹ 142/1296 pre-anchor-v2; multi-pred anchor added 2 more on the signed
  spec (125→113). A full C re-elimination sweep with anchor-v2 +
  SCEVSYM/udiv heavy is queued and may raise all three C rows.
² lz4 trap count under aggressive inlining; 300 ms timeout costs 35/1077
  proofs (1580 s → 732 s oracle stage).
³ Borderline: exceeds the ~0.9% base↔base2x floor; REPS=30 rerun queued.
⁴ Genuine regression: Linux emission keeps only 2/26 proofs and post-
  elimination O3 re-optimization lands worse (the relottery, see §5).
⁵ Linux pipeline vectorizes md5's little-endian assembly loop; hot-path
  work already check-free there (emission-dependence finding).
⁶ The one adler proof is INSIDE the DO16 hot group (16-deep guard-chain
  core `|RM| G0 G1 G3 G7`) but is 1 of 16 per group.
⁷ crc32/base64 zeros = taxonomy class (d): non-unit-stride index phis
  (4 and 3) defeat SCEV trip counts entirely (§4d).
⁸ utf8 = the measurement-floor control pair: eliminations off the hot
  path give exactly 0.00% (server); Mac −2% = relottery at zero ceiling.
⁹ Heap-invariant residue (taxonomy slot b) — the 3–5× ceilings live here.
¹⁰ Julia sha256 checked-vs-`--check-bounds=no`: within noise (0.48 vs
  0.53 s) — nothing to recover regardless of toolchain; static proofs +
  ceiling reported, runtime recovery evaluated on AOT toolchains.

---

## 1. Contributions (paper-ready)

1. **Super-analysis**: SMT for analysis only, conventional transformations
   — the middle ground between heuristics (ms, per-analysis) and
   super-optimization (hours, synthesis). Spectrum: LLVM -O3 ← ODeSSy →
   Souper/STOKE.
2. **The conjunction evidence**: unsat cores attribute every nontrivial
   proof to facts from multiple independent LLVM analyses plus
   programmer guards (6+ distinct core shapes, §3) — entailment across
   analyses is an SMT problem no pass pipeline performs.
3. **ODeSSy**: 3-stage module pass; private Z3 contexts; FactGate
   determinism contract (verdicts/logs byte-identical ∀ thread counts);
   light/heavy tiers (light = byte-identical ablation); per-proof audit
   (labeled cores + vacuity re-check); per-query timeout.
4. **Latency is a dial**: 96% of proofs survive 100 ms/query (52→50;
   cliff at 1–3 ms); solve stage 2.73 s→0.77 s at 8 threads; online /
   offline / static-analyzer from one binary.
5. **One mechanism, four frontends**: `traps=` named-callee hunter +
   divergence gate covers C/C++, Swift, Rust, Julia (Zig compatible,
   parked) with zero per-language C++.
6. **Results** (master table): 9–12% C eliminations on real repos;
   183 proofs in unmodified CryptoSwift (output byte-identical);
   cross-ISA sha256 +4.7–5.0%; sha1 +6.4–7.3% (M-series);
   binary shrink −0.69%/−1.21% text.
7. **Residual-obligation taxonomy** with three-language receipts (§4).
8. **Check value is non-uniform in both directions** (§5) — the
   dose-response ladder is the causal argument.

---

## 2. Headline experiments

### Swift SHA-256 (cross-ISA row)
O3-sandwich pipeline: `swiftc -O -emit-ir → opt <config> → opt
default<O3> → llc -O2 -relocation-model=pic → swiftc link`; configs
base / base2x (round-trip controls) / oracle
(`heavy;ldeq;timeout=300;threads=8`); output-equivalence gate before any
timing; median-primary, shuffled interleaved, dual-baseline.

* 5/38 checks proven dead (3 word-assembly + 2 outer-block-loop via the
  udiv-translated BTC `count/64−1`).
* **Xeon: +5.00% vs base / +4.71% vs base2x** (REPS=15, no_turbo,
  numactl socket 0, min≈median). M-series: +3.5–4.7% (REPS=10).
* Ceiling ~9.5% ⇒ ~half recovered. Mechanism: post-elimination
  unrolling (multi-exit → unrollable; oracle IR +178 lines, no vector).
* All three eliminated word-assembly checks lie in the message-schedule
  inner loop (16×blocks per hash).

### The dose-response ladder (causal attribution)
| eliminations (hot) | result |
|---|---|
| 7 (sha1, Mac) | +6.4/+7.3% |
| 5 (sha256, server) | +4.7/+5.0% |
| 3 (sha256, server, pre-udiv) | +4.2/+4.3% |
| 2 (sha1, server — Linux keeps 2/26) | −4.5% (relottery regression) |
| 2 (utf8, off hot path) | +0.00% exactly |
| 1 (sha1 pre-udiv server) | ±0.0% |
Recovery tracks hot-path eliminations, not plumbing; re-optimization
after non-unlocking eliminations is a two-sided lottery.

### CryptoSwift (real-library row)
114-file whole-module compile of the deployed MIT library, unmodified.
Static: **183/2807 proofs (6.5%), vacuous=0, skips=0**, cores spanning
guard-chain / SCEV / LVI-only / single-guard shapes. Runtime (sha256
workload): ceiling 2.5–3%; Mac +1.42/+2.29% (exceeds ~0.9% noise floor;
REPS=30 rerun queued); Xeon flat (cold checks — consistent with the C
pattern). O3 round-trips INFLATE trap counts via inlining (2678→2992
base, →3348 base2x): attribution valid only vs round-trip controls.
Output byte-identical across configs — the strongest end-to-end
soundness demonstration in the project.

---

## 3. Unsat-core shapes (the conjunction evidence)

1. Word-assembly trailing checks: `|RM| |SCEV| |LVI| |SCEV| G0 Gk`
   (sha256 ×3, md5 ×3, sha1 ×3 — identical across three kernels).
2. udiv-BTC outer-loop: `|RM| |SCEVSYM| G0`, `|RM| |SCEV| |SCEVSYM|
   |SCEV| G1` (sha256/md5/sha1 +2 each after udiv translation).
3. Pure index-range (no guards): `|SCEV| TRAP`, `|LVI| |SCEV| TRAP`
   (sha1 schedule expansion `w[t-3..]`, t∈[16,80)).
4. Julia SCEVSYM chains: `|SCEV| |SCEVSYM| |SCEV| G0 G1 G3` (all four
   Julia sha256 proofs — the rotated-loop machinery composing with
   guard chains).
5. Guards+metadata only: `|RM| G0 G1 G7` (utf8 continuation reads;
   adler32's 16-deep DO16 chain `|RM| G0 G1 G3 G7`).
6. Mask/bit proofs: `and`-bounded index vs constant bound (manual
   traps= test; light tier).
CryptoSwift adds `G0 G2`-only and `|LVI| TRAP` shapes at scale.

---

## 4. Residual-obligation taxonomy (receipts in logs)

(a) **Symbolic trip counts — SOLVED** (SCEVSYM: umin-exact, symbolic-max
    fallback for multi-exit loops, exact udiv; stride-s gate behind
    SCEV's own nuw). nbody facts 0→71; Julia+hash-kernel cores.
(b) **Heap/interprocedural length invariants — LOCATED, out of scope.**
    Swift `array.count` (runtime-allocated), Rust `Vec` len (opaque
    provenance / `black_box` asm clobber — unforgeable by any alias
    analysis), Julia argument-array `size` fields. Needs allocation
    contracts + frame facts (MemorySSA). Owns the 3–5× ceilings.
(c) **Anchor gaps — CLOSED** (anchor v2: one job per incoming edge;
    partial elimination of shared error blocks; Swift merged blocks +
    Julia preloop/postloop multiversioning now attempted; zlib +2).
(d) **Non-unit / variable stride induction — SCEV's own limit.**
    SCEV computes NO trip count (exact, symbolic-max, or per-exit) for
    stride-3/4 ult latches even with nuw (verified: all
    COULDNOTCOMPUTE). Witnesses: base64 (stride 3), crc32 (stride 4),
    utf8 (variable 1–4; its 2 proofs are guard-only). Plan C
    (back-edge-frame induction) is the machinery; future work.

---

## 5. Findings ledger

* **Non-uniform check value, both directions**: 2–5 checks in hot loops
  cause 3–5× slowdowns (side exits block unroll/vectorize); the same
  count elsewhere costs ~0. Trap counting undersells native languages;
  the metric is what re-optimization unlocks (and the relottery can
  lose when nothing is unlocked — sha1 server −4.5%).
* **Emission-dependence**: identical source is provable under macOS
  Swift and already-vectorized (check-free hot path) under Linux Swift
  (md5); sha1 partially (7 vs 2 proofs). The oracle and the vectorizer
  are complementary consumers of the same loop structure. Loop-carried
  dependences (crc/adler) block vectorization on both platforms.
* **Microarchitectural check-sensitivity**: Xeon hides cold checks
  (C ANF, CryptoSwift, sha1-with-2 all flat); M-series pays more
  (CryptoSwift +2.3%, sha1 +7.3%). Structural unlocks pay on both
  (sha256).
* **Compiler self-sufficiency ordering**: rustc pre-eliminates almost
  everything (3–5 traps left); Swift leaves hot-loop chains; Julia
  leaves bounds everywhere but they're often free.
* **The library-vs-kernel tax**: CryptoSwift's sha256 ceiling (2.5–3%)
  < lean kernel's (9.5%) — abstraction overhead dilutes per-check cost.

---

## 6. Engineering & latency (unchanged numbers)

Threads: 2.73→1.55→1.00→0.77→0.74 s (1/2/4/8/12; plateau ~3.7×,
Amdahl). Timeouts: 52 UNSATs@3 s → 50@100 ms (96%) → 43@10 ms → 16@1 ms;
300 ms standard (lz4: 1580→732 s, −35/1077 proofs). Server SMT ~3.8×
slower/query than M5. Regression gate PASS=17/FAIL=6 (heavy/ldeq/stride
tests under light gate by design; both _sat tripwires must PASS).
Determinism contract; light-tier byte-identity ablation.

---

## 7. Methodology doctrine

Median-primary (min corrupted by outliers — OpenSSL fake +5.4%); dual
baselines base AND base2x, result must exceed the base↔base2x gap and
agree in sign; output-equivalence gate before any timing; no_turbo +
numactl + shuffled interleaved on servers; code-layout noise ±0.5–1.5%;
census counts `call|invoke`; x86 ubsantrap lowers to UD1; kernels are
block-processing loops of the standard algorithms (state in methodology);
adler32/crc32 are faithful transpiles of zlib's own C (BASE/NMAX/DO16;
BYFOUR slicing-by-4); O3 round-trips inflate trap counts via inlining.

---

## 8. Toolchain lowering facts (artifact appendix)

Rust `panic=unwind`→invoke (invisible to CallInst hunter): `-C
panic=abort` is load-bearing. rustc v0-mangled `panic_bounds_check`/
`panic_const_add_overflow`. Julia 1.12 outlines to
`j_throw_boundserror_NNN` (noreturn, call+unreachable, swiftcc);
integers wrap (bounds-only check surface). Swift traps are
`<compiler-generated>:0` even with -g. `opt` eats top-level commas →
`traps=a:b`. Trunk llc: strip `probe-stack` (AArch64), add
`-relocation-model=pic` (Linux). zsh doesn't word-split unquoted vars.
Zig 0.15/0.16 stdlib churn (allocator/args APIs) — pin before porting.

---

## 9. Status & queue

**Queued measurements**: adler32 Mac recovery (ceiling ~5%, 1 hot
proof); CryptoSwift Mac REPS=30; md5 Mac perf; C re-elimination sweep
with anchor-v2 + heavy SCEVSYM/udiv (zlib/zstd/lz4, server, static);
adler32 server (loop-carried ⇒ Linux-scalar hypothesis).
**Parked**: Zig (API churn); base64/crc32 runtime (class-d);
Julia runtime (ceiling ≈0); OpenSSL elimination run.
**Post-CGO program**: Plan C (back-edge-frame induction — unlocks
class d), Plan D (cross-BB LDEQ/frame facts), Plan E (allocation
contracts — unlocks the 3–5× ceilings; the PLDI-scale story).
