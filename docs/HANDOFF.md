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
bash scripts/run_tests.sh          # MUST print PASS=27 / FAIL=12 (20/8 pre-PHIINV tests, 17/6 pre-FRAME, 19/7 pre-SCEVSYM-v2)
```
The 8 FAILs are heavy/ldeq/stride/frame/symstart tests under the light gate BY
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
SPECS="signed unsigned both" RUNS=1 SIZES="8" COOLDOWN=5 bash scripts/run_zlib_perf.sh
SPECS="signed unsigned both" RUNS=1 SIZES="8" COOLDOWN=5 TIER=heavy bash scripts/run_zlib_perf.sh
THREADS=16 bash scripts/run_zstd_audit.sh            # hours; totals block at end
```
Expected: zlib both 1298→1156 light / →1152 heavy; zstd both
1688/12798 (13.2%), vacuous cluster on xxhash is EXPLAINED-OK (see
PAPER_FACTS §4). lz4: `bash scripts/run_lz4_perf.sh` (TIMEOUT_MS=300 default).

**C runtime (server, final numbers):**
```
SPECS="none both anf" RUNS=20 SIZES="8 64 256" bash scripts/run_zlib_perf.sh
python3 make_perf_report.py                   # median-primary report
```
(min/avg on console are cosmetic; medians come from the report over the
raw runs_s column.)

## 2. Swift kernels (sha256, sha1, md5, utf8, adler32, crc32, base64, lz77, nbody)

**Static triage (Mac):**
```
bash scripts/swift_triage.sh                                          # nbody sha256 lz77
bash scripts/swift_triage.sh native_bench/md5.swift native_bench/sha1.swift \
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
  bash scripts/run_swift_perf.sh 2>&1 | tee sha256_final_mac.log
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
RUNARGS="300 perf_test/sha_input.bin" REPS=30 bash scripts/run_swift_perf.sh
# expected verdict: flat both machines (report ceiling 2.5-3% + 183 static)
```

## 4. Julia (static + ceilings only; runtime blocked by JIT — documented)

