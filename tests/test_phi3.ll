; ModuleID = 'test_phi3.c'
source_filename = "test_phi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @complex_cfg(i32 %input, i32 %flag) {
entry:
  ; 1. The Immediate Dominator (IDom)
  %cmp_main = icmp slt i32 %input, 1000
  br i1 %cmp_main, label %intermediate.check, label %else.block

intermediate.check:
  ; 2. The Internal Split
  %cmp_flag = icmp eq i32 %flag, 1
  br i1 %cmp_flag, label %flag.true, label %flag.false

flag.true:
  br label %intermediate.merge

flag.false:
  br label %intermediate.merge

intermediate.merge:
  ; 3. THE WALL: This block has TWO predecessors (flag.true and flag.false).
  ; Our current OraclePass getSinglePredecessor() will hit this and trigger the Safe Fail.
  %val_int = phi i32 [ 300, %flag.true ], [ 400, %flag.false ]
  br label %final.merge

else.block:
  br label %final.merge

final.merge:
  ; 4. The Target Phi
  %val_final = phi i32 [ %val_int, %intermediate.merge ], [ 100, %else.block ]

  ; 5. The Trap Check (val_final + 1000)
  %ovf_res = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val_final, i32 1000)
  %math = extractvalue { i32, i1 } %ovf_res, 0
  %ovf = extractvalue { i32, i1 } %ovf_res, 1
  br i1 %ovf, label %trap, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret i32 %math
}