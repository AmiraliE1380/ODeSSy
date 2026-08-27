; ModuleID = '/mydata/zstd/lib/compress/hist.c'
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
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !8
  %14 = icmp ult ptr %8, %4
  br i1 %14, label %6, label %15, !llvm.loop !10

15:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @HIST_count_simple(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %6 = load i32, ptr %1, align 4, !tbaa !8
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %9, i1 false)
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %60

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %14, %12 ], [ %2, %4 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !8
  %20 = icmp ult ptr %14, %5
  br i1 %20, label %12, label %21, !llvm.loop !12

21:                                               ; preds = %12, %21
  %22 = phi i32 [ %27, %21 ], [ %6, %12 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %26 = icmp eq i32 %25, 0
  %27 = add i32 %22, -1
  br i1 %26, label %21, label %28, !llvm.loop !13

28:                                               ; preds = %21
  store i32 %22, ptr %1, align 4, !tbaa !8
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp ult i32 %22, 7
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = and i64 %29, 8589934584
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %43, %33 ]
  %35 = phi <4 x i32> [ zeroinitializer, %31 ], [ %41, %33 ]
  %36 = phi <4 x i32> [ zeroinitializer, %31 ], [ %42, %33 ]
  %37 = getelementptr inbounds nuw i32, ptr %0, i64 %34
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %39 = load <4 x i32>, ptr %37, align 4, !tbaa !8
  %40 = load <4 x i32>, ptr %38, align 4, !tbaa !8
  %41 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %39, <4 x i32> %35)
  %42 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %40, <4 x i32> %36)
  %43 = add nuw i64 %34, 8
  %44 = icmp eq i64 %43, %32
  br i1 %44, label %45, label %33, !llvm.loop !14

45:                                               ; preds = %33
  %46 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %41, <4 x i32> %42)
  %47 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %46)
  %48 = icmp eq i64 %29, %32
  br i1 %48, label %60, label %49

49:                                               ; preds = %28, %45
  %50 = phi i64 [ 0, %28 ], [ %32, %45 ]
  %51 = phi i32 [ 0, %28 ], [ %47, %45 ]
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i64 [ %58, %52 ], [ %50, %49 ]
  %54 = phi i32 [ %57, %52 ], [ %51, %49 ]
  %55 = getelementptr inbounds nuw i32, ptr %0, i64 %53
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 %54)
  %58 = add nuw nsw i64 %53, 1
  %59 = icmp samesign ult i64 %53, %23
  br i1 %59, label %52, label %60, !llvm.loop !17

60:                                               ; preds = %52, %45, %11
  %61 = phi i32 [ 0, %11 ], [ %47, %45 ], [ %57, %52 ]
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 4294967296) i64 @HIST_countFast_wksp(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
  %7 = icmp ult i64 %3, 1500
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %10 = load i32, ptr %1, align 4, !tbaa !8
  %11 = add i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %13, i1 false)
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %75

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %18, %16 ], [ %2, %8 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !8
  %24 = icmp ult ptr %18, %9
  br i1 %24, label %16, label %25, !llvm.loop !12

25:                                               ; preds = %16, %25
  %26 = phi i32 [ %31, %25 ], [ %10, %16 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds nuw i32, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %26, -1
  br i1 %30, label %25, label %32, !llvm.loop !13

32:                                               ; preds = %25
  store i32 %26, ptr %1, align 4, !tbaa !8
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp ult i32 %26, 7
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = and i64 %33, 8589934584
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i64 [ 0, %35 ], [ %47, %37 ]
  %39 = phi <4 x i32> [ zeroinitializer, %35 ], [ %45, %37 ]
  %40 = phi <4 x i32> [ zeroinitializer, %35 ], [ %46, %37 ]
  %41 = getelementptr inbounds nuw i32, ptr %0, i64 %38
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %43 = load <4 x i32>, ptr %41, align 4, !tbaa !8
  %44 = load <4 x i32>, ptr %42, align 4, !tbaa !8
  %45 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %43, <4 x i32> %39)
  %46 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %44, <4 x i32> %40)
  %47 = add nuw i64 %38, 8
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %49, label %37, !llvm.loop !18

49:                                               ; preds = %37
  %50 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %45, <4 x i32> %46)
  %51 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %50)
  %52 = icmp eq i64 %33, %36
  br i1 %52, label %64, label %53

