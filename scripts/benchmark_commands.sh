#!/usr/bin/env bash
# =============================================================================
# SMT Oracle Evaluation -- v3: SIGNED/UNSIGNED SPLIT + honest accounting
#
# Run matrix: BENCHES x SPECS x OPT_LEVELS
#   BENCHES : space-separated benchmark keys.
#             Default excludes zstd for fast development (156k-line IR,
#             3000+ traps, hits the O(traps x function_size) quadratic).
#             Restore it with:
#               BENCHES="zstd zlib openssl polybench" bash benchmark_commands.sh
#             (and consider TIMEOUT_SECS=1800 for zstd O1)
#   SPECS   : which sanitizer spec(s) to compile+analyze. Default runs
#             "signed" and "unsigned" SEPARATELY, because they mean
#             different things:
#               signed   : overflow is UB (C11 6.5p5). UNSAT = provably-dead
#                          check we can delete; a reachable trap = real bug.
#                          This is where the elimination wins live.
#               unsigned : wraparound is DEFINED behavior (mod 2^N) and often
#                          intentional (hashing, CRC/Adler, crypto). All-SAT
#                          here is frequently a spec-mismatch finding, not a
#                          precision failure.
#             SPECS="both" reproduces the old combined run.
#
# v3 changes vs v2:
#   * SPEC dimension as above; `spec` column added to the CSV; .ll stems and
#     log names now include the spec (e.g. deflate_integer_signed_O1).
#   * CSV CORRUPTION FIXED: `grep -c` prints "0" AND exits with status 1 when
#     nothing matches, so `$(grep -c ... || echo 0)` yielded "0\n0" -- an
#     embedded newline that shredded the row. We now test file existence
#     separately and trust grep -c's printed count.
#   * New `skips` column: traps the pass skipped via its z3::exception
#     containment ([Skip] lines). Should be 0; nonzero = leftover sort bug
#     (now non-fatal, but worth chasing).
#
# WHAT "before"/"after" MEAN (unchanged from v2):
#   before = # llvm.ubsantrap calls in the sanitized baseline .ll
#   after  = # llvm.ubsantrap calls in the Oracle-optimized .ll
#   unsat/sat/skips come from the pass's own per-trap verdict log.
#   Crashes/timeouts are marked, never silently counted as eliminations.
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
# Per-run safety net: kill an opt run that hangs. 124 == timed out.
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
# --- Run-matrix knobs ---------------------------------------------------------
read -r -a BENCH_KEYS <<< "${BENCHES:-zlib openssl polybench}"
read -r -a SPECS_ARR  <<< "${SPECS:-signed unsigned}"
# --- Aggressive inlining knob -------------------------------------------------
INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi
# --- Sanitizer flags: now a function of the spec ------------------------------
# Sets the global SAN_FLAGS array used by every compile_* helper.
set_san_flags() {
  case "$1" in
    signed)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=signed-integer-overflow
        -fsanitize-trap=signed-integer-overflow) ;;
    unsigned)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=unsigned-integer-overflow
        -fsanitize-trap=unsigned-integer-overflow) ;;
    both)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=signed-integer-overflow,unsigned-integer-overflow
        -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;
    *)
      echo "[FATAL] unknown spec '$1' (want: signed | unsigned | both)"; exit 1 ;;
  esac
}
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
# (SAN_FLAGS is set per-spec by the caller before invoking these.)
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
  # jacobi-2d.c + the polybench.c harness are TWO translation units:
  # compile each separately, then llvm-link into one module.
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
# Benchmark registry (all benchmarks stay registered; BENCHES selects a subset)
declare -A BENCH_SUBDIR=( [zstd]=zstd [zlib]=zlib [openssl]=openssl [polybench]=polybench )
declare -A BENCH_STEM=(   [zstd]=zstd_integer [zlib]=deflate_integer \
                          [openssl]=sha256_integer [polybench]=jacobi2d_integer )
declare -A BENCH_FN=(     [zstd]=compile_zstd [zlib]=compile_zlib \
                          [openssl]=compile_openssl [polybench]=compile_polybench )
for key in "${BENCH_KEYS[@]}"; do
  if [ -z "${BENCH_FN[$key]}" ]; then
    echo "[FATAL] unknown benchmark key '$key' in BENCHES"; exit 1
  fi
done
# =============================================================================
# STEP 1: Compile every (benchmark x spec x opt-level) to sanitized LLVM IR
# =============================================================================
echo ""
echo "==== compiling baselines (specs: ${SPECS_ARR[*]} | opts: ${OPT_LEVELS[*]} | aggressive-inline=$INLINE_AGGRESSIVE) ===="
declare -A COMPILE_OK
for key in "${BENCH_KEYS[@]}"; do
  for spec in "${SPECS_ARR[@]}"; do
    set_san_flags "$spec"
    for opt in "${OPT_LEVELS[@]}"; do
      stem="${BENCH_STEM[$key]}_${spec}_${opt}"      # SAME key Step 2 reads
      out="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
      printf '  -> %-10s %-8s @ -%s ... ' "$key" "$spec" "$opt"
      if "${BENCH_FN[$key]}" "$opt" "$out" && [ -s "$out" ]; then
        COMPILE_OK["$stem"]=1
        echo "ok"
      else
        COMPILE_OK["$stem"]=0
        echo "COMPILE FAILED"
      fi
    done
  done
