# PAPER_FACTS — statistics, contributions, and narrative record
### (v4-final, Aug 18 2026 — post server-finals campaign incl. OpenSSL
### spec/tier/budget ablations. Supersedes v3/Aug 12.)

Single source of truth for the CGO 2027 submission. Every number verified
against committed logs (filenames cited). Update here first.

v4 changes vs v3: server finals campaign 0818/0818b lands — zlib runtime
finals (RUNS=20, 3 sizes), sha1 relottery REPLICATED x2, sha256 anchor
revalidated, adler32 server row (NEW POSITIVE), server ceilings measured,
server timeout sweep, OpenSSL audit run (timeout-bound; see §5). Machine
provenance now in docs/MACHINE_SPEC.md; recovery kit in docs/RESURRECTION.md.

---

## 0. MASTER TABLE — all benchmarks (final)

Prov: R = repo / faithful transpile of repo code; O = our implementation.
Ceiling = checked-vs-unchecked (`-Ounchecked` / `--check-bounds=no` / ANF).
Speedups = oracle-vs-base2x medians (vs-base where materially different).
Server = CloudLab c220g2 (see MACHINE_SPEC); Mac = M-series.

| Benchmark | Lang | Prov | Traps | UNSAT | %elim | Ceiling (Mac / server) | Mac Δ | Server Δ |
|---|---|---|---|---|---|---|---|---|
| zlib (both spec) | C | R | 1298 | 142 light / **146 heavy** | 11.0/11.2% | ANF +1.5% / **+5.0%**¹² | — | **+0.0/+0.1/−0.1%** (flat)¹² |
| zlib (anf spec) | C | R | 1385 | **157** | 11.3% | — / +5.1–5.3%¹² | — | **+0.1/+0.1/+0.0%** (flat)¹² |
| zstd (both spec) | C | R | 12798¹ | **1688** | **13.2%** | ANF +1.7–3.5% | — | static only¹³ |
| zstd bounds spec | C | R | 396¹ | 37 | 9.3% | | | |
| lz4 | C | R | 3403 | ~9.5% | 9.5% | ANF +3.2–5.4% | — | ≈0 |
| OpenSSL sha256 | C | R | 0 signed / 2225 unsigned¹⁴ | 0 @≤5s / **43 @30s** / 125 uncapped¹⁴ | 1.9% @30s¹⁴ | ≈0 (asm) | — | budget-bound¹⁴ |
| CryptoSwift (lib) | Swift | **R** | 2807 | **183** | 6.5% | 2.5–3% | flat² | flat |
| sha256 | Swift | O | 38 | 5 | 13% | ~9.5% / **9.0%**¹⁵ | +3.5–4.7% | **+4.7/+5.0%**, reval **+4.7/+5.0%**¹⁶ |
| sha1 | Swift | O | 26 | 7 (Mac) / 2 (Linux) | 27/8% | — / **4.7%**¹⁵ | **+6.4/+7.3%** | **−4.5, −4.65, −4.83%** (x3)¹⁷ |
| md5 | Swift | O | 27 | 5 | 19% | — | flat⁴ | n/a⁵ |
| adler32 (zlib port) | Swift | R | 42 | 1⁶ | 2.4% | ~5% / **11.6%**¹⁵ | −1.4%³ | **+3.7%**¹⁸ |
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
² Mac REPS=30 ×2: mixed signs inside noise; static row + ceiling stand.
  (cryptoswift_perf_mac30_0810.log)
³ Genuine relottery regressions/nulls (see dose ladder).
⁴ REPS=15 clean run overrides drift-flagged early run.
⁵ Linux Swift vectorizes md5's loop; hot path already check-free there.
⁶ The 1 proof is inside the DO16 hot group (core |RM| G0 G1 G3 G7).
⁷ Taxonomy (d): non-unit stride — SCEV computes NO trip count.
⁸ Exact null = measurement-floor control (2 elim off hot path).
⁹ Taxonomy (b): heap length invariants.
¹⁰ THE FRAME-GAP RESULT (obligation O3); 3.4× ceiling behind O2/O3/O4.
   (triage_gemm_dims_0811)
