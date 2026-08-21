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
bash run_tests.sh          # MUST print PASS=19 / FAIL=7 (was 17/6 pre-FRAME-tests)
```
The 7 FAILs are heavy/ldeq/stride/frame tests under the light gate BY
DESIGN (test_frame1 flips to PASS once FRAME lands, gate becomes 20/6);
`test_heavy_scevsym_sat`, `test_heavy_scevsym_stride_sat`,
`test_frame_clobber_sat`, and `test_frame_phi_sat` must PASS
(over-tightness / silent-unsoundness tripwires). Manual soundness pair when touching the
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

### 8.1 Milestone 1 — cross-BB load equivalence (O3, the frame rule).
### SPEC REWRITTEN Aug 19 2026 after the gemm ground-truth session
### (§8.2); the original TBAA-based discharge plan was WRONG for
### Julia 1.12 and is corrected here.

FORMAL STATEMENT. Fix loads L1, L2 with the SAME pointer operand p
(one SSA value), same width w, both simple (non-atomic non-volatile),
L1 dominating L2 (DT-checked). Frame obligation F(L1,L2): on every
CFG path L1 -> L2, every memory-writing event d has
written(d) ∩ [p, p+w) = ∅. Then Mem@L2[p,p+w) = Mem@L1[p,p+w), hence
val(L2) = val(L1). The FRAME:k fact is exactly that BV equality
between the two boundary variables, asserted CONTEXT-SIDE with a
tracked label — nothing else about memory is claimed.

DISCHARGE PROCEDURE (over MemorySSA; these are C++ analysis objects
obtained via MSSA.getMemoryAccess(I) — NOT IR annotations; the
printer's "; 8 = MemoryDef(7)" lines are comments it renders):
compute obligation set O by walking the def/phi graph upward from
definingAccess(L2): MemoryDef -> enters O, continue through operand;
MemoryPhi -> recurse into EVERY arm; stop on reaching
A0 = definingAccess(L1); visited-set for termination. Every recursion
branch must bottom out at A0 — a branch reaching liveOnEntry or an
unvisitable access REFUSES the fact (all-paths coverage). MemorySSA's
structure guarantees O covers every write ordered before L2 on any
path. Then each D in O is discharged by the FIRST applicable rule:
  D1 non-writing def: fence, volatile load — Defs for ordering only,
     write no bytes. Syntactic.
  D2 AA verdict: AA.alias(MemoryLocation(L1), MemoryLocation(D)) ==
     NoAlias, querying with L1's OWN location (address, size, AATags).
     No tag transplant onto L2 is ever needed: "no def wrote L1's
     location" IS the frame premise, and L2 reads the same address —
     this sidesteps L2's missing metadata (§8.2) with no new axiom.
     Trust class: frontend metadata (same as the existing nsw/!range/
     TBAA imports), audit-labeled.
  D3 call with modeled effects: memory(none)/readonly attributes, or
     an entry in a per-runtime axiom table (§8.5; empty for gemm).
     Calls in unreachable-terminated error blocks never enter O
     (no path to L2) — automatic, no rule needed.
  D4 REFUSE. Never approximate (scevToZ3 doctrine).
Vacuity audit + SAT tripwires MANDATORY and FIRST (a wrong frame fact
is silent unsoundness): test_frame_clobber_sat.ll (intervening store
through a may-alias pointer => fact off, verdict SAT) and a
test_frame_phi_sat.ll (clobber on only ONE MemoryPhi arm => refuse).

### 8.2 Ground truth: jl_gemm_base traced end-to-end (Aug 19 2026;
### IR: logs/julia_triage/jl_gemm_base.ll, Julia 1.12.6)

* THE PAIR. %.size_ptr = gep(%0, 16) (A's row count). L1 = line-50
  load (entry block, feeds the size(A,1)==m guard, carries !tbaa !44 +
  !alias.scope !45 + !noalias !46). L2 = line-209 load, SAME %.size_ptr
  (loop region, feeds the hot icmp ult bounds check), NO metadata at
  all (multiversioned clone; L2' at line 279 is the same story).
  Footnote-10's "nothing connects them" is exactly this pair.
* MEMORYSSA SHAPE. L2 = MemoryUse(58); 58 = MemoryPhi({preheader, 8},
  {loopexit, 49}); 8 = definingAccess(L1). Entry arm: discharged by
  identity. The whole milestone reduces to ONE arm: prove the loop
  nest (def chain 49) doesn't clobber *%.size_ptr.
* TBAA IS DEAD HERE — DO NOT USE THE OLD PLAN. Julia 1.12 removed
  jtbaa_arraysize (Memory rework); the module's tag set is
  {value,tag,stack,immut,gcframe,data,const,arraybuf}. Size loads are
  tagged !44 = near-ROOT jtbaa — an ANCESTOR of the stores'
  jtbaa_arraybuf => TBAA says MayAlias. Any FRAME v1 that "checks
  arraysize vs arraybuf" proves nothing on current Julia.
* THE ACTUAL DISCHARGE: Julia's SCOPED alias metadata. One domain
  (jnoalias) with five category scopes: gcframe, stack, data, typemd,
  const. L1: !noalias !46 = {gcframe, data, const}. Every loop-carried
  MemoryDef is a buffer store (store double / <2 x double>, !tbaa
  arraybuf) with !alias.scope = {jnoalias_data} (!125/!171).
  ScopedNoAliasAA: store scopes ⊆ L1's noalias in-domain => NoAlias.
  Rule D2 fires with STOCK LLVM AA — no custom alias logic in v1.
* REMAINING DEFS on the walk: entry fence (singlethread) + one
  volatile safepoint load => rule D1. Error-path defs (gc_small_alloc,
  ijl_throw, boundserror tuple stores) all sit in unreachable-
  terminated blocks => never in O. Acceptance expectation: all 16
  anchored edges' checks consume one of the three %.size_ptr-family
  loads plus the analogous %2/%4 size fields — same treatment each.

### 8.3 Milestone 2 — allocation/count contracts (O2): a per-language
table of runtime allocator/init/copy symbols -> (which return-object
field is the length, equals which argument). Swift reality check
(§8.5): the count store IS plain IR (store <count, capacity> at
buffer+16) but lives in outlined specialized init/copy helpers, so M2
is one-level call summaries or symbol axioms, not layout divination.
Assert len-field-load == n at dominated uses, FRAME-tracked, gated by
M1's walk.

### 8.4 Milestone 3 — cross-object transfer (O4): free once M1 lands
for guard-carried equalities (gemm); via M2 for shared-allocation-
argument cases; caller summaries = out of scope for sequel v1.

### 8.5 nbody ground truth (Aug 19 2026; logs/swift_triage/nbody.ll,
### 87 trap sites) — what rung 4 ACTUALLY requires

The seven [Double] arrays are MUTABLE GLOBALS (%TSa = one BridgeObject
ptr each); checks load global -> mask bridge bits -> load count at
buffer+16. Three obligations, all receipt-verified:
* N1 (O2): only 4 swift_allocObject calls in the module and 2 are a
  print box — the arrays' alloc+count-store is OUTLINED into
  specialized helpers => M2 needs one-level summaries of those two
  helpers (returned buffer's count field == count arg).
* N2 (runtime axiom table — LOAD-BEARING for ALL Swift global-array
  code): hot path contains swift_beginAccess ×37, endAccess ×19,
  isUniquelyReferenced_nonNull_native ×19, bridgeObjectRetain/Release.
  Declared attrs are BARE nounwind (#2) / mustprogress nounwind
  willreturn (#6) — NO memory attributes => every call is an opaque
  clobber-world MemoryDef. Without trusted axioms (beginAccess/
  endAccess: runtime shadow state only; isUnique: reads refcount word
  only; retain/release: write refcount word at +8 only, never count at
  +16) ZERO frame facts survive. This supersedes the old "GC-safepoint
  mod/ref" wording (that was the Julia guess).
* N3 (the CoW wall — M1's shape is STRUCTURALLY insufficient): 19 live
  isUnique calls mean CoW slow paths exist in IR; on non-unique, a
  copy helper allocates a NEW buffer and stores a NEW BridgeObject
  into the global => the buffer pointer is not one SSA value across
  iterations, so same-address no-clobber framing cannot apply. What
  holds is an OBJECT INVARIANT P(g): count(buffer(load g)) = 5,
  preserved by every def (buffer stores: N2/D2; runtime calls: N2;
  CoW copy: contract "copy preserves count", M2-family). Preservation
  induction over defs is the part that earns the program's name — and
  it is the same preservation-across-back-edge shape as Plan C gate
  §9.4(2): budget shared machinery.

### 8.6 How experiments run (methodology; asked and settled Aug 19)

JULIA: static verdicts + measured ceilings ONLY. code_llvm dumps are
NOT reinjectable (pgcstack/safepoint/jl_* ABI; no supported path to
swap a method's IR into the JIT) — this is the documented "runtime
blocked by JIT" doctrine. jl_gemm acceptance = 0 -> nonzero UNSAT with
FRAME: in every new core, vacuous=0, valued against the measured 3.4x
ceiling. (juliac AOT / patched-Julia-pipeline = exploratory, NOT v1.)
SWIFT: the O3-sandwich (run_swift_perf.sh) IS the
analyze-then-reoptimize-then-run flow: swiftc -O -emit-ir ->
oracle-pass on trap-bearing IR -> opt -O3 -> llc -> link -> run,
byte-identical-output gate before any timing. FRAME's RUNTIME claims
land on Swift rows; Julia rows are static+ceiling... PLUS the
ORACLE-GUIDED @inbounds EXPERIMENT (proposed Aug 19, the Julia runtime
number): for every UNSAT trap, place @inbounds on EXACTLY the
corresponding source expression, run under the normal JIT, report the
speedup as proof-backed annotation-mediated recovery ("today @inbounds
is trusted; with ODeSSy it is verified"). HONESTY RULE: @inbounds is
per-expression, coarser than per-trap — annotate ONLY statements whose
EVERY check was proven; partially-proven statements stay unannotated
(or are reported separately as an upper bound). If FRAME proves all 16
gemm edges the fully-annotated kernel should land at ~the 3.4x ceiling
(--check-bounds=no is the global version of the same annotation).
Swift sha256 residual headroom for FRAME: total ceiling ~9.5%, +4.7/
+5.0 already banked via SCEVSYM => ~4.5-5% behind the w[t] count field
(M1 + one M2 contract), dose-ladder-conditional as always.

### 8.7 Implementation plan (M1 v1; steps in order, soundness first)

1. TRIPWIRES BEFORE FEATURES — DONE Aug 19 2026: tests/test_frame1.ll
   (distilled gemm shape; UNSAT once FRAME lands, EXPECTED-FAIL under
   the knobless gate today, ldeq/heavy precedent) +
   test_frame_clobber_sat.ll (may-alias store through a third pointer
   => must refuse; frame bugs RAISE elimination counts so no other
   gate can catch one) + test_frame_phi_sat.ll (clobber on one
   MemoryPhi arm only => every-arm discharge). Suite gate is now
   PASS=19/FAIL=7. The two SAT tests must stay SAT forever.
   MECHANISM CONFIRMED EMPIRICALLY the same day: on frame1 with L1's
   tags supplied as the query location, LLVM's stock walker reports
   L2 "clobbered by liveOnEntry" == L1's defining access — i.e.
   ScopedNoAliasAA discharges the scoped store and the walker recurses
   the loop MemoryPhi correctly, before any C++ exists.
   IMPLEMENTATION SHORTCUT this licenses (use in step 4):
   getClobberingMemoryAccess(MA(L2), MemoryLocation-of-L1) ==
   definingAccess(L1) is a sufficient frame check — LLVM owns the phi
   recursion, termination, and per-def AA; our D1-D4 hand walk is the
   fallback/diagnostic path (and the refusal-taxonomy logger), not the
   primary mechanism.
2. PLUMBING: Stage 1 requests MemorySSA (+ keep AAManager results)
   per function alongside DT/LI/SE. The MemorySSA WALKER CACHES ⇒
   Level-2 rule: all walker/AA queries go through the FactGate ticket
   (or run entirely in Stage 1 and ship results in the TrapJob —
   PREFERRED: keeps Stage 2 share-nothing and verdicts
   thread-invariant; a candidate-pair list + per-pair verdict is
   small, deterministic, and computed in discovery order).
3. CANDIDATE PAIRS: during discovery, for each free LOAD boundary
   value L2 in a slice, scan L2's pointer operand's other loads; keep
   pairs (L1, L2) with L1 dominating L2, same width, both simple.
4. THE WALK (§8.1): implement O-set construction + D1-D4 ladder.
   Refuse on: liveOnEntry, unvisited-arm, any D4. Log every refusal
   reason (the taxonomy of refusals is paper material).
5. FACT: assert var(L1) == var(L2) context-side, label FRAME:k,
   Audit-gated exactly like SCEVSYM (mkLabel/assertRawFact path).
6. ACCEPTANCE (§8.6): jl_gemm_base 0 -> UNSAT>0, every new core
   contains FRAME:, vacuous=0, PASS=20/FAIL=6 (frame1 flips to PASS under the frame knob), THREADS
   determinism diff test clean.
7. THEN sha256/CryptoSwift residuals (adds M2 one-level summaries +
   the N2 axiom table entries actually needed), THEN nbody (adds N3
   preservation form). Julia matmul/lz77 ride along with (6).

DIAGNOSTIC DOCTRINE (earned Aug 20 2026, use it FIRST): when a
should-prove query returns SAT FAST (sub-millisecond), the story is a
MISSING CONSTRAINT, not solver hardness — a struggling solver is slow;
instant SAT means an easy countermodel exists. Standard move: flip
`bool DebugOracle = true` in OraclePass.cpp (compile-time; threads=1),
rerun the one benchmark, read the SMT-LIB + MODEL dumps on stderr, and
look for (a) trap/guard variables that are STANDALONE free Booleans
(unmodeled opcode swallowed the condition — the freeze incident), and
(b) model values that violate facts you believed were asserted. Ten
minutes; it definitively named the blocker each time it was used.
Revert the flag after. Three sessions of this pattern (ground-truth IR
trace -> dead TBAA; per-edge fact table -> smax refusal; countermodel
dump -> opaque freeze) each redirected the plan before code was
written — diagnose read-only first, always.

STATUS Aug 20 2026 — steps 2+3+first half of 4 LANDED (commit on
heap-invariant). oracle-pass<frame> knob; harvest in TrapDiscovery
(Stage 1, walker query per candidate pair, earliest-dominating-L1,
integer simple loads only); FRAME:k asserts in TrapSolver phase 2.75
(context-side, vacuity-covered). Verified same day:
  * frame tests under <vacuity;frame>: frame1 UNSAT core
    |FRAME:0| G0 TRAP; clobber_sat + phi_sat correctly REFUSED => SAT.
  * knobless suite: PASS=19/FAIL=7 unchanged (byte-identity holds).
  * ACCEPTANCE MET: jl_gemm_base 0 -> 2/16 UNSAT under
    <vacuity;heavy;ldeq;frame;traps=bounds_error:boundserror>, cores
    |FRAME:0| |FRAME:4| G1 TRAP (frame facts composing with a
    dimension guard), vacuous=0, log byte-identical across runs.
STATUS Aug 20 2026 (later) — TWO MORE BLOCKERS FOUND AND FIXED:
* smax/umax in scevToZ3 (exactly representable, n-ary ite) + the WRAP
  GATE it requires (a max can GROW the C + s*BTC bound, so for any
  (C,s) != (0,1) require SCEV's constant max backedge count and prove
  the addition fits the width — a wrapped bound is wrong-STRONG).
  gemm SCEVSYM facts 0 -> 28.
* freeze(x) == x in Z3Encoder. THE dominant blocker: Julia's
  vectorizer multiversioning freezes its guard flags and, in 13/16
  jobs, the TRAP CONDITION itself; as an unknown opcode freeze became
  a fresh free Boolean, so those queries were trivially SAT forever.
  Soundness: freeze is the identity on non-poison operands (LangRef);
  on poison the operand is free in our encoding, so the solver can
  match freeze's choice — over-approximation intact, same caveat
  class as nsw/umin_seq. Found via the countermodel dump (doctrine
  above).
SCORE: jl_gemm_base 3 -> 14/16 UNSAT, 9 edges ELIMINATED, 2 SAT,
5 UNSAT refused by the vacuity audit (cores without TRAP: the guard
context alone is contradictory — likely genuinely-unreachable
multiversion combinations, the zstd-xxhash refusal class, possibly
sharpened by double-freeze unification). 0 UNKNOWN — no nonlinear
blowup anywhere; the "nonlinearity wall" hypothesis did NOT survive
contact (some losing queries never contained a bvmul at all).
(Environment note: test_heavy_scevsym_stride1 is SAT under heavy on
current trunk LLVM before AND after these changes — SCEV now reports
Unpredictable for that multi-exit stride shape; drift, not regression;
the committed campaign numbers predate it.)
REMAINING for full step 4: classify the 5 vacuous refusals (genuine
unreachable-version vs freeze-equality overtightening — both sound,
different reporting) and the 2 SATs; then rungs 2 (matmul/lz77) and
step 5 (the @inbounds runtime experiment, §8.6).

**Benchmark ladder, easiest -> hardest (what each needs):**
1. jl_gemm_base (Julia, 3.4x measured ceiling): M1 only — dimension
   guards already present; loop-carried defs are jnoalias_data-scoped
   buffer stores, discharged by ScopedNoAliasAA vs L1's noalias list
   (NOT TBAA — see §8.2); no on-path calls. ACCEPTANCE TEST.
2. jl matmul / julia lz77: same shape as (1).
3. Swift sha256 residual (the w[t] store bound) + CryptoSwift
   residuals: M1 + M2 (local `[UInt32](repeating:count:)` allocation
   axiom); moderate — allocation is in-function, clobber walk short.
4. Swift nbody (+410% ceiling): N1+N2+N3 per §8.5 — outlined-init
   summaries, the Swift runtime axiom table, and the CoW preservation
   invariant (M1's no-clobber shape is structurally insufficient);
   hard but bounded and now precisely specified.
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
