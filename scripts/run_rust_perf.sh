#!/bin/bash
# run_rust_perf.sh -- O3-sandwich runtime experiment for a Rust kernel
# (HANDOFF §10.18), the Rust twin of run_swift_perf.sh.
#
#   rustc -O (checked) --emit=llvm-ir,obj,link --print link-args
#     base   : opt O3            -> llc -> relink
#     base2x : opt O3 ; opt O3   -> llc -> relink   (round-trip control)
#     oracle : oracle-pass ; O3  -> llc -> relink
#   ceiling  : checked binary vs UNCHECKED twin (<kernel>_unc.rs, built
#              with -C overflow-checks=off) -- the checks-off ceiling.
#
# Relinking: rustc cannot consume IR, so we capture the linker command it
# prints (--print link-args) and swap the kernel object for ours. All
# configs go through the same llc, so codegen is identical modulo the IR.
#
# Env : KERNEL (native_bench/lz77_bench.rs) RUNARGS ("20") REPS (30)
#       ORACLE_PASSES (oracle-pass<heavy;ldeq;frame;timeout=300;threads=8;traps=panic>)
#       LLC_FLAGS ("" ; e.g. -mcpu=apple-m1 -align-loops=32)
# Needs: rustc, pinned opt+llc on PATH, python3; run from repo root.
set -u
ROOT=$(cd "$(dirname "$0")/.." && pwd)
KERNEL="${KERNEL:-$ROOT/native_bench/lz77_bench.rs}"
RUNARGS="${RUNARGS:-20}"
REPS="${REPS:-30}"
ORACLE_PASSES="${ORACLE_PASSES:-oracle-pass<heavy;ldeq;frame;timeout=300;threads=8;traps=panic>}"
stem=$(basename "$KERNEL" .rs)
UNC="$(dirname "$KERNEL")/${stem}_unc.rs"
W="$ROOT/perf_test/rust_$stem"; rm -rf "$W"; mkdir -p "$W"
RFLAGS="-O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1"
echo "kernel=$KERNEL args=$RUNARGS reps=$REPS"; echo "rustc: $(rustc --version)"; echo "passes: $ORACLE_PASSES"

# ---- emit IR + object + link line ----
( cd "$W" && rustc $RFLAGS -C save-temps --emit=llvm-ir,obj,link -o "$W/checked" --print link-args "$KERNEL" 2>/dev/null \
    | grep -v '^warning' | grep 'cc\|ld\|clang' | tail -1 > "$W/link.txt" ) || { echo "[FATAL] rustc failed"; exit 1; }
[ -s "$W/link.txt" ] || { echo "[FATAL] no link line captured"; exit 1; }
OBJ=$(tr ' ' '\n' < "$W/link.txt" | tr -d '"' | grep '\.o$' | grep -v 'symbols\.o' | grep "$stem\|checked" | head -1)
[ -n "$OBJ" ] || OBJ=$(tr ' ' '\n' < "$W/link.txt" | tr -d '"' | grep '\.o$' | grep -v 'symbols\.o' | head -1)
[ -n "$OBJ" ] || { echo "[FATAL] cannot find kernel .o in link line"; exit 1; }
echo "kernel object: $OBJ"

build() { # cfg
  local cfg="$1"; local ll="$W/$stem.$cfg.ll"; local CLEANUP="default<O3>"
  case $cfg in
    base)   opt -passes="$CLEANUP" -S "$W/checked.ll" -o "$ll" || return 1 ;;
    base2x) opt -passes="$CLEANUP" -S "$W/checked.ll" -o "$W/.t.ll" && opt -passes="$CLEANUP" -S "$W/.t.ll" -o "$ll" || return 1 ;;
    oracle) opt -load-pass-plugin="$ROOT/build/OraclePass.so" -passes="$ORACLE_PASSES,$CLEANUP" -S "$W/checked.ll" -o "$ll" 2>"$W/oracle.err" || return 1
            elim=$(grep -oE 'Total Traps Eliminated: [0-9]+' "$W/oracle.err" | grep -oE '[0-9]+$' | paste -sd+ - | bc); echo "  oracle eliminated: ${elim:-?} (UNSAT verdicts: $(grep -c -- '-> UNSAT' "$W/oracle.err"))" ;;
  esac
  llc -O2 -relocation-model=pic ${LLC_FLAGS:-} -filetype=obj "$ll" -o "$W/$cfg.o" || return 1
  # relink with our object in place of rustc's
  sed "s#$OBJ#$W/$cfg.o#g; s#\"$W/checked\"#\"$W/$cfg\"#g; s# -o \"[^\"]*checked\"# -o \"$W/$cfg\"#" "$W/link.txt" > "$W/link.$cfg.sh"
  bash "$W/link.$cfg.sh" || return 1
  echo "  built $cfg   traps $(grep -c 'panic_bounds_check\|panic_const\|core9panicking' "$ll")   bin $(wc -c < "$W/$cfg") B"
}
for c in base base2x oracle; do build $c || { echo "[FATAL] build $c failed"; exit 1; }; done

# ---- unchecked twin (ceiling) ----
HAVE_UNC=0
if [ -f "$UNC" ]; then
  rustc -O -C overflow-checks=off -C panic=abort -C debuginfo=0 -C codegen-units=1 -o "$W/unchecked" "$UNC" && HAVE_UNC=1
fi

# ---- byte-identical gate ----
ref=$("$W/checked" $RUNARGS)
for c in base base2x oracle; do [ "$("$W/$c" $RUNARGS)" = "$ref" ] || { echo "[FATAL] output mismatch in $c"; exit 1; }; done
[ $HAVE_UNC = 1 ] && { [ "$("$W/unchecked" $RUNARGS)" = "$ref" ] || { echo "[FATAL] unchecked output mismatch"; exit 1; }; }
echo "  outputs byte-identical across all configs -- gate passed"

# ---- timing ----
python3 - "$W" "$REPS" "$HAVE_UNC" $RUNARGS <<'EOF'
import subprocess,time,sys,statistics,random
W,REPS,HU=sys.argv[1],int(sys.argv[2]),sys.argv[3]=='1'; args=sys.argv[4:]
cfgs=['base','base2x','oracle']+(['checked','unchecked'] if HU else [])
t={c:[] for c in cfgs}
for r in range(REPS):
    order=cfgs[:]; random.shuffle(order)
    for c in order:
        a=time.perf_counter(); subprocess.run([f"{W}/{c}"]+args,capture_output=True); t[c].append(time.perf_counter()-a)
med={c:statistics.median(v) for c,v in t.items()}
print(f"\n{'config':10} {'median':>9} {'min':>9} {'avg':>9}")
for c in cfgs: print(f"{c:10} {med[c]:9.4f} {min(t[c]):9.4f} {statistics.mean(t[c]):9.4f}")
print(f"oracle vs base  : {(med['base']/med['oracle']-1)*100:+.2f}% (median)")
print(f"oracle vs base2x: {(med['base2x']/med['oracle']-1)*100:+.2f}% (median)")
if HU:
    ceil=(med['checked']/med['unchecked']-1)*100
    print(f"ceiling (checked vs unchecked twin): {ceil:.2f}%")
    print(f"recovery: {((med['base']/med['oracle']-1)*100)/ceil*100:.1f}% of ceiling")
EOF