¹¹ Julia self-eliminates the canonical loop's checks; 1 cold survivor.
¹² SERVER FINALS (zlib_finals_server_0818.log, perf_zlib_report.csv;
   RUNS=20 × sizes {8,64,256} MB, shuffled interleaved, min-primary):
   oracle vs base2x FLAT at every size for both specs (142/157 elim) —
   the C eliminations are cold-path — while measured sanitizer overhead
   is +4.9–5.3% at every size (the deployable-overhead ceiling ODeSSy
   attacks). Compile cost: SMT stage 129 s (both) / 179 s (anf) per
   whole-library build ≈ 100–130 ms/trap at JOBS=5×THREADS=8. Binary:
   oracle .text SHRINKS vs base2x (−0.51% both / −1.20% anf).
¹³ zstd runtime harness does not exist (audit-only); zlib+lz4 are the C
   runtime representatives. State plainly in methodology.
¹⁴ BUDGET-BOUND, TIER-INVARIANT (openssl_audit_0818b.log,
   openssl_audit_t5000_0818.log, openssl_light_t1000_0818.log,
   openssl_unsigned_{light,heavy}_t1000_0818.log,
   openssl_signed{,_noinl}_t1000_0818.log):
   * SPEC SPLIT: the signed spec emits **0 traps** — sha256.c contains
     no clang-instrumented signed arithmetic, with or without aggressive
     inlining. Nothing to eliminate under strict UB. All 2225 traps in
     the `both` build are unsigned-wraparound checks, and wraparound IS
     the SHA-256 algorithm — all-SAT here is the spec-mismatch finding
     of §doctrine (the zlib/CRC/Adler result in pure form).
   * BUDGET, NOT TIER: at per-query budgets 0.3 s / 1 s / 5 s the result
     is 0 UNSAT, ~200 SAT, ~2020 UNKNOWN — IDENTICAL for light and
     heavy tiers (light 0/201/2024 vs heavy 0/199/2026 @1 s). UNKNOWN
     latencies are pinned at the cap (min 5000.1 / med 5000.3 /
     max 5028.7 ms at the 5 s budget): pure timeout, not early give-up.
     Raising 300 ms -> 5000 ms converted only 40 queries, all to SAT.
   * THE PROOFS EXIST: the historical run with NO per-query cap (600 s
     process wall; trap_metadata.csv, benchmark_commands.sh era) proved
     **34 UNSAT (O1) / 125 UNSAT (O3)** on the unsigned spec before the
     wall killed the process. Individual OpenSSL queries need
     seconds-to-minutes, not milliseconds.
   * CAUSE: aggressive inlining gives each trap query ~200 dominating
     overflow-guard context edges (observed in-log) — every preceding
     check's false-edge becomes context for the next.
   * FRAMING: OpenSSL is the far end of the latency dial. zlib's
     provable set saturates at 100 ms (§4); OpenSSL's does not saturate
     at 5 s. Same tool, same dial, five orders of magnitude apart —
     query hardness scales with inlined guard-chain depth.
   * RECONNECTION CONFIRMED (openssl_unsigned_light_t30000_0818.log):
     at timeout=30 s on TODAY'S IR and pass, **43 UNSAT** appear
     (253 SAT, 1929 UNKNOWN). The full budget curve on one input:
     0 @1 s -> 0 @5 s -> 43 @30 s -> 34/125 historical uncapped.
     Monotone in budget, tier-invariant — version drift eliminated as
     the explanation; per-query budget is THE variable. This is the
     paper's cleanest exhibit that the dial spans five orders of
     magnitude of query hardness on real code.
¹⁵ SERVER CEILINGS (ceilings_server_0818b.log; -O vs -Ounchecked, 5 runs,
   median): sha256 9.0% (5.020→4.570 s), sha1 4.7% (4.825→4.596),
   adler32 11.6% (4.814→4.255). Mac ceilings retained alongside.
