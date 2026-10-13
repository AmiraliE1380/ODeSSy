; ModuleID = '/mydata/zstd/lib/common/xxhash.c'
source_filename = "/mydata/zstd/lib/common/xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ZSTD_XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %55

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %0, i64 %1
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
  %24 = getelementptr inbounds i8, ptr %14, i64 4
  %25 = load i32, ptr %24, align 1, !tbaa !5
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds i8, ptr %14, i64 8
  %31 = load i32, ptr %30, align 1, !tbaa !5
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %17
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds i8, ptr %14, i64 12
  %37 = load i32, ptr %36, align 1, !tbaa !5
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %18
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds i8, ptr %14, i64 16
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
  %57 = trunc i64 %1 to i32
  %58 = add i32 %56, %57
  br label %62

59:                                               ; preds = %3
  %60 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %60)
  %61 = add i32 %2, 374761393
  br label %188

62:                                               ; preds = %55, %44
  %63 = phi i64 [ %54, %44 ], [ %1, %55 ]
  %64 = phi i32 [ %53, %44 ], [ %58, %55 ]
  %65 = phi ptr [ %42, %44 ], [ %0, %55 ]
  %66 = icmp ugt i64 %63, 3
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = add nsw i64 %63, -4
  %69 = lshr i64 %68, 2
  %70 = add nuw nsw i64 %69, 1
  %71 = and i64 %70, 3
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %67, %73
  %74 = phi i32 [ %83, %73 ], [ %64, %67 ]
  %75 = phi i64 [ %84, %73 ], [ %63, %67 ]
  %76 = phi ptr [ %81, %73 ], [ %65, %67 ]
  %77 = phi i64 [ %85, %73 ], [ 0, %67 ]
  %78 = load i32, ptr %76, align 1, !tbaa !5
  %79 = mul i32 %78, -1028477379
  %80 = add i32 %79, %74
  %81 = getelementptr inbounds i8, ptr %76, i64 4
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17)
  %83 = mul i32 %82, 668265263
  %84 = add nsw i64 %75, -4
  %85 = add i64 %77, 1
  %86 = icmp eq i64 %85, %71
  br i1 %86, label %87, label %73, !llvm.loop !11

87:                                               ; preds = %73, %67
  %88 = phi i32 [ %64, %67 ], [ %83, %73 ]
  %89 = phi i64 [ %63, %67 ], [ %84, %73 ]
  %90 = phi ptr [ %65, %67 ], [ %81, %73 ]
  %91 = phi ptr [ undef, %67 ], [ %81, %73 ]
  %92 = phi i32 [ undef, %67 ], [ %83, %73 ]
  %93 = phi i64 [ undef, %67 ], [ %84, %73 ]
  %94 = icmp ult i64 %68, 12
  br i1 %94, label %95, label %124

95:                                               ; preds = %87, %124, %62
  %96 = phi ptr [ %65, %62 ], [ %91, %87 ], [ %149, %124 ]
  %97 = phi i64 [ %63, %62 ], [ %93, %87 ], [ %152, %124 ]
  %98 = phi i32 [ %64, %62 ], [ %92, %87 ], [ %151, %124 ]
  %99 = icmp eq i64 %97, 0
  br i1 %99, label %188, label %100

100:                                              ; preds = %95
  %101 = and i64 %97, 3
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %100, %103
  %104 = phi i32 [ %114, %103 ], [ %98, %100 ]
  %105 = phi i64 [ %115, %103 ], [ %97, %100 ]
  %106 = phi ptr [ %108, %103 ], [ %96, %100 ]
  %107 = phi i64 [ %116, %103 ], [ 0, %100 ]
  %108 = getelementptr inbounds i8, ptr %106, i64 1
  %109 = load i8, ptr %106, align 1, !tbaa !13
  %110 = zext i8 %109 to i32
  %111 = mul i32 %110, 374761393
  %112 = add i32 %111, %104
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 11)
  %114 = mul i32 %113, -1640531535
  %115 = add nsw i64 %105, -1
  %116 = add i64 %107, 1
  %117 = icmp eq i64 %116, %101
  br i1 %117, label %118, label %103, !llvm.loop !14

