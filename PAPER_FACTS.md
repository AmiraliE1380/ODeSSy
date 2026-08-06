# PAPER_FACTS — the complete statistics, contributions, and narrative record

Every number below was produced in the July 29 – Aug 6, 2026 experimental
campaign and verified against the session logs committed to this repo
(`triage_*.log`, `swift_perf_*.log`, `matrix_*.log`, `evaluation/*.csv`).
This file is the single source of truth for the CGO submission. When a paper
sentence needs a number, take it from here; when a number is updated, update
it here first.

---

## 1. Contributions (paper-ready list)

1. **Super-analysis, the concept.** We introduce super-analysis as the middle
   ground between conventional optimization (fast, heuristic, per-analysis)
   and super-optimization (search over programs): an SMT solver logically
   conjoins the facts the compiler's own lightweight analyses already
   produce, discharging proofs none of them can reach alone. Spectrum:
   `LLVM -O3 ←— ODeSSy —→ Souper/STOKE`.
2. **The existence proof.** Unsat cores from real eliminations attribute each
   proof to a *conjunction* of independent fact sources — e.g. sha256's three
   cores are `|RM:4| |SCEV:8| |LVI:11| |SCEV:12| G0 G{1,2,3} TRAP`
   (!range metadata + two SCEV facts + LazyValueInfo + programmer guards).
   Conventional pipelines cannot AND these — entailment across analyses is by
   nature an SMT problem. This is the empirical case that super-analysis is
   necessary, not just sufficient.
3. **ODeSSy, the system.** A three-stage LLVM module pass (serial discovery →
   parallel Z3 workers with private contexts → serial kill), with a
   determinism contract (verdicts and logs byte-identical for any thread
   count, via the FactGate ticket turnstile serializing LVI/SCEV queries in
   discovery order), a two-tier precision model (light = pure encoder,
   byte-identical ablation baseline; heavy = + analysis facts), per-proof
   auditing (labeled unsat cores + vacuity check), and per-query timeouts.
4. **Latency is a dial; the tool stays online.** Timeout and threads are
   orthogonal controls: threads flatten wall-clock, timeout bounds worst-case
   per query. 96% of proofs survive at 100 ms/query. ODeSSy operates as an
   online pass, an offline optimizer, or a static analyzer from the same
   binary.
5. **One mechanism, four language frontends.** The `traps=` named-callee
   hunter (behind a divergence soundness gate) extends the same pass from
   UBSan C/C++ to Swift, Rust, and Julia native checks with zero per-language
   C++.
6. **Results.** 9–12% of sanitizer traps eliminated in C/C++ (243
   attributable eliminations); binary text shrink −0.69%/−1.21%; and the
   headline: 3 hot-loop bounds checks eliminated in Swift SHA-256 yield
   +4.2–4.3% (Xeon) / +3.5–4.7% (Apple M-series) — cross-ISA replication,
   soundness-gated, from 3 of 38 checks.
7. **The residual-proof-obligation taxonomy** (three-language evidence):
   (a) symbolic trip counts — solved in this paper (SCEV-SYM);
   (b) heap/interprocedural length invariants — located precisely, shown out
   of reach of any intra-procedural memory reasoning, motivating future work;
   (c) structural anchor gaps (frontend trap-block merging, Julia loop
   multiversioning). A taxonomy with receipts is the roadmap contribution.
8. **Value-per-check is wildly non-uniform.** Native-check languages pay
   multiple-hundreds-percent for a *handful* of checks (2–5 census in Julia
   kernels) because a check in an inner loop is a side exit that blocks
   unrolling/vectorization. Counting eliminated traps (the C metric)
   undersells native languages; the right metric is what re-optimization
   unlocks after elimination.

---

## 2. The headline experiment: Swift SHA-256 (the O3 sandwich)

**Setup.** `swiftc -O -emit-ir` → `opt` middle stage → `opt default<O3>` →
`llc -O2 -relocation-model=pic` → `swiftc` link. Three configs: `base` (one
O3 round-trip), `base2x` (two round-trips; the noise-floor/attribution
control), `oracle` (`oracle-pass<heavy;ldeq;timeout=300;threads=8>` then O3).
Soundness gate: all three binaries must produce byte-identical stdout before
any timing. Workload: 1 MiB random input; iters calibrated per machine.
Median-primary over shuffled interleaved reps.

