# MACHINE_SPEC — the two timing instruments (paper §Methodology source of truth)

### Recorded 2026-08-18. Cite these, never "a server" / "a Mac".

## Server (x86 timing instrument) — CloudLab Wisconsin `c220g2`

| Field | Value |
|---|---|
| CloudLab hardware type | **c220g2** (wisc.cloudlab.us; node c220g2-010821, expt `odessy-cgo`) |
| CPU | 2× Intel Xeon E5-2660 v3 @ 2.60 GHz (Haswell-EP, family 6 model 63 stepping 2) |
| Topology | 2 sockets × 10 cores × 2 SMT = 40 hw threads |
| Freq range | 1.2–3.3 GHz turbo; **timing runs: intel_pstate no_turbo=1** |
| Memory | DDR4-2133, ECC (≈160 GB across 2 NUMA nodes) |
| ISA highlights | AVX2, FMA, BMI2, AES-NI; **no AVX-512** (Haswell) |
| OS / kernel | Ubuntu 24.04.4 LTS (noble), kernel 6.8.0-136-generic |
| Disk layout | sda3 = 63G root (`/opt/llvm` lives here); sda4 = 1.1T `/mydata` (work tree); `/users` = NFS |
| Pinned opt/llc | trunk LLVM at `/opt/llvm` (record: `llvm-config --version` + build commit) |
| Swift | swift.org Linux **6.3.3-RELEASE** at `/mydata/swift-toolchain` (clang 21.0.0 swiftlang fork) |
| Julia / Rust | juliaup / rustup in `/users/AmiraliE` (record `julia --version`, `rustc --version` at run time) |
| Timing protocol | `echo 1 \| sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo`; `numactl --cpunodebind=0 --membind=0`; tmux; corpora in /dev/shm; shuffled interleaved reps; median-primary |

Reproducibility: CloudLab publishes full c220g2 specs; request hardware type
`c220g2` at instantiation to get an identical machine.

## Mac (M-series instrument + UNSAT-discovery lab)

| Field | Value |
|---|---|
| Machine | MacBook Pro (record exact chip: `sysctl -n machdep.cpu.brand_string`, `system_profiler SPHardwareDataType`) |
| LLVM | trunk build at `~/Project/compiler/llvm-project/build/bin` (record commit) |
| Swift | Xcode swiftc 6.3+ (record `swiftc --version`) |
| Notes | arm64 traps lower to `brk` (ud1/ud2 census proxy invalid); probe-stack strip applied by run_swift_perf.sh |

## TODO before submission
- [ ] `llvm-config --version` + LLVM git commit on both machines
- [ ] libz3 version on both machines (`ldd build/OraclePass.so`; `strings libz3.so | grep 'Z3 [0-9]'`)
- [ ] Mac chip model + macOS version
- [ ] microcode / mitigations note if a reviewer asks (server: `lscpu` flags show pti/ibrs era mitigations on)
