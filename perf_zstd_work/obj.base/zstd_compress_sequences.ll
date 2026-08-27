; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/zstd_compress_sequences.ll'
source_filename = "/mydata/zstd/lib/compress/zstd_compress_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kInverseProbabilityLog256 = internal unnamed_addr constant [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 -1, 72057594037927936) i64 @ZSTD_fseBitCost(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %0, align 1, !tbaa !5
  %5 = zext i16 %4 to i32
  %6 = icmp eq i16 %4, 0
  %7 = add nsw i32 %5, -1
  %8 = shl nuw i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = select i1 %6, i64 1, i64 %9
  %11 = getelementptr [4 x i8], ptr %0, i64 %10
  %12 = getelementptr i8, ptr %0, i64 2
  %13 = load i16, ptr %12, align 1, !tbaa !5
  %14 = zext i16 %13 to i32
  %15 = icmp ugt i32 %2, %14
  br i1 %15, label %.loopexit, label %16

16:                                               ; preds = %3
  %17 = shl nuw i32 1, %5
  %18 = shl nuw nsw i32 %5, 8
  %19 = add nuw nsw i32 %18, 256
  %20 = add nuw nsw i32 %2, 1
  %21 = zext nneg i32 %20 to i64
  br label %22

22:                                               ; preds = %46, %16
  %23 = phi i64 [ 0, %16 ], [ %48, %46 ]
  %24 = phi i64 [ 0, %16 ], [ %47, %46 ]
  %.split = getelementptr [8 x i8], ptr %11, i64 %23
  %25 = getelementptr i8, ptr %.split, i64 8
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = lshr i32 %26, 16
  %28 = add nuw nsw i32 %27, 1
  %29 = add i32 %26, %17
  %30 = shl i32 %28, 24
  %31 = shl i32 %29, 8
  %32 = sub i32 %30, %31
  %33 = lshr i32 %32, %5
  %34 = shl nuw nsw i32 %28, 8
  %35 = sub i32 %34, %33
  %36 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %23
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = icmp ult i32 %35, %19
  br i1 %40, label %41, label %.loopexit

41:                                               ; preds = %39
  %42 = zext i32 %37 to i64
  %43 = zext nneg i32 %35 to i64
  %44 = mul nuw nsw i64 %43, %42
  %45 = add i64 %44, %24
  br label %46

46:                                               ; preds = %41, %22
  %47 = phi i64 [ %24, %22 ], [ %45, %41 ]
  %48 = add nuw nsw i64 %23, 1
  %49 = icmp eq i64 %48, %21
  br i1 %49, label %50, label %22, !llvm.loop !13

50:                                               ; preds = %46
  %51 = lshr i64 %47, 8
  br label %.loopexit

.loopexit:                                        ; preds = %39, %50, %3
  %52 = phi i64 [ %51, %50 ], [ -1, %3 ], [ -1, %39 ]
  ret i64 %52
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, 72057594037927936) i64 @ZSTD_crossEntropyCost(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 8, %1
  %6 = add i32 %3, 1
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = zext i32 %7 to i64
  %9 = and i64 %8, 1
  %10 = icmp ult i32 %6, 2
  br i1 %10, label %.loopexit, label %11

11:                                               ; preds = %4
  %12 = and i64 %8, 4294967294
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %45, %13 ]
  %15 = phi i64 [ 0, %11 ], [ %44, %13 ]
  %16 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %14
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = icmp eq i16 %17, -1
  %19 = select i1 %18, i16 1, i16 %17
  %20 = sext i16 %19 to i32
  %21 = shl i32 %20, %5
  %22 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %14
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = mul i32 %26, %23
  %28 = zext i32 %27 to i64
  %29 = add i64 %15, %28
  %30 = or disjoint i64 %14, 1
  %31 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = icmp eq i16 %32, -1
  %34 = select i1 %33, i16 1, i16 %32
  %35 = sext i16 %34 to i32
  %36 = shl i32 %35, %5
  %37 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %30
  %38 = load i32, ptr %37, align 4, !tbaa !12
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %42 = mul i32 %41, %38
  %43 = zext i32 %42 to i64
  %44 = add i64 %29, %43
  %45 = add nuw nsw i64 %14, 2
  %46 = icmp eq i64 %45, %12
  br i1 %46, label %.loopexit, label %13, !llvm.loop !15

.loopexit:                                        ; preds = %13, %4
  %47 = phi i64 [ poison, %4 ], [ %44, %13 ]
  %48 = phi i64 [ 0, %4 ], [ %12, %13 ]
  %49 = phi i64 [ 0, %4 ], [ %44, %13 ]
  %50 = icmp eq i64 %9, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %.loopexit
  %52 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %48
  %53 = load i16, ptr %52, align 2, !tbaa !5
  %54 = icmp eq i16 %53, -1
  %55 = select i1 %54, i16 1, i16 %53
  %56 = sext i16 %55 to i32
  %57 = shl i32 %56, %5
  %58 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %48
  %59 = load i32, ptr %58, align 4, !tbaa !12
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !12
  %63 = mul i32 %62, %59
  %64 = zext i32 %63 to i64
  %65 = add i64 %49, %64
  br label %66

66:                                               ; preds = %51, %.loopexit
  %67 = phi i64 [ %47, %.loopexit ], [ %65, %51 ]
  %68 = lshr i64 %67, 8
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @ZSTD_selectEncodingType(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #1 {
  %12 = alloca [512 x i8], align 16
  %13 = alloca [53 x i16], align 16
  %14 = icmp eq i64 %3, %4
  %15 = icmp eq i32 %9, 0
  br i1 %14, label %16, label %20

16:                                               ; preds = %11
  store i32 0, ptr %0, align 4, !tbaa !12
  %17 = icmp ugt i64 %3, 2
  %18 = or i1 %17, %15
  %19 = zext i1 %18 to i32
  br label %203

20:                                               ; preds = %11
  %21 = icmp ult i32 %10, 4
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  br i1 %15, label %202, label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %0, align 4, !tbaa !12
  %25 = icmp eq i32 %24, 2
  %26 = icmp ult i64 %4, 1000
  %27 = and i1 %26, %25
  br i1 %27, label %203, label %28

28:                                               ; preds = %23
  %29 = sub nuw nsw i32 10, %10
  %30 = zext nneg i32 %29 to i64
  %31 = zext nneg i32 %8 to i64
  %32 = shl i64 %30, %31
  %33 = lshr i64 %32, 3
  %34 = icmp ult i64 %4, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = add i32 %8, -1
  %37 = zext nneg i32 %36 to i64
  %38 = lshr i64 %4, %37
  %39 = icmp ult i64 %3, %38
  br i1 %39, label %40, label %202

40:                                               ; preds = %35, %28
  store i32 0, ptr %0, align 4, !tbaa !12
  br label %203

41:                                               ; preds = %20
  br i1 %15, label %107, label %42

42:                                               ; preds = %41
  %43 = sub i32 8, %8
  %44 = add i32 %2, 1
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 1)
  %46 = zext i32 %45 to i64
  %47 = and i64 %46, 1
  %48 = icmp ult i32 %44, 2
  br i1 %48, label %.loopexit8, label %49

49:                                               ; preds = %42
  %50 = and i64 %46, 4294967294
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %83, %51 ]
  %53 = phi i64 [ 0, %49 ], [ %82, %51 ]
  %54 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %52
  %55 = load i16, ptr %54, align 2, !tbaa !5
  %56 = icmp eq i16 %55, -1
  %57 = select i1 %56, i16 1, i16 %55
  %58 = sext i16 %57 to i32
  %59 = shl i32 %58, %43
  %60 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %52
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = zext i32 %59 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !12
  %65 = mul i32 %64, %61
  %66 = zext i32 %65 to i64
  %67 = add i64 %53, %66
  %68 = or disjoint i64 %52, 1
  %69 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !5
  %71 = icmp eq i16 %70, -1
  %72 = select i1 %71, i16 1, i16 %70
  %73 = sext i16 %72 to i32
  %74 = shl i32 %73, %43
  %75 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %68
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %77 = zext i32 %74 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !12
  %80 = mul i32 %79, %76
  %81 = zext i32 %80 to i64
  %82 = add i64 %67, %81
  %83 = add nuw nsw i64 %52, 2
  %84 = icmp eq i64 %83, %50
  br i1 %84, label %.loopexit8, label %51, !llvm.loop !15

