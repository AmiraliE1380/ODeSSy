; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/hist.ll'
source_filename = "/mydata/zstd/lib/compress/hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @HIST_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @HIST_add(ptr noundef captures(none) %0, ptr noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %6 = phi ptr [ %7, %.preheader ], [ %1, %3 ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %8 = load i8, ptr %6, align 1, !tbaa !5
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !8
  %13 = icmp ult ptr %7, %4
  br i1 %13, label %.preheader, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.preheader, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @HIST_count_simple(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %6 = load i32, ptr %1, align 4, !tbaa !8
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %9, i1 false)
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %11, label %.preheader1

11:                                               ; preds = %4
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %.loopexit

.preheader1:                                      ; preds = %4, %.preheader1
  %12 = phi ptr [ %13, %.preheader1 ], [ %2, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !8
  %19 = icmp ult ptr %13, %5
  br i1 %19, label %.preheader1, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader1, %.preheader
  %20 = phi i32 [ %25, %.preheader ], [ %6, %.preheader1 ]
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = icmp eq i32 %23, 0
  %25 = add i32 %20, -1
  br i1 %24, label %.preheader, label %26, !llvm.loop !13

26:                                               ; preds = %.preheader
  store i32 %20, ptr %1, align 4, !tbaa !8
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp ult i32 %20, 7
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = and i64 %27, 8589934584
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %41, %31 ]
  %33 = phi <4 x i32> [ zeroinitializer, %29 ], [ %39, %31 ]
  %34 = phi <4 x i32> [ zeroinitializer, %29 ], [ %40, %31 ]
  %35 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %37 = load <4 x i32>, ptr %35, align 4, !tbaa !8
  %38 = load <4 x i32>, ptr %36, align 4, !tbaa !8
  %39 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %37, <4 x i32> %33)
  %40 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %38, <4 x i32> %34)
  %41 = add nuw i64 %32, 8
  %42 = icmp eq i64 %41, %30
  br i1 %42, label %43, label %31, !llvm.loop !14

43:                                               ; preds = %31
  %44 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %39, <4 x i32> %40)
  %45 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %44)
  %46 = icmp eq i64 %27, %30
  br i1 %46, label %.loopexit, label %47

47:                                               ; preds = %43, %26
  %48 = phi i64 [ 0, %26 ], [ %30, %43 ]
  %49 = phi i32 [ 0, %26 ], [ %45, %43 ]
  %umax = tail call i64 @llvm.umax.i64(i64 %48, i64 %21)
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i64 [ %56, %50 ], [ %48, %47 ]
  %52 = phi i32 [ %55, %50 ], [ %49, %47 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %52)
  %56 = add nuw nsw i64 %51, 1
  %exitcond.not = icmp eq i64 %51, %umax
  br i1 %exitcond.not, label %.loopexit, label %50, !llvm.loop !17

.loopexit:                                        ; preds = %50, %43, %11
  %57 = phi i32 [ 0, %11 ], [ %45, %43 ], [ %55, %50 ]
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 4294967296) i64 @HIST_countFast_wksp(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
  %7 = icmp ult i64 %3, 1500
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %10 = load i32, ptr %1, align 4, !tbaa !8
  %11 = add i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %13, i1 false)
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %15, label %.preheader2

15:                                               ; preds = %8
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %69

.preheader2:                                      ; preds = %8, %.preheader2
  %16 = phi ptr [ %17, %.preheader2 ], [ %2, %8 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1, !tbaa !5
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !8
  %23 = icmp ult ptr %17, %9
  br i1 %23, label %.preheader2, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader2, %.preheader
  %24 = phi i32 [ %29, %.preheader ], [ %10, %.preheader2 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %24, -1
  br i1 %28, label %.preheader, label %30, !llvm.loop !13

30:                                               ; preds = %.preheader
  store i32 %24, ptr %1, align 4, !tbaa !8
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp ult i32 %24, 7
  br i1 %32, label %.preheader20, label %33

33:                                               ; preds = %30
  %34 = and i64 %31, 8589934584
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %45, %35 ]
  %37 = phi <4 x i32> [ zeroinitializer, %33 ], [ %43, %35 ]
  %38 = phi <4 x i32> [ zeroinitializer, %33 ], [ %44, %35 ]
  %39 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %36
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %41 = load <4 x i32>, ptr %39, align 4, !tbaa !8
  %42 = load <4 x i32>, ptr %40, align 4, !tbaa !8
  %43 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %41, <4 x i32> %37)
  %44 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %42, <4 x i32> %38)
  %45 = add nuw i64 %36, 8
  %46 = icmp eq i64 %45, %34
  br i1 %46, label %47, label %35, !llvm.loop !18

