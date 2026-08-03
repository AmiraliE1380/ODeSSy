#!/usr/bin/env bash
# =============================================================================
# swift_triage.sh -- the 10-minute Swift x ODeSSy triage (HANDOFF doctrine).
#
# Answers, per Swift kernel, the four gate questions BEFORE any real
# elimination campaign:
#   1. VERSION SKEW : does Swift 6.x's emitted IR parse under our pinned
#                     trunk opt at all?
#   2. TRAP SHAPE   : how many llvm.trap / ubsantrap call sites exist,
#                     and how many does the Anchor actually accept
#                     (single-pred trap blocks)? Swift merges trap blocks
#                     aggressively -- expect a coverage gap; measure it.
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skip counts under
#                     oracle-pass<vacuity;ldeq>.
#   4. LDEQ RELEVANCE: how often the reloaded-bound unification fires.
#
# Usage : bash swift_triage.sh [nbody.swift ...]   (default: all three)
# Needs : swiftc + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/swift_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/swift_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/nbody.swift" "$NB/sha256.swift" "$NB/lz77.swift")

command -v swiftc >/dev/null || { echo "[FATAL] swiftc not on PATH"; exit 1; }
command -v opt    >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "swiftc: $(swiftc --version 2>&1 | head -1)"
echo "opt   : $(opt --version | head -1)"
echo ""
printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .swift)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  swiftc -O -emit-ir "$SRC" -o "$ll" 2>"$OUT/$stem.swiftc.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "SWIFTC_FAIL (see $OUT/$stem.swiftc.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: trap census (call sites only, per counting doctrine) ---
  traps=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$ll")

  # --- gate 3: verdicts (analysis-only; vacuity + ldeq; threads for speed) ---
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="oracle-pass<vacuity;ldeq;threads=8>" \
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
echo "Read: anchored/traps = Anchor coverage (multi-pred gap);"
echo "      vacuous MUST be 0; audit any UNSAT via its core before celebrating."
