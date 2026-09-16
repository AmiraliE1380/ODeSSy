; MV acceptance T3 (HANDOFF §10.29): length vs SYMBOLIC index bound.
; a[(i-1)*n + (k-1)] for i,k in 1..n with a's length a free load: the check
; idx <u len is SAT (len may be small) but dead under
;   H = { len >u n*n - 1  (T3, expanded by SCEVExpander), 0 <= n <= 2^15 (T2) }
; 32-bit so the bit-vector multiplication stays cheap for the gate.
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 1", output verifies, one `mv.fast` clone, a `mv.t3` expansion.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @mv_symbolic(ptr %a, ptr %lenp, i32 %n) {
entry:
  %len = load i32, ptr %lenp, align 4, !range !0
  %enter = icmp sgt i32 %n, 0
  br i1 %enter, label %outer, label %exit

outer:
  %i = phi i32 [ 1, %entry ], [ %i.next, %outer.latch ]
  %acc = phi i32 [ 0, %entry ], [ %acc.out, %outer.latch ]
  %im1 = add nsw i32 %i, -1
  %row = mul nsw i32 %im1, %n
  br label %inner

inner:
  %k = phi i32 [ 1, %outer ], [ %k.next, %inner.latch ]
  %acc.in = phi i32 [ %acc, %outer ], [ %acc.next, %inner.latch ]
  %km1 = add nsw i32 %k, -1
  %idx = add nsw i32 %row, %km1
  %oob = icmp uge i32 %idx, %len
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i32, ptr %a, i32 %idx
  %v = load i32, ptr %p, align 4
  %acc.next = add i32 %acc.in, %v
  br label %inner.latch

inner.latch:
  %k.next = add nsw i32 %k, 1
  %k.cont = icmp sle i32 %k.next, %n
  br i1 %k.cont, label %inner, label %outer.latch

outer.latch:
  %acc.out = phi i32 [ %acc.next, %inner.latch ]
  %i.next = add nsw i32 %i, 1
  %i.cont = icmp sle i32 %i.next, %n
  br i1 %i.cont, label %outer, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  %r = phi i32 [ 0, %entry ], [ %acc.out, %outer.latch ]
  ret i32 %r
}

!0 = !{i32 0, i32 2147483647}
