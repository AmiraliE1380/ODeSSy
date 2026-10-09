#!/usr/bin/env python3
"""Prototype figures to replace the RQ4 table (ODeSSy vs. Souper on zlib and zstd).

Reads the raw harness output (results/static/souper_static/modules.csv, the
per-module record of scripts/souper_static.sh) and sums it per library, so the
plotted numbers are the table's numbers by construction. Variant C also reads
the deflate.c timeout x threads sweep (evaluation/dial_matrix_x86_current.csv).

Writes figs/rq4_proto/{A1,A2,B1,B2,C}.{pdf,png}.
Usage: python3 figs/rq4_proto/plot_rq4.py   (from the repository root)
"""
import collections
import csv
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker
from matplotlib import font_manager

HERE = os.path.dirname(os.path.abspath(__file__))
SOUPER_CSV = "results/static/souper_static/modules.csv"
DIAL_CSV = "evaluation/dial_matrix_x86_current.csv"

# acmart typesets text in Linux Libertine; the OTFs are vendored in fonts/.
for f in ("LinLibertine_R.otf", "LinLibertine_RI.otf", "LinLibertine_RB.otf"):
    font_manager.fontManager.addfont(os.path.join(HERE, "fonts", f))
plt.rcParams.update({
    "font.family": "serif", "font.serif": ["Linux Libertine O"],
    "mathtext.fontset": "custom", "mathtext.rm": "Linux Libertine O",
    "mathtext.it": "Linux Libertine O:italic",
    "font.size": 7, "axes.labelsize": 7, "xtick.labelsize": 6.5, "ytick.labelsize": 6.5,
    "legend.fontsize": 6.5, "axes.linewidth": 0.6, "xtick.major.width": 0.6,
    "ytick.major.width": 0.6, "pdf.fonttype": 42, "ps.fonttype": 42,
})

LIB_COLOR = {"zlib": "#1f4e79", "zstd": "#c55a11"}
SOUPER_COLOR = "black"
W = 3.3                                  # acmsmall single column, inches
CEGIS = (8749.0, 0)                      # Souper CEGIS on zlib's deflate.c (souper_pilot)


def library_totals():
    tot = collections.defaultdict(lambda: [0.0, 0])
    for r in csv.DictReader(open(SOUPER_CSV)):
        t = tot[(r["repo"], r["arm"])]
        t[0] += float(r["seconds"])
        if r["removed"] not in ("-", ""):
            t[1] += int(r["removed"])
    return {k: (round(v[0]), v[1]) for k, v in tot.items()}


def better_hint(ax, xy=(0.04, 0.95)):
    ax.annotate("better", xy=xy, xycoords="axes fraction", xytext=(xy[0] + 0.11, xy[1] - 0.10),
                textcoords="axes fraction", fontsize=6.5, color="#777777", ha="left", va="top",
                arrowprops=dict(arrowstyle="->", color="#999999", lw=0.6))


def style(ax, logy):
    ax.set_xscale("log")
    ax.set_xlim(15, 5e4)
    if logy:
        ax.set_yscale("log")
        ax.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda v, _: f"{v:g}"))
        ax.yaxis.set_minor_formatter(matplotlib.ticker.NullFormatter())
    ax.spines[["top", "right"]].set_visible(False)
    ax.tick_params(length=2.5)


def frontier(ax, lib, d, color, label_points=True, legend_label=None):
    (tf, pf), (tt, pt) = d[(lib, "fast")], d[(lib, "thorough")]
    ax.plot([tf, tt], [pf, pt], ls="--", lw=0.9, color=color, zorder=2, label=legend_label)
    ax.scatter([tf], [pf], marker="o", s=22, color=color, zorder=3, edgecolor="white", lw=0.4)
    ax.scatter([tt], [pt], marker="s", s=20, color=color, zorder=3, edgecolor="white", lw=0.4)
    if label_points:
        ax.annotate("Fast", (tf, pf), xytext=(-4, 3), textcoords="offset points",
                    fontsize=6, color=color, ha="right")
        ax.annotate("Thorough", (tt, pt), xytext=(4, 3), textcoords="offset points",
                    fontsize=6, color=color, ha="left")


def souper(ax, lib, d, color=SOUPER_COLOR, label="Souper", off=(-4, 4), ha="right"):
    ts, ps = d[(lib, "souper_const")]
    ax.scatter([ts], [ps], marker="x", s=28, color=color, lw=1.2, zorder=4)
    ax.annotate(label, (ts, ps), xytext=off, textcoords="offset points", fontsize=6, color=color, ha=ha)


def dominance(ax, lib, d, logy):
    ts, ps = d[(lib, "souper_const")]
    lo = ax.get_ylim()[1]
    ax.fill_between([ax.get_xlim()[0], ts], ps, lo, color="#4caf50", alpha=0.07, lw=0, zorder=0)


def cegis_note(ax):
    x, y = CEGIS
    ax.scatter([x], [y], marker="x", s=22, color="#888888", lw=1.0, zorder=4, clip_on=False)
    ax.annotate("CEGIS,\ndeflate.c only", (x, y), xytext=(5, 2), textcoords="offset points",
                fontsize=5.5, color="#888888", ha="left", va="bottom")