```
export PATH="$HOME/.juliaup/bin:$PATH"
bash scripts/julia_triage.sh                                          # lz77 matmul
bash scripts/julia_triage.sh native_bench/sha256.jl native_bench/jl_gemm_base.jl \
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
bash scripts/rust_triage.sh        # lz77.rs matmul.rs; panic=abort is LOAD-BEARING
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
STATUS Aug 21 2026 — the 14/16 classified end-to-end:
* TRANSFORMATION CENSUS (opt + simplifycfg/adce, no audit): trap-edge
  count 17 -> 5; 12 branches folded; NO trap block fully dead yet.
  The vectorized bodies (vector.body*) had NO trap side exits even
  BEFORE the pass — the vectorizer already versions checks out of the
  vector loop. ODeSSy's folds clean the SCALAR versions, peels, and
  preheader guard chains (remainder iterations + small-size paths).
  Consequence for §8.6: the Julia runtime value must come from
  source-level @inbounds (JIT generates better code upfront), not from
  post-hoc IR surgery — as already doctrined.
* THE 5 VACUOUS REFUSALS ARE GENUINE, NOT A BUG. Verified concretely
  on job 12: G0 asserts fr268=true, freeze identity gives
  %31 >=u size58-clone, FRAME unifies the clone with the entry k-load,
  and G1 asserts %31 <u k — both guards dominate the trap pred, so
  the pred is dynamically INFEASIBLE (a vectorizer version-selection
  combination that cannot execute). Freeze transparency + FRAME
  equalities EXPOSED latent infeasibility that used to hide behind
  free variables. Audit refuses per doctrine (cannot distinguish from
  encoder bug) = the zstd-xxhash attributed-refusal class. Perf-style
  runs (no vacuity) fold them — established behavior.
* THE LAST 2 SATs are the KNOWN trySCEVSym constant-start gate:
  scalar-remainder loops (L133, L55.us662.us) whose induction phis are
  {%bc.resume.val,+,1} with NO nuw — symbolic start, refused by design.
  Closing them = symbolic-start SCEVSYM (needs a written wrap
  argument) or a guard/FRAME route; next code session's question.
* FREEZE COMPOSITION CAVEAT (found while writing the §8.7 soundness
  story, documented honestly): freeze(x)=x composed with the nsw
  no-wrap IMPORT is not airtight in adversarial IR — a defined
  execution can create poison via a flagged op, freeze it, and branch
  on it; the nsw fact excludes that execution from our models, so a
  trap reachable ONLY through it would be wrongly proven dead. Narrow:
  requires the trap to be reachable solely via wrapped-then-frozen
  values. gemm's frozen icmps consume add nsw(phi,-1) with phi >= 1 —
  wrap needs phi = INT_MIN, impossible in real runs here. Mitigations
  if it ever matters: conditional identity (no-wrap holds => f = x) or
  skip nsw import inside frozen slices. Trust-class note belongs in
  the paper's soundness section.
STATUS Aug 21 2026 (later) — the last-2-edges problem SIZED (it is a
milestone, not an evening): countermodels assign the version-copy phis
(value_phi20.us669.us, value_phi35) 2^63+1 — no upper bound. Closing
them needs SCEVSYM-v2:
* SUBTRACTION-FORM FACTS (the key design insight, record before it is
  lost): assert `phi - start <=u BTC` instead of `phi <=u start+BTC`.
  phi = start + k in mod-2^W arithmetic makes phi - start = k EXACTLY,
  unconditionally — no nuw needed for the UPPER bound, the C + s*BTC
  wrap hazard disappears (the Aug 20 wrap gate becomes unnecessary in
  this form), and SYMBOLIC starts (bc.resume.val) come free. Keep the
  lower bound (phi >=u start) nuw-gated as today.
* const-mul translation in scevToZ3 (exact in BV; the remainder BTCs
  contain -1 * %bc.resume.val).
* THE OPEN QUESTION that decides success: both edges still hinge on
  bounding the free leaf %bc.resume.val (the vector loop's resume
  index) relative to m — its defining arithmetic (n.vec = m - m urem 8
  shape) is OUTSIDE the slice. Candidate: assert SCEV/LVI facts on
  free LEAVES OF BTC EXPRESSIONS, not just slice boundary values.
  Without this the subtraction-form fact is mod-weak and the
  countermodel survives. Prototype on query 1 (constant-start
  phi20.us669.us) first.
RUNG 2 REALITY CHECK (same day): matmul.jl / lz77.jl under the full
current stack: 0 UNSAT — and that is CONSISTENT, not a failure: they
are our implementations WITHOUT dimension guards (taxonomy (b));
nothing relates the sizes, mismatched inputs genuinely trap, the
checks are the spec (irreducibility framing). The HANDOFF §8 ladder's
"rung 2 rides along free" was WRONG — jl_gemm_base is special because
it carries Base's real guards; it remains the @inbounds-experiment
vehicle. Do not burn time re-triaging matmul/lz77 expecting proofs.
NBODY PROBE (Aug 21, "maybe we are lucky" run): full stack
<vacuity;heavy;ldeq;frame> on logs/swift_triage/nbody.ll: 0 UNSAT /
84 SAT, and the diagnostic that matters: 88 frame candidate pairs
HARVESTED (pointer-identity works — pairs are reloads of the global
n and array metadata) and 100% REFUSED on intervening opaque calls —
the attribute-less swift_beginAccess / isUniquelyReferenced / retain /
release wall, exactly as §8.5 N2 predicted. Machinery validated; the
missing ingredient is precisely the Swift runtime axiom table (N2),
then N1 outlined-init summaries, then N3's preservation invariant.
No shortcut exists: do not re-run nbody expecting movement before N2.
STATUS Aug 22 2026 — SCEVSYM-v2 GO 1 LANDED: subtraction-form facts
(phi - start <=u s*BTC; s==1 upper bound UNCONDITIONAL — modular
subtraction cancels wrap, no nuw, no wrap gate, symbolic starts free;
s>1 keeps constant-start+nuw+s*M gates), general mul in scevToZ3
(exact ring arithmetic; a wrapped product only weakens under the
sub-form), two new tests (test_heavy_scevsym_symstart1 UNSAT-under-
heavy exercising symbolic start + mul(-1) + umax + umin in one BTC;
test_heavy_scevsym_symstart_sat tripwire). Gate now PASS=20/FAIL=8.
All regression points re-verified (5 UNSAT-under-knob tests, 6 SAT
tripwires, frame tests, sha256 stays 7, gemm stays 14/16 + 9 elim).
GO 2 QUESTION NOW SURGICALLY ISOLATED: the v2 facts FIRE on gemm's
two surviving edges (phi35 - bc.resume.val <=u BTC(...) asserted, mul
translated) but the traps survive because %bc.resume.val is a FREE
LEAF — its defining arithmetic (n.vec = m - m urem 8 shape) is outside
the slice, so the solver picks r huge and the modular bound is weak.
Go 2 = facts on BTC/start free leaves (encode the leaf's defining
arithmetic, or assert its SCEV range/expression) — everything else is
already in place.
ALSO BANKED (Aug 21-22, cross-benchmark ride-alongs): Swift sha256
static 5 -> 7 of 38 UNSAT (smax/umax translator; frame not involved —
0 candidate pairs there). Mac perf rerun of sha256 is warranted AFTER
Go 2 (run_swift_perf Phase A will now eliminate 7; the +4.7/+5.0
row may move). nbody: 0 UNSAT, 88 frame pairs harvested / 100% refused
on attribute-less runtime calls (N2 confirmed load-bearing, see probe
note above).
STATUS Aug 22 2026 (later) — GO 2 LANDED, LAST 2 EDGES STILL STAND,
AND THE COUNTERMODELS NOW NAME THE FINAL ARCHITECTURE GAP:
* Landed: processScevLeaves (FactEncoder) — scevToZ3 records every
  SCEVUnknown SSA leaf; a work-list pass (seen-set, budget 32) gives
  each leaf the full value battery PLUS one structural fact, label
  SCEVEQ: freeze identity / non-header-phi image disjunction
  (leaf == inc_1 ∨ ... — unconditionally sound) / SCEV equality
  (leaf == translated SCEV; ring semantics, exact). 20 SCEVEQ facts
  fire on gemm; all 5 SAT tripwires hold; gate 20/8; sha256 stays 7;
  symstart1 stays UNSAT.
* WHY THE 2 EDGES SURVIVE (countermodel receipts, gemm_debug3):
  the leaf chain is now CONNECTED (resume = ind.end = SCEV expr all
  consistent) but (a) SELECT leaves (%68, %16 = select(c, VF, n.mod.vf))
  have only range facts — their arm structure is lost; and (b) even a
  select-image rule cannot close them: the models pick the ZERO-TRIP
  scenario (r = ind.end = limit+1, scalar remainder loop never
  executes) which reality excludes via the MIDDLE-BLOCK BRANCH
  ("resume == limit? skip scalar loop") — PATH information that
  unconditional image disjunctions structurally cannot carry, and that
  Phase-0 guard collection misses (the middle-block branch does not
  dominate via the collected chain in the .us structure).
* GO 3 DESIGN (the correct fix, sized honestly — a session, not a
  patch): LEAF PRE-ENCODING. Before asserting SCEVSYM facts, compute
  the leaf def-closure (worklist, standard boundary rules: header
  phis/loads/calls stay boundaries), then encode the closure PRECISELY
  via Z3Encoder::encodeInstruction in RPO — selects become real ites,
  non-header phis get their edge conditions, branch-condition icmps
  encode — and only then run the fact battery. ORDERING TRAP that
  forces the pre-encoding shape: ValueMap.insert is first-wins, so any
  valueAsBV reference made BEFORE the precise encode permanently
  freezes the leaf as a free variable — leaves must be encoded before
  the first fact translation touches them.
* Fallback position if Go 3 is deferred: gemm ships as 14/16 (9
  audit-eliminated + 5 attributed-infeasible), with the last 2 named
  as vectorizer zero-trip-guard residue — an honest, well-understood
  bound.
STATUS Aug 22 2026 (evening) — STEP 5 RAN. THE SEQUEL HAS ITS
HEADLINE NUMBER:
* BLOCK -> SOURCE MAPPING (read-only, debug-info inlinedAt walk,
  cross-checked against which array each boundserror call receives):
  L82 = B[l,j] read (line 19), L160 = C[i,j] READ (line 21),
  L220 = A[i,l] read (line 21), L282 = C[i,j] WRITE (line 21).
  Fully-proven blocks: L220 (4/4 edges) and L282 (3/3). L82 and L160
  each keep one unproven edge (the zero-trip remainder residue).
* THREE-ARM EXPERIMENT (native_bench/jl_gemm_arms.jl; log
  results/perf/gemm_inbounds_arms_0822.log; N=512, REPS=21 rotated,
  identical desugared bodies differing ONLY in @inbounds placement,
  outputs bitwise identical across arms):
    arm1 baseline            0.0601 s
    arm2 all-@inbounds       0.0144 s   4.185x   (in-protocol ceiling)
    arm3 ODeSSy-proven only  0.0145 s   4.156x   = 99.8% OF THE GAP
  arm3 annotates ONLY the two proven accesses (A read + C write); the
  B read and C read STAY CHECKED. Sentence for the paper: proof-backed
  selective @inbounds on Julia stdlib GEMM recovers 99.8% of the
  expert-annotation ceiling while leaving half the accesses checked —
  the two accesses ODeSSy fully proved are exactly the
  performance-critical ones.
* Open mechanism question (footnote, not blocker): WHY arm3 matches
  arm2 with the inner-loop C-read still checked — plausibly the
  vectorizer can multiversion a load-side check but the store-side
  check and A-side exits were what blocked profitable vectorization.
  A code_llvm diff of arm2 vs arm3 would settle it; optional.
STATUS Aug 24 2026 — GO 3 LANDED. jl_gemm_base: **16/16 UNSAT, 0 SAT**
(11 eliminated + 5 audit-refused infeasible preds). THE ACCEPTANCE
TEST IS FULLY DISCHARGED; R&D CAMPAIGN CLOSED.
* Implementation: FactEncoder::preEncodeScevLeafClosure — runs FIRST
  in encodeBoundaryFacts (ValueMap first-wins ordering). Seeds = pure
  SCEV-side walk of every boundary header-phi's (BTC, start); closure
  = backward slice with the main slicer's boundary rules (header phis
  / loads / GEPs / alien calls stay free) PLUS incoming-edge branch
  conditions at non-header phis (where the middle-block guard enters);
  definitional encode via encodeInstruction in RPO; failures
  tolerated (value stays free — weaker, never wrong); cap 256, logged.
* Formal content: leaves stop being havoc and get definitional axioms
  v == [[def(v)]]; zero-trip models die by VIOLATING THE DEFINITIONS,
  no trip-count assertion anywhere; over-approximation untouched, no
  new trust class.
* Verified same day: gate 20/8; all five SAT tripwires hold; sha256
  stays 7 vacuous=0; symstart1/frame1/scevsym1/ldeq1 all UNSAT; gemm
  log byte-deterministic across runs. Hardest gemm query now 1.06 s —
  ABOVE the 300 ms perf budget (fine for audit runs at timeout=10000;
  a Julia perf run would drop that edge to UNKNOWN=kept, but Julia
  runtime goes through @inbounds anyway).
SURFACE LAPTOP 3 / WSL PLAN (third platform; decided Aug 24): main
body may claim "industrial repos show high recoveries on
weaker/everyday microarchitectures" with ONE headline number (best
repo, N%) citing Appendix F for the full per-repo table — BUT the
claim ships only after the Surface runs actually land: rerun zlib ANF
+ sha256 + sha1 there (the rows with a story), median-primary, the
base<->base2x noise floor PRINTED BESIDE every delta, fixed power
profile, interleaved reps, one methodology sentence saying all that.
Structural rule: no claim in the paper DEPENDS on the Surface; it
seasons the microarchitecture-dependence argument (check cost varies
0-12% across three microarchitectures; ODeSSy recovers where there is
anything to recover). Server = necessary, Mac = cross-ISA, Surface =
generality color.
FUTURE-WORK LEDGER (post-campaign, in value order): N2 Swift runtime
axiom table (unlocks nbody + CryptoSwift residuals; M2 one-level
summaries with it); sha256 server perf rerun (Mac moved +4.7 -> +6.9);
Plan C / back-edge induction (§9, taxonomy (d) coverage); arm2-vs-arm3
code_llvm diff footnote; trunk-drift watch (scevsym_stride1). then step 5 — the THREE-ARM @inbounds experiment (baseline /
all-@inbounds / ODeSSy-proven-@inbounds), honesty rule: arm 3
annotates only statements with EVERY emitted check discharged. Arms
1+2 (baseline + ceiling) can be measured any time; arm 3 waits for
16/16 (the 5 audit-refused edges are provably-unreachable preds and
do not block annotation).

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

## 10. OOPSLA OPPORTUNITY CAMPAIGN — per-benchmark analysis (Sep 8 2026)

Context: CGO R2 (Sep 10) judged not ready by the coauthor; candidate
retarget OOPSLA R1 (Oct 14, ~5 weeks). Question asked: which measured
ceilings can be converted into speedups by ADDING MACHINERY, per
benchmark, per architecture, with time estimates. Method: read every
per-trap log we have (Mac logs/{swift,julia}_triage/*.log; server
results/static/julia_*_server_full_0827.log, cryptoswift_static_full_*,
zstd_audit.csv), classify each SAT residue by WHY it is SAT (missing
fact vs solver timeout vs genuinely unprovable), and cost the fix.
Doctrine unchanged: fast SAT => missing constraint => read the
countermodel; UNKNOWN => solver hardness, not a fact gap.

### 10.1 Headline findings (new since the paper freeze)

F1. THE x86 JULIA GAP IS SOLVER TIMEOUT, NOT MISSING FACTS. Server
    audits (10 s cap) vs Mac, per job, identical fact counts:
    * sha256.jl: server jobs 1-8 UNKNOWN @10 s; Mac same jobs UNSAT in
      20-133 ms. Both 2/16 proven on server vs 10/16 Mac.
    * jl_filt_dsp: server jobs 7 and 9 UNKNOWN @10 s; Mac UNSAT in
      2.62 s and 1.98 s. 4/19 server vs 6/19 Mac.
    Mechanism (filt, verified in the facts): x86 vectorizes 16-wide
    (SCEVSYM terms `16*BTC((...)/u 16)`) vs Mac 8-wide (`8*BTC(...)`);
    nested umin/smax over ~5 size symbols makes the query ~4x harder,
    crossing the cap. For sha256.jl no width terms appear on either
    side; the x86 SCEV expressions are simply harder. Consequences:
    (a) the @inbounds LICENSING run is offline — run it at 60 s+, the
    300 ms budget is a pipeline constraint, not an audit constraint;
    (b) an encoding simplification for k*BTC(E /u k) nests (or Z3
    ctx-solver-simplify before check) would make these fast at
    production budgets. Estimate for (b): 3-7 days. NEEDS SERVER.

F2. MAC 60 s RERUN (Sep 8): jl_filt_dsp at timeout=60000 => STILL 6/19;
    all six UNSAT in 49 ms-2.6 s; ZERO UNKNOWN. The 13 Mac SATs are
    genuine. So on Mac, time buys nothing; on x86 it buys exactly the
    2 edges that take 2-2.6 s on Mac (=> 6/19 parity).

F3. RESTORING DSP.jl's REAL GUARDS CHANGES filt COMPLETELY. Our port
    stripped @inbounds but ALSO omitted the validation that DSP.jl's
    filt! performs before the loop (Filters/filt.jl: length(a) ==
    length(b) == sz, length(si) == sz-1, output length). New variant
    native_bench/jl_filt_dsp_guarded.jl adds:
        length(b) == silen + 1 || throw(DimensionMismatch("b"))
        length(a) == silen + 1 || throw(DimensionMismatch("a"))
        length(out) == n       || throw(DimensionMismatch("out"))
        silen >= 1             || throw(ArgumentError("si"))
    Mac audit (full tier, 10 s):
        | variant          | traps | edges | elim | vacuous-refused | SAT |
        | port as-is       |   9   |  19   |  6   |       0         | 13  |
        | guards restored  |   6   |  10   |  5   |       3         |  2  |
    Julia itself drops half the checks given the guards (19->10 edges);
    ODeSSy proves 8/10 (3 vacuous-refused = infeasible loop-version
    selections, the GEMM pattern). Edge->source map (jl_filt_dsp_guarded.ll):
        L62.us250 (1 edge)  line 17  si[1]/b[1]        UNSAT  -> licensed
        L59       (2 edges) line 16  x[i]              UNSAT x2 -> licensed
        L135      (2 edges) line 19  inner access #1   VAC + UNSAT -> licensed
        L154      (2 edges) line 19  inner access #2   VAC + SAT   -> NOT
        L175      (1 edge)  line 19  inner access #3   SAT         -> NOT
        L226      (2 edges) line 21  si[silen]/b/a     VAC + UNSAT -> licensed
    THE TWO SURVIVING SATs (line 19, b[j+1]/a[j+1] in the vectorized
    inner loop) — diagnosed from the job logs: the guards pin length(b)
    /length(a) through the guard-side loads (%.size9.0.copyload ==
    silen+1, %.size6.0.copyload == ...), but the in-loop check consumes
    a CLONED, FROZEN RELOAD (%.size63.0.copyload.us.us.us.fr) with
    stores to si's data in between, and NO Frame[...] line appears in
    either job: the FRAME harvest did not fire. Cause (v1 gate, §8.7):
    harvestFramePairs requires the IDENTICAL pointer SSA value for L1
    and L2; the unswitched/vectorized clone recomputes the size-field
    GEP, so the pointer is a different SSA value. FIX (encoding
    structuring, no new analysis): pointer equivalence by (base SSA
    value, constant offset) — or by MemoryLocation equality — instead
    of Value* identity in the L1 search. Add a SAT tripwire where the
    two GEPs have DIFFERENT offsets. Estimate 2-4 days. Expected: all
    three line-19 accesses licensed => fully-@inbounds filt => the x86
    ceiling (58.3%) becomes reachable; Mac ceiling is -1.6% (nothing
    to gain there, as measured 0829/0829q).
    HONESTY NOTE for the paper: ports must be audited against upstream
    validation code; say so. The GEMM row already uses exactly this
    framing ("real dimension guards restored").

F4. lz77.jl IS NOT "CHECKS ARE THE SPEC" — PAPER_FACTS/paper row is
    WRONG for this benchmark (matmul.jl's row is right). Details §10.2.

### 10.2 lz77.jl (Julia) — the cheapest large win

Ceilings (checked vs --check-bounds=no): x86 +326% (0827), Mac +158%
(0829q). Census: 2 trap blocks, 4 trap edges, BOTH on source line 17
(the innermost match loop):
    L35 (preds L23.preloop, L23.postloop) -> data[j + len]
    L54 (preds L38.preloop, L38.postloop) -> data[i + len]
i.e. one trap per access, each duplicated by Julia's preloop/postloop
versioning. Both accesses ARE the hot loop (`while i+len <= n &&
data[j+len] == data[i+len]`), so proving all 4 edges licenses both
accesses => the fully @inbounds kernel == the --check-bounds=no
ceiling. Nothing partial about it: 4/4 == the whole 1.6-3.3x.

Why 0/4 today (all four SAT in 3-14 ms => missing constraint, not
hardness). Guards present in every job: `i+len <= n` (icmp sgt
%33/%24, size -> false edge), `j < i` (Guard L8: %value_phi2 slt
%value_phi49), `n >= 2` (top). The bound n = length(data) is ONE SSA
load used by guard and check alike — NOT a frame problem, no stores to
data in the loop (2 stores in the module, GC frame). The upper bounds
are therefore fully available. What is missing is the LOWER bound of
the 1-based check (idx >= 1): i+len >= 1 and j+len >= 1. len is the
inner phi, stride 1, SCEV-bounded ([0,255) etc. — present). i is the
OUTER header phi with VARIABLE stride (`i += best` or `i += 1`), so
SCEV returns CouldNotCompute, i is a free variable, and the solver
picks i <= 0. j's start is `i > window ? i-window : 1` — bounded below
by 1 only if i's lower bound is known. ONE fact closes all four edges:
    i >= 2  (initial value 2; every back-edge increment is > 0)
PROPOSED MACHINERY — "PHIMONO", the monotone-phi fact (a special case
of Plan C §9 that needs no body copy):
    For header phi %p = phi [v0, preheader], [v_k, latch_k]...:
    if every back-edge incoming v_k is (add %p, d_k) [possibly through
    phis/selects of such adds] with d_k provably >= 0 (SCEV/KB/nsw or
    a dominating guard on d_k), assert  %p >=s v0  (and >=u when v0>=0).
    Soundness: 1-induction on the loop iteration count; base = v0,
    step = p + d >= p >= v0. Label |PHIMONO:k|. Refuse if any incoming
    is not an add-of-self, if d_k's sign is unknown, or if the loop is
    irreducible. Add tripwire tests: (SAT) a phi with one negative
    increment; (SAT) increment sign only path-dependent and unguarded.
    For lz77.jl: i's latch values are i+best (best >= 3 on that path,
    from the `best >= 3` branch guard) and i+1 => d >= 1 on both.
    Determinism: pure IR walk + existing SCEV/KB queries through the
    FactGate => threads-invariant.
Estimate: 3-5 days including tripwires and cores audit. Then run
native_bench arms (write jl_lz77_arms.jl on the gemm/sha256 template:
arm1 checks / arm2 @inbounds all / arm3 proven-only == arm2 if 4/4).
Runs on the Mac immediately (158% ceiling there); x86 when server is
back (326%).

### 10.3 Other benchmarks — residue class, machinery, estimate

nbody (Swift; x86 +411% / Mac +410%; 0/86): unchanged from §8.5: N1
  (one-level alloc-helper summaries), N2 (trusted mod/ref axiom table
  for swift_beginAccess/endAccess/isUniquelyReferenced/retain/release
  — these calls carry NO memory attributes, so today they are
  clobber-world defs and 88/88 frame pairs are refused), N3 (CoW:
  buffer pointer is not one SSA value; needs an object invariant
  count(buffer(load g)) == 5 preserved by every def — induction over
  defs, shared shape with Plan C's back-edge step). 4-8 weeks; N3 is
  research risk. Payoff is the largest number in the study and is a
  REAL Swift runtime via the sandwich (no annotation needed). Not a
  5-week item; a paper on its own.

base64 (Swift; x86 +56.8%, Mac unmeasured — measure it, ceilings_mac
  protocol): 0/28. Two residue classes per iteration: 3 data[i+k]
  reads behind stride-3 `i += 3` (class (d): SCEV CouldNotCompute) and
  4 tbl[x & 63] lookups. NEW: tbl is a `let` GLOBAL (%TSa @"$s6base643tbl...");
  its count is a PLAIN header load (load ptr @tbl; gep +16; load i64) —
  only 2 swift_beginAccess in the module and both are on `final`, so
  the N2 wall does NOT apply here. The index is KnownBits-provably in
  [0,63]; what is missing is the fact tbl.count == 64 (or >= 64).
  Machinery: Plan C for the data reads (§9; 1.5-2 wk, shared with
  utf8/adler32) + an M2 contract for LITERAL-INITIALIZED IMMUTABLE
  GLOBAL ARRAYS: the initializer Array("...64 chars...".utf8) runs in
  main; the literal's byte length is a compile-time constant; a
  one-level summary of the Array<UInt8>(String.UTF8View) init (count
  == source utf8 count) or constant-evaluating the literal length gives
  count == 64. 2-3 weeks incl. soundness argument (immutability of a
  `let` global after init must be argued: no stores to @tbl after main's
  init; Swift guarantees it, we must check it in IR). Plan C alone
  removes 3/7 checks per iteration — the gather-style lookups likely
  still block vectorization, so partial dose may buy little; the
  56.8% needs both halves.

adler32 (Swift; x86 11.6% / 32% recovered; Mac 8.9%, -1.5% relottery):
  1/42 proven (the DO16 group proof). Mac log: 36 SAT jobs with
  cumulative facts 2->90 (the guard chain grows across the 16 unrolled
  reads) — the residue is the other buf[i+k] reads of the DO16 group;
  i is carried across `while len >= NMAX { repeat {16 reads; i += 16}
  while n > 0 }` so SCEV cannot bound it => class (d)/induction.
  Machinery: Plan C proper (§9), 1-induction on the repeat loop.
  Shared 1.5-2 wk. Payoff: up to the remaining ~8 pts on x86; may flip
  Mac's -1.5% (lottery, no promise).

utf8 (Swift; x86 7.5%, Mac none): 2/22, both guard-only. §9.5's worked
  class-(d) example, variable stride 1-4. Plan C; x86-only payoff.

CryptoSwift SHA2.process32 (Swift lib; x86 10.4% honest, Mac ~0):
  0/23 in the hot compression function (cryptoswift_static_full_t10000
  _0826.log). Contexts are TINY (2 boundary values: an array count in
  [0, 2^63) and a nonneg index; SAT in 0.45 ms): the checked array is a
  PARAMETER (currentHash / the schedule buffer allocated in the
  caller) — class (b) O4, caller contract. Needs interprocedural
  allocation-count summaries flowing across the call: new machinery
  class, 3-4 weeks, x86-only payoff, dose-location risk stays.

zstd decompression (C, signed spec; x86 +9.0% overhead): the
  decompress TUs carry only ~14 signed traps (zstd_audit.csv:
  huf_decompress 5 traps/1 UNSAT, zstd_decompress_block 6/2,
  fse_decompress 2, entropy_common 6/2, zstd_decompress 1) yet cost 9%
  => a handful of extremely hot bit-reader checks. No per-trap signed
  logs are committed (server-local logs/compilations/zstd.signed.*).
  Step 1 is attribution (perf annotate on the sanitized build) — 3-5
  days on the server before any estimate; class (c) value-dependent
  bit-count arithmetic is plausible and would be irreducible.

sha1 / md5 (Swift; x86 4.7% / 6.0%): Linux proves 2/7 and 1/5 vs Mac
  7 and 5. Mac UNSATs take 5-30 ms, so the Mac side is not near any
  cap; the x86 per-trap logs were never committed (logs/tri3 on the
  server), so the split is undiagnosed — HANDOFF §8.6 attributes it to
  Linux code-generation shape. 1-2 days of diagnosis once the server is
  back; low ceilings, low priority.

sha256.jl (Julia; x86 9.5%, Mac -7.9% = no ceiling): 2/16 x86 vs 10/16
  Mac — F1 (timeout). Rides on the F1 fix; then the Mac arms mapping
  (jl_sha256_arms.jl header) applies on x86: 6/12 sites licensed.

matmul.jl (Julia; x86 14.4% / Mac 1.7%): 0/3, GENUINELY irreducible as
  written — no dimension guards, length(a) unrelated to n inside the
  function (the paper's "checks are the spec" is correct HERE). Only
  caller facts (O4) or restoring Base's guards to the source would
  change it. Skip.

crc32 (Swift; x86 4.6%): (d) stride-4 data reads + RUNTIME-BUILT
  tables behind swift_beginAccess x11 / isUniquelyReferenced x5 => the
  nbody wall for the table half. Skip. Swift lz77 (3.3%, 2/28), Julia
  poly (0%), md5/utf8 on Mac (no ceiling): skip.

### 10.4 Paper corrections owed by this analysis
* tab:frontier row "lz77 | Julia | 0 | x86 | 326% | checks are the
  spec" is FALSE; correct residue: "lower bound of a variable-stride
  outer phi (inductive fact missing)". Same row for matmul.jl stays.
* §7 ride-along paragraph and the Julia filt rows should note that the
  port omits DSP.jl's validation guards; with them restored the picture
  is 8/10 (F3). Decide whether the paper's filt numbers stay as-is
  (faithful to the port) or move to the guarded variant (faithful to
  the library) — the GEMM precedent is the latter.

### 10.5 Recommended 5-week plan (if OOPSLA R1 Oct 14)
Week 1: PHIMONO fact (§10.2) -> lz77.jl 4/4 -> jl_lz77_arms.jl on Mac
        (158%). Restore server access in parallel (HANDOFF §0 setup,
        ~1-2 h; any c220g2 node reproduces the numbers).
Week 2: filt reload-pointer-equivalence fix (F3) + licensing runs at
        60 s on x86 (F1) -> filt arms on x86 (58.3%) and lz77.jl x86
        (326%); sha256.jl x86 6/12 for free.
Weeks 3-4: Plan C proper (§9) -> adler32 / utf8 / base64 data half.
        Measure base64 Mac ceiling on day 1 of week 3.
Week 5: writing; base64 literal-array contract ONLY if weeks 3-4 landed
        early. nbody stays the sequel.
Realistic expectation: two new benchmarks above 10% (lz77.jl on both
ISAs, filt on x86) with high confidence; adler32/base64 medium.
Calibration: FRAME M1 (0->16/16) took ~5 intensive days once the
diagnosis was right; every "week" above contains one new soundness
argument, not just code.

### 10.6 Artifacts from this session
* native_bench/jl_filt_dsp_guarded.jl (F3 variant; committed Sep 8).
* Mac 60 s filt audit: logs/julia_triage/jl_filt_dsp.log (local, gitignored) — 6/19, 0 UNKNOWN.
* Guarded filt audit: logs/julia_triage/jl_filt_dsp_guarded.{ll,log} (local).

### 10.7 lz77.jl four-arm @inbounds experiment (Mac, Sep 8 2026)
Script native_bench/jl_lz77_arms.jl; log results/perf/jl_lz77_arms_mac_0908.log.
64 KiB LCG corpus, window 1024, REPS=21 rotated, medians; all four arms
bitwise-identical output (matches=8). A = data[j+len], B = data[i+len]
(the two inner-loop accesses, line 17).
    | arm | annotation        | median s | speedup vs arm 2 |
    |  1  | both @inbounds    | 0.0342   | 2.58x (the ceiling; --check-bounds=no gave 1.58-2.6x on Mac earlier runs) |
    |  2  | neither (baseline)| 0.0883   | 1.00x |
    |  3  | A only            | 0.0379   | 2.33x |
    |  4  | B only            | 0.0593   | 1.49x |
Reads: the two checks are NOT equal in value. Removing A alone
recovers ~90% of the ceiling (2.33x of 2.58x); removing B alone
recovers ~37% (1.49x). Interpretation: A's check is the one whose
side exit blocks the compiler's transformation of the inner
comparison loop (j+len is the "moving" pointer of the match scan;
its check sits on the critical path), while B's index i+len is
already guarded by the loop condition `i+len <= n` immediately
before it, so its check is cheaper/better-predicted. Consequence for
licensing: even a PARTIAL proof (A's 2 edges only) is worth 2.3x;
4/4 gives 2.6x. The PHIMONO fact (§10.2) supplies the missing lower
bound for BOTH, so 4/4 is the expected outcome. x86 arms pending
server access (x86 ceiling 3.26x).

### 10.8 Session 1.1 — lz77.jl countermodels (Sep 9 2026; DebugOracle, threads=1, full tier)
Four SAT models dumped (scratch lz77_debug.log). Key assignments:
  job1/2 (L35, data[j+len]):  i=%value_phi49 = 0x0008000000000000 / 0x0800006f00000006,
        j=%value_phi346 = 0xa000800000000008 / 0xc000000000000006 (NEGATIVE as i64),
        n = 0x400400000000000a / 0x4000000002000000 (astronomical).
  job3/4 (L54, data[i+len]):  i = 0x7ffffffffffffe08 / 0x7fffffffffffffff (near INT64_MAX),
        len ~ 0x1f8/0x130, n = 0x6d96a3f58da53c06 / 0x4000000000000001.
Reading:
 * A-edges (data[j+len]) fail on the LOWER bound: i is free, so start =
   i-window can be anything, j goes negative, j+len < 1. A lower bound
   i >= 2 (=> start >= 1 => j >= 1) closes them. PHIMONO as specified in
   §10.2 suffices for these two edges (= arm 3 of §10.7, 2.33x).
 * B-edges (data[i+len]) fail differently: i ~ INT64_MAX so i+len WRAPS
   (signed) and the guard `i+len <= n` holds vacuously while the 1-based
   index is out of range. Needs an UPPER bound on i (i <= n), which is
   the rotated outer loop's latch condition — not dominating the inner
   loops, hence absent from the guard set.
 * Both are ONE missing invariant on the outer header phi: 2 <= i <= n.
   Base: preheader (i=2, top guard n>=2). Step: i' in {i+best, i+1},
   back edge taken only if i' <= n (latch), increments > 0. This is
   Plan C's 1-induction restricted to the header phi's own interval
   (no body copy): "PHIINV" = PHIMONO (lower, from monotone increments)
   + latch-implied upper bound (the back-edge condition, instantiated
   on the phi's incoming value, holds for the phi at the top of every
   non-first iteration). Spec §10.2 upgraded accordingly; estimate
   unchanged (3-5 days), tripwires must include a latch condition that
   does NOT imply a bound on the phi (e.g. tests an unrelated value).
Hypothesis check: "solver picks i <= 0" was HALF right (it picks j<1 via
i unbounded below, and i near INT64_MAX for the other pair). Doctrine
vindicated — coding the lower-bound-only fact would have shipped 2/4.

### 10.9 Session 1.2 — PHIINV specification (Sep 9 2026)

NAME. PHIINV: header-phi interval invariant by 1-induction. Fact source
(heavy tier), label |PHIINV:k| (split labels |PHIINV-lo:k| / |PHIINV-hi:k|
so cores attribute which half did the work). NOT benchmark-specific:
it is a generic rule over loop-header phis; lz77.jl is the acceptance
test, exactly as GEMM was for FRAME.

SETTING. Loop L (natural, reducible; refuse otherwise), header H, one
preheader edge, one or more latch edges. Header phi
    p = phi [v0, preheader], [v1, latch1], ..., [vm, latchm]
p is a slice BOUNDARY today (free variable). PHIINV asserts, when its
side conditions are discharged, one or both of:
    (LO)  p >=s v0                     [and p >=u v0 if v0 >=s 0 is known]
    (HI)  C[p / (something)]  -- see below; concretely p <=s B for a
          loop-invariant bound B.

RULE LO (monotone lower bound).
  Premise: every latch value vk is expressible as vk = p + dk where the
  expression is followed through phis/selects/casts of matching width
  (depth <= 4; each leaf must be add(p, dk) or p itself), and each dk
  satisfies dk >=s 0 by one of: constant; SCEV range; KnownBits sign
  bit clear; `nuw` add of non-negatives; or a branch condition on the
  path from H to latchk that implies dk >= 0 (dominance of the edge
  over latchk).
  Conclusion: p >=s v0 at H on every iteration.
  Proof (1-induction on the iteration count): iteration 0: p = v0.
  Iteration t+1 entered via latchk: p = vk = p_t + dk >= p_t >= v0.
  Signed overflow: an add that could wrap past INT_MAX would break
  monotonicity; require dk's range to satisfy v0 + sum-of-increments
  not wrapping OR restrict to adds carrying `nsw` (LLVM: wrapping is
  poison, and a poison p feeding a branched-on check is UB, so defined
  executions reaching the trap have no wrap) — the same trust class as
  the existing nsw-as-free-fact rule in Z3Encoder. v1: require nsw or
  a proven upper bound (HI) on p.

RULE HI (latch-implied upper bound).
  Premise: latchk's terminator is `br (cmp vk, B)` where the back-edge
  arm is taken iff cmp holds (or the negation — orient by which
  successor is H), B is loop-invariant (defined outside L or a load
  that FRAME/M1 proves stable — v1: defined outside L only), and cmp
  is one of sle/slt/ule/ult (or the mirror with B on the left).
  Conclusion: for every iteration t >= 1, p_t = vk satisfies cmp(p_t,B)
  — i.e. the latch condition instantiated on the phi holds at the top
  of every NON-FIRST iteration. For iteration 0 we need cmp(v0, B)
  separately: take it from a dominating preheader guard if present
  (lz77.jl: top guard n >= 2 with v0 = 2), else emit the fact as
       entry_first  OR  cmp(p, B)
  with entry_first a fresh Bool — sound and still useful when the
  first iteration is separately constrained. v1: require the preheader
  guard (simplest, exact for lz77.jl); the disjunctive form is v2.
  Proof: p_t for t>=1 is by definition the value vk that was tested
  at latchk on iteration t-1, and the back edge was taken, so cmp held.
  Multiple latches: conjoin per-latch conclusions only if EVERY latch
  yields the same bound B under the same cmp; otherwise take the
  weakest common bound or refuse.

WHAT PHIINV IS NOT. Not Plan C: no body copy, no !TRAP_prev, no fresh
previous-iteration variables. It only states the phi's own interval.
It cannot prove facts about values COMPUTED from p inside the body
beyond what the interval implies (that is Plan C's job).

REFUSALS (each mandatory). Irreducible loop; phi with an incoming edge
that is neither preheader nor latch of L; any latch value not of the
add-of-self form (LO); latch terminator not a conditional branch on a
simple compare with an invariant bound (HI); B not loop-invariant;
width mismatch; cmp not in the accepted set.

SOUNDNESS TRIPWIRES (SAT forever), written BEFORE the encoder change:
  T1 phimono_neg_sat: one latch increments by -1 => no LO fact.
  T2 phimono_freeinc_sat: increment d is a free value with no
     sign fact => no LO fact.
  T3 phihi_unrelated_sat: latch condition tests a value NOT equal to
     the phi's incoming value (e.g. cmp on a load) => no HI fact.
  T4 phihi_nofirst_sat: v1 requires the preheader guard; a loop with
     v0 = 10 but no guard and bound n free must stay SAT for a check
     that needs p <= n on the first iteration.
  Positive: phiinv1.ll — the lz77 skeleton (i=2; i += (c?3:1);
     latch i <= n; guard n >= 2; check needs 1 <= i <= n) => UNSAT.
  Gate moves to PASS=21 / FAIL=12 (4 new SATs + 1 new UNSAT).

DETERMINISM. Pure IR walk + SCEV/KB queries through the FactGate (same
as SCEVSYM). No new analysis.

WHERE. FactEncoder.cpp: tryPhiInv(PHINode*, Loop*) called from the
boundary-fact loop for loop-header phis, after trySCEVSym (both may
fire; cores tell which mattered).

ACCEPTANCE. lz77.jl 4/4 (LO closes L35 x2; HI closes L54 x2), vacuous 0,
cores contain |PHIINV-lo| resp. |PHIINV-hi|; sweep_native monotone;
threads=1 vs 8 diff empty; jl_lz77_arms arm "proven-only" == arm 1.

### 10.10 Session 1.3 — PHIINV tripwires written, baseline taken (Sep 9 2026)
Five tests added to tests/ (all share one skeleton: i=2; i += select(c,3,1)
[nsw]; latch inc <= n; check (i-1) <u n; guard n >= 2 unless noted):
  test_heavy_phiinv1.ll               positive; UNSAT once PHIINV lands
  test_heavy_phiinv_neg_sat.ll        T1: one increment is -1 (LO must refuse)
  test_heavy_phiinv_freeinc_sat.ll    T2: increment is an unconstrained argument
  test_heavy_phiinv_hi_unrelated_sat.ll T3: latch compares a LOAD, not %inc (HI must refuse)
  test_heavy_phiinv_nofirst_sat.ll    T4: no preheader guard (first iteration unbounded)
Suite gate (light, knobless): PASS=24 / FAIL=9 — the 4 SAT tests pass
trivially, phiinv1 is EXPECTED-FAIL under light like all heavy tests.
FULL-tier baseline BEFORE the encoder change: all five SAT, vacuous 0
(positive test confirms the machinery is genuinely absent today; the
tripwires' SAT is the floor they must hold forever).
Acceptance after Session 1.4: phiinv1 -> UNSAT under heavy/full with
|PHIINV-lo| AND |PHIINV-hi| in the core; T1-T4 still SAT; suite still
PASS=24/FAIL=9 (light is unaffected by a heavy-tier fact source).

### 10.11 Session 1.4 — PHIINV implemented; lz77.jl blocked on a REAL soundness point (Sep 9 2026)
Landed: FactEncoder::tryPhiInv (HI + LO as specified in §10.9; base block =
preheader OR unique out-of-loop predecessor — a dedicated preheader is not
required, and the synthetic test's guard block IS the predecessor).
Acceptance: test_heavy_phiinv1 UNSAT, core |PHIINV-hi| |PHIINV-lo| G0 TRAP;
T1-T4 SAT; light gate 24/9 unchanged; GEMM 16/16 unchanged (PHIINV fires 4x
there harmlessly); Swift sha256 Mac 7 unchanged; threads=1 vs 8 identical.

lz77.jl RESULT: still 0/4. HI fires on the outer phi exactly as designed
(`i == 2 || i <=s n`) and LO fires on j and len — but LO REFUSES on i,
because Julia emits the outer increment WITHOUT nsw:
    %value_phi27.v = select i1 %22, i64 %value_phi4.lcssa, i64 1
    %value_phi27   = add i64 %value_phi27.v, %value_phi49      ; no nsw
and the refusal is CORRECT in IR semantics. Argument: with wrapping add,
p' = p + d can pass INT64_MAX and become negative; the latch `p' <=s n`
then HOLDS (negative <= n), the loop continues with i < 2, `start`
becomes 1, and the very next iteration's data[i+len] index is negative
=> the bounds trap FIRES. So in the abstract semantics the check is
reachable for n >= 2^63 - 254 (a ~9 EiB array; needs ~2^55 iterations).
Both A- and B-edges depend on i >= 2 (with HI alone the solver simply
picks i very negative), so the entire lz77.jl result hinges on this.
Julia's own @inbounds (and every human) assumes such an array cannot
exist. Options for the user to decide (recorded, not chosen):
  (a) Trust-class axiom "array length < 2^63 - 2^k" for Julia size loads
      (a memory-bound fact the IR does not carry), as an explicit knob
      (`lenbound`) with the same documentation posture as nsw's poison
      caveat. Buys lz77.jl 4/4; must be stated in the paper.
  (b) Prove no-wrap from a bound on d AND on n: d <= 255 is derivable
      (len < 255 break), so wrap needs n >= INT64_MAX - 254; without a
      range fact on n this is exactly (a) again.
  (c) Accept the refusal as a finding: "lz77.jl's checks guard a wrap
      that only a 9-exabyte array could trigger — the check IS the spec
      at the IR level; the programmer's @inbounds is an extra-semantic
      assumption." Zero speedup, honest row.
  (d) Overflow-checked increments (Swift: sadd.with.overflow + trap)
      DO license LO soundly by the first-failure argument (a wrapping
      execution traps at the overflow check first); add that recognizer
      for Swift kernels (adler32 `i += 16`) — independent of the Julia
      decision.