118:                                              ; preds = %103, %100
  %119 = phi i32 [ undef, %100 ], [ %114, %103 ]
  %120 = phi i32 [ %98, %100 ], [ %114, %103 ]
  %121 = phi i64 [ %97, %100 ], [ %115, %103 ]
  %122 = phi ptr [ %96, %100 ], [ %108, %103 ]
  %123 = icmp ult i64 %97, 4
  br i1 %123, label %188, label %154

124:                                              ; preds = %87, %124
  %125 = phi i32 [ %151, %124 ], [ %88, %87 ]
  %126 = phi i64 [ %152, %124 ], [ %89, %87 ]
  %127 = phi ptr [ %149, %124 ], [ %90, %87 ]
  %128 = load i32, ptr %127, align 1, !tbaa !5
  %129 = mul i32 %128, -1028477379
  %130 = add i32 %129, %125
  %131 = getelementptr inbounds i8, ptr %127, i64 4
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 17)
  %133 = mul i32 %132, 668265263
  %134 = load i32, ptr %131, align 1, !tbaa !5
  %135 = mul i32 %134, -1028477379
  %136 = add i32 %135, %133
  %137 = getelementptr inbounds i8, ptr %127, i64 8
  %138 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 17)
  %139 = mul i32 %138, 668265263
  %140 = load i32, ptr %137, align 1, !tbaa !5
  %141 = mul i32 %140, -1028477379
  %142 = add i32 %141, %139
  %143 = getelementptr inbounds i8, ptr %127, i64 12
  %144 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 17)
  %145 = mul i32 %144, 668265263
  %146 = load i32, ptr %143, align 1, !tbaa !5
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds i8, ptr %127, i64 16
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  %152 = add nsw i64 %126, -16
  %153 = icmp ugt i64 %152, 3
  br i1 %153, label %124, label %95, !llvm.loop !15

154:                                              ; preds = %118, %154
  %155 = phi i32 [ %185, %154 ], [ %120, %118 ]
  %156 = phi i64 [ %186, %154 ], [ %121, %118 ]
  %157 = phi ptr [ %179, %154 ], [ %122, %118 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = load i8, ptr %157, align 1, !tbaa !13
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %161, %155
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  %165 = getelementptr inbounds i8, ptr %157, i64 2
  %166 = load i8, ptr %158, align 1, !tbaa !13
  %167 = zext i8 %166 to i32
  %168 = mul i32 %167, 374761393
  %169 = add i32 %168, %164
  %170 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 11)
  %171 = mul i32 %170, -1640531535
  %172 = getelementptr inbounds i8, ptr %157, i64 3
  %173 = load i8, ptr %165, align 1, !tbaa !13
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = add i32 %175, %171
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 11)
  %178 = mul i32 %177, -1640531535
  %179 = getelementptr inbounds i8, ptr %157, i64 4
  %180 = load i8, ptr %172, align 1, !tbaa !13
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %178
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = add nsw i64 %156, -4
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %154, !llvm.loop !16

188:                                              ; preds = %118, %154, %59, %95
  %189 = phi i32 [ %98, %95 ], [ %61, %59 ], [ %119, %118 ], [ %185, %154 ]
  %190 = lshr i32 %189, 15
  %191 = xor i32 %190, %189
  %192 = mul i32 %191, -2048144777
  %193 = lshr i32 %192, 13
  %194 = xor i32 %193, %192
  %195 = mul i32 %194, -1028477379
  %196 = lshr i32 %195, 16
  %197 = xor i32 %196, %195
  ret i32 %197
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #16
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH32_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH32_copyState(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH32_reset(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !5
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 1
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 2
  store i32 %1, ptr %8, align 4, !tbaa !5
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 3
  store i32 %9, ptr %10, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH32_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %100

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 %2
  %9 = trunc i64 %2 to i32
  %10 = load i32, ptr %0, align 4, !tbaa !17
  %11 = add i32 %10, %9
  store i32 %11, ptr %0, align 4, !tbaa !17
  %12 = icmp ugt i64 %2, 15
  %13 = icmp ugt i32 %11, 15
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !19
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4, !tbaa !19
  %19 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, %2
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %2, i1 false)
  %27 = load i32, ptr %19, align 4, !tbaa !20
  %28 = add i32 %27, %9
  store i32 %28, ptr %19, align 4, !tbaa !20
  br label %100

29:                                               ; preds = %7
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds i8, ptr %32, i64 %21
  %34 = sub i32 16, %20
  %35 = zext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %1, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2
  %37 = load <4 x i32>, ptr %36, align 4, !tbaa !5
  %38 = load <4 x i32>, ptr %32, align 1, !tbaa !5
  %39 = mul <4 x i32> %38, <i32 -2048144777, i32 -2048144777, i32 -2048144777, i32 -2048144777>
  %40 = add <4 x i32> %39, %37
  %41 = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %40, <4 x i32> %40, <4 x i32> <i32 13, i32 13, i32 13, i32 13>)
  %42 = mul <4 x i32> %41, <i32 -1640531535, i32 -1640531535, i32 -1640531535, i32 -1640531535>
  store <4 x i32> %42, ptr %36, align 4, !tbaa !5
  %43 = load i32, ptr %19, align 4, !tbaa !20
  %44 = sub i32 16, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  store i32 0, ptr %19, align 4, !tbaa !20
  br label %47