¹⁶ ANCHOR REVALIDATION (sha256_anchor_0818b.log, REPS=30 post-reboot):
   +4.95% vs base / +4.74% vs base2x — reproduces the committed
   +4.7/+5.0% row; doubles as the RESURRECTION known-number check.
¹⁷ REPLICATED REGRESSION (sha1_relottery_rep{A,B}_0818b.log, REPS=30 ×2
   + original): −4.5 → −4.65/−4.65 → −4.82/−4.83. Three independent
   runs within 0.3 pp: on Linux/x86 the 2 non-unlocking eliminations
   produce a STABLE code-layout regression, magnitude ≈ the kernel's own
   4.7% ceiling. This is the strongest-evidenced row in the dose ladder.
¹⁸ NEW POSITIVE (adler32_server_0818b.log, REPS=30, gate passed,
   ITERS=6977 calibrated): +3.72/+3.71% from ONE elimination — the DO16
   hot-group proof⁶ — recovering 32% of the 11.6% server ceiling with
   1/42 checks removed. Diverges from Mac (−1.4%): the same elimination
   is a win on Haswell and a relottery loss on M-series. Concentration
   beats count, and the sign is microarchitecture-dependent.

---

## 1. The formal frontier (O1–O4) — unchanged from v3

(Heap-invariant super-analysis / FRAME fact source; first milestone
cross-BB load equivalence; acceptance test jl_gemm's 3.4× ceiling.
Full text as v3 §1 — no new facts this campaign.)

Irreducibility framing addendum from the 0818 campaign: zlib's flat
runtime at 11% elimination alongside its persistent +5% sanitizer
overhead is the C-side version of the same argument — the overhead
lives in hot loops whose checks are NOT redundant with any local fact;
what is provable is cold. Where redundancy is zero, the check is the
specification.

---

## 2. Contributions (v4 revision)

1. Super-analysis (SMT for analysis only; spectrum LLVM-O3 ← ODeSSy →
   Souper/STOKE).
2. Conjunction evidence via unsat cores (6+ shapes).
3. ODeSSy system (3-stage, FactGate determinism, tiers, audit, timeout).
4. Latency is a dial — now cross-platform AND two-ended: server sweep
   50/52 UNSATs (96%) @100 ms, unknown 379→0 as budget 1 ms→3 s, wall
   ≈4 s flat at threads=8 (timeout_sweep_server_0818.log); and OpenSSL
   as the far end — real code whose inlined guard-chain queries exceed
   millisecond budgets yet yield 43 proofs at 30 s and 125 uncapped —
   a monotone budget curve (0@1s/0@5s/43@30s/125@inf), tier-invariant¹⁴.
   Same tool, same dial, five orders of magnitude of query hardness.
5. One traps= mechanism, four frontends.
6. Results: C 11–13.2% elimination on real repos with runtime-neutral,
   size-shrinking binaries¹²; CryptoSwift 183 proofs output-byte-identical;
   sha256 +4.7–5.0% cross-ISA (revalidated¹⁶); adler32 +3.7% from a
   single hot-group proof¹⁸; sha1 +6.4/+7.3% M-series vs replicated
   −4.7% x86¹⁷ — the two-sided distribution measured, not asserted.
7. Taxonomy (a)–(d) with receipts + the O1–O4 formalization.
8. Non-uniform check value, both directions, dose-response evidenced.

---

## 3. Dose-response ladder (causal centerpiece; v4-final)

