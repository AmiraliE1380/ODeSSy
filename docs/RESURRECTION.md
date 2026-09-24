# RESURRECTION — rebuilding the CloudLab timing instrument

### Status: image BAKED 2026-08-17. Kit verified. This file is the whole recovery story.
### Read with docs/MACHINE_SPEC.md (what the machine is) and docs/HANDOFF.md (what to run on it).

---

## 0. THE THREE ARTIFACTS (any one alone is insufficient; together they are complete)

| # | Artifact | Where | Contains | Survives |
|---|---|---|---|---|
| 1 | **Git repo** | github.com/AmiraliE1380/ODeSSy | all source, scripts, results/, docs/ | forever |
| 2 | **Disk image** | `urn:publicid:IDN+wisc.cloudlab.us+image+odessy-PG0:odessy-cgo-full` (4.75 GB) | root fs: `/opt/llvm`, libz3, apt pkgs, `/opt/odessy-preserve/*` | until deleted from project |
| 3 | **NFS preserve dir** | `/proj/odessy-PG0/odessy-preserve/` (~4 GB) | same tarballs as (2), independent of imaging | as long as the project exists |

**Artifact 3 is the true insurance** — it needs no imaging machinery, is mountable by any
future experiment in project odessy-PG0, and was md5-verified against the originals.

### Contents of the preserve dir / `/opt/odessy-preserve`
```
swift-toolchain.tar     3.3G  Swift 6.3.3-RELEASE Linux toolchain (md5 f29b3e9844bf2ffb195ffcf6a6d0a747)
odessy-repo.tgz         261M  /mydata/ODeSSy minus build/
benchmarks.tar          156M  zlib lz4 zstd CryptoSwift polybench openssl (no .git)
home-toolchains.tgz     298M  .juliaup .cargo .rustup (also live on NFS home)
benchmark_commits.txt         exact upstream commit per benchmark (below)
VERSIONS.txt                  toolchain versions + cmake cache
apt-packages.txt              dpkg --get-selections
```

### Benchmark commit pins
```
CryptoSwift   ab566122baad4f9af7d8cbadeac3e1e8fef3791d
llvm-project  3cab3bc6384b5f58cab7140d00d7a527eade010e
lz4           0774d05537f9762f838f7ab541b7765f1a729cb5
ODeSSy        ef2003552d22fa7185e71c736b58b293aaccd35b   (v3.0-cgo-campaign-freeze era)
openssl       33482fbddcf137dde9bd84ae12f2f02cbc358c78
polybench     3e872547cef7e5c9909422ef1e6af03cf4e56072
zlib          e3dc0a85b7032e98380dec011bc8f2c2ee0d8fca
zstd          5c7b7bad26808e6b40ac3b3d0075466e27738a9d
```

---

## 1. STORAGE TRUTH TABLE (c220g2 — learned the hard way)

| Path | Device | In disk image? | Survives experiment death? |
|---|---|---|---|
| `/` incl. `/opt/llvm`, `/usr`, apt, `/opt/odessy-preserve` | sda3 (63 G) | **YES** | via image |
| `/mydata` (work tree, swift toolchain, benchmarks) | sda4 (1.1 T, ext4) | **NO** | **NO — destroyed** |
| `/users/AmiraliE` (`.juliaup .cargo .rustup`, shell rc) | NFS | **NO** | YES (Wisc fileserver) |
| `/proj/odessy-PG0` | NFS, 100 G (95 G free) | **NO** | **YES** |

The CloudLab dialog states it plainly: *"The contents of your home directory is NOT saved
and will be deleted during the imaging process."* Only the **primary partition** is captured.

=> **Rule: anything that must survive goes to `/opt/...` (for the image), to
`/proj/odessy-PG0/odessy-preserve/` (for NFS), or to git. Never only `/mydata`.**

---

## 2. RE-PRESERVE (run before every future re-image)

