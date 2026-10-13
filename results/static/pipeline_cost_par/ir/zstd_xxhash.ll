; ModuleID = '/mydata/zstd/lib/common/xxhash.c'
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
  br label %189

62:                                               ; preds = %55, %44
  %63 = phi i64 [ %54, %44 ], [ %1, %55 ]
  %64 = phi i32 [ %53, %44 ], [ %58, %55 ]
  %65 = phi ptr [ %42, %44 ], [ %0, %55 ]
  %66 = icmp samesign ugt i64 %63, 3
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = add nsw i64 %63, -4
  %69 = lshr i64 %68, 2
  %70 = add nuw nsw i64 %69, 1
  %71 = and i64 %70, 3
  %72 = and i64 %68, 12
  %73 = icmp eq i64 %72, 12
  br i1 %73, label %88, label %74

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %84, %74 ], [ %64, %67 ]
  %76 = phi i64 [ %85, %74 ], [ %63, %67 ]
  %77 = phi ptr [ %82, %74 ], [ %65, %67 ]
  %78 = phi i64 [ %86, %74 ], [ 0, %67 ]
  %79 = load i32, ptr %77, align 1, !tbaa !5
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %75
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %83 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = add nsw i64 %76, -4
  %86 = add i64 %78, 1
  %87 = icmp eq i64 %86, %71
  br i1 %87, label %88, label %74, !llvm.loop !11

88:                                               ; preds = %74, %67
  %89 = phi i32 [ %64, %67 ], [ %84, %74 ]
  %90 = phi i64 [ %63, %67 ], [ %85, %74 ]
  %91 = phi ptr [ %65, %67 ], [ %82, %74 ]
  %92 = phi ptr [ poison, %67 ], [ %82, %74 ]
  %93 = phi i32 [ poison, %67 ], [ %84, %74 ]
  %94 = phi i64 [ poison, %67 ], [ %85, %74 ]
  %95 = icmp ult i64 %68, 12
  br i1 %95, label %96, label %125

96:                                               ; preds = %88, %125, %62
  %97 = phi ptr [ %65, %62 ], [ %92, %88 ], [ %150, %125 ]
  %98 = phi i64 [ %63, %62 ], [ %94, %88 ], [ %153, %125 ]
  %99 = phi i32 [ %64, %62 ], [ %93, %88 ], [ %152, %125 ]
  %100 = icmp eq i64 %98, 0
  br i1 %100, label %189, label %101

101:                                              ; preds = %96
  %102 = and i64 %98, 3
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %101, %104
  %105 = phi i32 [ %115, %104 ], [ %99, %101 ]
  %106 = phi i64 [ %116, %104 ], [ %98, %101 ]
  %107 = phi ptr [ %109, %104 ], [ %97, %101 ]
  %108 = phi i64 [ %117, %104 ], [ 0, %101 ]
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %110 = load i8, ptr %107, align 1, !tbaa !13
  %111 = zext i8 %110 to i32
  %112 = mul i32 %111, 374761393
  %113 = add i32 %112, %105
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11)
  %115 = mul i32 %114, -1640531535
  %116 = add nsw i64 %106, -1
  %117 = add i64 %108, 1
  %118 = icmp eq i64 %117, %102
  br i1 %118, label %119, label %104, !llvm.loop !14

119:                                              ; preds = %104, %101
  %120 = phi i32 [ poison, %101 ], [ %115, %104 ]
  %121 = phi i32 [ %99, %101 ], [ %115, %104 ]
  %122 = phi i64 [ %98, %101 ], [ %116, %104 ]
  %123 = phi ptr [ %97, %101 ], [ %109, %104 ]
  %124 = icmp ult i64 %98, 4
  br i1 %124, label %189, label %155

125:                                              ; preds = %88, %125
  %126 = phi i32 [ %152, %125 ], [ %89, %88 ]
  %127 = phi i64 [ %153, %125 ], [ %90, %88 ]
  %128 = phi ptr [ %150, %125 ], [ %91, %88 ]
  %129 = load i32, ptr %128, align 1, !tbaa !5
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %126
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = load i32, ptr %132, align 1, !tbaa !5
  %136 = mul i32 %135, -1028477379
  %137 = add i32 %136, %134
  %138 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 17)
  %140 = mul i32 %139, 668265263
  %141 = load i32, ptr %138, align 1, !tbaa !5
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %140
  %144 = getelementptr inbounds nuw i8, ptr %128, i64 12
  %145 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %146 = mul i32 %145, 668265263
  %147 = load i32, ptr %144, align 1, !tbaa !5
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %128, i64 16
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  %153 = add nsw i64 %127, -16
  %154 = icmp ugt i64 %153, 3
  br i1 %154, label %125, label %96, !llvm.loop !15