| hot eliminations | unlock? | result | evidence |
|---|---|---|---|
| 7 (sha1, Mac) | unroll | +6.4/+7.3% | REPS=30 |
| 5 (sha256, server & Mac) | unroll | +4.7/+5.0% server (×2 runs¹⁶), +3.5–4.7 Mac | REPS=30 ×3 total |
| 5 (md5, Mac) | none | flat — same count, no unlock | REPS=15 |
| 3 (sha256 pre-udiv, server) | unroll | +4.2/+4.3% | REPS=30 |
| **1 (adler32 DO16, server)** | **group** | **+3.7% — 32% of an 11.6% ceiling**¹⁸ | REPS=30, NEW |
| 2 (utf8, off hot path) | — | +0.00% exact | REPS=30 |
| 2 (sha1 Linux) | none | **−4.5/−4.65/−4.83% — REPLICATED ×3**¹⁷ | REPS=30 ×3 |
| 1 (adler DO16, Mac) | none | −1.4% relottery | REPS=30 |
| 183 (CryptoSwift, scattered cold) | none | flat | REPS=30 ×2 |

Sentence (v4): recovery requires eliminations that GATE a transform;
concentration beats count (one DO16 proof buys 3.7%; 183 scattered
proofs buy nothing); re-optimization without an unlock is two-sided
AND microarchitecture-dependent — the same adler32 elimination is
+3.7% on Haswell and −1.4% on M-series, and sha1's x86 penalty is a
stable −4.7%, not noise (replicated three times).

---

## 4. Timeout dial (server-final numbers)

timeout_sweep_server_0818.log / evaluation/timeout_sweep.csv
(zlib deflate unsigned O1, 457 queries, threads=8, c220g2):

| timeout | unsat | sat | unknown | wall |
|---|---|---|---|---|
| 1 ms | 15 | 63 | 379 | 3.96 s |
| 10 ms | 43 | 317 | 97 | 4.07 s |
| **100 ms** | **50** | 404 | 3 | 4.10 s |
| 3000 ms | 52 | 405 | 0 | 4.33 s |

96% of provable facts (50/52) survive a 100 ms budget; wall-clock is
FLAT (~4 s) across the entire sweep because the worker pool absorbs
the tail. Counterpoint from real code: OpenSSL's ~200-guard queries
blow any millisecond budget¹⁴ — the dial matters in both directions.

---

## 5. Core shapes, findings, engineering, doctrine

### 5.1 Residual-obligation taxonomy (a)–(d) — receipts in logs

RESTORED VERBATIM FROM v2 §4 (the v3 freeze cited "(a)–(d)" in
Contributions but dropped the definitions; §2 is unusable without
them). Recoverable at `git show 8ec5d33^:PAPER_FACTS.md`.

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
    UPDATE Aug 19 2026: mechanism now SPECIFIED — HANDOFF §9.
    One line: 1-induction encoded as an ite over the header phi's
    incoming edges (base = preheader constraints; step = fresh-variable
    copy of the previous iteration's latch-reaching paths + back-edge
    condition + not-trapped-before). Stride-oblivious: recovers the
    latch condition structurally where SCEVSYM needed a trip count.
    The historical "frame" in the name = the loop-carried-heap caveat
    (reloaded bounds need M1's clobber walk across the back edge;
    HANDOFF §9.4 gate 2) — hence sequenced after FRAME M1.

**Map onto the O1–O4 frontier (§1) and the successor program.** The
v1/v2 roadmap named three post-CGO plans; two have since been merged
and renamed, and the correspondence is worth keeping explicit because
the old letters still appear in kernel comments:

| v1/v2 plan | Today | Discharges |
|---|---|---|
| Plan C — back-edge-frame induction | still separate; NOT a FRAME problem; spec: HANDOFF §9 | taxonomy (d) |
| Plan D — cross-BB LDEQ / frame facts (MemorySSA) | heap-invariant super-analysis, **M1** | O3 |
| Plan E — allocation contracts | heap-invariant super-analysis, **M2** | O2 (and O4 via M1/M2) |

So (b) is the FRAME program (HANDOFF §8; acceptance test jl_gemm's
3.4×), while (d) is Plan C and must not be scoped into it. (a) and (c)
are closed and are reported as such.

### 5.2 Findings ledger