.loopexit8:                                       ; preds = %51, %42
  %85 = phi i64 [ poison, %42 ], [ %82, %51 ]
  %86 = phi i64 [ 0, %42 ], [ %50, %51 ]
  %87 = phi i64 [ 0, %42 ], [ %82, %51 ]
  %88 = icmp eq i64 %47, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %.loopexit8
  %90 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %86
  %91 = load i16, ptr %90, align 2, !tbaa !5
  %92 = icmp eq i16 %91, -1
  %93 = select i1 %92, i16 1, i16 %91
  %94 = sext i16 %93 to i32
  %95 = shl i32 %94, %43
  %96 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %86
  %97 = load i32, ptr %96, align 4, !tbaa !12
  %98 = zext i32 %95 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !12
  %101 = mul i32 %100, %97
  %102 = zext i32 %101 to i64
  %103 = add i64 %87, %102
  br label %104

104:                                              ; preds = %89, %.loopexit8
  %105 = phi i64 [ %85, %.loopexit8 ], [ %103, %89 ]
  %106 = lshr i64 %105, 8
  br label %107

107:                                              ; preds = %104, %41
  %108 = phi i64 [ %106, %104 ], [ -1, %41 ]
  %109 = load i32, ptr %0, align 4, !tbaa !12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %.loopexit, label %111

111:                                              ; preds = %107
  %112 = load i16, ptr %6, align 1, !tbaa !5
  %113 = zext i16 %112 to i32
  %114 = icmp eq i16 %112, 0
  %115 = add nsw i32 %113, -1
  %116 = shl nuw i32 1, %115
  %117 = sext i32 %116 to i64
  %118 = select i1 %114, i64 1, i64 %117
  %119 = getelementptr [4 x i8], ptr %6, i64 %118
  %120 = getelementptr i8, ptr %6, i64 2
  %121 = load i16, ptr %120, align 1, !tbaa !5
  %122 = zext i16 %121 to i32
  %123 = icmp ugt i32 %2, %122
  br i1 %123, label %.loopexit, label %124

124:                                              ; preds = %111
  %125 = shl nuw i32 1, %113
  %126 = shl nuw nsw i32 %113, 8
  %127 = add nuw nsw i32 %126, 256
  %128 = add nuw nsw i32 %2, 1
  %129 = zext nneg i32 %128 to i64
  br label %130

130:                                              ; preds = %154, %124
  %131 = phi i64 [ 0, %124 ], [ %156, %154 ]
  %132 = phi i64 [ 0, %124 ], [ %155, %154 ]
  %.split = getelementptr [8 x i8], ptr %119, i64 %131
  %133 = getelementptr i8, ptr %.split, i64 8
  %134 = load i32, ptr %133, align 4, !tbaa !9
  %135 = lshr i32 %134, 16
  %136 = add nuw nsw i32 %135, 1
  %137 = add i32 %134, %125
  %138 = shl i32 %136, 24
  %139 = shl i32 %137, 8
  %140 = sub i32 %138, %139
  %141 = lshr i32 %140, %113
  %142 = shl nuw nsw i32 %136, 8
  %143 = sub i32 %142, %141
  %144 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %131
  %145 = load i32, ptr %144, align 4, !tbaa !12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %130
  %148 = icmp ult i32 %143, %127
  br i1 %148, label %149, label %.loopexit

149:                                              ; preds = %147
  %150 = zext i32 %145 to i64
  %151 = zext nneg i32 %143 to i64
  %152 = mul nuw nsw i64 %151, %150
  %153 = add i64 %152, %132
  br label %154

154:                                              ; preds = %149, %130
  %155 = phi i64 [ %132, %130 ], [ %153, %149 ]
  %156 = add nuw nsw i64 %131, 1
  %157 = icmp eq i64 %156, %129
  br i1 %157, label %158, label %130, !llvm.loop !13

158:                                              ; preds = %154
  %159 = lshr i64 %155, 8
  br label %.loopexit

.loopexit:                                        ; preds = %147, %158, %111, %107
  %160 = phi i64 [ -1, %107 ], [ %159, %158 ], [ -1, %111 ], [ -1, %147 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %161 = tail call i32 @FSE_optimalTableLog(i32 noundef %5, i64 noundef %4, i32 noundef %2) #8
  %162 = icmp ugt i64 %4, 2047
  %163 = zext i1 %162 to i32
  %164 = call i64 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef %161, ptr noundef %1, i64 noundef %4, i32 noundef %2, i32 noundef %163) #8
  %165 = icmp ult i64 %164, -119
  br i1 %165, label %166, label %168

166:                                              ; preds = %.loopexit
  %167 = call i64 @FSE_writeNCount(ptr noundef nonnull %12, i64 noundef 512, ptr noundef nonnull %13, i32 noundef %2, i32 noundef %161) #8
  br label %168

168:                                              ; preds = %166, %.loopexit
  %169 = phi i64 [ %167, %166 ], [ %164, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %170 = add i32 %2, 1
  %171 = call i32 @llvm.umax.i32(i32 %170, i32 1)
  %172 = zext i32 %171 to i64
  br label %173

173:                                              ; preds = %173, %168
  %174 = phi i64 [ 0, %168 ], [ %189, %173 ]
  %175 = phi i32 [ 0, %168 ], [ %188, %173 ]
  %176 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %174
  %177 = load i32, ptr %176, align 4, !tbaa !12
  %178 = shl i32 %177, 8
  %179 = zext i32 %178 to i64
  %180 = udiv i64 %179, %4
  %181 = icmp ne i32 %177, 0
  %182 = icmp ugt i64 %4, %179
  %183 = and i1 %181, %182
  %184 = select i1 %183, i64 1, i64 %180
  %185 = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !12
  %187 = mul i32 %186, %177
  %188 = add i32 %187, %175
  %189 = add nuw nsw i64 %174, 1
  %190 = icmp eq i64 %189, %172
  br i1 %190, label %191, label %173, !llvm.loop !16

191:                                              ; preds = %173
  %192 = shl i64 %169, 3
  %193 = lshr i32 %188, 8
  %194 = zext nneg i32 %193 to i64
  %195 = add i64 %192, %194
  %196 = icmp ugt i64 %108, %160
  %197 = icmp ugt i64 %108, %195
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %200, label %199

199:                                              ; preds = %191
  store i32 0, ptr %0, align 4, !tbaa !12
  br label %203

200:                                              ; preds = %191
  %201 = icmp ugt i64 %160, %195
  br i1 %201, label %202, label %203

202:                                              ; preds = %200, %35, %22
  store i32 1, ptr %0, align 4, !tbaa !12
  br label %203

203:                                              ; preds = %202, %200, %199, %40, %23, %16
  %204 = phi i32 [ 2, %202 ], [ %19, %16 ], [ 3, %23 ], [ 0, %40 ], [ 3, %200 ], [ 0, %199 ]
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef readonly captures(none) %7, i64 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef readonly captures(none) %12, i64 noundef %13, ptr noundef %14, i64 noundef %15) local_unnamed_addr #1 {
  switch i32 %4, label %56 [
    i32 1, label %17
    i32 3, label %25
    i32 0, label %26
    i32 2, label %30
  ]

17:                                               ; preds = %16
  %18 = trunc i32 %6 to i8
  %19 = tail call i64 @FSE_buildCTable_rle(ptr noundef %2, i8 noundef zeroext %18) #8
  %20 = icmp ult i64 %19, -119
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %7, align 1, !tbaa !17
  store i8 %24, ptr %0, align 1, !tbaa !17
  br label %56

25:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %12, i64 %13, i1 false)
  br label %56

26:                                               ; preds = %16
  %27 = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i64 noundef %15) #8
  %28 = icmp ult i64 %27, -119
  %29 = select i1 %28, i64 0, i64 %27
  br label %56