### 10.12 Session 1.5 — lz77.jl PROVEN 4/4 under sanity bounds; multi-versioning recovers 100% of the ceiling (Sep 9 2026)

ENCODER CHANGES (FactEncoder.cpp, all committed):
 * LO-WRAP: for increments WITHOUT nsw, LO is emitted as an implication
     (B <=s INT_MAX - dmax  &&  v0 <=s B)  ->  p >=s v0
   where B is HI's latch bound and dmax is a UNIVERSAL signed max of every
   increment arm (constants / SCEV signed ranges, through select and
   non-header phis, depth <= 4). Sound: under HI (p <=s B) and the
   antecedent, p + d cannot pass INT_MAX, so the 1-induction goes through
   without nsw. Harmless unless the context proves the antecedent (a size
   guard, or a multi-versioning condition). Synthetic check: a copy of the
   positive test with `add` (no nsw) + guard n <= 2^62 is UNSAT with core
   |PHIINV-hi| |PHIINV-lo|; without the guard it stays SAT.
 * nonNegOf(): non-negativity through select / phi arms via SCEV.
 * Go 3 seeds now include each boundary header phi's BASE value (the
   preheader incoming), so PHIINV's v0 (e.g. the `start` phi) is encoded
   by definition instead of being frozen as a free variable (first-wins
   ValueMap). Without this, j >= start was anchored to a free `start`.
 * Known gap (not needed here): the increment recognizer does not look
   through llvm.smax/smin/umax/umin intrinsics (lz77's `best` chain has
   an smax), so LO-wrap does not fire on i itself. Two-line extension.
 Regression: suite 24/9; phiinv1 UNSAT; T1-T4 SAT; GEMM 16/16; sha256.jl
 10/16; Swift sha256 7.

