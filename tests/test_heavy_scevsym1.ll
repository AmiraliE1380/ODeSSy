; SCEVSYM test (heavy tier): a ROTATED loop -- the `i < n` test lives at
; the bottom (latch), so it dominates nothing in the body and Phase-0
; collects only the entry guard `n > 0`. The in-loop bounds check
; `i >= n` is SAT under light (free phi, no upper bound) and UNSAT under
; heavy via the SCEVSYM fact  i <=u BTC = n-1  conjoined with the entry
; guard n >= 1 (which rules out the n=0 wraparound of n-1).
; EXPECTED-FAIL under the light run_tests gate (like all test_heavy_*).
; Manual check:  opt -passes="oracle-pass<vacuity;heavy>" ...  => UNSAT,
; core must contain SCEVSYM: and G0.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @rotated_sum(i32 %n, ptr %a) {
entry:
  %run = icmp ugt i32 %n, 0
  br i1 %run, label %preheader, label %exit

preheader:
  br label %body

body:
  %i = phi i32 [ 0, %preheader ], [ %i.next, %cont ]
  %acc = phi i32 [ 0, %preheader ], [ %acc.next, %cont ]
  %oob = icmp uge i32 %i, %n
  br i1 %oob, label %trap, label %cont

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

cont:
  %p = getelementptr inbounds i32, ptr %a, i32 %i
  %v = load i32, ptr %p
  %acc.next = add i32 %acc, %v
  %i.next = add nuw nsw i32 %i, 1
  %again = icmp ult i32 %i.next, %n
  br i1 %again, label %body, label %exit

exit:
  %r = phi i32 [ 0, %entry ], [ %acc.next, %cont ]
  ret i32 %r
}
