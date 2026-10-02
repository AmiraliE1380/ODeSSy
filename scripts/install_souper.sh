#!/usr/bin/env bash
# =============================================================================
# install_souper.sh -- build Souper and its pinned dependencies (LLVM 18.1.6
# fork, Z3 4.13, Alive2) in /mydata/souper, isolated from ODeSSy's toolchain
# (HANDOFF §11). Every build step runs in a clean environment: system gcc/g++,
# PATH=/usr/local/bin:/usr/bin:/bin, so neither /opt/llvm nor the Swift
# toolchain's clang can be picked up. Our toolchain is never modified.
# At the end the build is archived to /proj (NFS), which survives the node.
# Usage (tmux): bash scripts/install_souper.sh 2>&1 | tee /mydata/souper_install.log
# =============================================================================
set -euo pipefail
DEST="${DEST:-/mydata/souper}"
PRESERVE="${PRESERVE:-/proj/odessy-PG0/odessy-preserve}"
CLEAN=(env -i HOME="$HOME" TERM="${TERM:-xterm}" PATH=/usr/local/bin:/usr/bin:/bin CC=gcc CXX=g++)
log() { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }

log "system packages"
sudo apt-get install -y re2c ninja-build cmake python3 git build-essential

log "clone"
if [ ! -d "$DEST/.git" ]; then git clone https://github.com/google/souper.git "$DEST"; fi
git -C "$DEST" rev-parse HEAD | tee /mydata/souper_commit.txt

log "patch build_deps.sh: stock LLVM 18.1.6, shallow fetch"
# Upstream build_deps.sh pins regehr/llvm-project@disable-peepholes-llvmorg-18.1.6, a ref
# that does not exist (the fork's newest Souper tag is for LLVM 17.0.3). Use the official
# llvmorg-18.1.6 tag instead -- the version Souper targets, and an unweakened -O3 for
# Souper's baseline builds (HANDOFF §11.6). Fetch that one commit, not LLVM's history.
cd "$DEST"
git checkout -- build_deps.sh
sed -i 's|^llvm_repo=.*|llvm_repo=https://github.com/llvm/llvm-project.git|;
        s|^llvm_commit=.*|llvm_commit=llvmorg-18.1.6|;
        s|git fetch origin \$llvm_commit|git fetch --depth 1 origin $llvm_commit|' build_deps.sh
grep -nE "^llvm_repo=|^llvm_commit=|git fetch" build_deps.sh
rm -rf "$DEST/third_party"            # start the dependency build from scratch

log "dependencies: LLVM 18.1.6, Z3, Alive2 (the long part)"
( cd "$DEST" && "${CLEAN[@]}" ./build_deps.sh Release )

log "Souper itself"
mkdir -p "$DEST/build"
( cd "$DEST/build" && "${CLEAN[@]}" cmake -G Ninja -DCMAKE_BUILD_TYPE=Release .. && "${CLEAN[@]}" ninja )

log "verify"
ls "$DEST/third_party/"
OPT18=$(ls -d "$DEST"/third_party/llvm-*-install/bin/opt 2>/dev/null | head -1)
[ -n "$OPT18" ] && "$OPT18" --version | head -3 || echo "WARNING: no third_party/llvm-*-install/bin/opt found -- check the listing above"
ls "$DEST/build" | grep -iE "souper|\.so$" || true
echo "our opt is still: $(command -v opt || echo '(not on this PATH)')"

log "archive to NFS"
mkdir -p "$PRESERVE"
tar czf "$PRESERVE/souper-build.tgz" -C "$(dirname "$DEST")" "$(basename "$DEST")/build" "$(basename "$DEST")/third_party"
ls -la "$PRESERVE/souper-build.tgz"
log "SOUPER INSTALL DONE"
