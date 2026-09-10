; MV TRIPWIRE R4 (HANDOFF §10.22): same table-lookup shape as
; test_mv_tbl.ll but the count is RELOADED INSIDE THE LOOP after a store
; through an unknown pointer (the table may be reallocated per iteration),
; so `count` is not loop-invariant: T1 must not apply and no hypothesis
; over it may be hoisted. The trap must stay and no clone may be made.
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 0", no `mv.fast` block.
declare void @llvm.ubsantrap(i8 immarg)
declare void @grow(ptr)

define i64 @mv_realloc(ptr %data, i64 %n, ptr %tblp, ptr %cntp) {
entry:
  %enter = icmp sgt i64 %n, 0
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %inc, %latch ]
  %acc = phi i64 [ 0, %entry ], [ %acc2, %latch ]
  call void @grow(ptr %cntp)
  %count = load i64, ptr %cntp, align 8, !range !0
  %tbl = load ptr, ptr %tblp, align 8
  %p = getelementptr inbounds i8, ptr %data, i64 %i
  %b = load i8, ptr %p, align 1
  %idx8 = and i8 %b, 63
  %idx = zext i8 %idx8 to i64
  %oob = icmp uge i64 %idx, %count
  br i1 %oob, label %trap, label %body

body:
  %tp = getelementptr inbounds i8, ptr %tbl, i64 %idx
  %t = load i8, ptr %tp, align 1
  %tz = zext i8 %t to i64
  %acc2 = add i64 %acc, %tz
  br label %latch

latch:
  %inc = add nuw nsw i64 %i, 1
  %cont = icmp slt i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  %r = phi i64 [ 0, %entry ], [ %acc2, %latch ]
  ret i64 %r
}

!0 = !{i64 0, i64 9223372036854775807}
