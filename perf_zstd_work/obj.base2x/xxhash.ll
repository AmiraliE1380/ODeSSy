; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/common/xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_XXH32(ptr noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %55

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -15
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %15 = phi i32 [ %10, %7 ], [ %23, %13 ]
  %16 = phi i32 [ %11, %7 ], [ %29, %13 ]
  %17 = phi i32 [ %2, %7 ], [ %35, %13 ]
  %18 = phi i32 [ %12, %7 ], [ %41, %13 ]
  %19 = load i32, ptr %14, align 1, !tbaa !5
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %25 = load i32, ptr %24, align 1, !tbaa !5
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %31 = load i32, ptr %30, align 1, !tbaa !5
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %17
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %37 = load i32, ptr %36, align 1, !tbaa !5
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %18
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44, !llvm.loop !9

44:                                               ; preds = %13
  %45 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 1)
  %46 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %47 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 12)
  %48 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %49 = trunc i64 %1 to i32
  %50 = add i32 %45, %49
  %51 = add i32 %50, %46
  %52 = add i32 %51, %47
  %53 = add i32 %52, %48
  %54 = and i64 %1, 15
  br label %62

55:                                               ; preds = %5
  %56 = add i32 %2, 374761393
  %57 = trunc nuw nsw i64 %1 to i32
  %58 = add i32 %56, %57
  br label %62

59:                                               ; preds = %3
  %60 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %60)
  %61 = add i32 %2, 374761393
  br label %.loopexit

62:                                               ; preds = %55, %44
  %63 = phi i64 [ %54, %44 ], [ %1, %55 ]
  %64 = phi i32 [ %53, %44 ], [ %58, %55 ]
  %65 = phi ptr [ %42, %44 ], [ %0, %55 ]
  %66 = icmp samesign ugt i64 %63, 3
  br i1 %66, label %67, label %.loopexit9

67:                                               ; preds = %62
  %68 = add nsw i64 %63, -4
  %69 = lshr i64 %68, 2
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i32 [ %79, %70 ], [ %64, %67 ]
  %72 = phi ptr [ %77, %70 ], [ %65, %67 ]
  %73 = phi i64 [ %80, %70 ], [ 0, %67 ]
  %74 = load i32, ptr %72, align 1, !tbaa !5
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %75, %71
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %79 = mul i32 %78, 668265263
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %73, %69
  br i1 %81, label %.loopexit9.loopexit, label %70, !llvm.loop !11

.loopexit9.loopexit:                              ; preds = %70
  %82 = and i64 %68, -4
  %83 = getelementptr i8, ptr %65, i64 %82
  %scevgep = getelementptr i8, ptr %83, i64 4
  %84 = and i64 %63, 3
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %62
  %85 = phi ptr [ %65, %62 ], [ %scevgep, %.loopexit9.loopexit ]
  %86 = phi i64 [ %63, %62 ], [ %84, %.loopexit9.loopexit ]
  %87 = phi i32 [ %64, %62 ], [ %79, %.loopexit9.loopexit ]
  %88 = icmp eq i64 %86, 0
  br i1 %88, label %.loopexit, label %.preheader7

.preheader7:                                      ; preds = %.loopexit9, %.preheader7
  %89 = phi i32 [ %98, %.preheader7 ], [ %87, %.loopexit9 ]
  %90 = phi ptr [ %92, %.preheader7 ], [ %85, %.loopexit9 ]
  %91 = phi i64 [ %99, %.preheader7 ], [ 0, %.loopexit9 ]
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %93 = load i8, ptr %90, align 1, !tbaa !13
  %94 = zext i8 %93 to i32
  %95 = mul i32 %94, 374761393
  %96 = add i32 %95, %89
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 11)
  %98 = mul i32 %97, -1640531535
  %99 = add nuw nsw i64 %91, 1
  %100 = icmp eq i64 %99, %86
  br i1 %100, label %.loopexit, label %.preheader7, !llvm.loop !14

