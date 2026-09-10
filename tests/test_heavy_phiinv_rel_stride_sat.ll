; PHIINV-rel TRIPWIRE (must stay SAT forever): same two-phi shape as
; test_heavy_phiinv_rel.ll but q's latch value is i + 4 while i's is i + 3
; and the bases differ by 2: kq (4) != kp (3) + c (2), so q == i + 2 is NOT
; inductive (the gap grows by one per iteration) and the latch bound on q
; says nothing about i. The check `i <u n` is live. If this flips to UNSAT
; the rel rule has lost its stride-consistency test.
declare void @llvm.ubsantrap(i8 immarg)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64)

define void @phiinv_rel_bad_stride(ptr %np, ptr %a) {
entry:
  %n = load i64, ptr %np, align 8, !range !0
  br label %pre
pre:
  %enter = icmp sgt i64 %n, 2
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %pre ], [ %inc, %latch ]
  %q = phi i64 [ 2, %pre ], [ %q4, %latch ]
  %oob = icmp uge i64 %i, %n
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i8, ptr %a, i64 %i
  store i8 0, ptr %p, align 1
  %s = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i, i64 4)
  %q4 = extractvalue { i64, i1 } %s, 0
  %ovf = extractvalue { i64, i1 } %s, 1
  br i1 %ovf, label %trap2, label %step

step:
  %inc = add nuw nsw i64 %i, 3
  br label %latch

latch:
  %cont = icmp slt i64 %q4, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

trap2:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret void
}

!0 = !{i64 0, i64 9223372036854775807}
