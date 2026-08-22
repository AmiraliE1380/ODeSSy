; SCEVSYM v2 acceptance shape (subtraction-form facts, HANDOFF §8.7):
; a remainder-style loop whose induction phi has a SYMBOLIC start %r
; (the vectorizer's bc.resume.val pattern) -- v1's constant-start gate
; refused these outright. The dominating guard gives r <u n, the phi is
; {%r,+,1}, and the in-loop check re-tests i <u n. With the v2 fact
;   (i - r) <=u BTC     [BTC's symbolic max mentions r and n]
; plus the guard, the trap contradicts.  UNSAT expected under the heavy
; knob; EXPECTED-FAIL under the knobless light gate (run_tests.sh is
; not knob-aware -- ldeq/heavy/frame precedent).
declare void @llvm.ubsantrap(i8 immarg)

define void @symstart(i64 %r, i64 %n, ptr %a) {
entry:
  %entered = icmp ult i64 %r, %n
  br i1 %entered, label %loop, label %exit

loop:
  %i = phi i64 [ %r, %entry ], [ %inc, %latch ]
  %oob = icmp uge i64 %i, %n
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