155:                                              ; preds = %119, %155
  %156 = phi i32 [ %186, %155 ], [ %121, %119 ]
  %157 = phi i64 [ %187, %155 ], [ %122, %119 ]
  %158 = phi ptr [ %180, %155 ], [ %123, %119 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %160 = load i8, ptr %158, align 1, !tbaa !13
  %161 = zext i8 %160 to i32
  %162 = mul i32 %161, 374761393
  %163 = add i32 %162, %156
  %164 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 11)
  %165 = mul i32 %164, -1640531535
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %167 = load i8, ptr %159, align 1, !tbaa !13
  %168 = zext i8 %167 to i32
  %169 = mul i32 %168, 374761393
  %170 = add i32 %169, %165
  %171 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 11)
  %172 = mul i32 %171, -1640531535
  %173 = getelementptr inbounds nuw i8, ptr %158, i64 3
  %174 = load i8, ptr %166, align 1, !tbaa !13
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %172
  %178 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 11)
  %179 = mul i32 %178, -1640531535
  %180 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %181 = load i8, ptr %173, align 1, !tbaa !13
  %182 = zext i8 %181 to i32
  %183 = mul i32 %182, 374761393
  %184 = add i32 %183, %179
  %185 = tail call i32 @llvm.fshl.i32(i32 %184, i32 %184, i32 11)
  %186 = mul i32 %185, -1640531535
  %187 = add nsw i64 %157, -4
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %155, !llvm.loop !16

