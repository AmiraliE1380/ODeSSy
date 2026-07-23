; Heavy-tier test: x = load with !range [0,100); x+1 cannot signed-overflow.
; light  => SAT  (load is a free variable)
; heavy  => UNSAT (RM/KB/LVI fact bounds the load)
define i32 @f(ptr %p) {
entry:
  %x = load i32, ptr %p, !range !0
  %r = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %x, i32 1)
  %ov = extractvalue { i32, i1 } %r, 1
  br i1 %ov, label %trap, label %ok
trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable
ok:
  %v = extractvalue { i32, i1 } %r, 0
  ret i32 %v
}
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8)
!0 = !{i32 0, i32 100}
