; PHIINV-hi conjunctive-latch TRIPWIRE (must stay SAT forever): the latch
; is a DISJUNCTION `select A, true, B` (= A || B) taken on TRUE. Only one
; of the operands need hold on the back edge, so `j+1 < i` (operand B)
; may be false while the loop continues via A, and j can reach i: the
; check `j <s i` is live. If this flips to UNSAT the decomposition is
; treating an or-on-true as a conjunction.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_select_or_latch(i64 %i, i64 %best0, ptr %a) {
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
  %either = select i1 %c1, i1 true, i1 %c2
  br i1 %either, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
