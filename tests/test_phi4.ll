; ModuleID = 'test_phi4.c'
source_filename = "test_phi4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @test_phi4(i32 %input) {
entry:
  ; The IDom (Root of the tree)
  %cmp1 = icmp eq i32 %input, 1
  br i1 %cmp1, label %path1, label %check2

check2:
  %cmp2 = icmp eq i32 %input, 2
  br i1 %cmp2, label %path2, label %path3

path1:
  br label %merge

path2:
  br label %merge

path3:
  br label %merge

merge:
  ; 3-Way Phi! No intermediate merges.
  %val = phi i32 [ 100, %path1 ], [ 200, %path2 ], [ 300, %path3 ]
  
  ; Trap Check (val + 1000)
  %ovf_res = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val, i32 1000)
  %math = extractvalue { i32, i1 } %ovf_res, 0
  %ovf = extractvalue { i32, i1 } %ovf_res, 1
  br i1 %ovf, label %trap, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret i32 %math
}