189:                                              ; preds = %119, %155, %59, %96
  %190 = phi i32 [ %99, %96 ], [ %61, %59 ], [ %120, %119 ], [ %186, %155 ]
  %191 = lshr i32 %190, 15
  %192 = xor i32 %191, %190
  %193 = mul i32 %192, -2048144777
  %194 = lshr i32 %193, 13
  %195 = xor i32 %194, %193
  %196 = mul i32 %195, -1028477379
  %197 = lshr i32 %196, 16
  %198 = xor i32 %197, %196
  ret i32 %198
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH32_freeState(ptr noundef captures(none) %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH32_copyState(ptr noundef writeonly captures(none) initializes((0, 48)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH32_reset(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 4, !tbaa !5
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4, !tbaa !5
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %9, ptr %10, align 4, !tbaa !5
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
  br label %124

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = trunc i64 %2 to i32
  %10 = load i32, ptr %0, align 4, !tbaa !17
  %11 = add i32 %10, %9
  store i32 %11, ptr %0, align 4, !tbaa !17
  %12 = icmp ugt i64 %2, 15
  %13 = icmp ugt i32 %11, 15
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !19
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = zext i32 %20 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = load i32, ptr %19, align 4, !tbaa !20
  %28 = add i32 %27, %9
  store i32 %28, ptr %19, align 4, !tbaa !20
  br label %124

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
  %38 = load i32, ptr %32, align 1, !tbaa !5
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %37
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  store i32 %42, ptr %36, align 4, !tbaa !5
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = load i32, ptr %43, align 1, !tbaa !5
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  store i32 %50, ptr %44, align 4, !tbaa !5
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = load i32, ptr %51, align 1, !tbaa !5
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  store i32 %58, ptr %52, align 4, !tbaa !5
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = load i32, ptr %59, align 1, !tbaa !5
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %61
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  store i32 %66, ptr %60, align 4, !tbaa !5
  %67 = load i32, ptr %19, align 4, !tbaa !20
  %68 = sub i32 16, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %69
  store i32 0, ptr %19, align 4, !tbaa !20
  br label %71

71:                                               ; preds = %31, %29
  %72 = phi ptr [ %70, %31 ], [ %1, %29 ]
  %73 = getelementptr inbounds i8, ptr %8, i64 -16
  %74 = icmp ugt ptr %72, %73
  br i1 %74, label %115, label %75

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

84:                                               ; preds = %75, %84
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
  br i1 %114, label %115, label %84, !llvm.loop !21

115:                                              ; preds = %84, %71
  %116 = phi ptr [ %72, %71 ], [ %113, %84 ]
  %117 = icmp ult ptr %116, %8
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %120 = ptrtoint ptr %8 to i64
  %121 = ptrtoint ptr %116 to i64
  %122 = sub i64 %120, %121
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %119, ptr nonnull readonly align 1 %116, i64 %122, i1 false)
  %123 = trunc i64 %122 to i32
  store i32 %123, ptr %19, align 4, !tbaa !20
  br label %124

124:                                              ; preds = %24, %118, %115, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_XXH32_digest(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !19
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
  %27 = load i32, ptr %0, align 4, !tbaa !17
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4, !tbaa !20
  %32 = and i32 %31, 15
  %33 = zext nneg i32 %32 to i64
  %34 = icmp samesign ugt i32 %32, 3
  br i1 %34, label %35, label %64

35:                                               ; preds = %25
  %36 = add nsw i64 %33, -4
  %37 = lshr i64 %36, 2
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 3
  %40 = and i64 %36, 12
  %41 = icmp eq i64 %40, 12
  br i1 %41, label %56, label %42

42:                                               ; preds = %35, %42
  %43 = phi i32 [ %52, %42 ], [ %28, %35 ]
  %44 = phi i64 [ %53, %42 ], [ %33, %35 ]
  %45 = phi ptr [ %50, %42 ], [ %29, %35 ]
  %46 = phi i64 [ %54, %42 ], [ 0, %35 ]
  %47 = load i32, ptr %45, align 1, !tbaa !5
  %48 = mul i32 %47, -1028477379
  %49 = add i32 %48, %43
  %50 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = add nsw i64 %44, -4
  %54 = add i64 %46, 1
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %42, !llvm.loop !22

56:                                               ; preds = %42, %35
  %57 = phi i32 [ %28, %35 ], [ %52, %42 ]
  %58 = phi i64 [ %33, %35 ], [ %53, %42 ]
  %59 = phi ptr [ %29, %35 ], [ %50, %42 ]
  %60 = phi ptr [ poison, %35 ], [ %50, %42 ]
  %61 = phi i32 [ poison, %35 ], [ %52, %42 ]
  %62 = phi i64 [ poison, %35 ], [ %53, %42 ]
  %63 = icmp ult i64 %36, 12
  br i1 %63, label %64, label %93

64:                                               ; preds = %56, %93, %25
  %65 = phi ptr [ %29, %25 ], [ %60, %56 ], [ %118, %93 ]
  %66 = phi i64 [ %33, %25 ], [ %62, %56 ], [ %121, %93 ]
  %67 = phi i32 [ %28, %25 ], [ %61, %56 ], [ %120, %93 ]
  %68 = icmp eq i64 %66, 0
  br i1 %68, label %157, label %69

69:                                               ; preds = %64
  %70 = and i64 %66, 3
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69, %72
  %73 = phi i32 [ %83, %72 ], [ %67, %69 ]
  %74 = phi i64 [ %84, %72 ], [ %66, %69 ]
  %75 = phi ptr [ %77, %72 ], [ %65, %69 ]
  %76 = phi i64 [ %85, %72 ], [ 0, %69 ]
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 1
  %78 = load i8, ptr %75, align 1, !tbaa !13
  %79 = zext i8 %78 to i32
  %80 = mul i32 %79, 374761393
  %81 = add i32 %80, %73
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 11)
  %83 = mul i32 %82, -1640531535
  %84 = add nsw i64 %74, -1
  %85 = add i64 %76, 1
  %86 = icmp eq i64 %85, %70
  br i1 %86, label %87, label %72, !llvm.loop !23

87:                                               ; preds = %72, %69
  %88 = phi i32 [ poison, %69 ], [ %83, %72 ]
  %89 = phi i32 [ %67, %69 ], [ %83, %72 ]
  %90 = phi i64 [ %66, %69 ], [ %84, %72 ]
  %91 = phi ptr [ %65, %69 ], [ %77, %72 ]
  %92 = icmp ult i64 %66, 4
  br i1 %92, label %157, label %123

93:                                               ; preds = %56, %93
  %94 = phi i32 [ %120, %93 ], [ %57, %56 ]
  %95 = phi i64 [ %121, %93 ], [ %58, %56 ]
  %96 = phi ptr [ %118, %93 ], [ %59, %56 ]
  %97 = load i32, ptr %96, align 1, !tbaa !5
  %98 = mul i32 %97, -1028477379
  %99 = add i32 %98, %94
  %100 = getelementptr inbounds nuw i8, ptr %96, i64 4
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 17)
  %102 = mul i32 %101, 668265263
  %103 = load i32, ptr %100, align 1, !tbaa !5
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  %109 = load i32, ptr %106, align 1, !tbaa !5
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %96, i64 12
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  %115 = load i32, ptr %112, align 1, !tbaa !5
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  %121 = add nsw i64 %95, -16
  %122 = icmp ugt i64 %121, 3
  br i1 %122, label %93, label %64, !llvm.loop !15

123:                                              ; preds = %87, %123
  %124 = phi i32 [ %154, %123 ], [ %89, %87 ]
  %125 = phi i64 [ %155, %123 ], [ %90, %87 ]
  %126 = phi ptr [ %148, %123 ], [ %91, %87 ]
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %128 = load i8, ptr %126, align 1, !tbaa !13
  %129 = zext i8 %128 to i32
  %130 = mul i32 %129, 374761393
  %131 = add i32 %130, %124
  %132 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 11)
  %133 = mul i32 %132, -1640531535
  %134 = getelementptr inbounds nuw i8, ptr %126, i64 2
  %135 = load i8, ptr %127, align 1, !tbaa !13
  %136 = zext i8 %135 to i32
  %137 = mul i32 %136, 374761393
  %138 = add i32 %137, %133
  %139 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 11)
  %140 = mul i32 %139, -1640531535
  %141 = getelementptr inbounds nuw i8, ptr %126, i64 3
  %142 = load i8, ptr %134, align 1, !tbaa !13
  %143 = zext i8 %142 to i32
  %144 = mul i32 %143, 374761393
  %145 = add i32 %144, %140
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 11)
  %147 = mul i32 %146, -1640531535
  %148 = getelementptr inbounds nuw i8, ptr %126, i64 4
  %149 = load i8, ptr %141, align 1, !tbaa !13
  %150 = zext i8 %149 to i32
  %151 = mul i32 %150, 374761393
  %152 = add i32 %151, %147
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 11)
  %154 = mul i32 %153, -1640531535
  %155 = add nsw i64 %125, -4
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %123, !llvm.loop !16

