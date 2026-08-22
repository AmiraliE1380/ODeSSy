; SCEVSYM v2 soundness tripwire, SAT under EVERY configuration forever:
; identical remainder-style symbolic-start loop, but the in-loop check
; tests %i against an UNRELATED bound %m -- no guard, no fact ties m to
; the loop's n. The v2 subtraction-form fact (i - r) <=u BTC(r, n) is
; true but must NOT suffice: with m free, i in [r, n) can still reach
; m <= i. If this ever reports UNSAT, the subtraction-form fact (or the
; mul/max BTC translation feeding it) has become wrong-strong --
; investigate before trusting anything (scevsym_sat doctrine).
declare void @llvm.ubsantrap(i8 immarg)

define void @symstart_unrelated(i64 %r, i64 %n, i64 %m, ptr %a) {
entry:
  %entered = icmp ult i64 %r, %n
  br i1 %entered, label %loop, label %exit

loop:
  %i = phi i64 [ %r, %entry ], [ %inc, %latch ]
  %oob = icmp uge i64 %i, %m
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds double, ptr %a, i64 %i
  store double 0.000000e+00, ptr %p, align 8
  br label %latch

latch:
  %inc = add nuw nsw i64 %i, 1
  %cont = icmp ult i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