30:                                               ; preds = %16
  %31 = tail call i32 @FSE_optimalTableLog(i32 noundef %3, i64 noundef %8, i32 noundef %6) #8
  %32 = getelementptr i8, ptr %7, i64 %8
  %33 = getelementptr i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !17
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = add i32 %37, -1
  store i32 %40, ptr %36, align 4, !tbaa !12
  %41 = add i64 %8, -1
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i64 [ %41, %39 ], [ %8, %30 ]
  %44 = icmp ugt i64 %43, 2047
  %45 = zext i1 %44 to i32
  %46 = tail call i64 @FSE_normalizeCount(ptr noundef %14, i32 noundef %31, ptr noundef nonnull %5, i64 noundef %43, i32 noundef %6, i32 noundef %45) #8
  %47 = icmp ult i64 %46, -119
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = tail call i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr noundef %14, i32 noundef %6, i32 noundef %31) #8
  %50 = icmp ult i64 %49, -119
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 108
  %53 = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %14, i32 noundef %6, i32 noundef %31, ptr noundef nonnull %52, i64 noundef 1140) #8
  %54 = icmp ult i64 %53, -119
  %55 = select i1 %54, i64 %49, i64 %53
  br label %56

56:                                               ; preds = %51, %48, %42, %26, %25, %23, %21, %17, %16
  %57 = phi i64 [ 1, %23 ], [ %19, %17 ], [ 0, %25 ], [ -70, %21 ], [ %46, %42 ], [ %49, %48 ], [ -1, %16 ], [ %29, %26 ], [ %55, %51 ]
  ret i64 %57
}

declare i64 @FSE_buildCTable_rle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 1, 0) i64 @ZSTD_encodeSequences(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call fastcc i64 @ZSTD_encodeSequences_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10)
  br label %492

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  %19 = icmp ugt i64 %1, 8
  br i1 %19, label %20, label %492

20:                                               ; preds = %16
  %21 = add i64 %9, -1
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !17
  %24 = load i16, ptr %2, align 1, !tbaa !5
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = icmp eq i16 %24, 0
  %28 = add nsw i32 %25, -1
  %29 = shl nuw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = select i1 %27, i64 1, i64 %30
  %32 = getelementptr inbounds [4 x i8], ptr %26, i64 %31
  %33 = zext i8 %23 to i64
  %34 = getelementptr inbounds nuw [8 x i8], ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !12
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = add i32 %37, 32768
  %39 = and i32 %38, -65536
  %40 = sub i32 %39, %37
  %41 = zext i32 %40 to i64
  %42 = lshr i32 %38, 16
  %43 = zext nneg i32 %42 to i64
  %44 = lshr i64 %41, %43
  %45 = sext i32 %35 to i64
  %46 = getelementptr [2 x i8], ptr %26, i64 %44
  %47 = getelementptr [2 x i8], ptr %46, i64 %45
  %48 = load i16, ptr %47, align 2, !tbaa !5
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %50 = load i8, ptr %49, align 1, !tbaa !17
  %51 = zext i8 %50 to i32
  %52 = load i16, ptr %4, align 1, !tbaa !5
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %55 = icmp eq i16 %52, 0
  %56 = add nsw i32 %53, -1
  %57 = shl nuw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = select i1 %55, i64 1, i64 %58
  %60 = getelementptr inbounds [4 x i8], ptr %54, i64 %59
  %61 = zext i8 %50 to i64
  %62 = getelementptr inbounds nuw [8 x i8], ptr %60, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !12
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %65 = load i32, ptr %64, align 4, !tbaa !12
  %66 = add i32 %65, 32768
  %67 = and i32 %66, -65536
  %68 = sub i32 %67, %65
  %69 = zext i32 %68 to i64
  %70 = lshr i32 %66, 16
  %71 = zext nneg i32 %70 to i64
  %72 = lshr i64 %69, %71
  %73 = sext i32 %63 to i64
  %74 = getelementptr [2 x i8], ptr %54, i64 %72
  %75 = getelementptr [2 x i8], ptr %74, i64 %73
  %76 = load i16, ptr %75, align 2, !tbaa !5
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %21
  %78 = load i8, ptr %77, align 1, !tbaa !17
  %79 = load i16, ptr %6, align 1, !tbaa !5
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %82 = icmp eq i16 %79, 0
  %83 = add nsw i32 %80, -1
  %84 = shl nuw i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = select i1 %82, i64 1, i64 %85
  %87 = getelementptr inbounds [4 x i8], ptr %81, i64 %86
  %88 = zext i8 %78 to i64
  %89 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !12
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %92 = load i32, ptr %91, align 4, !tbaa !12
  %93 = add i32 %92, 32768
  %94 = and i32 %93, -65536
  %95 = sub i32 %94, %92
  %96 = zext i32 %95 to i64
  %97 = lshr i32 %93, 16
  %98 = zext nneg i32 %97 to i64
  %99 = lshr i64 %96, %98
  %100 = sext i32 %90 to i64
  %101 = getelementptr [2 x i8], ptr %81, i64 %99
  %102 = getelementptr [2 x i8], ptr %101, i64 %100
  %103 = load i16, ptr %102, align 2, !tbaa !5
  %104 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %21
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 4
  %106 = load i16, ptr %105, align 4, !tbaa !18
  %107 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %88
  %108 = load i8, ptr %107, align 1, !tbaa !17
  %109 = zext i8 %108 to i32
  %110 = zext i8 %108 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !12
  %113 = zext i16 %106 to i32
  %114 = and i32 %112, %113
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %104, i64 6
  %117 = load i16, ptr %116, align 2, !tbaa !20
  %118 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %33
  %119 = load i8, ptr %118, align 1, !tbaa !17
  %120 = zext i8 %119 to i32
  %121 = zext i8 %119 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !12
  %124 = zext i16 %117 to i32
  %125 = and i32 %123, %124
  %126 = zext nneg i32 %125 to i64
  %127 = shl i64 %126, %110
  %128 = or i64 %127, %115
  %129 = add nuw nsw i32 %120, %109
  %130 = icmp eq i32 %10, 0
  br i1 %130, label %174, label %131

131:                                              ; preds = %20
  %132 = icmp ult i8 %50, 56
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = load i32, ptr %104, align 4, !tbaa !21
  br label %157

135:                                              ; preds = %131
  %136 = icmp eq i8 %50, 56
  %137 = load i32, ptr %104, align 4, !tbaa !21
  br i1 %136, label %157, label %138

138:                                              ; preds = %135
  %139 = add nsw i32 %51, -56
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !12
  %143 = and i32 %142, %137
  %144 = zext i32 %143 to i64
  %145 = zext nneg i32 %129 to i64
  %146 = shl i64 %144, %145
  %147 = or i64 %146, %128
  %148 = add nuw nsw i32 %129, %139
  %149 = lshr i32 %148, 3
  %150 = zext nneg i32 %149 to i64
  store i64 %147, ptr %0, align 1, !tbaa !22
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 %150
  %152 = icmp ugt ptr %151, %18
  %153 = select i1 %152, ptr %18, ptr %151
  %154 = and i32 %148, 7
  %155 = shl nuw nsw i64 %150, 3
  %156 = lshr i64 %147, %155
  br label %157

157:                                              ; preds = %138, %135, %133
  %158 = phi i32 [ %137, %135 ], [ %137, %138 ], [ %134, %133 ]
  %159 = phi i32 [ 0, %135 ], [ %139, %138 ], [ 0, %133 ]
  %160 = phi i32 [ 56, %135 ], [ 56, %138 ], [ %51, %133 ]
  %161 = phi i64 [ %128, %135 ], [ %156, %138 ], [ %128, %133 ]
  %162 = phi i32 [ %129, %135 ], [ %154, %138 ], [ %129, %133 ]
  %163 = phi ptr [ %0, %135 ], [ %153, %138 ], [ %0, %133 ]
  %164 = lshr i32 %158, %159
  %165 = zext nneg i32 %160 to i64
  %166 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !12
  %168 = and i32 %167, %164
  %169 = zext i32 %168 to i64
  %170 = zext nneg i32 %162 to i64
  %171 = shl i64 %169, %170
  %172 = or i64 %171, %161
  %173 = add nuw nsw i32 %162, %160
  br label %184