.loopexit:                                        ; preds = %.preheader7, %.loopexit9, %59
  %101 = phi i32 [ %87, %.loopexit9 ], [ %61, %59 ], [ %98, %.preheader7 ]
  %102 = lshr i32 %101, 15
  %103 = xor i32 %102, %101
  %104 = mul i32 %103, -2048144777
  %105 = lshr i32 %104, 13
  %106 = xor i32 %105, %104
  %107 = mul i32 %106, -1028477379
  %108 = lshr i32 %107, 16
  %109 = xor i32 %108, %107
  ret i32 %109
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #14
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH32_freeState(ptr noundef captures(none) %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH32_copyState(ptr noundef writeonly captures(none) initializes((0, 48)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH32_reset(ptr noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = insertelement <4 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = add <4 x i32> %5, <i32 606290984, i32 -2048144777, i32 0, i32 1640531535>
  store <4 x i32> %6, ptr %3, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH32_update(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %123

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = trunc i64 %2 to i32
  %10 = load i32, ptr %0, align 4, !tbaa !15
  %11 = add i32 %10, %9
  store i32 %11, ptr %0, align 4, !tbaa !15
  %12 = icmp ugt i64 %2, 15
  %13 = icmp ugt i32 %11, 15
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4, !tbaa !17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 4, !tbaa !18
  %21 = zext i32 %20 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = load i32, ptr %19, align 4, !tbaa !18
  %28 = add i32 %27, %9
  store i32 %28, ptr %19, align 4, !tbaa !18
  br label %123

29:                                               ; preds = %7
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %21
  %34 = sub i32 16, %20
  %35 = zext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull readonly align 1 %1, i64 %35, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = load i32, ptr %32, align 4, !tbaa !5
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %37
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  store i32 %42, ptr %36, align 4, !tbaa !5
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = load i32, ptr %43, align 4, !tbaa !5
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  store i32 %50, ptr %44, align 4, !tbaa !5
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = load i32, ptr %51, align 4, !tbaa !5
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  store i32 %58, ptr %52, align 4, !tbaa !5
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = load i32, ptr %59, align 4, !tbaa !5
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %61
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  store i32 %66, ptr %60, align 4, !tbaa !5
  %67 = load i32, ptr %19, align 4, !tbaa !18
  %68 = sub i32 16, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %69
  store i32 0, ptr %19, align 4, !tbaa !18
  br label %71

71:                                               ; preds = %31, %29
  %72 = phi ptr [ %70, %31 ], [ %1, %29 ]
  %73 = getelementptr inbounds i8, ptr %8, i64 -16
  %74 = icmp ugt ptr %72, %73
  br i1 %74, label %.loopexit, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %80 = load i32, ptr %76, align 4, !tbaa !5
  %81 = load i32, ptr %77, align 4, !tbaa !5
  %82 = load i32, ptr %78, align 4, !tbaa !5
  %83 = load i32, ptr %79, align 4, !tbaa !5
  br label %84

84:                                               ; preds = %84, %75
  %85 = phi i32 [ %112, %84 ], [ %83, %75 ]
  %86 = phi i32 [ %106, %84 ], [ %82, %75 ]
  %87 = phi i32 [ %100, %84 ], [ %81, %75 ]
  %88 = phi i32 [ %94, %84 ], [ %80, %75 ]
  %89 = phi ptr [ %113, %84 ], [ %72, %75 ]
  %90 = load i32, ptr %89, align 1, !tbaa !5
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %88
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  store i32 %94, ptr %76, align 4, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %96 = load i32, ptr %95, align 1, !tbaa !5
  %97 = mul i32 %96, -2048144777
  %98 = add i32 %97, %87
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 13)
  %100 = mul i32 %99, -1640531535
  store i32 %100, ptr %77, align 4, !tbaa !5
  %101 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %102 = load i32, ptr %101, align 1, !tbaa !5
  %103 = mul i32 %102, -2048144777
  %104 = add i32 %103, %86
  %105 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 13)
  %106 = mul i32 %105, -1640531535
  store i32 %106, ptr %78, align 4, !tbaa !5
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 12
  %108 = load i32, ptr %107, align 1, !tbaa !5
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %85
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  store i32 %112, ptr %79, align 4, !tbaa !5
  %113 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %114 = icmp ugt ptr %113, %73
  br i1 %114, label %.loopexit, label %84, !llvm.loop !19

.loopexit:                                        ; preds = %84, %71
  %115 = phi ptr [ %72, %71 ], [ %113, %84 ]
  %116 = icmp ult ptr %115, %8
  br i1 %116, label %117, label %123

117:                                              ; preds = %.loopexit
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %119 = ptrtoint ptr %8 to i64
  %120 = ptrtoint ptr %115 to i64
  %121 = sub i64 %119, %120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %118, ptr nonnull readonly align 1 %115, i64 %121, i1 false)
  %122 = trunc i64 %121 to i32
  store i32 %122, ptr %19, align 4, !tbaa !18
  br label %123

123:                                              ; preds = %117, %.loopexit, %24, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_XXH32_digest(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4, !tbaa !15
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4, !tbaa !18
  %32 = and i32 %31, 15
  %33 = zext nneg i32 %32 to i64
  %34 = icmp samesign ugt i32 %32, 3
  br i1 %34, label %35, label %.thread

35:                                               ; preds = %25
  %36 = add nsw i64 %33, -4
  %37 = lshr i64 %36, 2
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ %47, %38 ], [ %28, %35 ]
  %40 = phi ptr [ %45, %38 ], [ %29, %35 ]
  %41 = phi i64 [ %48, %38 ], [ 0, %35 ]
  %42 = load i32, ptr %40, align 1, !tbaa !5
  %43 = mul i32 %42, -1028477379
  %44 = add i32 %43, %39
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = add nuw nsw i64 %41, 1
  %49 = icmp eq i64 %41, %37
  br i1 %49, label %.thread.loopexit, label %38, !llvm.loop !20

.thread.loopexit:                                 ; preds = %38
  %50 = and i64 %36, -4
  %51 = getelementptr i8, ptr %0, i64 %50
  %scevgep = getelementptr i8, ptr %51, i64 28
  %52 = and i64 %33, 3
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %25
  %53 = phi ptr [ %29, %25 ], [ %scevgep, %.thread.loopexit ]
  %54 = phi i64 [ %33, %25 ], [ %52, %.thread.loopexit ]
  %55 = phi i32 [ %28, %25 ], [ %47, %.thread.loopexit ]
  %56 = icmp eq i64 %54, 0
  br i1 %56, label %.loopexit, label %.preheader3

.preheader3:                                      ; preds = %.thread, %.preheader3
  %57 = phi i32 [ %66, %.preheader3 ], [ %55, %.thread ]
  %58 = phi ptr [ %60, %.preheader3 ], [ %53, %.thread ]
  %59 = phi i64 [ %67, %.preheader3 ], [ 0, %.thread ]
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 1
  %61 = load i8, ptr %58, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = add nuw nsw i64 %59, 1
  %68 = icmp eq i64 %67, %54
  br i1 %68, label %.loopexit, label %.preheader3, !llvm.loop !21

.loopexit:                                        ; preds = %.preheader3, %.thread
  %69 = phi i32 [ %55, %.thread ], [ %66, %.preheader3 ]
  %70 = lshr i32 %69, 15
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -2048144777
  %73 = lshr i32 %72, 13
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -1028477379
  %76 = lshr i32 %75, 16
  %77 = xor i32 %76, %75
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_XXH32_canonicalFromHash(ptr noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @ZSTD_XXH32_hashFromCanonical(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 1, !tbaa !5
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_XXH64(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %76

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -31
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %15 = phi i64 [ %10, %7 ], [ %23, %13 ]
  %16 = phi i64 [ %11, %7 ], [ %29, %13 ]
  %17 = phi i64 [ %2, %7 ], [ %35, %13 ]
  %18 = phi i64 [ %12, %7 ], [ %41, %13 ]
  %19 = load i64, ptr %14, align 1, !tbaa !22
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1, !tbaa !22
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1, !tbaa !22
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1, !tbaa !22
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44, !llvm.loop !24

44:                                               ; preds = %13
  %45 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 1)
  %46 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 7)
  %47 = add i64 %46, %45
  %48 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %49 = add i64 %47, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 18)
  %51 = add i64 %49, %50
  %52 = mul i64 %22, -2381459717836149591
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %28, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %34, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %40, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  br label %81

76:                                               ; preds = %5
  %77 = add i64 %2, 2870177450012600261
  br label %81

78:                                               ; preds = %3
  %79 = add i64 %2, 2870177450012600261
  %80 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %80)
  br label %.loopexit

81:                                               ; preds = %76, %44
  %82 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %83 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %84 = add i64 %82, %1
  %85 = and i64 %1, 31
  %86 = icmp samesign ugt i64 %85, 7
  br i1 %86, label %87, label %.loopexit10

87:                                               ; preds = %81
  %88 = add nsw i64 %85, -8
  %89 = and i64 %88, 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i64, ptr %83, align 1, !tbaa !22
  %93 = mul i64 %92, -4417276706812531889
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %97 = xor i64 %95, %84
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 27)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421723037
  br label %101

