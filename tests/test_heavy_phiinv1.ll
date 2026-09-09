; PHIINV acceptance shape (HANDOFF §10.9): the lz77.jl outer loop reduced.
; Variable-stride induction (i += 3 or i += 1: SCEV has NO trip count),
; a preheader guard n >= 2 with start 2, a latch `inc <= n` that is the
; ONLY source of an upper bound, and a 1-based check 1 <= i <= n encoded
; as (i-1) <u n. LO (monotone increments) gives i >= 2; HI (latch
; instantiated on the phi, base from the guard) gives i <= n. UNSAT
; expected under heavy once PHIINV lands; EXPECTED-FAIL under the
; knobless light gate (ldeq/heavy/frame precedent). SAT before PHIINV.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_lz77_skeleton(i64 %n, i1 %c, ptr %a) {
entry:
  %entered = icmp sge i64 %n, 2
  br i1 %entered, label %loop, label %exit

loop:
  %i = phi i64 [ 2, %entry ], [ %inc, %latch ]
  %im1 = add i64 %i, -1
  %oob = icmp uge i64 %im1, %n
  br i1 %oob, label %trap, label %body

body:
  %p = getelementptr inbounds i8, ptr %a, i64 %im1
  store i8 0, ptr %p, align 1
  %d = select i1 %c, i64 3, i64 1
  %inc = add nsw i64 %i, %d
  br label %latch

latch:
  %cont = icmp sle i64 %inc, %n
  br i1 %cont, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