174:                                              ; preds = %20
  %175 = load i32, ptr %104, align 4, !tbaa !21
  %176 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %61
  %177 = load i32, ptr %176, align 4, !tbaa !12
  %178 = and i32 %177, %175
  %179 = zext i32 %178 to i64
  %180 = zext nneg i32 %129 to i64
  %181 = shl i64 %179, %180
  %182 = or i64 %181, %128
  %183 = add nuw nsw i32 %129, %51
  br label %184

184:                                              ; preds = %174, %157
  %185 = phi i64 [ %182, %174 ], [ %172, %157 ]
  %186 = phi i32 [ %183, %174 ], [ %173, %157 ]
  %187 = phi ptr [ %0, %174 ], [ %163, %157 ]
  %188 = lshr i32 %186, 3
  %189 = zext nneg i32 %188 to i64
  store i64 %185, ptr %187, align 1, !tbaa !22
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 %189
  %191 = icmp ugt ptr %190, %18
  %192 = select i1 %191, ptr %18, ptr %190
  %193 = shl nuw nsw i64 %189, 3
  %194 = lshr i64 %185, %193
  %195 = zext i16 %103 to i64
  %196 = and i32 %186, 7
  %197 = zext i16 %48 to i64
  %198 = zext i16 %76 to i64
  %199 = icmp ugt i64 %9, 1
  br i1 %199, label %200, label %.loopexit

200:                                              ; preds = %184
  %201 = add i64 %9, -2
  br label %202

202:                                              ; preds = %397, %200
  %203 = phi i64 [ %412, %397 ], [ %198, %200 ]
  %204 = phi i64 [ %411, %397 ], [ %197, %200 ]
  %205 = phi i32 [ %410, %397 ], [ %196, %200 ]
  %206 = phi i64 [ %409, %397 ], [ %195, %200 ]
  %207 = phi i64 [ %408, %397 ], [ %201, %200 ]
  %208 = phi ptr [ %405, %397 ], [ %192, %200 ]
  %209 = phi i64 [ %407, %397 ], [ %194, %200 ]
  %210 = getelementptr inbounds nuw i8, ptr %7, i64 %207
  %211 = load i8, ptr %210, align 1, !tbaa !17
  %212 = getelementptr inbounds nuw i8, ptr %5, i64 %207
  %213 = load i8, ptr %212, align 1, !tbaa !17
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 %207
  %215 = load i8, ptr %214, align 1, !tbaa !17
  %216 = zext i8 %211 to i64
  %217 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !17
  %219 = zext i8 %218 to i32
  %220 = zext i8 %213 to i32
  %221 = zext i8 %215 to i64
  %222 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !17
  %224 = zext i8 %223 to i32
  %225 = zext i8 %213 to i64
  %226 = getelementptr inbounds nuw [8 x i8], ptr %60, i64 %225
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 4
  %228 = load i32, ptr %227, align 4, !tbaa !12
  %229 = zext i32 %228 to i64
  %230 = add nuw nsw i64 %203, %229
  %231 = lshr i64 %230, 16
  %232 = trunc nuw nsw i64 %231 to i32
  %233 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %231
  %234 = load i32, ptr %233, align 4, !tbaa !12
  %235 = zext i32 %234 to i64
  %236 = and i64 %203, %235
  %237 = zext nneg i32 %205 to i64
  %238 = shl nuw nsw i64 %236, %237
  %239 = add nuw nsw i32 %205, %232
  %240 = lshr i64 %203, %231
  %241 = load i32, ptr %226, align 4, !tbaa !12
  %242 = sext i32 %241 to i64
  %243 = getelementptr [2 x i8], ptr %54, i64 %240
  %244 = getelementptr [2 x i8], ptr %243, i64 %242
  %245 = load i16, ptr %244, align 2, !tbaa !5
  %246 = getelementptr inbounds nuw [8 x i8], ptr %32, i64 %221
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 4
  %248 = load i32, ptr %247, align 4, !tbaa !12
  %249 = zext i32 %248 to i64
  %250 = add nuw nsw i64 %204, %249
  %251 = lshr i64 %250, 16
  %252 = trunc nuw nsw i64 %251 to i32
  %253 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %251
  %254 = load i32, ptr %253, align 4, !tbaa !12
  %255 = zext i32 %254 to i64
  %256 = and i64 %204, %255
  %257 = zext nneg i32 %239 to i64
  %258 = shl i64 %256, %257
  %259 = add nuw nsw i32 %239, %252
  %260 = lshr i64 %204, %251
  %261 = load i32, ptr %246, align 4, !tbaa !12
  %262 = sext i32 %261 to i64
  %263 = getelementptr [2 x i8], ptr %26, i64 %260
  %264 = getelementptr [2 x i8], ptr %263, i64 %262
  %265 = load i16, ptr %264, align 2, !tbaa !5
  %266 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 %216
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 4
  %268 = load i32, ptr %267, align 4, !tbaa !12
  %269 = zext i32 %268 to i64
  %270 = add nuw nsw i64 %206, %269
  %271 = lshr i64 %270, 16
  %272 = trunc nuw nsw i64 %271 to i32
  %273 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %271
  %274 = load i32, ptr %273, align 4, !tbaa !12
  %275 = zext i32 %274 to i64
  %276 = and i64 %206, %275
  %277 = zext nneg i32 %259 to i64
  %278 = shl i64 %276, %277
  %279 = or i64 %238, %209
  %280 = or i64 %279, %258
  %281 = or i64 %280, %278
  %282 = add nuw nsw i32 %259, %272
  %283 = lshr i64 %206, %271
  %284 = load i32, ptr %266, align 4, !tbaa !12
  %285 = sext i32 %284 to i64
  %286 = getelementptr [2 x i8], ptr %81, i64 %283
  %287 = getelementptr [2 x i8], ptr %286, i64 %285
  %288 = load i16, ptr %287, align 2, !tbaa !5
  %289 = add nuw nsw i32 %219, %220
  %290 = add nuw nsw i32 %289, %224
  %291 = icmp samesign ugt i32 %290, 30
  br i1 %291, label %292, label %301

292:                                              ; preds = %202
  %293 = lshr i32 %282, 3
  %294 = zext nneg i32 %293 to i64
  store i64 %281, ptr %208, align 1, !tbaa !22
  %295 = getelementptr inbounds nuw i8, ptr %208, i64 %294
  %296 = icmp ugt ptr %295, %18
  %297 = select i1 %296, ptr %18, ptr %295
  %298 = and i32 %282, 7
  %299 = shl nuw nsw i64 %294, 3
  %300 = lshr i64 %281, %299
  br label %301

301:                                              ; preds = %292, %202
  %302 = phi i64 [ %300, %292 ], [ %281, %202 ]
  %303 = phi i32 [ %298, %292 ], [ %282, %202 ]
  %304 = phi ptr [ %297, %292 ], [ %208, %202 ]
  %305 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %207
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 4
  %307 = load i16, ptr %306, align 4, !tbaa !18
  %308 = zext i8 %218 to i64
  %309 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !12
  %311 = zext i16 %307 to i32
  %312 = and i32 %310, %311
  %313 = zext nneg i32 %312 to i64
  %314 = zext nneg i32 %303 to i64
  %315 = shl i64 %313, %314
  %316 = or i64 %315, %302
  %317 = add nuw nsw i32 %303, %219
  %318 = getelementptr inbounds nuw i8, ptr %305, i64 6
  %319 = load i16, ptr %318, align 2, !tbaa !20
  %320 = zext i8 %223 to i64
  %321 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !12
  %323 = zext i16 %319 to i32
  %324 = and i32 %322, %323
  %325 = zext nneg i32 %324 to i64
  %326 = zext nneg i32 %317 to i64
  %327 = shl i64 %325, %326
  %328 = or i64 %316, %327
  %329 = add nuw nsw i32 %317, %224
  %330 = icmp samesign ugt i32 %290, 56
  br i1 %330, label %331, label %340

