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
# Needs : "$SWIFTC" + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/swift_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
# ---- Swift toolchain pin (HANDOFF §10.33) ----------------------------
# macOS auto-updated the Command Line Tools to Swift 6.4 on Sep 15 2026;
# every Mac/x86 number before that is Swift 6.3.3. Prefer the swift.org
# 6.3.3 toolchain (installed per-user) and refuse silently different
# versions unless EXPECT_SWIFT is overridden (set to "" to disable).
SWIFT_TC_DEFAULT="$HOME/Library/Developer/Toolchains/swift-6.3.3-RELEASE.xctoolchain/usr/bin"
if [ -z "${SWIFTC:-}" ] && [ -x "$SWIFT_TC_DEFAULT/swiftc" ]; then export PATH="$SWIFT_TC_DEFAULT:$PATH"; fi
SWIFTC="${SWIFTC:-swiftc}"
# The swift.org toolchain rejects the macOS 27 SDK's driver flags; use the
# 26.5 SDK that shipped with CLT 26.x when present (SWIFT_SDK overrides).
SWIFT_SDK_DEFAULT="/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk"
if [ -z "${SWIFT_SDK:-}" ] && [ -d "$SWIFT_SDK_DEFAULT" ] && "$SWIFTC" --version 2>&1 | grep -q "RELEASE"; then SWIFT_SDK="$SWIFT_SDK_DEFAULT"; fi
SWIFT_SDKFLAG=""; [ -n "${SWIFT_SDK:-}" ] && SWIFT_SDKFLAG="-sdk $SWIFT_SDK"
EXPECT_SWIFT="${EXPECT_SWIFT-6.3.3}"
if [ -n "$EXPECT_SWIFT" ] && ! "$SWIFTC" --version 2>&1 | grep -q "Swift version $EXPECT_SWIFT"; then
  echo "[FATAL] swiftc is: $("$SWIFTC" --version 2>&1 | head -1) -- EXPECT_SWIFT=$EXPECT_SWIFT (set EXPECT_SWIFT= to override)"; exit 1
fi

set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/swift_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/nbody.swift" "$NB/sha256.swift" "$NB/lz77.swift")

command -v "$SWIFTC" >/dev/null || { echo "[FATAL] "$SWIFTC" not on PATH"; exit 1; }
command -v opt    >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "swiftc: $("$SWIFTC" --version 2>&1 | head -1)  sdk: ${SWIFT_SDK:-default}"
echo "opt   : $(opt --version | head -1)"
echo ""
printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .swift)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  "$SWIFTC" $SWIFT_SDKFLAG -O -emit-ir "$SRC" -o "$ll" 2>"$OUT/$stem.swiftc.err" || {
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
      -passes="oracle-pass<vacuity;heavy;ldeq;threads=8>" \
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