47:                                               ; preds = %31, %29
  %48 = phi ptr [ %46, %31 ], [ %1, %29 ]
  %49 = getelementptr inbounds i8, ptr %8, i64 -16
  %50 = icmp ugt ptr %48, %49
  br i1 %50, label %91, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 1
  %54 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 2
  %55 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 3
  %56 = load i32, ptr %52, align 4, !tbaa !5
  %57 = load i32, ptr %53, align 4, !tbaa !5
  %58 = load i32, ptr %54, align 4, !tbaa !5
  %59 = load i32, ptr %55, align 4, !tbaa !5
  br label %60

60:                                               ; preds = %51, %60
  %61 = phi i32 [ %88, %60 ], [ %59, %51 ]
  %62 = phi i32 [ %82, %60 ], [ %58, %51 ]
  %63 = phi i32 [ %76, %60 ], [ %57, %51 ]
  %64 = phi i32 [ %70, %60 ], [ %56, %51 ]
  %65 = phi ptr [ %89, %60 ], [ %48, %51 ]
  %66 = load i32, ptr %65, align 1, !tbaa !5
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %64
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  store i32 %70, ptr %52, align 4, !tbaa !5
  %71 = getelementptr inbounds i8, ptr %65, i64 4
  %72 = load i32, ptr %71, align 1, !tbaa !5
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %63
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  store i32 %76, ptr %53, align 4, !tbaa !5
  %77 = getelementptr inbounds i8, ptr %65, i64 8
  %78 = load i32, ptr %77, align 1, !tbaa !5
  %79 = mul i32 %78, -2048144777
  %80 = add i32 %79, %62
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 13)
  %82 = mul i32 %81, -1640531535
  store i32 %82, ptr %54, align 4, !tbaa !5
  %83 = getelementptr inbounds i8, ptr %65, i64 12
  %84 = load i32, ptr %83, align 1, !tbaa !5
  %85 = mul i32 %84, -2048144777
  %86 = add i32 %85, %61
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, -1640531535
  store i32 %88, ptr %55, align 4, !tbaa !5
  %89 = getelementptr inbounds i8, ptr %65, i64 16
  %90 = icmp ugt ptr %89, %49
  br i1 %90, label %91, label %60, !llvm.loop !21

91:                                               ; preds = %60, %47
  %92 = phi ptr [ %48, %47 ], [ %89, %60 ]
  %93 = icmp ult ptr %92, %8
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 3
  %96 = ptrtoint ptr %8 to i64
  %97 = ptrtoint ptr %92 to i64
  %98 = sub i64 %96, %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %95, ptr nonnull align 1 %92, i64 %98, i1 false)
  %99 = trunc i64 %98 to i32
  store i32 %99, ptr %19, align 4, !tbaa !20
  br label %100

100:                                              ; preds = %24, %94, %91, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ZSTD_XXH32_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2
  %7 = load <4 x i32>, ptr %6, align 4, !tbaa !5
  %8 = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %7, <4 x i32> %7, <4 x i32> <i32 1, i32 7, i32 12, i32 18>)
  %9 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %8)
  br label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 2, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = add i32 %12, 374761393
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i32 [ %9, %5 ], [ %13, %10 ]
  %16 = load i32, ptr %0, align 4, !tbaa !17
  %17 = add i32 %16, %15
  %18 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.XXH32_state_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = and i32 %20, 15
  %22 = zext nneg i32 %21 to i64
  %23 = icmp ugt i32 %21, 3
  br i1 %23, label %24, label %52

