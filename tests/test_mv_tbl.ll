; MV acceptance T1 (HANDOFF §10.22): the base64/crc32 table-lookup shape.
; tbl[idx & 63] where tbl's count is a LOAD (free): the check `idx <u count`
; is SAT (count could be 0) but dead under H = {count >u 63}, and count is
; loop-invariant, so the loop is versioned: `if (count > 63) fast else
; checked`, trap folded in the clone only.
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 1", output module verifies, exactly one `mv.fast` clone.
declare void @llvm.ubsantrap(i8 immarg)

define i64 @mv_tbl(ptr %data, i64 %n, ptr %tblp, ptr %cntp) {
entry:
  %tbl = load ptr, ptr %tblp, align 8
  %count = load i64, ptr %cntp, align 8, !range !0
  %enter = icmp sgt i64 %n, 0
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %inc, %latch ]
  %acc = phi i64 [ 0, %entry ], [ %acc2, %latch ]
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
