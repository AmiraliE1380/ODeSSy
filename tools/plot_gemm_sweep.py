#!/usr/bin/env python3
"""
plot_gemm_sweep.py -- checked-vs-@inbounds GEMM speedup over (m, n, k), from
results/perf/jl_gemm_sweep_*.log (native_bench/jl_gemm_sweep.jl output).
Left panel: square scaling (m = n = k) as a line on a log-x axis.
Right panel: the aspect-ratio / short-inner-loop shapes as labeled bars.
Usage: python3 tools/plot_gemm_sweep.py [--log results/perf/jl_gemm_sweep_server_0830.log]
                                        [--out paper/gemm_sweep.pdf]
"""
import re
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt


def main():
    args = sys.argv[1:]
    logs = ["results/perf/jl_gemm_sweep_server_0830.log",
            "results/perf/jl_gemm_sweep_server_4096_0830.log"]
    out = "paper/gemm_sweep.pdf"
    if "--log" in args:   # comma-separated list of logs (merged)
        logs = args[args.index("--log") + 1].split(",")
    if "--out" in args:
        out = args[args.index("--out") + 1]
    rows = []
    import os
    for log in logs:
        if not os.path.exists(log):
            continue
        for line in open(log):
            if line.startswith("#"):
                continue
            p = line.split()
            if len(p) < 8:
                continue
            m, n, k = int(p[0]), int(p[1]), int(p[2])
            sp = float(p[6].rstrip("x"))
            rows.append((m, n, k, sp))
    square = sorted([(m, s) for m, n, k, s in rows if m == n == k])
    other = [(f"{m}$\\times${n}$\\times${k}", s) for m, n, k, s in rows if not (m == n == k)]

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7.2, 2.7), gridspec_kw={"width_ratios": [1, 1.35]})
    xs = [m for m, _ in square]; ys = [s for _, s in square]
    ax1.plot(xs, ys, marker="o", color="#1f77b4", linewidth=1.6)
    for x, y in zip(xs, ys):
        ax1.annotate(f"{y:.1f}$\\times$", (x, y), textcoords="offset points", xytext=(0, 6),
                     ha="center", fontsize=7)
    ax1.set_xscale("log", base=2)
    ax1.set_xticks(xs); ax1.set_xticklabels([str(x) for x in xs], fontsize=7)
    ax1.set_xlabel("m = n = k", fontsize=8)
    ax1.set_ylabel("speedup, checks $\\to$ @inbounds", fontsize=8)
    ax1.set_ylim(0, max(ys) * 1.25)
    ax1.axhline(1.0, color="#999999", linewidth=0.8, linestyle="--")
    ax1.set_title("square scaling", fontsize=8.5)

    labels = [l for l, _ in other]; vals = [v for _, v in other]
    ax2.bar(range(len(vals)), vals, color="#1f77b4", width=0.7)
    for i, v in enumerate(vals):
        ax2.text(i, v + 0.08, f"{v:.1f}$\\times$", ha="center", fontsize=7)
    ax2.set_xticks(range(len(vals)))
    ax2.set_xticklabels(labels, rotation=45, ha="right", fontsize=6.5)
    ax2.set_xlabel("m $\\times$ n $\\times$ k", fontsize=8)
    ax2.set_ylim(0, max(vals) * 1.25)
    ax2.axhline(1.0, color="#999999", linewidth=0.8, linestyle="--")
    ax2.set_title("aspect ratios and short inner loops", fontsize=8.5)
    for ax in (ax1, ax2):
        ax.tick_params(labelsize=7)
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
    fig.tight_layout()
    fig.savefig(out)
    print(f"figure -> {out}   (square: {ys}; others: {vals})")


if __name__ == "__main__":
    main()
