; implicit-conversion spec, SAT: x in [256, 300) truncates lossily.
declare void @llvm.ubsantrap(i8 immarg)

define i8 @trunc_weak_guard(i32 %x) {
entry:
  %small = icmp ult i32 %x, 300
  br i1 %small, label %conv, label %bail

conv:
  %t = trunc i32 %x to i8
  %rt = zext i8 %t to i32
  %lossy = icmp ne i32 %rt, %x
  br i1 %lossy, label %trap, label %done

trap:
  call void @llvm.ubsantrap(i8 7)
  unreachable

done:
  ret i8 %t

bail:
  ret i8 0
}