(v3 §4 carries forward, plus:)
* OpenSSL guard-chain finding¹⁴: aggressive inlining makes each trap
  query carry the false-edges of ALL preceding overflow checks (~200
  context guards observed). First benchmark where UNKNOWN dominates.
  Query hardness scales with inlined guard-chain depth; the timeout
  dial is the mitigation — never silent unsoundness (UNKNOWN keeps
  the trap).
* Tier ablation on OpenSSL¹⁴: light ≡ heavy (0 UNSAT both, ~same
  SAT/UNKNOWN split at 1 s). Hardness comes from guard-chain context
  depth, NOT from heavy-tier fact count. (Do NOT claim a tier
  inversion — the ablation refuted it.)
* Tier consistency in perf harnesses (methodology sentence): all Swift
  perf runs use heavy;ldeq;timeout=300 (run_swift_perf.sh default);
  zlib/lz4 C perf use light;timeout=300/default. Consistent within each
  language family. Defense: heavy on zlib buys 4 proofs (142->146) for
  +10 s SMT and zlib runtime is flat regardless, so tier cannot affect
  the C conclusions; Swift, where heavy is load-bearing (SCEVSYM),
  is heavy everywhere. Heavy-tier zlib confirmation run:
  zlib_heavy_confirm_0818.log (RUNS=10, sizes 8/64 — expected flat).
* Timeout-choice defense (methodology sentence): perf builds use a
  300 ms per-query budget; §4 shows the verdict set is 96% saturated at
  100 ms and fully saturated at 3 s on the densest workload, and the
  perf builds' per-platform elimination counts exactly match the audit
  runs' (Phase A gate) — so no elimination was lost to the budget.
* zlib compile-cost receipt¹²: ~100–130 ms/trap wall at JOBS×THREADS=40
  on 1300–1400-trap libraries; total pipeline 137–188 s vs 6 s baseline.
* Oracle binaries SHRINK vs base2x¹² while remaining runtime-neutral:
  elimination pays in code size even when cold.
* perf_test collision postmortem (0818): run_zlib_perf.sh recreates
  perf_test/ (its scratch W) — workload inputs must be (re)created
  AFTER any zlib perf run in the same session. Cost one night's Swift
  jobs; caught by the output-equivalence gate exactly as designed —
  no bad number ever entered a CSV.
* Provenance/protocol discipline: unchanged (v3).

---

## 6. Campaign log index (0818 finals)

Paths are as committed. Logs were filed out of the repo root into
`results/` on 2026-08-19: `results/static/` = elimination and audit
runs, `results/perf/` = timing, ceilings, relottery, and the timeout
dial, `results/campaigns/` = whole-campaign master transcripts.
(`logs/` is gitignored and holds only live scratch — never keepers.)

| Log | Content |
|---|---|
| results/perf/zlib_finals_server_0818.log + evaluation/perf_zlib{,_report}.csv | C runtime finals¹² |
| results/perf/timeout_sweep_server_0818.log + evaluation/timeout_sweep.csv | dial table §4 |
| results/perf/sha1_relottery_rep{A,B}_0818b.log | replication ×2¹⁷ |
| results/perf/sha256_anchor_0818b.log | anchor revalidation¹⁶ |
| results/perf/adler32_server_0818b.log (+ calib) | new positive row¹⁸ |
| results/perf/ceilings_server_0818b.log | server ceilings¹⁵ |
| results/static/openssl_audit_0818b.log (300 ms) + results/static/openssl_audit_t5000_0818.log (5 s) | budget-bound audits¹⁴ |
| results/static/openssl_signed{,_noinl}_t1000_0818.log | signed spec: 0 traps emitted¹⁴ |
| results/static/openssl_unsigned_{light,heavy}_t1000_0818.log + results/static/openssl_light_t1000_0818.log | tier ablation: light ≡ heavy¹⁴ |
| results/static/openssl_unsigned_light_t30000_0818.log | reconnection: 43 UNSAT @30 s¹⁴ |
| evaluation/trap_metadata.csv (historical) | uncapped run: 34/125 UNSAT¹⁴ |
| results/static/zlib_heavy_confirm_0818.log | TIER=heavy perf confirmation (§5) |
| results/campaigns/finals_master_0818.log / finals2_master_0818.log | campaign masters |
| results/campaigns/results_digest_0818b.txt | 0818b digest (tails of every rep) |