47:                                               ; preds = %35
  %48 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %43, <4 x i32> %44)
  %49 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %48)
  %50 = icmp eq i64 %31, %34
  br i1 %50, label %.loopexit, label %.preheader20

.preheader20:                                     ; preds = %47, %30
  %.ph = phi i64 [ %34, %47 ], [ 0, %30 ]
  %.ph21 = phi i32 [ %49, %47 ], [ 0, %30 ]
  br label %51

51:                                               ; preds = %.preheader20, %51
  %52 = phi i64 [ %57, %51 ], [ %.ph, %.preheader20 ]
  %53 = phi i32 [ %56, %51 ], [ %.ph21, %.preheader20 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %53)
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %52, %25
  br i1 %58, label %.loopexit, label %51, !llvm.loop !19

.loopexit:                                        ; preds = %51, %47
  %59 = phi i32 [ %49, %47 ], [ %56, %51 ]
  %60 = zext i32 %59 to i64
  br label %69

61:                                               ; preds = %6
  %62 = ptrtoint ptr %4 to i64
  %63 = and i64 %62, 3
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = icmp ult i64 %5, 4096
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %69

69:                                               ; preds = %67, %65, %61, %.loopexit, %15
  %70 = phi i64 [ %68, %67 ], [ -1, %61 ], [ -66, %65 ], [ 0, %15 ], [ %60, %.loopexit ]
  ret i64 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -48, 4294967296) i64 @HIST_count_parallel_wksp(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef captures(none) %5) unnamed_addr #1 {
  %7 = ptrtoint ptr %2 to i64
  %8 = getelementptr i8, ptr %2, i64 %3
  %9 = load i32, ptr %1, align 4, !tbaa !8
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 2048
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 3072
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %12, i1 false)
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %216

18:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  %19 = getelementptr i8, ptr %8, i64 -15
  %20 = icmp sgt i64 %3, 19
  br i1 %20, label %21, label %.loopexit5

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = load i32, ptr %2, align 1, !tbaa !8
  br label %45

.loopexit5:                                       ; preds = %45, %18
  %24 = phi ptr [ %2, %18 ], [ %98, %45 ]
  %25 = icmp ult ptr %24, %8
  br i1 %25, label %26, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.preheader, %.loopexit4, %.loopexit5
  br label %.loopexit

26:                                               ; preds = %.loopexit5
  %27 = ptrtoint ptr %24 to i64
  %28 = add i64 %3, %7
  %29 = sub i64 %28, %27
  %30 = and i64 %29, 3
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit4, label %.preheader3

.preheader3:                                      ; preds = %26, %.preheader3
  %32 = phi ptr [ %34, %.preheader3 ], [ %24, %26 ]
  %33 = phi i64 [ %40, %.preheader3 ], [ 0, %26 ]
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %35 = load i8, ptr %32, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !8
  %40 = add nuw nsw i64 %33, 1
  %41 = icmp eq i64 %40, %30
  br i1 %41, label %.loopexit4, label %.preheader3, !llvm.loop !20

.loopexit4:                                       ; preds = %.preheader3, %26
  %42 = phi ptr [ %24, %26 ], [ %34, %.preheader3 ]
  %43 = sub i64 %27, %28
  %44 = icmp ugt i64 %43, -4
  br i1 %44, label %.loopexit.preheader, label %.preheader

