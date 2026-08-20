; FRAME acceptance shape (distilled jl_gemm_base, see HANDOFF §8.2):
; the bound is loaded ONCE before the loop (L1, guard side) and RELOADED
; INSIDE the loop (L2, check side) -- cross-BB, so LDEQ's same-BB
; unification can never fire. The only intervening MemoryDef is a store
; into a DATA buffer carrying scoped alias metadata (Julia jnoalias
; style: store alias.scope = {data}, L1 noalias = {data}), so
; ScopedNoAliasAA proves the store cannot touch L1's location and the
; frame rule gives n1 == n2; then the dominating guard `i <u n1`
; contradicts the trap condition `i >=u n2`.
;   UNSAT expected once FRAME (M1) lands; EXPECTED-FAIL under today's
;   gate (run_tests.sh is not knob-aware -- same precedent as the
;   ldeq/heavy tests). L2 deliberately carries NO metadata, faithful to
;   gemm's multiversioned clone: the FRAME walk must query with L1's
;   MemoryLocation, never L2's.
; %np and %buf are PLAIN arguments (no noalias attr) on purpose: stock
; BasicAA answers MayAlias, so the ONLY discharge path is the scoped
; metadata -- the exact mechanism the gemm proof needs.
declare void @llvm.ubsantrap(i8 immarg)

define void @frame_reloaded_bound(ptr %np, ptr %buf, i32 %i, i32 %m) {
entry:
  %n1 = load i32, ptr %np, align 4, !noalias !2
  %in = icmp ult i32 %i, %n1
  br i1 %in, label %loop, label %bail

loop:
  %j = phi i32 [ 0, %entry ], [ %j1, %latch ]
  %p = getelementptr inbounds double, ptr %buf, i32 %j
  store double 0.000000e+00, ptr %p, align 8, !alias.scope !2
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

; Julia-style scope encoding: one domain, one category scope, shared
; list node used as the stores' alias.scope AND L1's noalias.
!0 = !{!"frame-test-noalias-domain"}
!1 = !{!"frame-test-data", !0}
!2 = !{!1}