101:                                              ; preds = %91, %87
  %102 = phi i64 [ %84, %87 ], [ %100, %91 ]
  %103 = phi ptr [ %83, %87 ], [ %96, %91 ]
  %104 = phi i64 [ %85, %87 ], [ %88, %91 ]
  %105 = phi ptr [ poison, %87 ], [ %96, %91 ]
  %106 = phi i64 [ poison, %87 ], [ %100, %91 ]
  %107 = icmp samesign ult i64 %85, 16
  br i1 %107, label %.loopexit10, label %.preheader9

.preheader9:                                      ; preds = %101, %.preheader9
  %108 = phi i64 [ %128, %.preheader9 ], [ %102, %101 ]
  %109 = phi ptr [ %124, %.preheader9 ], [ %103, %101 ]
  %110 = phi i64 [ %129, %.preheader9 ], [ %104, %101 ]
  %111 = load i64, ptr %109, align 1, !tbaa !22
  %112 = mul i64 %111, -4417276706812531889
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 31)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %116 = xor i64 %114, %108
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 27)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add i64 %118, -8796714831421723037
  %120 = load i64, ptr %115, align 1, !tbaa !22
  %121 = mul i64 %120, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %125 = xor i64 %119, %123
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 27)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add i64 %127, -8796714831421723037
  %129 = add nsw i64 %110, -16
  %130 = icmp ugt i64 %129, 7
  br i1 %130, label %.preheader9, label %.loopexit10, !llvm.loop !25

