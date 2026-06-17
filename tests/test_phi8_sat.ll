; ModuleID = 'test_phi8_sat.c'
source_filename = "test_phi8_sat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8) noreturn cold

define i32 @test_phi8_sat(i32 %x, i32 %y, i32 %z) {
entry:
  ; ================= LAYER 1 =================
  %cmp_x0 = icmp eq i32 %x, 0
  br i1 %cmp_x0, label %L1_A, label %L1_notA

L1_notA:
  %cmp_x1 = icmp eq i32 %x, 1
  br i1 %cmp_x1, label %L1_B, label %L1_C

L1_A:
  br label %L1_merge
L1_B:
  br label %L1_merge
L1_C:
  br label %L1_merge

L1_merge:
  %val1 = phi i32 [ 10, %L1_A ], [ 20, %L1_B ], [ 2147483000, %L1_C ]
  
  ; ================= LAYER 2 =================
  %cmp_y0 = icmp eq i32 %y, 0
  br i1 %cmp_y0, label %L2_A, label %L2_notA

L2_notA:
  %cmp_y1 = icmp eq i32 %y, 1
  br i1 %cmp_y1, label %L2_B, label %L2_notB

L2_notB:
  %cmp_y2 = icmp eq i32 %y, 2
  br i1 %cmp_y2, label %L2_C, label %L2_notC

L2_notC:
  %cmp_y3 = icmp eq i32 %y, 3
  br i1 %cmp_y3, label %L2_D, label %L2_E

L2_A:
  %v2a = add i32 %val1, 1
  br label %L2_merge
L2_B:
  %v2b = add i32 %val1, 2
  br label %L2_merge
L2_C:
  %v2c = add i32 %val1, 3
  br label %L2_merge
L2_D:
  %v2d = add i32 %val1, 4
  br label %L2_merge
L2_E:
  %v2e = sub i32 %val1, 2147483000
  br label %L2_merge

L2_merge:
  %val2 = phi i32 [ %v2a, %L2_A ], [ %v2b, %L2_B ], [ %v2c, %L2_C ], [ %v2d, %L2_D ], [ %v2e, %L2_E ]
  
  ; ================= LAYER 3 =================
  %cmp_z0 = icmp eq i32 %z, 0
  br i1 %cmp_z0, label %L3_A, label %L3_B

L3_A:
  %v3a = add i32 %val2, 500
  br label %L3_merge
L3_B:
  %v3b = sub i32 %val2, 1000
  br label %L3_merge

L3_merge:
  %val3 = phi i32 [ %v3a, %L3_A ], [ %v3b, %L3_B ]
  
  ; ================= TRAP CHECK =================
  %ovf_res = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val3, i32 1000)
  %math = extractvalue { i32, i1 } %ovf_res, 0
  %ovf = extractvalue { i32, i1 } %ovf_res, 1
  br i1 %ovf, label %trap, label %exit

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

exit:
  ret i32 %math
}