331:                                              ; preds = %301
  %332 = lshr i32 %329, 3
  %333 = zext nneg i32 %332 to i64
  store i64 %328, ptr %304, align 1, !tbaa !22
  %334 = getelementptr inbounds nuw i8, ptr %304, i64 %333
  %335 = icmp ugt ptr %334, %18
  %336 = select i1 %335, ptr %18, ptr %334
  %337 = and i32 %329, 7
  %338 = shl nuw nsw i64 %333, 3
  %339 = lshr i64 %328, %338
  br label %340

340:                                              ; preds = %331, %301
  %341 = phi i64 [ %339, %331 ], [ %328, %301 ]
  %342 = phi i32 [ %337, %331 ], [ %329, %301 ]
  %343 = phi ptr [ %336, %331 ], [ %304, %301 ]
  br i1 %130, label %387, label %344

344:                                              ; preds = %340
  %345 = icmp ult i8 %213, 56
  br i1 %345, label %346, label %348

346:                                              ; preds = %344
  %347 = load i32, ptr %305, align 4, !tbaa !21
  br label %370

348:                                              ; preds = %344
  %349 = icmp eq i8 %213, 56
  %350 = load i32, ptr %305, align 4, !tbaa !21
  br i1 %349, label %370, label %351

351:                                              ; preds = %348
  %352 = add nsw i32 %220, -56
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !12
  %356 = and i32 %355, %350
  %357 = zext i32 %356 to i64
  %358 = zext nneg i32 %342 to i64
  %359 = shl i64 %357, %358
  %360 = or i64 %359, %341
  %361 = add nsw i32 %342, %352
  %362 = lshr i32 %361, 3
  %363 = zext nneg i32 %362 to i64
  store i64 %360, ptr %343, align 1, !tbaa !22
  %364 = getelementptr inbounds nuw i8, ptr %343, i64 %363
  %365 = icmp ugt ptr %364, %18
  %366 = select i1 %365, ptr %18, ptr %364
  %367 = and i32 %361, 7
  %368 = shl nuw nsw i64 %363, 3
  %369 = lshr i64 %360, %368
  br label %370

370:                                              ; preds = %351, %348, %346
  %371 = phi i32 [ %350, %348 ], [ %350, %351 ], [ %347, %346 ]
  %372 = phi i32 [ 0, %348 ], [ %352, %351 ], [ 0, %346 ]
  %373 = phi i32 [ 56, %348 ], [ 56, %351 ], [ %220, %346 ]
  %374 = phi i64 [ %341, %348 ], [ %369, %351 ], [ %341, %346 ]
  %375 = phi i32 [ %342, %348 ], [ %367, %351 ], [ %342, %346 ]
  %376 = phi ptr [ %343, %348 ], [ %366, %351 ], [ %343, %346 ]
  %377 = lshr i32 %371, %372
  %378 = zext nneg i32 %373 to i64
  %379 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !12
  %381 = and i32 %380, %377
  %382 = zext i32 %381 to i64
  %383 = zext nneg i32 %375 to i64
  %384 = shl i64 %382, %383
  %385 = or i64 %384, %374
  %386 = add nuw nsw i32 %375, %373
  br label %397

387:                                              ; preds = %340
  %388 = load i32, ptr %305, align 4, !tbaa !21
  %389 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %225
  %390 = load i32, ptr %389, align 4, !tbaa !12
  %391 = and i32 %390, %388
  %392 = zext i32 %391 to i64
  %393 = zext nneg i32 %342 to i64
  %394 = shl i64 %392, %393
  %395 = or i64 %394, %341
  %396 = add nuw nsw i32 %342, %220
  br label %397

397:                                              ; preds = %387, %370
  %398 = phi i64 [ %395, %387 ], [ %385, %370 ]
  %399 = phi i32 [ %396, %387 ], [ %386, %370 ]
  %400 = phi ptr [ %343, %387 ], [ %376, %370 ]
  %401 = lshr i32 %399, 3
  %402 = zext nneg i32 %401 to i64
  store i64 %398, ptr %400, align 1, !tbaa !22
  %403 = getelementptr inbounds nuw i8, ptr %400, i64 %402
  %404 = icmp ugt ptr %403, %18
  %405 = select i1 %404, ptr %18, ptr %403
  %406 = shl nuw nsw i64 %402, 3
  %407 = lshr i64 %398, %406
  %408 = add i64 %207, -1
  %409 = zext i16 %288 to i64
  %410 = and i32 %399, 7
  %411 = zext i16 %265 to i64
  %412 = zext i16 %245 to i64
  %413 = icmp ult i64 %408, %9
  br i1 %413, label %202, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %397, %184
  %414 = phi i64 [ %194, %184 ], [ %407, %397 ]
  %415 = phi ptr [ %192, %184 ], [ %405, %397 ]
  %416 = phi i64 [ %195, %184 ], [ %409, %397 ]
  %417 = phi i32 [ %196, %184 ], [ %410, %397 ]
  %418 = phi i64 [ %197, %184 ], [ %411, %397 ]
  %419 = phi i64 [ %198, %184 ], [ %412, %397 ]
  %420 = zext i16 %24 to i64
  %421 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !12
  %423 = zext i32 %422 to i64
  %424 = and i64 %418, %423
  %425 = zext nneg i32 %417 to i64
  %426 = shl nuw nsw i64 %424, %425
  %427 = or i64 %426, %414
  %428 = add nuw nsw i32 %417, %25
  %429 = lshr i32 %428, 3
  %430 = zext nneg i32 %429 to i64
  store i64 %427, ptr %415, align 1, !tbaa !22
  %431 = getelementptr inbounds nuw i8, ptr %415, i64 %430
  %432 = icmp ugt ptr %431, %18
  %433 = select i1 %432, ptr %18, ptr %431
  %434 = and i32 %428, 7
  %435 = shl nuw nsw i64 %430, 3
  %436 = lshr i64 %427, %435
  %437 = zext i16 %52 to i64
  %438 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !12
  %440 = zext i32 %439 to i64
  %441 = and i64 %419, %440
  %442 = zext nneg i32 %434 to i64
  %443 = shl nuw nsw i64 %441, %442
  %444 = or i64 %443, %436
  %445 = add nuw nsw i32 %434, %53
  %446 = lshr i32 %445, 3
  %447 = zext nneg i32 %446 to i64
  store i64 %444, ptr %433, align 1, !tbaa !22
  %448 = getelementptr inbounds nuw i8, ptr %433, i64 %447
  %449 = icmp ugt ptr %448, %18
  %450 = select i1 %449, ptr %18, ptr %448
  %451 = and i32 %445, 7
  %452 = shl nuw nsw i64 %447, 3
  %453 = lshr i64 %444, %452
  %454 = zext i16 %79 to i64
  %455 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !12
  %457 = zext i32 %456 to i64
  %458 = and i64 %416, %457
  %459 = zext nneg i32 %451 to i64
  %460 = shl nuw nsw i64 %458, %459
  %461 = or i64 %460, %453
  %462 = add nuw nsw i32 %451, %80
  %463 = lshr i32 %462, 3
  %464 = zext nneg i32 %463 to i64
  store i64 %461, ptr %450, align 1, !tbaa !22
  %465 = getelementptr inbounds nuw i8, ptr %450, i64 %464
  %466 = icmp ugt ptr %465, %18
  %467 = select i1 %466, ptr %18, ptr %465
  %468 = and i32 %462, 7
  %469 = shl nuw nsw i64 %464, 3
  %470 = lshr i64 %461, %469
  %471 = zext nneg i32 %468 to i64
  %472 = shl nuw nsw i64 1, %471
  %473 = or i64 %470, %472
  %474 = add nuw nsw i32 %468, 1
  %475 = lshr i32 %474, 3
  %476 = zext nneg i32 %475 to i64
  store i64 %473, ptr %467, align 1, !tbaa !22
  %477 = getelementptr inbounds nuw i8, ptr %467, i64 %476
  %478 = icmp ugt ptr %477, %18
  %479 = select i1 %478, ptr %18, ptr %477
  %480 = icmp ult ptr %479, %18
  br i1 %480, label %481, label %491