.loopexit10:                                      ; preds = %.preheader9, %101, %81
  %131 = phi i64 [ %85, %81 ], [ %88, %101 ], [ %129, %.preheader9 ]
  %132 = phi ptr [ %83, %81 ], [ %105, %101 ], [ %124, %.preheader9 ]
  %133 = phi i64 [ %84, %81 ], [ %106, %101 ], [ %128, %.preheader9 ]
  %134 = icmp samesign ugt i64 %131, 3
  br i1 %134, label %135, label %145

135:                                              ; preds = %.loopexit10
  %136 = load i32, ptr %132, align 1, !tbaa !5
  %137 = zext i32 %136 to i64
  %138 = mul i64 %137, -7046029288634856825
  %139 = xor i64 %138, %133
  %140 = getelementptr inbounds nuw i8, ptr %132, i64 4
  %141 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 23)
  %142 = mul i64 %141, -4417276706812531889
  %143 = add i64 %142, 1609587929392839161
  %144 = add nsw i64 %131, -4
  br label %145

145:                                              ; preds = %135, %.loopexit10
  %146 = phi i64 [ %144, %135 ], [ %131, %.loopexit10 ]
  %147 = phi ptr [ %140, %135 ], [ %132, %.loopexit10 ]
  %148 = phi i64 [ %143, %135 ], [ %133, %.loopexit10 ]
  %149 = icmp eq i64 %146, 0
  br i1 %149, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %145, %.preheader
  %150 = phi i64 [ %159, %.preheader ], [ %148, %145 ]
  %151 = phi ptr [ %153, %.preheader ], [ %147, %145 ]
  %152 = phi i64 [ %160, %.preheader ], [ 0, %145 ]
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %154 = load i8, ptr %151, align 1, !tbaa !13
  %155 = zext i8 %154 to i64
  %156 = mul i64 %155, 2870177450012600261
  %157 = xor i64 %156, %150
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 11)
  %159 = mul i64 %158, -7046029288634856825
  %160 = add nuw i64 %152, 1
  %161 = icmp eq i64 %160, %146
  br i1 %161, label %.loopexit, label %.preheader, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader, %145, %78
  %162 = phi i64 [ %148, %145 ], [ %79, %78 ], [ %159, %.preheader ]
  %163 = lshr i64 %162, 33
  %164 = xor i64 %163, %162
  %165 = mul i64 %164, -4417276706812531889
  %166 = lshr i64 %165, 29
  %167 = xor i64 %166, %165
  %168 = mul i64 %167, 1609587929392839161
  %169 = lshr i64 %168, 32
  %170 = xor i64 %169, %168
  ret i64 %170
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #14
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH64_freeState(ptr noundef captures(none) %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH64_copyState(ptr noundef writeonly captures(none) initializes((0, 88)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull readonly align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_reset(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = insertelement <4 x i64> poison, i64 %1, i64 0
  %5 = shufflevector <4 x i64> %4, <4 x i64> poison, <4 x i32> zeroinitializer
  %6 = add <4 x i64> %5, <i64 6983438078262162902, i64 -4417276706812531889, i64 0, i64 7046029288634856825>
  store <4 x i64> %6, ptr %3, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_update(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %117

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = load i64, ptr %0, align 8, !tbaa !27
  %10 = add i64 %9, %2
  store i64 %10, ptr %0, align 8, !tbaa !27
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = zext i32 %12 to i64
  %14 = add i64 %2, %13
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %19 = trunc i64 %2 to i32
  %20 = load i32, ptr %11, align 8, !tbaa !29
  %21 = add i32 %20, %19
  store i32 %21, ptr %11, align 8, !tbaa !29
  br label %117

22:                                               ; preds = %7
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %13
  %27 = sub i32 32, %12
  %28 = zext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %28, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !22
  %31 = load i64, ptr %25, align 8, !tbaa !22
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %30
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  store i64 %35, ptr %29, align 8, !tbaa !22
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i64, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %39 = load i64, ptr %38, align 8, !tbaa !22
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %37
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %43, ptr %36, align 8, !tbaa !22
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8, !tbaa !22
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %47 = load i64, ptr %46, align 8, !tbaa !22
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, %45
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  store i64 %51, ptr %44, align 8, !tbaa !22
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load i64, ptr %52, align 8, !tbaa !22
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %55 = load i64, ptr %54, align 8, !tbaa !22
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %53
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %52, align 8, !tbaa !22
  %60 = load i32, ptr %11, align 8, !tbaa !29
  %61 = sub i32 32, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 %62
  store i32 0, ptr %11, align 8, !tbaa !29
  br label %64

64:                                               ; preds = %24, %22
  %65 = phi ptr [ %63, %24 ], [ %1, %22 ]
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = icmp ugt ptr %66, %8
  br i1 %67, label %.loopexit, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %8, i64 -32
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %74 = load i64, ptr %70, align 8, !tbaa !22
  %75 = load i64, ptr %71, align 8, !tbaa !22
  %76 = load i64, ptr %72, align 8, !tbaa !22
  %77 = load i64, ptr %73, align 8, !tbaa !22
  br label %78

78:                                               ; preds = %78, %68
  %79 = phi i64 [ %77, %68 ], [ %106, %78 ]
  %80 = phi i64 [ %76, %68 ], [ %100, %78 ]
  %81 = phi i64 [ %75, %68 ], [ %94, %78 ]
  %82 = phi i64 [ %74, %68 ], [ %88, %78 ]
  %83 = phi ptr [ %65, %68 ], [ %107, %78 ]
  %84 = load i64, ptr %83, align 1, !tbaa !22
  %85 = mul i64 %84, -4417276706812531889
  %86 = add i64 %85, %82
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  store i64 %88, ptr %70, align 8, !tbaa !22
  %89 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %90 = load i64, ptr %89, align 1, !tbaa !22
  %91 = mul i64 %90, -4417276706812531889
  %92 = add i64 %91, %81
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  store i64 %94, ptr %71, align 8, !tbaa !22
  %95 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %96 = load i64, ptr %95, align 1, !tbaa !22
  %97 = mul i64 %96, -4417276706812531889
  %98 = add i64 %97, %80
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  store i64 %100, ptr %72, align 8, !tbaa !22
  %101 = getelementptr inbounds nuw i8, ptr %83, i64 24
  %102 = load i64, ptr %101, align 1, !tbaa !22
  %103 = mul i64 %102, -4417276706812531889
  %104 = add i64 %103, %79
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  store i64 %106, ptr %73, align 8, !tbaa !22
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %108 = icmp ugt ptr %107, %69
  br i1 %108, label %.loopexit, label %78, !llvm.loop !30

.loopexit:                                        ; preds = %78, %64
  %109 = phi ptr [ %65, %64 ], [ %107, %78 ]
  %110 = icmp ult ptr %109, %8
  br i1 %110, label %111, label %117

111:                                              ; preds = %.loopexit
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %113 = ptrtoint ptr %8 to i64
  %114 = ptrtoint ptr %109 to i64
  %115 = sub i64 %113, %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr readonly align 1 %109, i64 %115, i1 false)
  %116 = trunc i64 %115 to i32
  store i32 %116, ptr %11, align 8, !tbaa !29
  br label %117

117:                                              ; preds = %111, %.loopexit, %16, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_XXH64_digest(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8, !tbaa !27
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !22
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !22
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !22
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !tbaa !22
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %19 = add i64 %15, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %13, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %17, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8, !tbaa !22
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %.loopexit7

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = and i64 %55, 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i64, ptr %51, align 1, !tbaa !22
  %60 = mul i64 %59, -4417276706812531889
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %64 = xor i64 %62, %50
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 27)
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  br label %68

68:                                               ; preds = %58, %54
  %69 = phi i64 [ %50, %54 ], [ %67, %58 ]
  %70 = phi ptr [ %51, %54 ], [ %63, %58 ]
  %71 = phi i64 [ %52, %54 ], [ %55, %58 ]
  %72 = phi ptr [ poison, %54 ], [ %63, %58 ]
  %73 = phi i64 [ poison, %54 ], [ %67, %58 ]
  %74 = icmp samesign ult i64 %52, 16
  br i1 %74, label %.loopexit7, label %.preheader6

.preheader6:                                      ; preds = %68, %.preheader6
  %75 = phi i64 [ %95, %.preheader6 ], [ %69, %68 ]
  %76 = phi ptr [ %91, %.preheader6 ], [ %70, %68 ]
  %77 = phi i64 [ %96, %.preheader6 ], [ %71, %68 ]
  %78 = load i64, ptr %76, align 1, !tbaa !22
  %79 = mul i64 %78, -4417276706812531889
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %83 = xor i64 %81, %75
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 27)
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  %87 = load i64, ptr %82, align 1, !tbaa !22
  %88 = mul i64 %87, -4417276706812531889
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 31)
  %90 = mul i64 %89, -7046029288634856825
  %91 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %92 = xor i64 %86, %90
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 27)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add i64 %94, -8796714831421723037
  %96 = add nsw i64 %77, -16
  %97 = icmp ugt i64 %96, 7
  br i1 %97, label %.preheader6, label %.loopexit7, !llvm.loop !25

.loopexit7:                                       ; preds = %.preheader6, %68, %48
  %98 = phi i64 [ %52, %48 ], [ %55, %68 ], [ %96, %.preheader6 ]
  %99 = phi ptr [ %51, %48 ], [ %72, %68 ], [ %91, %.preheader6 ]
  %100 = phi i64 [ %50, %48 ], [ %73, %68 ], [ %95, %.preheader6 ]
  %101 = icmp samesign ugt i64 %98, 3
  br i1 %101, label %102, label %112

102:                                              ; preds = %.loopexit7
  %103 = load i32, ptr %99, align 1, !tbaa !5
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %105, %100
  %107 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %108 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 23)
  %109 = mul i64 %108, -4417276706812531889
  %110 = add i64 %109, 1609587929392839161
  %111 = add nsw i64 %98, -4
  br label %112

