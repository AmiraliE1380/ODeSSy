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
import csv, re, statistics, sys
from pathlib import Path

IN = Path(sys.argv[1] if len(sys.argv) > 1 else "evaluation/matrix.csv")
OUT = Path(sys.argv[2] if len(sys.argv) > 2 else "evaluation/matrix_report.csv")

SPEC_ORDER = ["signed", "unsigned", "both", "divide", "shift", "bounds",
              "implicit", "checked", "overflow",
              "all-sanitizers", "all-non-firing"]
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

def runs_of(r):
    if r is None:
        return []
    return [float(t) for t in re.split(r"[,;\s]+", r.get("runs_s", "") or "")
            if t and re.match(r"^[0-9.eE+-]+$", t)]

MED = {}   # (bench,spec) -> median of raw runs
for k, r in cell.items():
    v = runs_of(r)
    if v:
        MED[k] = statistics.median(v)

def med_slowdown(b, s):
    m, m0 = MED.get((b, s)), MED.get((b, "none"))
    if m is None or not m0:
        return None
    return (m - m0) / m0 * 100.0

def colw(s):
    return max(10, len(s) + 2)

def table_median():
    print("\n=== MATRIX 0: slowdown vs none, MEDIAN-based [PRIMARY] ===")
    print(f"{'bench':11}" + "".join(f"{s:>{colw(s)}}" for s in specs))
    for b in benches:
        line = f"{b:11}"
        for s in specs:
            r = cell.get((b, s))
            if r is None or r["status"] == "build_failed":
                c = "x"
            elif r["status"].startswith("died"):
                c = "DIED"
            elif r["status"] == "timeout":
                c = "TMO"
            else:
                d = med_slowdown(b, s)
                c = f"{d:+.1f}%" if d is not None else "--"
            line += f"{c:>{colw(s)}}"
        print(line)

def outlier_audit():
    """A min far below its own cluster is a transient, not a capability --
    the exact failure mode that manufactured OpenSSL's fake +5.4%."""
    hits = []
    for (b, s), r in cell.items():
        v = runs_of(r)
        if len(v) < 5:
            continue
        med = statistics.median(v)
        if med > 0 and (med - min(v)) / med > 0.02:
            hits.append((b, s, min(v), med))
    if hits:
        print("\n=== OUTLIER AUDIT: suspect fast minima (min <98% of median) ===")
        for b, s, mn, md in sorted(hits):
            print(f"  {b:11}{s:16} min={mn:.3f}  median={md:.3f}  "
                  f"({(md-mn)/md*100:.1f}% below) -- do NOT trust min here")

def table(title, col, suffix="%", static=False):
    print(f"\n=== {title} ===")
    print(f"{'bench':11}" + "".join(f"{s:>{colw(s)}}" for s in specs))
    for b in benches:
        line = f"{b:11}"
        for s in specs:
            line += f"{fmt(cell.get((b, s)), col, suffix, static):>{colw(s)}}"
        print(line)

table_median()
table("MATRIX 1: slowdown vs none, MIN-based [bound; see outlier audit]",
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

outlier_audit()

# target ranking: overhead * has-traps, MEDIAN-based
print("\n=== TARGET RANKING (median slowdown, cells with traps>0) ===")
targets = []
for (b, s), r in cell.items():
    if s == "none" or r["status"] != "ok":
        continue
    ov = med_slowdown(b, s)
    try:
        tr = int(r["traps_n"])
    except (ValueError, TypeError):
        continue
    if ov is not None and tr > 0:
        targets.append((ov, b, s, tr))
for ov, b, s, tr in sorted(targets, reverse=True)[:15]:
    print(f"  {b:11}{s:10} {ov:+6.1f}%   traps={tr}")

with open(OUT, "w", newline="") as fh:
    w = csv.writer(fh)
    w.writerow(["metric", "bench"] + specs)
    for b in benches:      # median rows (computed, not from CSV columns)
        w.writerow(["slowdown_median_pct", b] +
                   [(f"{med_slowdown(b, s):+.1f}" if med_slowdown(b, s) is not None
                     else "x") for s in specs])
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
