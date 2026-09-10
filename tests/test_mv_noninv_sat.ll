; MV TRIPWIRE R1 (HANDOFF §10.22): the only way to kill this overflow trap
; is a bound on `out`, which is a LOOP PHI (not invariant): no template may
; produce it, so the trap must stay in BOTH copies -- in fact no versioning
; at all (H empty). The model needs out ~ INT_MAX with n small, so the
; sane-range hypothesis on n does NOT help (n is not in the trap's slice
; arithmetic; if the solver still found an H it would be a template bug).
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 0", no `mv.fast` block.
declare void @llvm.ubsantrap(i8 immarg)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64)

define i64 @mv_noninv(ptr %np, i64 %out0) {
entry:
  %n = load i64, ptr %np, align 8, !range !0
  %enter = icmp sgt i64 %n, 0
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %inc, %latch ]
  %out = phi i64 [ %out0, %entry ], [ %out1, %latch ]
  %s = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %out, i64 3)
  %out1 = extractvalue { i64, i1 } %s, 0
  %ovf = extractvalue { i64, i1 } %s, 1
  br i1 %ovf, label %trap, label %latch

latch:
  %inc = add nuw nsw i64 %i, 1
  %cont = icmp slt i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  %r = phi i64 [ 0, %entry ], [ %out1, %latch ]
  ret i64 %r
}

!0 = !{i64 0, i64 9223372036854775807}
