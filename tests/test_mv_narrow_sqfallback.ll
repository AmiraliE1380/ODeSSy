; F1 step 3 regression test (HANDOFF §10.44/10.45): the check `n*n <u n` for
; n >= 2 is dead under a size hypothesis but NOT by the linear facts
; N0/N1/M1/M2 alone (they relate products to each other, never a product to
; its own operand). OBSERVED: the exact 64-bit mv round already certifies it
; (H = {n <= 2^31}, ~90 ms), so the narrow retry is not reached; the test
; guards that a product-only check stays versionable (fold 1) as the
; linearization code evolves. The Q_A'->exact-Q_A fallback itself is
; exercised on matmul.jl (§10.45 log: "Q_A' (linearized) SAT ... exact Q_A").
; Plain (wrapping) mul: at 64 bits the check is genuinely reachable (n >= 2^32),
; so this is a multi-versioning case; under H = {n <= 2^15} it is dead.
declare void @llvm.ubsantrap(i8 immarg)

define i64 @mv_sq(ptr %a, ptr %lenp, i64 %n) {
entry:
  %len = load i64, ptr %lenp, align 8, !range !0
  %enter = icmp sgt i64 %n, 1
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %latch ]
  %acc = phi i64 [ 0, %entry ], [ %acc.next, %latch ]
  %sq = mul i64 %n, %n
  %bad = icmp ult i64 %sq, %n
  br i1 %bad, label %trap, label %body

body:
  %p = getelementptr inbounds i64, ptr %a, i64 %i
  %v = load i64, ptr %p, align 8
  %acc.next = add i64 %acc, %v
  br label %latch

latch:
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