481:                                              ; preds = %.loopexit
  %482 = and i32 %474, 7
  %483 = ptrtoint ptr %479 to i64
  %484 = ptrtoint ptr %0 to i64
  %485 = icmp ne i32 %482, 0
  %486 = zext i1 %485 to i64
  %487 = add i64 %483, %486
  %488 = freeze i64 %487
  %489 = sub i64 %488, %484
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %481, %.loopexit
  br label %492

492:                                              ; preds = %491, %481, %16, %14
  %493 = phi i64 [ %15, %14 ], [ -70, %16 ], [ -70, %491 ], [ %489, %481 ]
  ret i64 %493
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @ZSTD_encodeSequences_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10) unnamed_addr #5 {
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp ugt i64 %1, 8
  br i1 %14, label %15, label %487

15:                                               ; preds = %11
  %16 = add i64 %9, -1
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !17
  %19 = load i16, ptr %2, align 1, !tbaa !5
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %22 = icmp eq i16 %19, 0
  %23 = add nsw i32 %20, -1
  %24 = shl nuw i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = select i1 %22, i64 1, i64 %25
  %27 = getelementptr inbounds [4 x i8], ptr %21, i64 %26
  %28 = zext i8 %18 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = add i32 %32, 32768
  %34 = and i32 %33, -65536
  %35 = sub i32 %34, %32
  %36 = zext i32 %35 to i64
  %37 = lshr i32 %33, 16
  %38 = zext nneg i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = sext i32 %30 to i64
  %41 = getelementptr [2 x i8], ptr %21, i64 %39
  %42 = getelementptr [2 x i8], ptr %41, i64 %40
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 %16
  %45 = load i8, ptr %44, align 1, !tbaa !17
  %46 = zext i8 %45 to i32
  %47 = load i16, ptr %4, align 1, !tbaa !5
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %50 = icmp eq i16 %47, 0
  %51 = add nsw i32 %48, -1
  %52 = shl nuw i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = select i1 %50, i64 1, i64 %53
  %55 = getelementptr inbounds [4 x i8], ptr %49, i64 %54
  %56 = zext i8 %45 to i64
  %57 = getelementptr inbounds nuw [8 x i8], ptr %55, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 4
  %60 = load i32, ptr %59, align 4, !tbaa !12
  %61 = add i32 %60, 32768
  %62 = and i32 %61, -65536
  %63 = sub i32 %62, %60
  %64 = zext i32 %63 to i64
  %65 = lshr i32 %61, 16
  %66 = zext nneg i32 %65 to i64
  %67 = lshr i64 %64, %66
  %68 = sext i32 %58 to i64
  %69 = getelementptr [2 x i8], ptr %49, i64 %67
  %70 = getelementptr [2 x i8], ptr %69, i64 %68
  %71 = load i16, ptr %70, align 2, !tbaa !5
  %72 = getelementptr inbounds nuw i8, ptr %7, i64 %16
  %73 = load i8, ptr %72, align 1, !tbaa !17
  %74 = load i16, ptr %6, align 1, !tbaa !5
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %77 = icmp eq i16 %74, 0
  %78 = add nsw i32 %75, -1
  %79 = shl nuw i32 1, %78
  %80 = sext i32 %79 to i64
  %81 = select i1 %77, i64 1, i64 %80
  %82 = getelementptr inbounds [4 x i8], ptr %76, i64 %81
  %83 = zext i8 %73 to i64
  %84 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !12
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !12
  %88 = add i32 %87, 32768
  %89 = and i32 %88, -65536
  %90 = sub i32 %89, %87
  %91 = zext i32 %90 to i64
  %92 = lshr i32 %88, 16
  %93 = zext nneg i32 %92 to i64
  %94 = lshr i64 %91, %93
  %95 = sext i32 %85 to i64
  %96 = getelementptr [2 x i8], ptr %76, i64 %94
  %97 = getelementptr [2 x i8], ptr %96, i64 %95
  %98 = load i16, ptr %97, align 2, !tbaa !5
  %99 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %16
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %101 = load i16, ptr %100, align 4, !tbaa !18
  %102 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %83
  %103 = load i8, ptr %102, align 1, !tbaa !17
  %104 = zext i8 %103 to i32
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !12
  %108 = zext i16 %101 to i32
  %109 = and i32 %107, %108
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw i8, ptr %99, i64 6
  %112 = load i16, ptr %111, align 2, !tbaa !20
  %113 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %28
  %114 = load i8, ptr %113, align 1, !tbaa !17
  %115 = zext i8 %114 to i32
  %116 = zext i8 %114 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !12
  %119 = zext i16 %112 to i32
  %120 = and i32 %118, %119
  %121 = zext nneg i32 %120 to i64
  %122 = shl i64 %121, %105
  %123 = or i64 %122, %110
  %124 = add nuw nsw i32 %115, %104
  %125 = icmp eq i32 %10, 0
  br i1 %125, label %169, label %126

126:                                              ; preds = %15
  %127 = icmp ult i8 %45, 56
  br i1 %127, label %128, label %130

128:                                              ; preds = %126
  %129 = load i32, ptr %99, align 4, !tbaa !21
  br label %152

130:                                              ; preds = %126
  %131 = icmp eq i8 %45, 56
  %132 = load i32, ptr %99, align 4, !tbaa !21
  br i1 %131, label %152, label %133

133:                                              ; preds = %130
  %134 = add nsw i32 %46, -56
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !12
  %138 = and i32 %137, %132
  %139 = zext i32 %138 to i64
  %140 = zext nneg i32 %124 to i64
  %141 = shl i64 %139, %140
  %142 = or i64 %141, %123
  %143 = add nuw nsw i32 %124, %134
  %144 = lshr i32 %143, 3
  %145 = zext nneg i32 %144 to i64
  store i64 %142, ptr %0, align 1, !tbaa !22
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  %147 = icmp ugt ptr %146, %13
  %148 = select i1 %147, ptr %13, ptr %146
  %149 = and i32 %143, 7
  %150 = shl nuw nsw i64 %145, 3
  %151 = lshr i64 %142, %150
  br label %152

152:                                              ; preds = %133, %130, %128
  %153 = phi i32 [ %132, %130 ], [ %132, %133 ], [ %129, %128 ]
  %154 = phi i32 [ 0, %130 ], [ %134, %133 ], [ 0, %128 ]
  %155 = phi i32 [ 56, %130 ], [ 56, %133 ], [ %46, %128 ]
  %156 = phi i64 [ %123, %130 ], [ %151, %133 ], [ %123, %128 ]
  %157 = phi i32 [ %124, %130 ], [ %149, %133 ], [ %124, %128 ]
  %158 = phi ptr [ %0, %130 ], [ %148, %133 ], [ %0, %128 ]
  %159 = lshr i32 %153, %154
  %160 = zext nneg i32 %155 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !12
  %163 = and i32 %162, %159
  %164 = zext i32 %163 to i64
  %165 = zext nneg i32 %157 to i64
  %166 = shl i64 %164, %165
  %167 = or i64 %166, %156
  %168 = add nuw nsw i32 %157, %155
  br label %179

169:                                              ; preds = %15
  %170 = load i32, ptr %99, align 4, !tbaa !21
  %171 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %56
  %172 = load i32, ptr %171, align 4, !tbaa !12
  %173 = and i32 %172, %170
  %174 = zext i32 %173 to i64
  %175 = zext nneg i32 %124 to i64
  %176 = shl i64 %174, %175
  %177 = or i64 %176, %123
  %178 = add nuw nsw i32 %124, %46
  br label %179

