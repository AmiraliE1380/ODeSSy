; divide-by-zero spec, SAT: no dominating guard -- d==0 is reachable.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @div_unguarded(i32 %x, i32 %d) {
entry:
  %isz = icmp eq i32 %d, 0
  br i1 %isz, label %trap, label %do_div

trap:
  call void @llvm.ubsantrap(i8 3)
  unreachable

do_div:
  %q = sdiv i32 %x, %d
  ret i32 %q
}
