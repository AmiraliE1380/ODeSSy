#!/usr/bin/env python3
"""
plot_dial_matrix.py -- heatmap of oracle-stage wall-clock over the two dials
(threads x per-query timeout), from evaluation/dial_matrix.csv produced by
scripts/run_dial_matrix.sh. Cell = median wall over reps (seconds), colored
on a log scale from red (slow) to green (fast); each cell also prints the
UNSAT count so the reader sees proof yield is timeout-driven, wall is
thread-driven, and the two knobs compose.

Usage: python3 tools/plot_dial_matrix.py [--csv evaluation/dial_matrix.csv]
                                         [--out paper/dial_matrix.pdf]
"""
import csv
import statistics
import sys
from collections import defaultdict

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.colors import LogNorm
import numpy as np


def main():
    args = sys.argv[1:]
    csv_path, out = "evaluation/dial_matrix.csv", "paper/dial_matrix.pdf"
    if "--csv" in args:
        csv_path = args[args.index("--csv") + 1]
    if "--out" in args:
        out = args[args.index("--out") + 1]

    walls, unsat = defaultdict(list), {}
    for r in csv.DictReader(open(csv_path)):
        key = (int(r["threads"]), int(r["timeout_ms"]))
        walls[key].append(float(r["wall_s"]))
        unsat[key] = int(r["unsat"])
    threads = sorted({k[0] for k in walls})
    timeouts = sorted({k[1] for k in walls})
    M = np.array([[statistics.median(walls[(t, to)]) for to in timeouts] for t in threads])

    fig, ax = plt.subplots(figsize=(6.2, 3.6))
    im = ax.imshow(M, cmap="RdYlGn_r", norm=LogNorm(vmin=M.min(), vmax=M.max()),
                   aspect="auto")
    for i, t in enumerate(threads):
        for j, to in enumerate(timeouts):
            ax.text(j, i, f"{M[i, j]:.1f} s\n{unsat[(t, to)]} unsat",
                    ha="center", va="center", fontsize=7.5, color="#111111")
    ax.set_xticks(range(len(timeouts)))
    ax.set_xticklabels([f"{to} ms" if to < 1000 else f"{to // 1000} s" for to in timeouts],
                       fontsize=8)
    ax.set_yticks(range(len(threads)))
    ax.set_yticklabels([str(t) for t in threads], fontsize=8)
    ax.set_xlabel("per-query timeout", fontsize=9)
    ax.set_ylabel("worker threads", fontsize=9)
    ax.set_title("Oracle-stage wall-clock, zlib deflate (unsigned, O1)", fontsize=9.5)
    cb = fig.colorbar(im, ax=ax, fraction=0.046, pad=0.03)
    cb.set_label("wall-clock (s, log scale)", fontsize=8)
    cb.ax.tick_params(labelsize=7)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    fig.tight_layout()
    fig.savefig(out)
    print(f"figure -> {out}")
    # diagonal summary for the text
    lo, hi = (threads[0], timeouts[-1]), (threads[-1], timeouts[0])
    print(f"corner-to-corner: threads={lo[0]},timeout={lo[1]}ms -> {statistics.median(walls[lo]):.2f}s ; "
          f"threads={hi[0]},timeout={hi[1]}ms -> {statistics.median(walls[hi]):.2f}s ; "
          f"ratio {statistics.median(walls[lo]) / statistics.median(walls[hi]):.1f}x")
    t8 = (8, 10000) if (8, 10000) in walls else None
    t1 = (1, 10000) if (1, 10000) in walls else None
    if t8 and t1:
        print(f"thread speedup @10s: {statistics.median(walls[t1]) / statistics.median(walls[t8]):.2f}x (1 -> 8 threads)")


if __name__ == "__main__":
    main()
