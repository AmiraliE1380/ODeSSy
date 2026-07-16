; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.zutil.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/zutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"incompatible version\00", align 1
@z_errmsg = dso_local local_unnamed_addr constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.2], align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zlibVersion() local_unnamed_addr #0 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @zlibCompileFlags() local_unnamed_addr #0 {
  ret i64 169
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @zError(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -3
  %3 = icmp ult i32 %2, -9
  %4 = sub nsw i32 2, %0
  %5 = select i1 %3, i32 9, i32 %4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x i8], ptr @z_errmsg, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  ret ptr %8
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @zcalloc(ptr noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %2), !nosanitize !11
  %5 = extractvalue { i32, i1 } %4, 1, !nosanitize !11
  br i1 %5, label %6, label %7, !prof !12, !nosanitize !11

6:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !11
  unreachable, !nosanitize !11

7:                                                ; preds = %3
  %8 = extractvalue { i32, i1 } %4, 0, !nosanitize !11
  %9 = zext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  ret ptr %10
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @zcfree(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
  tail call void @free(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nomerge noreturn nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{}
!12 = !{!"branch_weights", i32 1, i32 1048575}
