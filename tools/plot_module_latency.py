#!/usr/bin/env python3
"""Per-module ODeSSy compile time for zlib and zstd (results/static/compile_cost).

One panel per repository, modules sorted by Thorough time; bars for Thorough
and Fast on a log axis, and a dashed line at one minute.
Usage: python3 tools/plot_module_latency.py [--out paper/module_latency.pdf]
"""
import collections
import csv
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker
import numpy as np

CSV = "results/static/compile_cost/modules.csv"
BAD = ("", "NA", "FAIL", None)
COL = {"thorough": "#1f4e79", "fast": "#7fb2dd"}
plt.rcParams.update({"font.family": "serif", "font.serif": ["DejaVu Serif"], "pdf.fonttype": 42})


def load():
    mods = collections.OrderedDict()
    for r in csv.DictReader(open(CSV)):
        m = mods.setdefault((r["bench"], r["module"]), {})
        for c, v in r.items():
            if c and v not in BAD:
                m[c] = v
    return mods


def main():
    out = sys.argv[sys.argv.index("--out") + 1] if "--out" in sys.argv else "paper/module_latency.pdf"
    mods = load()
    fig, axes = plt.subplots(1, 2, figsize=(10, 3.4), gridspec_kw={"width_ratios": [14, 18]}, sharey=True)
    for ax, repo in zip(axes, ("zlib", "zstd")):
        rows = [(m, d) for (b, m), d in mods.items() if b == repo]
        rows.sort(key=lambda x: -float(x[1]["thorough_s"]))
        x = np.arange(len(rows)); w = 0.38
        for i, cfg in enumerate(("thorough", "fast")):
            ax.bar(x + (i - 0.5) * w, [float(d[cfg + "_s"]) for _, d in rows], w, color=COL[cfg],
                   label=cfg.capitalize() if repo == "zlib" else None)
        ax.axhline(60, color="#555555", lw=0.8, ls="--", zorder=0)   # behind the bars
        med = np.median([float(d["thorough_s"]) for _, d in rows])
        ax.set_title(f"{repo}: {len(rows)} modules, Thorough median {med:.1f} s", fontsize=9.5)
        ax.set_xticks(x)
        ax.set_xticklabels([m for m, _ in rows], rotation=60, ha="right", fontsize=7)
        ax.set_yscale("log")
        ax.set_ylim(1e-2, 5e3)                        # every decade, uniformly labelled
        ax.set_yticks([1e-1, 1e1, 1e3])                       # labelled decades
        ax.yaxis.set_minor_locator(matplotlib.ticker.FixedLocator([1e-2, 1e0, 1e2]))
        ax.yaxis.set_minor_formatter(matplotlib.ticker.NullFormatter())   # tick marks only
        ax.set_axisbelow(True)                                # grid behind the bars
        ax.grid(axis="y", which="major", color="#eeeeee")
        ax.spines[["top", "right"]].set_visible(False)
    axes[0].set_ylabel("ODeSSy stage time per module (s)", fontsize=9)
    axes[0].text(len([1 for (b, _) in mods if b == "zlib"]) - 0.5, 66, "1 min", fontsize=7, ha="right", color="#555555")
    fig.legend(loc="upper center", ncol=2, fontsize=8, frameon=False, bbox_to_anchor=(0.5, 1.03))
    fig.tight_layout(rect=(0, 0, 1, 0.94))
    fig.savefig(out, bbox_inches="tight", pad_inches=0.02)
    print("figure ->", out)


if __name__ == "__main__":
    main()
