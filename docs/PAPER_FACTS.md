# PAPER_FACTS — statistics, contributions, and narrative record
### (v3, Aug 12 2026 — FINAL campaign freeze. Supersedes v2/Aug 10.)

Single source of truth for the CGO 2027 submission. Every number verified
against committed logs (filenames cited). Update here first.

---

## 0. MASTER TABLE — all benchmarks (final)

Prov: R = repo / faithful transpile of repo code; O = our implementation.
Ceiling = checked-vs-unchecked (`-Ounchecked` / `--check-bounds=no` / ANF).
Speedups = oracle-vs-base2x medians (vs-base where materially different).

| Benchmark | Lang | Prov | Traps | UNSAT | %elim | Ceiling | Mac Δ | Server Δ |
|---|---|---|---|---|---|---|---|---|
| zlib (both spec) | C | R | 1298 | 142 light / **146 heavy** | 11.0/11.2% | ANF +1.5% | — | ≈0 |
| zstd (both spec) | C | R | 12798¹ | **1688** | **13.2%** | ANF +1.7–3.5% | — | — |
| zstd bounds spec | C | R | 396¹ | 37 | 9.3% | | | |
| lz4 | C | R | 3403 | ~9.5% | 9.5% | ANF +3.2–5.4% | — | ≈0 |
| OpenSSL | C | R | 2088 | not run | — | ≈0 (asm) | — | — |
| CryptoSwift (lib) | Swift | **R** | 2807 | **183** | 6.5% | 2.5–3% | flat² | flat |
| sha256 | Swift | O | 38 | 5 | 13% | ~9.5% | +3.5–4.7% | **+4.7/+5.0%** |
| sha1 | Swift | O | 26 | 7 | 27% | — | **+6.4/+7.3%** | −4.5%³ |
| md5 | Swift | O | 27 | 5 | 19% | — | flat⁴ | n/a⁵ |
| adler32 (zlib port) | Swift | R | 39 | 1⁶ | 2.6% | ~5% | −1.4%³ | — |
| crc32 (zlib port) | Swift | R | 38 | 0⁷ | 0 | — | n/a | n/a |
| utf8 validator | Swift | O | 22 | 2 | 9% | ≈0 | −2%³ | **+0.00%**⁸ |
| base64 | Swift | O | 28 | 0⁷ | 0 | — | n/a | n/a |
| lz77 / nbody | Swift | O | 27 / 86 | 1 / 0⁹ | 4/0% | — / **+410%** | — | — |
| sha256 | Julia | O | 12 | 4 | 33% | ≈0 | n/a (JIT) | n/a |
| gemm (Base port, +dim guards) | Julia | R | 4 blk/16 edges | 0¹⁰ | 0 | **3.4×** (0.132→0.038 s) | n/a | n/a |
| filt (DSP.jl 1-D port) | Julia | R | 9/19 | 0⁹ | 0 | ≈0 | n/a | n/a |
| poly (in-place Horner) | Julia | O | 1¹¹ | 0 | 0 | ≈0 | n/a | n/a |
| matmul / lz77 | Julia | O | 3 / 2 | 0⁹ | 0 | gemm-class | n/a | n/a |
| matmul / lz77 | Rust | O | 5 / 3 | 0⁹ | 0 | modest | n/a | n/a |

¹ Edge-counted under anchor v2 (one job per incoming edge; can exceed
  block census). Logs: czstd_v2_0810.log, czlib_v2*_0810.log.
² Mac REPS=30 ×2: −0.78/+0.88 and −0.11/+0.90 — mixed signs, inside
  noise; the earlier REPS=10 +1.4/+2.3 did not replicate. Static row +
  ceiling stand. (cryptoswift_perf_mac30_0810.log)
³ Genuine relottery regressions/nulls: re-optimization after
  non-unlocking eliminations is two-sided (see dose ladder).
⁴ REPS=15 clean run +0.27/−0.13 overrides drift-flagged +3.4/+2.6.
⁵ Linux Swift vectorizes md5's loop; hot path already check-free there.
⁶ The 1 proof is inside the DO16 hot group (core |RM| G0 G1 G3 G7).
⁷ Taxonomy (d): non-unit stride (3, 4) — SCEV computes NO trip count.
⁸ Exact null = measurement-floor control (2 elim off hot path).
⁹ Taxonomy (b): heap length invariants.
¹⁰ THE FRAME-GAP RESULT: even with Base's real dimension guards
   restored (size equalities dominating the loops), 0 proofs — the
   guard constrains one load of size(A,1), the check consumes a
   different load; nothing connects them (obligation O3). A measured
   3.4× ceiling sits entirely behind O2/O3/O4. (triage_gemm_dims_0811)
¹¹ Julia self-eliminates the canonical 1:length(a) loop's checks; the
   1 survivor is a cold emptiness-path check.

---