53:                                               ; preds = %32, %49
  %54 = phi i64 [ 0, %32 ], [ %36, %49 ]
  %55 = phi i32 [ 0, %32 ], [ %51, %49 ]
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %62, %56 ], [ %54, %53 ]
  %58 = phi i32 [ %61, %56 ], [ %55, %53 ]
  %59 = getelementptr inbounds nuw i32, ptr %0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %58)
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %57, %27
  br i1 %63, label %64, label %56, !llvm.loop !19

64:                                               ; preds = %56, %49
  %65 = phi i32 [ %51, %49 ], [ %61, %56 ]
  %66 = zext i32 %65 to i64
  br label %75

67:                                               ; preds = %6
  %68 = ptrtoint ptr %4 to i64
  %69 = and i64 %68, 3
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = icmp ult i64 %5, 4096
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %75

75:                                               ; preds = %15, %64, %71, %67, %73
  %76 = phi i64 [ %74, %73 ], [ -1, %67 ], [ -66, %71 ], [ 0, %15 ], [ %66, %64 ]
  ret i64 %76
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
  br label %224

18:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  %19 = getelementptr i8, ptr %8, i64 -15
  %20 = icmp sgt i64 %3, 19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = load i32, ptr %2, align 1, !tbaa !8
  br label %48

24:                                               ; preds = %48, %18
  %25 = phi ptr [ %2, %18 ], [ %101, %48 ]
  %26 = icmp ult ptr %25, %8
  br i1 %26, label %27, label %209

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i64
  %29 = add i64 %3, %7
  %30 = sub i64 %29, %28
  %31 = and i64 %30, 3
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27, %33
  %34 = phi ptr [ %36, %33 ], [ %25, %27 ]
  %35 = phi i64 [ %42, %33 ], [ 0, %27 ]
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %37 = load i8, ptr %34, align 1, !tbaa !5
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds nuw i32, ptr %5, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !8
  %42 = add i64 %35, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %44, label %33, !llvm.loop !20

44:                                               ; preds = %33, %27
  %45 = phi ptr [ %25, %27 ], [ %36, %33 ]
  %46 = sub i64 %28, %29
  %47 = icmp ugt i64 %46, -4
  br i1 %47, label %209, label %182

48:                                               ; preds = %21, %48
  %49 = phi ptr [ %147, %48 ], [ %22, %21 ]
  %50 = phi i32 [ %124, %48 ], [ %23, %21 ]
  %51 = phi ptr [ %101, %48 ], [ %2, %21 ]
  %52 = load i32, ptr %49, align 1, !tbaa !8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %54 = and i32 %50, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw i32, ptr %5, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !8
  %59 = lshr i32 %50, 8
  %60 = and i32 %59, 255
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw i32, ptr %13, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !8
  %65 = lshr i32 %50, 16
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw i32, ptr %14, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !8
  %71 = lshr i32 %50, 24
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw i32, ptr %15, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4, !tbaa !8
  %76 = load i32, ptr %53, align 1, !tbaa !8
  %77 = getelementptr inbounds nuw i8, ptr %51, i64 12
  %78 = and i32 %52, 255
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw i32, ptr %5, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !8
  %83 = lshr i32 %52, 8
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw i32, ptr %13, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4, !tbaa !8
  %89 = lshr i32 %52, 16
  %90 = and i32 %89, 255
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw i32, ptr %14, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4, !tbaa !8
  %95 = lshr i32 %52, 24
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw i32, ptr %15, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4, !tbaa !8
  %100 = load i32, ptr %77, align 1, !tbaa !8
  %101 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %102 = and i32 %76, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw i32, ptr %5, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4, !tbaa !8
  %107 = lshr i32 %76, 8
  %108 = and i32 %107, 255
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw i32, ptr %13, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !8
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !8
  %113 = lshr i32 %76, 16
  %114 = and i32 %113, 255
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw i32, ptr %14, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4, !tbaa !8
  %119 = lshr i32 %76, 24
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds nuw i32, ptr %15, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !8
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4, !tbaa !8
  %124 = load i32, ptr %101, align 1, !tbaa !8
  %125 = and i32 %100, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw i32, ptr %5, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !8
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !8
  %130 = lshr i32 %100, 8
  %131 = and i32 %130, 255
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw i32, ptr %13, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !8
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4, !tbaa !8
  %136 = lshr i32 %100, 16
  %137 = and i32 %136, 255
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw i32, ptr %14, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4, !tbaa !8
  %142 = lshr i32 %100, 24
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw i32, ptr %15, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !8
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 4, !tbaa !8
  %147 = getelementptr inbounds nuw i8, ptr %51, i64 20
  %148 = icmp ult ptr %147, %19
  br i1 %148, label %48, label %24, !llvm.loop !22