---

## 7. SEQUEL RESULTS — heap-invariant super-analysis (heap-invariant
## branch, Aug 19–22 2026; full narrative in HANDOFF §8/§9)

Machinery landed (all knob-gated; knobless configs byte-identical;
suite gate 20/8 with six SAT tripwires):
* FRAME (oracle-pass<frame>): cross-BB load unification — Stage-1
  MemorySSA walk against L1's own MemoryLocation; discharge on Julia
  is stock ScopedNoAliasAA over jnoalias scopes (jtbaa_arraysize is
  GONE in 1.12 — TBAA cannot do it). Cores read |FRAME:k|.
* freeze(x) == x in the encoder (identity on non-poison; dominant
  blocker — 13/16 gemm trap conditions were freeze-wrapped free
  Booleans, trivially SAT forever).
* SCEVSYM-v2: subtraction-form facts (phi − start <=u BTC;
  unconditional for step 1, symbolic starts free, v1's wrap hazard
  structurally gone), smax/umax/mul in the SCEV translator, leaf
  facts (|SCEVEQ:k|: freeze identity / phi image / SCEV equality).

**jl_gemm_base (the acceptance test): 0 → 14/16 trap edges UNSAT.**
9 audit-eliminated + 5 attributed-infeasible (guard contexts
contradictory = provably unreachable multiversion preds; the
zstd-xxhash refusal class) + 2 residue (zero-trip remainder-loop
entry checks; understood, cold). Transformation run: trap edges
17 → 5; blocks L220 (A[i,l] read) and L282 (C[i,j] write) fully
starved. Block→source mapping via inlinedAt chains, cross-checked
against each boundserror's array argument.

**THE HEADLINE — oracle-guided @inbounds (three-arm experiment,
native_bench/jl_gemm_arms.jl; results/perf/gemm_inbounds_arms_0822
.log; N=512, REPS=21 medians, rotated order, outputs bitwise
identical):**
| arm | annotation | median | speedup |
|---|---|---|---|
| 1 baseline | none | 0.0601 s | 1× |
| 2 ceiling | all 4 accesses | 0.0144 s | 4.185× |
| 3 ODeSSy-proven | A read + C write ONLY | 0.0145 s | **4.156×** |
Arm 3 recovers **99.8% of the expert-annotation ceiling with half the
accesses still checked** — the two accesses ODeSSy fully proved are
exactly the performance-critical ones. Sentence: today @inbounds is
trusted; with ODeSSy it is verified — at no measurable cost.

Ride-alongs: Swift sha256 statics 5 → 7 of 38 (smax/umax translator).
MAC PERF RERUN LANDED (results/perf/sha256v3_perf_mac_0822.log,
REPS=30, RUNARGS="200 sha_input.bin", swiftc 6.3.3): Phase A
eliminated 7 (was 5); Phase B outputs byte-identical — the freeze +
sub-form + max encodings pass the end-to-end soundness gate in a real
binary; Phase C medians base 0.4939 / base2x 0.4906 / oracle 0.4600:
**+6.86% vs base, +6.24% vs base2x** — up from the campaign's
+3.5–4.7% Mac row. The two extra proofs moved the headline Swift
number by ~+2 points. (Server rerun of the same is the natural
follow-up; the campaign row there was +4.7/+5.0.) nbody: 88 frame pairs harvested, 100%
refused on attribute-less Swift runtime calls (the N2 axiom table is
the confirmed next wall). matmul/lz77.jl: 0 UNSAT is CORRECT — no
dimension guards, checks are the spec (irreducibility). Diagnostic
doctrine earned: fast-SAT ⇒ missing constraint ⇒ read the
countermodel (DebugOracle), never guess.
