; No freeze: the branch consumes a+1 directly, so a wrap is UB and the
; trap is dead for every defined execution. Expect UNSAT (both builds).
define void @f(i32 %a) {
entry:
  %g = icmp sge i32 %a, -1
  br i1 %g, label %body, label %out
body:
  %y = add nsw i32 %a, 1
  %c = icmp slt i32 %y, 0
  br i1 %c, label %trap, label %out
trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable
out:
  ret void
}
declare void @llvm.ubsantrap(i8)
