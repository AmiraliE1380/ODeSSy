; PHIINV tripwire T1, SAT under EVERY configuration forever: one latch
; increment is -1, so the phi is NOT monotone and LO must refuse; i can
; fall below 1 and the check (i-1) <u n fires. If this ever reports
; UNSAT the LO sign premise has become wrong-strong -- investigate.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_negative_step(i64 %n, i1 %c, ptr %a) {
entry:
  %entered = icmp sge i64 %n, 2
  br i1 %entered, label %loop, label %exit

loop:
  %i = phi i64 [ 2, %entry ], [ %inc, %latch ]
  %im1 = add i64 %i, -1
  %oob = icmp uge i64 %im1, %n
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i8, ptr %a, i64 %im1
  store i8 0, ptr %p, align 1
  %d = select i1 %c, i64 3, i64 -1
  %inc = add nsw i64 %i, %d
  br label %latch

latch:
  %cont = icmp sle i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
