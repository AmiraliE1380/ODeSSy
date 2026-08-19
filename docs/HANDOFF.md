# HANDOFF — running every ODeSSy experiment (final-numbers runbook)
### Aug 12 2026. Purpose: reproduce ALL static and performance numbers
### for the CGO paper, on macOS (M-series) and Ubuntu (CloudLab Xeon).
### Median-primary doctrine: perf runs use REPS=30 (Mac) / REPS=30
### (server) unless noted; statics are deterministic (one run).

## 0. Environment

**Mac** (UNSAT-discovery lab + M-series timing): trunk LLVM build on
PATH (`opt`, `llc` from ~/Project/compiler/llvm-project/build/bin),
swiftc (Xcode 6.3+), julia via juliaup (`export
PATH="$HOME/.juliaup/bin:$PATH"`), rustc via rustup (`. ~/.cargo/env`),
python3. Repo at ~/Project/compiler/ODeSSy; benchmarks beside it
(../zlib ../zstd ../lz4 ../CryptoSwift ../DSP.jl).

**Server** (x86 timing instrument): /mydata/ODeSSy; same layout under
/mydata. Swift toolchain = swift.org Linux 6.3.3. ALWAYS before timing:
`echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo` and
wrap timed runs in `numactl --cpunodebind=0 --membind=0`. Run inside
tmux. If DNS dies: `echo "nameserver 8.8.8.8" | sudo tee
/etc/resolv.conf`.

**Build + gate (both machines):**
```
ninja -C build
bash run_tests.sh          # MUST print PASS=17 / FAIL=6
```
The 6 FAILs are heavy/ldeq/stride tests under the light gate BY DESIGN;
`test_heavy_scevsym_sat` and `test_heavy_scevsym_stride_sat` must PASS
(over-tightness tripwires). Manual soundness pair when touching the
Hunter: `opt ... -passes="oracle-pass<vacuity;traps=my_panic>"
tests/manual/traps_callee.ll` (2 sites, 1 UNSAT + 1 SAT; 0 sites
without traps=) and tests/manual/multipred.ll (1 UNSAT + 1 SAT,
partial elimination).

**Workloads (recreate per machine, not in git):**
```
mkdir -p perf_test
head -c 1048576 /dev/urandom > perf_test/sha_input.bin
python3 -c "open('perf_test/utf8_input.txt','wb').write(('汉字漢字テキストκείμενο' * 40000).encode())"
```

## 1. C/C++ (zlib, zstd, lz4)

**Static eliminations (light + heavy):**
```
SPECS="signed unsigned both" RUNS=1 SIZES="8" COOLDOWN=5 bash run_zlib_perf.sh
SPECS="signed unsigned both" RUNS=1 SIZES="8" COOLDOWN=5 TIER=heavy bash run_zlib_perf.sh
THREADS=16 bash run_zstd_audit.sh            # hours; totals block at end
```
Expected: zlib both 1298→1156 light / →1152 heavy; zstd both
1688/12798 (13.2%), vacuous cluster on xxhash is EXPLAINED-OK (see
PAPER_FACTS §4). lz4: `bash run_lz4_perf.sh` (TIMEOUT_MS=300 default).

**C runtime (server, final numbers):**
```
SPECS="none both anf" RUNS=20 SIZES="8 64 256" bash run_zlib_perf.sh
python3 make_perf_report.py                   # median-primary report
```
(min/avg on console are cosmetic; medians come from the report over the
raw runs_s column.)

## 2. Swift kernels (sha256, sha1, md5, utf8, adler32, crc32, base64, lz77, nbody)

**Static triage (Mac):**
```
bash swift_triage.sh                                          # nbody sha256 lz77
bash swift_triage.sh native_bench/md5.swift native_bench/sha1.swift \
     native_bench/utf8.swift native_bench/adler32.swift \
     native_bench/crc32.swift native_bench/base64.swift
```
Audit every UNSAT: `grep -B2 'Unsat core' logs/swift_triage/<k>.log`;
vacuous must be 0.

**Perf (the O3-sandwich harness; REPS=30 for finals). Calibrated
RUNARGS (Mac→server iters for ~1 s→~5 s single runs):**
| kernel | Mac | server |
|---|---|---|
| sha256 | 200 | 600 |
| sha1   | 500 | 900 |
| md5    | 500 | 1200 |
| adler32| 3000 | (untested; calibrate) |
| utf8   | 1500 (utf8_input.txt) | 1500 |
```
KERNEL=native_bench/sha256.swift RUNARGS="200 perf_test/sha_input.bin" REPS=30 \
  bash run_swift_perf.sh 2>&1 | tee sha256_final_mac.log
# server: same + numactl wrapper + no_turbo + tmux, RUNARGS="600 ..."
```
Gates to verify in EVERY perf log: Phase A `eliminated` matches the
static count for that platform (Linux differs: sha256=5, sha1=2,
md5=0-elim — vectorizer); Phase B `outputs byte-identical`; medians
read vs BOTH baselines against that run's base↔base2x gap.
Ceilings: `swiftc -O` vs `swiftc -Ounchecked` binaries, same RUNARGS,
3–5 runs each, compare user-time medians.

