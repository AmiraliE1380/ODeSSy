; FRAME soundness tripwire #1, SAT under EVERY configuration forever:
; identical shape to test_frame1 except the loop's store goes through a
; third pointer %qp with NO scoped metadata. %qp MAY alias %np (both
; plain arguments), so rule D2 gets MayAlias, the walk must REFUSE the
; n1 == n2 fact, n2 stays a free variable, and the trap is reachable.
; The danger this test pins: a frame walk that only refuses on
; MUST-alias clobbers (or that forgets a def entirely) would unify the
; loads and report UNSAT -- eliminating a live bounds check. Frame bugs
; INCREASE the elimination count, so no other gate in the suite can
; catch one. If this test ever reports UNSAT, FRAME is broken --
; investigate before trusting anything (test_ldeq_clobber_sat doctrine).
declare void @llvm.ubsantrap(i8 immarg)

define void @frame_mayalias_clobber(ptr %np, ptr %qp, i32 %i, i32 %m, i32 %newn) {
entry:
  %n1 = load i32, ptr %np, align 4
  %in = icmp ult i32 %i, %n1
  br i1 %in, label %loop, label %bail

loop:
  %j = phi i32 [ 0, %entry ], [ %j1, %latch ]
  store i32 %newn, ptr %qp, align 4
  %n2 = load i32, ptr %np, align 4
  %oob = icmp uge i32 %i, %n2
  br i1 %oob, label %trap, label %latch

latch:
  %j1 = add nuw nsw i32 %j, 1
  %c = icmp ult i32 %j1, %m
  br i1 %c, label %loop, label %done

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

done:
  ret void

bail:
  ret void
}
