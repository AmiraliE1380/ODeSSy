; SCEVSYM stride test (heavy tier): rotated loop with STRIDE 3 (the
; base64 shape). i = {0,+,3}<nuw>, latch `i+3 <u n`; the in-body check
; `i >= n` must go UNSAT via  i <=u 3*BTC  (BTC is a (n-c)/u 3 shape --
; exercises the udiv translation) conjoined with the entry guard n > 2.
; EXPECTED-FAIL under the light run_tests gate (like all test_heavy_*).
; Manual: opt -passes="oracle-pass<vacuity;heavy>" => UNSAT, core must
; contain SCEVSYM: and G0.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @stride3_sum(i32 %n, ptr %a) {
entry:
  %run = icmp ugt i32 %n, 2
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
  %i.next = add nuw nsw i32 %i, 3
  %again = icmp ult i32 %i.next, %n
  br i1 %again, label %body, label %exit

exit:
  %r = phi i32 [ 0, %entry ], [ %acc.next, %cont ]
  ret i32 %r
}
