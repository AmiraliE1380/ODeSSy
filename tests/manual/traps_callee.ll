; traps= Hunter test (MANUAL -- lives outside the run_tests glob on
; purpose, because it needs a nonstandard pass string).
;
; Two named-callee "panic" sites behind the divergence gate:
;   trap1: %i unconstrained            => must stay SAT
;   trap2: %clamped = %i & 7, check >7 => must go UNSAT (mask bound)
;
; Run A (traps= on):  expect "2 trap site(s)", 1 UNSAT + 1 SAT:
;   opt -load-pass-plugin=build/OraclePass.so \
;       -passes="oracle-pass<vacuity;traps=my_panic>" -disable-output \
;       tests/manual/traps_callee.ll
; Run B (default):    expect "0 trap site(s)" -- proves traps= is
;   purely additive and the default Hunter is untouched:
;   opt -load-pass-plugin=build/OraclePass.so \
;       -passes="oracle-pass<vacuity>" -disable-output \
;       tests/manual/traps_callee.ll
declare void @my_panic_bounds(i64, i64) noreturn

define i64 @get(ptr %a, i64 %i) {
entry:
  %ok = icmp ult i64 %i, 8
  br i1 %ok, label %cont, label %trap1

trap1:
  call void @my_panic_bounds(i64 %i, i64 8)
  unreachable

cont:
  %clamped = and i64 %i, 7
  %oob = icmp ugt i64 %clamped, 7
  br i1 %oob, label %trap2, label %ret

trap2:
  call void @my_panic_bounds(i64 %clamped, i64 8)
  unreachable

ret:
  %p = getelementptr inbounds i64, ptr %a, i64 %clamped
  %v = load i64, ptr %p
  ret i64 %v
}
