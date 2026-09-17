; F1 step 2 TRIPWIRE (HANDOFF §10.37): the multiplication's operands are NOT
; bounded by any loop-invariant hypothesis -- `a` is a loop-carried value
; that doubles every iteration, so a*b can exceed 2^32 on trap-reaching
; paths. Q1 (operands < 2^32 under H) must be SAT and the narrow retry must
; REFUSE; the check stays. EXPECTED (run_mv_tests.sh, narrow on): folds 0,
; no clone.
declare void @llvm.ubsantrap(i8 immarg)

define i64 @mv_narrow_bigops(ptr %p, ptr %lenp, i64 %b, i64 %n) {
entry:
  %len = load i64, ptr %lenp, align 8, !range !0
  %enter = icmp sgt i64 %n, 0
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %latch ]
  %a = phi i64 [ 1, %entry ], [ %a2, %latch ]
  %acc = phi i64 [ 0, %entry ], [ %acc.next, %latch ]
  %idx = mul i64 %a, %b
  %oob = icmp uge i64 %idx, %len
  br i1 %oob, label %trap, label %body

body:
  %q = getelementptr inbounds i64, ptr %p, i64 %idx
  %v = load i64, ptr %q, align 8
  %acc.next = add i64 %acc, %v
  br label %latch

latch:
  %a2 = shl i64 %a, 1
  %i.next = add nsw i64 %i, 1
  %cont = icmp slt i64 %i.next, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  %r = phi i64 [ 0, %entry ], [ %acc.next, %latch ]
  ret i64 %r
}

!0 = !{i64 0, i64 9223372036854775807}