157:                                              ; preds = %87, %123, %64
  %158 = phi i32 [ %67, %64 ], [ %88, %87 ], [ %154, %123 ]
  %159 = lshr i32 %158, 15
  %160 = xor i32 %159, %158
  %161 = mul i32 %160, -2048144777
  %162 = lshr i32 %161, 13
  %163 = xor i32 %162, %161
  %164 = mul i32 %163, -1028477379
  %165 = lshr i32 %164, 16
  %166 = xor i32 %165, %164
  ret i32 %166
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
  %19 = load i64, ptr %14, align 1, !tbaa !24
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1, !tbaa !24
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1, !tbaa !24
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1, !tbaa !24
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44, !llvm.loop !26

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
  br label %212

81:                                               ; preds = %76, %44
  %82 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %83 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %84 = add i64 %82, %1
  %85 = and i64 %1, 31
  %86 = icmp samesign ugt i64 %85, 7
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = add nsw i64 %85, -8
  %89 = and i64 %88, 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i64, ptr %83, align 1, !tbaa !24
  %93 = mul i64 %92, -4417276706812531889
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %97 = xor i64 %95, %84
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 27)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421723037
  %101 = add nsw i64 %85, -8
  br label %102

102:                                              ; preds = %91, %87
  %103 = phi i64 [ %84, %87 ], [ %100, %91 ]
  %104 = phi ptr [ %83, %87 ], [ %96, %91 ]
  %105 = phi i64 [ %85, %87 ], [ %101, %91 ]
  %106 = phi ptr [ poison, %87 ], [ %96, %91 ]
  %107 = phi i64 [ poison, %87 ], [ %100, %91 ]
  %108 = phi i64 [ poison, %87 ], [ %101, %91 ]
  %109 = icmp ult i64 %88, 8
  br i1 %109, label %134, label %110