## 3. CryptoSwift (real-library row)

```
# clone once beside repo: git clone https://github.com/krzyzanowskim/CryptoSwift.git
# static (Mac or server):
swiftc -O -wmo -emit-ir $(find ../CryptoSwift/Sources/CryptoSwift -name '*.swift') \
  -o logs/cryptoswift.ll
opt -load-pass-plugin=build/OraclePass.so \
    -passes="oracle-pass<vacuity;heavy;ldeq;threads=8;timeout=300>" \
    -disable-output logs/cryptoswift.ll > logs/cryptoswift.log 2>&1
# expect 183/2807, vacuous=0, skips=0
# perf driver (zsh users: the $(find...) MUST be inline, zsh doesn't split vars):
mkdir -p /tmp/csdrv && cp native_bench/cryptoswift_main.swift /tmp/csdrv/main.swift
KERNEL=/tmp/csdrv/main.swift \
EXTRA_SRCS="$(find ../CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')" \
RUNARGS="300 perf_test/sha_input.bin" REPS=30 bash run_swift_perf.sh
# expected verdict: flat both machines (report ceiling 2.5-3% + 183 static)
```

## 4. Julia (static + ceilings only; runtime blocked by JIT — documented)

```
export PATH="$HOME/.juliaup/bin:$PATH"
bash julia_triage.sh                                          # lz77 matmul
bash julia_triage.sh native_bench/sha256.jl native_bench/jl_gemm_base.jl \
     native_bench/jl_filt_dsp.jl native_bench/jl_poly.jl
# ceilings: julia -e '<include+@time>' vs julia --check-bounds=no -e '...'
# (exact one-liners in triage_jl3 commit message / conversation log)
```
Expected: sha256.jl 4 UNSATs (SCEVSYM cores); gemm 0 (frame gap, 3.4×
ceiling); poly 1 trap (Julia self-eliminates); filt 0.
traps= list is `bounds_error:boundserror` (':' separator — opt eats
commas).

## 5. Rust (static only)

```
bash rust_triage.sh        # lz77.rs matmul.rs; panic=abort is LOAD-BEARING
```
Expected: 3/3 + 5/5 anchored, 0 UNSAT (rustc pre-eliminates; residue =
taxonomy b + value-dependent overflow).

## 6. Known platform gotchas (each cost a debugging round)

llc needs `-relocation-model=pic` (Linux) and the probe-stack strip
(macOS arm64) — both already in run_swift_perf.sh; do not remove.
RUNARGS placeholders: always substitute real integers (N/M/K incidents).
Julia 1.12 bounds symbol = j_throw_boundserror_NNN; Rust needs
`-C panic=abort`; zsh word-splitting; perf_swift_work/ is gitignored
scratch — never commit; logs/ is gitignored — copy keepers to repo root
as <name>_<date>.log. Vacuity/cores are for AUDIT runs only; perf runs
use bare oracle-pass (already encoded in the harnesses).

## 7. Final-numbers checklist per benchmark row

static UNSATs + cores audited → ceiling (3–5 runs) → Mac perf REPS=30 →
server perf REPS=30 (if Mac shows signal or row is cross-ISA-relevant) →
commit logs+CSVs same day → update PAPER_FACTS master table.

## 8. PARALLEL THREAD — heap-invariant super-analysis (the sequel; FRAME facts)

Runs alongside CGO writing, timeboxed. Goal: discharge O2/O3/O4 (see
PAPER_FACTS §1) as a new fact source FRAME (cores read |FRAME:k|).
Target: OOPSLA 2027 R1 (Oct 14 2026) or PLDI 2027 (~Nov).

**Milestone 1 — cross-BB load equivalence (O3, the frame condition):**
in FactEncoder (or a new FrameEncoder), for each free LOAD boundary
value L2, find an earlier load/guard-load L1 of the SAME pointer SSA
value; walk MemorySSA from L2's defining memory access back to L1's;
for every intervening store, disprove aliasing (TBAA metadata first —
Julia emits arraysize vs arraybuf tags, Clang emits !tbaa — then
provenance/distinct-object arguments); for intervening calls require
readnone/memory(argmem) or a runtime-function axiom; on success assert
L1 == L2 tracked as FRAME:k. Vacuity audit + SAT tripwire tests
mandatory (a wrong frame fact is silent unsoundness).