**Static result.** 38 trap sites (41 on Linux/x86 emission), 35 anchored
(92%). Heavy tier proves **3 UNSAT** — all three in the message-schedule
word-assembly loop (blocks 257/259/261): the `off+4t+1 / +2 / +3` byte
accesses, proven from the lead check (`off+4t < count`, guard G0) conjoined
with `!range` on count, SCEV bounds on the chunk index, and LVI+SCEV pinning
`t ∈ [0,16)`. The loop runs 16×(input/64) times per hash — unambiguously the
hot path. The two SAT residues per iteration: the lead check itself and the
`w[t]` store bound (a heap length — taxonomy slot b).

**Runtime result (median, oracle vs base / vs base2x):**

| machine | reps | vs base | vs base2x | noise floor (base↔base2x) |
|---|---|---|---|---|
| Apple M-series (macOS, arm64) | 10 | **+4.71%** | **+3.53%** | ~1.2% |
| Xeon server (Linux, x86-64; no_turbo, numactl socket 0) | 15 | **+4.31%** | **+4.21%** | ~0.1% (min≈median all rows) |

First smoke (REPS=3, Mac): +6.78%/+6.64% — directionally identical.
Ceiling (all 38 checks off, native matrix): ~+9.5%. **3 of 38 checks recover
roughly half the ceiling.**

**Mechanism.** No vectorization appears (0 `vector` tokens in both IRs); the
oracle IR is +178 lines vs base → **post-elimination loop unrolling**: with
the three side-exits gone, O3 unrolls the multi-exit loop it previously
could not. Paper sentence: *elimination converts a multi-exit loop into an
unrollable one; the speedup is the transform, not the branch.*

**Server contrast.** The C benchmarks showed no server speedup (wide OoO
hides cold never-taken branches), but sha256 replicates on the Xeon —
because this is a structural unlock, not branch overhead. Sentence: *check
elimination pays where checks are cold only on narrow cores; check
elimination plus re-optimization pays everywhere the checks block
transforms.*

---

## 3. C/C++ campaign (UBSan traps)

**Benchmarks:** zlib (minigzip driver), lz4 (LZ4_compress_HC driver, tmpfs
corpus), zstd, OpenSSL, PolyBench (PB_DATASET=MEDIUM for nights). Specs:
`none | signed | unsigned | both | divide | shift | bounds | implicit` +
union columns `all-sanitizers` and `ANF` (all-non-firing = union of specs
that never fire at runtime = the deployable configuration = the recovery
ceiling).

**Elimination rates (vs base2x attribution control; light tier):**

| benchmark | eliminated | notes |
|---|---|---|
| zlib | **11%** of traps (~45% of measured sanitizer overhead) | signed spec: 125→115 traps, byte-identical light-tier reference |
| zstd | **12.2%** | includes the **first bounds-spec proofs: 18/198 = 9.1%** |
| lz4 | **9.5%** | 3403→2326 traps under 300 ms timeout |
| total | **243 attributable eliminations** (~35% vs plain base — report both) | base2x isolates double-compilation effects |

**ANF runtime ceilings (checked-vs-none, server, median doctrine):**
zlib +1.5%, lz4 +3.2–3.4% (per-size ceiling up to +5.4% at 64 MB),
zstd ~+1.7–3.5% (min-vs-avg spread on a 0.2 s kernel), OpenSSL ≈ 0
(asm-dominated). Recovery (oracle vs base2x) on the Xeon: ≈ +0.14–0.64%
depending on size — cold-path checks; honest null. **Binary text shrink is
the C-side win: −0.69% (zlib), −1.21% (lz4)** (−0.75% / −1.86% on specific
binaries). DIED-paper findings generalize: unsigned/implicit specs fire at
runtime on zlib/lz4/zstd/openssl (so they are excluded from ANF).

**Runtime-recovery night (Xeon, zlib+lz4 ANF):** lz4 +0.5% (within ±0.5–1.5%
code-layout perturbation noise), zlib ≈ 0. Sentence: *on wide out-of-order
servers, never-taken cold checks are architecturally free; their cost is
code size and the transforms they block.*

---

## 4. Native language static triage (Mac, heavy tier)

| kernel | traps | anchored | pct | UNSAT | SAT | notes |
|---|---|---|---|---|---|---|
| Swift nbody | 86 | 83 | 97% | 0 | 83 | all residue = heap count invariants |
| Swift sha256 | 38 | 35 | 92% | **3** | 32 | the headline three |
| Swift lz77 | 27 | 24 | 89% | **1** | 23 | guard-chain proof |
| Rust lz77 | 3 | 3 | 100% | 0 | 3 | rustc pre-eliminates the easy checks |
| Rust matmul | 5 | 5 | 100% | 0 | 5 | Vec-len heap facts + one value-dependent overflow |
| Julia matmul | 3 | 3 | 100% | 0 | 3 | arg-array `size` fields (interprocedural) |
| Julia lz77 | 2 | 0 | 0% | 0 | 0 | multiversioned-loop shared error blocks (multi-pred) |