149:                                              ; preds = %209, %149
  %150 = phi i64 [ %177, %149 ], [ 0, %209 ]
  %151 = phi <4 x i32> [ %175, %149 ], [ zeroinitializer, %209 ]
  %152 = phi <4 x i32> [ %176, %149 ], [ zeroinitializer, %209 ]
  %153 = getelementptr inbounds nuw i32, ptr %13, i64 %150
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 16
  %155 = load <4 x i32>, ptr %153, align 4, !tbaa !8
  %156 = load <4 x i32>, ptr %154, align 4, !tbaa !8
  %157 = getelementptr inbounds nuw i32, ptr %14, i64 %150
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %159 = load <4 x i32>, ptr %157, align 4, !tbaa !8
  %160 = load <4 x i32>, ptr %158, align 4, !tbaa !8
  %161 = add <4 x i32> %159, %155
  %162 = add <4 x i32> %160, %156
  %163 = getelementptr inbounds nuw i32, ptr %15, i64 %150
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %165 = load <4 x i32>, ptr %163, align 4, !tbaa !8
  %166 = load <4 x i32>, ptr %164, align 4, !tbaa !8
  %167 = add <4 x i32> %161, %165
  %168 = add <4 x i32> %162, %166
  %169 = getelementptr inbounds nuw i32, ptr %5, i64 %150
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %171 = load <4 x i32>, ptr %169, align 4, !tbaa !8
  %172 = load <4 x i32>, ptr %170, align 4, !tbaa !8
  %173 = add <4 x i32> %167, %171
  %174 = add <4 x i32> %168, %172
  store <4 x i32> %173, ptr %169, align 4, !tbaa !8
  store <4 x i32> %174, ptr %170, align 4, !tbaa !8
  %175 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %173, <4 x i32> %151)
  %176 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %174, <4 x i32> %152)
  %177 = add nuw i64 %150, 8
  %178 = icmp eq i64 %177, 256
  br i1 %178, label %179, label %149, !llvm.loop !23

179:                                              ; preds = %149
  %180 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %175, <4 x i32> %176)
  %181 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %180)
  br label %210

182:                                              ; preds = %44, %182
  %183 = phi ptr [ %202, %182 ], [ %45, %44 ]
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %185 = load i8, ptr %183, align 1, !tbaa !5
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw i32, ptr %5, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !8
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4, !tbaa !8
  %190 = getelementptr inbounds nuw i8, ptr %183, i64 2
  %191 = load i8, ptr %184, align 1, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds nuw i32, ptr %5, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !8
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 4, !tbaa !8
  %196 = getelementptr inbounds nuw i8, ptr %183, i64 3
  %197 = load i8, ptr %190, align 1, !tbaa !5
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw i32, ptr %5, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !8
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4, !tbaa !8
  %202 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %203 = load i8, ptr %196, align 1, !tbaa !5
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds nuw i32, ptr %5, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !8
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 4, !tbaa !8
  %208 = icmp ult ptr %202, %8
  br i1 %208, label %182, label %209, !llvm.loop !24

209:                                              ; preds = %44, %182, %24
  br label %149

210:                                              ; preds = %210, %179
  %211 = phi i32 [ %216, %210 ], [ 255, %179 ]
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i32, ptr %5, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !8
  %215 = icmp eq i32 %214, 0
  %216 = add i32 %211, -1
  br i1 %215, label %210, label %217, !llvm.loop !25

217:                                              ; preds = %210
  %218 = icmp eq i32 %4, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  %220 = load i32, ptr %1, align 4, !tbaa !8
  %221 = icmp ugt i32 %211, %220
  br i1 %221, label %224, label %222

222:                                              ; preds = %217, %219
  store i32 %211, ptr %1, align 4, !tbaa !8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %5, i64 %12, i1 false)
  %223 = zext i32 %181 to i64
  br label %224

