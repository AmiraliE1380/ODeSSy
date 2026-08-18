# MACHINE_SPEC — the two timing instruments

### Source of truth for the paper's §Methodology. Verified on-node 2026-08-17.
### Cite these by name; never write "a server" or "a Mac".

---

## 1. Server — CloudLab Wisconsin `c220g2` (x86 timing instrument)

| Field | Value |
|---|---|
| CloudLab hardware type | **c220g2** — request this exact type when instantiating |
| Node / site | `c220g2-010821`, wisc.cloudlab.us, project ODeSSy, experiment `odessy-cgo` |
| CPU | 2 × Intel Xeon **E5-2660 v3** @ 2.60 GHz (Haswell-EP; family 6, model 63, stepping 2) |
| Topology | 2 sockets × 10 cores × 2 SMT = **40 hardware threads** |
| Frequency | base 2.60 GHz, max turbo 3.30 GHz, min 1.20 GHz — **turbo DISABLED for all timing** |
| Memory | DDR4 **2133 MT/s**, multi-bit ECC, 2 NUMA nodes (~160 GB; /dev/shm 79 G) |
| ISA | AVX2, FMA, BMI1/2, AES-NI, PCLMULQDQ — **no AVX-512** |
| Mitigations | pti, ibrs, ibpb, stibp, ssbd, md_clear, flush_l1d active (stock Ubuntu defaults) |
| OS / kernel | Ubuntu **24.04.4 LTS** (noble), kernel **6.8.0-136-generic** |
| Base image | `emulab-ops/UBUNTU24-64-STD:4` |
| Storage | sda3 = 63 G root (`/opt/llvm`, libz3, `/opt/odessy-preserve`); sda4 = 1.1 T ext4 `/mydata` (work tree); `/proj/odessy-PG0` = 100 G NFS |

### Server toolchain (exact, as used for every committed log)

| Tool | Version | Path |
|---|---|---|
| **LLVM (opt, llc)** | **23.0.0git** @ commit `3cab3bc6384b5f58cab7140d00d7a527eade010e` | `/opt/llvm/bin` |
| **Z3** | **4.8.12** (Ubuntu `libz3-4` 4.8.12-3.1build1) | `/usr/lib/x86_64-linux-gnu/libz3.so.4` |
| **clang** (all C compiles) | **21.0.0**, swiftlang fork @ `82cdc19fa54d566969527b56f587ea8ea30bef51` | `/mydata/swift-toolchain/usr/bin/clang-21` |
| **swiftc** | **6.3.3-RELEASE** (swift.org Linux) | `/mydata/swift-toolchain/usr/bin` |
| **Julia** | **1.12.6** (juliaup) | `/users/AmiraliE/.juliaup` |
| **rustc** | **1.97.1** (`8bab26f4f`, 2026-07-14) | `/users/AmiraliE/.cargo` |
| build system | cmake + ninja (`/usr/bin`), `CMAKE_CXX_COMPILER=/usr/bin/c++` | — |

> **Note the two clangs.** C benchmarks are compiled with the *swift-toolchain* clang-21,
> while `opt`/`llc` come from the pinned LLVM 23 trunk build. This pairing produced every
> number in PAPER_FACTS; do not swap in `/opt/llvm/bin/clang`.

### Pass build configuration (state this in the paper)
`CMAKE_BUILD_TYPE` is **unset** — the OraclePass plugin is built at cmake defaults, with
`LLVM_DIR=/opt/llvm/lib/cmake/llvm`, `Z3_LIBRARY=/usr/lib/x86_64-linux-gnu/libz3.so`,
`Z3_INCLUDE_DIR=/usr/include`. Correctness and verdicts are unaffected; the practical
consequence is that reported pass-side latency is an **upper bound** (solver time dominates,
and libz3 is an optimized distribution build). Left unchanged deliberately — altering it
mid-campaign would break comparability with all committed logs.

### Timing protocol (server)
```bash
echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo   # must read 1
numactl --cpunodebind=0 --membind=0 <timed command>               # socket-0 cpu+mem
```
plus: run inside tmux; corpora in `/dev/shm` (harnesses do this); warmup run before timing;
**shuffled interleaved reps**; REPS=30 for finals; **median-primary** (min/avg cosmetic);
`base` / `base2x` round-trip controls; output-byte-equivalence gate before any timing is trusted.