179:                                              ; preds = %169, %152
  %180 = phi i64 [ %177, %169 ], [ %167, %152 ]
  %181 = phi i32 [ %178, %169 ], [ %168, %152 ]
  %182 = phi ptr [ %0, %169 ], [ %158, %152 ]
  %183 = lshr i32 %181, 3
  %184 = zext nneg i32 %183 to i64
  store i64 %180, ptr %182, align 1, !tbaa !22
  %185 = getelementptr inbounds nuw i8, ptr %182, i64 %184
  %186 = icmp ugt ptr %185, %13
  %187 = select i1 %186, ptr %13, ptr %185
  %188 = shl nuw nsw i64 %184, 3
  %189 = lshr i64 %180, %188
  %190 = zext i16 %98 to i64
  %191 = and i32 %181, 7
  %192 = zext i16 %43 to i64
  %193 = zext i16 %71 to i64
  %194 = icmp ugt i64 %9, 1
  br i1 %194, label %195, label %.loopexit

195:                                              ; preds = %179
  %196 = add i64 %9, -2
  br label %197

197:                                              ; preds = %392, %195
  %198 = phi i64 [ %407, %392 ], [ %193, %195 ]
  %199 = phi i64 [ %406, %392 ], [ %192, %195 ]
  %200 = phi i32 [ %405, %392 ], [ %191, %195 ]
  %201 = phi i64 [ %404, %392 ], [ %190, %195 ]
  %202 = phi i64 [ %403, %392 ], [ %196, %195 ]
  %203 = phi ptr [ %400, %392 ], [ %187, %195 ]
  %204 = phi i64 [ %402, %392 ], [ %189, %195 ]
  %205 = getelementptr inbounds nuw i8, ptr %7, i64 %202
  %206 = load i8, ptr %205, align 1, !tbaa !17
  %207 = getelementptr inbounds nuw i8, ptr %5, i64 %202
  %208 = load i8, ptr %207, align 1, !tbaa !17
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 %202
  %210 = load i8, ptr %209, align 1, !tbaa !17
  %211 = zext i8 %206 to i64
  %212 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !17
  %214 = zext i8 %213 to i32
  %215 = zext i8 %208 to i32
  %216 = zext i8 %210 to i64
  %217 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !17
  %219 = zext i8 %218 to i32
  %220 = zext i8 %208 to i64
  %221 = getelementptr inbounds nuw [8 x i8], ptr %55, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 4
  %223 = load i32, ptr %222, align 4, !tbaa !12
  %224 = zext i32 %223 to i64
  %225 = add nuw nsw i64 %198, %224
  %226 = lshr i64 %225, 16
  %227 = trunc nuw nsw i64 %226 to i32
  %228 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %226
  %229 = load i32, ptr %228, align 4, !tbaa !12
  %230 = zext i32 %229 to i64
  %231 = and i64 %198, %230
  %232 = zext nneg i32 %200 to i64
  %233 = shl nuw nsw i64 %231, %232
  %234 = add nuw nsw i32 %200, %227
  %235 = lshr i64 %198, %226
  %236 = load i32, ptr %221, align 4, !tbaa !12
  %237 = sext i32 %236 to i64
  %238 = getelementptr [2 x i8], ptr %49, i64 %235
  %239 = getelementptr [2 x i8], ptr %238, i64 %237
  %240 = load i16, ptr %239, align 2, !tbaa !5
  %241 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %216
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 4
  %243 = load i32, ptr %242, align 4, !tbaa !12
  %244 = zext i32 %243 to i64
  %245 = add nuw nsw i64 %199, %244
  %246 = lshr i64 %245, 16
  %247 = trunc nuw nsw i64 %246 to i32
  %248 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %246
  %249 = load i32, ptr %248, align 4, !tbaa !12
  %250 = zext i32 %249 to i64
  %251 = and i64 %199, %250
  %252 = zext nneg i32 %234 to i64
  %253 = shl i64 %251, %252
  %254 = add nuw nsw i32 %234, %247
  %255 = lshr i64 %199, %246
  %256 = load i32, ptr %241, align 4, !tbaa !12
  %257 = sext i32 %256 to i64
  %258 = getelementptr [2 x i8], ptr %21, i64 %255
  %259 = getelementptr [2 x i8], ptr %258, i64 %257
  %260 = load i16, ptr %259, align 2, !tbaa !5
  %261 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %211
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 4
  %263 = load i32, ptr %262, align 4, !tbaa !12
  %264 = zext i32 %263 to i64
  %265 = add nuw nsw i64 %201, %264
  %266 = lshr i64 %265, 16
  %267 = trunc nuw nsw i64 %266 to i32
  %268 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %266
  %269 = load i32, ptr %268, align 4, !tbaa !12
  %270 = zext i32 %269 to i64
  %271 = and i64 %201, %270
  %272 = zext nneg i32 %254 to i64
  %273 = shl i64 %271, %272
  %274 = or i64 %233, %204
  %275 = or i64 %274, %253
  %276 = or i64 %275, %273
  %277 = add nuw nsw i32 %254, %267
  %278 = lshr i64 %201, %266
  %279 = load i32, ptr %261, align 4, !tbaa !12
  %280 = sext i32 %279 to i64
  %281 = getelementptr [2 x i8], ptr %76, i64 %278
  %282 = getelementptr [2 x i8], ptr %281, i64 %280
  %283 = load i16, ptr %282, align 2, !tbaa !5
  %284 = add nuw nsw i32 %214, %215
  %285 = add nuw nsw i32 %284, %219
  %286 = icmp samesign ugt i32 %285, 30
  br i1 %286, label %287, label %296

287:                                              ; preds = %197
  %288 = lshr i32 %277, 3
  %289 = zext nneg i32 %288 to i64
  store i64 %276, ptr %203, align 1, !tbaa !22
  %290 = getelementptr inbounds nuw i8, ptr %203, i64 %289
  %291 = icmp ugt ptr %290, %13
  %292 = select i1 %291, ptr %13, ptr %290
  %293 = and i32 %277, 7
  %294 = shl nuw nsw i64 %289, 3
  %295 = lshr i64 %276, %294
  br label %296

296:                                              ; preds = %287, %197
  %297 = phi i64 [ %295, %287 ], [ %276, %197 ]
  %298 = phi i32 [ %293, %287 ], [ %277, %197 ]
  %299 = phi ptr [ %292, %287 ], [ %203, %197 ]
  %300 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %202
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 4
  %302 = load i16, ptr %301, align 4, !tbaa !18
  %303 = zext i8 %213 to i64
  %304 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !12
  %306 = zext i16 %302 to i32
  %307 = and i32 %305, %306
  %308 = zext nneg i32 %307 to i64
  %309 = zext nneg i32 %298 to i64
  %310 = shl i64 %308, %309
  %311 = or i64 %310, %297
  %312 = add nuw nsw i32 %298, %214
  %313 = getelementptr inbounds nuw i8, ptr %300, i64 6
  %314 = load i16, ptr %313, align 2, !tbaa !20
  %315 = zext i8 %218 to i64
  %316 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !12
  %318 = zext i16 %314 to i32
  %319 = and i32 %317, %318
  %320 = zext nneg i32 %319 to i64
  %321 = zext nneg i32 %312 to i64
  %322 = shl i64 %320, %321
  %323 = or i64 %311, %322
  %324 = add nuw nsw i32 %312, %219
  %325 = icmp samesign ugt i32 %285, 56
  br i1 %325, label %326, label %335

326:                                              ; preds = %296
  %327 = lshr i32 %324, 3
  %328 = zext nneg i32 %327 to i64
  store i64 %323, ptr %299, align 1, !tbaa !22
  %329 = getelementptr inbounds nuw i8, ptr %299, i64 %328
  %330 = icmp ugt ptr %329, %13
  %331 = select i1 %330, ptr %13, ptr %329
  %332 = and i32 %324, 7
  %333 = shl nuw nsw i64 %328, 3
  %334 = lshr i64 %323, %333
  br label %335

335:                                              ; preds = %326, %296
  %336 = phi i64 [ %334, %326 ], [ %323, %296 ]
  %337 = phi i32 [ %332, %326 ], [ %324, %296 ]
  %338 = phi ptr [ %331, %326 ], [ %299, %296 ]
  br i1 %125, label %382, label %339

339:                                              ; preds = %335
  %340 = icmp ult i8 %208, 56
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = load i32, ptr %300, align 4, !tbaa !21
  br label %365

