; MV T3 TRIPWIRE (HANDOFF §10.29): the index is i*i (quadratic in the
; induction variable, NOT an affine AddRec), so SCEV gives no affine
; recurrence to peel and T3 must produce NO candidate; the T2 sane-range
; candidates alone cannot kill the check. The trap must stay in both
; copies and no clone may be made.
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 0", no `mv.fast` block.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @mv_nonaffine(ptr %a, ptr %lenp, i32 %n) {
entry:
  %len = load i32, ptr %lenp, align 4, !range !0
  %enter = icmp sgt i32 %n, 0
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i32 [ 0, %entry ], [ %i.next, %latch ]
  %acc = phi i32 [ 0, %entry ], [ %acc.next, %latch ]
  %idx = mul i32 %i, %i
  %oob = icmp uge i32 %idx, %len
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i32, ptr %a, i32 %idx
  %v = load i32, ptr %p, align 4
  %acc.next = add i32 %acc, %v
  br label %latch

latch:
  %i.next = add nsw i32 %i, 1
  %cont = icmp slt i32 %i.next, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  %r = phi i32 [ 0, %entry ], [ %acc.next, %latch ]
  ret i32 %r
}

!0 = !{i32 0, i32 2147483647}
