#!/usr/bin/env python3
"""
make_perf_report.py -- turn evaluation/perf_zlib.csv (v2: multi-size, shuffled,
binary-size columns) into a readable report CSV.

Adds per (spec, config, size_mb) row:
  * traps_eliminated_n / traps_eliminated_pct
  * binary size (file bytes + .text bytes) and delta vs base
  * runtime deltas vs base / base2x / unsanitized (avg- and min-based),
    flagged like "2.3% speedup" / "1.9% slowdown"
  * compile-time overhead vs base, oracle per-trap cost

Usage:  python3 make_perf_report.py [in.csv] [out.csv]
Defaults: evaluation/perf_zlib.csv -> evaluation/perf_zlib_report.csv
"""

import argparse
import csv
from pathlib import Path

ap = argparse.ArgumentParser(description=__doc__)
ap.add_argument("in_csv", nargs="?", default="evaluation/perf_zlib.csv")
ap.add_argument("out_csv", nargs="?", default=None)
ap.add_argument("--specs", default=None,
                help="comma-separated sanitizer specs to keep (e.g. 'both'); "
                     "'none' is always kept as the unsanitized reference")
args = ap.parse_args()
IN = Path(args.in_csv)
KEEP = ({s.strip() for s in args.specs.split(",") if s.strip()} | {"none"}) \
       if args.specs else None
if args.out_csv:
    OUT = Path(args.out_csv)
elif args.specs:
    OUT = Path("evaluation/perf_zlib_report_" +
               "_".join(sorted(KEEP - {"none"})) + ".csv")
else:
    OUT = Path("evaluation/perf_zlib_report.csv")

def f(x):
    try:
        return float(x)
    except (TypeError, ValueError):
        return None

def pct(new, ref):
    """Signed % change vs ref. Positive = faster/smaller (improvement)."""
    if new is None or ref is None or ref == 0:
        return None
    return (ref - new) / ref * 100.0

def flag(p):
    if p is None:
        return ""
    if abs(p) < 0.05:
        return "no change"
    return f"{abs(p):.1f}% {'speedup' if p > 0 else 'slowdown'}"

def size_delta(new, ref):
    if new is None or ref is None or ref == 0:
        return ""
    d = new - ref
    return f"{d:+.0f} B ({d / ref * 100.0:+.2f}%)"

rows = list(csv.DictReader(open(IN, newline="")))
# by_key indexes ALL rows so base/base2x/none references resolve even when
# the emitted report is filtered to a subset of specs.
by_key = {(r["spec"], r["config"], r["size_mb"]): r for r in rows}
if KEEP is not None:
    rows = [r for r in rows if r["spec"] in KEEP]

out_fields = [
    "sanitizer_spec", "pipeline_config", "corpus_size_mb",
    "traps_before_pass_n", "traps_after_pipeline_n",
    "traps_eliminated_n", "traps_eliminated_pct",
    "binary_file_bytes", "binary_text_bytes",
    "binary_file_vs_base", "binary_text_vs_base",
    "binary_file_vs_base2x", "binary_text_vs_base2x",
    "frontend_clang_O3_s", "oracle_smt_pass_s", "oracle_avg_per_trap_ms",
    "extra_opt_O3_s", "backend_llc_link_s", "total_compile_s",
    "compile_overhead_vs_base_pct",
    "avg_runtime_s", "min_runtime_s",
    "runtime_vs_base_avg", "runtime_vs_base_min",
    "runtime_vs_base2x_avg", "runtime_vs_base2x_min",
    "runtime_vs_unsanitized_min",
    "raw_runtimes_s",
]

