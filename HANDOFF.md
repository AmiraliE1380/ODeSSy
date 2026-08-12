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
   needs Plan C (back-edge-frame induction); separate line item.

**Nonlinearity note:** Julia 2-D Matrix checks are per-dimension
(linear). Flattened i*n+j layouts (Rust/Swift ports) add BV
multiplication to the query — budget-hostile; keep out of v1 claims.

**Discipline:** FRAME work must not eat September. CGO's 11 pages own
the calendar; this thread gets evenings and the post-submission window.
