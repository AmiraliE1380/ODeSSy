; bounds spec, SAT: guard `i <u 64` is one too weak -- i=63 reaches the
; trap with i+1 = 64. The near-miss control for test_bounds1.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @bounds_offbyone(i32 %i, ptr %a) {
entry:
  %in = icmp ult i32 %i, 64
  br i1 %in, label %body, label %bail

body:
  %i1 = add i32 %i, 1
  %oob = icmp uge i32 %i1, 64
  br i1 %oob, label %trap, label %load

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

load:
  %p = getelementptr inbounds i32, ptr %a, i32 %i1
  %v = load i32, ptr %p
  ret i32 %v

bail:
  ret i32 0
}