110:                                              ; preds = %102, %110
  %111 = phi i64 [ %131, %110 ], [ %103, %102 ]
  %112 = phi ptr [ %127, %110 ], [ %104, %102 ]
  %113 = phi i64 [ %132, %110 ], [ %105, %102 ]
  %114 = load i64, ptr %112, align 1, !tbaa !24
  %115 = mul i64 %114, -4417276706812531889
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = getelementptr inbounds nuw i8, ptr %112, i64 8
  %119 = xor i64 %117, %111
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 27)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add i64 %121, -8796714831421723037
  %123 = load i64, ptr %118, align 1, !tbaa !24
  %124 = mul i64 %123, -4417276706812531889
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 31)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %128 = xor i64 %126, %122
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 27)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add i64 %130, -8796714831421723037
  %132 = add nsw i64 %113, -16
  %133 = icmp ugt i64 %132, 7
  br i1 %133, label %110, label %134, !llvm.loop !27

134:                                              ; preds = %102, %110, %81
  %135 = phi i64 [ %85, %81 ], [ %108, %102 ], [ %132, %110 ]
  %136 = phi ptr [ %83, %81 ], [ %106, %102 ], [ %127, %110 ]
  %137 = phi i64 [ %84, %81 ], [ %107, %102 ], [ %131, %110 ]
  %138 = icmp samesign ugt i64 %135, 3
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, ptr %136, align 1, !tbaa !5
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, -7046029288634856825
  %143 = xor i64 %142, %137
  %144 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %145 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 23)
  %146 = mul i64 %145, -4417276706812531889
  %147 = add i64 %146, 1609587929392839161
  %148 = add nsw i64 %135, -4
  br label %149

149:                                              ; preds = %139, %134
  %150 = phi i64 [ %148, %139 ], [ %135, %134 ]
  %151 = phi ptr [ %144, %139 ], [ %136, %134 ]
  %152 = phi i64 [ %147, %139 ], [ %137, %134 ]
  %153 = icmp eq i64 %150, 0
  br i1 %153, label %212, label %154

154:                                              ; preds = %149
  %155 = and i64 %150, 3
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %154, %157
  %158 = phi i64 [ %168, %157 ], [ %152, %154 ]
  %159 = phi ptr [ %162, %157 ], [ %151, %154 ]
  %160 = phi i64 [ %169, %157 ], [ %150, %154 ]
  %161 = phi i64 [ %170, %157 ], [ 0, %154 ]
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 1
  %163 = load i8, ptr %159, align 1, !tbaa !13
  %164 = zext i8 %163 to i64
  %165 = mul i64 %164, 2870177450012600261
  %166 = xor i64 %165, %158
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 11)
  %168 = mul i64 %167, -7046029288634856825
  %169 = add nsw i64 %160, -1
  %170 = add i64 %161, 1
  %171 = icmp eq i64 %170, %155
  br i1 %171, label %172, label %157, !llvm.loop !28

172:                                              ; preds = %157, %154
  %173 = phi i64 [ poison, %154 ], [ %168, %157 ]
  %174 = phi i64 [ %152, %154 ], [ %168, %157 ]
  %175 = phi ptr [ %151, %154 ], [ %162, %157 ]
  %176 = phi i64 [ %150, %154 ], [ %169, %157 ]
  %177 = icmp ult i64 %150, 4
  br i1 %177, label %212, label %178