done
# =============================================================================
# STEP 2 + 3: run the Oracle honestly and build the CSV.
#
# Two opt invocations per (benchmark x spec x opt-level):
#   (A) analysis-only  : oracle-pass, -disable-output  -> per-trap SAT/UNSAT
#                        verdicts in the pass log; isolates encoder problems
#                        from the cleanup pipeline.
#   (B) transform      : oracle-pass,simplifycfg,adce,verify -> the .ll whose
#                        ubsantrap count gives the honest `after`.
# =============================================================================
echo ""
echo "==== running oracle + building CSV ===="
echo "benchmark,spec,opt_level,ubsantrap_before,overflow_intrinsics,unsat,sat,skips,ubsantrap_after,traps_eliminated,status" > "$CSV"
printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
  benchmark spec opt before intr unsat sat skips after elim status
CRASHED=()
for key in "${BENCH_KEYS[@]}"; do
  for spec in "${SPECS_ARR[@]}"; do
    for opt in "${OPT_LEVELS[@]}"; do
      stem="${BENCH_STEM[$key]}_${spec}_${opt}"
      in="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
      out="evaluation/${BENCH_SUBDIR[$key]}/${stem}_oracle.ll"
      alog="logs/opt_runs/${stem}.analysis.log"
      xlog="logs/opt_runs/${stem}.transform.log"
      passlog="logs/compilations/${stem}.txt"
      if [ "${COMPILE_OK[$stem]}" != "1" ]; then
        echo "$key,$spec,$opt,NA,NA,NA,NA,NA,NA,NA,COMPILE_FAILED" >> "$CSV"
        printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
          "$key" "$spec" "$opt" NA NA NA NA NA NA NA COMPILE_FAILED
        continue
      fi
      before=$(grep -c 'llvm.ubsantrap' "$in")
      intr=$(grep -c '.with.overflow' "$in")
      # (A) analysis-only: populates the pass verdict log
      run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
          -disable-output "$in" > "$alog" 2>&1
      rc_a=$?
      # Preserve this run's verdict log before the transform run overwrites it.
      [ -f "$passlog" ] && cp "$passlog" "logs/compilations/${stem}_analysis.txt"
      vlog="logs/compilations/${stem}_analysis.txt"
      # NOTE: grep -c PRINTS the count even when it exits nonzero (no match),
      # so we must NOT `|| echo 0` here -- that's the bug that produced the
      # "0\n0" corrupted CSV fields in v2.
      if [ -f "$vlog" ]; then
        unsat=$(grep -c 'UNSAT' "$vlog")
        sat=$(grep -c 'SAT (WARNING' "$vlog")
        skips=$(grep -c '\[Skip\]' "$vlog")
      else
        unsat=0; sat=0; skips=0
      fi
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
        if [ "$rc_x" -eq 124 ]; then status="XFORM_TIMEOUT"
        elif [ "$rc_x" -eq 0 ]; then status="XFORM_NO_OUTPUT"
        else status="XFORM_CRASH(rc=$rc_x)"; fi
        CRASHED+=("$stem [transform: see $xlog]")
      fi
      if [ "$rc_a" -ne 0 ]; then
        [ "$rc_a" -eq 124 ] && astat="ANALYSIS_TIMEOUT" || astat="ANALYSIS_CRASH(rc=$rc_a)"
        status="${astat};${status}"
        CRASHED+=("$stem [analysis: see $alog]")
      fi
      echo "$key,$spec,$opt,$before,$intr,$unsat,$sat,$skips,$after,$elim,$status" >> "$CSV"
      printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
        "$key" "$spec" "$opt" "$before" "$intr" "$unsat" "$sat" "$skips" "$after" "$elim" "$status"
    done
  done
done
echo ""
echo "CSV written to: $CSV"
if [ ${#CRASHED[@]} -gt 0 ]; then
  echo ""
  echo "==== !! opt failed on the following -- these are NOT eliminations ===="
  for c in "${CRASHED[@]}"; do echo "  - $c"; done
  echo "Tip: the analysis-only log isolates whether the ENCODER itself fails"
  echo "     (vs the simplifycfg/adce cleanup). Grep it for the last verdict."
fi
echo ""
echo "Per-trap verdicts: logs/compilations/<stem>_analysis.txt"
echo "  UNSAT (proved dead): grep -c UNSAT logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "  SAT   (kept):        grep -c 'SAT (WARNING' logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "  Skips (z3 throws):   grep -c '\[Skip\]' logs/compilations/deflate_integer_signed_O1_analysis.txt"