112:                                              ; preds = %102, %.loopexit7
  %113 = phi i64 [ %111, %102 ], [ %98, %.loopexit7 ]
  %114 = phi ptr [ %107, %102 ], [ %99, %.loopexit7 ]
  %115 = phi i64 [ %110, %102 ], [ %100, %.loopexit7 ]
  %116 = icmp eq i64 %113, 0
  br i1 %116, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %112, %.preheader
  %117 = phi i64 [ %126, %.preheader ], [ %115, %112 ]
  %118 = phi ptr [ %120, %.preheader ], [ %114, %112 ]
  %119 = phi i64 [ %127, %.preheader ], [ 0, %112 ]
  %120 = getelementptr inbounds nuw i8, ptr %118, i64 1
  %121 = load i8, ptr %118, align 1, !tbaa !13
  %122 = zext i8 %121 to i64
  %123 = mul i64 %122, 2870177450012600261
  %124 = xor i64 %123, %117
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 11)
  %126 = mul i64 %125, -7046029288634856825
  %127 = add nuw i64 %119, 1
  %128 = icmp eq i64 %127, %113
  br i1 %128, label %.loopexit, label %.preheader, !llvm.loop !31

.loopexit:                                        ; preds = %.preheader, %112
  %129 = phi i64 [ %115, %112 ], [ %126, %.preheader ]
  %130 = lshr i64 %129, 33
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, -4417276706812531889
  %133 = lshr i64 %132, 29
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587929392839161
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  ret i64 %137
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_XXH64_canonicalFromHash(ptr noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @ZSTD_XXH64_hashFromCanonical(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1, !tbaa !22
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !12}
!15 = !{!16, !6, i64 0}
!16 = !{!"XXH32_state_s", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 24, !6, i64 40, !6, i64 44}
!17 = !{!16, !6, i64 4}
!18 = !{!16, !6, i64 40}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !12}
!27 = !{!28, !23, i64 0}
!28 = !{!"XXH64_state_s", !23, i64 0, !7, i64 8, !7, i64 40, !6, i64 72, !6, i64 76, !23, i64 80}
!29 = !{!28, !6, i64 72}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !12}
