#!/usr/bin/env bash
# =============================================================================
# julia_triage.sh -- the Julia x ODeSSy static triage (third sibling of
# swift_triage.sh / rust_triage.sh; same four gate questions).
#
#   1. VERSION SKEW : does Julia's code_llvm module dump parse under our
#                     pinned trunk opt? (Julia 1.x carries LLVM 16-18 --
#                     watch for addrspace/GC-frame constructs.)
#   2. TRAP SHAPE   : how many (i)jl_bounds_error* call sites, and how
#                     many does the Anchor accept? The SHAPE PROBE below
#                     prints the first sites verbatim -- confirm
#                     call+unreachable (rustc's invoke lesson).
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skips under
#                     oracle-pass<vacuity;heavy;ldeq;traps=bounds_error>.
#   4. LDEQ RELEVANCE: reloaded arraylen unification hits.
#
# Usage : bash julia_triage.sh [kernel.jl ...]   (default: lz77 + matmul)
# Needs : julia + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/julia_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/julia_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/lz77.jl" "$NB/matmul.jl")

# Heavy is the standard tier for native-language static runs.
# Two symbol spellings, both covered: (i)jl_bounds_error* (runtime
# calls, older Julia) and j_throw_boundserror_NNN (Julia 1.12+ outlines
# each failure into a module-local thunk). Substring match + the
# divergence gate (TrapDiscovery.cpp) handles both.
PASSES="${PASSES:-oracle-pass<vacuity;heavy;ldeq;threads=8;traps=bounds_error:boundserror>}"

command -v julia >/dev/null || { echo "[FATAL] julia not on PATH"; exit 1; }
command -v opt   >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "julia: $(julia --version)"
echo "opt  : $(opt --version | head -1)"
echo "pass : $PASSES"
echo ""

# --- SHAPE PROBE (gate 2a, once, first kernel): print the first bounds
# sites verbatim so a lowering surprise (invoke, non-single-pred, a
# different symbol family) is SEEN before any verdict is trusted.
probe_done=0

printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .jl)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  julia "$NB/julia_dump.jl" "$SRC" "$ll" 2>"$OUT/$stem.julia.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "JULIA_FAIL (see $OUT/$stem.julia.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: bounds-error census (count invoke too: a nonzero census
  # with anchored=0 must read as "shape mismatch", never "no checks") ---
  traps=$(grep -cE '(call|invoke)[^;]*@[^(]*bounds_?error' "$ll")

  if [ "$probe_done" -eq 0 ] && [ "$traps" -gt 0 ]; then
    echo "---- shape probe ($stem): first bounds sites ----"
    grep -B1 -A2 -E '(call|invoke)[^;]*@[^(]*bounds_?error' "$ll" | head -16
    echo "---- (expect: call + unreachable; if you see 'invoke', STOP) ----"
    echo ""
    probe_done=1
  fi

  # --- gate 3: verdicts ---
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="$PASSES" \
      -disable-output "$ll" > "$log" 2>&1
  rc=$?
  anchored=$(grep -oE '[0-9]+ trap site\(s\)' "$log" | grep -oE '^[0-9]+' | head -1)
  anchored=${anchored:-0}
  unsat=$(grep -c 'UNSAT' "$log");  sat=$(grep -c 'SAT (WARNING' "$log")
  vac=$(grep -c '\[VACUOUS\]' "$log"); skips=$(grep -c '\[Skip\]' "$log")
  ldeq=$(grep -oE '\[ldeq\] [0-9]+' "$log" | awk '{s+=$2} END{print s+0}')
  pct="-"; [ "$traps" -gt 0 ] && pct=$(awk -v a="$anchored" -v t="$traps" 'BEGIN{printf "%.0f%%", a/t*100}')
  st="ok"; [ $rc -ne 0 ] && st="OPT_RC=$rc"

  printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
    "$stem" "$traps" "$anchored" "$pct" "$unsat" "$sat" "$vac" "$skips" "$ldeq" "$st"
done
echo ""
echo "Per-trap logs: $OUT/<kernel>.log   IR: $OUT/<kernel>.ll"
echo "Read: anchored/traps = Anchor coverage; vacuous MUST be 0;"
echo "      audit any UNSAT via its core before celebrating."