178:                                              ; preds = %172, %178
  %179 = phi i64 [ %209, %178 ], [ %174, %172 ]
  %180 = phi ptr [ %203, %178 ], [ %175, %172 ]
  %181 = phi i64 [ %210, %178 ], [ %176, %172 ]
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %183 = load i8, ptr %180, align 1, !tbaa !13
  %184 = zext i8 %183 to i64
  %185 = mul i64 %184, 2870177450012600261
  %186 = xor i64 %185, %179
  %187 = tail call i64 @llvm.fshl.i64(i64 %186, i64 %186, i64 11)
  %188 = mul i64 %187, -7046029288634856825
  %189 = getelementptr inbounds nuw i8, ptr %180, i64 2
  %190 = load i8, ptr %182, align 1, !tbaa !13
  %191 = zext i8 %190 to i64
  %192 = mul i64 %191, 2870177450012600261
  %193 = xor i64 %192, %188
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 11)
  %195 = mul i64 %194, -7046029288634856825
  %196 = getelementptr inbounds nuw i8, ptr %180, i64 3
  %197 = load i8, ptr %189, align 1, !tbaa !13
  %198 = zext i8 %197 to i64
  %199 = mul i64 %198, 2870177450012600261
  %200 = xor i64 %199, %195
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 11)
  %202 = mul i64 %201, -7046029288634856825
  %203 = getelementptr inbounds nuw i8, ptr %180, i64 4
  %204 = load i8, ptr %196, align 1, !tbaa !13
  %205 = zext i8 %204 to i64
  %206 = mul i64 %205, 2870177450012600261
  %207 = xor i64 %206, %202
  %208 = tail call i64 @llvm.fshl.i64(i64 %207, i64 %207, i64 11)
  %209 = mul i64 %208, -7046029288634856825
  %210 = add nsw i64 %181, -4
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %178, !llvm.loop !29

