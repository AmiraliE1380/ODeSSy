; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.1.1 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #12
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #12
  br label %5

5:                                                ; preds = %26, %2
  %6 = phi i64 [ 0, %2 ], [ %27, %26 ]
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %6
  %10 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %6
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %24, %11 ]
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, 2
  %15 = sitofp i32 %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %8, double %15, double 2.000000e+00)
  %17 = fdiv double %16, 3.000000e+01
  %18 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %12
  store double %17, ptr %18, align 8, !tbaa !8
  %19 = add i32 %13, 3
  %20 = sitofp i32 %19 to double
  %21 = tail call double @llvm.fmuladd.f64(double %8, double %20, double 3.000000e+00)
  %22 = fdiv double %21, 3.000000e+01
  %23 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %12
  store double %22, ptr %23, align 8, !tbaa !8
  %24 = add nuw nsw i64 %12, 1
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %26, label %11, !llvm.loop !10

26:                                               ; preds = %11
  %27 = add nuw nsw i64 %6, 1
  %28 = icmp eq i64 %27, 30
  br i1 %28, label %29, label %5, !llvm.loop !13

29:                                               ; preds = %89, %26
  %30 = phi i32 [ %90, %89 ], [ 0, %26 ]
  br label %31

31:                                               ; preds = %58, %29
  %32 = phi i64 [ 1, %29 ], [ %34, %58 ]
  %33 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %32
  %34 = add nuw nsw i64 %32, 1
  %35 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %34
  %36 = getelementptr i8, ptr %33, i64 -240
  %37 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %32
  br label %38

38:                                               ; preds = %38, %31
  %39 = phi i64 [ 1, %31 ], [ %40, %38 ]
  %40 = add nuw nsw i64 %39, 1
  %41 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %39
  %42 = load double, ptr %41, align 8, !tbaa !8
  %43 = getelementptr i8, ptr %41, i64 -8
  %44 = load double, ptr %43, align 8, !tbaa !8
  %45 = fadd double %42, %44
  %46 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %40
  %47 = load double, ptr %46, align 8, !tbaa !8
  %48 = fadd double %45, %47
  %49 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %39
  %50 = load double, ptr %49, align 8, !tbaa !8
  %51 = fadd double %48, %50
  %52 = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %39
  %53 = load double, ptr %52, align 8, !tbaa !8
  %54 = fadd double %51, %53
  %55 = fmul double %54, 2.000000e-01
  %56 = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %39
  store double %55, ptr %56, align 8, !tbaa !8
  %57 = icmp eq i64 %40, 29
  br i1 %57, label %58, label %38, !llvm.loop !14

58:                                               ; preds = %38
  %59 = icmp eq i64 %34, 29
  br i1 %59, label %60, label %31, !llvm.loop !15

60:                                               ; preds = %87, %58
  %61 = phi i64 [ %63, %87 ], [ 1, %58 ]
  %62 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %61
  %63 = add nuw nsw i64 %61, 1
  %64 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %63
  %65 = getelementptr i8, ptr %62, i64 -240
  %66 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %61
  br label %67

67:                                               ; preds = %67, %60
  %68 = phi i64 [ 1, %60 ], [ %69, %67 ]
  %69 = add nuw nsw i64 %68, 1
  %70 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %68
  %71 = load double, ptr %70, align 8, !tbaa !8
  %72 = getelementptr i8, ptr %70, i64 -8
  %73 = load double, ptr %72, align 8, !tbaa !8
  %74 = fadd double %71, %73
  %75 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %69
  %76 = load double, ptr %75, align 8, !tbaa !8
  %77 = fadd double %74, %76
  %78 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %68
  %79 = load double, ptr %78, align 8, !tbaa !8
  %80 = fadd double %77, %79
  %81 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %68
  %82 = load double, ptr %81, align 8, !tbaa !8
  %83 = fadd double %80, %82
  %84 = fmul double %83, 2.000000e-01
  %85 = getelementptr inbounds nuw [8 x i8], ptr %66, i64 %68
  store double %84, ptr %85, align 8, !tbaa !8
  %86 = icmp eq i64 %69, 29
  br i1 %86, label %87, label %67, !llvm.loop !16

87:                                               ; preds = %67
  %88 = icmp eq i64 %63, 29
  br i1 %88, label %89, label %60, !llvm.loop !17

89:                                               ; preds = %87
  %90 = add nuw nsw i32 %30, 1
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %92, label %29, !llvm.loop !18

92:                                               ; preds = %89
  %93 = icmp sgt i32 %0, 42
  br i1 %93, label %94, label %131

94:                                               ; preds = %92
  %95 = load ptr, ptr %1, align 8, !tbaa !19
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load ptr, ptr @stderr, align 8, !tbaa !22
  %100 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %99) #13
  %101 = load ptr, ptr @stderr, align 8, !tbaa !22
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #14
  br label %103

103:                                              ; preds = %123, %98
  %104 = phi i64 [ 0, %98 ], [ %124, %123 ]
  %105 = mul nuw nsw i64 %104, 30
  %106 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %104
  br label %107

107:                                              ; preds = %116, %103
  %108 = phi i64 [ 0, %103 ], [ %121, %116 ]
  %109 = add nuw nsw i64 %108, %105
  %110 = trunc nuw nsw i64 %109 to i32
  %111 = urem i32 %110, 20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load ptr, ptr @stderr, align 8, !tbaa !22
  %115 = tail call i32 @fputc(i32 10, ptr %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load ptr, ptr @stderr, align 8, !tbaa !22
  %118 = getelementptr inbounds nuw [8 x i8], ptr %106, i64 %108
  %119 = load double, ptr %118, align 8, !tbaa !8
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.5, double noundef %119) #14
  %121 = add nuw nsw i64 %108, 1
  %122 = icmp eq i64 %121, 30
  br i1 %122, label %123, label %107, !llvm.loop !24

123:                                              ; preds = %116
  %124 = add nuw nsw i64 %104, 1
  %125 = icmp eq i64 %124, 30
  br i1 %125, label %126, label %103, !llvm.loop !25

126:                                              ; preds = %123
  %127 = load ptr, ptr @stderr, align 8, !tbaa !22
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #14
  %129 = load ptr, ptr @stderr, align 8, !tbaa !22
  %130 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %129) #13
  br label %131

131:                                              ; preds = %126, %94, %92
  tail call void @free(ptr noundef %3) #12
  tail call void @free(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #6 {
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #6 {
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #7 {
  %1 = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %2 = load double, ptr @polybench_t_start, align 8, !tbaa !8
  %3 = fsub double %1, %2
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.1, double noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #8 {
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %4), !nosanitize !26
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !26
  br i1 %6, label %7, label %8, !prof !27, !nosanitize !26

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 12) #15, !nosanitize !26
  unreachable, !nosanitize !26

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !28
  %10 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 4096, i64 noundef %9) #12
  %11 = load ptr, ptr %3, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  %13 = icmp ne i32 %10, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @stderr, align 8, !tbaa !22
  %17 = call i64 @fwrite(ptr nonnull @.str.2.4, i64 50, i64 1, ptr %16) #13
  call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nomerge noreturn nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.ident = !{!0}
!llvm.errno.tbaa = !{!1}
!llvm.module.flags = !{!5, !6, !7}

!0 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !3, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = !{}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!21, !21, i64 0}
