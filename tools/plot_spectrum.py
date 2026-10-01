#!/usr/bin/env python3
"""Figure 1 (the cost--precision spectrum) as a vector PDF.

Redraws paper/spectrum.png with the same text, colors and layout.
Usage: python3 tools/plot_spectrum.py [--out paper/spectrum.pdf]
"""
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch

RED_EDGE, RED_FILL, RED_TEXT = "#d48a8a", "#fbe3e3", "#7f1d1d"
GRN_EDGE, GRN_FILL, GRN_TEXT = "#3a9a3a", "#e6f4e1", "#1f6b1f"
plt.rcParams.update({"font.family": "serif", "font.serif": ["DejaVu Serif"],
                     "pdf.fonttype": 42})


def box(ax, cx, top, w, h, edge, fill):
    ax.add_patch(FancyBboxPatch((cx - w / 2, top - h), w, h,
                                boxstyle="round,pad=0,rounding_size=0.12",
                                linewidth=1.4, edgecolor=edge, facecolor=fill))


def main():
    out = "paper/spectrum.pdf"
    if "--out" in sys.argv:
        out = sys.argv[sys.argv.index("--out") + 1]
    fig, ax = plt.subplots(figsize=(10.0, 3.06))
    ax.set_xlim(0, 16); ax.set_ylim(0, 4.9); ax.axis("off")
    W, H = 5.0, 1.72
    cols = [(2.7, 4.3), (8.0, 4.6), (13.3, 4.3)]          # (centre x, box top)

    # boxes and their text
    box(ax, *cols[0], W, H, RED_EDGE, RED_FILL)
    ax.text(cols[0][0], 3.85, "Conventional Optimization\nLLVM -O3", ha="center", va="center",
            fontsize=11, fontweight="bold", color=RED_TEXT, linespacing=1.25)
    ax.text(cols[0][0], 3.0, "Fast, heuristic-based, incomplete", ha="center", va="center", fontsize=9)

    box(ax, cols[1][0], cols[1][1], 4.6, 2.02, GRN_EDGE, GRN_FILL)
    ax.text(cols[1][0], 4.0, "Super-Analysis\nODeSSy", ha="center", va="center",
            fontsize=11.5, fontweight="bold", color=GRN_TEXT, linespacing=1.25)
    ax.text(cols[1][0], 3.0, "On-demand SMT proofs,\nno synthesis", ha="center", va="center",
            fontsize=10, linespacing=1.3)

    box(ax, *cols[2], W, H, RED_EDGE, RED_FILL)
    ax.text(cols[2][0], 3.85, "Super-Optimization\ne.g., Souper, STOKE", ha="center", va="center",
            fontsize=11, fontweight="bold", color=RED_TEXT, linespacing=1.25)
    ax.text(cols[2][0], 3.0, "Offline, synthesis, slow", ha="center", va="center", fontsize=9)

    # dashed pointers from each box to the axis
    for cx, _ in cols:
        ax.annotate("", xy=(cx, 1.6), xytext=(cx, 2.48),
                    arrowprops=dict(arrowstyle="-|>", color="#8a8a8a", lw=1.1,
                                    linestyle=(0, (3, 2)), mutation_scale=12))

    # the double-headed axis
    ax.annotate("", xy=(15.5, 1.38), xytext=(0.5, 1.38),
                arrowprops=dict(arrowstyle="<|-|>", color="#1a1a1a", lw=2.0, mutation_scale=26))

    # labels under the axis
    ax.text(cols[0][0], 0.72, "Online\nLow latency", ha="center", va="center",
            fontsize=11, fontweight="bold", linespacing=1.25)
    ax.text(cols[1][0], 0.72, "Online\nBounded latency / high precision", ha="center", va="center",
            fontsize=11, fontweight="bold", color=GRN_TEXT, linespacing=1.25)
    ax.text(cols[2][0], 0.72, "Offline\nHigh latency", ha="center", va="center",
            fontsize=11, fontweight="bold", linespacing=1.25)

    fig.savefig(out, bbox_inches="tight", pad_inches=0.02)
    print("figure ->", out)


if __name__ == "__main__":
    main()
