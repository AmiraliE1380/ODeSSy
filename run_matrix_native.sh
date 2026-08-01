#!/usr/bin/env bash
# =============================================================================
# run_matrix_native.sh -- NATIVE-CHECK LANGUAGE matrix (Swift / Rust / Julia).
#
# Same protocol as run_matrix.sh (pin, shuffled interleaved reps, per-run raw
# log, bench-level checkpoints, CSV compatible with make_matrix_report.py):
#   python3 make_matrix_report.py evaluation/matrix_native.csv \
#                                 evaluation/matrix_native_report.csv
#
# The SPec axis is per-language (checks are language semantics here):
#   swift_*  : none    = -Ounchecked   (overflow+bounds+unwrap checks OFF)
#              checked = -O default    (all of them ON -- what users ship)
#   rust_*   : none    = release default (bounds ALWAYS on; overflow off)
#              overflow= + RUSTFLAGS="-C overflow-checks=on"
#              (bounds cannot be disabled globally -- itself a finding)
#   julia_*  : none    = --check-bounds=no    (same binary, runtime flag)
#              bounds  = --check-bounds=yes
#
# Benchmarks (sources written by this script into native_bench/):
#   swift_nbody   n-body physics, tight O(n^2) loop, indexed particle arrays
#   swift_sha256  pure-Swift SHA-256 (wrapping &+ where wrap is intended --
#                 idiomatic -- so the measured load is bounds + index arith)
#   swift_lz77    greedy LZ77 over the corpus: byte-stream indexing w/ guards
#   rust_miniz    miniz_oxide DEFLATE compress of the corpus (zlib twin)
#   rust_inflate  miniz_oxide inflate of a pre-compressed corpus
#   julia_stencil 2-D heat stencil, the canonical bounds-elimination shape
#   julia_gemm    triple-loop GEMM, constant bounds (SCEV home turf)
#
# Trap counts: swift = ud1|ud2 in binary; rust = panic-call sites in binary
# (proxy: 'panic' call targets); julia = n/a (JIT).
#
# Knobs : RUNS=20 CORPUS_MB=64 PIN=... RUN_TIMEOUT=300
#         BENCHES="swift_nbody swift_sha256 swift_lz77 rust_miniz rust_inflate julia_stencil julia_gemm"
#         NBODY_STEPS=6000000 SHA_ITERS=6 LZ77_ITERS=3 MINIZ_ITERS=4
#         INFLATE_ITERS=30 STENCIL_N=1500 STENCIL_STEPS=400 GEMM_N=700 GEMM_REPS=3
#         (calibrate in smoke: aim 5-15 s per timed run)
# Needs : swiftc, cargo, julia on PATH (see setup commands in chat).
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
RUNS=${RUNS:-20}
CORPUS_MB=${CORPUS_MB:-64}
RUN_TIMEOUT=${RUN_TIMEOUT:-300}
BENCHES=${BENCHES:-"swift_nbody swift_sha256 swift_lz77 rust_miniz rust_inflate julia_stencil julia_gemm"}
NBODY_STEPS=${NBODY_STEPS:-6000000}
SHA_ITERS=${SHA_ITERS:-6}
LZ77_ITERS=${LZ77_ITERS:-3}
MINIZ_ITERS=${MINIZ_ITERS:-4}
INFLATE_ITERS=${INFLATE_ITERS:-30}
STENCIL_N=${STENCIL_N:-1500}; STENCIL_STEPS=${STENCIL_STEPS:-400}
GEMM_N=${GEMM_N:-700}; GEMM_REPS=${GEMM_REPS:-3}

NB="$ROOT/native_bench"; W="$ROOT/native_test"
MDIR="$ROOT/evaluation/matrix_native"
CSV="$ROOT/evaluation/matrix_native.csv"
RAW="$MDIR/raw_runs.log"
mkdir -p "$NB" "$W" "$MDIR" "$ROOT/evaluation"

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

