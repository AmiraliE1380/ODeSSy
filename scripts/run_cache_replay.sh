#!/usr/bin/env bash
# =============================================================================
# run_cache_replay.sh -- verdict-cache commit replay (HANDOFF §13.5, session 3).
# Static: only the compiler runs.
#
# For the last N first-parent commits of a repository that touch its sources
# (oldest first, ending at END), emit every translation unit's IR exactly as
# run_compile_cost.sh does, then time the pass on every module twice:
#   cached   oracle-pass<KNOBS;cache=DIR>, DIR carried over from the previous
#            commit (commit 1 seeds it and is reported but marked "seed")
#   nocache  oracle-pass<KNOBS>, the cold reference
# and check that both produce the same IR. Per module: functions with checks
# that hit / missed, both times, IR identity.
#
# Usage: REPO=zlib|zstd SRC=<git clone with history> [N=30] [END=<commit>]
#        [KNOBS=...] [OUT=results/cache/replay_<repo>] bash scripts/run_cache_replay.sh
# Output: $OUT/modules.csv (one row per commit x module), $OUT/commits.csv.
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
REPO="${REPO:?REPO=zlib|zstd}"; SRC="${SRC:?SRC=<clone>}"; N="${N:-30}"
KNOBS="${KNOBS:-heavy;frame;ind;mv;narrow;timeout=10000;threads=4}"
OUT="${OUT:-results/cache/replay_$REPO}"; PLUGIN="$ROOT/build/OraclePass.so"
W="$(mktemp -d)"; DIR="$W/cache"; mkdir -p "$OUT" "$W/ir"
trap 'rm -rf "$W"' EXIT
case "$REPO" in
  zlib) PATHS=('*.c' '*.h'); END="${END:-e3dc0a8}";;
  zstd) PATHS=(lib); END="${END:-5c7b7ba}";;
  *) echo "unknown REPO"; exit 1;;
esac
COMMITS=$(cd "$SRC" && git log --first-parent --format=%h -n "$N" "$END" -- "${PATHS[@]}" | tail -r 2>/dev/null || true)
[ -n "$COMMITS" ] || COMMITS=$(cd "$SRC" && git log --first-parent --format=%h -n "$N" "$END" -- "${PATHS[@]}" | tac)
echo "commit,idx,module,funcs,hits,misses,cached_s,nocache_s,same_ir" > "$OUT/modules.csv"
now() { python3 -c 'import time;print(time.time())'; }

emit() {   # emit all IR of the checked-out tree into $W/ir
  local tu s f
  rm -f "$W/ir"/*.ll
  if [ "$REPO" = zstd ]; then
    SAN="-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow"
    INC="-I$SRC/lib -I$SRC/lib/common -DZSTD_LEGACY_SUPPORT=0"
    (cd "$SRC/lib" && find common compress decompress dictBuilder -name '*.c' | sort) | while read -r tu; do
      s=$(basename "$tu" .c)
      clang -O3 -S -emit-llvm $SAN $INC "$SRC/lib/$tu" -o "$W/ir/$s.ll" 2>/dev/null || { rm -f "$W/ir/$s.ll"; continue; }
      grep -q 'llvm.ubsantrap' "$W/ir/$s.ll" || rm -f "$W/ir/$s.ll"
    done
  else
    SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
          -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow)
    INL=(-finline-functions -mllvm -inline-threshold=100000 -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000)
    for f in "$SRC"/*.c; do
      s=$(basename "$f" .c)
      case "$s" in example|minigzip) continue;; esac
      clang -O3 -S -emit-llvm "${SANF[@]}" "${INL[@]}" -DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1 -I"$SRC" \
        "$f" -o "$W/ir/$s.ll" 2>/dev/null || { rm -f "$W/ir/$s.ll"; continue; }
      grep -q 'llvm.ubsantrap' "$W/ir/$s.ll" || rm -f "$W/ir/$s.ll"
    done
  fi
}

i=0
for c in $COMMITS; do
  i=$((i+1))
  (cd "$SRC" && git checkout -q "$c") || { echo "[skip] $c: checkout"; continue; }
  emit
  for ll in "$W/ir"/*.ll; do
    [ -e "$ll" ] || continue
    m=$(basename "$ll" .ll)
    t0=$(now); opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$KNOBS;cache=$DIR>" -S "$ll" -o "$W/c.ll" 2>"$W/c.err"; t1=$(now)
    opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$KNOBS>" -S "$ll" -o "$W/n.ll" 2>/dev/null; t2=$(now)
    h=$(grep -c '^\[cache\] .* hit$' "$W/c.err"); ms=$(grep -c '^\[cache\] .* miss$' "$W/c.err")
    same=$(cmp -s <(tail -n +2 "$W/c.ll") <(tail -n +2 "$W/n.ll") && echo 1 || echo 0)
    python3 -c "print('$c,$i,$m,$((h+ms)),$h,$ms,%.3f,%.3f,$same' % ($t1-$t0, $t2-$t1))" >> "$OUT/modules.csv"
  done
  echo "[$i] $c done"
done
(cd "$SRC" && git checkout -q "$END")

python3 - "$OUT" <<'EOF'
import csv, sys, collections
out = sys.argv[1]
rows = list(csv.DictReader(open(f"{out}/modules.csv")))
by = collections.OrderedDict()
for r in rows: by.setdefault((r["idx"], r["commit"]), []).append(r)
with open(f"{out}/commits.csv", "w") as f:
    f.write("idx,commit,modules,funcs,hits,hit_rate,cached_s,nocache_s,speedup,same_ir_modules\n")
    for (i, c), rs in by.items():
        F = sum(int(r["funcs"]) for r in rs); H = sum(int(r["hits"]) for r in rs)
        C = sum(float(r["cached_s"]) for r in rs); Nn = sum(float(r["nocache_s"]) for r in rs)
        S = sum(int(r["same_ir"]) for r in rs)
        f.write(f"{i},{c},{len(rs)},{F},{H},{H/F if F else 0:.3f},{C:.2f},{Nn:.2f},{Nn/C if C else 0:.2f},{S}/{len(rs)}\n")
print(open(f"{out}/commits.csv").read())
EOF