```bash
sudo mkdir -p /opt/odessy-preserve
sudo tar cf  /opt/odessy-preserve/swift-toolchain.tar -C /mydata swift-toolchain   # plain tar: binaries, gzip is slow
sudo tar czf /opt/odessy-preserve/odessy-repo.tgz --exclude='ODeSSy/build' -C /mydata ODeSSy
sudo tar cf  /opt/odessy-preserve/benchmarks.tar --exclude='.git' \
     -C /mydata zlib lz4 zstd CryptoSwift polybench openssl
sudo tar czf /opt/odessy-preserve/home-toolchains.tgz -C "$HOME" .juliaup .cargo .rustup
for d in /mydata/*/; do [ -d "$d/.git" ] && echo "$(basename $d) $(git -C $d rev-parse HEAD)"; done \
  | sudo tee /opt/odessy-preserve/benchmark_commits.txt
dpkg --get-selections | sudo tee /opt/odessy-preserve/apt-packages.txt >/dev/null

# VERIFY — a truncated tar is worse than no tar
for f in /opt/odessy-preserve/*.tar /opt/odessy-preserve/*.tgz; do
  printf '%-50s ' "$f"; tar tf "$f" >/dev/null 2>&1 && echo OK || echo CORRUPT; done
tar tf /opt/odessy-preserve/benchmarks.tar | awk -F/ '{print $1}' | sort -u   # expect 6 repos

# MIRROR TO NFS (do this even if you skip imaging)
mkdir -p /proj/odessy-PG0/odessy-preserve
cp -a /opt/odessy-preserve/* /proj/odessy-PG0/odessy-preserve/
md5sum /opt/odessy-preserve/swift-toolchain.tar /proj/odessy-PG0/odessy-preserve/swift-toolchain.tar
```
Do NOT tar `/mydata` wholesale — `llvm-project` source is huge and rebuildable from the
commit pin, and `/opt/llvm` (the built toolchain) is already in the image.

Then: portal → **List View** → node row action menu (▾) → **Create Disk Image**.
Answer **NO** to "Did you add any accounts or groups?" (the `AmiraliE` account is
testbed-managed, not manually created). Node reboots into the admin MFS; ~20–40 min;
browser may be closed, it runs server-side.

---

## 3. REVIVE SEQUENCE (fresh node)

```bash
# 1. Instantiate: profile small-lan, hardware type c220g2 (CRITICAL — see §5),
#    osImage = urn:publicid:IDN+wisc.cloudlab.us+image+odessy-PG0:odessy-cgo-full
#    tempFileSystemMount = /mydata

# 2. Restore the work tree
sudo tar xf  /opt/odessy-preserve/swift-toolchain.tar -C /mydata
sudo tar xzf /opt/odessy-preserve/odessy-repo.tgz     -C /mydata
sudo tar xf  /opt/odessy-preserve/benchmarks.tar      -C /mydata
sudo chown -R $USER /mydata
# (or pull the same tarballs from /proj/odessy-PG0/odessy-preserve/ if the image is gone)

# 3. PATH — order matters: clang MUST resolve to the swift toolchain's clang-21,
#    opt/llc MUST resolve to /opt/llvm (LLVM 23.0.0git). Every committed log was
#    produced with that pairing; swapping in /opt/llvm/bin/clang breaks comparability.
export PATH=/mydata/swift-toolchain/usr/bin:/opt/llvm/bin:$PATH
for t in clang opt llc swiftc; do printf '%-8s %s\n' "$t" "$(command -v $t)"; done
# expect: clang -> /mydata/swift-toolchain/usr/bin/clang-21 ; opt -> /opt/llvm/bin/opt

# 4. Rebuild the pass
cd /mydata/ODeSSy && git pull
mkdir -p build && cd build && cmake -G Ninja -DLLVM_DIR=/opt/llvm/lib/cmake/llvm .. && ninja
cd ..

# 5. CANARY — the single command that proves the environment
bash run_tests.sh          # MUST print  PASS=17 FAIL=6
```
The 6 FAILs are heavy/ldeq/stride tests under the light gate **by design**;
`test_heavy_scevsym_sat` and `test_heavy_scevsym_stride_sat` MUST PASS (over-tightness tripwires).

```bash
# 6. Workloads (never in git)
mkdir -p perf_test
head -c 1048576 /dev/urandom > perf_test/sha_input.bin
python3 -c "open('perf_test/utf8_input.txt','wb').write(('汉字漢字テキストκείμενο'*40000).encode())"

# 7. Stabilize BEFORE any timing run
echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
cat /sys/devices/system/cpu/intel_pstate/no_turbo     # must read 1
# wrap every timed run:  numactl --cpunodebind=0 --membind=0
# run inside tmux; corpora go to /dev/shm (harnesses do this automatically)

# 8. If DNS dies:  echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
```

### Re-validation after resurrection (do NOT re-run the whole campaign)
Three checks decide whether the existing PAPER_FACTS table still stands:
1. `run_tests.sh` → PASS=17 FAIL=6
2. one ceiling: `swiftc -O` vs `-Ounchecked` on sha256, 3–5 runs, compare user-time medians
3. one known number: sha256 REPS=30 should land near **+4.7 / +5.0 %**