45:                                               ; preds = %45, %21
  %46 = phi ptr [ %144, %45 ], [ %22, %21 ]
  %47 = phi i32 [ %121, %45 ], [ %23, %21 ]
  %48 = phi ptr [ %98, %45 ], [ %2, %21 ]
  %49 = load i32, ptr %46, align 1, !tbaa !8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %51 = and i32 %47, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4, !tbaa !8
  %56 = lshr i32 %47, 8
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !8
  %62 = lshr i32 %47, 16
  %63 = and i32 %62, 255
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !8
  %68 = lshr i32 %47, 24
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4, !tbaa !8
  %73 = load i32, ptr %50, align 1, !tbaa !8
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 12
  %75 = and i32 %49, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4, !tbaa !8
  %80 = lshr i32 %49, 8
  %81 = and i32 %80, 255
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !8
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !8
  %86 = lshr i32 %49, 16
  %87 = and i32 %86, 255
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 4, !tbaa !8
  %92 = lshr i32 %49, 24
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4, !tbaa !8
  %97 = load i32, ptr %74, align 1, !tbaa !8
  %98 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %99 = and i32 %73, 255
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !8
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !8
  %104 = lshr i32 %73, 8
  %105 = and i32 %104, 255
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !8
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4, !tbaa !8
  %110 = lshr i32 %73, 16
  %111 = and i32 %110, 255
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !8
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4, !tbaa !8
  %116 = lshr i32 %73, 24
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !8
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !8
  %121 = load i32, ptr %98, align 1, !tbaa !8
  %122 = and i32 %97, 255
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !8
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4, !tbaa !8
  %127 = lshr i32 %97, 8
  %128 = and i32 %127, 255
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !8
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4, !tbaa !8
  %133 = lshr i32 %97, 16
  %134 = and i32 %133, 255
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !8
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4, !tbaa !8
  %139 = lshr i32 %97, 24
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !8
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !8
  %144 = getelementptr inbounds nuw i8, ptr %48, i64 20
  %145 = icmp ult ptr %144, %19
  br i1 %145, label %45, label %.loopexit5, !llvm.loop !22

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  %146 = phi i64 [ %173, %.loopexit ], [ 0, %.loopexit.preheader ]
  %147 = phi <4 x i32> [ %171, %.loopexit ], [ zeroinitializer, %.loopexit.preheader ]
  %148 = phi <4 x i32> [ %172, %.loopexit ], [ zeroinitializer, %.loopexit.preheader ]
  %149 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %146
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 16
  %151 = load <4 x i32>, ptr %149, align 4, !tbaa !8
  %152 = load <4 x i32>, ptr %150, align 4, !tbaa !8
  %153 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %146
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 16
  %155 = load <4 x i32>, ptr %153, align 4, !tbaa !8
  %156 = load <4 x i32>, ptr %154, align 4, !tbaa !8
  %157 = add <4 x i32> %155, %151
  %158 = add <4 x i32> %156, %152
  %159 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %146
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %161 = load <4 x i32>, ptr %159, align 4, !tbaa !8
  %162 = load <4 x i32>, ptr %160, align 4, !tbaa !8
  %163 = add <4 x i32> %157, %161
  %164 = add <4 x i32> %158, %162
  %165 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %146
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 16
  %167 = load <4 x i32>, ptr %165, align 4, !tbaa !8
  %168 = load <4 x i32>, ptr %166, align 4, !tbaa !8
  %169 = add <4 x i32> %163, %167
  %170 = add <4 x i32> %164, %168
  store <4 x i32> %169, ptr %165, align 4, !tbaa !8
  store <4 x i32> %170, ptr %166, align 4, !tbaa !8
  %171 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %169, <4 x i32> %147)
  %172 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %170, <4 x i32> %148)
  %173 = add nuw nsw i64 %146, 8
  %174 = icmp eq i64 %173, 256
  br i1 %174, label %.preheader25, label %.loopexit, !llvm.loop !23

