; PHIINV tripwire T2, SAT forever: the increment %dfree is a function
; argument with no sign fact of any kind (no range, no KB, no guard).
; LO must refuse; a negative increment drives i below 1.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_free_increment(i64 %n, i64 %dfree, ptr %a) {
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
  %d = add i64 %dfree, 0
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