## 1. The formal frontier (O1–O4) — the paper's future-work section
### Program name: **heap-invariant super-analysis** (the sequel);
### implementation fact source: **FRAME** (cores will read |FRAME:k|,
### continuing RM/KB/LVI/SCEV/SCEVSYM). First milestone: cross-BB load
### equivalence with MemorySSA enumeration + TBAA no-alias discharge +
### allocation axioms; acceptance test: jl_gemm's 3.4x ceiling.

Minimal program: `a := alloc(n); for i in 0..n−1 { if i ≥ len(a): trap }`.
VC: `0 ≤ i ≤ n−1 ∧ Inv(H) ⟹ i < len(H, a)` — len is a heap function.

* **O1 — loop invariant** `0 ≤ i ≤ n−1`: SOLVED (SCEV/SCEVSYM transfer;
  the sha256 unlock).
* **O2 — allocation contract** `len(alloc(n)) = n`: a trusted AXIOM of
  the runtime's interface (like !range/nsw today), not derived; layout
  knowledge (which field is the length), not code analysis. Missing in
  nbody (runtime-allocated globals).
* **O3 — frame condition**: no intervening store aliases the length
  field ⇒ two loads of it unify (separation-logic frame rule /
  MemorySSA). Missing in gemm-with-guards (the measured frame gap);
  missing in Rust matmul (black_box clobber, unforgeable — honest
  bound).
* **O4 — cross-object transfer** `len(A) = len(C)`: from guards (needs
  O3 to move it) or shared allocation argument (needs O2) or caller
  facts (interprocedural summaries). Missing in gemm/matmul/nbody.

Irreducibility theorem (framing): if no program fact implies a check,
NO sound tool may remove it — ODeSSy monetizes REDUNDANCY between
guards/contracts/invariants and checks; where redundancy is zero the
check is the specification. Empirical refutation of "compilers do this
themselves": Julia clears only the trivial O1-case (jl_poly), strands a
3.4× ceiling in its own stdlib GEMM; Swift strands +5% in sha256;
CryptoSwift strands 183 provable checks.

---

## 2. Contributions (unchanged from v2 except results row)

1. Super-analysis (SMT for analysis only; spectrum LLVM-O3 ← ODeSSy →
   Souper/STOKE). 2. Conjunction evidence via unsat cores (6+ shapes).
3. ODeSSy system (3-stage, FactGate determinism, tiers, audit,
   timeout). 4. Latency is a dial (96% proofs @100 ms; online use).
5. One traps= mechanism, four frontends. 6. Results: C 11–13.2% on real
repos; CryptoSwift 183 proofs output-byte-identical; sha256 +4.7–5.0%
cross-ISA; sha1 +6.4–7.3% M-series; text −0.69/−1.21%. 7. Taxonomy
(a)–(d) with receipts + the O1–O4 formalization. 8. Non-uniform check
value, both directions (dose ladder).

---

## 3. Dose-response ladder (causal centerpiece; final)

| hot eliminations | unlock? | result |
|---|---|---|
| 7 (sha1, Mac) | unroll | +6.4/+7.3% |
| 5 (sha256, server & Mac) | unroll | +4.7/+5.0% (server), +3.5–4.7 (Mac) |
| 5 (md5, Mac) | none | flat — same count, no unlock: unlock-conditional |
| 3 (sha256 pre-udiv, server) | unroll | +4.2/+4.3% |
| 2 (utf8, off hot path) | — | +0.00% exact |
| 2 (sha1 Linux) | none | −4.5% relottery |
| 1 (adler DO16) | none | −1.4% relottery |
| 183 (CryptoSwift, scattered cold) | none | flat |
Sentence: recovery requires eliminations that GATE a transform;
concentration beats count; re-optimization without an unlock is a
two-sided lottery (±5%).

---

## 4. Core shapes, findings, engineering, doctrine

(§3–§8 of v2 carry forward verbatim, plus:)
* zstd vacuous cluster EXPLAINED: 61 xxhash (+4) vacuous = guard chains
  of prior overflow-check flags jointly UNSAT for the actual constants
  ⇒ traps genuinely unreachable in defined executions; audit
  conservatively refuses (can't distinguish from encoder bug). "The
  vacuity audit refused 61 likely-sound eliminations on xxhash — the
  price of a self-distrusting tool." Doctrine: vacuous = attributed
  conservative refusals, not necessarily bugs.
* LDEQ-on-C ablation: light ≡ ldeq on every zstd TU (value was native
  reload patterns).
* Heavy-on-C first nonzero: zlib both 142→146 (+10 s SMT) — loop facts
  pay at the margin on data-dependent C.
* @inbounds-validation experiment (Julia): expert annotations assert
  heap facts; ODeSSy proves 0% of them today; measured value up to
  3.4×. Kernels: Base generic_matmatmul port (+restored dim guards),
  DSP.jl _filt_iir! 1-D specialization (@inbounds stripped, verified
  against clones), in-place Horner control.
* Provenance discipline: adler32/crc32/gemm/filt are structure-faithful
  ports verified against upstream source (zlib C, DSP.jl clone, Julia
  1.12 stdlib matmul.jl); sha/md5/utf8/base64 are spec implementations
  (block-processing loops; state in methodology).
