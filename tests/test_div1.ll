; divide-by-zero spec, UNSAT: the dominating guard `d != 0` contradicts
; the trap condition `d == 0`. Zero new encoder machinery -- icmp + the
; guard walk carry the whole proof.
declare void @llvm.ubsantrap(i8 immarg)

define i32 @div_guarded(i32 %x, i32 %d) {
entry:
  %nz = icmp ne i32 %d, 0
  br i1 %nz, label %checked, label %bail

checked:                     ; %d != 0 holds on every path here
  %isz = icmp eq i32 %d, 0
  br i1 %isz, label %trap, label %do_div

trap:
  call void @llvm.ubsantrap(i8 3)
  unreachable

do_div:
  %q = sdiv i32 %x, %d
  ret i32 %q

bail:
  ret i32 0
}