24:                                               ; preds = %14
  %25 = add nsw i64 %22, -4
  %26 = lshr i64 %25, 2
  %27 = add nuw nsw i64 %26, 1
  %28 = and i64 %27, 3
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %24, %30
  %31 = phi i32 [ %40, %30 ], [ %17, %24 ]
  %32 = phi i64 [ %41, %30 ], [ %22, %24 ]
  %33 = phi ptr [ %38, %30 ], [ %18, %24 ]
  %34 = phi i64 [ %42, %30 ], [ 0, %24 ]
  %35 = load i32, ptr %33, align 1, !tbaa !5
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %31
  %38 = getelementptr inbounds i8, ptr %33, i64 4
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %40 = mul i32 %39, 668265263
  %41 = add nsw i64 %32, -4
  %42 = add i64 %34, 1
  %43 = icmp eq i64 %42, %28
  br i1 %43, label %44, label %30, !llvm.loop !22

44:                                               ; preds = %30, %24
  %45 = phi i32 [ %17, %24 ], [ %40, %30 ]
  %46 = phi i64 [ %22, %24 ], [ %41, %30 ]
  %47 = phi ptr [ %18, %24 ], [ %38, %30 ]
  %48 = phi ptr [ undef, %24 ], [ %38, %30 ]
  %49 = phi i32 [ undef, %24 ], [ %40, %30 ]
  %50 = phi i64 [ undef, %24 ], [ %41, %30 ]
  %51 = icmp ult i64 %25, 12
  br i1 %51, label %52, label %81

52:                                               ; preds = %44, %81, %14
  %53 = phi ptr [ %18, %14 ], [ %48, %44 ], [ %106, %81 ]
  %54 = phi i64 [ %22, %14 ], [ %50, %44 ], [ %109, %81 ]
  %55 = phi i32 [ %17, %14 ], [ %49, %44 ], [ %108, %81 ]
  %56 = icmp eq i64 %54, 0
  br i1 %56, label %145, label %57

57:                                               ; preds = %52
  %58 = and i64 %54, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57, %60
  %61 = phi i32 [ %71, %60 ], [ %55, %57 ]
  %62 = phi i64 [ %72, %60 ], [ %54, %57 ]
  %63 = phi ptr [ %65, %60 ], [ %53, %57 ]
  %64 = phi i64 [ %73, %60 ], [ 0, %57 ]
  %65 = getelementptr inbounds i8, ptr %63, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = mul i32 %67, 374761393
  %69 = add i32 %68, %61
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 11)
  %71 = mul i32 %70, -1640531535
  %72 = add nsw i64 %62, -1
  %73 = add i64 %64, 1
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %60, !llvm.loop !23

75:                                               ; preds = %60, %57
  %76 = phi i32 [ undef, %57 ], [ %71, %60 ]
  %77 = phi i32 [ %55, %57 ], [ %71, %60 ]
  %78 = phi i64 [ %54, %57 ], [ %72, %60 ]
  %79 = phi ptr [ %53, %57 ], [ %65, %60 ]
  %80 = icmp ult i64 %54, 4
  br i1 %80, label %145, label %111

81:                                               ; preds = %44, %81
  %82 = phi i32 [ %108, %81 ], [ %45, %44 ]
  %83 = phi i64 [ %109, %81 ], [ %46, %44 ]
  %84 = phi ptr [ %106, %81 ], [ %47, %44 ]
  %85 = load i32, ptr %84, align 1, !tbaa !5
  %86 = mul i32 %85, -1028477379
  %87 = add i32 %86, %82
  %88 = getelementptr inbounds i8, ptr %84, i64 4
  %89 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 17)
  %90 = mul i32 %89, 668265263
  %91 = load i32, ptr %88, align 1, !tbaa !5
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %90
  %94 = getelementptr inbounds i8, ptr %84, i64 8
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = load i32, ptr %94, align 1, !tbaa !5
  %98 = mul i32 %97, -1028477379
  %99 = add i32 %98, %96
  %100 = getelementptr inbounds i8, ptr %84, i64 12
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 17)
  %102 = mul i32 %101, 668265263
  %103 = load i32, ptr %100, align 1, !tbaa !5
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds i8, ptr %84, i64 16
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  %109 = add nsw i64 %83, -16
  %110 = icmp ugt i64 %109, 3
  br i1 %110, label %81, label %52, !llvm.loop !15

