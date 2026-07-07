#!/usr/bin/env bash
# =============================================================================
# SMT Oracle Evaluation -- uses the ALREADY-CLONED projects under ~/michigan/pl
#   (zstd, zlib, openssl, polybench; LZ4 already done separately)
#
# Sanitizer scope: INTEGER OVERFLOW ONLY (signed + unsigned).
# -fsanitize-trap is REQUIRED: without it clang emits calls to
# __ubsan_handle_* runtime handlers instead of llvm.ubsantrap, and the
# Oracle's Hunter (which greps for "ubsantrap") finds nothing.
#
# NOTE: no `set -e` here on purpose -- if one benchmark's include paths
# drift, we still want the others (and the oracle runs) to proceed.
# =============================================================================

PL_ROOT="$HOME/michigan/pl"
ORACLE_ROOT="$PL_ROOT/smt-compiler-oracle"

ZSTD_SRC="$PL_ROOT/zstd"
ZLIB_SRC="$PL_ROOT/zlib"
OPENSSL_SRC="$PL_ROOT/openssl"
POLYBENCH_SRC="$PL_ROOT/polybench"

mkdir -p "$ORACLE_ROOT/evaluation/zstd" \
         "$ORACLE_ROOT/evaluation/zlib" \
         "$ORACLE_ROOT/evaluation/openssl" \
         "$ORACLE_ROOT/evaluation/polybench" \
         "$ORACLE_ROOT/logs/compilations"

# Keep the flag list as an ARRAY, not a string -- a quoted string breaks
# the comma-separated sanitizer list when word-split by the shell.
OVF_FLAGS=(-O3 -S -emit-llvm
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow)

# =============================================================================
# STEP 0: Rebuild the pass with the new fixes
# =============================================================================
( cd "$ORACLE_ROOT/build" && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }
cd "$ORACLE_ROOT"

# =============================================================================
# STEP 1: Compile each benchmark to sanitized LLVM IR
# =============================================================================

# --- zstd: self-contained headers under lib/ ------------------------------
echo "==== compiling zstd ===="
clang "${OVF_FLAGS[@]}" -DZSTD_DISABLE_ASM \
  -I"$ZSTD_SRC/lib" -I"$ZSTD_SRC/lib/common" \
  "$ZSTD_SRC/lib/compress/zstd_compress.c" \
  -o "$ORACLE_ROOT/evaluation/zstd/zstd_integer_O3.ll"

# --- zlib: zconf.h already present in your tree (it's checked in) ----------
echo "==== compiling zlib ===="
clang "${OVF_FLAGS[@]}" -I"$ZLIB_SRC" \
  "$ZLIB_SRC/deflate.c" \
  -o "$ORACLE_ROOT/evaluation/zlib/deflate_integer_O3.ll"

# --- openssl: needs a one-time ./Configure to generate configuration.h ----
# Only runs Configure if the generated header is missing (it's slow).
echo "==== compiling openssl ===="
if [ ! -f "$OPENSSL_SRC/include/openssl/configuration.h" ]; then
  echo "  (running one-time ./Configure no-asm ...)"
  ( cd "$OPENSSL_SRC" && ./Configure no-asm )
fi
clang "${OVF_FLAGS[@]}" \
  -I"$OPENSSL_SRC/include" -I"$OPENSSL_SRC" \
  -I"$OPENSSL_SRC/crypto" -I"$OPENSSL_SRC/providers/common/include" \
  "$OPENSSL_SRC/crypto/sha/sha256.c" \
  -o "$ORACLE_ROOT/evaluation/openssl/sha256_integer_O3.ll"

# --- polybench: single .c + the polybench.c harness, no config needed ------
# jacobi-2d is a good dense index-arithmetic target. Use MINI dataset so the
# IR is analyzable in seconds; swap to -DLARGE_DATASET for the real run.
echo "==== compiling polybench (jacobi-2d) ===="
clang "${OVF_FLAGS[@]}" -DMINI_DATASET \
  -I"$POLYBENCH_SRC/utilities" \
  -I"$POLYBENCH_SRC/stencils/jacobi-2d" \
  "$POLYBENCH_SRC/stencils/jacobi-2d/jacobi-2d.c" \
  "$POLYBENCH_SRC/utilities/polybench.c" \
  -o "$ORACLE_ROOT/evaluation/polybench/jacobi2d_integer_O3.ll"

# =============================================================================
# STEP 2: Count injected overflow traps in each baseline
# =============================================================================
echo ""
echo "==== trap inventory ===="
BENCHES=(
  "evaluation/zstd/zstd_integer_O3.ll"
  "evaluation/zlib/deflate_integer_O3.ll"
  "evaluation/openssl/sha256_integer_O3.ll"
  "evaluation/polybench/jacobi2d_integer_O3.ll"
)
for f in "${BENCHES[@]}"; do
  if [ -f "$f" ]; then
    printf '%-48s : %3s ubsantrap sites, %3s overflow intrinsics\n' \
      "$f" \
      "$(grep -c 'llvm.ubsantrap' "$f")" \
      "$(grep -c '.with.overflow' "$f")"
  else
    printf '%-48s : [MISSING -- compile step failed]\n' "$f"
  fi
done

# =============================================================================
# STEP 3: Run the Oracle (analysis only; verdicts also land in
# logs/compilations/oracle_pass_<timestamp>.txt)
# =============================================================================
echo ""
for f in "${BENCHES[@]}"; do
  [ -f "$f" ] || continue
  echo "================ ORACLE: $f ================"
  opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
      -disable-output "$f"
done

# =============================================================================
# STEP 4: Produce optimized IR and measure trap deletion.
# The Oracle constant-folds the trap branch; simplifycfg+adce then physically
# delete the now-dead trap block; verify guarantees the IR stays well-formed.
# The before->after ubsantrap delta is your headline metric.
# =============================================================================
echo ""
echo "==== trap elimination results ===="
NAMES=(
  "zstd/zstd_integer"
  "zlib/deflate_integer"
  "openssl/sha256_integer"
  "polybench/jacobi2d_integer"
)
for name in "${NAMES[@]}"; do
  in="evaluation/${name}_O3.ll"
  out="evaluation/${name}_oracle_O3.ll"
  [ -f "$in" ] || continue
  opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass,simplifycfg,adce,verify" \
      -S "$in" -o "$out"
  before=$(grep -c 'llvm.ubsantrap' "$in")
  after=$(grep -c 'llvm.ubsantrap' "$out" 2>/dev/null || echo 0)
  printf '%-32s : traps %3s -> %3s\n' "$name" "$before" "$after"
done