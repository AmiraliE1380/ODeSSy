#!/usr/bin/env python3
"""profile_summary.py -- summarize scripts/run_profile_stages.sh output.

For each run (module x config x threads): the module's stage wall clocks
(Stage 1 discovery, Stage 2 parallel solve, Stage 2b narrow retry, Stage 3
transform), and, inside Stage 2, the summed per-job time split into
encoding, FactGate wait, LLVM analysis calls (per analysis, with call and
repeat counts), the rest of fact import (Z3 translation, fact assembly,
T3/ind preparation), direct queries, induction, guard synthesis, and other.
With threads=N the per-job sums are CPU-like (jobs overlap), so they are
reported as shares of the summed job time, not of the wall clock.
Usage: python3 tools/profile_summary.py results/profile_stages/<run> [--csv out.csv]
"""
import csv, glob, os, sys

KINDS = ["RM", "KB", "LVI", "SCEV", "SCEVSYM"]

def load(path):
    jobs, mod = [], {}
    hdr = None
    for line in open(path):
        if not line.startswith("[profile-stages] "):
            continue
        body = line[len("[profile-stages] "):].strip()
        if body.startswith("job,index"):
            hdr = body.split(",")[1:]
        elif body.startswith("job,"):
            vals = body.split(",")[1:]
            jobs.append({h: float(v) for h, v in zip(hdr, vals)})
        elif body.startswith("module,"):
            for kv in body.split(",")[1:]:
                k, v = kv.split("=")
                mod[k] = float(v)
    return jobs, mod

def summarize(path):
    jobs, mod = load(path)
    if not mod:
        return None
    S = lambda k: sum(j[k] for j in jobs)
    ana = {k: S(k + "_ms") for k in KINDS}
    calls = {k: int(S(k + "_calls")) for k in KINDS}
    reps = {k: int(S(k + "_repeats")) for k in KINDS}
    worker, enc, wait, fact = S("worker_ms"), S("encode_ms"), S("gate_wait_ms"), S("fact_ms")
    direct, ind, mv = S("direct_ms"), S("ind_ms"), S("mv_ms")
    ana_tot = sum(ana.values())
    rest_fact = max(fact - ana_tot, 0.0)
    other = max(worker - enc - wait - fact - direct - ind - mv, 0.0)
    name = os.path.basename(path)[:-4]
    return dict(run=name, jobs=int(mod["jobs"]), threads=int(mod["threads"]),
                total_s=mod["total_ms"] / 1e3, stage1_s=mod["stage1_ms"] / 1e3,
                stage2_s=mod["stage2_ms"] / 1e3, stage2b_s=mod["stage2b_ms"] / 1e3,
                stage3_s=mod["stage3_ms"] / 1e3, jobsum_s=worker / 1e3,
                encode=enc, gate_wait=wait, analysis=ana_tot, fact_rest=rest_fact,
                direct=direct, ind=ind, mv=mv, other=other,
                queries=int(S("queries")), query_s=S("query_ms") / 1e3,
                **{f"{k}_ms": ana[k] for k in KINDS},
                **{f"{k}_calls": calls[k] for k in KINDS},
                **{f"{k}_rep": reps[k] for k in KINDS})

def pct(x, tot):
    return f"{100 * x / tot:5.1f}%" if tot > 0 else "   - "

def main():
    d = sys.argv[1]
    rows = [r for r in (summarize(p) for p in sorted(glob.glob(os.path.join(d, "*.txt")))) if r]
    print(f"{'run':34s} {'jobs':>5s} {'total s':>8s} | {'st1':>6s} {'st2':>7s} {'st2b':>7s} {'st3':>6s} |"
          f" share of summed job time: {'encode':>7s} {'wait':>6s} {'LLVM':>6s} {'factrest':>8s} {'direct':>7s} {'ind':>6s} {'mv':>6s} {'other':>6s} | {'queries':>7s}")
    for r in rows:
        T = r["jobsum_s"] * 1e3
        print(f"{r['run']:34s} {r['jobs']:5d} {r['total_s']:8.1f} | {r['stage1_s']:6.1f} {r['stage2_s']:7.1f} {r['stage2b_s']:7.1f} {r['stage3_s']:6.1f} |"
              f"                           {pct(r['encode'],T):>7s} {pct(r['gate_wait'],T):>6s} {pct(r['analysis'],T):>6s} {pct(r['fact_rest'],T):>8s}"
              f" {pct(r['direct'],T):>7s} {pct(r['ind'],T):>6s} {pct(r['mv'],T):>6s} {pct(r['other'],T):>6s} | {r['queries']:7d}")
    print("\nLLVM analysis calls (ms / calls / repeats of the same (value, analysis, context)):")
    for r in rows:
        parts = [f"{k} {r[k+'_ms']:.0f}/{r[k+'_calls']}/{r[k+'_rep']}" for k in KINDS]
        print(f"  {r['run']:34s} " + "  ".join(parts))
    if "--csv" in sys.argv:
        out = sys.argv[sys.argv.index("--csv") + 1]
        with open(out, "w", newline="") as f:
            w = csv.DictWriter(f, fieldnames=list(rows[0].keys())); w.writeheader(); w.writerows(rows)
        print("csv ->", out)

if __name__ == "__main__":
    main()