111:                                              ; preds = %75, %111
  %112 = phi i32 [ %142, %111 ], [ %77, %75 ]
  %113 = phi i64 [ %143, %111 ], [ %78, %75 ]
  %114 = phi ptr [ %136, %111 ], [ %79, %75 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  %116 = load i8, ptr %114, align 1, !tbaa !13
  %117 = zext i8 %116 to i32
  %118 = mul i32 %117, 374761393
  %119 = add i32 %118, %112
  %120 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 11)
  %121 = mul i32 %120, -1640531535
  %122 = getelementptr inbounds i8, ptr %114, i64 2
  %123 = load i8, ptr %115, align 1, !tbaa !13
  %124 = zext i8 %123 to i32
  %125 = mul i32 %124, 374761393
  %126 = add i32 %125, %121
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 11)
  %128 = mul i32 %127, -1640531535
  %129 = getelementptr inbounds i8, ptr %114, i64 3
  %130 = load i8, ptr %122, align 1, !tbaa !13
  %131 = zext i8 %130 to i32
  %132 = mul i32 %131, 374761393
  %133 = add i32 %132, %128
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 11)
  %135 = mul i32 %134, -1640531535
  %136 = getelementptr inbounds i8, ptr %114, i64 4
  %137 = load i8, ptr %129, align 1, !tbaa !13
  %138 = zext i8 %137 to i32
  %139 = mul i32 %138, 374761393
  %140 = add i32 %139, %135
  %141 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 11)
  %142 = mul i32 %141, -1640531535
  %143 = add nsw i64 %113, -4
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %111, !llvm.loop !16

145:                                              ; preds = %75, %111, %52
  %146 = phi i32 [ %55, %52 ], [ %76, %75 ], [ %142, %111 ]
  %147 = lshr i32 %146, 15
  %148 = xor i32 %147, %146
  %149 = mul i32 %148, -2048144777
  %150 = lshr i32 %149, 13
  %151 = xor i32 %150, %149
  %152 = mul i32 %151, -1028477379
  %153 = lshr i32 %152, 16
  %154 = xor i32 %153, %152
  ret i32 %154
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_XXH32_canonicalFromHash(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @ZSTD_XXH32_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i32, ptr %0, align 1, !tbaa !5
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_XXH64(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %76

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %0, i64 %1
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
  %24 = getelementptr inbounds i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1, !tbaa !24
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1, !tbaa !24
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1, !tbaa !24
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds i8, ptr %14, i64 32
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
  %86 = icmp ugt i64 %85, 7
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
  %96 = getelementptr inbounds i8, ptr %83, i64 8
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
  %106 = phi ptr [ undef, %87 ], [ %96, %91 ]
  %107 = phi i64 [ undef, %87 ], [ %100, %91 ]
  %108 = phi i64 [ undef, %87 ], [ %101, %91 ]
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
  %118 = getelementptr inbounds i8, ptr %112, i64 8
  %119 = xor i64 %117, %111
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 27)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add i64 %121, -8796714831421723037
  %123 = load i64, ptr %118, align 1, !tbaa !24
  %124 = mul i64 %123, -4417276706812531889
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 31)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds i8, ptr %112, i64 16
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
  %138 = icmp ugt i64 %135, 3
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, ptr %136, align 1, !tbaa !5
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, -7046029288634856825
  %143 = xor i64 %142, %137
  %144 = getelementptr inbounds i8, ptr %136, i64 4
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
  %162 = getelementptr inbounds i8, ptr %159, i64 1
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
  %173 = phi i64 [ undef, %154 ], [ %168, %157 ]
  %174 = phi i64 [ %152, %154 ], [ %168, %157 ]
  %175 = phi ptr [ %151, %154 ], [ %162, %157 ]
  %176 = phi i64 [ %150, %154 ], [ %169, %157 ]
  %177 = icmp ult i64 %150, 4
  br i1 %177, label %212, label %178

