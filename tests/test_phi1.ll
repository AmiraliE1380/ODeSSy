; ModuleID = 'test_phi.c'
source_filename = "test_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Declare the required intrinsics
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @sanity_check(i32 %x) {
entry:
  ; COND: x < 1000
  %cmp = icmp slt i32 %x, 1000
  br i1 %cmp, label %if.then, label %if.else

if.then:
  ; Branch A
  br label %if.end

if.else:
  ; Branch B
  br label %if.end

if.end:
  ; The 2-Way Phi Node
  %val = phi i32 [ 500, %if.then ], [ 100, %if.else ]
  
  ; The Addition and Overflow Check
  %ovf_res = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val, i32 10)
  %math = extractvalue { i32, i1 } %ovf_res, 0
  %ovf = extractvalue { i32, i1 } %ovf_res, 1
  br i1 %ovf, label %trap, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret i32 %math
}