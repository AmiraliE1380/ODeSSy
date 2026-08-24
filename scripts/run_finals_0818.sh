#!/usr/bin/env bash
# ODeSSy CGO server finals. NO set -e: one failure must not kill the night.
set -u
cd /mydata/ODeSSy || exit 1
export GIT_TERMINAL_PROMPT=0          # never hang waiting for credentials
PIN="numactl --cpunodebind=0 --membind=0"
S=0818
log(){ echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; echo; }
save(){ git add -A && git commit -q -m "server finals $S: $1" && (git push -q || echo "[push failed, commit is local]"); }

log "ENV"
for t in clang opt llc swiftc; do printf '%-8s %s\n' "$t" "$(command -v $t)"; done
[ "$(command -v opt)" = "/opt/llvm/bin/opt" ] || { echo FATAL: wrong opt; exit 1; }
case "$(command -v clang)" in */swift-toolchain/*) ;; *) echo "FATAL: wrong clang"; exit 1;; esac
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)" = "1" ] || echo "[WARN] no_turbo is OFF"

log "WORKLOADS"
mkdir -p perf_test
[ -f perf_test/sha_input.bin ] || head -c 1048576 /dev/urandom > perf_test/sha_input.bin

# ===================== TIMED PHASE (serial, stabilized) =====================
log "JOB1 zlib C runtime finals  (~3-4h, the long one)"
SPECS="none both anf" RUNS=20 SIZES="8 64 256" bash scripts/run_zlib_perf.sh 2>&1 | tee zlib_finals_server_$S.log
python3 tools/make_perf_report.py 2>&1 | tee zlib_finals_report_$S.log
save "zlib runtime finals"; sleep 120

log "JOB2a sha1 relottery replication A"
$PIN env KERNEL=native_bench/sha1.swift RUNARGS="900 perf_test/sha_input.bin" REPS=30 \
  bash scripts/run_swift_perf.sh 2>&1 | tee sha1_relottery_repA_$S.log
sleep 120
log "JOB2b sha1 relottery replication B"
$PIN env KERNEL=native_bench/sha1.swift RUNARGS="900 perf_test/sha_input.bin" REPS=30 \
  bash scripts/run_swift_perf.sh 2>&1 | tee sha1_relottery_repB_$S.log
save "sha1 relottery x2"; sleep 120

log "JOB3 adler32 server (calibration then finals)"
$PIN env KERNEL=native_bench/adler32.swift RUNARGS="7500 perf_test/sha_input.bin" REPS=3 \
  bash scripts/run_swift_perf.sh 2>&1 | tee adler32_calib_$S.log
$PIN env KERNEL=native_bench/adler32.swift RUNARGS="7500 perf_test/sha_input.bin" REPS=30 \
  bash scripts/run_swift_perf.sh 2>&1 | tee adler32_server_$S.log
save "adler32 server"

# ============ ANALYSIS-ONLY from here: machine load no longer matters ============
log "JOB4 timeout sweep"
[ -f evaluation/zlib/deflate_integer_unsigned_O1.ll ] || SPECS=unsigned OPTS=O1 bash run_zlib.sh
THREADS=8 bash scripts/run_timeout_sweep.sh 2>&1 | tee timeout_sweep_server_$S.log

log "JOB5 openssl elimination audit"
[ -f ../openssl/include/openssl/configuration.h ] || ( cd ../openssl && ./Configure no-asm >/dev/null 2>&1 )
clang -O3 -S -emit-llvm \
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow \
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow \
  -finline-functions -mllvm -inline-threshold=100000 \
  -I../openssl/include -I../openssl -I../openssl/crypto \
  -I../openssl/providers/common/include \
  ../openssl/crypto/sha/sha256.c -o evaluation/openssl_sha256_both_O3.ll 2>&1 | tail -5
if [ -s evaluation/openssl_sha256_both_O3.ll ]; then
  echo "traps in: $(grep -c 'call void @llvm.ubsantrap' evaluation/openssl_sha256_both_O3.ll)"
  opt -load-pass-plugin=build/OraclePass.so \
      -passes='oracle-pass<vacuity;heavy;ldeq;threads=16;timeout=300>' \
      -disable-output evaluation/openssl_sha256_both_O3.ll > openssl_audit_$S.log 2>&1
  echo "UNSAT=$(grep -c UNSAT openssl_audit_$S.log) VACUOUS=$(grep -c '\[VACUOUS\]' openssl_audit_$S.log)"
else
  echo "[openssl compile FAILED — skipped]"
fi
save "timeout sweep + openssl audit"
log "ALL DONE"
