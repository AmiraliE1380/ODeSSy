; Heavy-tier test: callee's 'range' return attribute bounds the alien
; call's result; x+1 cannot signed-overflow.  light => SAT, heavy => UNSAT.
declare range(i32 0, 100) i32 @get()
define i32 @f() {
entry:
  %x = call i32 @get()
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