with open(OUT, "w", newline="") as fh:
    w = csv.DictWriter(fh, fieldnames=out_fields)
    w.writeheader()
    for r in rows:
        spec, cfg, mb = r["spec"], r["config"], r["size_mb"]
        t_in, t_fin = f(r["traps_in"]), f(r["traps_final"])
        elim = (t_in - t_fin) if (t_in is not None and t_fin is not None) else None
        elim_pct = (elim / t_in * 100.0) if (elim is not None and t_in) else 0.0

        base = by_key.get((spec, "base", mb))
        b2x = by_key.get((spec, "base2x", mb))
        none_b = by_key.get(("none", "base", mb))
        avg, mn = f(r["avg_run_s"]), f(r["min_run_s"])

        d_base_avg = pct(avg, f(base["avg_run_s"])) if base else None
        d_base_min = pct(mn, f(base["min_run_s"])) if base else None
        d_b2x_avg = pct(avg, f(b2x["avg_run_s"])) if b2x else None
        d_b2x_min = pct(mn, f(b2x["min_run_s"])) if b2x else None
        d_none_min = pct(mn, f(none_b["min_run_s"])) if none_b else None

        tc = f(r["total_compile_s"])
        tc_base = f(base["total_compile_s"]) if base else None
        c_over = ((tc - tc_base) / tc_base * 100.0) if (tc is not None and tc_base) else None

        o_s = f(r["oracle_s"])
        per_trap_ms = (o_s / t_in * 1000.0) if (o_s and t_in) else None

        w.writerow({
            "sanitizer_spec": spec,
            "pipeline_config": cfg,
            "corpus_size_mb": mb,
            "traps_before_pass_n": r["traps_in"],
            "traps_after_pipeline_n": r["traps_final"],
            "traps_eliminated_n": int(elim) if elim is not None else "",
            "traps_eliminated_pct": f"{elim_pct:.1f}%",
            "binary_file_bytes": r["bin_bytes"],
            "binary_text_bytes": r["text_bytes"],
            "binary_file_vs_base":
                size_delta(f(r["bin_bytes"]), f(base["bin_bytes"]) if base else None)
                if cfg != "base" else "(reference)",
            "binary_text_vs_base":
                size_delta(f(r["text_bytes"]), f(base["text_bytes"]) if base else None)
                if cfg != "base" else "(reference)",
            "binary_file_vs_base2x":
                size_delta(f(r["bin_bytes"]), f(b2x["bin_bytes"]) if b2x else None)
                if cfg == "oracle" else "",
            "binary_text_vs_base2x":
                size_delta(f(r["text_bytes"]), f(b2x["text_bytes"]) if b2x else None)
                if cfg == "oracle" else "",
            "frontend_clang_O3_s": r["clang_s"],
            "oracle_smt_pass_s": r["oracle_s"],
            "oracle_avg_per_trap_ms": f"{per_trap_ms:.1f}" if per_trap_ms else "",
            "extra_opt_O3_s": r["o3_s"],
            "backend_llc_link_s": r["backend_link_s"],
            "total_compile_s": r["total_compile_s"],
            "compile_overhead_vs_base_pct": f"{c_over:+.1f}%" if c_over is not None else "",
            "avg_runtime_s": r["avg_run_s"],
            "min_runtime_s": r["min_run_s"],
            "runtime_vs_base_avg": flag(d_base_avg) if cfg != "base" else "(reference)",
            "runtime_vs_base_min": flag(d_base_min) if cfg != "base" else "(reference)",
            "runtime_vs_base2x_avg": flag(d_b2x_avg) if cfg == "oracle" else "",
            "runtime_vs_base2x_min": flag(d_b2x_min) if cfg == "oracle" else "",
            "runtime_vs_unsanitized_min": flag(d_none_min) if spec != "none" else "(reference)",
            "raw_runtimes_s": r["runs_s"],
        })

print(f"wrote {OUT}")
SPEC_ORDER = [s for s in ("signed", "unsigned", "both")
              if KEEP is None or s in KEEP]
              
# Console summary: oracle vs base2x (min-based) per spec, across sizes --
# the cold-path diagnostic: shrinking % across sizes = cold-path savings.
sizes = sorted({r["size_mb"] for r in rows}, key=float)
print(f"\n{'spec':9} {'elim':>5} " + " ".join(f"{'@'+s+'MB':>12}" for s in sizes) +
      "   (oracle vs base2x, min-based)")
for spec in SPEC_ORDER:
    o = {s: by_key.get((spec, "oracle", s)) for s in sizes}
    b = {s: by_key.get((spec, "base2x", s)) for s in sizes}
    if not any(o.values()):
        continue
    any_o = next(v for v in o.values() if v)
    elim = int(f(any_o["traps_in"]) - f(any_o["traps_final"]))
    cells = []
    for s in sizes:
        d = pct(f(o[s]["min_run_s"]), f(b[s]["min_run_s"])) if (o.get(s) and b.get(s)) else None
        cells.append(f"{d:+11.1f}%" if d is not None else f"{'--':>12}")
    print(f"{spec:9} {elim:5d} " + " ".join(cells))

print(f"\n{'spec':9} " + " ".join(f"{'@'+s+'MB':>12}" for s in sizes) +
      "   (sanitizer overhead vs none, min-based)")
for spec in SPEC_ORDER:
    cells = []
    for s in sizes:
        rr, nn = by_key.get((spec, "base", s)), by_key.get(("none", "base", s))
        d = pct(f(rr["min_run_s"]), f(nn["min_run_s"])) if (rr and nn) else None
        cells.append(f"{-d:+11.1f}%" if d is not None else f"{'--':>12}")
    print(f"{spec:9} " + " ".join(cells))

print(f"\n{'spec':9} {'.text_vs_base2x':>20} {'file_vs_base2x':>20}   (oracle binary shrink)")
for spec in SPEC_ORDER:
    o = by_key.get((spec, "oracle", sizes[0]))
    b = by_key.get((spec, "base2x", sizes[0]))
    if o and b:
        print(f"{spec:9} {size_delta(f(o['text_bytes']), f(b['text_bytes'])):>20} "
              f"{size_delta(f(o['bin_bytes']), f(b['bin_bytes'])):>20}")