Anchor coverage: Swift 89–97% (frontend merges trap blocks), Rust 100% at
this scale, Julia bimodal (multiversioning). Vacuous = 0 everywhere, always.

**Native opportunity ceilings (server matrix, checked vs unchecked):**
Swift nbody **+410% (5.1×)** (89 traps in server emission); julia_gemm
**+309% (4.1×)**; Julia kernels ~4× class; Swift sha256 **+9.5%**. Rust
overflow-checks cost is modest on these kernels. Julia's check surface is
bounds-only (integers wrap by design) — the per-language spec-support
asymmetry is itself a table in the paper.

**The key insight (verified in IR):** these slowdowns come from 2–5 checks
in hot inner loops (bounds check = side exit = no unroll/vectorize; visible
as `%.lcssa` phis feeding error blocks), not from thousands of cold checks.

---

## 5. The residual-SAT taxonomy (with receipts)

**(a) Symbolic trip counts — SOLVED (SCEV-SYM).** Rotated loops put the
latch test where it dominates nothing; the header phi arrives as a free
variable with no upper bound → all-SAT. Fix: assert `phi ≤ᵤ start + BTC`
for affine `{C,+,1}` header phis (gates: constant start, C==0 or
`hasNoUnsignedWrap`, translator must accept the BTC). Two critical
generalizations discovered by hand-tests: (i) trap edges are loop exits, so
the exact BTC is `umin(trap-exit count, latch count)` — umin translated
*exactly* via `ite(a≤ᵤb,a,b)`, never approximated; (ii) on real code the
exact BTC is usually `CouldNotCompute` — fall back to the **symbolic max**
BTC, sound because the fact is an upper bound. Result: SCEVSYM facts fire on
real Swift (0 → 71 on nbody) and prove the hand-written rotated-loop test
with core `|SCEV| |SCEVSYM| G0 TRAP`.

**(b) Heap / interprocedural length invariants — LOCATED, out of scope.**
nbody's traps compare `i` against `%268/%274/%286` — `!range` loads through
*distinct pointers* (count fields of three different array objects); the
needed fact is `count == n`, established inside the runtime allocator in
another function. Rust matmul: lens arrive as opaque values (in our harness,
a `black_box` `~{memory}` asm clobber between `store 4096` and its reload —
unforgeable by any alias analysis, and an accidental-but-faithful model of
the function-boundary case). Julia matmul: `%"a::Array.size.0.copyload"` —
size fields of *argument* arrays. Three languages, three mechanisms, one
conclusion: **no intra-procedural memory reasoning discharges these; they
need allocation-contract facts (postconditions of known allocators) plus a
frame argument (no interleaving may-alias store)** — the future-work program
(and the reason a store/load SMT array theory alone is insufficient).

**(c) Structural anchor gaps.** Swift merges trap blocks (multi-pred →
skipped; 3–11% of sites). Julia 1.12 multiversions loops (preloop/postloop)
and points both versions at one shared error block. rustc merges panic
blocks under `panic=unwind`.

---

## 6. Engineering facts & latency

* **Thread sweep (server, 40 cores):** solve stage 2.73 s serial → 0.77 s at
  8 threads (3.5×) → 0.74 s at 12 (3.7×). threads=8 is standard (FactGate
  serialization + Amdahl caps returns; 20+ threads buys nothing).
* **Timeout sweep:** 52 UNSATs @3 s → 50 @100 ms–1 s (96%) → 43 @10 ms (83%)
  → cliff to 16 @1 ms. 300 ms is the standard knob (lz4 smoke: oracle stage
  1580 s untimed → 732 s at 300 ms, costing 35/1077 proofs).
* **Determinism contract:** verdicts and per-trap logs are byte-identical for
  any THREADS value (jobs assembled in discovery order; FactGate tickets).
* **Light tier is a byte-identity ablation:** every heavy/ldeq/traps feature
  is gated so default output is byte-for-byte the pre-feature pass (verified
  on zlib signed 125→115 after every change).
* **Regression gate:** PASS=16 / FAIL=5 (the 5 are heavy/ldeq tests under the
  light gate by design; `test_heavy_scevsym_sat` is the over-tightness
  tripwire and must always PASS as SAT).
* **LDEQ:** same-BB same-pointer no-clobber load unification;
  `test_ldeq_clobber_sat` is the soundness tripwire (store between loads must
  stay SAT).
* SMT query latencies on these workloads: ~0.03–10 ms per query typical.

