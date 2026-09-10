; MV acceptance T2 (HANDOFF §10.22): the lz77.jl / base64 genuine-wrap
; shape. `i + 5` may overflow only when n (loop-invariant, loaded, range
; [0, INT_MAX)) is within 5 of INT_MAX: SAT, but dead under the sane-range
; hypothesis H = {n <=s 2^62}. Versioned on n.
; EXPECTED (scripts/run_mv_tests.sh): verdict SAT, "Folded In Fast Copies
; (mv): 1", output verifies, one `mv.fast` clone, guard `icmp sle ... 2^62`.
declare void @llvm.ubsantrap(i8 immarg)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64)

define void @mv_wrap(ptr %np, ptr %a) {
entry:
  %n = load i64, ptr %np, align 8, !range !0
  %enter = icmp sgt i64 %n, 2
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %entry ], [ %inc, %latch ]
  %q = phi i64 [ 2, %entry ], [ %q5, %latch ]
  %p = getelementptr inbounds i8, ptr %a, i64 %i
  store i8 0, ptr %p, align 1
  %s = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i, i64 5)
  %q5 = extractvalue { i64, i1 } %s, 0
  %ovf = extractvalue { i64, i1 } %s, 1
  br i1 %ovf, label %trap, label %latch

latch:
  %inc = add nuw nsw i64 %i, 3
  %cont = icmp slt i64 %q5, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret void
}

!0 = !{i64 0, i64 9223372036854775807}