---

## 2. Mac — M-series (UNSAT-discovery lab + arm64 timing instrument)

| Field | Value |
|---|---|
| Machine | MacBook Pro, Apple M-series — **TODO: fill exact chip** (`sysctl -n machdep.cpu.brand_string`) |
| macOS | **TODO** (`sw_vers`) |
| LLVM | trunk build at `~/Project/compiler/llvm-project/build/bin` — **TODO: record commit + `llvm-config --version`** |
| Z3 | **TODO** (`otool -L build/OraclePass.dylib \| grep z3`) |
| swiftc | Xcode 6.3+ — **TODO: exact `swiftc --version`** |
| Julia / rustc | juliaup / rustup — **TODO** |
| Repo layout | `~/Project/compiler/ODeSSy`; benchmarks beside it (`../zlib ../zstd ../lz4 ../CryptoSwift ../DSP.jl`) |

### arm64-specific facts
- ubsantrap lowers to **`brk`**, not `ud1`/`ud2` — the objdump trap-census proxy used in
  `run_matrix.sh` is **x86-only and invalid here**; use IR call-site counts.
- `run_swift_perf.sh` strips Swift's `"probe-stack"` attribute (trunk llc rejects it on
  AArch64). Applied identically to every config, so comparisons stay fair — but the
  binaries lack stack-clash probes vs stock swiftc. **State this in methodology.**
- GNU userland required by the harnesses (`stat -c`, `shuf`, GNU `size`, bash ≥ 4):
  `brew coreutils gnubin` + `brew bash` on PATH.
- **arm64 runtime numbers are NOT comparable to the x86 tables.** They are a second,
  independent ISA data point — that is their purpose (cross-ISA agreement on sha256:
  +3.5–4.7 % Mac vs +4.7–5.0 % server).

---

## 2b. Measured ceilings & ceiling-relative recovery (server, 2026-08-18)

`swiftc -O` vs `-Ounchecked`, 5 runs, median wall, pinned, no_turbo
(ceilings_server_0818b.log); recovery = oracle-vs-base2x median REPS=30.

| Kernel | checked | unchecked | Ceiling | Oracle Δ | Recovery (of ceiling) |
|---|---|---|---|---|---|
| sha256 | 5.020 s | 4.570 s | **9.0%** | +4.74% | **53%** |
| adler32 | 4.814 s | 4.255 s | **11.6%** | +3.72% | **32%** (from 1/42 checks) |
| sha1 | 4.825 s | 4.596 s | **4.7%** | −4.65/−4.83% (×2) | **−98%** — stable regression ≈ its own ceiling |

The sha1 row is the honest one: a non-unlocking elimination on x86 costs
about what the checks themselves cost. Report it, don't hide it.

## 3. How to report machine-dependent results

Effect sizes in this paper are +4.7 % … +7.3 %, small enough that microarchitecture is
part of the experiment. Two rules keep the results portable:

1. **Report recovery as a fraction of that machine's own checked-vs-unchecked ceiling**,
   alongside the raw percentage. The ceiling is machine-relative; a ratio to it survives a
   change of hardware, a bare percentage does not.
2. **Label every runtime row with its hardware type.** Never mix c220g2 and M-series rows
   in one column without saying which is which.

Reproducibility statement for the paper: *"All x86 measurements were taken on a CloudLab
`c220g2` node (2 × Intel Xeon E5-2660 v3, Haswell-EP, 10 cores/socket, DDR4-2133, Ubuntu
24.04.4, kernel 6.8.0), with Intel turbo disabled and all timed runs pinned to socket 0 via
numactl. CloudLab publishes the full hardware specification for this node type."*

---

## 4. Outstanding TODOs before submission
- [ ] Fill every Mac row above (chip, macOS, LLVM commit, Z3, swiftc, julia, rustc)
- [ ] Confirm Mac LLVM commit matches the server's `3cab3bc…` or record the divergence
- [ ] Decide the wording for the `CMAKE_BUILD_TYPE`-unset disclosure (§1) in the paper
- [ ] Add the ceiling-relative column to the PAPER_FACTS master table
