; PHIINV-rel acceptance (HANDOFF §10.20): the Swift base64 shape. swiftc
; splits `while i + 2 < n { data[i]; ... ; i += 3 }` into two header phis,
; i (base 0, latch i+3) and q = i+2 (base 2, latch value extractvalue 0 of
; sadd.with.overflow(i, 5)), and the latch bound tests q's next value. The
; check `i <u n` at the header is dead only through q == i + 2 (rel) plus
; HI on q (q == 2 || q <s n). UNSAT expected under heavy; EXPECTED-FAIL
; under the knobless light gate. SAT before PHIINV-rel.
declare void @llvm.ubsantrap(i8 immarg)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64)

define void @phiinv_rel_base64(ptr %np, ptr %a) {
entry:
  %n = load i64, ptr %np, align 8, !range !0
  br label %pre
pre:
  %enter = icmp sgt i64 %n, 2
  br i1 %enter, label %loop, label %exit

loop:
  %i = phi i64 [ 0, %pre ], [ %inc, %latch ]
  %q = phi i64 [ 2, %pre ], [ %q5, %latch ]
  %oob = icmp uge i64 %i, %n
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i8, ptr %a, i64 %i
  store i8 0, ptr %p, align 1
  %s = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i, i64 5)
  %q5 = extractvalue { i64, i1 } %s, 0
  %ovf = extractvalue { i64, i1 } %s, 1
  br i1 %ovf, label %trap2, label %step

step:
  %inc = add nuw nsw i64 %i, 3
  br label %latch

latch:
  %cont = icmp slt i64 %q5, %n
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
