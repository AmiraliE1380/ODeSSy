#!/usr/bin/env bash
# =============================================================================
# run_zstd_audit.sh -- zstd whole-library ELIMINATION AUDIT (analysis-only).
# Second flagship: 199 signed / 6615 unsigned / 481 bounds traps (matrix v3).
# Per (spec x variant): compile every zstd lib TU to .ll, run
# oracle-pass<vacuity;threads=N[;ldeq]>, aggregate verdicts from the
# per-module logs. Variants light|ldeq = the built-in LDEQ ablation.
# Analysis-only: no stabilization needed; verdicts are deterministic.
# Knobs: SPECS="signed unsigned bounds both" VARIANTS="light ldeq"
#        THREADS=16 TIMEOUT_SECS=900 ZSTD=/path (default beside repo)
# Out  : evaluation/zstd_audit.csv (+ logs/compilations/zstd.* per TU)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZSTD="${ZSTD:-$PL_ROOT/zstd}"
SPECS=${SPECS:-"signed unsigned bounds both"}
VARIANTS=${VARIANTS:-"light ldeq"}
THREADS=${THREADS:-16}
TIMEOUT_SECS=${TIMEOUT_SECS:-900}
W="$ROOT/zstd_audit_test"; mkdir -p "$W" "$ROOT/evaluation" logs/compilations logs/opt_runs
CSV="$ROOT/evaluation/zstd_audit.csv"
[ -f "$CSV" ] || echo "spec,variant,tu,traps,unsat,sat,unknown,vacuous,skips,wall_s" > "$CSV"

cd "$ROOT" || exit 1
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }

san_flags() {
  case "$1" in
    signed)   echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    unsigned) echo "-fsanitize=unsigned-integer-overflow -fsanitize-trap=unsigned-integer-overflow" ;;
    bounds)   echo "-fsanitize=bounds -fsanitize-trap=bounds" ;;
    both)     echo "-fsanitize=signed-integer-overflow,unsigned-integer-overflow -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow" ;;
  esac
}
# all non-legacy lib TUs
mapfile -t TUS < <(cd "$ZSTD/lib" && find common compress decompress -name '*.c' | sort)
echo "==== zstd audit: ${#TUS[@]} TUs x [$SPECS] x [$VARIANTS], threads=$THREADS ===="

for spec in $SPECS; do
  FL=$(san_flags "$spec")
  for tu in "${TUS[@]}"; do
    stem="zstd.${spec}.$(basename "$tu" .c)"
    ll="$W/$stem.ll"
    clang -O3 -S -emit-llvm $FL -I"$ZSTD/lib" -I"$ZSTD/lib/common" \
      "$ZSTD/lib/$tu" -o "$ll" 2>/dev/null || { echo "  [skip] $stem (clang)"; continue; }
    traps=$(grep -c 'call void @llvm.ubsantrap' "$ll")
    [ "$traps" -eq 0 ] && continue                     # nothing to audit
    for var in $VARIANTS; do
      P="oracle-pass<vacuity;threads=${THREADS}>"
      [ "$var" = "ldeq" ] && P="oracle-pass<vacuity;ldeq;threads=${THREADS}>"
      t0=$(date +%s.%N)
      timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
        -passes="$P" -disable-output "$ll" > "logs/opt_runs/$stem.$var.log" 2>&1
      rc=$?
      t1=$(date +%s.%N)
      wall=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.1f", b-a}')
      vlog="logs/compilations/$stem.txt"     # module log (stem from .ll name)
      u=0; s=0; k=0; v=0; sk=0
      if [ -f "$vlog" ]; then
        u=$(grep -c 'UNSAT' "$vlog"); s=$(grep -c 'SAT (WARNING' "$vlog")
        k=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
        v=$(grep -c '\[VACUOUS\]' "$vlog"); sk=$(grep -c '\[Skip\]' "$vlog")
      fi
      [ $rc -eq 124 ] && sk="TIMEOUT"
      echo "$spec,$var,$(basename "$tu" .c),$traps,$u,$s,$k,$v,$sk,$wall" >> "$CSV"
      printf '  %-10s %-6s %-24s traps=%-5s unsat=%-4s sat=%-5s vac=%s wall=%ss\n' \
        "$spec" "$var" "$(basename "$tu" .c)" "$traps" "$u" "$s" "$v" "$wall"
    done
  done
done
echo ""
echo "CSV: $CSV"
awk -F, 'NR>1 && $9!="TIMEOUT" {u[$1","$2]+=$5; t[$1","$2]+=$4}
     END{print "== TOTALS (spec,variant: unsat/traps) ==";
         for (k in u) printf "  %-18s %d / %d  (%.1f%%)\n", k, u[k], t[k], t[k]?u[k]/t[k]*100:0}' "$CSV"
