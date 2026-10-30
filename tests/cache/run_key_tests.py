#!/usr/bin/env python3
"""Verdict-cache key tests (HANDOFF §13.5).

Each mutation of tests/cache/base.ll says which functions' keys must change
(MISS) and which must stay the same (HIT). A missed dependency shows up as a
key that stays the same although the mutation can change a decision.
Usage: python3 tests/cache/run_key_tests.py   (from the repo root, after ninja -C build)
"""
import os, re, subprocess, sys, tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
PLUGIN = os.path.join(ROOT, "build", "OraclePass.so")
BASE = open(os.path.join(ROOT, "tests", "cache", "base.ll")).read()
DEFAULT_KNOBS = "cache-keys"


def keys(ir, knobs=DEFAULT_KNOBS):
    with tempfile.NamedTemporaryFile("w", suffix=".ll", delete=False) as f:
        f.write(ir)
        path = f.name
    try:
        p = subprocess.run(["opt", f"-load-pass-plugin={PLUGIN}", f"-passes=oracle-pass<{knobs}>",
                            "-disable-output", path], capture_output=True, text=True)
    finally:
        os.unlink(path)
    out = dict(re.findall(r"^\[cache-key\] (\S+) ([0-9a-f]{64})$", p.stderr, re.M))
    if not out:
        sys.exit(f"no keys (opt failed?):\n{p.stderr[-2000:]}")
    return out


def swap_functions(ir):
    f0 = ir.index("define i32 @f"); h0 = ir.index("define i32 @h"); end = ir.index("declare i32 @g")
    return ir[:f0] + ir[h0:end] + ir[f0:h0] + ir[end:]


def with_debug_info(ir):
    """f with a subprogram, a location on every instruction and a debug record."""
    lines, out, in_f = ir.split("\n"), [], False
    for l in lines:
        if l.startswith("define i32 @f"):
            in_f = True
            l = l.replace(") {", ") !dbg !10 {")
        elif in_f and l == "}":
            in_f = False
        elif in_f and l.startswith("  ") and not l.strip().endswith(":"):
            l = l + ", !dbg !11"
            if l.strip().startswith("%a = add"):
                l += "\n    #dbg_value(i32 %a, !12, !DIExpression(), !11)"
        out.append(l)
    return "\n".join(out) + """
!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!21, !22}
!10 = distinct !DISubprogram(name: "f", scope: !23, file: !23, line: 1, type: !24, unit: !20, spFlags: DISPFlagDefinition)
!11 = !DILocation(line: 2, column: 3, scope: !10)
!12 = !DILocalVariable(name: "a", scope: !10, file: !23, line: 2, type: !25)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !23, producer: "t", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !DIFile(filename: "t.c", directory: "/tmp")
!24 = !DISubroutineType(types: !{})
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
"""


def sub(old, new, s=None):
    s = BASE if s is None else s
    assert s.count(old) == 1, old
    return s.replace(old, new)