178:                                              ; preds = %172, %178
  %179 = phi i64 [ %209, %178 ], [ %174, %172 ]
  %180 = phi ptr [ %203, %178 ], [ %175, %172 ]
  %181 = phi i64 [ %210, %178 ], [ %176, %172 ]
  %182 = getelementptr inbounds i8, ptr %180, i64 1
  %183 = load i8, ptr %180, align 1, !tbaa !13
  %184 = zext i8 %183 to i64
  %185 = mul i64 %184, 2870177450012600261
  %186 = xor i64 %185, %179
  %187 = tail call i64 @llvm.fshl.i64(i64 %186, i64 %186, i64 11)
  %188 = mul i64 %187, -7046029288634856825
  %189 = getelementptr inbounds i8, ptr %180, i64 2
  %190 = load i8, ptr %182, align 1, !tbaa !13
  %191 = zext i8 %190 to i64
  %192 = mul i64 %191, 2870177450012600261
  %193 = xor i64 %192, %188
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 11)
  %195 = mul i64 %194, -7046029288634856825
  %196 = getelementptr inbounds i8, ptr %180, i64 3
  %197 = load i8, ptr %189, align 1, !tbaa !13
  %198 = zext i8 %197 to i64
  %199 = mul i64 %198, 2870177450012600261
  %200 = xor i64 %199, %195
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 11)
  %202 = mul i64 %201, -7046029288634856825
  %203 = getelementptr inbounds i8, ptr %180, i64 4
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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #16
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @ZSTD_XXH64_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_XXH64_copyState(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_reset(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1
  store i64 %4, ptr %5, align 8, !tbaa !24
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 1
  store i64 %6, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 2
  store i64 %1, ptr %8, align 8, !tbaa !24
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 3
  store i64 %9, ptr %10, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_XXH64_update(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %118

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 %2
  %9 = load i64, ptr %0, align 8, !tbaa !30
  %10 = add i64 %9, %2
  store i64 %10, ptr %0, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !32
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, %2
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds i8, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull align 1 %1, i64 %2, i1 false)
  %19 = trunc i64 %2 to i32
  %20 = load i32, ptr %11, align 8, !tbaa !32
  %21 = add i32 %20, %19
  store i32 %21, ptr %11, align 8, !tbaa !32
  br label %118

22:                                               ; preds = %7
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds i8, ptr %25, i64 %13
  %27 = sub i32 32, %12
  %28 = zext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !24
  %31 = load i64, ptr %25, align 1, !tbaa !24
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %30
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  store i64 %35, ptr %29, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 1
  %37 = load i64, ptr %36, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2, i64 1
  %39 = load i64, ptr %38, align 1, !tbaa !24
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %37
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %43, ptr %36, align 8, !tbaa !24
  %44 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 2
  %45 = load i64, ptr %44, align 8, !tbaa !24
  %46 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2, i64 2
  %47 = load i64, ptr %46, align 1, !tbaa !24
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, %45
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  store i64 %51, ptr %44, align 8, !tbaa !24
  %52 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 3
  %53 = load i64, ptr %52, align 8, !tbaa !24
  %54 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2, i64 3
  %55 = load i64, ptr %54, align 1, !tbaa !24
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %53
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %52, align 8, !tbaa !24
  %60 = load i32, ptr %11, align 8, !tbaa !32
  %61 = sub i32 32, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %1, i64 %62
  store i32 0, ptr %11, align 8, !tbaa !32
  br label %64

64:                                               ; preds = %24, %22
  %65 = phi ptr [ %63, %24 ], [ %1, %22 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 32
  %67 = icmp ugt ptr %66, %8
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %8, i64 -32
  %70 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1
  %71 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 1
  %72 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 2
  %73 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 3
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
  %89 = getelementptr inbounds i8, ptr %83, i64 8
  %90 = load i64, ptr %89, align 1, !tbaa !24
  %91 = mul i64 %90, -4417276706812531889
  %92 = add i64 %91, %81
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  store i64 %94, ptr %71, align 8, !tbaa !24
  %95 = getelementptr inbounds i8, ptr %83, i64 16
  %96 = load i64, ptr %95, align 1, !tbaa !24
  %97 = mul i64 %96, -4417276706812531889
  %98 = add i64 %97, %80
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  store i64 %100, ptr %72, align 8, !tbaa !24
  %101 = getelementptr inbounds i8, ptr %83, i64 24
  %102 = load i64, ptr %101, align 1, !tbaa !24
  %103 = mul i64 %102, -4417276706812531889
  %104 = add i64 %103, %79
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  store i64 %106, ptr %73, align 8, !tbaa !24
  %107 = getelementptr inbounds i8, ptr %83, i64 32
  %108 = icmp ugt ptr %107, %69
  br i1 %108, label %109, label %78, !llvm.loop !33

109:                                              ; preds = %78, %64
  %110 = phi ptr [ %65, %64 ], [ %107, %78 ]
  %111 = icmp ult ptr %110, %8
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2
  %114 = ptrtoint ptr %8 to i64
  %115 = ptrtoint ptr %110 to i64
  %116 = sub i64 %114, %115
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %113, ptr align 1 %110, i64 %116, i1 false)
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %11, align 8, !tbaa !32
  br label %118

118:                                              ; preds = %16, %112, %109, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_XXH64_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8, !tbaa !30
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !24
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !24
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 3
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
  %45 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 1, i64 2
  %46 = load i64, ptr %45, align 8, !tbaa !24
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2
  %52 = and i64 %2, 31
  %53 = icmp ugt i64 %52, 7
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
  %63 = getelementptr inbounds %struct.XXH64_state_s, ptr %0, i64 0, i32 2, i64 1
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
  %73 = phi ptr [ undef, %54 ], [ %63, %58 ]
  %74 = phi i64 [ undef, %54 ], [ %67, %58 ]
  %75 = phi i64 [ undef, %54 ], [ %68, %58 ]
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
  %85 = getelementptr inbounds i8, ptr %79, i64 8
  %86 = xor i64 %84, %78
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 27)
  %88 = mul i64 %87, -7046029288634856825
  %89 = add i64 %88, -8796714831421723037
  %90 = load i64, ptr %85, align 1, !tbaa !24
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds i8, ptr %79, i64 16
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
  %105 = icmp ugt i64 %102, 3
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32, ptr %103, align 1, !tbaa !5
  %108 = zext i32 %107 to i64
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %104
  %111 = getelementptr inbounds i8, ptr %103, i64 4
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
  %129 = getelementptr inbounds i8, ptr %126, i64 1
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
  %140 = phi i64 [ undef, %121 ], [ %135, %124 ]
  %141 = phi i64 [ %119, %121 ], [ %135, %124 ]
  %142 = phi ptr [ %118, %121 ], [ %129, %124 ]
  %143 = phi i64 [ %117, %121 ], [ %136, %124 ]
  %144 = icmp ult i64 %117, 4
  br i1 %144, label %179, label %145

145:                                              ; preds = %139, %145
  %146 = phi i64 [ %176, %145 ], [ %141, %139 ]
  %147 = phi ptr [ %170, %145 ], [ %142, %139 ]
  %148 = phi i64 [ %177, %145 ], [ %143, %139 ]
  %149 = getelementptr inbounds i8, ptr %147, i64 1
  %150 = load i8, ptr %147, align 1, !tbaa !13
  %151 = zext i8 %150 to i64
  %152 = mul i64 %151, 2870177450012600261
  %153 = xor i64 %152, %146
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 11)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds i8, ptr %147, i64 2
  %157 = load i8, ptr %149, align 1, !tbaa !13
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %155
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds i8, ptr %147, i64 3
  %164 = load i8, ptr %156, align 1, !tbaa !13
  %165 = zext i8 %164 to i64
  %166 = mul i64 %165, 2870177450012600261
  %167 = xor i64 %166, %162
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 11)
  %169 = mul i64 %168, -7046029288634856825
  %170 = getelementptr inbounds i8, ptr %147, i64 4
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
define dso_local void @ZSTD_XXH64_canonicalFromHash(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @ZSTD_XXH64_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i64, ptr %0, align 1, !tbaa !24
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
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