.preheader:                                       ; preds = %.loopexit4, %.preheader
  %175 = phi ptr [ %194, %.preheader ], [ %42, %.loopexit4 ]
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %177 = load i8, ptr %175, align 1, !tbaa !5
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 4, !tbaa !8
  %182 = getelementptr inbounds nuw i8, ptr %175, i64 2
  %183 = load i8, ptr %176, align 1, !tbaa !5
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !8
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !8
  %188 = getelementptr inbounds nuw i8, ptr %175, i64 3
  %189 = load i8, ptr %182, align 1, !tbaa !5
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !8
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 4, !tbaa !8
  %194 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %195 = load i8, ptr %188, align 1, !tbaa !5
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !8
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4, !tbaa !8
  %200 = icmp ult ptr %194, %8
  br i1 %200, label %.preheader, label %.loopexit.preheader, !llvm.loop !24

.preheader25:                                     ; preds = %.loopexit, %.preheader25
  %201 = phi i32 [ %206, %.preheader25 ], [ 255, %.loopexit ]
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !8
  %205 = icmp eq i32 %204, 0
  %206 = add i32 %201, -1
  br i1 %205, label %.preheader25, label %207, !llvm.loop !25

207:                                              ; preds = %.preheader25
  %208 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %171, <4 x i32> %172)
  %209 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %208)
  %210 = icmp eq i32 %4, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %1, align 4, !tbaa !8
  %213 = icmp ugt i32 %201, %212
  br i1 %213, label %216, label %214

214:                                              ; preds = %211, %207
  store i32 %201, ptr %1, align 4, !tbaa !8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %5, i64 %12, i1 false)
  %215 = zext i32 %209 to i64
  br label %216

216:                                              ; preds = %214, %211, %17
  %217 = phi i64 [ 0, %17 ], [ %215, %214 ], [ -48, %211 ]
  ret i64 %217
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 4294967296) i64 @HIST_count_wksp(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
  %7 = ptrtoint ptr %4 to i64
  %8 = and i64 %7, 3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %6
  %11 = icmp ult i64 %5, 4096
  br i1 %11, label %70, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4, !tbaa !8
  %14 = icmp ult i32 %13, 255
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %70

17:                                               ; preds = %12
  store i32 255, ptr %1, align 4, !tbaa !8
  %18 = icmp ult i64 %3, 1500
  br i1 %18, label %19, label %68

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %21 = icmp eq i64 %3, 0
  br i1 %21, label %22, label %.preheader2

22:                                               ; preds = %19
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %70

.preheader2:                                      ; preds = %19, %.preheader2
  %23 = phi ptr [ %24, %.preheader2 ], [ %2, %19 ]
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %25 = load i8, ptr %23, align 1, !tbaa !5
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !8
  %30 = icmp ult ptr %24, %20
  br i1 %30, label %.preheader2, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader2, %.preheader
  %31 = phi i32 [ %36, %.preheader ], [ 255, %.preheader2 ]
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %35 = icmp eq i32 %34, 0
  %36 = add i32 %31, -1
  br i1 %35, label %.preheader, label %37, !llvm.loop !13

37:                                               ; preds = %.preheader
  store i32 %31, ptr %1, align 4, !tbaa !8
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp ult i32 %31, 7
  br i1 %39, label %.preheader20, label %40

40:                                               ; preds = %37
  %41 = and i64 %38, 8589934584
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 0, %40 ], [ %52, %42 ]
  %44 = phi <4 x i32> [ zeroinitializer, %40 ], [ %50, %42 ]
  %45 = phi <4 x i32> [ zeroinitializer, %40 ], [ %51, %42 ]
  %46 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %43
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %48 = load <4 x i32>, ptr %46, align 4, !tbaa !8
  %49 = load <4 x i32>, ptr %47, align 4, !tbaa !8
  %50 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %48, <4 x i32> %44)
  %51 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %49, <4 x i32> %45)
  %52 = add nuw i64 %43, 8
  %53 = icmp eq i64 %52, %41
  br i1 %53, label %54, label %42, !llvm.loop !26

