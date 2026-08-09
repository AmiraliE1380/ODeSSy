; Multi-pred Anchor test (MANUAL -- mixed verdicts don't fit the
; run_tests naming gate).
;
; @twoedges: ONE shared trap block, TWO conditional predecessors, plus a
; phi in the trap block (the lcssa shape Julia emits -- exercises the
; we-never-encode-the-trap-block safety argument).
;   edge A (pathA): %m = %x & 7, trap if %m > 7  => provably dead, UNSAT,
;                   pathA's branch must fold (PARTIAL elimination)
;   edge B (pathB): trap if %y > 41              => genuinely reachable, SAT,
;                   pathB's branch must survive
; Expected: "2 trap site(s)", 1 UNSAT + 1 SAT, vacuity-ok on the UNSAT.
;
; @twoedges_live: control -- both edges reachable => 2 trap sites, 2 SAT.
;
; Run:
;   opt -load-pass-plugin=build/OraclePass.so \
;       -passes="oracle-pass<vacuity>" -disable-output tests/manual/multipred.ll
declare void @llvm.ubsantrap(i8 immarg)

define i64 @twoedges(i64 %x, i64 %y) {
entry:
  %c = icmp ult i64 %x, 100
  br i1 %c, label %pathA, label %pathB

pathA:
  %m = and i64 %x, 7
  %badA = icmp ugt i64 %m, 7
  br i1 %badA, label %trap, label %okA

pathB:
  %badB = icmp ugt i64 %y, 41
  br i1 %badB, label %trap, label %okB

trap:
  %tv = phi i64 [ %m, %pathA ], [ %y, %pathB ]
  call void @llvm.ubsantrap(i8 18)
  unreachable

okA:
  ret i64 %m

okB:
  ret i64 %y
}

define i64 @twoedges_live(i64 %x, i64 %y) {
entry:
  %c = icmp ult i64 %x, 100
  br i1 %c, label %pathA, label %pathB

pathA:
  %badA = icmp ugt i64 %x, 41
  br i1 %badA, label %trap, label %okA

pathB:
  %badB = icmp ugt i64 %y, 41
  br i1 %badB, label %trap, label %okB

trap:
  %tv = phi i64 [ %x, %pathA ], [ %y, %pathB ]
  call void @llvm.ubsantrap(i8 18)
  unreachable

okA:
  ret i64 %x

okB:
  ret i64 %y
}
