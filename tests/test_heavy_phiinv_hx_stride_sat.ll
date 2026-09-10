; PHIINV-hx TRIPWIRE (must stay SAT forever): same header-exit shape as
; test_heavy_phiinv_hx.ll but the step is 2. With l starting at 0 and
; b = n - i odd, l jumps over b (never equal) and reaches b+1, so i + l
; == n+1 is out of bounds: the invariant l <=u b is NOT inductive for a
; non-unit stride and the rule must REFUSE. If this flips to UNSAT the
; unit-step gate has been lost.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_hx_stride2(i64 %n, i64 %i, ptr %a) {
entry:
  %ok = icmp ult i64 %i, %n
  br i1 %ok, label %pre, label %exit

pre:
  %b = sub i64 %n, %i
  br label %loop

loop:
  %l = phi i64 [ 0, %pre ], [ %inc, %latch ]
  %done = icmp eq i64 %l, %b
  br i1 %done, label %exit, label %body

body:
  %idx = add i64 %i, %l
  %oob = icmp uge i64 %idx, %n
  br i1 %oob, label %trap, label %latch

latch:
  %p = getelementptr inbounds i8, ptr %a, i64 %idx
  store i8 0, ptr %p, align 1
  %inc = add i64 %l, 2
  %more = icmp ne i64 %inc, 255
  br i1 %more, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
