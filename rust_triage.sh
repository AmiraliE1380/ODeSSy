#!/usr/bin/env bash
# =============================================================================
# rust_triage.sh -- the Rust x ODeSSy static triage (sibling of
# swift_triage.sh; same four gate questions, HANDOFF doctrine).
#
#   1. VERSION SKEW : does rustc's emitted IR parse under our pinned
#                     trunk opt?
#   2. TRAP SHAPE   : how many panic call sites exist (bounds +
#                     overflow), and how many does the Anchor accept?
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skip counts under
#                     oracle-pass<vacuity;heavy;ldeq;traps=panic>.
#                     `traps=panic` matches every core::panicking::*
#                     symbol behind the divergence gate (noreturn or
#                     call+unreachable) -- see TrapDiscovery.cpp.
#   4. LDEQ RELEVANCE: reloaded-bound unification hits.
#
# Usage : bash rust_triage.sh [kernel.rs ...]   (default: lz77 + matmul)
# Needs : rustc + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/rust_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/rust_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/lz77.rs" "$NB/matmul.rs")

# Heavy is the standard tier for native-language static runs.
PASSES="${PASSES:-oracle-pass<vacuity;heavy;ldeq;threads=8;traps=panic>}"

command -v rustc >/dev/null || { echo "[FATAL] rustc not on PATH"; exit 1; }
command -v opt   >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "rustc: $(rustc --version)"
echo "opt  : $(opt --version | head -1)"
echo "pass : $PASSES"
echo ""
printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .rs)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  # -O + overflow-checks=on: optimized IR that KEEPS both check families.
  # panic=abort is LOAD-BEARING: default panic=unwind lowers panics to
  # `invoke` (landing pads), which our CallInst Hunter cannot see; abort
  # lowers them to `call` + `unreachable` -- the exact ubsantrap shape,
  # and the deployment-honest comparison. codegen-units=1 for one .ll.
  rustc -O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1 \
        --emit=llvm-ir -o "$ll" "$SRC" 2>"$OUT/$stem.rustc.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "RUSTC_FAIL (see $OUT/$stem.rustc.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: trap census = panic CALL SITES in the .ll ---
  # (count invoke too, so a panic=unwind .ll shows census>0 with
  #  anchored=0 instead of silently reading as "no checks present")
  traps=$(grep -cE '(call|invoke)[^;]*@[^(]*panic' "$ll")

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
echo "Read: anchored/traps = Anchor coverage (multi-pred gap; rustc MERGES"
echo "      panic blocks aggressively -- expect a bigger gap than Swift);"
echo "      vacuous MUST be 0; audit any UNSAT via its core before celebrating."