def variant_A(d, logy, name):
    fig, ax = plt.subplots(figsize=(W, 2.3))
    style(ax, logy)
    for lib in ("zlib", "zstd"):
        frontier(ax, lib, d, LIB_COLOR[lib])
        (tf, pf), (tt, pt) = d[(lib, "fast")], d[(lib, "thorough")]
        ax.annotate(lib, ((tf * tt) ** 0.5, (pf + pt) / 2) if not logy else ((tf * tt) ** 0.5, (pf * pt) ** 0.5),
                    xytext=(5, -9), textcoords="offset points", fontsize=6.5, color=LIB_COLOR[lib],
                    fontweight="bold")
        souper(ax, lib, d, color=LIB_COLOR[lib], label=f"Souper ({lib})",
               off=(-5, 4) if lib == "zlib" else (-5, -9))
    if not logy:
        ax.set_ylim(-3, 70)
        cegis_note(ax)
    else:
        ax.set_ylim(3, 100)
    ax.set_xlabel("compile time, summed over modules (s, log)")
    ax.set_ylabel("checks removed" + (" (log)" if logy else ""))
    better_hint(ax)
    ax.text(0.99, 0.99, "circle: Fast   square: Thorough   ×: Souper (constant mode)",
            transform=ax.transAxes, fontsize=5.5, color="#555555", ha="right", va="top")
    fig.tight_layout(pad=0.3)
    save(fig, name)


def variant_B(d, logy, name):
    fig, axes = plt.subplots(1, 2, figsize=(W, 2.0), sharex=True)
    for ax, lib in zip(axes, ("zlib", "zstd")):
        style(ax, logy)
        frontier(ax, lib, d, LIB_COLOR[lib])
        souper(ax, lib, d)
        ymax = {"zlib": 70, "zstd": 15}[lib]
        if logy:
            ax.set_ylim(3, ymax * 1.3)
            ax.set_yticks({"zlib": [5, 10, 20, 50], "zstd": [3, 5, 10]}[lib])
        else:
            ax.set_ylim(-ymax * 0.05, ymax)
        ax.set_title(f"{lib} ({ {'zlib': 14, 'zstd': 18}[lib] } modules)", fontsize=7, pad=3)
    axes[0].set_ylabel("checks removed" + (" (log)" if logy else ""))
    fig.supxlabel("compile time, summed over modules (s, log)", fontsize=7, y=0.02)
    fig.tight_layout(pad=0.3, w_pad=0.8)
    save(fig, name)


def variant_C(d):
    rows = collections.defaultdict(list)
    for r in csv.DictReader(open(DIAL_CSV)):
        if r["threads"] == "1":
            rows[int(r["timeout_ms"])].append((float(r["wall_s"]), int(r["unsat"])))
    pts = []
    for to in sorted(rows):
        ws = sorted(w for w, _ in rows[to])
        us = sorted(u for _, u in rows[to])          # proofs vary by one across reps at small budgets
        pts.append((ws[len(ws) // 2], us[len(us) // 2], to))
    fig, ax = plt.subplots(figsize=(W, 2.3))
    ax.set_xscale("log")
    ax.set_xlim(10, 2e4)
    ax.spines[["top", "right"]].set_visible(False)
    ax.plot([p[0] for p in pts], [p[1] for p in pts], ls="--", lw=0.9, color=LIB_COLOR["zlib"], zorder=2)
    ax.scatter([p[0] for p in pts], [p[1] for p in pts], s=16, color=LIB_COLOR["zlib"], zorder=3)
    for w, u, to in pts:
        lab = f"{to} ms" if to < 1000 else f"{to // 1000} s"
        ax.annotate(lab, (w, u), xytext=(3, -8), textcoords="offset points", fontsize=5.5,
                    color=LIB_COLOR["zlib"])
    ts, ps = d[("zlib", "souper_const")]   # zlib total is not deflate.c; use the module row instead
    dm = {}
    for r in csv.DictReader(open(SOUPER_CSV)):
        if r["repo"] == "zlib" and r["module"] == "deflate":
            dm[r["arm"]] = (float(r["seconds"]), r["removed"])
    sc = dm["souper_const"][0]
    ax.scatter([sc], [0], marker="x", s=28, color="black", lw=1.2, zorder=4, clip_on=False)
    ax.annotate("Souper, constant", (sc, 0), xytext=(4, 4), textcoords="offset points", fontsize=6)
    ax.scatter([CEGIS[0]], [0], marker="x", s=28, color="#888888", lw=1.2, zorder=4, clip_on=False)
    ax.annotate("Souper, CEGIS", (CEGIS[0], 0), xytext=(-4, 4), textcoords="offset points",
                fontsize=6, color="#888888", ha="right")
    ax.set_ylim(-2, 60)
    ax.set_xlabel("ODeSSy stage time on deflate.c (s, log), one thread")
    ax.set_ylabel("trap edges proved")
    ax.text(0.98, 0.97, "ODeSSy: per-query timeout sweep, LLVM 23 IR, trap edges\nSouper: LLVM 18 IR, checks removed (0)",
            transform=ax.transAxes, fontsize=5.3, color="#666666", ha="right", va="top")
    fig.tight_layout(pad=0.3)
    save(fig, "C")


def save(fig, name):
    for ext in ("pdf", "png"):
        fig.savefig(os.path.join(HERE, f"{name}.{ext}"), dpi=300 if ext == "png" else None,
                    bbox_inches="tight", pad_inches=0.02)
    plt.close(fig)
    print("->", name)


if __name__ == "__main__":
    d = library_totals()
    for k in sorted(d):
        print(k, d[k])
    variant_A(d, False, "A1")
    variant_A(d, True, "A2")
    variant_B(d, False, "B1")
    variant_B(d, True, "B2")
    variant_C(d)