224:                                              ; preds = %219, %222, %17
  %225 = phi i64 [ 0, %17 ], [ %223, %222 ], [ -48, %219 ]
  ret i64 %225
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 4294967296) i64 @HIST_count_wksp(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
  %7 = ptrtoint ptr %4 to i64
  %8 = and i64 %7, 3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %6
  %11 = icmp ult i64 %5, 4096
  br i1 %11, label %76, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4, !tbaa !8
  %14 = icmp ult i32 %13, 255
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %76

17:                                               ; preds = %12
  store i32 255, ptr %1, align 4, !tbaa !8
  %18 = icmp ult i64 %3, 1500
  br i1 %18, label %19, label %74

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %21 = icmp eq i64 %3, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %76

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %2, %19 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !5
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds nuw i32, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !8
  %31 = icmp ult ptr %25, %20
  br i1 %31, label %23, label %32, !llvm.loop !12

32:                                               ; preds = %23, %32
  %33 = phi i32 [ %38, %32 ], [ 255, %23 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = icmp eq i32 %36, 0
  %38 = add i32 %33, -1
  br i1 %37, label %32, label %39, !llvm.loop !13

39:                                               ; preds = %32
  store i32 %33, ptr %1, align 4, !tbaa !8
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp ult i32 %33, 7
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = and i64 %40, 8589934584
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %54, %44 ]
  %46 = phi <4 x i32> [ zeroinitializer, %42 ], [ %52, %44 ]
  %47 = phi <4 x i32> [ zeroinitializer, %42 ], [ %53, %44 ]
  %48 = getelementptr inbounds nuw i32, ptr %0, i64 %45
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %50 = load <4 x i32>, ptr %48, align 4, !tbaa !8
  %51 = load <4 x i32>, ptr %49, align 4, !tbaa !8
  %52 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %50, <4 x i32> %46)
  %53 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %51, <4 x i32> %47)
  %54 = add nuw i64 %45, 8
  %55 = icmp eq i64 %54, %43
  br i1 %55, label %56, label %44, !llvm.loop !26

56:                                               ; preds = %44
  %57 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %52, <4 x i32> %53)
  %58 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %57)
  %59 = icmp eq i64 %40, %43
  br i1 %59, label %71, label %60

60:                                               ; preds = %39, %56
  %61 = phi i64 [ 0, %39 ], [ %43, %56 ]
  %62 = phi i32 [ 0, %39 ], [ %58, %56 ]
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %69, %63 ], [ %61, %60 ]
  %65 = phi i32 [ %68, %63 ], [ %62, %60 ]
  %66 = getelementptr inbounds nuw i32, ptr %0, i64 %64
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %68 = tail call i32 @llvm.umax.i32(i32 %67, i32 %65)
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %64, %34
  br i1 %70, label %71, label %63, !llvm.loop !27

71:                                               ; preds = %63, %56
  %72 = phi i32 [ %58, %56 ], [ %68, %63 ]
  %73 = zext i32 %72 to i64
  br label %76

74:                                               ; preds = %17
  %75 = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %76

76:                                               ; preds = %74, %71, %22, %10, %6, %15
  %77 = phi i64 [ %16, %15 ], [ -1, %6 ], [ -66, %10 ], [ %75, %74 ], [ 0, %22 ], [ %73, %71 ]
  ret i64 %77
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -48, 4294967296) i64 @HIST_countFast(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [1024 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  %6 = icmp ult i64 %3, 1500
  br i1 %6, label %7, label %66

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %9 = load i32, ptr %1, align 4, !tbaa !8
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %12, i1 false)
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %68

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %17, %15 ], [ %2, %7 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1, !tbaa !5
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds nuw i32, ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !8
  %23 = icmp ult ptr %17, %8
  br i1 %23, label %15, label %24, !llvm.loop !12

24:                                               ; preds = %15, %24
  %25 = phi i32 [ %30, %24 ], [ %9, %15 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = icmp eq i32 %28, 0
  %30 = add i32 %25, -1
  br i1 %29, label %24, label %31, !llvm.loop !13

31:                                               ; preds = %24
  store i32 %25, ptr %1, align 4, !tbaa !8
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp ult i32 %25, 7
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = and i64 %32, 8589934584
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %46, %36 ]
  %38 = phi <4 x i32> [ zeroinitializer, %34 ], [ %44, %36 ]
  %39 = phi <4 x i32> [ zeroinitializer, %34 ], [ %45, %36 ]
  %40 = getelementptr inbounds nuw i32, ptr %0, i64 %37
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %42 = load <4 x i32>, ptr %40, align 4, !tbaa !8
  %43 = load <4 x i32>, ptr %41, align 4, !tbaa !8
  %44 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %42, <4 x i32> %38)
  %45 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %43, <4 x i32> %39)
  %46 = add nuw i64 %37, 8
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %48, label %36, !llvm.loop !28