# (name, mutated IR, knobs, functions whose key must change, functions whose key must not)
CASES = [
    # ---- must MISS (a decision can depend on it)
    ("constant in f", sub("i32 %a, i32 5)", "i32 %a, i32 6)"), None, ["f"], ["h"]),
    ("nsw flag in f", sub("mul nsw i32 %c, 3", "mul i32 %c, 3"), None, ["f"], ["h"]),
    ("instruction in f", sub("%a = add i32 %v, %k", "%a = sub i32 %v, %k"), None, ["f"], ["h"]),
    ("!range content", sub("!0 = !{i32 0, i32 100}", "!0 = !{i32 0, i32 101}"), None, ["f"], ["h"]),
    ("!range dropped", sub(", !range !0", ""), None, ["f"], ["h"]),
    ("callee attribute", sub("declare i32 @g(i32) nounwind", "declare i32 @g(i32) nounwind memory(none)"), None, ["f"], ["h"]),
    ("callee return range", sub("declare i32 @g(i32) nounwind", "declare range(i32 0, 10) i32 @g(i32) nounwind"), None, ["f"], ["h"]),
    ("const global initializer", sub("@K = constant i32 7", "@K = constant i32 8"), None, ["f"], ["h"]),
    ("global constness", sub("@G = global i32 3", "@G = constant i32 3"), None, ["h"], ["f"]),
    ("param attribute of f", sub("define i32 @f(ptr %p, i32 %x)", "define i32 @f(ptr %p, i32 noundef %x)"), None, ["f"], ["h"]),
    ("function attribute of f", sub("define i32 @f(ptr %p, i32 %x) {", "define i32 @f(ptr %p, i32 %x) nounwind {"), None, ["f"], ["h"]),
    ("alignment", sub("%v = load i32, ptr %p, align 4", "%v = load i32, ptr %p, align 2"), None, ["f"], ["h"]),
    ("knob: timeout", BASE, DEFAULT_KNOBS + ";timeout=500", ["f", "h"], []),
    ("knob: tier", BASE, DEFAULT_KNOBS + ";heavy", ["f", "h"], []),
    ("data layout", "target datalayout = \"e-m:o-i64:64-n32:64-S128\"\n" + BASE, None, ["f", "h"], []),
    # ---- must HIT (cannot change a decision)
    ("value renaming in f", BASE.replace("%v", "%vv").replace("%k ", "%kk ").replace("%k\n", "%kk\n")
        .replace("= load i32, ptr @K", "= load i32, ptr @K"), None, [], ["f", "h"]),
    ("block renaming in f", sub("label %ok\n\ntrap:\n  call void @llvm.ubsantrap(i8 0)", "label %fine\n\ntrap:\n  call void @llvm.ubsantrap(i8 0)")
        .replace("unreachable\n\nok:\n  %r = extractvalue { i32, i1 } %s, 0\n  %c", "unreachable\n\nfine:\n  %r = extractvalue { i32, i1 } %s, 0\n  %c"), None, [], ["f", "h"]),
    ("metadata renumbering", sub("!0 = !{i32 0, i32 100}", "!7 = !{i32 0, i32 100}").replace("!range !0", "!range !7"), None, [], ["f", "h"]),
    ("unrelated function h changed", sub("i32 %y, i32 %gv)", "i32 %gv, i32 %y)"), None, ["h"], ["f"]),
    ("function order", swap_functions(BASE), None, [], ["f", "h"]),
    ("debug info added to f", with_debug_info(BASE), None, [], ["f", "h"]),
    ("knob: threads", BASE, DEFAULT_KNOBS + ";threads=4", [], ["f", "h"]),
    ("knob: profile-stages", BASE, DEFAULT_KNOBS + ";profile-stages", [], ["f", "h"]),
    ("knob order", BASE, "timeout=500;heavy;" + DEFAULT_KNOBS, [], []),   # compared below against heavy;timeout
]


def main():
    base = keys(BASE)
    fails = 0
    for name, ir, knobs, miss, hit in CASES:
        k = keys(ir, knobs or DEFAULT_KNOBS)
        bad = [f for f in miss if k.get(f) == base.get(f)] + [f for f in hit if k.get(f) != base.get(f)]
        print(("FAIL " if bad else "ok   ") + name + (f"  (wrong: {bad})" if bad else ""))
        fails += bool(bad)
    # knob order must not matter
    a, b = keys(BASE, DEFAULT_KNOBS + ";heavy;timeout=500"), keys(BASE, "timeout=500;heavy;" + DEFAULT_KNOBS)
    ok = a == b
    print(("ok   " if ok else "FAIL ") + "knob order is irrelevant")
    fails += not ok
    # deterministic across runs
    ok = keys(BASE) == base
    print(("ok   " if ok else "FAIL ") + "same key on a second run")
    fails += not ok
    print(f"{len(CASES) + 2 - fails}/{len(CASES) + 2} passed")
    sys.exit(1 if fails else 0)


if __name__ == "__main__":
    main()
