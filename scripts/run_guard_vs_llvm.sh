#!/usr/bin/env bash
# run_guard_vs_llvm.sh -- can LLVM prove the fast-copy checks dead once it is
# HANDED the guard that ODeSSy synthesized? (HANDOFF §10.58)
#
# For each kernel:
#   1. ODeSSy with `mv-nofold`: synthesize + verify the guard and clone the
#      loop exactly as in production, but KEEP every fast-copy check,
#      redirecting it to a uniquely numbered `odessy.fast.trap(i32 id)`.
#   2. Run stock `-O3` on that IR. A numbered trap can disappear only if
#      LLVM proves that exact branch dead (the fast loop itself survives;
#      checked below). Surviving ids = checks LLVM cannot prove even with
#      the guard in hand.
#   3. Attribute: which ids a lone `sccp` removes (the pass that turned out
#      to exploit dominating guard conditions).
#   4. LLVM's own closest machinery on the ORIGINAL IR: does IRCE (inductive
#      range-check elimination, not in -O3 by default) transform any loop?
#
# Static only; no timing. Usage: bash scripts/run_guard_vs_llvm.sh [files...]
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
KN="heavy;frame;ind;mv;narrow;mv-nofold;timeout=10000;threads=1"
OUT="${OUT:-results/static/guard_vs_llvm}"; mkdir -p "$OUT"
FILES="${*:-$(ls logs/swift_triage/*.ll logs/julia_triage/*.ll logs/rust_triage/*.ll)}"
ids() { grep -oE 'call void @odessy\.fast\.trap\(i32 [0-9]+\)' "$1" 2>/dev/null | grep -oE '[0-9]+\)$' | tr -d ')' | sort -un | tr '\n' ' '; }
cnt() { local n; n=$(echo "$1" | wc -w | tr -d ' '); echo "$n"; }

printf "%-26s %5s %7s %9s %8s %9s %6s\n" kernel lang checks O3-kills survive sccp-kill irce
for f in $FILES; do
  case $f in *rust*) TR=";traps=panic"; L=Rust;; *julia*) TR=";traps=bounds_error:boundserror"; L=Julia;; *) TR=""; L=Swift;; esac
  k=$(basename "$f" .ll); d="$OUT/${L}_$k"; mkdir -p "$d"
  opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<$KN$TR>" -S "$f" -o "$d/nofold.ll" 2> "$d/nofold.err" || { printf "%-26s %5s  pass failed\n" "$k" "$L"; continue; }
  PRE=$(ids "$d/nofold.ll"); NPRE=$(cnt "$PRE")
  IRCE=$(opt -passes='function(irce)' -irce-print-changed-loops -disable-output "$f" 2>&1 | grep -ci "irce")
  if [ "$NPRE" = 0 ]; then printf "%-26s %5s %7s %9s %8s %9s %6s\n" "$k" "$L" 0 - - - "$IRCE"; continue; fi
  opt -passes=verify -disable-output "$d/nofold.ll" || { printf "%-26s %5s  VERIFY FAILED\n" "$k" "$L"; continue; }
  opt -passes='default<O3>' -S "$d/nofold.ll" -o "$d/nofold.O3.ll"
  opt -passes='function(sccp)' -S "$d/nofold.ll" -o "$d/nofold.sccp.ll"
  POST=$(ids "$d/nofold.O3.ll"); NPOST=$(cnt "$POST")
  SPOST=$(ids "$d/nofold.sccp.ll"); NSK=$(( NPRE - $(cnt "$SPOST") ))
  FAST=$(grep -c 'mv\.fast' "$d/nofold.O3.ll")
  printf "%-26s %5s %7s %9s %8s %9s %6s\n" "$k" "$L" "$NPRE" "$(( NPRE - NPOST ))" "$NPOST" "$NSK" "$IRCE"
  # per-id detail: the guard H that justified each kept check, and its fate
  awk '/Found UB Trap/{h="?"} /DEAD UNDER HYPOTHESIS/{sub(/.*H = /,""); sub(/ \(.*$/,""); h=$0} /\[mv-nofold\] fast-trap id/{match($0,/id [0-9]+/); print substr($0,RSTART+3,RLENGTH-3)"\t"h}' "$d/nofold.err" \
    | while IFS=$'\t' read id h; do
        fate="SURVIVES -O3"; case " $POST " in *" $id "*) ;; *) fate="removed by -O3";; esac
        printf "%s\t%s\t%s\t%s\n" "$k" "$id" "$fate" "$h"
      done >> "$OUT/per_check.tsv"
  echo "$FAST" > "$d/fast_blocks_after_O3.txt"
done
echo; echo "per-check detail: $OUT/per_check.tsv"