48:                                               ; preds = %36
  %49 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %44, <4 x i32> %45)
  %50 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %49)
  %51 = icmp eq i64 %32, %35
  br i1 %51, label %63, label %52

52:                                               ; preds = %31, %48
  %53 = phi i64 [ 0, %31 ], [ %35, %48 ]
  %54 = phi i32 [ 0, %31 ], [ %50, %48 ]
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %61, %55 ], [ %53, %52 ]
  %57 = phi i32 [ %60, %55 ], [ %54, %52 ]
  %58 = getelementptr inbounds nuw i32, ptr %0, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 %57)
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %56, %26
  br i1 %62, label %63, label %55, !llvm.loop !29

63:                                               ; preds = %55, %48
  %64 = phi i32 [ %50, %48 ], [ %60, %55 ]
  %65 = zext i32 %64 to i64
  br label %68

66:                                               ; preds = %4
  %67 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef nonnull %5)
  br label %68

68:                                               ; preds = %14, %63, %66
  %69 = phi i64 [ %67, %66 ], [ 0, %14 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
  ret i64 %69
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -48, 4294967296) i64 @HIST_count(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [1024 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  %6 = load i32, ptr %1, align 4, !tbaa !8
  %7 = icmp ult i32 %6, 255
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 1, ptr noundef nonnull %5)
  br label %69

10:                                               ; preds = %4
  store i32 255, ptr %1, align 4, !tbaa !8
  %11 = icmp ult i64 %3, 1500
  br i1 %11, label %12, label %67

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %69

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %18, %16 ], [ %2, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !8
  %24 = icmp ult ptr %18, %13
  br i1 %24, label %16, label %25, !llvm.loop !12

25:                                               ; preds = %16, %25
  %26 = phi i32 [ %31, %25 ], [ 255, %16 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds nuw i32, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %26, -1
  br i1 %30, label %25, label %32, !llvm.loop !13

32:                                               ; preds = %25
  store i32 %26, ptr %1, align 4, !tbaa !8
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp ult i32 %26, 7
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = and i64 %33, 8589934584
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i64 [ 0, %35 ], [ %47, %37 ]
  %39 = phi <4 x i32> [ zeroinitializer, %35 ], [ %45, %37 ]
  %40 = phi <4 x i32> [ zeroinitializer, %35 ], [ %46, %37 ]
  %41 = getelementptr inbounds nuw i32, ptr %0, i64 %38
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %43 = load <4 x i32>, ptr %41, align 4, !tbaa !8
  %44 = load <4 x i32>, ptr %42, align 4, !tbaa !8
  %45 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %43, <4 x i32> %39)
  %46 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %44, <4 x i32> %40)
  %47 = add nuw i64 %38, 8
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %49, label %37, !llvm.loop !30

49:                                               ; preds = %37
  %50 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %45, <4 x i32> %46)
  %51 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %50)
  %52 = icmp eq i64 %33, %36
  br i1 %52, label %64, label %53

53:                                               ; preds = %32, %49
  %54 = phi i64 [ 0, %32 ], [ %36, %49 ]
  %55 = phi i32 [ 0, %32 ], [ %51, %49 ]
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %62, %56 ], [ %54, %53 ]
  %58 = phi i32 [ %61, %56 ], [ %55, %53 ]
  %59 = getelementptr inbounds nuw i32, ptr %0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %58)
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %57, %27
  br i1 %63, label %64, label %56, !llvm.loop !31

64:                                               ; preds = %56, %49
  %65 = phi i32 [ %51, %49 ], [ %61, %56 ]
  %66 = zext i32 %65 to i64
  br label %69

67:                                               ; preds = %10
  %68 = call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef nonnull %5)
  br label %69

69:                                               ; preds = %8, %15, %64, %67
  %70 = phi i64 [ %9, %8 ], [ %68, %67 ], [ 0, %15 ], [ %66, %64 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
  ret i64 %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
