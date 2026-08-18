# RESURRECTION — rebuilding the CloudLab timing instrument from the disk image

### What the image contains, what it doesn't, and the exact revive sequence.
### Written 2026-08-18, the day the extension was denied. Keep current.

## Storage truth table (c220g2, one physical disk, THREE fates)

| Path | Device | In disk image? | Survives experiment death? |
|---|---|---|---|
| `/` incl. `/opt/llvm`, `/usr`, apt pkgs | sda3 (63G) | **YES** | via image only |
| `/mydata` (ODeSSy, swift-toolchain, benchmarks) | sda4 (1.1T) | **NO** | **NO — dies with node** |
| `/users/AmiraliE` (.juliaup .cargo .rustup) | NFS | NO | YES (Wisc fileserver) |
| `/proj/odessy-PG0` | NFS | NO | YES — 100G project space, usable as extra backup |

=> Anything that must survive goes either (a) into `/opt/odessy-preserve` on the
root fs BEFORE re-imaging, (b) to GitHub, or (c) to `/proj/odessy-PG0`.

## Preserve checklist (run before every re-image)

```bash
sudo mkdir -p /opt/odessy-preserve
# Swift toolchain — the hardest thing to re-obtain. Plain tar (binaries, skip gzip).
sudo tar cf /opt/odessy-preserve/swift-toolchain.tar -C /mydata swift-toolchain
# ODeSSy minus build/
sudo tar czf /opt/odessy-preserve/odessy-repo.tgz --exclude='ODeSSy/build' -C /mydata ODeSSy
# Benchmark commit pins + sources
for d in /mydata/*/; do [ -d "$d/.git" ] && echo "$(basename $d) $(git -C $d rev-parse HEAD)"; done \
  | sudo tee /opt/odessy-preserve/benchmark_commits.txt
# libz3 IF ldd shows it under /mydata (check: ldd /mydata/ODeSSy/build/OraclePass.so | grep z3)
# home toolchains snapshot (belt & braces; NFS should survive anyway)
sudo tar czf /opt/odessy-preserve/home-toolchains.tgz -C "$HOME" .juliaup .cargo .rustup
df -h /    # must stay well under 63G
```
Then: CloudLab portal -> node -> **Create Disk Image** (node stays up; 20-40 min).

## Revive sequence (fresh node from the image)

1. Instantiate profile with hardware type **c220g2**, disk image = the ODeSSy image.
2. `sudo mkdir -p /mydata && sudo /usr/local/etc/emulab/mkextrafs.pl /mydata` if the
   profile didn't remount the blockstore (or use the profile's /mydata parameter).
3. `sudo tar xf /opt/odessy-preserve/swift-toolchain.tar -C /mydata`
   `sudo tar xzf /opt/odessy-preserve/odessy-repo.tgz -C /mydata`
   `sudo chown -R $USER /mydata`
4. Benchmarks: `cd /mydata && git clone` zlib/zstd/lz4/CryptoSwift, then
   `git checkout` the hashes in `/opt/odessy-preserve/benchmark_commits.txt`.
5. `cd /mydata/ODeSSy && git pull && mkdir -p build && cd build && cmake -G Ninja .. && ninja`
   (LLVM at `/opt/llvm` is already in the image; PATH: `export PATH=/opt/llvm/bin:/mydata/swift-toolchain/usr/bin:$PATH`.)
6. **Canary:** `bash run_tests.sh` -> must print **PASS=17 / FAIL=6**
   (the 6 FAILs are heavy/ldeq/stride under the light gate BY DESIGN;
   `test_heavy_scevsym_sat` + `test_heavy_scevsym_stride_sat` must PASS).
7. Workloads (never in git): `mkdir -p perf_test`;
   `head -c 1048576 /dev/urandom > perf_test/sha_input.bin`;
   utf8 input per HANDOFF §0.
8. Before ANY timing: `echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo`;
   wrap timed runs in `numactl --cpunodebind=0 --membind=0`; run inside tmux.
9. DNS flake fix: `echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf`.

## Known environment facts
- `z3` CLI is NOT installed and NOT needed — the pass links **libz3** directly.
  Verify with `ldd build/OraclePass.so | grep z3`. Record its path + version here:
  - libz3 path: ______  version: ______
- `/opt/llvm` = pinned trunk opt/llc (IN the image). LLVM commit: ______
- Swift Linux toolchain 6.3.3 tarball also mirrored at: ______ (upload a copy to
  /proj/odessy-PG0 — swift.org links rot).

## Comparability warning
Timing numbers are only comparable within the same hardware type. All server
rows in PAPER_FACTS were measured on **c220g2** (Haswell-EP, AVX2/no-AVX-512,
DDR4-2133). If forced onto a different type, re-run the checked-vs-unchecked
CEILING first and interpret recovery as a fraction of that machine's own ceiling.
