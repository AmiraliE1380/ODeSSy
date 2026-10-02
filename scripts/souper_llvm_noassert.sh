#!/usr/bin/env bash
# =============================================================================
# souper_llvm_noassert.sh -- rebuild Souper's LLVM 18.1.6 WITHOUT assertions, so
# its compile times are comparable with ODeSSy's LLVM (/opt/llvm: "Optimized
# build", no assertions). Reuses the existing build directory (only what changes
# is recompiled), reinstalls, then rebuilds Souper against it. Z3 and Alive2 are
# untouched. Clean environment as in install_souper.sh. HANDOFF §11.7.
# Usage (tmux): bash scripts/souper_llvm_noassert.sh 2>&1 | tee /mydata/souper_noassert.log
# =============================================================================
set -euo pipefail
DEST="${DEST:-/mydata/souper}"
PRESERVE="${PRESERVE:-/proj/odessy-PG0/odessy-preserve}"
CLEAN=(env -i HOME="$HOME" TERM="${TERM:-xterm}" PATH=/usr/local/bin:/usr/bin:/bin CC=gcc CXX=g++)
B="$DEST/third_party/llvm-Release-build"
log() { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
[ -d "$B" ] || { echo "FATAL: $B missing (run install_souper.sh first)"; exit 1; }

log "reconfigure LLVM 18.1.6 without assertions"
( cd "$B" && "${CLEAN[@]}" cmake -DLLVM_ENABLE_ASSERTIONS=OFF . )
log "rebuild and reinstall LLVM"
"${CLEAN[@]}" ninja -C "$B"
"${CLEAN[@]}" ninja -C "$B" install
"$DEST/third_party/llvm-Release-install/bin/opt" --version | head -3

log "rebuild Souper against it"
( cd "$DEST/build" && "${CLEAN[@]}" cmake -G Ninja -DCMAKE_BUILD_TYPE=Release .. && "${CLEAN[@]}" ninja )
ls -la "$DEST/build/libsouperPass.so"

log "archive to NFS"
tar czf "$PRESERVE/souper-build.tgz" -C "$(dirname "$DEST")" "$(basename "$DEST")/build" "$(basename "$DEST")/third_party"
ls -la "$PRESERVE/souper-build.tgz"
log "SOUPER NOASSERT DONE"