212:                                              ; preds = %172, %178, %78, %149
  %213 = phi i64 [ %152, %149 ], [ %79, %78 ], [ %173, %172 ], [ %209, %178 ]
  %214 = lshr i64 %213, 33
  %215 = xor i64 %214, %213
  %216 = mul i64 %215, -4417276706812531889
  %217 = lshr i64 %216, 29
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587929392839161
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #15
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH64_freeState(ptr noundef captures(none) %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH64_copyState(ptr noundef writeonly captures(none) initializes((0, 88)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull readonly align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_reset(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %5, align 8, !tbaa !24
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8, !tbaa !24
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %9, ptr %10, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_update(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %118

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = load i64, ptr %0, align 8, !tbaa !30
  %10 = add i64 %9, %2
  store i64 %10, ptr %0, align 8, !tbaa !30
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %12 = load i32, ptr %11, align 8, !tbaa !32
  %13 = zext i32 %12 to i64
  %14 = add i64 %2, %13
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %19 = trunc i64 %2 to i32
  %20 = load i32, ptr %11, align 8, !tbaa !32
  %21 = add i32 %20, %19
  store i32 %21, ptr %11, align 8, !tbaa !32
  br label %118

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
  %30 = load i64, ptr %29, align 8, !tbaa !24
  %31 = load i64, ptr %25, align 1, !tbaa !24
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %30
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  store i64 %35, ptr %29, align 8, !tbaa !24
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i64, ptr %36, align 8, !tbaa !24
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %39 = load i64, ptr %38, align 1, !tbaa !24
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %37
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %43, ptr %36, align 8, !tbaa !24
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8, !tbaa !24
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %47 = load i64, ptr %46, align 1, !tbaa !24
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, %45
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  store i64 %51, ptr %44, align 8, !tbaa !24
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load i64, ptr %52, align 8, !tbaa !24
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %55 = load i64, ptr %54, align 1, !tbaa !24
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %53
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %52, align 8, !tbaa !24
  %60 = load i32, ptr %11, align 8, !tbaa !32
  %61 = sub i32 32, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 %62
  store i32 0, ptr %11, align 8, !tbaa !32
  br label %64

64:                                               ; preds = %24, %22
  %65 = phi ptr [ %63, %24 ], [ %1, %22 ]
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = icmp ugt ptr %66, %8
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %8, i64 -32
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %74 = load i64, ptr %70, align 8, !tbaa !24
  %75 = load i64, ptr %71, align 8, !tbaa !24
  %76 = load i64, ptr %72, align 8, !tbaa !24
  %77 = load i64, ptr %73, align 8, !tbaa !24
  br label %78

78:                                               ; preds = %78, %68
  %79 = phi i64 [ %77, %68 ], [ %106, %78 ]
  %80 = phi i64 [ %76, %68 ], [ %100, %78 ]
  %81 = phi i64 [ %75, %68 ], [ %94, %78 ]
  %82 = phi i64 [ %74, %68 ], [ %88, %78 ]
  %83 = phi ptr [ %65, %68 ], [ %107, %78 ]
  %84 = load i64, ptr %83, align 1, !tbaa !24
  %85 = mul i64 %84, -4417276706812531889
  %86 = add i64 %85, %82
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  store i64 %88, ptr %70, align 8, !tbaa !24
  %89 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %90 = load i64, ptr %89, align 1, !tbaa !24
  %91 = mul i64 %90, -4417276706812531889
  %92 = add i64 %91, %81
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  store i64 %94, ptr %71, align 8, !tbaa !24
  %95 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %96 = load i64, ptr %95, align 1, !tbaa !24
  %97 = mul i64 %96, -4417276706812531889
  %98 = add i64 %97, %80
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  store i64 %100, ptr %72, align 8, !tbaa !24
  %101 = getelementptr inbounds nuw i8, ptr %83, i64 24
  %102 = load i64, ptr %101, align 1, !tbaa !24
  %103 = mul i64 %102, -4417276706812531889
  %104 = add i64 %103, %79
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  store i64 %106, ptr %73, align 8, !tbaa !24
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %108 = icmp ugt ptr %107, %69
  br i1 %108, label %109, label %78, !llvm.loop !33

109:                                              ; preds = %78, %64
  %110 = phi ptr [ %65, %64 ], [ %107, %78 ]
  %111 = icmp ult ptr %110, %8
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %114 = ptrtoint ptr %8 to i64
  %115 = ptrtoint ptr %110 to i64
  %116 = sub i64 %114, %115
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %113, ptr readonly align 1 %110, i64 %116, i1 false)
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %11, align 8, !tbaa !32
  br label %118

118:                                              ; preds = %16, %112, %109, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_XXH64_digest(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8, !tbaa !30
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !24
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !24
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !tbaa !24
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
  %46 = load i64, ptr %45, align 8, !tbaa !24
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %101

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = and i64 %55, 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i64, ptr %51, align 1, !tbaa !24
  %60 = mul i64 %59, -4417276706812531889
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %64 = xor i64 %62, %50
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 27)
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = add nsw i64 %52, -8
  br label %69

69:                                               ; preds = %58, %54
  %70 = phi i64 [ %50, %54 ], [ %67, %58 ]
  %71 = phi ptr [ %51, %54 ], [ %63, %58 ]
  %72 = phi i64 [ %52, %54 ], [ %68, %58 ]
  %73 = phi ptr [ poison, %54 ], [ %63, %58 ]
  %74 = phi i64 [ poison, %54 ], [ %67, %58 ]
  %75 = phi i64 [ poison, %54 ], [ %68, %58 ]
  %76 = icmp ult i64 %55, 8
  br i1 %76, label %101, label %77

77:                                               ; preds = %69, %77
  %78 = phi i64 [ %98, %77 ], [ %70, %69 ]
  %79 = phi ptr [ %94, %77 ], [ %71, %69 ]
  %80 = phi i64 [ %99, %77 ], [ %72, %69 ]
  %81 = load i64, ptr %79, align 1, !tbaa !24
  %82 = mul i64 %81, -4417276706812531889
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %86 = xor i64 %84, %78
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 27)
  %88 = mul i64 %87, -7046029288634856825
  %89 = add i64 %88, -8796714831421723037
  %90 = load i64, ptr %85, align 1, !tbaa !24
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %95 = xor i64 %93, %89
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = add nsw i64 %80, -16
  %100 = icmp ugt i64 %99, 7
  br i1 %100, label %77, label %101, !llvm.loop !27

101:                                              ; preds = %69, %77, %48
  %102 = phi i64 [ %52, %48 ], [ %75, %69 ], [ %99, %77 ]
  %103 = phi ptr [ %51, %48 ], [ %73, %69 ], [ %94, %77 ]
  %104 = phi i64 [ %50, %48 ], [ %74, %69 ], [ %98, %77 ]
  %105 = icmp samesign ugt i64 %102, 3
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32, ptr %103, align 1, !tbaa !5
  %108 = zext i32 %107 to i64
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %104
  %111 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %112 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 23)
  %113 = mul i64 %112, -4417276706812531889
  %114 = add i64 %113, 1609587929392839161
  %115 = add nsw i64 %102, -4
  br label %116

116:                                              ; preds = %106, %101
  %117 = phi i64 [ %115, %106 ], [ %102, %101 ]
  %118 = phi ptr [ %111, %106 ], [ %103, %101 ]
  %119 = phi i64 [ %114, %106 ], [ %104, %101 ]
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %179, label %121

121:                                              ; preds = %116
  %122 = and i64 %117, 3
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121, %124
  %125 = phi i64 [ %135, %124 ], [ %119, %121 ]
  %126 = phi ptr [ %129, %124 ], [ %118, %121 ]
  %127 = phi i64 [ %136, %124 ], [ %117, %121 ]
  %128 = phi i64 [ %137, %124 ], [ 0, %121 ]
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %130 = load i8, ptr %126, align 1, !tbaa !13
  %131 = zext i8 %130 to i64
  %132 = mul i64 %131, 2870177450012600261
  %133 = xor i64 %132, %125
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 11)
  %135 = mul i64 %134, -7046029288634856825
  %136 = add nsw i64 %127, -1
  %137 = add i64 %128, 1
  %138 = icmp eq i64 %137, %122
  br i1 %138, label %139, label %124, !llvm.loop !34

139:                                              ; preds = %124, %121
  %140 = phi i64 [ poison, %121 ], [ %135, %124 ]
  %141 = phi i64 [ %119, %121 ], [ %135, %124 ]
  %142 = phi ptr [ %118, %121 ], [ %129, %124 ]
  %143 = phi i64 [ %117, %121 ], [ %136, %124 ]
  %144 = icmp ult i64 %117, 4
  br i1 %144, label %179, label %145

145:                                              ; preds = %139, %145
  %146 = phi i64 [ %176, %145 ], [ %141, %139 ]
  %147 = phi ptr [ %170, %145 ], [ %142, %139 ]
  %148 = phi i64 [ %177, %145 ], [ %143, %139 ]
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 1
  %150 = load i8, ptr %147, align 1, !tbaa !13
  %151 = zext i8 %150 to i64
  %152 = mul i64 %151, 2870177450012600261
  %153 = xor i64 %152, %146
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 11)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds nuw i8, ptr %147, i64 2
  %157 = load i8, ptr %149, align 1, !tbaa !13
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %155
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds nuw i8, ptr %147, i64 3
  %164 = load i8, ptr %156, align 1, !tbaa !13
  %165 = zext i8 %164 to i64
  %166 = mul i64 %165, 2870177450012600261
  %167 = xor i64 %166, %162
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 11)
  %169 = mul i64 %168, -7046029288634856825
  %170 = getelementptr inbounds nuw i8, ptr %147, i64 4
  %171 = load i8, ptr %163, align 1, !tbaa !13
  %172 = zext i8 %171 to i64
  %173 = mul i64 %172, 2870177450012600261
  %174 = xor i64 %173, %169
  %175 = tail call i64 @llvm.fshl.i64(i64 %174, i64 %174, i64 11)
  %176 = mul i64 %175, -7046029288634856825
  %177 = add nsw i64 %148, -4
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %145, !llvm.loop !29

179:                                              ; preds = %139, %145, %116
  %180 = phi i64 [ %119, %116 ], [ %140, %139 ], [ %176, %145 ]
  %181 = lshr i64 %180, 33
  %182 = xor i64 %181, %180
  %183 = mul i64 %182, -4417276706812531889
  %184 = lshr i64 %183, 29
  %185 = xor i64 %184, %183
  %186 = mul i64 %185, 1609587929392839161
  %187 = lshr i64 %186, 32
  %188 = xor i64 %187, %186
  ret i64 %188
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_XXH64_canonicalFromHash(ptr noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @ZSTD_XXH64_hashFromCanonical(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1, !tbaa !24
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

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
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !6, i64 0}
!18 = !{!"XXH32_state_s", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 24, !6, i64 40, !6, i64 44}
!19 = !{!18, !6, i64 4}
!20 = !{!18, !6, i64 40}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !10}
!30 = !{!31, !25, i64 0}
!31 = !{!"XXH64_state_s", !25, i64 0, !7, i64 8, !7, i64 40, !6, i64 72, !6, i64 76, !25, i64 80}
!32 = !{!31, !6, i64 72}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !12}
