#!/usr/bin/env bash
# ODeSSy finals round 2 — the perf_test-collision reruns + ceilings + openssl.
# Serial, stabilized. NO zlib job in here, so perf_test/ is never wiped.
set -u
cd /mydata/ODeSSy || exit 1
export GIT_TERMINAL_PROMPT=0
PIN="numactl --cpunodebind=0 --membind=0"
S=0818b
log(){ echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; echo; }
save(){ git add -A && git commit -q -m "server finals $S: $1" && (git push -q || echo "[push failed, commit local]"); }

log "ENV + workloads"
case "$(command -v clang)" in */swift-toolchain/*) ;; *) echo FATAL wrong clang; exit 1;; esac
[ "$(command -v opt)" = /opt/llvm/bin/opt ] || { echo FATAL wrong opt; exit 1; }
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)" = 1 ] || echo "[WARN] no_turbo OFF"
mkdir -p perf_test
head -c 1048576 /dev/urandom > perf_test/sha_input.bin        # unconditional recreate
ls -la perf_test/sha_input.bin

log "SMOKE: sha1 gate must pass (REPS=1) before burning time"
$PIN env KERNEL=native_bench/sha1.swift RUNARGS="900 perf_test/sha_input.bin" REPS=1 \
  bash run_swift_perf.sh 2>&1 | tee sha1_smoke_$S.log
grep -q 'byte-identical' sha1_smoke_$S.log || { echo "FATAL: gate still failing — STOP"; exit 1; }

log "JOB1a sha1 relottery A (REPS=30)"
$PIN env KERNEL=native_bench/sha1.swift RUNARGS="900 perf_test/sha_input.bin" REPS=30 \
  bash run_swift_perf.sh 2>&1 | tee sha1_relottery_repA_$S.log
sleep 90
log "JOB1b sha1 relottery B (REPS=30)"
$PIN env KERNEL=native_bench/sha1.swift RUNARGS="900 perf_test/sha_input.bin" REPS=30 \
  bash run_swift_perf.sh 2>&1 | tee sha1_relottery_repB_$S.log
save "sha1 relottery x2 (rerun after perf_test collision)"; sleep 90

log "JOB2 sha256 anchor (REPS=30) — validates pipeline vs known +4.7/+5.0"
$PIN env KERNEL=native_bench/sha256.swift RUNARGS="600 perf_test/sha_input.bin" REPS=30 \
  bash run_swift_perf.sh 2>&1 | tee sha256_anchor_$S.log
save "sha256 anchor"; sleep 90

log "JOB3 adler32 — real calibration then finals"
swiftc -O native_bench/adler32.swift -o /tmp/adler_cal 2>/dev/null
T0=$(date +%s.%N); /tmp/adler_cal 1000 perf_test/sha_input.bin >/dev/null; T1=$(date +%s.%N)
ITERS=$(python3 -c "t=$T1-$T0; print(max(200,min(60000,int(1000*5.0/t))))")
echo "  calibration: 1000 iters took $(python3 -c "print(f'{$T1-$T0:.2f}')")s -> ITERS=$ITERS (~5s target)"
$PIN env KERNEL=native_bench/adler32.swift RUNARGS="$ITERS perf_test/sha_input.bin" REPS=30 \
  bash run_swift_perf.sh 2>&1 | tee adler32_server_$S.log
save "adler32 server ITERS=$ITERS"; sleep 90

log "JOB4 server ceilings: -O vs -Ounchecked, 5 runs each (median user-facing wall)"
ceil(){ # $1 stem  $2 runargs
  local src=native_bench/$1.swift
  swiftc -O          "$src" -o /tmp/$1.chk 2>/dev/null || { echo "  $1: build fail"; return; }
  swiftc -Ounchecked "$src" -o /tmp/$1.unc 2>/dev/null || { echo "  $1: build fail"; return; }
  for v in chk unc; do
    ts=""
    for i in 1 2 3 4 5; do
      t0=$(date +%s.%N); $PIN /tmp/$1.$v $2 >/dev/null 2>&1; t1=$(date +%s.%N)
      ts="$ts $(python3 -c "print(f'{$t1-$t0:.3f}')")"
    done
    m=$(python3 -c "import statistics,sys; print(f'{statistics.median([float(x) for x in sys.argv[1:]]):.3f}')" $ts)
    echo "  $1 $v runs:$ts median=$m"
  done
}
{ ceil sha256  "600 perf_test/sha_input.bin"
  ceil sha1    "900 perf_test/sha_input.bin"
  ceil adler32 "$ITERS perf_test/sha_input.bin"
} 2>&1 | tee ceilings_server_$S.log
save "server ceilings"

log "JOB5 openssl audit (generated headers this time)"
( cd ../openssl && ./Configure no-asm >/dev/null 2>&1 && make build_generated >/dev/null 2>&1 )
clang -O3 -S -emit-llvm \
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow \
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow \
  -finline-functions -mllvm -inline-threshold=100000 \
  -I../openssl/include -I../openssl -I../openssl/crypto \
  -I../openssl/providers/common/include \
  ../openssl/crypto/sha/sha256.c -o evaluation/openssl_sha256_both_O3.ll 2>&1 | tail -3
if [ -s evaluation/openssl_sha256_both_O3.ll ]; then
  echo "traps in: $(grep -c 'call void @llvm.ubsantrap' evaluation/openssl_sha256_both_O3.ll)"
  opt -load-pass-plugin=build/OraclePass.so \
      -passes='oracle-pass<vacuity;heavy;ldeq;threads=16;timeout=300>' \
      -disable-output evaluation/openssl_sha256_both_O3.ll > openssl_audit_$S.log 2>&1
  echo "UNSAT=$(grep -c UNSAT openssl_audit_$S.log) SAT=$(grep -c 'SAT (WARNING' openssl_audit_$S.log) VACUOUS=$(grep -c '\[VACUOUS\]' openssl_audit_$S.log) SKIPS=$(grep -c '\[Skip\]' openssl_audit_$S.log)"
else
  echo "[openssl compile still failing — record as not-run, move on]"
fi
save "openssl audit"

log "TEARDOWN: mirror everything off the dying node"
rsync -a --exclude=build --exclude=.git /mydata/ODeSSy/ /proj/odessy-PG0/odessy-final-$S/
echo "mirrored to /proj/odessy-PG0/odessy-final-$S"
log "ALL DONE — verify 'git status' says up to date, then you may sleep"
