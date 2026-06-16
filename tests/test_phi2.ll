; ModuleID = 'test_phi2.c'
source_filename = "test_phi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @sanity_check_2(i32 %input) {
entry:
  ; DIAMOND 1
  %cmp1 = icmp slt i32 %input, 500
  br i1 %cmp1, label %if.then1, label %if.else1

if.then1:
  br label %if.end1

if.else1:
  br label %if.end1

if.end1:
  %val1 = phi i32 [ 100, %if.then1 ], [ 200, %if.else1 ]
  
  ; DIAMOND 2
  %cmp2 = icmp eq i32 %input, 1000
  br i1 %cmp2, label %if.then2, label %if.else2

if.then2:
  %val2_t = add i32 %val1, 50
  br label %if.end2

if.else2:
  %val2_f = add i32 %val1, 10
  br label %if.end2

if.end2:
  %val2 = phi i32 [ %val2_t, %if.then2 ], [ %val2_f, %if.else2 ]
  
  ; TRAP CHECK
  %ovf_res = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val2, i32 1000)
  %math = extractvalue { i32, i1 } %ovf_res, 0
  %ovf = extractvalue { i32, i1 } %ovf_res, 1
  br i1 %ovf, label %trap, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret i32 %math
}