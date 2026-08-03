; implicit-conversion spec, UNSAT: guard `x <u 256` makes the i32->i8
; truncation lossless, so the round-trip inequality check cannot fire.
; Exercises trunc/zext/icmp -- all existing encoder paths.
declare void @llvm.ubsantrap(i8 immarg)

define i8 @trunc_guarded(i32 %x) {
entry:
  %small = icmp ult i32 %x, 256
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