54:                                               ; preds = %42
  %55 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %50, <4 x i32> %51)
  %56 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %55)
  %57 = icmp eq i64 %38, %41
  br i1 %57, label %.loopexit, label %.preheader20

.preheader20:                                     ; preds = %54, %37
  %.ph = phi i64 [ %41, %54 ], [ 0, %37 ]
  %.ph21 = phi i32 [ %56, %54 ], [ 0, %37 ]
  br label %58

58:                                               ; preds = %.preheader20, %58
  %59 = phi i64 [ %64, %58 ], [ %.ph, %.preheader20 ]
  %60 = phi i32 [ %63, %58 ], [ %.ph21, %.preheader20 ]
  %61 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 %60)
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %59, %32
  br i1 %65, label %.loopexit, label %58, !llvm.loop !27

.loopexit:                                        ; preds = %58, %54
  %66 = phi i32 [ %56, %54 ], [ %63, %58 ]
  %67 = zext i32 %66 to i64
  br label %70

68:                                               ; preds = %17
  %69 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %70

70:                                               ; preds = %68, %.loopexit, %22, %15, %10, %6
  %71 = phi i64 [ %16, %15 ], [ -1, %6 ], [ -66, %10 ], [ %69, %68 ], [ 0, %22 ], [ %67, %.loopexit ]
  ret i64 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -48, 4294967296) i64 @HIST_countFast(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [1024 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = icmp ult i64 %3, 1500
  br i1 %6, label %7, label %60

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %9 = load i32, ptr %1, align 4, !tbaa !8
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %12, i1 false)
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %14, label %.preheader2

14:                                               ; preds = %7
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %62

.preheader2:                                      ; preds = %7, %.preheader2
  %15 = phi ptr [ %16, %.preheader2 ], [ %2, %7 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %17 = load i8, ptr %15, align 1, !tbaa !5
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !8
  %22 = icmp ult ptr %16, %8
  br i1 %22, label %.preheader2, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader2, %.preheader
  %23 = phi i32 [ %28, %.preheader ], [ %9, %.preheader2 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = icmp eq i32 %26, 0
  %28 = add i32 %23, -1
  br i1 %27, label %.preheader, label %29, !llvm.loop !13

29:                                               ; preds = %.preheader
  store i32 %23, ptr %1, align 4, !tbaa !8
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp ult i32 %23, 7
  br i1 %31, label %.preheader20, label %32

32:                                               ; preds = %29
  %33 = and i64 %30, 8589934584
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %44, %34 ]
  %36 = phi <4 x i32> [ zeroinitializer, %32 ], [ %42, %34 ]
  %37 = phi <4 x i32> [ zeroinitializer, %32 ], [ %43, %34 ]
  %38 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %35
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %40 = load <4 x i32>, ptr %38, align 4, !tbaa !8
  %41 = load <4 x i32>, ptr %39, align 4, !tbaa !8
  %42 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %40, <4 x i32> %36)
  %43 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %41, <4 x i32> %37)
  %44 = add nuw i64 %35, 8
  %45 = icmp eq i64 %44, %33
  br i1 %45, label %46, label %34, !llvm.loop !28

46:                                               ; preds = %34
  %47 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %42, <4 x i32> %43)
  %48 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %47)
  %49 = icmp eq i64 %30, %33
  br i1 %49, label %.loopexit, label %.preheader20

.preheader20:                                     ; preds = %46, %29
  %.ph = phi i64 [ %33, %46 ], [ 0, %29 ]
  %.ph21 = phi i32 [ %48, %46 ], [ 0, %29 ]
  br label %50

50:                                               ; preds = %.preheader20, %50
  %51 = phi i64 [ %56, %50 ], [ %.ph, %.preheader20 ]
  %52 = phi i32 [ %55, %50 ], [ %.ph21, %.preheader20 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %52)
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %51, %24
  br i1 %57, label %.loopexit, label %50, !llvm.loop !29

