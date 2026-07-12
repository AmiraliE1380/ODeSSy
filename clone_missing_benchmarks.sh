#!/usr/bin/env bash
# =============================================================================
# SMT Oracle Evaluation -- MULTI-OPT-LEVEL edition (v2, honest accounting)
#
# For each benchmark, compile the SAME source twice (-O1 sanity, -O3 target),
# both with integer-overflow trap sanitizers, then run the Oracle and record
# HONEST before/after trap counts.
#
# WHAT "before"/"after" MEAN:
#   before = # of llvm.ubsantrap calls in the sanitized baseline .ll
#   after  = # of llvm.ubsantrap calls in the Oracle-optimized .ll
#   traps_eliminated = before - after, BUT ONLY if the transform actually
#                      succeeded. If `opt` crashes / times out / writes no
#                      output, the row is marked CRASH and after/eliminated
#                      are NA -- never silently counted as "all eliminated".
#
# Independent of the transform, we also record from the pass's own verdict log:
#   unsat = # traps the solver PROVED dead (UNSAT)   <- the real success metric
#   sat   = # traps kept (SAT / not provably safe)
#
# AGGRESSIVE INLINING (INLINE_AGGRESSIVE=1, default on):
#   The Oracle is an INTRAprocedural pass -- it can only assert guards that sit
#   in the SAME function as the trap. When a guard like `if (len > MAX) return;`
#   lives in the caller and the trap in a small callee, a function-local pass
#   can't see the guard => it must return SAT. Forcing the inliner to pull
#   callees into their callers puts guard + trap in one function, which is
#   exactly the context the solver needs to reach UNSAT. So we crank the
#   inline thresholds at BOTH -O1 and -O3. (Turn off with INLINE_AGGRESSIVE=0.)
#
# No `set -e`: one benchmark failing must not abort the rest.
# =============================================================================

PL_ROOT="$HOME/michigan/pl"
ORACLE_ROOT="$PL_ROOT/smt-compiler-oracle"

ZSTD_SRC="$PL_ROOT/zstd"
ZLIB_SRC="$PL_ROOT/zlib"
OPENSSL_SRC="$PL_ROOT/openssl"
POLYBENCH_SRC="$PL_ROOT/polybench"

OPT_LEVELS=(O1 O3)

# Per-query safety net: kill an opt run that hangs (aggressive inlining can
# make functions huge and Z3 slow). 124 == timed out.
TIMEOUT_SECS=${TIMEOUT_SECS:-600}

# --- Aggressive inlining knob -------------------------------------------------
INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi

# Sanitizer flags common to every compile (opt level prepended per-run).
SAN_FLAGS=(-S -emit-llvm
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow)

mkdir -p "$ORACLE_ROOT/evaluation/zstd" \
         "$ORACLE_ROOT/evaluation/zlib" \
         "$ORACLE_ROOT/evaluation/openssl" \
         "$ORACLE_ROOT/evaluation/polybench" \
         "$ORACLE_ROOT/logs/compilations" \
         "$ORACLE_ROOT/logs/opt_runs"

CSV="$ORACLE_ROOT/evaluation/trap_metadata.csv"

# timeout wrapper (fall back to plain exec if coreutils timeout is absent)
if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi

# =============================================================================
# STEP 0: sanity -- tools present, then rebuild the pass
# =============================================================================
for tool in clang opt llvm-link; do
  command -v "$tool" >/dev/null 2>&1 || { echo "[FATAL] '$tool' not on PATH"; exit 1; }
done

( cd "$ORACLE_ROOT/build" && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }
cd "$ORACLE_ROOT"

# One-time openssl configure (generates configuration.h; slow, so guarded).
if [ ! -f "$OPENSSL_SRC/include/openssl/configuration.h" ]; then
  echo "  (running one-time ./Configure no-asm ...)"
  ( cd "$OPENSSL_SRC" && ./Configure no-asm )
fi

# =============================================================================
# Per-benchmark compile helpers. Each takes: <opt-level> <output.ll>
# Returns non-zero on failure so the caller can mark the row.
# =============================================================================
compile_zstd() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DZSTD_DISABLE_ASM \
    -I"$ZSTD_SRC/lib" -I"$ZSTD_SRC/lib/common" \
    "$ZSTD_SRC/lib/compress/zstd_compress.c" -o "$2"
}
compile_zlib() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -I"$ZLIB_SRC" \
    "$ZLIB_SRC/deflate.c" -o "$2"
}
compile_openssl() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" \
    -I"$OPENSSL_SRC/include" -I"$OPENSSL_SRC" \
    -I"$OPENSSL_SRC/crypto" -I"$OPENSSL_SRC/providers/common/include" \
    "$OPENSSL_SRC/crypto/sha/sha256.c" -o "$2"
}
compile_polybench() {
  # jacobi-2d.c + the polybench.c harness are TWO translation units. clang
  # cannot emit two .ll files under a single -o (that was the earlier error),
  # so compile each separately, then llvm-link into one module.
  local opt="$1" out="$2" t
  t="$(mktemp -d)"
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" -I"$POLYBENCH_SRC/stencils/jacobi-2d" \
    "$POLYBENCH_SRC/stencils/jacobi-2d/jacobi-2d.c" -o "$t/kernel.ll" \
    || { rm -rf "$t"; return 1; }
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" \
    "$POLYBENCH_SRC/utilities/polybench.c" -o "$t/harness.ll" \
    || { rm -rf "$t"; return 1; }
  llvm-link -S "$t/kernel.ll" "$t/harness.ll" -o "$out"
  local rc=$?; rm -rf "$t"; return $rc
}

