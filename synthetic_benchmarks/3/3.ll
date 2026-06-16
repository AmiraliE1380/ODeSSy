; ModuleID = 'benchmarks/3/3.c'
source_filename = "benchmarks/3/3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_loop_postcondition_float(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fcmp olt double %2, 1.000000e+03
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = fadd double %1, %0
  %8 = fcmp olt double %7, %2
  br i1 %8, label %9, label %17

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %6 ]
  %11 = phi double [ %12, %9 ], [ %0, %6 ]
  %12 = fadd double %11, 1.500000e+00
  %13 = fptosi double %12 to i32
  %14 = add nsw i32 %10, %13
  %15 = fadd double %1, %12
  %16 = fcmp olt double %15, %2
  br i1 %16, label %9, label %17, !llvm.loop !8

17:                                               ; preds = %9, %6
  %18 = phi double [ %0, %6 ], [ %12, %9 ]
  %19 = phi i32 [ 0, %6 ], [ %14, %9 ]
  %20 = fsub double %2, %18
  %21 = fadd double %1, 1.000000e-02
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = sdiv i32 100, %3
  br label %25

25:                                               ; preds = %17, %23, %4
  %26 = phi i32 [ %24, %23 ], [ %19, %17 ], [ 0, %4 ]
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %26)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