.loopexit:                                        ; preds = %50, %46
  %58 = phi i32 [ %48, %46 ], [ %55, %50 ]
  %59 = zext i32 %58 to i64
  br label %62

60:                                               ; preds = %4
  %61 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef nonnull %5)
  br label %62

62:                                               ; preds = %60, %.loopexit, %14
  %63 = phi i64 [ %61, %60 ], [ 0, %14 ], [ %59, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i64 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -48, 4294967296) i64 @HIST_count(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [1024 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = load i32, ptr %1, align 4, !tbaa !8
  %7 = icmp ult i32 %6, 255
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 1, ptr noundef nonnull %5)
  br label %63

10:                                               ; preds = %4
  store i32 255, ptr %1, align 4, !tbaa !8
  %11 = icmp ult i64 %3, 1500
  br i1 %11, label %12, label %61

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %15, label %.preheader2

15:                                               ; preds = %12
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %63

.preheader2:                                      ; preds = %12, %.preheader2
  %16 = phi ptr [ %17, %.preheader2 ], [ %2, %12 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1, !tbaa !5
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !8
  %23 = icmp ult ptr %17, %13
  br i1 %23, label %.preheader2, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader2, %.preheader
  %24 = phi i32 [ %29, %.preheader ], [ 255, %.preheader2 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %24, -1
  br i1 %28, label %.preheader, label %30, !llvm.loop !13

30:                                               ; preds = %.preheader
  store i32 %24, ptr %1, align 4, !tbaa !8
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp ult i32 %24, 7
  br i1 %32, label %.preheader20, label %33

33:                                               ; preds = %30
  %34 = and i64 %31, 8589934584
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %45, %35 ]
  %37 = phi <4 x i32> [ zeroinitializer, %33 ], [ %43, %35 ]
  %38 = phi <4 x i32> [ zeroinitializer, %33 ], [ %44, %35 ]
  %39 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %36
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %41 = load <4 x i32>, ptr %39, align 4, !tbaa !8
  %42 = load <4 x i32>, ptr %40, align 4, !tbaa !8
  %43 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %41, <4 x i32> %37)
  %44 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %42, <4 x i32> %38)
  %45 = add nuw i64 %36, 8
  %46 = icmp eq i64 %45, %34
  br i1 %46, label %47, label %35, !llvm.loop !30

47:                                               ; preds = %35
  %48 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %43, <4 x i32> %44)
  %49 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %48)
  %50 = icmp eq i64 %31, %34
  br i1 %50, label %.loopexit, label %.preheader20

.preheader20:                                     ; preds = %47, %30
  %.ph = phi i64 [ %34, %47 ], [ 0, %30 ]
  %.ph21 = phi i32 [ %49, %47 ], [ 0, %30 ]
  br label %51

51:                                               ; preds = %.preheader20, %51
  %52 = phi i64 [ %57, %51 ], [ %.ph, %.preheader20 ]
  %53 = phi i32 [ %56, %51 ], [ %.ph21, %.preheader20 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %53)
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %52, %25
  br i1 %58, label %.loopexit, label %51, !llvm.loop !31

.loopexit:                                        ; preds = %51, %47
  %59 = phi i32 [ %49, %47 ], [ %56, %51 ]
  %60 = zext i32 %59 to i64
  br label %63

61:                                               ; preds = %10
  %62 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef nonnull %5)
  br label %63

63:                                               ; preds = %61, %.loopexit, %15, %8
  %64 = phi i64 [ %9, %8 ], [ %62, %61 ], [ 0, %15 ], [ %60, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i64 %64
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11, !16, !15}
!18 = distinct !{!18, !11, !15, !16}
!19 = distinct !{!19, !11, !16, !15}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !15, !16}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11, !15, !16}
!27 = distinct !{!27, !11, !16, !15}
!28 = distinct !{!28, !11, !15, !16}
!29 = distinct !{!29, !11, !16, !15}
!30 = distinct !{!30, !11, !15, !16}
!31 = distinct !{!31, !11, !16, !15}
