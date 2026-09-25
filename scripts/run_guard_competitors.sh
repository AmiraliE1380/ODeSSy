#!/usr/bin/env bash
# run_guard_competitors.sh -- three competitors on the same, individually tagged
# checks (HANDOFF §10.59). Static only.
#   0. tag: `oracle-pass<tag-checks>` redirects every discovered check to
#      odessy.chk(i32 id); nothing else changes.
#   A. ODeSSy mv, O3:        ODeSSy proves + versions + folds; O3 only DCEs.
#   B. ODeSSy mv-nofold, O3: ODeSSy synthesizes/verifies the guard and clones;
#                            LLVM -O3 must prove the fast-copy checks itself.
#   C. LLVM IRCE, O3:        LLVM extracts the range and versions the loop
#                            (irce is not in -O3; run first), then -O3.
#   ref. O3 alone.
# A check counts as "dead" for a competitor if its id vanishes from the module
# (proved everywhere) or it is removed on the hot path: the fast copy (A, B)
# or IRCE's main loop (C: range checks IRCE reports in a loop it changed).
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
KN="heavy;frame;ind;mv;narrow;timeout=10000;threads=1"
OUT="${OUT:-results/static/guard_competitors}"; mkdir -p "$OUT"; : > "$OUT/per_check.tsv"
FILES="${*:-$(ls logs/swift_triage/*.ll logs/julia_triage/*.ll logs/rust_triage/*.ll)}"
P=build/OraclePass.so
ids() { grep -oE 'call void @odessy\.chk\(i32 [0-9]+\)' "$1" | grep -oE '[0-9]+\)$' | tr -d ')' | sort -un; }
gone() { comm -23 <(printf "%s\n" $ALL | sort) <(ids "$1" | sort); }   # ids absent from module
n() { printf "%s\n" "$@" | grep -c '[0-9]'; }
printf "%-24s %-5s %6s | %5s | %5s %5s | %5s %5s | %5s %5s\n" kernel lang checks O3 mv:dead left nofoldO3 left irceO3 left | tee "$OUT/table.txt"
for f in $FILES; do
  case $f in *rust*) TR="traps=panic:odessy.chk"; L=Rust;; *julia*) TR="traps=bounds_error:boundserror:odessy.chk"; L=Julia;; *) TR="traps=odessy.chk"; L=Swift;; esac
  k=$(basename "$f" .ll); d="$OUT/${L}_$k"; mkdir -p "$d"
  opt -load-pass-plugin=$P -passes="oracle-pass<tag-checks;threads=1$([ $L != Swift ] && echo ";${TR%%:odessy.chk}")>" -S "$f" -o "$d/tag.ll" 2>/dev/null || { echo "$k tag failed"; continue; }
  ALL=$(ids "$d/tag.ll"); N=$(n $ALL); [ "$N" = 0 ] && { printf "%-24s %-5s %6s\n" "$k" $L 0 | tee -a "$OUT/table.txt"; continue; }
  # ref: O3
  opt -passes='default<O3>' -S "$d/tag.ll" -o "$d/o3.ll"; O3=$(gone "$d/o3.ll")
  # A: mv (hot-path folds identified via the nofold run's provenance log; same proofs)
  opt -load-pass-plugin=$P -passes="oracle-pass<$KN;$TR>" -S "$d/tag.ll" -o "$d/mv.ll" 2> "$d/mv.err"
  opt -load-pass-plugin=$P -passes="oracle-pass<$KN;mv-nofold;$TR>" -S "$d/tag.ll" -o "$d/nofold.ll" 2> "$d/nofold.err"
  FAST=$(grep -oE 'fast-trap id [0-9]+ .* chk [0-9-]+' "$d/nofold.err" | awk '{print $3, $NF}')
  FOLDED=$(echo "$FAST" | awk 'NF{print $2}' | sort -un)
  opt -passes='default<O3>' -S "$d/mv.ll" -o "$d/mv.O3.ll"   # production sandwich: folded checks are DCE'd here
  A=$(printf "%s\n" $(gone "$d/mv.O3.ll") $FOLDED | grep '[0-9]' | sort -un)
  # B: nofold + O3: vanished ids, plus fast copies whose fast.trap id O3 removed
  opt -passes='default<O3>' -S "$d/nofold.ll" -o "$d/nofold.O3.ll"
  LEFTF=$(grep -oE 'odessy\.fast\.trap\(i32 [0-9]+\)' "$d/nofold.O3.ll" | grep -oE '[0-9]+' | sort -un)
  BF=$(echo "$FAST" | while read t c; do [ -n "$t" ] && ! echo "$LEFTF" | grep -qx "$t" && echo "$c"; done)
  B=$(printf "%s\n" $(gone "$d/nofold.O3.ll") $BF | grep '[0-9]' | sort -un)
  # C: IRCE then O3
  opt -passes='function(irce)' -irce-print-range-checks -irce-print-changed-loops -S "$d/tag.ll" -o "$d/irce.ll" 2> "$d/irce.err"
  CH=$(awk '/irce: looking at loop/{split("",c)} /CheckUse/{if(match($0,/odessy\.chk[0-9]*/)){c[substr($0,RSTART,RLENGTH)]=1}} /irce: in function/{for(x in c)print x}' "$d/irce.err" \
       | while read b; do grep -A1 "^$b:" "$d/tag.ll" | grep -oE 'odessy\.chk\(i32 [0-9]+' | grep -oE '[0-9]+$'; done | sort -un)
  opt -passes='default<O3>' -S "$d/irce.ll" -o "$d/irce.O3.ll"
  C=$(printf "%s\n" $(gone "$d/irce.O3.ll") $CH | grep '[0-9]' | sort -un)
  printf "%-24s %-5s %6s | %5s | %5s %5s | %5s %5s | %5s %5s\n" "$k" $L $N $(n $O3) $(n $A) $((N-$(n $A))) $(n $B) $((N-$(n $B))) $(n $C) $((N-$(n $C))) | tee -a "$OUT/table.txt"
  for i in $ALL; do printf "%s\t%s\t%s\t%s\t%s\t%s\n" "$k" $i $(echo "$O3"|grep -qx $i&&echo 1||echo 0) $(echo "$A"|grep -qx $i&&echo 1||echo 0) $(echo "$B"|grep -qx $i&&echo 1||echo 0) $(echo "$C"|grep -qx $i&&echo 1||echo 0); done >> "$OUT/per_check.tsv"
done
awk -F'\t' '{t++;o+=$3;a+=$4;b+=$5;c+=$6} END{printf "TOTAL %d checks | O3 %d | mv %d (left %d) | nofold+O3 %d (left %d) | irce+O3 %d (left %d)\n",t,o,a,t-a,b,t-b,c,t-c}' "$OUT/per_check.tsv" | tee -a "$OUT/table.txt"