If all three agree, the committed numbers are valid and no re-measurement is needed.

---

## 4. ENVIRONMENT FACTS (each one cost a debugging round)

- **`z3` CLI is NOT installed and NOT needed.** The pass links **libz3** directly:
  `/usr/lib/x86_64-linux-gnu/libz3.so.4`, Ubuntu package `libz3-4` **4.8.12-3.1build1**,
  on the root fs (in the image). Recover with `sudo apt install libz3-dev`.
  Verify: `ldd build/OraclePass.so | grep z3`.
- **Two clangs exist.** swift-toolchain clang-21 (used for ALL logs) vs whatever `/opt/llvm`
  ships. Always confirm with `command -v clang` before a campaign.
- **`CMAKE_BUILD_TYPE` is unset** in the committed build — the plugin is built at cmake
  defaults. Do NOT "fix" this mid-campaign; it would break comparability with every
  existing log. Reported pass latencies are therefore an upper bound (honest, defensible).
- `llc` needs `-relocation-model=pic` on Linux and the probe-stack strip on macOS arm64 —
  both already in `run_swift_perf.sh`; do not remove.
- Julia 1.12 bounds symbol is `j_throw_boundserror_NNN`; `traps=` list uses ':' as the
  separator (`bounds_error:boundserror`) because opt eats commas.
- Rust needs `-C panic=abort` (unwind emits `invoke`, invisible to the CallInst hunter).
- `perf_swift_work/` and `logs/` are gitignored scratch — copy keepers to the repo.
- Never `git push` from an unattended script without `GIT_TERMINAL_PROMPT=0`, or a
  credential prompt will hang the whole overnight run.

---

## 5. COMPARABILITY WARNING (read before touching another machine)

All server rows in PAPER_FACTS were measured on **c220g2**: dual Xeon E5-2660 v3
(Haswell-EP, AVX2, **no AVX-512**), DDR4-2133, turbo disabled, socket-0 pinned.
Effect sizes are +4.7 % to +7.3 % — small enough that microarchitecture is part of
the experiment.

**Pin the hardware type at instantiation.** c220g2 is a 2015-era node and among the
least contended in the fleet, so getting one back is normally easy even during term.

If ever forced onto a different type: re-measure the **checked-vs-unchecked ceiling**
first and report recovery as a *fraction of that machine's own ceiling*. A ceiling-
relative number ports across microarchitectures; a raw percentage does not. Never mix
rows from two hardware types in one table without labelling the type per row.

---

## 6. EXPIRY / EXTENSION PLAYBOOK

- Extensions are denied for **idleness**, not scarcity. Request while the node is
  visibly loaded (start the campaign first, ask an hour in).
- State the deadline, the specific work running, and why it must stay on this node
  (cross-run comparability), and commit to terminating when done.
- Regardless of the answer: preserve + mirror to `/proj` BEFORE the request, never after.
- Original experiment: `odessy-cgo`, profile `small-lan`, project ODeSSy,
  started 2026-07-29, node `c220g2-010821` @ wisc.

---

## 7. SEP 24 2026 REVIVAL — the image boot-loops on a fresh node (READ FIRST)

**Symptom.** Experiment state `failed` ("nodes failed to setup"), node stuck
in `changing / BOOTING`, ssh times out. The serial console log shows the
image written and booting fine (Ubuntu 24.04.4, kernel 6.8.0-136, network
online), then systemd waiting 90 s for `/dev/sda4`, "Dependency failed for
Local File Systems", **emergency mode**, then a CloudLab power-cycle. Forever.

**Cause.** `odessy-cgo-full:0` was captured with a `/dev/sda4 → /mydata`
line in `/etc/fstab` (the temp-filesystem setup writes one). On a fresh node
`sda4` does not exist at boot: CloudLab creates the `/mydata` blockstore only
AFTER the node boots and checks in. The boot waits for a disk that only the
finished boot can create. Deterministic — a different node fails identically.

**Fix that worked** (node `c220g2-010809`):
1. Portal → List View → node menu → **Console** (interactive, not Console Log).
2. Reboot the node from the same menu; press **e** the moment the
   `GNU GRUB version 2.12` box shows `*Ubuntu` (it stays ~seconds).
3. Down-arrow to the `linux /boot/vmlinuz-6.8.0-136-generic ...` line,
   **Control-E**, append ` init=/bin/bash`, **Control-X**.
