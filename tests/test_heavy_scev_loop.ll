; Heavy-tier test: SCEV bounds the induction phi %i to [0,10);
; i+1 cannot signed-overflow.  light => SAT, heavy => UNSAT via SCEV:
define i32 @f() {
entry:
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %inc, %cont ]
  %r = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %ov = extractvalue { i32, i1 } %r, 1
  br i1 %ov, label %trap, label %cont
trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable
cont:
  %inc = add i32 %i, 1
  %c = icmp slt i32 %inc, 10
  br i1 %c, label %loop, label %exit
exit:
  ret i32 %inc
}
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8)
