; LDEQ soundness control, SAT under EVERY configuration including
; <ldeq>: a store separates the two loads of %np, so unification must
; refuse (the bound may genuinely have changed). If this ever reports
; UNSAT, LDEQ is broken -- investigate before trusting anything.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @clobbered_bound(ptr %np, i32 %i, i32 %newn, ptr %a) {
entry:
  %n1 = load i32, ptr %np
  store i32 %newn, ptr %np
  %n2 = load i32, ptr %np
  %in = icmp ult i32 %i, %n1
  br i1 %in, label %body, label %bail

body:
  %oob = icmp uge i32 %i, %n2
  br i1 %oob, label %trap, label %load

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

load:
  %p = getelementptr inbounds i32, ptr %a, i32 %i
  %v = load i32, ptr %p
  ret i32 %v

bail:
  ret i32 0
}
