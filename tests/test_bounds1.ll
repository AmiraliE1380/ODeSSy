; constant-bound bounds spec + INDEX ARITHMETIC, UNSAT: guard `i <u 63`
; implies `i+1 <u 64` (no wrap possible below 63). This is the a[i+1]
; shape -- exact in BV where LLVM's range walk goes conservative.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @bounds_arith(i32 %i, ptr %a) {
entry:
  %in = icmp ult i32 %i, 63
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