4. At `root@(none):/#` paste ONE line (the watchdog can power-cycle mid-typing):
   `mount -o remount,rw / && sed -i.bak2 '/sda4/d' /etc/fstab && sync && grep -c sda4 /etc/fstab`
   → must print `0`.
5. Reboot from the portal; do NOT press e. Boots clean, checks in, ssh works.

**What does NOT work:** Control-D at the emergency prompt only re-enters
emergency mode (default.target also needs local-fs.target). No root password
is set in the image.

**Permanent fix:** before imaging again, `grep -nE 'mydata|sda4|emulab' /etc/fstab`
and delete any `/mydata` line; then snapshot → `odessy-cgo-full:1` and point
the profile at `:1`.

**Other deltas vs §3 as written:**
- `small-lan`'s OS-image dropdown cannot select project images. Use the
  one-node geni-lib profile `ODeSSy/odessy-c220g2` (hardware_type c220g2,
  disk_image `...odessy-cgo-full:0`, Blockstore `/mydata` size 0GB = all).
- `/mydata` is now a **2.1 TB LVM volume** (`emulab-bs` over sda4 + sdb),
  not August's 1.1 TB ext4 partition. No effect on timing.
- The repo tarball is at the CGO freeze: `git checkout oopsla-research`.
- Test scripts moved: `bash scripts/run_tests.sh` → **27 PASS / 12 FAIL**
  (by design), `bash scripts/run_mv_tests.sh` → **9 / 0**. The 17/6 canary
  in §3 is the CGO-era pass.
- Verify the toolchain against the August record with
  `bash scripts/check_env.sh` (flags every DIFF; run after PATH is set).
- Still true: `/opt/llvm` exists ONLY inside the disk image. Tar it into
  `/proj/odessy-PG0/odessy-preserve/` so losing the image costs minutes,
  not an LLVM rebuild.

### 7.1 First server gate run on the revived node (Sep 24 2026)

- `check_env.sh`: every toolchain row matches August (Ubuntu 24.04.4,
  kernel 6.8.0-136, E5-2660 v3, LLVM 23.0.0git @3cab3bc, C via Swift
  clang-21, Swift 6.3.3, Z3 4.8.12-3.1build1). Expected DIFFs: turbo (set
  it before timing) and Julia/Rust (see below).
- `run_tests.sh`: 27 PASS / 12 FAIL, the SAME twelve by-design failures as
  the Mac.
- `run_mv_tests.sh`: 8/9 at the default 3000 ms. The one failure,
  test_mv_symbolic, is SOLVER SPEED, not a porting bug: its re-solve under
  the hypothesis candidates (a 64-bit `n*n` query) takes ~3.6 s here vs
  ~0.6 s on the Mac, so at 3 s it straddles the budget (it failed in the
  gate and folded on a manual rerun). At the campaign budget it folds
  deterministically with the SAME hypothesis and core as the Mac:
  `TIMEOUT=10000 bash scripts/run_mv_tests.sh` -> 9/9.
- The pass did not build at first: Narrow.cpp relied on uint64_t being
  `unsigned long long` (true on macOS, not Linux). Fixed in c5e20f4.
- HOME IS NOT NFS on this node: `/users/AmiraliE` is on the local root
  disk, so `.juliaup .cargo .rustup` are absent. Restore them with
  `tar xzf /opt/odessy-preserve/home-toolchains.tgz -C $HOME`. `/proj/odessy-PG0`
  IS NFS-mounted and the preserve copies are intact there.
- Do NOT push from the server. Pull over https needs no credentials; bring
  results back to the Mac with rsync/scp and commit there.
- **Julia drifted on first launch.** The restored `.juliaup` defaults to the
  moving `release` channel; on the first `julia` call on the new node juliaup
  moved it from 1.12.6 to **1.13.0** ("Checking for new Julia versions").
  August used 1.12.6. Pinned on BOTH machines on Sep 24 2026:
  `juliaup add 1.12.6 && juliaup default 1.12.6 && juliaup config versionsdbupdateinterval 0`
  and, for the same reason, Rust off the moving `stable` channel:
  `rustup toolchain install 1.97.1 --profile minimal && rustup default 1.97.1`.
  `check_env.sh` now flags an unpinned default (rows `jlpin`, `rspin`).
- `/opt/llvm` insurance copy made: `/proj/odessy-PG0/odessy-preserve/opt-llvm.tar` (2.3 GB).
- Final `check_env.sh` on c220g2-010809 with turbo off: no DIFF lines.