THE TWO WRAPS THE SOLVER FOUND (both genuine in IR semantics, both
impossible in practice, both fixed by a runtime guard):
 W1 (B-edges, data[i+len]): i + best wraps past INT64_MAX when n is
    within 255 of INT64_MAX (a ~9 EiB array). Guard: n <= 2^62.
 W2 (A-edges, data[j+len]): start = i - window wraps when window is a
    huge NEGATIVE argument (model: window = 0x800000ffffffff8f), so j
    starts negative and data[j+len] is genuinely out of bounds -- a real
    latent bug in our kernel for absurd inputs. Guard: 1 <= window <= 2^62.
 lz77.jl is OUR implementation (mirror of lz77.rs/.swift), so W2 is not
 a library bug discovery; it is the same idiom real Julia code uses.

RESULTS (native_bench/lz77_bounded.jl = W1 guard; lz77_bounded2.jl = W1+W2):
    | variant            | edges | UNSAT @10 s | UNSAT @60 s |
    | lz77.jl (as-is)    |   4   |     0       |     0       |
    | + n <= 2^62        |   4   |     2 (B)   |     2       |
    | + 1 <= window <= 2^62 | 4  |  2-4 (flaky)|     4       |
 Cores (bounded2): A-edges |PHIINV-hi| |SCEVSYM| |PHIINV-lo| |SCEV| + 5
 guards; B-edges |PHIINV-hi| |SCEV| + 5 guards. Vacuous 0.
 BUDGET NOTE: the A-edge queries take 9.4-10 s serially -- right at the
 10 s default -- so at 10 s they flip UNSAT/UNKNOWN by timing noise and
 threads=1 vs 8 can differ (contract: verdicts invariant MODULO timeout).
 At timeout=60000 all four are UNSAT deterministically. License at 60 s;
 the hardness of these two queries is an F1-class item (§10.1).

