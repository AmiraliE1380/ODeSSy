; a = INT_MAX: a+1 nsw is poison, freeze turns it into any value, e.g. -1,
; and the trap fires. The trap is reachable: expect SAT.
define void @f(i32 %a) {
entry:
  %g = icmp sge i32 %a, -1
  br i1 %g, label %body, label %out
body:
  %y = add nsw i32 %a, 1
  %x = freeze i32 %y
  %c = icmp slt i32 %x, 0
  br i1 %c, label %trap, label %out
trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable
out:
  ret void
}
declare void @llvm.ubsantrap(i8)