# ---- corpus (tmpfs) ---------------------------------------------------------
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_native.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
if [ ! -s "$CORP" ]; then
  cat "$ROOT"/OraclePass/*.cpp "$ROOT"/*.md > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
  while [ "$(stat -c%s "$CORP" 2>/dev/null || stat -f%z "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
    cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
  done
  truncate -s "${CORPUS_MB}M" "$CORP" 2>/dev/null || true
fi
# pre-compressed corpus for rust_inflate
[ -s "$CORP.z" ] || python3 -c "
import zlib,sys
data = open('$CORP','rb').read()
open('$CORP.z','wb').write(zlib.compress(data, 6))
print('corpus.z:', len(data), '->', end=' ')
import os; print(os.path.getsize('$CORP.z'))"

# =============================================================================
# BENCHMARK SOURCES (written once; edit in native_bench/ to iterate)
# =============================================================================
write_sources() {
mkdir -p "$NB/rust_miniz/src" "$NB/rust_inflate/src"

# ---------------- Swift: n-body ----------------
cat > "$NB/nbody.swift" <<'EOF'
import Foundation
let steps = Int(CommandLine.arguments[1])!
let n = 5
var px = [Double](repeating: 0, count: n), py = px, pz = px
var vx = px, vy = px, vz = px, mass = px
let pi = 3.141592653589793, solar = 4 * pi * pi, dpy = 365.24
let bodies: [[Double]] = [
 [0,0,0,0,0,0,1],
 [4.84143144246472090,-1.16032004402742839,-0.103622044471123109,
  0.00166007664274403694,0.00769901118419740425,-0.0000690460016972063023,0.000954791938424326609],
 [8.34336671824457987,4.12479856412430479,-0.403523417114321381,
  -0.00276742510726862411,0.00499852801234917238,0.0000230417297573763929,0.000285885980666130812],
 [12.8943695621391310,-15.1111514016986312,-0.223307578892655734,
  0.00296460137564761618,0.00237847173959480950,-0.0000296589568540237556,0.0000436624404335156298],
 [15.3796971148509165,-25.9193146099879641,0.179258772950371181,
  0.00268067772490389322,0.00162824170038242295,-0.0000951592254519715870,0.0000515138902046611451]]
for i in 0..<n {
  px[i]=bodies[i][0]; py[i]=bodies[i][1]; pz[i]=bodies[i][2]
  vx[i]=bodies[i][3]*dpy; vy[i]=bodies[i][4]*dpy; vz[i]=bodies[i][5]*dpy
  mass[i]=bodies[i][6]*solar
}
var mpx=0.0, mpy=0.0, mpz=0.0
for i in 0..<n { mpx += vx[i]*mass[i]; mpy += vy[i]*mass[i]; mpz += vz[i]*mass[i] }
vx[0] = -mpx/solar; vy[0] = -mpy/solar; vz[0] = -mpz/solar
let dt = 0.01
for _ in 0..<steps {
  for i in 0..<n {
    for j in (i+1)..<n {
      let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
      let d2 = dx*dx+dy*dy+dz*dz
      let mag = dt / (d2 * d2.squareRoot())
      vx[i] -= dx*mass[j]*mag; vy[i] -= dy*mass[j]*mag; vz[i] -= dz*mass[j]*mag
      vx[j] += dx*mass[i]*mag; vy[j] += dy*mass[i]*mag; vz[j] += dz*mass[i]*mag
    }
  }
  for i in 0..<n { px[i] += dt*vx[i]; py[i] += dt*vy[i]; pz[i] += dt*vz[i] }
}
var e = 0.0
for i in 0..<n {
  e += 0.5*mass[i]*(vx[i]*vx[i]+vy[i]*vy[i]+vz[i]*vz[i])
  for j in (i+1)..<n {
    let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
    e -= mass[i]*mass[j] / (dx*dx+dy*dy+dz*dz).squareRoot()
  }
}
print(String(format: "%.9f", e))
EOF

# ---------------- Swift: SHA-256 ----------------
cat > "$NB/sha256.swift" <<'EOF'
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
let k: [UInt32] = [
0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2]
func rotr(_ x: UInt32, _ n: UInt32) -> UInt32 { (x >> n) | (x << (32 - n)) }
var final: UInt32 = 0
for _ in 0..<iters {
  var h: [UInt32] = [0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,
                     0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19]
  var w = [UInt32](repeating: 0, count: 64)
  let nBlocks = data.count / 64
  for b in 0..<nBlocks {
    let off = b * 64
    for t in 0..<16 {
      w[t] = (UInt32(data[off+4*t]) << 24) | (UInt32(data[off+4*t+1]) << 16)
           | (UInt32(data[off+4*t+2]) << 8) | UInt32(data[off+4*t+3])
    }
    for t in 16..<64 {
      let s0 = rotr(w[t-15],7) ^ rotr(w[t-15],18) ^ (w[t-15] >> 3)
      let s1 = rotr(w[t-2],17) ^ rotr(w[t-2],19) ^ (w[t-2] >> 10)
      w[t] = w[t-16] &+ s0 &+ w[t-7] &+ s1
    }
    var a=h[0], bb=h[1], c=h[2], d=h[3], e=h[4], f=h[5], g=h[6], hh=h[7]
    for t in 0..<64 {
      let S1 = rotr(e,6) ^ rotr(e,11) ^ rotr(e,25)
      let ch = (e & f) ^ (~e & g)
      let t1 = hh &+ S1 &+ ch &+ k[t] &+ w[t]
      let S0 = rotr(a,2) ^ rotr(a,13) ^ rotr(a,22)
      let mj = (a & bb) ^ (a & c) ^ (bb & c)
      let t2 = S0 &+ mj
      hh=g; g=f; f=e; e = d &+ t1; d=c; c=bb; bb=a; a = t1 &+ t2
    }
    h[0] = h[0] &+ a; h[1] = h[1] &+ bb; h[2] = h[2] &+ c; h[3] = h[3] &+ d
    h[4] = h[4] &+ e; h[5] = h[5] &+ f; h[6] = h[6] &+ g; h[7] = h[7] &+ hh
  }
  final = final &+ h[0]
}
print(final)
EOF

# ---------------- Swift: greedy LZ77 ----------------
cat > "$NB/lz77.swift" <<'EOF'
import Foundation
let iters = Int(CommandLine.arguments[1])!
let full = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
let cap = min(full.count, 2 * 1024 * 1024)
let data = Array(full[0..<cap])
var total = 0
for _ in 0..<iters {
  var out = 0
  var i = 0
  let n = data.count
  let window = 1024, minMatch = 4, maxMatch = 255
  while i < n {
    var bestLen = 0, bestDist = 0
    let start = i > window ? i - window : 0
    var j = start
    while j < i {
      var l = 0
      while l < maxMatch && i + l < n && data[j + l] == data[i + l] { l += 1 }
      if l > bestLen { bestLen = l; bestDist = i - j }
      j += 1
      if bestLen >= maxMatch { break }
    }
    if bestLen >= minMatch {
      out += 3
      i += bestLen
      total = total &+ bestDist
    } else {
      out += 1
      i += 1
    }
  }
  total = total &+ out
}
print(total)
EOF

# ---------------- Rust: miniz compress ----------------
cat > "$NB/rust_miniz/Cargo.toml" <<'EOF'
[package]
name = "rust_miniz"
version = "0.1.0"
edition = "2021"
[dependencies]
miniz_oxide = "0.8"
[profile.release]
debug = false
EOF
cat > "$NB/rust_miniz/src/main.rs" <<'EOF'
use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let data = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let c = miniz_oxide::deflate::compress_to_vec(&data, 6);
        total = total.wrapping_add(c.len());
    }
    println!("{}", total);
}
EOF

# ---------------- Rust: miniz inflate ----------------
cat > "$NB/rust_inflate/Cargo.toml" <<'EOF'
[package]
name = "rust_inflate"
version = "0.1.0"
edition = "2021"
[dependencies]
miniz_oxide = "0.8"
[profile.release]
debug = false
EOF
cat > "$NB/rust_inflate/src/main.rs" <<'EOF'
use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let z = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let d = miniz_oxide::inflate::decompress_to_vec_zlib(&z).unwrap();
        total = total.wrapping_add(d.len());
    }
    println!("{}", total);
}
EOF

# ---------------- Julia: heat stencil ----------------
cat > "$NB/stencil.jl" <<'EOF'
n = parse(Int, ARGS[1]); steps = parse(Int, ARGS[2])
A = zeros(Float64, n, n); B = zeros(Float64, n, n)
for i in 1:n, j in 1:n
    A[i, j] = sin(i * 0.01) * cos(j * 0.01)
end
function step!(B, A, n)
    for j in 2:n-1
        for i in 2:n-1
            B[i, j] = 0.25 * (A[i-1, j] + A[i+1, j] + A[i, j-1] + A[i, j+1])
        end
    end
end
for s in 1:steps
    step!(B, A, n)
    global A, B = B, A
end
println(sum(A))
EOF

# ---------------- Julia: GEMM ----------------
cat > "$NB/gemm.jl" <<'EOF'
n = parse(Int, ARGS[1]); reps = parse(Int, ARGS[2])
A = [Float64((i * 7 + j) % 13) for i in 1:n, j in 1:n]
B = [Float64((i * 3 + j) % 17) for i in 1:n, j in 1:n]
C = zeros(Float64, n, n)
function gemm!(C, A, B, n)
    for j in 1:n
        for k in 1:n
            b = B[k, j]
            for i in 1:n
                C[i, j] += A[i, k] * b
            end
        end
    end
end
for r in 1:reps
    gemm!(C, A, B, n)
end
println(C[1, 1] + C[n, n])
EOF
}

# =============================================================================
# BUILD + RUN definitions per bench
#   build_<b> <spec>  -> echo binary (or SKIP); RUNCMD assembled in main loop
# =============================================================================
count_traps_bin() { # swift: ud1|ud2
  command -v objdump >/dev/null 2>&1 || { echo NA; return; }
  local n; n=$(objdump -d "$1" 2>/dev/null | grep -cwE 'ud1|ud2'); echo "${n:-0}"
}
count_panics_bin() { # rust: panic-call sites (bounds/overflow land here)
  command -v objdump >/dev/null 2>&1 || { echo NA; return; }
  local n; n=$(objdump -d "$1" 2>/dev/null | grep -c 'call.*panic'); echo "${n:-0}"
}

swift_flags() { [ "$1" = "none" ] && echo "-Ounchecked" || echo "-O"; }

build_swift() { # $1 = src stem, $2 = spec
  command -v swiftc >/dev/null 2>&1 || { echo SKIP; return; }
  swiftc $(swift_flags "$2") "$NB/$1.swift" -o "$W/bin.$1.$2" 2>"$W/$1.$2.buildlog" \
    || { echo SKIP; return; }
  echo "$W/bin.$1.$2"
}
build_rust() { # $1 = crate dir name, $2 = spec
  command -v cargo >/dev/null 2>&1 || { echo SKIP; return; }
  local rf=""
  [ "$2" = "overflow" ] && rf="-C overflow-checks=on"
  ( cd "$NB/$1" && RUSTFLAGS="$rf" cargo build --release -q 2>"$W/$1.$2.buildlog" ) \
    || { echo SKIP; return; }
  cp "$NB/$1/target/release/$1" "$W/bin.$1.$2" || { echo SKIP; return; }
  echo "$W/bin.$1.$2"
}

# per-bench: spec list | build | run-command template
bench_specs() {
  case "$1" in
    swift_*) echo "none checked" ;;
    rust_*)  echo "none overflow" ;;
    julia_*) echo "none bounds" ;;
  esac
}
build_cell() { # $1 bench, $2 spec -> echo bin/SKIP  (julia: echo script path)
  case "$1" in
    swift_nbody)  build_swift nbody  "$2" ;;
    swift_sha256) build_swift sha256 "$2" ;;
    swift_lz77)   build_swift lz77   "$2" ;;
    rust_miniz)   build_rust rust_miniz   "$2" ;;
    rust_inflate) build_rust rust_inflate "$2" ;;
    julia_*)      command -v julia >/dev/null 2>&1 && echo JULIA || echo SKIP ;;
  esac
}
run_cell() { # $1 bench, $2 spec, $3 bin  -- the timed kernel
  case "$1" in
    swift_nbody)  "$3" "$NBODY_STEPS" > /dev/null 2>&1 ;;
    swift_sha256) "$3" "$SHA_ITERS" "$CORP" > /dev/null 2>&1 ;;
    swift_lz77)   "$3" "$LZ77_ITERS" "$CORP" > /dev/null 2>&1 ;;
    rust_miniz)   "$3" "$MINIZ_ITERS" "$CORP" > /dev/null 2>&1 ;;
    rust_inflate) "$3" "$INFLATE_ITERS" "$CORP.z" > /dev/null 2>&1 ;;
    julia_stencil)
      local cb; cb=$([ "$2" = "bounds" ] && echo yes || echo no)
      julia --check-bounds=$cb -O3 "$NB/stencil.jl" "$STENCIL_N" "$STENCIL_STEPS" > /dev/null 2>&1 ;;
    julia_gemm)
      local cb; cb=$([ "$2" = "bounds" ] && echo yes || echo no)
      julia --check-bounds=$cb -O3 "$NB/gemm.jl" "$GEMM_N" "$GEMM_REPS" > /dev/null 2>&1 ;;
  esac
}
# run_cell executes in a child bash under $PIN -- export it and everything
# it references so the child shell can see them.
export -f run_cell
export NB CORP NBODY_STEPS SHA_ITERS LZ77_ITERS MINIZ_ITERS INFLATE_ITERS \
       STENCIL_N STENCIL_STEPS GEMM_N GEMM_REPS

count_cell() { # $1 bench, $2 bin -> "count method"
  case "$1" in
    swift_*) echo "$(count_traps_bin "$2") ud2" ;;
    rust_*)  echo "$(count_panics_bin "$2") panic" ;;
    julia_*) echo "NA jit" ;;
  esac
}

# =============================================================================
# MAIN LOOP -- mirrors run_matrix.sh (checkpoints, raw log, per-bench rows)
# =============================================================================
# timeout-on-a-function: subshell + watchdog (run_cell may launch julia with
# flags, so a plain `timeout CMD` doesn't fit). NOTE: a watchdog kill shows up
# as rc=137 and is recorded as died_rc=137 -- read that as TIMEOUT in the CSV.
timed_run() { # $1 bench, $2 spec, $3 bin -> rc
  local b="$1" s="$2" bin="$3" rc
  ( [ -n "$PIN" ] && exec $PIN bash -c "run_cell \"$b\" \"$s\" \"$bin\"" || run_cell "$b" "$s" "$bin" ) &
  local pid=$!
  ( sleep "$RUN_TIMEOUT" && kill -9 $pid 2>/dev/null ) &
  local wd=$!
  wait $pid; rc=$?
  kill $wd 2>/dev/null; wait $wd 2>/dev/null
  return $rc
}

[ -f "$CSV" ] || echo "bench,spec,traps_n,trap_method,status,min_run_s,avg_run_s,slowdown_vs_none_min_pct,slowdown_vs_none_avg_pct,components,runs_s" > "$CSV"
write_sources
echo "==== native matrix: [$BENCHES] RUNS=$RUNS pin='${PIN:-none}' ===="

for bench in $BENCHES; do
  if [ -f "$MDIR/.done.$bench" ]; then
    echo "[$bench] checkpoint found -- skipping"; continue
  fi
  echo ""
  echo "==== [$bench] building ===="
  declare -A BIN TRAPS METH DIED RUNTIMES
  BIN=(); TRAPS=(); METH=(); DIED=(); RUNTIMES=()
  CELLS=()
  for s in $(bench_specs "$bench"); do
    bin=$(build_cell "$bench" "$s")
    if [ "$bin" = "SKIP" ] || [ -z "$bin" ]; then
      echo "  [skip] $bench/$s (toolchain missing or build failed -- see $W/*.buildlog)"
      echo "$bench,$s,,,build_failed,,,,,," >> "$CSV"
      continue
    fi
    BIN[$s]="$bin"
    read -r "TRAPS[$s]" "METH[$s]" <<< "$(count_cell "$bench" "$bin")"
    CELLS+=("$s")
    printf '  built %-14s %-9s traps=%s (%s)\n' "$bench" "$s" "${TRAPS[$s]:-NA}" "${METH[$s]:-}"
  done
  [ ${#CELLS[@]} -gt 0 ] || { touch "$MDIR/.done.$bench"; continue; }

  echo "==== [$bench] warmup ===="
  for s in "${CELLS[@]}"; do
    t0=$(now); timed_run "$bench" "$s" "${BIN[$s]}"; rc=$?; t1=$(now)
    echo "  warmup $bench/$s rc=$rc t=$(elapsed "$t0" "$t1")s"
    if [ "$rc" -ge 128 ]; then
      DIED[$s]=$rc
      if [ "$rc" -eq 137 ]; then
        echo "  [TIMEOUT] $bench/$s exceeded ${RUN_TIMEOUT}s (watchdog) -- excluded; resize its iteration knob"
      else
        echo "  [TRAP] $bench/$s died rc=$rc -- a native check fired (finding); excluded from timing"
      fi
    fi
  done

  echo "==== [$bench] timing: $RUNS shuffled reps ===="
  for rep in $(seq "$RUNS"); do
    while IFS= read -r s; do
      [ -n "${DIED[$s]:-}" ] && continue
      t0=$(now); timed_run "$bench" "$s" "${BIN[$s]}"; rc=$?; t1=$(now)
      dt=$(elapsed "$t0" "$t1")
      echo "$(date +%F.%T) $bench $s rep=$rep rc=$rc t=$dt" >> "$RAW"
      if [ "$rc" -ge 128 ]; then DIED[$s]=$rc; continue; fi
      RUNTIMES[$s]="${RUNTIMES[$s]:-}$dt;"
    done < <(printf '%s\n' "${CELLS[@]}" | shuf)
    echo "  rep $rep/$RUNS done ($(date +%H:%M:%S))"
  done

  declare -A MN AV
  MN=(); AV=()
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    if [ -n "$rj" ]; then
      MN[$s]=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
      AV[$s]=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
    fi
  done
  refm="${MN[none]:-}"; refa="${AV[none]:-}"
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    st=ok; ovm=""; ova=""
    if [ -n "${DIED[$s]:-}" ]; then st="died_rc=${DIED[$s]}"
    else
      [ -n "$refm" ] && [ -n "${MN[$s]:-}" ] && \
        ovm=$(awk -v n="${MN[$s]}" -v r="$refm" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
      [ -n "$refa" ] && [ -n "${AV[$s]:-}" ] && \
        ova=$(awk -v n="${AV[$s]}" -v r="$refa" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
    fi
    echo "$bench,$s,${TRAPS[$s]:-},${METH[$s]:-},$st,${MN[$s]:-},${AV[$s]:-},$ovm,$ova,,\"$rj\"" >> "$CSV"
  done
  touch "$MDIR/.done.$bench"
  echo "==== [$bench] rows appended to $CSV ===="
done
echo ""
echo "CSV: $CSV"
echo "Report: python3 make_matrix_report.py evaluation/matrix_native.csv evaluation/matrix_native_report.csv"
