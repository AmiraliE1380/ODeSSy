#!/usr/bin/env python3
"""
make_perf_report.py -- turn evaluation/perf_zlib.csv into a readable report CSV.

Renames columns with units, adds:
  * traps_eliminated_n / traps_eliminated_pct
  * runtime deltas vs base and vs base2x (avg- and min-based), signed % with
    a human-readable flag like "2.3% speedup" / "1.9% slowdown"
  * runtime vs the unsanitized 'none' binary (sanitizer overhead recovered?)
  * compile-time overhead vs base

Usage:  python3 make_perf_report.py [in.csv] [out.csv]
Defaults: evaluation/perf_zlib.csv -> evaluation/perf_zlib_report.csv
"""
import csv
import sys
from pathlib import Path

IN = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("evaluation/perf_zlib.csv")
OUT = Path(sys.argv[2]) if len(sys.argv) > 2 else Path("evaluation/perf_zlib_report.csv")

def f(x):
    try:
        return float(x)
    except (TypeError, ValueError):
        return None

def pct(new, ref):
    """Signed % change of runtime vs ref. Positive = faster (speedup)."""
    if new is None or ref is None or ref == 0:
        return None
    return (ref - new) / ref * 100.0

def flag(p):
    if p is None:
        return ""
    if abs(p) < 0.05:
        return "no change"
    return f"{abs(p):.1f}% {'speedup' if p > 0 else 'slowdown'}"

rows = list(csv.DictReader(open(IN, newline="")))

# Reference lookups: per-spec base/base2x rows, and the global unsanitized row.
by_key = {(r["spec"], r["config"]): r for r in rows}
none_base = by_key.get(("none", "base"))

out_fields = [
    "sanitizer_spec", "pipeline_config",
    "traps_before_pass_n", "traps_after_pipeline_n",
    "traps_eliminated_n", "traps_eliminated_pct",
    "frontend_clang_O3_s", "oracle_smt_pass_s", "oracle_avg_per_trap_ms","extra_opt_O3_s",
    "backend_llc_link_s", "total_compile_s", "compile_overhead_vs_base_pct",
    "avg_runtime_s", "min_runtime_s",
    "runtime_vs_base_avg", "runtime_vs_base_min",
    "runtime_vs_base2x_avg", "runtime_vs_base2x_min",
    "runtime_vs_unsanitized_avg",
    "raw_runtimes_s",
]

with open(OUT, "w", newline="") as fh:
    w = csv.DictWriter(fh, fieldnames=out_fields)
    w.writeheader()
    for r in rows:
        spec, cfg = r["spec"], r["config"]
        t_in, t_fin = f(r["traps_in"]), f(r["traps_final"])
        elim = (t_in - t_fin) if (t_in is not None and t_fin is not None) else None
        elim_pct = (elim / t_in * 100.0) if (elim is not None and t_in) else 0.0

        base = by_key.get((spec, "base"))
        b2x = by_key.get((spec, "base2x"))
        avg, mn = f(r["avg_run_s"]), f(r["min_run_s"])

        d_base_avg = pct(avg, f(base["avg_run_s"])) if base else None
        d_base_min = pct(mn, f(base["min_run_s"])) if base else None
        d_b2x_avg = pct(avg, f(b2x["avg_run_s"])) if b2x else None
        d_b2x_min = pct(mn, f(b2x["min_run_s"])) if b2x else None
        d_none_avg = pct(avg, f(none_base["avg_run_s"])) if none_base else None

        tc, tc_base = f(r["total_compile_s"]), f(base["total_compile_s"]) if base else None
        c_over = ((tc - tc_base) / tc_base * 100.0) if (tc is not None and tc_base) else None
        
        o_s = f(r["oracle_s"])
        per_trap_ms = (o_s / t_in * 1000.0) if (o_s and t_in) else None
        
        w.writerow({
            "sanitizer_spec": spec,
            "pipeline_config": cfg,
            "traps_before_pass_n": r["traps_in"],
            "traps_after_pipeline_n": r["traps_final"],
            "traps_eliminated_n": int(elim) if elim is not None else "",
            "traps_eliminated_pct": f"{elim_pct:.1f}%",
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
            "runtime_vs_unsanitized_avg": flag(d_none_avg) if spec != "none" else "(reference)",
            "raw_runtimes_s": r["runs_s"],
        })

print(f"wrote {OUT}")
# Console summary: the two lines that matter per spec.
print(f"{'spec':9} {'config':7} {'elim':>5} {'avg_s':>7} {'min_s':>7}  vs_base2x(min)")
for r in rows:
    spec, cfg = r["spec"], r["config"]
    b2x = by_key.get((spec, "base2x"))
    d = pct(f(r["min_run_s"]), f(b2x["min_run_s"])) if (b2x and cfg == "oracle") else None
    elim = int(f(r["traps_in"]) - f(r["traps_final"]))
    print(f"{spec:9} {cfg:7} {elim:5d} {r['avg_run_s']:>7} {r['min_run_s']:>7}  {flag(d)}")
