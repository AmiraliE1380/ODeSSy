#!/usr/bin/env bash
# Recount an ind-sweep from its saved per-file logs (results/static/ind_sweep/<corpus>.<file>.<arm>.<budget>.log).
# Per trap: the FIRST verdict line after "Found UB Trap" (MV re-solves print further verdict lines);
# ind = first verdict UNSAT carrying [ind]; MVfold = "[mv] DEAD UNDER HYPOTHESIS" lines.
# Usage: bash scripts/ind_sweep_table.sh <budget> [corpus...]
B="$1"; shift; C="${*:-cryptoswift zlib zstd lz4}"; D=results/static/ind_sweep
printf "%-12s %-3s %-6s %7s %7s %7s %7s %7s\n" corpus arm budget UNSAT ind SAT UNKN MVfold
for c in $C; do for a in A B C D; do
  ls $D/$c.*.$a.$B.log >/dev/null 2>&1 || continue
  cat $D/$c.*.$a.$B.log | awk -v c=$c -v a=$a -v b=$B '
    /Found UB Trap/{open=1}
    open && /-> UNSAT/{U++; if ($0 ~ /\[ind\]/) I++; open=0}
    open && /-> SAT/{S++; open=0}
    open && /-> UNKNOWN/{K++; open=0}
    /\[mv\] DEAD UNDER HYPOTHESIS/{M++}
    END{printf "%-12s %-3s %-6s %7d %7d %7d %7d %7d\n", c, a, b, U, I, S, K, M}'
done; done
