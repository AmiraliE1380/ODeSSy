; PHIINV tripwire T3, SAT forever: the latch compares a LOADED value
; %q against n, not the phi's incoming value %inc. HI must refuse (the
; condition says nothing about i); LO legitimately gives i >= 2 but i is
; unbounded above, so (i-1) >=u n is reachable.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_unrelated_latch(i64 %n, i1 %c, ptr %a) {
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
  %d = select i1 %c, i64 3, i64 1
  %inc = add nsw i64 %i, %d
  br label %latch

latch:
  %q = load i64, ptr %a, align 8
  %cont = icmp sle i64 %q, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