343:                                              ; preds = %339
  %344 = icmp eq i8 %208, 56
  %345 = load i32, ptr %300, align 4, !tbaa !21
  br i1 %344, label %365, label %346

346:                                              ; preds = %343
  %347 = add nsw i32 %215, -56
  %348 = zext nneg i32 %347 to i64
  %349 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !12
  %351 = and i32 %350, %345
  %352 = zext i32 %351 to i64
  %353 = zext nneg i32 %337 to i64
  %354 = shl i64 %352, %353
  %355 = or i64 %354, %336
  %356 = add nsw i32 %337, %347
  %357 = lshr i32 %356, 3
  %358 = zext nneg i32 %357 to i64
  store i64 %355, ptr %338, align 1, !tbaa !22
  %359 = getelementptr inbounds nuw i8, ptr %338, i64 %358
  %360 = icmp ugt ptr %359, %13
  %361 = select i1 %360, ptr %13, ptr %359
  %362 = and i32 %356, 7
  %363 = shl nuw nsw i64 %358, 3
  %364 = lshr i64 %355, %363
  br label %365

365:                                              ; preds = %346, %343, %341
  %366 = phi i32 [ %345, %343 ], [ %345, %346 ], [ %342, %341 ]
  %367 = phi i32 [ 0, %343 ], [ %347, %346 ], [ 0, %341 ]
  %368 = phi i32 [ 56, %343 ], [ 56, %346 ], [ %215, %341 ]
  %369 = phi i64 [ %336, %343 ], [ %364, %346 ], [ %336, %341 ]
  %370 = phi i32 [ %337, %343 ], [ %362, %346 ], [ %337, %341 ]
  %371 = phi ptr [ %338, %343 ], [ %361, %346 ], [ %338, %341 ]
  %372 = lshr i32 %366, %367
  %373 = zext nneg i32 %368 to i64
  %374 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !12
  %376 = and i32 %375, %372
  %377 = zext i32 %376 to i64
  %378 = zext nneg i32 %370 to i64
  %379 = shl i64 %377, %378
  %380 = or i64 %379, %369
  %381 = add nuw nsw i32 %370, %368
  br label %392

382:                                              ; preds = %335
  %383 = load i32, ptr %300, align 4, !tbaa !21
  %384 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %220
  %385 = load i32, ptr %384, align 4, !tbaa !12
  %386 = and i32 %385, %383
  %387 = zext i32 %386 to i64
  %388 = zext nneg i32 %337 to i64
  %389 = shl i64 %387, %388
  %390 = or i64 %389, %336
  %391 = add nuw nsw i32 %337, %215
  br label %392

392:                                              ; preds = %382, %365
  %393 = phi i64 [ %390, %382 ], [ %380, %365 ]
  %394 = phi i32 [ %391, %382 ], [ %381, %365 ]
  %395 = phi ptr [ %338, %382 ], [ %371, %365 ]
  %396 = lshr i32 %394, 3
  %397 = zext nneg i32 %396 to i64
  store i64 %393, ptr %395, align 1, !tbaa !22
  %398 = getelementptr inbounds nuw i8, ptr %395, i64 %397
  %399 = icmp ugt ptr %398, %13
  %400 = select i1 %399, ptr %13, ptr %398
  %401 = shl nuw nsw i64 %397, 3
  %402 = lshr i64 %393, %401
  %403 = add i64 %202, -1
  %404 = zext i16 %283 to i64
  %405 = and i32 %394, 7
  %406 = zext i16 %260 to i64
  %407 = zext i16 %240 to i64
  %408 = icmp ult i64 %403, %9
  br i1 %408, label %197, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %392, %179
  %409 = phi i64 [ %189, %179 ], [ %402, %392 ]
  %410 = phi ptr [ %187, %179 ], [ %400, %392 ]
  %411 = phi i64 [ %190, %179 ], [ %404, %392 ]
  %412 = phi i32 [ %191, %179 ], [ %405, %392 ]
  %413 = phi i64 [ %192, %179 ], [ %406, %392 ]
  %414 = phi i64 [ %193, %179 ], [ %407, %392 ]
  %415 = zext i16 %19 to i64
  %416 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !12
  %418 = zext i32 %417 to i64
  %419 = and i64 %413, %418
  %420 = zext nneg i32 %412 to i64
  %421 = shl nuw nsw i64 %419, %420
  %422 = or i64 %421, %409
  %423 = add nuw nsw i32 %412, %20
  %424 = lshr i32 %423, 3
  %425 = zext nneg i32 %424 to i64
  store i64 %422, ptr %410, align 1, !tbaa !22
  %426 = getelementptr inbounds nuw i8, ptr %410, i64 %425
  %427 = icmp ugt ptr %426, %13
  %428 = select i1 %427, ptr %13, ptr %426
  %429 = and i32 %423, 7
  %430 = shl nuw nsw i64 %425, 3
  %431 = lshr i64 %422, %430
  %432 = zext i16 %47 to i64
  %433 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !12
  %435 = zext i32 %434 to i64
  %436 = and i64 %414, %435
  %437 = zext nneg i32 %429 to i64
  %438 = shl nuw nsw i64 %436, %437
  %439 = or i64 %438, %431
  %440 = add nuw nsw i32 %429, %48
  %441 = lshr i32 %440, 3
  %442 = zext nneg i32 %441 to i64
  store i64 %439, ptr %428, align 1, !tbaa !22
  %443 = getelementptr inbounds nuw i8, ptr %428, i64 %442
  %444 = icmp ugt ptr %443, %13
  %445 = select i1 %444, ptr %13, ptr %443
  %446 = and i32 %440, 7
  %447 = shl nuw nsw i64 %442, 3
  %448 = lshr i64 %439, %447
  %449 = zext i16 %74 to i64
  %450 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !12
  %452 = zext i32 %451 to i64
  %453 = and i64 %411, %452
  %454 = zext nneg i32 %446 to i64
  %455 = shl nuw nsw i64 %453, %454
  %456 = or i64 %455, %448
  %457 = add nuw nsw i32 %446, %75
  %458 = lshr i32 %457, 3
  %459 = zext nneg i32 %458 to i64
  store i64 %456, ptr %445, align 1, !tbaa !22
  %460 = getelementptr inbounds nuw i8, ptr %445, i64 %459
  %461 = icmp ugt ptr %460, %13
  %462 = select i1 %461, ptr %13, ptr %460
  %463 = and i32 %457, 7
  %464 = shl nuw nsw i64 %459, 3
  %465 = lshr i64 %456, %464
  %466 = zext nneg i32 %463 to i64
  %467 = shl nuw nsw i64 1, %466
  %468 = or i64 %465, %467
  %469 = add nuw nsw i32 %463, 1
  %470 = lshr i32 %469, 3
  %471 = zext nneg i32 %470 to i64
  store i64 %468, ptr %462, align 1, !tbaa !22
  %472 = getelementptr inbounds nuw i8, ptr %462, i64 %471
  %473 = icmp ugt ptr %472, %13
  %474 = select i1 %473, ptr %13, ptr %472
  %475 = icmp ult ptr %474, %13
  br i1 %475, label %476, label %486

476:                                              ; preds = %.loopexit
  %477 = and i32 %469, 7
  %478 = ptrtoint ptr %474 to i64
  %479 = ptrtoint ptr %0 to i64
  %480 = icmp ne i32 %477, 0
  %481 = zext i1 %480 to i64
  %482 = add i64 %478, %481
  %483 = freeze i64 %482
  %484 = sub i64 %483, %479
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %476, %.loopexit
  br label %487

487:                                              ; preds = %486, %476, %11
  %488 = phi i64 [ -70, %11 ], [ -70, %486 ], [ %484, %476 ]
  ret i64 %488
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 4}
!10 = !{!"", !11, i64 0, !11, i64 4}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !6, i64 4}
!19 = !{!"SeqDef_s", !11, i64 0, !6, i64 4, !6, i64 6}
!20 = !{!19, !6, i64 6}
!21 = !{!19, !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = distinct !{!24, !14}
