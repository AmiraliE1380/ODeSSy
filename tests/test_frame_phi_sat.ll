; FRAME soundness tripwire #2, SAT under EVERY configuration forever:
; the clobber sits on only ONE of two paths between L1 and L2. L2's
; MemoryUse hangs off a MemoryPhi whose %clean arm reaches L1's
; defining access untouched and whose %dirty arm contains a MUST-alias
; store to %np itself. The §8.1 walk requires EVERY MemoryPhi arm to
; discharge; a walk that follows one arm and calls it done (or takes
; the "shortest" path) would unify the loads and delete a live check.
; If this test ever reports UNSAT, the phi recursion is broken.
declare void @llvm.ubsantrap(i8 immarg)

define void @frame_one_arm_clobber(ptr %np, i32 %i, i32 %newn, i1 %which) {
entry:
  %n1 = load i32, ptr %np, align 4
  %in = icmp ult i32 %i, %n1
  br i1 %in, label %split, label %bail

split:
  br i1 %which, label %clean, label %dirty

clean:
  br label %join

dirty:
  store i32 %newn, ptr %np, align 4
  br label %join

join:
  %n2 = load i32, ptr %np, align 4
  %oob = icmp uge i32 %i, %n2
  br i1 %oob, label %trap, label %done

trap:
  call void @llvm.ubsantrap(i8 18)
  unreachable

done:
  ret void

bail:
  ret void
}
