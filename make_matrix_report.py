#!/usr/bin/env python3
"""
make_matrix_report.py -- render evaluation/matrix.csv as the three matrices:
  1. min-based slowdown vs none  (primary opportunity ceiling)
  2. avg-based slowdown vs none  (sanity; big min/avg divergence = dirty run)
  3. traps injected              (static density; 'ir' exact / 'ud2' proxy)
Cells: build_failed -> 'x', sanitizer fired at runtime -> 'DIED', run
timeout -> 'TMO'. Wide-format report written to evaluation/matrix_report.csv.
Usage: python3 make_matrix_report.py [in.csv] [out.csv]
"""
import csv, sys
from pathlib import Path

IN = Path(sys.argv[1] if len(sys.argv) > 1 else "evaluation/matrix.csv")
OUT = Path(sys.argv[2] if len(sys.argv) > 2 else "evaluation/matrix_report.csv")

SPEC_ORDER = ["signed", "unsigned", "both", "divide", "shift", "bounds",
              "implicit", "all-sanitizers", "all-non-firing"]
rows = list(csv.DictReader(open(IN, newline="")))
# last row wins (reruns append; the freshest measurement is authoritative)
cell = {(r["bench"], r["spec"]): r for r in rows}
benches = list(dict.fromkeys(r["bench"] for r in rows))
specs = [s for s in SPEC_ORDER if any((b, s) in cell for b in benches)]

def fmt(r, col, suffix="%", static=False):
    """static=True: the metric exists even when the binary DIED at runtime
    (trap counts are compile-time facts) -- only build_failed hides it."""
    if r is None:
        return "x"
    st = r["status"]
    if st == "build_failed":
        return "x"
    if not static:
        if st.startswith("died"):
            return "DIED"
        if st == "timeout":
            return "TMO"
    v = r.get(col, "")
    return f"{v}{suffix}" if v else "--"

def colw(s):
    return max(10, len(s) + 2)

def table(title, col, suffix="%", static=False):
    print(f"\n=== {title} ===")
    print(f"{'bench':11}" + "".join(f"{s:>{colw(s)}}" for s in specs))
    for b in benches:
        line = f"{b:11}"
        for s in specs:
            line += f"{fmt(cell.get((b, s)), col, suffix, static):>{colw(s)}}"
        print(line)

table("MATRIX 1: slowdown vs none, MIN-based [primary]",
      "slowdown_vs_none_min_pct")
table("MATRIX 2: slowdown vs none, AVG-based [sanity]",
      "slowdown_vs_none_avg_pct")
table("MATRIX 3: traps injected (ir=exact, ud2=binary proxy; counted at "
      "build time, shown even for cells that DIED at runtime)",
      "traps_n", suffix="", static=True)
# annotate proxy benches
proxies = sorted({r["bench"] for r in rows if r.get("trap_method") == "ud2"})
if proxies:
    print(f"    (ud2 proxy counts: {', '.join(proxies)})")

# per-bench composition of the union columns
comps = [(b, s, cell[(b, s)].get("components", ""))
         for b in benches for s in ("all-sanitizers", "all-non-firing")
         if (b, s) in cell and cell[(b, s)].get("components")]
if comps:
    print("\n=== UNION COMPOSITIONS ===")
    for b, s, c in comps:
        print(f"  {b:11}{s:16}= {{{c}}}")

# target ranking: overhead * has-traps, min-based
print("\n=== TARGET RANKING (min slowdown, cells with traps>0) ===")
targets = []
for (b, s), r in cell.items():
    if s == "none" or r["status"] != "ok":
        continue
    try:
        ov = float(r["slowdown_vs_none_min_pct"])
        tr = int(r["traps_n"])
    except (ValueError, TypeError):
        continue
    if tr > 0:
        targets.append((ov, b, s, tr))
for ov, b, s, tr in sorted(targets, reverse=True)[:15]:
    print(f"  {b:11}{s:10} {ov:+6.1f}%   traps={tr}")

with open(OUT, "w", newline="") as fh:
    w = csv.writer(fh)
    w.writerow(["metric", "bench"] + specs)
    for metric, col, sfx in [
        ("slowdown_min_pct", "slowdown_vs_none_min_pct", ""),
        ("slowdown_avg_pct", "slowdown_vs_none_avg_pct", ""),
        ("traps_n", "traps_n", ""),
    ]:
        static = metric == "traps_n"
        for b in benches:
            w.writerow([metric, b] +
                       [fmt(cell.get((b, s)), col, sfx, static) for s in specs])
print(f"\nwrote {OUT}")
