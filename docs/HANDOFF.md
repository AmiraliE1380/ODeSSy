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
bash scripts/run_tests.sh          # MUST print PASS=20 / FAIL=8 (17/6 pre-FRAME, 19/7 pre-SCEVSYM-v2)
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
