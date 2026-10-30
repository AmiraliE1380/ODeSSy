#!/usr/bin/env python3
"""Verdict-cache commit-replay table (HANDOFF §13.5): per library and per
module (>= 2 s cold), median ODeSSy time over the replayed commits (seed
excluded) for: cold (no cache), commits that changed the row's checked
functions (hot cache), commits that did not (hot cache); ratio vs cold.
Usage: python3 tools/cache_replay_table.py results/cache/replay_zlib results/cache/replay_zstd"""
import collections, csv, os, statistics as st, sys

def fmt(t, c):
    if t is None: return "—"
    r = c / t
    return f"{t:.2f} s ({r:.0f}×)" if r >= 10 else f"{t:.2f} s ({r:.1f}×)"

print("| benchmark | cold cache | commit changed it + hot cache | identical + hot cache |\n|---|---|---|---|")
for d in sys.argv[1:]:
    name = os.path.basename(d.rstrip("/")).replace("replay_", "")
    rows = [x for x in csv.DictReader(open(os.path.join(d, "modules.csv"))) if x["idx"] != "1"]
    byc = collections.defaultdict(list)
    for x in rows: byc[x["idx"]].append(x)
    cold = st.median(sum(float(x["nocache_s"]) for x in v) for v in byc.values())
    ch = [sum(float(x["cached_s"]) for x in v) for v in byc.values() if any(int(x["misses"]) for x in v)]
    ih = [sum(float(x["cached_s"]) for x in v) for v in byc.values() if not any(int(x["misses"]) for x in v)]
    print(f"| {name} (whole library) | {cold:.1f} s (1×) | {fmt(st.median(ch) if ch else None, cold)} | {fmt(st.median(ih) if ih else None, cold)} |")
    bym = collections.defaultdict(list)
    for x in rows: bym[x["module"]].append(x)
    for m, v in bym.items():
        c = st.median(float(x["nocache_s"]) for x in v)
        if c < 2: continue
        a = [float(x["cached_s"]) for x in v if int(x["misses"])]
        b = [float(x["cached_s"]) for x in v if not int(x["misses"])]
        print(f"| {name} {m} | {c:.1f} s (1×) | {fmt(st.median(a) if a else None, c)} | {fmt(st.median(b) if b else None, c)} |")