---

## 7. Measurement doctrine

* **Median-primary.** Min is corrupted by rare fast outliers (OpenSSL showed
  a fake +5.4% on min); outlier audit flags min < 98% of median.
* **Dual baselines.** Every oracle delta reported vs `base` AND vs `base2x`
  (double round-trip). The base↔base2x gap is the measured noise floor;
  a result must exceed it and agree in sign across both comparisons.
* **Output-equivalence gate.** Oracle binaries must produce byte-identical
  output to baselines before timing (passed in every Swift run, both ISAs).
* **Server protocol.** no_turbo, numactl socket 0 + membind, tmpfs corpora,
  shuffled interleaved reps, cooldown after compile phase.
* **Code-layout noise is ±0.5–1.5%** — never claim a delta inside it.
* **Trap census doctrine:** count call sites in IR; on x86 `llvm.ubsantrap`
  lowers to **UD1** (not UD2) — objdump greps must match both; count
  `invoke` as well as `call` so shape mismatches read as "mismatch," never
  "no checks."

---

## 8. Toolchain lowering facts (each cost us a debugging round)

* Rust `panic=unwind` emits panics as `invoke` + landing pads — invisible to
  a CallInst hunter. **`-C panic=abort` is load-bearing** (also the honest
  comparison vs trap-based sanitizers). rustc 1.97 symbols:
  `..panic_bounds_check`, `..panic_const_add_overflow` (v0 mangling).
* Julia 1.12 outlines bounds failures into module-local
  `j_throw_boundserror_NNN` thunks (noreturn, call+unreachable, swiftcc).
  Julia integers wrap — no overflow-check family exists.
* Swift marks trap blocks `<compiler-generated>:0` — no source lines even
  with `-g`; hot-path attribution must be positional (loop structure in IR).
* `opt`'s pipeline parser eats top-level commas before pass-plugin parsing —
  multi-value pass parameters must use `:` (hence `traps=a:b`).
* Trunk `llc` rejects Swift's `probe-stack` attribute on AArch64
  ("Unsupported stack probing method") — stripped uniformly across configs;
  on Linux x86-64 `llc` needs `-relocation-model=pic` to link against
  Swift's runtime.
* Swift 6.3 IR parses under trunk `opt` unmodified (no version-skew
  workarounds needed); Julia `code_llvm(raw=true, dump_module=true)` modules
  also parse.

---

## 9. Sentences that should survive into the paper

* "A super-analyzer does not search for better code; it proves that the code
  the compiler already emitted contains work that provably cannot happen."
* "The unsat core `|RM| |SCEV| |LVI| |SCEV| G0 G1 TRAP` is a proof written
  jointly by four analyses that have never met: no pass in LLVM can conjoin
  them, because entailment across analyses is an SMT problem."
* "Latency is a dial, not a verdict: 96% of our proofs survive a 100 ms
  per-query budget."
* "Three of thirty-eight checks, all in one loop, recover half the benefit
  of deleting all thirty-eight: the value of a check is where it stands, not
  what it costs."
* "Elimination converts a multi-exit loop into an unrollable one; the
  speedup is the transform, not the branch."
* "On wide out-of-order servers, never-taken checks are architecturally
  free; their cost is code size and the optimizations they forbid."
* "Every surviving native check traces to one of three obligations: a
  symbolic trip count (we solve it), a heap invariant crossing a function
  boundary (we locate it), or a control-flow shape our anchor declines (we
  measure it)."
* "The compilers that insert the most checks are also the best at removing
  them: rustc leaves only the hard residue, Swift leaves the hot loops, and
  the difference is exactly the set of facts that live in the heap."

---

## 10. Status & future work

* **Done:** v3 module pass, Level-2 parallelism + determinism, heavy tier
  (RM/RA/KB/LVI/SCEV/SCEVSYM), LDEQ, traps= (Rust/Julia unlock), four
  triage harnesses, C matrix + ANF, timeout/thread sweeps, zstd audit,
  cross-ISA sha256 result.
* **Parked (post-CGO):** Plan C (back-edge-frame 1-induction, for
  data-dependent-loop residue); Plan D (cross-BB LDEQ via MemorySSA frame
  proofs); Plan E (allocation-contract + frame facts — the PLDI-scale
  program: sound online heap-invariant proofs targeting the 4–5× native
  ceilings); multi-pred anchor (disjoined predecessor conditions); Julia
  `@inbounds` licensing experiment; Surface Laptop ANF rerun; more
  byte-assembly-idiom kernels (base64, CRC32, UTF-8 validation, varint) —
  the recipe that made sha256 win.
