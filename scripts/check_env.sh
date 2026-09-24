#!/usr/bin/env bash
# check_env.sh -- print every toolchain version that can move a result, and
# compare against the recorded instrument (docs/MACHINE_SPEC.md).
#
# Run from the repo root, AFTER the PATH is set (server: RESURRECTION §3).
#   bash scripts/check_env.sh
# On Linux the expectations are the August 2026 c220g2 campaign; on macOS
# they are the M-series instrument. A DIFF line is not automatically wrong,
# but every DIFF must be explained before a number is compared to the record.
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
OS="$(uname -s)"
first() { "$@" 2>&1 | grep -vE '^\s*$' | head -1; }
row() {   # name  actual  expected
  local st="OK"; case "$2" in *"$3"*) ;; *) st="DIFF";; esac
  [ -z "$3" ] && st="--"
  printf "%-5s %-10s %-58s expect: %s\n" "$st" "$1" "${2:0:58}" "$3"
}
where() { command -v "$1" 2>/dev/null || echo "NOT FOUND"; }

if [ "$OS" = Linux ]; then
  E_LLVM="23.0.0git"; E_LLVMREV="3cab3bc6384b5f58cab7140d00d7a527eade010e"
  E_CC="clang version 21"; E_SWIFT="6.3.3"; E_JULIA="1.12.6"
  E_RUST="1.97.1 (8bab26f4f 2026-07-14)"; E_Z3="4.8.12"
  E_OS="Ubuntu 24.04.4"; E_KERNEL="6.8.0-136-generic"; E_CPU="E5-2660 v3"
else
  E_LLVM="23.0.0git"; E_LLVMREV="3cab3bc6384b5f58cab7140d00d7a527eade010e"
  E_CC="clang version 23.0.0git"; E_SWIFT="6.3.3"; E_JULIA="1.12.6"
  E_RUST="1.97.1 (8bab26f4f 2026-07-14)"; E_Z3="4.16.0"
  E_OS=""; E_KERNEL=""; E_CPU="Apple M"
fi

echo "==== machine ===="
if [ "$OS" = Linux ]; then
  row os     "$(. /etc/os-release; echo "$PRETTY_NAME")" "$E_OS"
  row kernel "$(uname -r)" "$E_KERNEL"
  row cpu    "$(grep -m1 'model name' /proc/cpuinfo | cut -d: -f2- | sed 's/^ *//')" "$E_CPU"
  row turbo  "no_turbo=$(cat /sys/devices/system/cpu/intel_pstate/no_turbo 2>/dev/null || echo ?)" "no_turbo=1"
  row node   "$(hostname -f 2>/dev/null || hostname)" ""
else
  row os     "macOS $(sw_vers -productVersion)" "$E_OS"
  row cpu    "$(sysctl -n machdep.cpu.brand_string)" "$E_CPU"
fi

echo "==== compilers (path shown second; PATH ORDER IS PART OF THE EXPERIMENT) ===="
row opt    "LLVM $(opt --version 2>&1 | grep -m1 -oE 'version [0-9a-z.]+')" "$E_LLVM"
row  ""    "$(where opt)" ""
# Read the commit from the LLVM build that provides `opt`. On the server a bare
# `clang` is deliberately the Swift toolchain's clang-21 (C compiles), which
# would report the wrong build, so use the tools sitting beside opt.
OPTDIR="$(dirname "$(command -v opt 2>/dev/null || echo /nonexistent/opt)")"
REV="$("$OPTDIR/llvm-config" --vcs-revision 2>/dev/null)"
[ -z "$REV" ] && REV="$("$OPTDIR/clang" --version 2>&1 | grep -oE '[0-9a-f]{40}' | head -1)"
[ -z "$REV" ] && REV="$(opt --version 2>&1 | grep -oE '[0-9a-f]{40}' | head -1)"
row llvmrev "${REV:-unknown}" "$E_LLVMREV"
row cc     "$(first clang --version)" "$E_CC"
row  ""    "$(where clang)" ""
# The Swift harness pins its own compiler: on macOS it prepends the per-user
# swift.org 6.3.3 toolchain to PATH (run_swift_perf.sh), so a different
# default `swiftc` (e.g. the Command Line Tools' 6.4) never reaches a result.
# Check what the harness will actually use, not the bare PATH.
SWIFTC_H="swiftc"
TC="$HOME/Library/Developer/Toolchains/swift-6.3.3-RELEASE.xctoolchain/usr/bin/swiftc"
[ "$OS" != Linux ] && [ -x "$TC" ] && SWIFTC_H="$TC"
row swiftc "$("$SWIFTC_H" --version 2>&1 | grep -m1 -oE 'Swift version [0-9.]+[^ ]*')" "$E_SWIFT"
row  ""    "$(command -v "$SWIFTC_H" 2>/dev/null || echo "$SWIFTC_H")" ""
row julia  "$(first julia --version)" "$E_JULIA"
row rustc  "$(first rustc --version)" "$E_RUST"

echo "==== solver actually linked into the pass ===="
if [ "$OS" = Linux ]; then
  Z3V="$(dpkg-query -W -f='${Version}' libz3-4 2>/dev/null)"
  row z3     "${Z3V:-libz3-4 not installed}" "$E_Z3"
  row  ""    "$(ldd build/OraclePass.so 2>/dev/null | grep -m1 z3 | awk '{print $3}')" ""
else
  row z3     "$(z3 --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')" "$E_Z3"
  row  ""    "$(otool -L build/OraclePass.so 2>/dev/null | grep -m1 z3 | awk '{print $1}')" ""
fi

echo "==== repository ===="
row branch "$(git rev-parse --abbrev-ref HEAD) @ $(git rev-parse --short HEAD)" "oopsla-research"
row pass   "$( [ -f build/OraclePass.so ] && echo "build/OraclePass.so present" || echo "NOT BUILT")" "present"