**Milestone 2 — allocation axioms (O2):** a per-language table of
runtime allocator symbols -> (which return-object field is the length,
equals which argument). Assert len-field-load == n at the allocation's
dominated uses, FRAME-tracked, gated by Milestone 1's clobber walk.

**Milestone 3 — cross-object transfer (O4):** free once M1 lands for
guard-carried equalities (gemm); via M2 for shared-allocation-argument
cases (nbody); caller summaries = out of scope for the sequel v1.

**Benchmark ladder, easiest -> hardest (what each needs):**
1. jl_gemm_base (Julia, 3.4x measured ceiling): M1 only — dimension
   guards already present; intervening stores are float TBAA vs
   arraysize TBAA; no calls in the loop. ACCEPTANCE TEST.
2. jl matmul / julia lz77: same shape as (1).
3. Swift sha256 residual (the w[t] store bound) + CryptoSwift
   residuals: M1 + M2 (local `[UInt32](repeating:count:)` allocation
   axiom); moderate — allocation is in-function, clobber walk short.
4. Swift nbody (+410% ceiling): M2 for global arrays initialized in
   module init + M1 across init->use (longer walks, GC-safepoint calls
   need mod/ref axioms); hard but bounded.
5. Rust matmul: caller-fact O4 (interprocedural) — sequel v2; the
   black_box harness variant is UNPROVABLE BY DESIGN (honest bound).
6. Taxonomy class (d) (base64/crc32 strides): NOT a FRAME problem —
   needs Plan C (back-edge induction, §9); separate line item, but
   sequenced AFTER M1 because its loop-carried frame caveat (§9.4)
   reuses M1's clobber walk.

**Nonlinearity note:** Julia 2-D Matrix checks are per-dimension
(linear). Flattened i*n+j layouts (Rust/Swift ports) add BV
multiplication to the query — budget-hostile; keep out of v1 claims.

**Discipline:** FRAME work must not eat September. CGO's 11 pages own
the calendar; this thread gets evenings and the post-submission window.

## 9. PLAN C — back-edge induction (specified Aug 19 2026; taxonomy (d))

### 9.1 Historical record vs this spec
The v1/v2 PAPER_FACTS carried only the name ("Plan C, back-edge-frame
induction / back-edge-frame 1-induction — unlocks class d") with NO
mechanism written down; the v3 freeze deleted even that (recovered in
PAPER_FACTS §5.1). This section is the first written spec. The idea in
one line: k-induction with k=1, encoded as an if-then-else over the
loop-header phi's incoming edges — a single-iteration SYMBOLIC
unrolling of the loop body as the inductive step.

### 9.2 The problem it solves (why SCEVSYM cannot)
Phase-1's slice boundary rule makes loop-header phis FREE VARIABLES.
SCEVSYM (FactEncoder.cpp trySCEVSym) repairs that arithmetically:
ask SCEV for the backedge-taken count, assert start <=u phi <=u
start + s*BTC. For stride-3/4 ult latches and variable-stride loops
SCEV returns CouldNotCompute for EVERY BTC variant (verified, all
COULDNOTCOMPUTE — PAPER_FACTS §5.1(d)), so the phi stays unbounded and
every in-loop check is trivially SAT. Witnesses: base64 (stride 3),
crc32 (stride 4), utf8 (variable 1–4). Plan C recovers the SAME fact
STRUCTURALLY: the latch/guard conditions along each back-edge path are
asserted directly on the back-edge arm — stride never enters.

### 9.3 The encoding (base + step in one query)
For a trap T inside loop L with header phi(s) %r:

    %r = phi [v_pre, PREHEADER], [v_back, LATCH]

encode reachability of T as usual, but replace "%r free" with:

    ite(entry,  ENC_pre,  ENC_step)

* entry: fresh Bool ("this iteration was reached via the preheader").
* ENC_pre (BASE CASE): %r = v_pre, plus the ordinary dominating
  constraints of the preheader path (Phase-0 guards already do this).
* ENC_step (INDUCTIVE STEP): %r = v_back', where v_back' and every
  value feeding it are a FRESH COPY of the previous iteration's body
  slice, constrained by that iteration's own path conditions:
  - the previous iteration's header phi %r_prev is a fresh free var
    (this is what makes the step an induction, not an unrolling);
  - the in-body branch conditions along whichever path produced
    v_back' (encode all latch-reaching paths, disjoined, exactly like
    normal multi-predecessor path encoding);
  - the back-edge branch condition COND = true;
  - NOT TRAP_COND_prev for every trap in the body — sound because an
    iteration that trapped never reaches the back edge (the standard
    first-failure argument: we prove the FIRST trap occurrence
    impossible).
Then push TRAP_COND for the current iteration and check(). UNSAT =>
no iteration can trap: base arm covers iteration 0, step arm covers
iteration k+1 given k completed — induction over the iteration count.