PERFORMANCE (jl_lz77_mv_arms.jl, Mac, 64 KiB, window 1024, REPS=21, medians,
outputs identical; results/perf/jl_lz77_mv_arms_mac_0909.log):
    arm1 checked baseline     0.0891 s
    arm2 MULTI-VERSIONED      0.0343 s   2.599x   <- proof-licensed
    arm3 @inbounds ceiling    0.0343 s   2.597x
 Multi-versioning recovers 100.1% of the ceiling: the guard costs nothing
 measurable and the fast path is the ceiling. The x86 ceiling is 3.26x
 (pending server).

MULTI-VERSIONING AS PASS MACHINERY (design, not implemented; the user's
proposal, recorded for the campaign):
 1. When a trap query is SAT, inspect the model for "sanity-violating"
    assignments: a loop-invariant bound (array size load, argument) taking
    a value beyond a configurable LARGE (2^62), or a parameter with an
    absurd sign. Candidates = the loop-invariant free variables in the
    unsat-core-adjacent facts (HI's B, LO-wrap's B, PHIINV bases).
 2. Re-solve with the sanity hypothesis H (bound < LARGE etc.) added.
 3. If UNSAT under H: multi-version the enclosing loop --
       if (H) { LOOP without the proven traps } else { LOOP_WITH_CHECKS }
    i.e. clone the loop nest (LLVM LoopVersioning utility / manual
    clone), fold the proven branches in the clone only, branch on H at
    the preheader. Sound by construction (the checked copy handles the
    complement); the cost is code size + one compare per loop entry.
 4. Report H in the log and core ("|MV:H|"), so the paper can say exactly
    which assumption each versioned loop rests on. This is the honest
    replacement for a global axiom: the assumption is CHECKED at runtime.
 Fit with the paper: super-analysis now licenses TWO transformations
 (branch folding and loop versioning), both conventional, both compiler-
 owned; the solver still only answers reachability (twice).

### 10.13 lz77_bounded2 — per-edge cores and latencies (serial, 60 s, Sep 9 2026)
    | edge | access        | version  | verdict | latency | core |
    | 1 | data[j+len] (A) | postloop | UNSAT | 11.44 s | PHIINV-hi(i) SCEVSYM(j-start<=BTC) PHIINV-lo(j>=start) SCEV(len<765) G0-G4 |
    | 2 | data[j+len] (A) | preloop  | UNSAT |  9.23 s | same shape, SCEV(len<255) |
    | 3 | data[i+len] (B) | postloop | UNSAT |  0.01 s | PHIINV-hi(i) SCEV(len<765) G1-G5 |
    | 4 | data[i+len] (B) | preloop  | UNSAT |  0.01 s | PHIINV-hi(i) SCEV(len<255) G1,G3-G6 |
