; The nsw add sits in the unchosen select arm when %s is false, so it may
; wrap legally (a = INT_MAX); the trap then fires on a == INT_MAX. Expect SAT.
define void @f(i32 %a, i1 %s) {
entry:
  %y = add nsw i32 %a, 1
  %v = select i1 %s, i32 %y, i32 0
  %c1 = icmp eq i32 %v, -2147483648
  %c2 = icmp eq i32 %a, 2147483647
  %c = or i1 %c1, %c2
  br i1 %c, label %trap, label %out
trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable
out:
  ret void
}
declare void @llvm.ubsantrap(i8)
