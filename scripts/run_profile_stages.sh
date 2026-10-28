#!/usr/bin/env bash
# run_profile_stages.sh -- where does ODeSSy's time go? (HANDOFF §13.6)
# Runs oracle-pass<...;profile-stages> on a fixed set of modules under
# Thorough and Fast at threads=1 and threads=N, and keeps only the
# "[profile-stages]" lines of stderr. Summarize with:
#   python3 tools/profile_summary.py results/profile_stages/<run>
# Usage: OUT=results/profile_stages/mac_1028 THREADS_N=10 bash scripts/run_profile_stages.sh
set -u
OUT="${OUT:-results/profile_stages/$(date +%m%d)}"; mkdir -p "$OUT"
THREADS_N="${THREADS_N:-10}"
IR=results/static/pipeline_cost_par/ir
JL=logs/julia_triage
JLTRAPS="traps=bounds_error:boundserror"
# name | IR file | extra knobs
INPUTS=(
  "zlib_trees|$IR/zlib_trees.ll|"
  "zlib_deflate|$IR/zlib_deflate.ll|"
  "zstd_preSplit|$IR/zstd_zstd_preSplit.ll|"
  "cryptoswift|$IR/swift_cryptoswift.ll|"
  "jl_sha256|$JL/sha256.ll|;$JLTRAPS"
  "jl_gemm|$JL/jl_gemm_base.ll|;$JLTRAPS"
)
THOROUGH="heavy;frame;ind;mv;narrow;timeout=10000"
FAST="heavy;frame;mv;narrow;timeout=10"
for spec in "${INPUTS[@]}"; do
  IFS='|' read -r name file extra <<< "$spec"
  [ -s "$file" ] || { echo "[skip] $name: $file missing"; continue; }
  for cfg in fast thorough; do
    knobs=$FAST; [ $cfg = thorough ] && knobs=$THOROUGH
    for t in 1 "$THREADS_N"; do
      f="$OUT/${name}.${cfg}.t${t}.txt"
      [ -s "$f" ] && { echo "[done] $f"; continue; }
      echo "[run] $name $cfg threads=$t  $(date +%H:%M:%S)"
      s=$(date +%s)
      opt -load-pass-plugin=build/OraclePass.so \
          -passes="oracle-pass<${knobs};threads=${t};profile-stages${extra}>" \
          -disable-output "$file" 2>&1 | grep "^\[profile-stages\]" > "$f.tmp" && mv "$f.tmp" "$f"
      echo "      $(( $(date +%s) - s )) s"
    done
  done
done
