; LDEQ test (run with oracle-pass<vacuity;ldeq>): the bound is LOADED
; TWICE from the same pointer with no intervening write. Without ldeq
; the two loads are distinct free vars (n1, n2) and the query is SAT;
; with ldeq they unify and `i < n` contradicts `i >= n`.  UNSAT expected
; under <ldeq>; EXPECTED-FAIL under the plain light gate (like the
; heavy-tier tests -- run_tests.sh is not knob-aware).
declare void @llvm.ubsantrap(i8 immarg)

define i32 @reloaded_bound(ptr %np, i32 %i, ptr %a) {
entry:
  %n1 = load i32, ptr %np
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
