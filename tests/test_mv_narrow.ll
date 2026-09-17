; F1 step 2 acceptance (HANDOFF §10.37): 64-bit twin of test_mv_symbolic.ll.
; a[(i-1)*n + (k-1)] for i,k in 1..n with a's length a free load: the check
; idx <u len is SAT (len may be small) but dead under
;   H = { len >u n*n - 1  (T3, expanded by SCEVExpander), 0 <= n <= 2^15 (T2) }
; At 64 bits the exact bvmul is out of budget; with `narrow` the mul is
; encoded on 32-bit operands and the side condition certified (Q1).
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 1", output verifies, one `mv.fast` clone, a `mv.t3` expansion.
declare void @llvm.ubsantrap(i8 immarg)

define i64 @mv_narrow(ptr %a, ptr %lenp, i64 %n) {
entry:
  %len = load i64, ptr %lenp, align 4, !range !0
  %enter = icmp sgt i64 %n, 0
  br i1 %enter, label %outer, label %exit

outer:
  %i = phi i64 [ 1, %entry ], [ %i.next, %outer.latch ]
  %acc = phi i64 [ 0, %entry ], [ %acc.out, %outer.latch ]
  %im1 = add nsw i64 %i, -1
  %row = mul nsw i64 %im1, %n
  br label %inner

inner:
  %k = phi i64 [ 1, %outer ], [ %k.next, %inner.latch ]
  %acc.in = phi i64 [ %acc, %outer ], [ %acc.next, %inner.latch ]
  %km1 = add nsw i64 %k, -1
  %idx = add nsw i64 %row, %km1
  %oob = icmp uge i64 %idx, %len
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i64, ptr %a, i64 %idx
  %v = load i64, ptr %p, align 4
  %acc.next = add i64 %acc.in, %v
  br label %inner.latch

inner.latch:
  %k.next = add nsw i64 %k, 1
  %k.cont = icmp sle i64 %k.next, %n
  br i1 %k.cont, label %inner, label %outer.latch

outer.latch:
  %acc.out = phi i64 [ %acc.next, %inner.latch ]
  %i.next = add nsw i64 %i, 1
  %i.cont = icmp sle i64 %i.next, %n
  br i1 %i.cont, label %outer, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  %r = phi i64 [ 0, %entry ], [ %acc.out, %outer.latch ]
  ret i64 %r
}

!0 = !{i64 0, i64 9223372036854775807}