# Benchmark registry
BENCH_KEYS=(zstd zlib openssl polybench)
declare -A BENCH_SUBDIR=( [zstd]=zstd [zlib]=zlib [openssl]=openssl [polybench]=polybench )
declare -A BENCH_STEM=(   [zstd]=zstd_integer [zlib]=deflate_integer \
                          [openssl]=sha256_integer [polybench]=jacobi2d_integer )
declare -A BENCH_FN=(     [zstd]=compile_zstd [zlib]=compile_zlib \
                          [openssl]=compile_openssl [polybench]=compile_polybench )

# =============================================================================
# STEP 1: Compile every (benchmark x opt-level) to sanitized LLVM IR
# =============================================================================
echo ""
echo "==== compiling baselines (O1 + O3, aggressive-inline=$INLINE_AGGRESSIVE) ===="
declare -A COMPILE_OK
for key in "${BENCH_KEYS[@]}"; do
  for opt in "${OPT_LEVELS[@]}"; do
    out="evaluation/${BENCH_SUBDIR[$key]}/${BENCH_STEM[$key]}_${opt}.ll"
    printf '  -> %-10s @ -%s ... ' "$key" "$opt"
    if "${BENCH_FN[$key]}" "$opt" "$out" && [ -s "$out" ]; then
      COMPILE_OK["${key}_${opt}"]=1
      echo "ok"
    else
      COMPILE_OK["${key}_${opt}"]=0
      echo "COMPILE FAILED"
    fi
  done
done

# =============================================================================
# STEP 2 + 3: run the Oracle honestly and build the CSV.
#
# Two opt invocations per (benchmark x opt-level):
#   (A) analysis-only  : oracle-pass, -disable-output  -> per-trap SAT/UNSAT
#                        verdicts land in the pass log; isolates encoder crashes
#                        from the cleanup pipeline.
#   (B) transform      : oracle-pass,simplifycfg,adce,verify -> the .ll whose
#                        ubsantrap count gives the honest `after`.
# =============================================================================
echo ""
echo "==== running oracle + building CSV ===="
echo "benchmark,opt_level,ubsantrap_before,overflow_intrinsics,unsat,sat,ubsantrap_after,traps_eliminated,status" > "$CSV"

printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
  benchmark opt before intr unsat sat after elim status

CRASHED=()
for key in "${BENCH_KEYS[@]}"; do
  for opt in "${OPT_LEVELS[@]}"; do
    stem="${BENCH_STEM[$key]}_${opt}"
    in="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
    out="evaluation/${BENCH_SUBDIR[$key]}/${stem}_oracle.ll"
    alog="logs/opt_runs/${stem}.analysis.log"
    xlog="logs/opt_runs/${stem}.transform.log"
    passlog="logs/compilations/${stem}.txt"

    if [ "${COMPILE_OK[$stem]}" != "1" ]; then
      echo "$key,$opt,NA,NA,NA,NA,NA,NA,COMPILE_FAILED" >> "$CSV"
      printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
        "$key" "$opt" NA NA NA NA NA NA COMPILE_FAILED
      continue
    fi

    before=$(grep -c 'llvm.ubsantrap' "$in")
    intr=$(grep -c '.with.overflow' "$in")

    # (A) analysis-only: populates the pass verdict log; catches encoder crashes
    run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
        -disable-output "$in" > "$alog" 2>&1
    rc_a=$?
    # Preserve this run's verdict log before the transform run overwrites it.
    [ -f "$passlog" ] && cp "$passlog" "logs/compilations/${stem}_analysis.txt"
    vlog="logs/compilations/${stem}_analysis.txt"
    unsat=$( [ -f "$vlog" ] && grep -c 'UNSAT' "$vlog" || echo 0 )
    sat=$(   [ -f "$vlog" ] && grep -c 'SAT (WARNING' "$vlog" || echo 0 )

    # (B) transform: delete stale output first so a crash can't leave a stale file
    rm -f "$out"
    run_opt opt -load-pass-plugin=build/OraclePass.so \
        -passes="oracle-pass,simplifycfg,adce,verify" \
        -S "$in" -o "$out" > "$xlog" 2>&1
    rc_x=$?

    if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
      after=$(grep -c 'llvm.ubsantrap' "$out")
      elim=$(( before - after ))
      status="OK"
    else
      after="NA"; elim="NA"
      if [ "$rc_x" -eq 124 ]; then status="XFORM_TIMEOUT"; else status="XFORM_CRASH(rc=$rc_x)"; fi
      CRASHED+=("$stem [transform: see $xlog]")
    fi
    if [ "$rc_a" -ne 0 ]; then
      [ "$rc_a" -eq 124 ] && astat="ANALYSIS_TIMEOUT" || astat="ANALYSIS_CRASH(rc=$rc_a)"
      status="${astat};${status}"
      CRASHED+=("$stem [analysis: see $alog]")
    fi

    echo "$key,$opt,$before,$intr,$unsat,$sat,$after,$elim,$status" >> "$CSV"
    printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
      "$key" "$opt" "$before" "$intr" "$unsat" "$sat" "$after" "$elim" "$status"
  done
done

echo ""
echo "CSV written to: $CSV"
if [ ${#CRASHED[@]} -gt 0 ]; then
  echo ""
  echo "==== !! opt failed on the following -- these are NOT eliminations ===="
  for c in "${CRASHED[@]}"; do echo "  - $c"; done
  echo "Tip: the analysis-only log isolates whether the ENCODER itself aborts"
  echo "     (vs the simplifycfg/adce cleanup). Grep it for the last verdict."
fi
echo ""
echo "Per-trap verdicts: logs/compilations/<stem>_analysis.txt"
echo "  UNSAT (proved dead): grep -c UNSAT logs/compilations/zstd_integer_O1_analysis.txt"
echo "  SAT   (kept):        grep -c 'SAT (WARNING' logs/compilations/zstd_integer_O1_analysis.txt"