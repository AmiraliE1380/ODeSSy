; PHIINV tripwire T4, SAT forever (v1 semantics): no preheader guard,
; so the FIRST iteration (i = 2) has no relation to n; n may be 1 and
; the check fires on iteration 0. HI's latch-derived bound covers only
; non-first iterations and must not be asserted unconditionally.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_no_preheader_guard(i64 %n, i1 %c, ptr %a) {
entry:
  br label %loop

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
  %cont = icmp sle i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
