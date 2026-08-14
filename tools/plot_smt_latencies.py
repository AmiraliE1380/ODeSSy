#!/usr/bin/env python3
"""
plot_smt_latencies.py -- SMT query latency distributions by verdict class.

Parses the pass's own per-trap verdict logs (every query line carries
"[Query Latency: X ms]"), classifies by verdict, and produces:
  * a stats table (count / mean / min / max / std / median) per class,
    printed and written to evaluation/smt_latency_stats.csv
  * one 2x2 figure: SAT, UNSAT, UNKNOWN histograms + all three overlaid,
    log-scaled latency axis (queries span ~1 ms .. timeout).
    Colors: SAT = red, UNSAT = blue, UNKNOWN/timeout = green.

Usage:
  python3 plot_smt_latencies.py logs/compilations/*_analysis.txt
  python3 plot_smt_latencies.py                 # default: that same glob
  python3 plot_smt_latencies.py --out myfig.png <logs...>
"""
import csv
import glob
import math
import re
import sys
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

# Verdict line: "-> UNSAT (...) [Query Latency: 12.34 ms]" etc.
LINE = re.compile(r"->\s+(UNSAT|SAT|UNKNOWN)[^\[]*\[Query Latency:\s*([0-9.]+)\s*ms\]")

CLASSES = ["SAT", "UNSAT", "UNKNOWN"]
COLOR = {"SAT": "#d62728", "UNSAT": "#1f77b4", "UNKNOWN": "#2ca02c"}  # red/blue/green
LABEL = {"SAT": "SAT (kept)", "UNSAT": "UNSAT (eliminated)",
         "UNKNOWN": "UNKNOWN / timeout (kept)"}

def stats(xs):
    n = len(xs)
    if n == 0:
        return dict(n=0, mean=None, min=None, max=None, std=None, median=None)
    mean = sum(xs) / n
    var = sum((x - mean) ** 2 for x in xs) / n
    s = sorted(xs)
    med = s[n // 2] if n % 2 else (s[n // 2 - 1] + s[n // 2]) / 2
    return dict(n=n, mean=mean, min=s[0], max=s[-1], std=math.sqrt(var), median=med)

def main():
    args = sys.argv[1:]
    out_png = "logs/smt_latencies.png"
    if "--out" in args:
        i = args.index("--out")
        out_png = args[i + 1]
        args = args[:i] + args[i + 2:]
    files = args or sorted(glob.glob("logs/compilations/*_analysis.txt"))
    if not files:
        sys.exit("no log files found (pass paths or run from the repo root)")

    data = {c: [] for c in CLASSES}
    for path in files:
        for line in open(path, errors="replace"):
            m = LINE.search(line)
            if m:
                data[m.group(1)].append(float(m.group(2)))

    total = sum(len(v) for v in data.values())
    if total == 0:
        sys.exit("no '[Query Latency: ...]' lines found in the given logs")

    # ---- stats table + CSV ----
    out_csv = Path("evaluation/smt_latency_stats.csv")
    out_csv.parent.mkdir(exist_ok=True)
    hdr = ["class", "count", "share_pct", "mean_ms", "min_ms", "max_ms", "std_ms", "median_ms"]
    print(f"{'class':10} {'count':>7} {'share':>7} {'mean_ms':>10} {'min_ms':>9} "
          f"{'max_ms':>10} {'std_ms':>10} {'median_ms':>10}")
    with open(out_csv, "w", newline="") as fh:
        w = csv.writer(fh)
        w.writerow(hdr)
        for c in CLASSES + ["ALL"]:
            xs = data[c] if c != "ALL" else [x for v in data.values() for x in v]
            st = stats(xs)
            share = 100.0 * st["n"] / total
            row = [c, st["n"], f"{share:.1f}%"] + [
                f"{st[k]:.2f}" if st[k] is not None else "" for k in
                ("mean", "min", "max", "std", "median")]
            w.writerow(row)
            print(f"{c:10} {st['n']:>7} {share:>6.1f}% " + " ".join(
                f"{st[k]:>10.2f}" if st[k] is not None else f"{'-':>10}"
                for k in ("mean", "min", "max", "std", "median")))
    print(f"stats -> {out_csv}")

    # ---- figure: 2x2, shared log-x so panels are visually comparable ----
    all_vals = [x for v in data.values() for x in v]
    lo = max(min(all_vals) * 0.8, 0.05)
    hi = max(all_vals) * 1.25
    import numpy as np
    bins = np.logspace(math.log10(lo), math.log10(hi), 40)

    fig, axes = plt.subplots(2, 2, figsize=(11, 7.5), sharex=True)
    fig.suptitle(f"SMT query latency by verdict  ({total} queries, {len(files)} logs)",
                 fontsize=13, color="#222222")

    for ax, c in zip(axes.flat[:3], CLASSES):
        xs = data[c]
        ax.hist(xs, bins=bins, color=COLOR[c], edgecolor="white", linewidth=0.4)
        st = stats(xs)
        ax.set_title(f"{LABEL[c]}  (n={st['n']})", fontsize=10, color="#222222")
        if st["n"]:
            ax.axvline(st["median"], color="#555555", linestyle="--", linewidth=1)
            # Anchor the stat box away from the mass of the distribution.
            on_right = st["median"] < math.sqrt(lo * hi)
            ax.annotate(f"median {st['median']:.1f} ms\nmean {st['mean']:.1f} ms\n"
                        f"max {st['max']:.0f} ms",
                        xy=(0.98 if on_right else 0.02, 0.95),
                        xycoords="axes fraction",
                        ha="right" if on_right else "left",
                        va="top", fontsize=8, color="#555555")
        ax.set_xscale("log")

    ax = axes.flat[3]
    for c in CLASSES:
        if data[c]:
            ax.hist(data[c], bins=bins, color=COLOR[c], histtype="step",
                    linewidth=1.8, label=LABEL[c])
    ax.set_xscale("log")
    ax.set_title("all classes (outline overlay)", fontsize=10, color="#222222")
    ax.legend(fontsize=8, frameon=False)

    for ax in axes.flat:
        ax.set_ylabel("queries", fontsize=9, color="#555555")
        ax.grid(True, which="both", axis="x", alpha=0.15)
        ax.tick_params(labelsize=8, colors="#555555")
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
    for ax in axes[1]:
        ax.set_xlabel("query latency (ms, log scale)", fontsize=9, color="#555555")

    fig.tight_layout(rect=(0, 0, 1, 0.96))
    Path(out_png).parent.mkdir(exist_ok=True)
    fig.savefig(out_png, dpi=160)
    print(f"figure -> {out_png}")

if __name__ == "__main__":
    main()