Reading: B is cheap (one interval fact + guards). A is 1000x harder: it
needs the j-chain (SCEVSYM relative to start, LO j>=start, start's
definitional ite over the window branch) AND the i interval, and the
solver spends ~10 s in the bit-vector arithmetic of the j-start-window
relations. Concrete F1 target: profile the A query (Z3 statistics), try
asserting `start >= 1` directly as a derived fact (it follows from
1 <= window and HI on i in one step) to short-circuit the search.

GENERALIZATION NOTED (user's MV idea, extended): multi-versioning is
sound for ANY cheap loop-invariant hypothesis H, not only "sanity"
bounds -- H may be a genuine missing PRECONDITION (e.g. matmul.jl's
length(a) >= n*n, which the kernel never states). The solver's SAT
model tells us which loop-invariant free variables the counterexample
relies on; H is the negation of that region. This turns "checks are the
spec" rows into "checks hoisted to one loop-entry test": exactly what
Julia Base does by hand (checkbounds once, then @inbounds). Campaign
task: a SAT-model sweep over all kernels to mine candidate H per trap.

### 10.14 Budget-consistent deployment: B-only multi-versioning (Sep 10 2026, Mac)
Verdicts by budget (full tier, serial):
    | IR             | budget | A post | A pre | B post | B pre |
    | lz77 (no guard)| any    | SAT    | SAT   | SAT    | SAT   |  (W1 wrap of i kills B too)
    | lz77_bounded   | 300 ms | SAT    | SAT   | UNSAT 16 ms | UNSAT 225 ms |
    | lz77_bounded2  | 300 ms | UNKNOWN| UNKNOWN | UNSAT 6 ms | UNSAT 12 ms |
    | lz77_bounded2  | 10 s   | UNKNOWN| UNSAT 9.2 s | UNSAT | UNSAT |
    | lz77_bounded2  | 60 s   | UNSAT 11.4 s | UNSAT 9.2 s | UNSAT | UNSAT |
=> B needs ONLY the size guard (n <= 2^62) and fits the paper's 300 ms
   budget; A needs the window guard too and 9-11 s (F1 target, §10.13).
Perf (native_bench/jl_lz77_mv_arms.jl, REPS=21, 64 KiB, window 1024,
results/perf/jl_lz77_mv_arms_mac_0910.log):
    arm1 checked            0.0899 s
    arm2 MV, A+B (60 s)     0.0342 s   2.625x   99.7% of ceiling
    arm3 @inbounds ceiling  0.0342 s   2.63x
    arm4 MV, B only (300ms) 0.0593 s   1.515x   31.6% of ceiling
Reading: the 300 ms-consistent deployment is a +51.5% speedup from a
single proof (trap B) plus one runtime guard. Removing A as well is worth
another 1.73x on top; that is the value of bringing the A query under
budget (§10.13 short-circuit fact `start >= 1`, or a 10 s dial row).

### 10.15 Session 1.6 -- PHIINV generalization probe (Sep 10 2026, Mac, 300 ms, threads=1)
Method: A/B of two plugins built from the same LLVM -- baseline = tag
v5.1-cgo-draft-freeze (pre-PHIINV), new = HEAD -- over every local kernel
IR (9 Swift, 2 Rust, 10 Julia) x 3 tiers. Log: results/static/phiinv_probe_mac_0910.log.
Result: 66 (kernel,tier) cells; 58 byte-identical verdict multisets; 8 differ:
  * Swift lz77 heavy/full: UNSAT 2 -> 3. NEW PROOF: the `i += 1` sadd
    overflow trap (lz77.swift:29, outer loop, non-match path), core
    |PHIINV-hi:7| TRAP  (i == 0 || i <s n, n in [0,INT_MAX) from !range).
    Cold-ish (outer loop); Swift lz77 0-elim ceiling is 3.3% (x86), so low
    runtime payoff -- but it is the first PHIINV proof outside its target.
  * Julia lz77_bounded / lz77_bounded2 heavy+full: expected (§10.12/10.14).
  * jl_filt_dsp full: UNKNOWN 4 -> 3, UNSAT 2 -> 3 at 300 ms (a query got
    faster); at 3 s both plugins give SAT=13 UNSAT=6 -- no verdict change.
  * jl_gemm_base heavy 300 ms: UNSAT 4 -> 3 (+1 UNKNOWN); full 300 ms:
    UNSAT 15 -> 14 (+1 UNKNOWN). LATENCY, not precision: at 3 s both
    plugins give 16/16 (max query 1008 -> 1054 ms). The flipped query went
    268 ms -> 374 ms: PHIINV adds facts to every boundary header phi and
    the 300 ms cell is the one place the extra clauses cross the budget.
    Paper's "50 of 52 at 100 ms" dial claim should be re-measured with
    PHIINV on (server dial row) before reuse.
No SAT -> UNSAT flip anywhere except the three explained above; no
UNSAT -> SAT anywhere (that would be a soundness alarm). Suite gate 24/9.
Verdict: PHIINV is robust; cost is ~+100 ms on the densest GEMM query.

### 10.16 Swift lz77 -- PHIINV runtime effect on Mac (Sep 10 2026)
Proof count: light 1/25, heavy/full 2/25 before PHIINV -> 3/25 now (the
new one is the `i += 1` sadd-overflow trap, lz77.swift:29). Perf harness
(run_swift_perf.sh, full tier, 300 ms, REPS=30, "2 perf_test/sha_input.bin",
results/perf/swift_lz77_perf_mac_0910.log): traps 27->22 in oracle
(base 27->23), eliminated 3.
    base 1.4841  base2x 1.4839  oracle 1.4389   => +3.05% / +3.04%
    noise floor (base vs base2x) 0.01%; outputs identical.
Mac ceiling (-O vs -Ounchecked, 15 interleaved): 1.4842 vs 1.0916 =
**35.97%** (x86 server ceiling was 3.3%, §8 0827b) -- the M-series
codegen pays far more for the inner-loop checks. Recovery 8.5% of ceiling.
=> Swift lz77 is now a prime target: same loop shape as lz77.jl (inner
`data[j+l] == data[i+l]`), 22 traps left, 36% Mac ceiling, no @inbounds
deployment needed (pass removes traps directly). Next: countermodel
diagnosis of the inner-loop bounds/overflow traps, as in §10.8 for Julia.

### 10.17 Session 2.0/2.1 -- Swift lz77 countermodel diagnosis and fixes (Sep 10 2026, Mac)
Setup: `ODESSY_DEBUG=1` now enables the SMT-LIB + countermodel dump (was a
compile-time constant). Numeric SSA values are anonymous in the dump, so
run `opt -passes=instnamer` on the IR first (names %iNNN survive). Dumps
are written unbuffered and therefore precede the per-function log; they
appear in SAT order and the vacuity audit of every UNSAT also dumps one.
Named hot-loop map (main, lz77.swift:12-31): i=%i235 n=%i222 j=%i248
l=%i250 start=%.ph out=%i234 bestLen=%i270 (phi %i247)
n-i = %i242 (smax(i,n)-i) = %i243 (usub.sat(n,i)).
IMPORTANT SHAPE DIFFERENCE vs lz77.jl: swiftc has already turned
`while l < 255 && i + l < n` into a HEADER EXIT `l == n-i` with the latch
`l+1 != 255`; the bounds checks are `j+l <u n` (trap 312) and
`l == usub.sat(n,i)` (trap 313, i.e. i+l < n via l < n-i).

Classification of main's 13 traps (15 edges; 25 in the module):
    | trap | source (line)          | before | countermodel / cause                         | class              | after |
    | 303  | args count (2)         | SAT    | setup, argv                                  | not a target       | SAT   |
    | 304  | Int(arg) parse (2)     | SAT x2 | setup                                        | not a target       | SAT   |
    | 305  | file read (3)          | SAT    | setup                                        | not a target       | SAT   |
    | 306  | 0..<iters (7)          | SAT    | iters sign                                   | not a target       | SAT   |
    | 307  | out += 1 ovf (28)      | SAT    | out free, ~INT_MAX                           | relational out<=i  | SAT   |
    | 308  | i += 1 ovf (29)        | UNSAT  | PHIINV-hi(i) (§10.15)                        | proven             | UNSAT |
    | 309  | out += 3 ovf (24)      | SAT    | out free                                     | relational out<=i  | SAT   |
    | 310  | i += bestLen ovf (25)  | SAT    | bestLen phi = 0x7ffffffffffffc42 (free)      | relational: needs bestLen <= n-i (l<=n-i lcssa) | SAT |
    | 311  | i - j ovf (19)         | UNSAT  | (already)                                    | proven             | UNSAT |
    | 312  | data[j+l] bounds (18)  | SAT    | n-i=0x80 but l=0xb0: l NOT bounded by n-i    | MISSING INVARIANT: header-exit bound on l; j<i via select latch | UNSAT 425 ms |
    | 313  | data[i+l] bounds (18)  | SAT    | usub.sat(n,i)=0 with n=0x7fffff,i=0x109      | MISSING ENCODING: llvm.usub.sat havoced | UNSAT 41 ms |
    | 314/315 setup (Array init)  | SAT    | setup                                        | not a target       | SAT   |
Fixes landed (three, all general):
  F-a  Z3Encoder: llvm.usub.sat / uadd.sat / ssub.sat / sadd.sat encoded
       exactly (ite). usub.sat is Swift's lowering of `n - i` in bounds
       arithmetic; leaving it free lost trap 313 outright.
  F-b  PHIINV-hx (header-exit equality bound): (v0 <=u B) -> p <=u B for
       unit-step p with header exit `p == B`. Kills trap 312 together with:
  F-c  PHIINV-hi through conjunctive/disjunctive latch conditions
       (`select A,B,false` / `and` on true; `select A,true,B` / `or` on
       false). Gives j == start || j <s i on the middle loop.
Cores: 313 = |RM(n)| |SCEV| |PHIINV-lo(j)| |SCEV| |PHIINV-hx(l)| G1 TRAP.
       312 = |RM| |PHIINV-hi(i)| |SCEV| |SCEVSYM| |PHIINV-hi(j,select)|
             |PHIINV-lo(j)| |SCEV| |PHIINV-hx(l)| G0 G1 TRAP   (9 facts, 425 ms)
Tests: test_heavy_phiinv_hx.ll (UNSAT, core |SCEV| |PHIINV-hx| G0 G1),
  test_heavy_phiinv_hx_stride_sat.ll (stride 2 tripwire, SAT),
  test_heavy_phiinv_selatch.ll (UNSAT, core G0 |PHIINV-hi|),
  test_heavy_phiinv_selatch_or_sat.ll (or-on-true tripwire, SAT).
  Suite gate now PASS=26 FAIL=11 (two more heavy positives under the light
  gate, two more SAT tripwires).
Static: Swift lz77 main 3/13 -> 5/13 traps (module 3/25 -> 5/25 at >=1 s;
  4/25 + 1 UNKNOWN at 300 ms because trap 312 takes 425 ms).
Probe vs §10.15 column (60 cells, 300 ms): only Swift lz77 (+1 UNSAT,
  +1 UNKNOWN), Rust lz77 (1 SAT -> UNKNOWN, latency) and jl_filt_dsp
  (heavy +1 UNSAT, full +2 UNSAT, some SAT->UNKNOWN latency shifts)
  change; no UNSAT -> SAT anywhere. lz77.jl bounded2 unchanged (10 s:
  A-post UNKNOWN, A-pre 9.4 s, B x2 ms).
Remaining Swift lz77 targets: 307/309/310 need the RELATIONAL invariant
  out <= i (resp. bestLen <= n-i): Plan C territory (§9), not PHIINV.
Runtime after fixes (run_swift_perf.sh, full tier, threads=8, REPS=30,
results/perf/swift_lz77_perf_mac_0910b.log; traps 27->20 in oracle,
eliminated 5, byte-identical):
    budget 300 ms : base 1.5030  base2x 1.5178  oracle 1.1319  => +24.7% / +25.4%
    budget 1 s    : base 1.5813  base2x 1.5824  oracle 1.1494  => +27.3% / +27.4%
  (base drifted 1.48 -> 1.58 across the day's runs: Mac not pinned; the
  ratio is the number. Both budgets eliminated the same 5 traps -- the
  425 ms query fit under 300 ms with threads=8 parallel warm-up.)
  vs Mac ceiling 36.0% (§10.16): ~70-76% recovered, up from 8.5%.
  From +3.05% to +27% in one session, by two hot inner-loop proofs.
3 s rechecks: Rust lz77 heavy/full SAT=2 UNSAT=1 (the 300 ms UNKNOWN is a
  NEW proof at 3 s: 0 -> 1); jl_filt_dsp 6/19 both tiers (unchanged at 3 s);
  jl_filt_dsp_guarded 8/10 (unchanged).

### 10.18 Rust lz77 -- first Rust runtime experiment (Mac, Sep 10 2026): a LOSS
Census: lz77.rs has 16 core::panicking call sites, 3 of them anchorable
trap sites (single-pred trap block behind a conditional branch; rustc
MERGES the others into shared panic blocks -- anchor v2 gap, §8). Before
PHIINV: 0/3. Now 1/3 at >=1 s (405 ms; 300 ms budget -> UNKNOWN): the
inner-loop `data[j+len]` bounds check, core |PHIINV-hi| |SCEVSYM| |SCEV|
|PHIINV-hx| G0 G1 G2 TRAP -- the same two new rules as Swift (§10.17).
The other two (matches += 1 overflow via `== -1` guard; `i += best`
overflow) need relational invariants (Plan C).
New harness scripts/run_rust_perf.sh: rustc -O checked --emit=llvm-ir,obj,
link --print link-args (-C save-temps keeps the objects); base/base2x/
oracle = opt pipeline -> llc -> relink with the kernel object swapped in
rustc's own link line; ceiling arms = rustc-native checked vs the
get_unchecked twin (lz77_bench_unc.rs). 64 KiB corpus, window 1024,
RUNARGS=25 (~41 ms/rep), REPS=30, byte-identical gate passed.
results/perf/rust_lz77_perf_mac_0910.log:
    base     0.7702   base2x 0.7706   oracle 1.0516   => oracle -26.8% (SLOWER)
    checked  1.0393   unchecked 1.0865                => ceiling -4.3% (unchecked SLOWER)
Robust to llc -mcpu=apple-m1, -align-loops=32, -align-loops=4 (all within
1 pt). Post-O3 IR diff is three lines: the `j+len <u n` compare+branch
gone, GEP loses `inbounds nuw` and is split into a hoisted base+j pointer
indexed by len. Inner loop 9 instrs (oracle) vs 12 (base); the per-j
mismatch path is 14 vs 15 instrs. A 32-byte loop-alignment nop pad on the
fall-through path was suspected and RULED OUT (-align-loops=4 -> 0 nops,
same -26%). The loop runs at ~5 IPC (6.7e8 instr / 41 ms), i.e. at the
front-end limit, where any change in the taken-branch pattern or fetch
grouping is decisive; without hardware counters (macOS) the cause is
unresolved. Two independent compilers agree in sign: rustc's own
get_unchecked build is 4.3% slower than its checked build.
STATUS: honest two-sided lottery entry (cf. CryptoSwift/sha1 §8): a proven
check whose removal costs 26% on M-series. Do NOT ship as a speedup row;
report as the strongest negative example. Re-measure on x86 (server) --
base vs rustc-native also differ by 35% here, showing how codegen-sensitive
this kernel is. Rust lz77 stays a static-only row until then.

### 10.19 Where the numbers live (Sep 10 2026)
PAPER_FACTS §11.4 is the consolidated Mac table (speedup, UNSAT/total,
Mac ceiling, recovery, compile-time cost) for every kernel touched in the
OOPSLA campaign; §8 remains the server (x86) record. Update §11.4 whenever
a Mac row moves. Pass wall times: Swift lz77 0.2-0.4 s, Rust lz77 0.25 s,
lz77.jl 21 s serial at 60 s budget (A edges 9-11 s each).

### 10.20 Session 2.2a -- Swift base64 + adler32 (Sep 10 2026, Mac)
Mac ceilings (-O vs -Ounchecked, 15 interleaved, 1 MiB input,
results/perf/ceilings_mac_0910.log): base64 **22.6%** (700 it), adler32
**6.25%** (1500 it). (x86: 56.8% / 11.6%.)
Static before, 300 ms AND 60 s identical: base64 0/27, adler32 1/37 -- no
timeout-dependent proofs, so no per-timeout perf runs were warranted.

base64 diagnosis (main, hot loop lines 19-30; ODESSY_DEBUG + instnamer):
  i=%i236 (base 0, latch add nuw nsw i,3), q=%i237 (base 2, latch value
  extractvalue 0 of sadd.with.overflow(i,5)), n=%i213 (!range), tbl.count
  =%i226 (a LOAD from the global `tbl` -- free).
  swiftc rotated `while i+2 < n` so the latch tests q's next value and the
  header check `i <u n` (data[i], trap bb301) has NO fact linking i to q.
    | edge | check                | countermodel                    | class |
    | 6 | data[i]   i <u n         | i == n                          | MISSING INVARIANT q == i+2 -> UNSAT 439 ms |
    | 7 | data[i+1] i+1 <u n       | i+1 == n                        | same -> UNSAT 18 ms |
    | -- data[i+2] has no check (swiftc folded it against the latch) --   |
    | 8-11 | tbl[idx] idx < count  | count = 0x1f / 5 (free load)    | UNPROVABLE without the literal-array contract (tbl = Array("..64 chars..".utf8) is a runtime global); MV candidate: guard tbl.count == 64 |
    | 12 | i += 3 overflow (sadd i,5) | i = INT_MAX-4, n = INT_MAX-1 | GENUINE WRAP (n ~ 2^63): multi-versioning |
  Fix: PHIINV-rel (constant-difference header-phi pair):
     q == p + c  when q0 == p0 + c (constant bases) and both latch values
     are affine in p (p + k, through add and extractvalue-0 of
     {s,u}add.with.overflow) with kq == kp + c. Induction in Z/2^W: pure
     modular equality, NO wrap side condition. The partner phi is pushed
     on the leaf queue and tryPhiInv now runs in the leaf battery, so q
     receives its own HI (q == 2 || q <s n). PhiInvDone set makes PHIINV
     once-per-phi-per-query. Cores: edge 6 = |RM(n)| |SCEV(i)| |PHIINV-rel|
     |SCEV(q)| |PHIINV-hi(q)| G0 TRAP.
  Tests: test_heavy_phiinv_rel.ll (bounds trap UNSAT with rel in core; the
     in-loop overflow trap stays SAT = genuine wrap), test_heavy_phiinv_rel_
     stride_sat.ll (kq != kp + c tripwire, SAT). Gate PASS=27 FAIL=12.
  Static after: base64 2/27 at 300 ms, 1 s and 60 s (threads=8).
  NOTE on the rel test: with n a free argument the positive is SAT --
  correctly: i >= 0 and q <s n do not exclude q wrapping (i = INT_MAX-1,
  q = INT_MIN). The kernel is UNSAT because SCEV bounds q's range from
  the !range on n; the test therefore loads n with !range like swiftc.

adler32 diagnosis (function $s7adler32..., 37 edges, 1 UNSAT pre-existing):
  DO16 group (lines 25-40): 16 checks buf[i+k] <u count, k=0..15, each
  guarded only by the previous one. The needed invariant is the 3-phi
  linear relation  i + 16*n_groups + len == count  (i += 16, n -= 1 per
  group; len -= NMAX, i += NMAX per outer iteration with i's outer latch
  value coming out of the inner loop). Tail loop buf[i] needs
  i + len == count. Both are RELATIONAL across loops: Plan C (§9), not an
  interval or pair rule. PHIINV-hi already gives len == count || len >= NMAX.
  Classified; no fix attempted. Remaining edges: adler/sum2 &+ are wrapping
  (no traps); the traps are the 17 bounds checks + setup.
Runtime (run_swift_perf.sh, full tier, threads=8, REPS=30, "700
perf_test/sha_input.bin" ~0.2 s/run, byte-identical, traps 28->24 vs
28->26, eliminated 2; results/perf/swift_base64_perf_mac_0910.log):
    300 ms: base 0.2025 base2x 0.2027 oracle 0.1883  => +7.0% / +7.1%
    1 s   : base 0.2029 base2x 0.2046 oracle 0.1897  => +6.5% / +7.3%
  vs Mac ceiling 22.6%: ~31% recovered from the two data-array checks.
  The other 70% sits in the four tbl[] lookups (literal-array contract or
  MV guard on tbl.count == 64) -- the next base64 step.
Probe vs §10.17 column (60 cells, 300 ms): base64 +2 UNSAT; Swift lz77
  UNKNOWN->UNSAT (latency); jl_filt_dsp SAT/UNKNOWN shuffles at 300 ms only
  (6/19 at 3 s unchanged). No UNSAT -> SAT anywhere.

### 10.21 The machinery program (decided Sep 10 2026): four general mechanisms, each with a falsifiable prediction
Method (Popper): a mechanism is adopted only with a prediction over the WHOLE
kernel set stated before implementation; the per-kernel PHIINV rules of
§10.9-10.20 are observations, kept as the regression oracle, to be demoted
once mechanism 1 reproduces them. No hand-written source edits count as
machinery results (the lz77.jl / base64 guards are ceiling probes only).

1. INDUCTIVE BODY ENCODING (formerly Plan C; k-induction with k = 1).
   Hypothesis: at iteration t the header phis are free, the latch condition
   held and no trap fired; encode ONE body copy; ask whether a trap is
   reachable at t+1. Base case = the existing query with phis at their
   entry values. Subsumes PHIINV-hi/lo/hx/rel (all are single-phi
   projections of the body). k > 1 would assume k trap-free iterations of
   history; not needed by any current kernel.
   PREDICTION: with PHIINV disabled, reproduces all current PHIINV proofs
   (Swift lz77 5/25, lz77.jl 4/4 bounded, lz77.rs 1/3, base64 2/27, tests);
   adds utf8's multi-byte reads (s[i+1..3] under i+3 < n) if their
   invariant is inductive as stated. Does NOT cover invariants that need
   strengthening (adler32) or inequalities between two phis (Swift lz77
   out <= i, lz77.rs matches/i overflow). 4-6 sessions.
2. AFFINE EQUALITY INVARIANTS (Karr 1976 / Muller-Olm-Seidl): all linear
   equalities among header phis and loop-invariant values, by linear
   algebra over the update matrix; inner loops summarized by constant trip
   counts. PHIINV-rel is the 2-variable case.
   PREDICTION: adler32 i + 16n + len == count -> 16 DO16 checks + tail
   (1/37 -> 18/37); any "relational" class from the countermodel sweep.
   3-4 sessions.
3. FRAME v2 POINTER EQUIVALENCE: load equality when the two pointers are
   SCEV/GEP-equal (same base, same offset expression), not only the same
   SSA value, with no clobber between (MemorySSA walk as today).
   PREDICTION: filt.jl b[j+1]/a[j+1] -> guarded 10/10 (x86 ceiling 58.3%).
   2-3 sessions.
4. AUTOMATED MULTI-VERSIONING on loop-invariant hypotheses mined from
   countermodels: if every trap-reaching model of a loop needs a region of
   LOOP-INVARIANT free variables (array sizes, global lengths), version the
   loop on the negated region: fast copy with the trap folded, checked copy
   otherwise. A transformation: needs its own soundness argument (guard
   dominates the fast copy; both copies observationally equal), |MV:H|
   labels, byte-identical gate.
   PREDICTION: lz77.jl 4/4 with no source edit; base64 tbl[] 4 traps
   (H: tbl.count >= 64) + its i+3 overflow (H: n <= 2^62) -> 7/27;
   crc32 table lookups (H: table.count >= 256); every "genuine wrap"
   overflow trap (H: n <= 2^62). 3 sessions.
(5. not machinery: F1 SOLVER HARDNESS -- sha256.jl x86 8 timeouts, filt.jl
   jobs 7/9, lz77.jl A under 300 ms. Profiling / derived short-circuit
   facts / bit-width reduction. Orthogonal to 1-4.)

Prediction table (ceilings: Mac = this M-series, x86 = c220g2 server, §8/§11.4):
| kernel | now UNSAT/total | Mac ceil | x86 ceil | 1 IBE | 2 Karr | 3 FRAME2 | 4 MV | 5 F1 |
|---|---|---|---|---|---|---|---|---|
| base64 Swift | 2/27 | 22.6% | 56.8% | reproduce 2 | - | - | +5 (tbl x4, ovf) -> 7/27 | - |
| adler32 Swift | 1/37 | 6.3% | 11.6% | - | +17 -> 18/37 | - | - | - |
| filt.jl (guarded) | 8/10 | none | 58.3% | - | - | +2 -> 10/10 | - | jobs 7/9 latency |
| lz77.jl | 4/4 bounded (0/4 raw) | 2.63x | 3.26x | reproduce | - | - | 4/4 no source edit | A edges < 300 ms |
| lz77 Swift | 5/25 | 36.0% | 3.3% | reproduce 5 | - | - | - | - |
| lz77.rs | 1/3 | -4.3% | ? | reproduce 1 | - | - | - | - |
| utf8 Swift | 2/20 | none | 7.5% | + multi-byte reads (predicted) | maybe | - | - | - |
| crc32 Swift | 0/36 | ? | 4.6% | - | - | - | table lookups (H: count >= 256) | - |
| sha1 Swift | 7/24 | 7.6% | 4.7% | sweep needed | sweep needed | - | - | - |
| sha256 Swift | 7/36 | 2.8% | 9.0% | sweep needed | sweep needed | - | - | - |
| md5 Swift | 5/25 | none | 6.0% | sweep needed | - | - | - | - |
| sha256.jl | 10/16 | none | 9.5% | - | - | - | - | 6 timeouts -> 16/16 |
| GEMM.jl | 16/16 | 4.17x | 3.72x | done | - | - | - | - |
| nbody Swift | 0/84 | ? | ~0 | - | - | - | - | - (FP; no target) |
| CryptoSwift / zlib / zstd / lz4 / OpenSSL | see §8 | ~0 / server | server | unknown: needs the countermodel sweep | | | | |
Swift lz77's 3 outer overflow traps and lz77.rs's 2 need an INEQUALITY
invariant between two phis (out <= i): covered by none of 1-4 (would need
polyhedral/octagon invariants); low value (Swift lz77 already at ~76% of
its Mac ceiling).

### 10.22 Session 4.1 -- SPEC: solver-guided loop multi-versioning (knob `mv`)
Status: specification, written before code (§10.21 discipline).

GOAL. For a trap T inside loop L whose SAT countermodels rely only on
LOOP-INVARIANT free values (array sizes, global lengths, parameters),
find a hypothesis H over those values such that T is UNSAT under H, then
emit two copies of L: `if (H) L_fast else L_checked`, with T (and every
other trap of L proven under H) folded only in L_fast. The solver both
DISCOVERS the version predicate and CERTIFIES the fast copy.

KNOB. `mv` (off by default; `mv=<limit>` optional clone budget per function,
default 4; `mv-sane=<k>` sets the sane-range exponent, default 62). With
`mv` off the pass behaves exactly as today.

INPUTS per trap edge (after the ordinary query returns SAT):
  M      : the model;
  Inv(L) : the free variables of the query that are loop-invariant in L
           (defined outside L, or loads whose pointer is defined outside L
           and not clobbered in L per MemorySSA -- reuse the FRAME walk);
  Idx    : for a bounds trap `idx <u count`, the index value and its static
           range (KnownBits / SCEV / LVI) and whether count in Inv(L).

HYPOTHESIS TEMPLATES (the only shapes H may contain):
  T1 length-vs-index : count >u hi(idx)         (count in Inv(L), hi from
                       the index's static unsigned range; e.g. tbl.count >
                       63, table.count > 255)
  T2 sane range      : 0 <=s v  &&  v <=s 2^k    (v in Inv(L) that feeds an
                       add/sub/mul the model wraps, i.e. appears in the
                       slice of a wrapping operation; k = mv-sane)
  Each conjunct is an ICmp between an Inv(L) value and a CONSTANT, hence
  evaluable in L's preheader. No non-invariant value may appear (tripwire).

PROCEDURE per loop L (all trap edges of L that are SAT/UNKNOWN):
  1. Candidates C = union of T1/T2 conjuncts over the loop's SAT edges.
  2. For each SAT edge: re-solve with all of C asserted as labelled
     assumptions |MV:i|. UNSAT -> keep the conjuncts named in the unsat
     core as H_T (minimal per trap); SAT/UNKNOWN -> trap not versionable.
  3. H_L = conjunction of all H_T over versionable traps of L. If empty,
     no versioning. Vacuity: H_L must be satisfiable (audit), otherwise
     refuse (a contradictory H would make L_fast dead code, sound but
     useless and a sign of a wrong template).
  4. Hoisting: choose the OUTERMOST loop L' containing L such that every
     conjunct of H_L is invariant in L' (paid once, one clone).
  5. Transform: clone L' (llvm::cloneLoopWithPreheader), preheader branch
     on H_L computed from the invariant values, fold the versionable traps
     ONLY in the clone (same fold as the ordinary UNSAT path, discovery
     order), leave the original untouched, simplifycfg/adce as today.
  6. Budget: at most `mv` clones per function; largest expected gain first
     (deepest loop nest, then most traps folded). Log every decision.

SOUNDNESS. (i) H_L's conjuncts are loop-invariant, so their value in the
preheader equals their value at every point of L'_fast. (ii) The guard
dominates L'_fast, so every execution of L'_fast satisfies H_L. (iii) Each
folded trap was UNSAT with H_L asserted context-side, i.e. unreachable in
every execution satisfying H_L, under the same trust class as today's
proofs (facts + guards + nsw/poison caveat). (iv) L'_checked is the
original code. Hence the versioned program is observationally equal to
the original. The sane constant 2^k never enters as an axiom: it is
checked at runtime, so soundness does not depend on its value; only the
probability of taking the fast path does.

WHAT IT REFUSES (tripwires, each a test that must keep its trap):
  R1 a candidate involving a NON-invariant value (e.g. `out` in Swift lz77's
     overflow traps) -- no template applies, trap kept;
  R2 H unsatisfiable with the context -> refuse (vacuity of H);
  R3 an edge that stays SAT under C -> not folded in the fast copy either;
  R4 count not loop-invariant (reallocated inside L) -> T1 not applicable.

TESTS (to write with the implementation):
  test_mv_tbl.ll        : tbl[idx & 63] with free count -> UNSAT under
                          |MV: count >u 63|, clone + guard emitted, trap
                          folded in the clone only;
  test_mv_wrap.ll       : lz77.jl skeleton -> UNSAT under |MV: n <=s 2^62|;
  test_mv_noninv_sat.ll : R1 tripwire (the wrapping operand is a phi);
  test_mv_realloc_sat.ll: R4 tripwire (count stored inside the loop).
  Gate: every existing test unchanged with `mv` off.

ACCEPTANCE PREDICTIONS (falsifiable, stated now):
  lz77.jl  : 4/4 folded in the fast copy from the UNMODIFIED source with
             H = {n <=s 2^62, 0 <=s window <=s 2^62} (60 s budget; B-only
             at 300 ms), Mac perf = the hand-written arm within noise
             (2.63x / 1.52x).
  base64   : 7/27 (2 today + 4 tbl + 1 overflow) with
             H = {tbl.count >u 63, n <=s 2^62}; Mac perf above +7%,
             ceiling 22.6%.
  crc32    : table lookups folded with H = {table.count >u 255}; first
             crc32 proofs (0/36 today).
  Swift lz77 outer overflows, lz77.rs overflows: NOT versionable (R1).
  Byte-identical outputs in every perf run; suite gate unchanged with mv
  off; no UNSAT -> SAT in the 60-cell probe with mv on.

DELIVERY: knob + templates + re-solve/core (4.2), clone + guard + fold
(4.3), tests and tripwires (4.4), lz77.jl / base64 / crc32 static
acceptance and Mac perf (4.5), HANDOFF/PAPER_FACTS.