ANSWER TO "doesn't this just encode iteration 0 vs iteration 10?":
no — the step arm's fresh variables are constrained only by one
generic body traversal, so they stand for an ARBITRARY completing
iteration; UNSAT under both arms is a proof for all k simultaneously.

### 9.4 Soundness gates (each is mandatory)
1. FRESHNESS. The previous-iteration copy must not share Z3 variables
   with the current iteration. Z3Encoder memoizes on Value* — the step
   copy needs a separate encoder instance or a renaming prefix
   ("prev$"). One accidental unification = bogus proof.
2. LOOP-CARRIED HEAP (the "frame" in the historical name). If the
   bound is RELOADED each iteration (Julia arraysize loads in-loop),
   prev-n and cur-n are different load instructions; unrelated free
   vars make the step fail (soundly, uselessly). Closing it needs M1's
   clobber walk applied ACROSS the back edge. v1 RESTRICTION: only
   accept bounds that are a single SSA value defined OUTSIDE the loop
   (utf8/base64/crc32 all qualify: `let n = d.count` precedes the
   loop). Lift the restriction only after M1 lands.
3. 1-INDUCTIVENESS. Invariants needing k>=2 or an auxiliary invariant
   come back SAT; REFUSE (keep the trap), never widen. Report as
   incompleteness, not failure.
4. NESTED LOOPS: v1 handles the INNERMOST loop of the trap only; outer
   phis stay free (weaker, never wrong). Multiple latches: disjoin, or
   refuse if any latch path is unmodelable. Irreducible CFGs: refuse.
5. TRIPWIRES BEFORE FEATURES: a SAT test where the invariant is truly
   not inductive (e.g. i grows by 1 or 2 but the check is i+3 < n
   unguarded) and a SAT test with an in-loop store through an alias of
   the bound. Mirror test_heavy_scevsym_sat discipline.

### 9.5 Worked example (utf8.swift 2-byte arm, the class-(d) witness)
    var i = 0; let n = d.count          // n: SSA value, pre-loop
    while i < n {                        // rotated: latch tests i' < n
      let b0 = d[i]                      // trap1: i <u n
      ... else if b0 < 0xE0 {
        if i+1 >= n { bad += 1; break }
        let b1 = d[i+1]                  // trap2: i+1 <u n
        ...; i += 2
      } ...
    }
Target trap1, current iteration. Base arm: i = 0, loop entered =>
0 < n => i <u n. QED base. Step arm: i = i_prev + delta where delta in
{1,2,3,4} chosen by the path; every path either (a) guards i_prev +
delta - 1 < n before its last read and continues, or (b) breaks
(doesn't reach the latch, excluded from the step arm); plus back-edge
COND: i_prev + delta < n. That inequality IS trap1's condition for the
next iteration => UNSAT. Note what was never needed: a trip count.
The same argument with delta = 3 (base64) and 4 (crc32 words) is
strictly simpler (one path). Expected yields: utf8 ~14 in-loop bounds
checks (2 current proofs are guard-only), base64 and crc32's
d[i+1..3] trailing reads. crc32's table lookups stay SAT (class (b),
runtime-built arrays — that residue is FRAME/M2's, not Plan C's).

### 9.6 Implementation sketch (for the future developer; do NOT start
### before FRAME M1 — see §8 rung 6 and the sequencing note below)
* Site: TrapSolver's encode phase. After the normal encoding, if the
  trap is in loop L and its slice hit L's header phi boundary, attempt
  the step encoding instead of leaving the phi free.
* New machinery: a second backward slice STARTING from the latch's
  incoming values, bounded to L's body, emitted into the same solver
  under a "prev$" namespace; assert edge conditions for latch-reaching
  paths; assert !TRAP_COND_prev for body traps; tie prev$'s header phi
  free, tie current phi = prev$'s latch value under the ite.
* Determinism: pure IR walk, no new analysis queries => no FactGate
  interaction; label facts |BEIND:k| for cores (name distinct from
  FRAME — different fact source, different audit story).
* Budget: the query roughly doubles (two body copies). Fine at the
  300 ms default per §4's saturation curve; measure, don't assume.
* Vacuity audit applies unchanged (context-alone re-check).

### 9.7 Sequencing verdict (Aug 19 2026)
FRAME M1 FIRST (jl_gemm 3.4x is the acceptance test and the paper
lead); Plan C second, reusing M1's clobber walk to lift gate 9.4(2).
Rationale: C-first would either re-invent that walk or ship the
register-only restriction as the headline, and its witnesses
(base64/crc32/utf8) all have ~0 measured runtime ceilings — class (d)
is a COVERAGE result, FRAME owns the PERFORMANCE results (3.4x, +410%).
