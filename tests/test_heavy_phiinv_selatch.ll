; PHIINV-hi through a conjunctive latch (HANDOFF §10.17): Swift/Julia emit
; `A && B` as `select i1 A, i1 B, false`. The middle lz77 loop's latch is
; `select (best < 255), (j+1 < i), false`; on the back edge BOTH hold, so
; HI on j is j == start || j <s i, which kills the check `j <s i` in the
; body (start = 0 <s i by the entry guard). UNSAT expected under heavy;
; EXPECTED-FAIL under the knobless light gate. SAT before the select
; decomposition.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_select_latch(i64 %i, i64 %best0, ptr %a) {
entry:
  %pos = icmp sgt i64 %i, 0
  br i1 %pos, label %loop, label %exit

loop:
  %j = phi i64 [ 0, %entry ], [ %inc, %latch ]
  %best = phi i64 [ %best0, %entry ], [ %nb, %latch ]
  %bad = icmp sge i64 %j, %i
  br i1 %bad, label %trap, label %body

body:
  %p = getelementptr inbounds i8, ptr %a, i64 %j
  %v = load i8, ptr %p, align 1
  %vz = zext i8 %v to i64
  %nb = add i64 %best, %vz
  br label %latch

latch:
  %inc = add nsw i64 %j, 1
  %c1 = icmp slt i64 %nb, 255
  %c2 = icmp slt i64 %inc, %i
  %both = select i1 %c1, i1 %c2, i1 false
  br i1 %both, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
