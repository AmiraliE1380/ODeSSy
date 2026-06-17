; ModuleID = 'test_phi6_spaghetti.c'
source_filename = "test_phi6_spaghetti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @test_phi6_spaghetti(i32 %input, i32 %flag1, i32 %flag2) {
entry:
  %cmp_main = icmp slt i32 %input, 100
  br i1 %cmp_main, label %left_side, label %right_side

left_side:
  %cmp_f1 = icmp eq i32 %flag1, 1
  br i1 %cmp_f1, label %path_A1, label %path_B

right_side:
  %cmp_f2 = icmp eq i32 %flag2, 1
  br i1 %cmp_f2, label %path_A2, label %path_C

path_A1:
  br label %merge_A

path_A2:
  br label %merge_A

merge_A:
  ; Intermediate Phi merging paths from completely different branches
  %val_A = phi i32 [ 10, %path_A1 ], [ 30, %path_A2 ]
  %val_A_add = add i32 %val_A, 5
  br label %final_merge

path_B:
  br label %final_merge

path_C:
  br label %final_merge

final_merge:
  ; Final 3-way Phi Node merging the intermediate block and the bypass blocks
  %val_final = phi i32 [ %val_A_add, %merge_A ], [ 28, %path_B ], [ 40, %path_C ]

  ; Trap Check
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