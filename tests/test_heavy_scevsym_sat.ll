; SCEVSYM SAT control: identical rotated loop, but the check is
; `i >= n-1` -- the LAST iteration (i = n-1) genuinely reaches it, so
; this must stay SAT under EVERY tier including heavy+SCEVSYM. If this
; ever reports UNSAT, the symbolic bound is over-tight -- stop and audit.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @rotated_offbyone(i32 %n, ptr %a) {
entry:
  %run = icmp ugt i32 %n, 0
  br i1 %run, label %preheader, label %exit

preheader:
  br label %body

body:
  %i = phi i32 [ 0, %preheader ], [ %i.next, %cont ]
  %acc = phi i32 [ 0, %preheader ], [ %acc.next, %cont ]
  %nm1 = add i32 %n, -1
  %oob = icmp uge i32 %i, %nm1
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
