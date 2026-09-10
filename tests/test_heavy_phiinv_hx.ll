; PHIINV-hx acceptance (HANDOFF §10.17): the Swift lz77 inner-loop shape.
; The frontend turned `while l < 255 && i + l < n` into a header exit on
; `l == n - i` (B loop-invariant) with a unit-step latch `l + 1 != 255`.
; The check `i + l <u n` at the body is dead iff l <=u n-i is invariant,
; which only the header-exit rule gives (HI on the latch yields the
; useless `l != 255`). UNSAT expected under heavy; EXPECTED-FAIL under the
; knobless light gate. SAT before PHIINV-hx.
declare void @llvm.ubsantrap(i8 immarg)

define void @phiinv_hx_swift_inner(i64 %n, i64 %i, ptr %a) {
entry:
  %ok = icmp ult i64 %i, %n
  br i1 %ok, label %pre, label %exit

pre:
  %b = sub i64 %n, %i
  br label %loop

loop:
  %l = phi i64 [ 0, %pre ], [ %inc, %latch ]
  %done = icmp eq i64 %l, %b
  br i1 %done, label %exit, label %body

body:
  %idx = add i64 %i, %l
  %oob = icmp uge i64 %idx, %n
  br i1 %oob, label %trap, label %latch

latch:
  %p = getelementptr inbounds i8, ptr %a, i64 %idx
  store i8 0, ptr %p, align 1
  %inc = add i64 %l, 1
  %more = icmp ne i64 %inc, 255
  br i1 %more, label %loop, label %exit

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

exit:
  ret void
}
