; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/fse_decompress.ll.mid'
source_filename = "/mydata/zstd/lib/common/fse_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.FSE_DState_t = type { i64, ptr }

@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -46, 1) i64 @FSE_buildDTable_wksp(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -46, 1) i64 @FSE_buildDTable_internal(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %11 = add i32 %2, 1
  %12 = shl nuw i32 1, %3
  %13 = add i32 %12, -1
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = zext nneg i32 %3 to i64
  %17 = shl nuw i64 1, %16
  %18 = add nuw i64 %17, 8
  %19 = add nuw i64 %18, %15
  %20 = icmp ugt i64 %19, %5
  %21 = icmp ugt i32 %2, 255
  %22 = or i1 %21, %20
  br i1 %22, label %.loopexit, label %23

23:                                               ; preds = %6
  %24 = icmp ugt i32 %3, 12
  br i1 %24, label %.loopexit, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %27 = shl nuw nsw i32 32768, %3
  %28 = lshr exact i32 %27, 16
  br label %29

29:                                               ; preds = %46, %25
  %30 = phi i64 [ 0, %25 ], [ %51, %46 ]
  %31 = phi i32 [ %13, %25 ], [ %49, %46 ]
  %32 = phi i16 [ 1, %25 ], [ %48, %46 ]
  %33 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %30
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = trunc i64 %30 to i8
  %38 = add i32 %31, -1
  %39 = zext i32 %31 to i64
  %40 = shl nuw nsw i64 %39, 2
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 %40
  store i8 %37, ptr %41, align 2, !tbaa !9
  br label %46

42:                                               ; preds = %29
  %43 = sext i16 %34 to i32
  %44 = icmp sgt i32 %28, %43
  %45 = select i1 %44, i16 %32, i16 0
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i16 [ 1, %36 ], [ %34, %42 ]
  %48 = phi i16 [ %32, %36 ], [ %45, %42 ]
  %49 = phi i32 [ %38, %36 ], [ %31, %42 ]
  %50 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %30
  store i16 %47, ptr %50, align 2, !tbaa !5
  %51 = add nuw nsw i64 %30, 1
  %52 = icmp eq i64 %51, %14
  br i1 %52, label %53, label %29, !llvm.loop !11

53:                                               ; preds = %46
  %54 = trunc nuw nsw i32 %3 to i16
  store i16 %54, ptr %0, align 4
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %48, ptr %55, align 2
  %56 = icmp eq i32 %49, %13
  %57 = lshr i32 %12, 1
  br i1 %56, label %.preheader, label %124

58:                                               ; preds = %.loopexit17
  %59 = zext nneg i32 %13 to i64
  %60 = lshr i32 %12, 3
  %61 = add nuw nsw i32 %60, 3
  %62 = add nuw nsw i32 %61, %57
  %63 = zext nneg i32 %62 to i64
  %64 = zext nneg i32 %12 to i64
  %65 = shl nuw nsw i64 %63, 1
  br label %106

.preheader:                                       ; preds = %53, %.loopexit17
  %66 = phi i64 [ %103, %.loopexit17 ], [ 0, %53 ]
  %67 = phi i64 [ %102, %.loopexit17 ], [ 0, %53 ]
  %68 = phi i64 [ %104, %.loopexit17 ], [ 0, %53 ]
  %69 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %66
  %70 = load i16, ptr %69, align 2, !tbaa !5
  %71 = getelementptr inbounds nuw i8, ptr %10, i64 %67
  store i64 %68, ptr %71, align 1, !tbaa !13
  %72 = icmp sgt i16 %70, 8
  br i1 %72, label %73, label %.loopexit17

73:                                               ; preds = %.preheader
  %74 = zext nneg i16 %70 to i64
  %75 = tail call i64 @llvm.umax.i64(i64 %74, i64 16)
  %76 = add nsw i64 %75, -9
  %77 = lshr i64 %76, 3
  %78 = add nuw nsw i64 %77, 1
  %79 = icmp samesign ult i16 %70, 33
  br i1 %79, label %.preheader54, label %80

80:                                               ; preds = %73
  %81 = and i64 %78, 4611686018427387900
  %82 = insertelement <2 x i64> poison, i64 %68, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %84

84:                                               ; preds = %84, %80
  %85 = phi i64 [ 0, %80 ], [ %90, %84 ]
  %86 = shl i64 %85, 3
  %87 = getelementptr inbounds nuw i8, ptr %71, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 24
  store <2 x i64> %83, ptr %88, align 1, !tbaa !13
  store <2 x i64> %83, ptr %89, align 1, !tbaa !13
  %90 = add nuw nsw i64 %85, 4
  %91 = icmp eq i64 %90, %81
  br i1 %91, label %92, label %84, !llvm.loop !15

92:                                               ; preds = %84
  %93 = shl nuw nsw i64 %81, 3
  %94 = or disjoint i64 %93, 8
  %95 = icmp eq i64 %78, %81
  br i1 %95, label %.loopexit17, label %.preheader54

.preheader54:                                     ; preds = %92, %73
  %.ph = phi i64 [ %94, %92 ], [ 8, %73 ]
  br label %96

96:                                               ; preds = %.preheader54, %96
  %97 = phi i64 [ %99, %96 ], [ %.ph, %.preheader54 ]
  %98 = getelementptr inbounds nuw i8, ptr %71, i64 %97
  store i64 %68, ptr %98, align 1, !tbaa !13
  %99 = add nuw nsw i64 %97, 8
  %100 = icmp samesign ult i64 %99, %74
  br i1 %100, label %96, label %.loopexit17, !llvm.loop !18

.loopexit17:                                      ; preds = %96, %92, %.preheader
  %101 = sext i16 %70 to i64
  %102 = add i64 %67, %101
  %103 = add nuw nsw i64 %66, 1
  %104 = add i64 %68, 72340172838076673
  %105 = icmp eq i64 %103, %14
  br i1 %105, label %58, label %.preheader, !llvm.loop !19

106:                                              ; preds = %106, %58
  %107 = phi i64 [ 0, %58 ], [ %122, %106 ]
  %108 = phi i64 [ 0, %58 ], [ %121, %106 ]
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 %107
  %110 = and i64 %108, %59
  %111 = load i8, ptr %109, align 1, !tbaa !20
  %112 = shl nuw nsw i64 %110, 2
  %113 = getelementptr inbounds nuw i8, ptr %26, i64 %112
  store i8 %111, ptr %113, align 2, !tbaa !9
  %114 = add nuw nsw i64 %108, %63
  %115 = and i64 %114, %59
  %116 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !20
  %118 = shl nuw nsw i64 %115, 2
  %119 = getelementptr inbounds nuw i8, ptr %26, i64 %118
  store i8 %117, ptr %119, align 2, !tbaa !9
  %120 = add nuw nsw i64 %108, %65
  %121 = and i64 %120, %59
  %122 = add nuw nsw i64 %107, 2
  %123 = icmp samesign ult i64 %122, %64
  br i1 %123, label %106, label %.loopexit16, !llvm.loop !21

124:                                              ; preds = %53
  %125 = lshr i32 %12, 3
  %126 = add nuw nsw i32 %125, 3
  %127 = add nuw nsw i32 %126, %57
  br label %128

128:                                              ; preds = %.loopexit18, %124
  %129 = phi i64 [ 0, %124 ], [ %176, %.loopexit18 ]
  %130 = phi i32 [ 0, %124 ], [ %175, %.loopexit18 ]
  %131 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %129
  %132 = load i16, ptr %131, align 2, !tbaa !5
  %133 = icmp sgt i16 %132, 0
  br i1 %133, label %134, label %.loopexit18

134:                                              ; preds = %128
  %135 = trunc i64 %129 to i8
  %136 = icmp eq i16 %132, 1
  br i1 %136, label %.thread, label %137

137:                                              ; preds = %134
  %138 = and i16 %132, 32766
  %139 = zext nneg i16 %138 to i32
  br label %140

140:                                              ; preds = %160, %137
  %141 = phi i32 [ %130, %137 ], [ %158, %160 ]
  %142 = phi i32 [ 0, %137 ], [ %161, %160 ]
  %143 = zext nneg i32 %141 to i64
  %144 = shl nuw nsw i64 %143, 2
  %145 = getelementptr inbounds nuw i8, ptr %26, i64 %144
  store i8 %135, ptr %145, align 2, !tbaa !9
  br label %146

146:                                              ; preds = %146, %140
  %147 = phi i32 [ %141, %140 ], [ %149, %146 ]
  %148 = add nuw i32 %147, %127
  %149 = and i32 %148, %13
  %150 = icmp ugt i32 %149, %49
  br i1 %150, label %146, label %151, !llvm.loop !22

151:                                              ; preds = %146
  %152 = zext nneg i32 %149 to i64
  %153 = shl nuw nsw i64 %152, 2
  %154 = getelementptr inbounds nuw i8, ptr %26, i64 %153
  store i8 %135, ptr %154, align 2, !tbaa !9
  br label %155

155:                                              ; preds = %155, %151
  %156 = phi i32 [ %149, %151 ], [ %158, %155 ]
  %157 = add nuw i32 %156, %127
  %158 = and i32 %157, %13
  %159 = icmp ugt i32 %158, %49
  br i1 %159, label %155, label %160, !llvm.loop !22

160:                                              ; preds = %155
  %161 = add i32 %142, 2
  %162 = icmp eq i32 %161, %139
  br i1 %162, label %163, label %140, !llvm.loop !23

163:                                              ; preds = %160
  %164 = and i16 %132, 1
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %.loopexit18, label %.thread

.thread:                                          ; preds = %134, %163
  %166 = phi i32 [ %158, %163 ], [ %130, %134 ]
  %167 = zext nneg i32 %166 to i64
  %168 = shl nuw nsw i64 %167, 2
  %169 = getelementptr inbounds nuw i8, ptr %26, i64 %168
  store i8 %135, ptr %169, align 2, !tbaa !9
  br label %170

170:                                              ; preds = %170, %.thread
  %171 = phi i32 [ %166, %.thread ], [ %173, %170 ]
  %172 = add nuw i32 %171, %127
  %173 = and i32 %172, %13
  %174 = icmp ugt i32 %173, %49
  br i1 %174, label %170, label %.loopexit18, !llvm.loop !22

.loopexit18:                                      ; preds = %170, %163, %128
  %175 = phi i32 [ %130, %128 ], [ %158, %163 ], [ %173, %170 ]
  %176 = add nuw nsw i64 %129, 1
  %177 = icmp eq i64 %176, %14
  br i1 %177, label %178, label %128, !llvm.loop !24

178:                                              ; preds = %.loopexit18
  %179 = icmp eq i32 %175, 0
  br i1 %179, label %180, label %.loopexit

180:                                              ; preds = %178
  %181 = zext nneg i32 %12 to i64
  br label %.loopexit16

.loopexit16:                                      ; preds = %106, %180
  %182 = phi i64 [ %181, %180 ], [ %64, %106 ]
  br label %183

183:                                              ; preds = %183, %.loopexit16
  %184 = phi i64 [ 0, %.loopexit16 ], [ %202, %183 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %187 = load i8, ptr %186, align 2, !tbaa !9
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !5
  %191 = add i16 %190, 1
  store i16 %191, ptr %189, align 2, !tbaa !5
  %192 = zext i16 %190 to i32
  %193 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %192, i1 true)
  %194 = xor i32 %193, 31
  %195 = sub nsw i32 %3, %194
  %196 = trunc nsw i32 %195 to i8
  %197 = getelementptr inbounds nuw i8, ptr %185, i64 3
  store i8 %196, ptr %197, align 1, !tbaa !25
  %198 = and i32 %195, 255
  %199 = shl i32 %192, %198
  %200 = sub i32 %199, %12
  %201 = trunc i32 %200 to i16
  store i16 %201, ptr %185, align 2, !tbaa !26
  %202 = add nuw nsw i64 %184, 1
  %203 = icmp eq i64 %202, %182
  br i1 %203, label %.loopexit, label %183, !llvm.loop !27

.loopexit:                                        ; preds = %183, %178, %23, %6
  %204 = phi i64 [ -1, %178 ], [ -46, %6 ], [ -44, %23 ], [ 0, %183 ]
  ret i64 %204
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.BIT_DStream_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.FSE_DState_t, align 8
  %12 = alloca %struct.BIT_DStream_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca %struct.FSE_DState_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = icmp eq i32 %7, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %777

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i32 255, ptr %16, align 4, !tbaa !28
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %22 = icmp ult i64 %6, 512
  br i1 %22, label %775, label %23

23:                                               ; preds = %20
  %24 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef 0) #10
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %775

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !28
  %28 = icmp ugt i32 %27, %4
  br i1 %28, label %775, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %31 = sub i64 %3, %24
  %32 = shl nuw i32 1, %27
  %33 = add nuw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = load i32, ptr %16, align 4, !tbaa !28
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 1
  %39 = zext nneg i32 %27 to i64
  %40 = shl nuw i64 1, %39
  %41 = shl nsw i64 %34, 2
  %42 = add nuw i64 %40, 11
  %43 = add i64 %42, %41
  %44 = add i64 %43, %38
  %45 = and i64 %44, -4
  %46 = add i64 %45, 516
  %47 = icmp ugt i64 %46, %6
  br i1 %47, label %775, label %48

48:                                               ; preds = %29
  %49 = add nuw i32 %32, 1
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 2
  %52 = getelementptr inbounds nuw i8, ptr %21, i64 %51
  %53 = add i64 %6, -512
  %54 = sub i64 %53, %51
  %55 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %21, ptr noundef %5, i32 noundef %35, i32 noundef %27, ptr noundef nonnull %52, i64 noundef %54)
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %775

57:                                               ; preds = %48
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %59 = load i16, ptr %58, align 2, !tbaa !30
  %60 = icmp eq i16 %59, 0
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %62 = getelementptr inbounds i8, ptr %61, i64 -3
  br i1 %60, label %451, label %63

63:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %64 = icmp eq i64 %31, 0
  br i1 %64, label %.loopexit64, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %66, align 8, !tbaa !32
  %67 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %67, ptr %68, align 8, !tbaa !36
  %69 = icmp ugt i64 %31, 7
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %72 = getelementptr inbounds i8, ptr %71, i64 -8
  %73 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %72, ptr %73, align 8, !tbaa !37
  %74 = load i64, ptr %72, align 1
  store i64 %74, ptr %9, align 8, !tbaa !38
  %75 = icmp ult i64 %74, 72057594037927936
  br i1 %75, label %.loopexit64, label %133

76:                                               ; preds = %65
  %77 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %30, ptr %77, align 8, !tbaa !37
  %78 = load i8, ptr %30, align 1, !tbaa !20
  %79 = zext i8 %78 to i64
  store i64 %79, ptr %9, align 8, !tbaa !38
  switch i64 %31, label %121 [
    i64 7, label %80
    i64 6, label %86
    i64 5, label %93
    i64 4, label %100
    i64 3, label %107
    i64 2, label %114
  ]

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %30, i64 6
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 48
  %85 = or disjoint i64 %84, %79
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i64 [ %79, %76 ], [ %85, %80 ]
  %88 = getelementptr inbounds nuw i8, ptr %30, i64 5
  %89 = load i8, ptr %88, align 1, !tbaa !20
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 40
  %92 = add nuw nsw i64 %91, %87
  br label %93

93:                                               ; preds = %86, %76
  %94 = phi i64 [ %79, %76 ], [ %92, %86 ]
  %95 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %96 = load i8, ptr %95, align 1, !tbaa !20
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 32
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %76
  %101 = phi i64 [ %79, %76 ], [ %99, %93 ]
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 24
  %106 = add nuw nsw i64 %105, %101
  br label %107

107:                                              ; preds = %100, %76
  %108 = phi i64 [ %79, %76 ], [ %106, %100 ]
  %109 = getelementptr inbounds nuw i8, ptr %30, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !20
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 16
  %113 = add nuw nsw i64 %112, %108
  br label %114

114:                                              ; preds = %107, %76
  %115 = phi i64 [ %79, %76 ], [ %113, %107 ]
  %116 = getelementptr inbounds nuw i8, ptr %30, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !20
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 8
  %120 = add nuw nsw i64 %119, %115
  store i64 %120, ptr %9, align 8, !tbaa !38
  br label %121

121:                                              ; preds = %114, %76
  %122 = getelementptr i8, ptr %2, i64 %3
  %123 = getelementptr i8, ptr %122, i64 -1
  %124 = load i8, ptr %123, align 1, !tbaa !20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %.loopexit64, label %126

126:                                              ; preds = %121
  %127 = zext i8 %124 to i32
  %128 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %127, i1 true)
  %129 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %130 = trunc nuw nsw i64 %31 to i32
  %131 = shl nuw nsw i32 %130, 3
  %reass.sub = sub nsw i32 %128, %131
  %132 = add nsw i32 %reass.sub, 41
  store i32 %132, ptr %129, align 8, !tbaa !39
  br label %141

133:                                              ; preds = %70
  %134 = lshr i64 %74, 56
  %135 = trunc nuw nsw i64 %134 to i32
  %136 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %135, i1 true)
  %137 = xor i32 %136, 31
  %138 = sub nuw nsw i32 8, %137
  %139 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %138, ptr %139, align 8, !tbaa !39
  %140 = icmp ult i64 %31, -119
  br i1 %140, label %141, label %.loopexit64

141:                                              ; preds = %133, %126
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %9, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %21)
  %142 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %143 = load i32, ptr %142, align 8, !tbaa !39
  %144 = icmp ugt i32 %143, 64
  br i1 %144, label %.loopexit64, label %145, !prof !40

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !37
  %148 = load ptr, ptr %68, align 8, !tbaa !36
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %145
  %151 = lshr i32 %143, 3
  %152 = zext nneg i32 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %147, i64 %153
  %155 = and i32 %143, 7
  %156 = load i64, ptr %154, align 1, !tbaa !13
  store i64 %156, ptr %9, align 8, !tbaa !38
  %157 = load ptr, ptr %66, align 8
  br label %163

158:                                              ; preds = %145
  %159 = load ptr, ptr %66, align 8, !tbaa !32
  %160 = icmp eq ptr %147, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load i64, ptr %9, align 8
  br label %163

163:                                              ; preds = %161, %150
  %164 = phi ptr [ %154, %150 ], [ %147, %161 ]
  %165 = phi ptr [ %157, %150 ], [ %147, %161 ]
  %166 = phi i64 [ %156, %150 ], [ %162, %161 ]
  %167 = phi i32 [ %155, %150 ], [ %143, %161 ]
  %168 = load i64, ptr %10, align 8
  %169 = load i64, ptr %11, align 8
  %170 = ptrtoint ptr %165 to i64
  %171 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %174 = load ptr, ptr %173, align 8
  br label %199

175:                                              ; preds = %158
  %176 = lshr i32 %143, 3
  %177 = zext nneg i32 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %147, i64 %178
  %180 = icmp ult ptr %179, %159
  %181 = ptrtoint ptr %147 to i64
  %182 = ptrtoint ptr %159 to i64
  %183 = sub i64 %181, %182
  %184 = trunc i64 %183 to i32
  %185 = select i1 %180, i32 %184, i32 %176
  %186 = zext i32 %185 to i64
  %187 = sub nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %147, i64 %187
  %189 = shl i32 %185, 3
  %190 = sub i32 %143, %189
  %191 = load i64, ptr %188, align 1, !tbaa !13
  store i64 %191, ptr %9, align 8, !tbaa !38
  %192 = load i64, ptr %10, align 8
  %193 = load i64, ptr %11, align 8
  %194 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %197 = load ptr, ptr %196, align 8
  %198 = icmp ugt i32 %190, 64
  br i1 %198, label %.loopexit65, label %199, !prof !41

199:                                              ; preds = %175, %163
  %200 = phi ptr [ %174, %163 ], [ %197, %175 ]
  %201 = phi ptr [ %172, %163 ], [ %195, %175 ]
  %202 = phi i64 [ %170, %163 ], [ %182, %175 ]
  %203 = phi i64 [ %169, %163 ], [ %193, %175 ]
  %204 = phi i64 [ %168, %163 ], [ %192, %175 ]
  %205 = phi i32 [ %167, %163 ], [ %190, %175 ]
  %206 = phi i64 [ %166, %163 ], [ %191, %175 ]
  %207 = phi ptr [ %165, %163 ], [ %159, %175 ]
  %208 = phi ptr [ %164, %163 ], [ %188, %175 ]
  br label %209

209:                                              ; preds = %256, %199
  %210 = phi ptr [ %328, %256 ], [ %0, %199 ]
  %211 = phi i32 [ %324, %256 ], [ %205, %199 ]
  %212 = phi i64 [ %241, %256 ], [ %206, %199 ]
  %213 = phi i64 [ %307, %256 ], [ %204, %199 ]
  %214 = phi i64 [ %326, %256 ], [ %203, %199 ]
  %215 = phi ptr [ %240, %256 ], [ %208, %199 ]
  %216 = icmp ult ptr %215, %148
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = lshr i32 %211, 3
  %219 = and i32 %211, 7
  br label %234

220:                                              ; preds = %209
  %221 = icmp eq ptr %215, %207
  br i1 %221, label %.loopexit65, label %222

222:                                              ; preds = %220
  %223 = lshr i32 %211, 3
  %224 = zext nneg i32 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %215, i64 %225
  %227 = icmp uge ptr %226, %207
  %228 = ptrtoint ptr %215 to i64
  %229 = sub i64 %228, %202
  %230 = trunc i64 %229 to i32
  %231 = select i1 %227, i32 %223, i32 %230
  %232 = shl i32 %231, 3
  %233 = sub i32 %211, %232
  br label %234

234:                                              ; preds = %222, %217
  %235 = phi i32 [ %218, %217 ], [ %231, %222 ]
  %236 = phi i32 [ %219, %217 ], [ %233, %222 ]
  %237 = phi i1 [ true, %217 ], [ %227, %222 ]
  %238 = zext i32 %235 to i64
  %239 = sub nsw i64 0, %238
  %240 = getelementptr inbounds i8, ptr %215, i64 %239
  %241 = load i64, ptr %240, align 1, !tbaa !13
  %242 = icmp ult ptr %210, %62
  %243 = and i1 %242, %237
  br i1 %243, label %256, label %.loopexit65

.loopexit65:                                      ; preds = %256, %234, %220, %175
  %244 = phi ptr [ %197, %175 ], [ %200, %220 ], [ %200, %234 ], [ %200, %256 ]
  %245 = phi ptr [ %195, %175 ], [ %201, %220 ], [ %201, %234 ], [ %201, %256 ]
  %246 = phi i64 [ %182, %175 ], [ %202, %220 ], [ %202, %234 ], [ %202, %256 ]
  %247 = phi ptr [ %159, %175 ], [ %207, %220 ], [ %207, %234 ], [ %207, %256 ]
  %248 = phi i64 [ %191, %175 ], [ %241, %256 ], [ %241, %234 ], [ %212, %220 ]
  %249 = phi i64 [ %193, %175 ], [ %326, %256 ], [ %214, %234 ], [ %214, %220 ]
  %250 = phi i64 [ %192, %175 ], [ %307, %256 ], [ %213, %234 ], [ %213, %220 ]
  %251 = phi ptr [ %0, %175 ], [ %328, %256 ], [ %210, %234 ], [ %210, %220 ]
  %252 = phi i32 [ %190, %175 ], [ %324, %256 ], [ %236, %234 ], [ %211, %220 ]
  %253 = phi ptr [ @BIT_reloadDStream.zeroFilled, %175 ], [ @BIT_reloadDStream.zeroFilled, %256 ], [ %240, %234 ], [ %215, %220 ]
  store i64 %248, ptr %9, align 8
  store i64 %250, ptr %10, align 8
  store i64 %249, ptr %11, align 8
  %254 = getelementptr inbounds i8, ptr %61, i64 -2
  %255 = icmp ugt ptr %251, %254
  br i1 %255, label %.loopexit64, label %.preheader63

256:                                              ; preds = %234
  %257 = getelementptr inbounds nuw [4 x i8], ptr %201, i64 %213
  %258 = load i16, ptr %257, align 2, !tbaa !5
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 2
  %260 = load i8, ptr %259, align 2, !tbaa !20
  %261 = getelementptr inbounds nuw i8, ptr %257, i64 3
  %262 = load i8, ptr %261, align 1, !tbaa !20
  %263 = zext i8 %262 to i32
  %264 = and i32 %236, 63
  %265 = zext nneg i32 %264 to i64
  %266 = shl i64 %241, %265
  %267 = sub nsw i32 0, %263
  %268 = and i32 %267, 63
  %269 = zext nneg i32 %268 to i64
  %270 = lshr i64 %266, %269
  %271 = add i32 %236, %263
  %272 = zext i16 %258 to i64
  store i8 %260, ptr %210, align 1, !tbaa !20
  %273 = getelementptr inbounds nuw [4 x i8], ptr %200, i64 %214
  %274 = load i16, ptr %273, align 2, !tbaa !5
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 2
  %276 = load i8, ptr %275, align 2, !tbaa !20
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 3
  %278 = load i8, ptr %277, align 1, !tbaa !20
  %279 = zext i8 %278 to i32
  %280 = and i32 %271, 63
  %281 = zext nneg i32 %280 to i64
  %282 = shl i64 %241, %281
  %283 = sub nsw i32 0, %279
  %284 = and i32 %283, 63
  %285 = zext nneg i32 %284 to i64
  %286 = lshr i64 %282, %285
  %287 = add i32 %271, %279
  %288 = zext i16 %274 to i64
  %289 = getelementptr inbounds nuw i8, ptr %210, i64 1
  store i8 %276, ptr %289, align 1, !tbaa !20
  %290 = getelementptr [4 x i8], ptr %201, i64 %270
  %291 = getelementptr [4 x i8], ptr %290, i64 %272
  %292 = load i16, ptr %291, align 2, !tbaa !5
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 2
  %294 = load i8, ptr %293, align 2, !tbaa !20
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 3
  %296 = load i8, ptr %295, align 1, !tbaa !20
  %297 = zext i8 %296 to i32
  %298 = and i32 %287, 63
  %299 = zext nneg i32 %298 to i64
  %300 = shl i64 %241, %299
  %301 = sub nsw i32 0, %297
  %302 = and i32 %301, 63
  %303 = zext nneg i32 %302 to i64
  %304 = lshr i64 %300, %303
  %305 = add i32 %287, %297
  %306 = zext i16 %292 to i64
  %307 = add i64 %304, %306
  %308 = getelementptr inbounds nuw i8, ptr %210, i64 2
  store i8 %294, ptr %308, align 1, !tbaa !20
  %309 = getelementptr [4 x i8], ptr %200, i64 %286
  %310 = getelementptr [4 x i8], ptr %309, i64 %288
  %311 = load i16, ptr %310, align 2, !tbaa !5
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 2
  %313 = load i8, ptr %312, align 2, !tbaa !20
  %314 = getelementptr inbounds nuw i8, ptr %310, i64 3
  %315 = load i8, ptr %314, align 1, !tbaa !20
  %316 = zext i8 %315 to i32
  %317 = and i32 %305, 63
  %318 = zext nneg i32 %317 to i64
  %319 = shl i64 %241, %318
  %320 = sub nsw i32 0, %316
  %321 = and i32 %320, 63
  %322 = zext nneg i32 %321 to i64
  %323 = lshr i64 %319, %322
  %324 = add i32 %305, %316
  %325 = zext i16 %311 to i64
  %326 = add i64 %323, %325
  %327 = getelementptr inbounds nuw i8, ptr %210, i64 3
  store i8 %313, ptr %327, align 1, !tbaa !20
  %328 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %329 = icmp ugt i32 %324, 64
  br i1 %329, label %.loopexit65, label %209, !prof !42, !llvm.loop !43

.preheader63:                                     ; preds = %.loopexit65, %436
  %330 = phi ptr [ %437, %436 ], [ %253, %.loopexit65 ]
  %331 = phi ptr [ %408, %436 ], [ %251, %.loopexit65 ]
  %332 = phi i64 [ %352, %436 ], [ %250, %.loopexit65 ]
  %333 = phi i64 [ %439, %436 ], [ %248, %.loopexit65 ]
  %334 = phi i32 [ %438, %436 ], [ %252, %.loopexit65 ]
  %335 = phi i64 [ %407, %436 ], [ %249, %.loopexit65 ]
  %336 = getelementptr inbounds nuw [4 x i8], ptr %245, i64 %332
  %337 = load i16, ptr %336, align 2, !tbaa !5
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 2
  %339 = load i8, ptr %338, align 2, !tbaa !20
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 3
  %341 = load i8, ptr %340, align 1, !tbaa !20
  %342 = zext i8 %341 to i32
  %343 = and i32 %334, 63
  %344 = zext nneg i32 %343 to i64
  %345 = shl i64 %333, %344
  %346 = sub nsw i32 0, %342
  %347 = and i32 %346, 63
  %348 = zext nneg i32 %347 to i64
  %349 = lshr i64 %345, %348
  %350 = add i32 %334, %342
  %351 = zext i16 %337 to i64
  %352 = add i64 %349, %351
  %353 = getelementptr inbounds nuw i8, ptr %331, i64 1
  store i8 %339, ptr %331, align 1, !tbaa !20
  %354 = icmp ugt i32 %350, 64
  br i1 %354, label %374, label %355, !prof !40

355:                                              ; preds = %.preheader63
  %356 = icmp ult ptr %330, %148
  br i1 %356, label %360, label %357

357:                                              ; preds = %355
  %358 = lshr i32 %350, 3
  %359 = and i32 %350, 7
  br label %378

360:                                              ; preds = %355
  %361 = icmp eq ptr %330, %247
  br i1 %361, label %385, label %362

362:                                              ; preds = %360
  %363 = lshr i32 %350, 3
  %364 = zext nneg i32 %363 to i64
  %365 = sub nsw i64 0, %364
  %366 = getelementptr inbounds i8, ptr %330, i64 %365
  %367 = icmp ult ptr %366, %247
  %368 = ptrtoint ptr %330 to i64
  %369 = sub i64 %368, %246
  %370 = trunc i64 %369 to i32
  %371 = select i1 %367, i32 %370, i32 %363
  %372 = shl i32 %371, 3
  %373 = sub i32 %350, %372
  br label %378

374:                                              ; preds = %.preheader63
  %.split53 = getelementptr inbounds nuw [4 x i8], ptr %244, i64 %335
  %375 = getelementptr inbounds nuw i8, ptr %.split53, i64 2
  %376 = load i8, ptr %375, align 2, !tbaa !20
  %377 = getelementptr inbounds nuw i8, ptr %331, i64 2
  store i8 %376, ptr %353, align 1, !tbaa !20
  br label %445

378:                                              ; preds = %362, %357
  %379 = phi i32 [ %358, %357 ], [ %371, %362 ]
  %380 = phi i32 [ %359, %357 ], [ %373, %362 ]
  %381 = zext i32 %379 to i64
  %382 = sub nsw i64 0, %381
  %383 = getelementptr inbounds i8, ptr %330, i64 %382
  %384 = load i64, ptr %383, align 1, !tbaa !13
  store i64 %384, ptr %9, align 8, !tbaa !38
  br label %385

385:                                              ; preds = %378, %360
  %386 = phi ptr [ %330, %360 ], [ %383, %378 ]
  %387 = phi i32 [ %350, %360 ], [ %380, %378 ]
  %388 = phi i64 [ %333, %360 ], [ %384, %378 ]
  %389 = icmp ugt ptr %353, %254
  br i1 %389, label %.loopexit64, label %390

390:                                              ; preds = %385
  %391 = getelementptr inbounds nuw [4 x i8], ptr %244, i64 %335
  %392 = load i16, ptr %391, align 2, !tbaa !5
  %393 = getelementptr inbounds nuw i8, ptr %391, i64 2
  %394 = load i8, ptr %393, align 2, !tbaa !20
  %395 = getelementptr inbounds nuw i8, ptr %391, i64 3
  %396 = load i8, ptr %395, align 1, !tbaa !20
  %397 = zext i8 %396 to i32
  %398 = and i32 %387, 63
  %399 = zext nneg i32 %398 to i64
  %400 = shl i64 %388, %399
  %401 = sub nsw i32 0, %397
  %402 = and i32 %401, 63
  %403 = zext nneg i32 %402 to i64
  %404 = lshr i64 %400, %403
  %405 = add i32 %387, %397
  %406 = zext i16 %392 to i64
  %407 = add i64 %404, %406
  %408 = getelementptr inbounds nuw i8, ptr %331, i64 2
  store i8 %394, ptr %353, align 1, !tbaa !20
  %409 = icmp ugt i32 %405, 64
  br i1 %409, label %441, label %410, !prof !40

410:                                              ; preds = %390
  %411 = icmp ult ptr %386, %148
  br i1 %411, label %415, label %412

412:                                              ; preds = %410
  %413 = lshr i32 %405, 3
  %414 = and i32 %405, 7
  br label %429

415:                                              ; preds = %410
  %416 = icmp eq ptr %386, %247
  br i1 %416, label %436, label %417

417:                                              ; preds = %415
  %418 = lshr i32 %405, 3
  %419 = zext nneg i32 %418 to i64
  %420 = sub nsw i64 0, %419
  %421 = getelementptr inbounds i8, ptr %386, i64 %420
  %422 = icmp ult ptr %421, %247
  %423 = ptrtoint ptr %386 to i64
  %424 = sub i64 %423, %246
  %425 = trunc i64 %424 to i32
  %426 = select i1 %422, i32 %425, i32 %418
  %427 = shl i32 %426, 3
  %428 = sub i32 %405, %427
  br label %429

429:                                              ; preds = %417, %412
  %430 = phi i32 [ %413, %412 ], [ %426, %417 ]
  %431 = phi i32 [ %414, %412 ], [ %428, %417 ]
  %432 = zext i32 %430 to i64
  %433 = sub nsw i64 0, %432
  %434 = getelementptr inbounds i8, ptr %386, i64 %433
  %435 = load i64, ptr %434, align 1, !tbaa !13
  store i64 %435, ptr %9, align 8, !tbaa !38
  br label %436

436:                                              ; preds = %429, %415
  %437 = phi ptr [ %386, %415 ], [ %434, %429 ]
  %438 = phi i32 [ %405, %415 ], [ %431, %429 ]
  %439 = phi i64 [ %388, %415 ], [ %435, %429 ]
  %440 = icmp ugt ptr %408, %254
  br i1 %440, label %.loopexit64, label %.preheader63

441:                                              ; preds = %390
  %.split = getelementptr inbounds nuw [4 x i8], ptr %245, i64 %352
  %442 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %443 = load i8, ptr %442, align 2, !tbaa !20
  %444 = getelementptr inbounds nuw i8, ptr %331, i64 3
  store i8 %443, ptr %408, align 1, !tbaa !20
  br label %445

445:                                              ; preds = %441, %374
  %446 = phi ptr [ %377, %374 ], [ %444, %441 ]
  %447 = ptrtoint ptr %446 to i64
  %448 = ptrtoint ptr %0 to i64
  %449 = sub i64 %447, %448
  br label %.loopexit64

.loopexit64:                                      ; preds = %436, %385, %445, %.loopexit65, %141, %133, %121, %70, %63
  %450 = phi i64 [ %449, %445 ], [ %31, %133 ], [ -72, %63 ], [ -1, %70 ], [ -20, %121 ], [ -20, %141 ], [ -70, %.loopexit65 ], [ -70, %385 ], [ -70, %436 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %775

451:                                              ; preds = %57
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %452 = call fastcc i64 @BIT_initDStream(ptr noundef %12, ptr noundef %30, i64 noundef %31)
  %453 = icmp ult i64 %452, -119
  br i1 %453, label %454, label %.loopexit

454:                                              ; preds = %451
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %12, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %14, ptr noundef %12, ptr noundef nonnull %21)
  %455 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %456 = load i32, ptr %455, align 8, !tbaa !39
  %457 = icmp ugt i32 %456, 64
  br i1 %457, label %.loopexit, label %458, !prof !40

458:                                              ; preds = %454
  %459 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %460 = load ptr, ptr %459, align 8, !tbaa !37
  %461 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %462 = load ptr, ptr %461, align 8, !tbaa !36
  %463 = icmp ult ptr %460, %462
  br i1 %463, label %473, label %464

464:                                              ; preds = %458
  %465 = lshr i32 %456, 3
  %466 = zext nneg i32 %465 to i64
  %467 = sub nsw i64 0, %466
  %468 = getelementptr inbounds i8, ptr %460, i64 %467
  %469 = and i32 %456, 7
  %470 = load i64, ptr %468, align 1, !tbaa !13
  store i64 %470, ptr %12, align 8, !tbaa !38
  %471 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %472 = load ptr, ptr %471, align 8
  br label %479

473:                                              ; preds = %458
  %474 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %475 = load ptr, ptr %474, align 8, !tbaa !32
  %476 = icmp eq ptr %460, %475
  br i1 %476, label %477, label %491

477:                                              ; preds = %473
  %478 = load i64, ptr %12, align 8
  br label %479

479:                                              ; preds = %477, %464
  %480 = phi ptr [ %468, %464 ], [ %460, %477 ]
  %481 = phi ptr [ %472, %464 ], [ %460, %477 ]
  %482 = phi i64 [ %470, %464 ], [ %478, %477 ]
  %483 = phi i32 [ %469, %464 ], [ %456, %477 ]
  %484 = load i64, ptr %13, align 8
  %485 = load i64, ptr %14, align 8
  %486 = ptrtoint ptr %481 to i64
  %487 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %488 = load ptr, ptr %487, align 8
  %489 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %490 = load ptr, ptr %489, align 8
  br label %515

491:                                              ; preds = %473
  %492 = lshr i32 %456, 3
  %493 = zext nneg i32 %492 to i64
  %494 = sub nsw i64 0, %493
  %495 = getelementptr inbounds i8, ptr %460, i64 %494
  %496 = icmp ult ptr %495, %475
  %497 = ptrtoint ptr %460 to i64
  %498 = ptrtoint ptr %475 to i64
  %499 = sub i64 %497, %498
  %500 = trunc i64 %499 to i32
  %501 = select i1 %496, i32 %500, i32 %492
  %502 = zext i32 %501 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %460, i64 %503
  %505 = shl i32 %501, 3
  %506 = sub i32 %456, %505
  %507 = load i64, ptr %504, align 1, !tbaa !13
  store i64 %507, ptr %12, align 8, !tbaa !38
  %508 = load i64, ptr %13, align 8
  %509 = load i64, ptr %14, align 8
  %510 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %513 = load ptr, ptr %512, align 8
  %514 = icmp ugt i32 %506, 64
  br i1 %514, label %.loopexit57, label %515, !prof !41

515:                                              ; preds = %491, %479
  %516 = phi ptr [ %490, %479 ], [ %513, %491 ]
  %517 = phi ptr [ %488, %479 ], [ %511, %491 ]
  %518 = phi i64 [ %486, %479 ], [ %498, %491 ]
  %519 = phi i64 [ %485, %479 ], [ %509, %491 ]
  %520 = phi i64 [ %484, %479 ], [ %508, %491 ]
  %521 = phi i32 [ %483, %479 ], [ %506, %491 ]
  %522 = phi i64 [ %482, %479 ], [ %507, %491 ]
  %523 = phi ptr [ %481, %479 ], [ %475, %491 ]
  %524 = phi ptr [ %480, %479 ], [ %504, %491 ]
  br label %525

525:                                              ; preds = %572, %515
  %526 = phi ptr [ %648, %572 ], [ %0, %515 ]
  %527 = phi i32 [ %636, %572 ], [ %521, %515 ]
  %528 = phi i64 [ %557, %572 ], [ %522, %515 ]
  %529 = phi i64 [ %626, %572 ], [ %520, %515 ]
  %530 = phi i64 [ %646, %572 ], [ %519, %515 ]
  %531 = phi ptr [ %556, %572 ], [ %524, %515 ]
  %532 = icmp ult ptr %531, %462
  br i1 %532, label %536, label %533

533:                                              ; preds = %525
  %534 = lshr i32 %527, 3
  %535 = and i32 %527, 7
  br label %550

536:                                              ; preds = %525
  %537 = icmp eq ptr %531, %523
  br i1 %537, label %.loopexit57, label %538

538:                                              ; preds = %536
  %539 = lshr i32 %527, 3
  %540 = zext nneg i32 %539 to i64
  %541 = sub nsw i64 0, %540
  %542 = getelementptr inbounds i8, ptr %531, i64 %541
  %543 = icmp uge ptr %542, %523
  %544 = ptrtoint ptr %531 to i64
  %545 = sub i64 %544, %518
  %546 = trunc i64 %545 to i32
  %547 = select i1 %543, i32 %539, i32 %546
  %548 = shl i32 %547, 3
  %549 = sub i32 %527, %548
  br label %550

550:                                              ; preds = %538, %533
  %551 = phi i32 [ %534, %533 ], [ %547, %538 ]
  %552 = phi i32 [ %535, %533 ], [ %549, %538 ]
  %553 = phi i1 [ true, %533 ], [ %543, %538 ]
  %554 = zext i32 %551 to i64
  %555 = sub nsw i64 0, %554
  %556 = getelementptr inbounds i8, ptr %531, i64 %555
  %557 = load i64, ptr %556, align 1, !tbaa !13
  %558 = icmp ult ptr %526, %62
  %559 = and i1 %558, %553
  br i1 %559, label %572, label %.loopexit57

.loopexit57:                                      ; preds = %572, %550, %536, %491
  %560 = phi ptr [ %513, %491 ], [ %516, %536 ], [ %516, %550 ], [ %516, %572 ]
  %561 = phi ptr [ %511, %491 ], [ %517, %536 ], [ %517, %550 ], [ %517, %572 ]
  %562 = phi i64 [ %498, %491 ], [ %518, %536 ], [ %518, %550 ], [ %518, %572 ]
  %563 = phi ptr [ %475, %491 ], [ %523, %536 ], [ %523, %550 ], [ %523, %572 ]
  %564 = phi i64 [ %509, %491 ], [ %646, %572 ], [ %530, %550 ], [ %530, %536 ]
  %565 = phi i64 [ %508, %491 ], [ %626, %572 ], [ %529, %550 ], [ %529, %536 ]
  %566 = phi ptr [ %0, %491 ], [ %648, %572 ], [ %526, %550 ], [ %526, %536 ]
  %567 = phi i32 [ %506, %491 ], [ %636, %572 ], [ %552, %550 ], [ %527, %536 ]
  %568 = phi i64 [ %507, %491 ], [ %557, %572 ], [ %557, %550 ], [ %528, %536 ]
  %569 = phi ptr [ @BIT_reloadDStream.zeroFilled, %491 ], [ @BIT_reloadDStream.zeroFilled, %572 ], [ %556, %550 ], [ %531, %536 ]
  store ptr %569, ptr %459, align 8
  store i32 %567, ptr %455, align 8
  store i64 %568, ptr %12, align 8
  store i64 %565, ptr %13, align 8
  store i64 %564, ptr %14, align 8
  %570 = getelementptr inbounds i8, ptr %61, i64 -2
  %571 = icmp ugt ptr %566, %570
  br i1 %571, label %.loopexit, label %.preheader

572:                                              ; preds = %550
  %573 = getelementptr inbounds nuw [4 x i8], ptr %517, i64 %529
  %574 = load i16, ptr %573, align 2, !tbaa !5
  %575 = getelementptr inbounds nuw i8, ptr %573, i64 2
  %576 = load i8, ptr %575, align 2, !tbaa !20
  %577 = getelementptr inbounds nuw i8, ptr %573, i64 3
  %578 = load i8, ptr %577, align 1, !tbaa !20
  %579 = zext i8 %578 to i32
  %580 = add i32 %552, %579
  %581 = sub i32 0, %580
  %582 = and i32 %581, 63
  %583 = zext nneg i32 %582 to i64
  %584 = lshr i64 %557, %583
  %585 = zext nneg i8 %578 to i64
  %586 = shl nsw i64 -1, %585
  %587 = xor i64 %586, -1
  %588 = and i64 %584, %587
  %589 = zext i16 %574 to i64
  store i8 %576, ptr %526, align 1, !tbaa !20
  %590 = getelementptr inbounds nuw [4 x i8], ptr %516, i64 %530
  %591 = load i16, ptr %590, align 2, !tbaa !5
  %592 = getelementptr inbounds nuw i8, ptr %590, i64 2
  %593 = load i8, ptr %592, align 2, !tbaa !20
  %594 = getelementptr inbounds nuw i8, ptr %590, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !20
  %596 = zext i8 %595 to i32
  %597 = add i32 %580, %596
  %598 = sub i32 0, %597
  %599 = and i32 %598, 63
  %600 = zext nneg i32 %599 to i64
  %601 = lshr i64 %557, %600
  %602 = zext nneg i8 %595 to i64
  %603 = shl nsw i64 -1, %602
  %604 = xor i64 %603, -1
  %605 = and i64 %601, %604
  %606 = zext i16 %591 to i64
  %607 = getelementptr inbounds nuw i8, ptr %526, i64 1
  store i8 %593, ptr %607, align 1, !tbaa !20
  %608 = getelementptr inbounds nuw [4 x i8], ptr %517, i64 %588
  %609 = getelementptr inbounds nuw [4 x i8], ptr %608, i64 %589
  %610 = load i16, ptr %609, align 2, !tbaa !5
  %611 = getelementptr inbounds nuw i8, ptr %609, i64 2
  %612 = load i8, ptr %611, align 2, !tbaa !20
  %613 = getelementptr inbounds nuw i8, ptr %609, i64 3
  %614 = load i8, ptr %613, align 1, !tbaa !20
  %615 = zext i8 %614 to i32
  %616 = add i32 %597, %615
  %617 = sub i32 0, %616
  %618 = and i32 %617, 63
  %619 = zext nneg i32 %618 to i64
  %620 = lshr i64 %557, %619
  %621 = zext nneg i8 %614 to i64
  %622 = shl nsw i64 -1, %621
  %623 = xor i64 %622, -1
  %624 = and i64 %620, %623
  %625 = zext i16 %610 to i64
  %626 = add nuw i64 %624, %625
  %627 = getelementptr inbounds nuw i8, ptr %526, i64 2
  store i8 %612, ptr %627, align 1, !tbaa !20
  %628 = getelementptr inbounds nuw [4 x i8], ptr %516, i64 %605
  %629 = getelementptr inbounds nuw [4 x i8], ptr %628, i64 %606
  %630 = load i16, ptr %629, align 2, !tbaa !5
  %631 = getelementptr inbounds nuw i8, ptr %629, i64 2
  %632 = load i8, ptr %631, align 2, !tbaa !20
  %633 = getelementptr inbounds nuw i8, ptr %629, i64 3
  %634 = load i8, ptr %633, align 1, !tbaa !20
  %635 = zext i8 %634 to i32
  %636 = add i32 %616, %635
  %637 = sub i32 0, %636
  %638 = and i32 %637, 63
  %639 = zext nneg i32 %638 to i64
  %640 = lshr i64 %557, %639
  %641 = zext nneg i8 %634 to i64
  %642 = shl nsw i64 -1, %641
  %643 = xor i64 %642, -1
  %644 = and i64 %640, %643
  %645 = zext i16 %630 to i64
  %646 = add nuw i64 %644, %645
  %647 = getelementptr inbounds nuw i8, ptr %526, i64 3
  store i8 %632, ptr %647, align 1, !tbaa !20
  %648 = getelementptr inbounds nuw i8, ptr %526, i64 4
  %649 = icmp ugt i32 %636, 64
  br i1 %649, label %.loopexit57, label %525, !prof !42, !llvm.loop !43

.preheader:                                       ; preds = %.loopexit57, %760
  %650 = phi ptr [ %761, %760 ], [ %569, %.loopexit57 ]
  %651 = phi ptr [ %731, %760 ], [ %566, %.loopexit57 ]
  %652 = phi i64 [ %673, %760 ], [ %565, %.loopexit57 ]
  %653 = phi i64 [ %763, %760 ], [ %568, %.loopexit57 ]
  %654 = phi i32 [ %762, %760 ], [ %567, %.loopexit57 ]
  %655 = phi i64 [ %730, %760 ], [ %564, %.loopexit57 ]
  %656 = getelementptr inbounds nuw [4 x i8], ptr %561, i64 %652
  %657 = load i16, ptr %656, align 2, !tbaa !5
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 2
  %659 = load i8, ptr %658, align 2, !tbaa !20
  %660 = getelementptr inbounds nuw i8, ptr %656, i64 3
  %661 = load i8, ptr %660, align 1, !tbaa !20
  %662 = zext i8 %661 to i32
  %663 = add i32 %654, %662
  %664 = sub i32 0, %663
  %665 = and i32 %664, 63
  %666 = zext nneg i32 %665 to i64
  %667 = lshr i64 %653, %666
  %668 = zext nneg i8 %661 to i64
  %669 = shl nsw i64 -1, %668
  %670 = xor i64 %669, -1
  %671 = and i64 %667, %670
  %672 = zext i16 %657 to i64
  %673 = add nuw i64 %671, %672
  %674 = getelementptr inbounds nuw i8, ptr %651, i64 1
  store i8 %659, ptr %651, align 1, !tbaa !20
  %675 = icmp ugt i32 %663, 64
  br i1 %675, label %703, label %676, !prof !40

676:                                              ; preds = %.preheader
  %677 = icmp ult ptr %650, %462
  br i1 %677, label %685, label %678

678:                                              ; preds = %676
  %679 = lshr i32 %663, 3
  %680 = zext nneg i32 %679 to i64
  %681 = sub nsw i64 0, %680
  %682 = getelementptr inbounds i8, ptr %650, i64 %681
  %683 = and i32 %663, 7
  %684 = load i64, ptr %682, align 1, !tbaa !13
  br label %707

685:                                              ; preds = %676
  %686 = icmp eq ptr %650, %563
  br i1 %686, label %707, label %687

687:                                              ; preds = %685
  %688 = lshr i32 %663, 3
  %689 = zext nneg i32 %688 to i64
  %690 = sub nsw i64 0, %689
  %691 = getelementptr inbounds i8, ptr %650, i64 %690
  %692 = icmp ult ptr %691, %563
  %693 = ptrtoint ptr %650 to i64
  %694 = sub i64 %693, %562
  %695 = trunc i64 %694 to i32
  %696 = select i1 %692, i32 %695, i32 %688
  %697 = zext i32 %696 to i64
  %698 = sub nsw i64 0, %697
  %699 = getelementptr inbounds i8, ptr %650, i64 %698
  %700 = shl i32 %696, 3
  %701 = sub i32 %663, %700
  %702 = load i64, ptr %699, align 1, !tbaa !13
  br label %707

703:                                              ; preds = %.preheader
  %.split55 = getelementptr inbounds nuw [4 x i8], ptr %560, i64 %655
  %704 = getelementptr inbounds nuw i8, ptr %.split55, i64 2
  %705 = load i8, ptr %704, align 2, !tbaa !20
  %706 = getelementptr inbounds nuw i8, ptr %651, i64 2
  store i8 %705, ptr %674, align 1, !tbaa !20
  br label %769

707:                                              ; preds = %687, %685, %678
  %708 = phi ptr [ %650, %685 ], [ %682, %678 ], [ %699, %687 ]
  %709 = phi i32 [ %663, %685 ], [ %683, %678 ], [ %701, %687 ]
  %710 = phi i64 [ %653, %685 ], [ %684, %678 ], [ %702, %687 ]
  %711 = icmp ugt ptr %674, %570
  br i1 %711, label %.loopexit, label %712

712:                                              ; preds = %707
  %713 = getelementptr inbounds nuw [4 x i8], ptr %560, i64 %655
  %714 = load i16, ptr %713, align 2, !tbaa !5
  %715 = getelementptr inbounds nuw i8, ptr %713, i64 2
  %716 = load i8, ptr %715, align 2, !tbaa !20
  %717 = getelementptr inbounds nuw i8, ptr %713, i64 3
  %718 = load i8, ptr %717, align 1, !tbaa !20
  %719 = zext i8 %718 to i32
  %720 = add i32 %709, %719
  %721 = sub i32 0, %720
  %722 = and i32 %721, 63
  %723 = zext nneg i32 %722 to i64
  %724 = lshr i64 %710, %723
  %725 = zext nneg i8 %718 to i64
  %726 = shl nsw i64 -1, %725
  %727 = xor i64 %726, -1
  %728 = and i64 %724, %727
  %729 = zext i16 %714 to i64
  %730 = add nuw i64 %728, %729
  %731 = getelementptr inbounds nuw i8, ptr %651, i64 2
  store i8 %716, ptr %674, align 1, !tbaa !20
  %732 = icmp ugt i32 %720, 64
  br i1 %732, label %765, label %733, !prof !40

733:                                              ; preds = %712
  %734 = icmp ult ptr %708, %462
  br i1 %734, label %742, label %735

735:                                              ; preds = %733
  %736 = lshr i32 %720, 3
  %737 = zext nneg i32 %736 to i64
  %738 = sub nsw i64 0, %737
  %739 = getelementptr inbounds i8, ptr %708, i64 %738
  %740 = and i32 %720, 7
  %741 = load i64, ptr %739, align 1, !tbaa !13
  br label %760

742:                                              ; preds = %733
  %743 = icmp eq ptr %708, %563
  br i1 %743, label %760, label %744

744:                                              ; preds = %742
  %745 = lshr i32 %720, 3
  %746 = zext nneg i32 %745 to i64
  %747 = sub nsw i64 0, %746
  %748 = getelementptr inbounds i8, ptr %708, i64 %747
  %749 = icmp ult ptr %748, %563
  %750 = ptrtoint ptr %708 to i64
  %751 = sub i64 %750, %562
  %752 = trunc i64 %751 to i32
  %753 = select i1 %749, i32 %752, i32 %745
  %754 = zext i32 %753 to i64
  %755 = sub nsw i64 0, %754
  %756 = getelementptr inbounds i8, ptr %708, i64 %755
  %757 = shl i32 %753, 3
  %758 = sub i32 %720, %757
  %759 = load i64, ptr %756, align 1, !tbaa !13
  br label %760

760:                                              ; preds = %744, %742, %735
  %761 = phi ptr [ %708, %742 ], [ %739, %735 ], [ %756, %744 ]
  %762 = phi i32 [ %720, %742 ], [ %740, %735 ], [ %758, %744 ]
  %763 = phi i64 [ %710, %742 ], [ %741, %735 ], [ %759, %744 ]
  %764 = icmp ugt ptr %731, %570
  br i1 %764, label %.loopexit, label %.preheader

765:                                              ; preds = %712
  %.split54 = getelementptr inbounds nuw [4 x i8], ptr %561, i64 %673
  %766 = getelementptr inbounds nuw i8, ptr %.split54, i64 2
  %767 = load i8, ptr %766, align 2, !tbaa !20
  %768 = getelementptr inbounds nuw i8, ptr %651, i64 3
  store i8 %767, ptr %731, align 1, !tbaa !20
  br label %769

769:                                              ; preds = %765, %703
  %770 = phi ptr [ %706, %703 ], [ %768, %765 ]
  %771 = ptrtoint ptr %770 to i64
  %772 = ptrtoint ptr %0 to i64
  %773 = sub i64 %771, %772
  br label %.loopexit

.loopexit:                                        ; preds = %760, %707, %769, %.loopexit57, %454, %451
  %774 = phi i64 [ %773, %769 ], [ %452, %451 ], [ -20, %454 ], [ -70, %.loopexit57 ], [ -70, %707 ], [ -70, %760 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %775

775:                                              ; preds = %.loopexit, %.loopexit64, %48, %29, %26, %23, %20
  %776 = phi i64 [ %55, %48 ], [ -1, %20 ], [ -44, %29 ], [ %450, %.loopexit64 ], [ %774, %.loopexit ], [ -44, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %777

777:                                              ; preds = %775, %18
  %778 = phi i64 [ %19, %18 ], [ %776, %775 ]
  ret i64 %778
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.BIT_DStream_t, align 8
  %9 = alloca %struct.FSE_DState_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.BIT_DStream_t, align 8
  %12 = alloca %struct.FSE_DState_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store i32 255, ptr %15, align 4, !tbaa !28
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %17 = icmp ult i64 %6, 512
  br i1 %17, label %767, label %18

18:                                               ; preds = %7
  %19 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3, i32 noundef 1) #10
  %20 = icmp ult i64 %19, -119
  br i1 %20, label %21, label %767

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4, !tbaa !28
  %23 = icmp ugt i32 %22, %4
  br i1 %23, label %767, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %26 = sub i64 %3, %19
  %27 = shl nuw i32 1, %22
  %28 = add nuw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = load i32, ptr %15, align 4, !tbaa !28
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = zext nneg i32 %22 to i64
  %35 = shl nuw i64 1, %34
  %36 = shl nsw i64 %29, 2
  %37 = add nuw i64 %35, 11
  %38 = add i64 %37, %36
  %39 = add i64 %38, %33
  %40 = and i64 %39, -4
  %41 = add i64 %40, 516
  %42 = icmp ugt i64 %41, %6
  br i1 %42, label %767, label %43

43:                                               ; preds = %24
  %44 = add nuw i32 %27, 1
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 2
  %47 = getelementptr inbounds nuw i8, ptr %16, i64 %46
  %48 = add i64 %6, -512
  %49 = sub i64 %48, %46
  %50 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %16, ptr noundef %5, i32 noundef %30, i32 noundef %22, ptr noundef nonnull %47, i64 noundef %49)
  %51 = icmp ult i64 %50, -119
  br i1 %51, label %52, label %767

52:                                               ; preds = %43
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %54 = load i16, ptr %53, align 2, !tbaa !30
  %55 = icmp eq i16 %54, 0
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %57 = getelementptr inbounds i8, ptr %56, i64 -3
  br i1 %55, label %449, label %58

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %59 = icmp eq i64 %26, 0
  br i1 %59, label %.loopexit66, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %25, ptr %61, align 8, !tbaa !32
  %62 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %63 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %62, ptr %63, align 8, !tbaa !36
  %64 = icmp ugt i64 %26, 7
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %67 = getelementptr inbounds i8, ptr %66, i64 -8
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %67, ptr %68, align 8, !tbaa !37
  %69 = load i64, ptr %67, align 1
  store i64 %69, ptr %8, align 8, !tbaa !38
  %70 = icmp ult i64 %69, 72057594037927936
  br i1 %70, label %.loopexit66, label %128

71:                                               ; preds = %60
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %25, ptr %72, align 8, !tbaa !37
  %73 = load i8, ptr %25, align 1, !tbaa !20
  %74 = zext i8 %73 to i64
  store i64 %74, ptr %8, align 8, !tbaa !38
  switch i64 %26, label %116 [
    i64 7, label %75
    i64 6, label %81
    i64 5, label %88
    i64 4, label %95
    i64 3, label %102
    i64 2, label %109
  ]

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %25, i64 6
  %77 = load i8, ptr %76, align 1, !tbaa !20
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 48
  %80 = or disjoint i64 %79, %74
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i64 [ %74, %71 ], [ %80, %75 ]
  %83 = getelementptr inbounds nuw i8, ptr %25, i64 5
  %84 = load i8, ptr %83, align 1, !tbaa !20
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 40
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %71
  %89 = phi i64 [ %74, %71 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %91 = load i8, ptr %90, align 1, !tbaa !20
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 32
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %71
  %96 = phi i64 [ %74, %71 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %25, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !20
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %71
  %103 = phi i64 [ %74, %71 ], [ %101, %95 ]
  %104 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !20
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 16
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %71
  %110 = phi i64 [ %74, %71 ], [ %108, %102 ]
  %111 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !20
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 8
  %115 = add nuw nsw i64 %114, %110
  store i64 %115, ptr %8, align 8, !tbaa !38
  br label %116

116:                                              ; preds = %109, %71
  %117 = getelementptr i8, ptr %2, i64 %3
  %118 = getelementptr i8, ptr %117, i64 -1
  %119 = load i8, ptr %118, align 1, !tbaa !20
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %.loopexit66, label %121

121:                                              ; preds = %116
  %122 = zext i8 %119 to i32
  %123 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %122, i1 true)
  %124 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %125 = trunc nuw nsw i64 %26 to i32
  %126 = shl nuw nsw i32 %125, 3
  %reass.sub = sub nsw i32 %123, %126
  %127 = add nsw i32 %reass.sub, 41
  store i32 %127, ptr %124, align 8, !tbaa !39
  br label %136

128:                                              ; preds = %65
  %129 = lshr i64 %69, 56
  %130 = trunc nuw nsw i64 %129 to i32
  %131 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %130, i1 true)
  %132 = xor i32 %131, 31
  %133 = sub nuw nsw i32 8, %132
  %134 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %133, ptr %134, align 8, !tbaa !39
  %135 = icmp ult i64 %26, -119
  br i1 %135, label %136, label %.loopexit66

136:                                              ; preds = %128, %121
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %16)
  %137 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %138 = load i32, ptr %137, align 8, !tbaa !39
  %139 = icmp ugt i32 %138, 64
  br i1 %139, label %.loopexit66, label %140, !prof !40

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %142 = load ptr, ptr %141, align 8, !tbaa !37
  %143 = load ptr, ptr %63, align 8, !tbaa !36
  %144 = icmp ult ptr %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = lshr i32 %138, 3
  %147 = zext nneg i32 %146 to i64
  %148 = sub nsw i64 0, %147
  %149 = getelementptr inbounds i8, ptr %142, i64 %148
  %150 = and i32 %138, 7
  %151 = load i64, ptr %149, align 1, !tbaa !13
  store i64 %151, ptr %8, align 8, !tbaa !38
  %152 = load ptr, ptr %61, align 8
  br label %.thread

153:                                              ; preds = %140
  %154 = load ptr, ptr %61, align 8, !tbaa !32
  %155 = icmp eq ptr %142, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i64, ptr %8, align 8
  br label %.thread

.thread:                                          ; preds = %156, %145
  %.ph = phi ptr [ %149, %145 ], [ %142, %156 ]
  %.ph53 = phi ptr [ %152, %145 ], [ %142, %156 ]
  %.ph54 = phi i64 [ %151, %145 ], [ %157, %156 ]
  %.ph55 = phi i32 [ %150, %145 ], [ %138, %156 ]
  %158 = load i64, ptr %9, align 8
  %159 = load i64, ptr %10, align 8
  %160 = ptrtoint ptr %.ph53 to i64
  %161 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %164 = load ptr, ptr %163, align 8
  br label %189

165:                                              ; preds = %153
  %166 = lshr i32 %138, 3
  %167 = zext nneg i32 %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, ptr %142, i64 %168
  %170 = icmp ult ptr %169, %154
  %171 = ptrtoint ptr %142 to i64
  %172 = ptrtoint ptr %154 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  %175 = select i1 %170, i32 %174, i32 %166
  %176 = zext i32 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %142, i64 %177
  %179 = shl i32 %175, 3
  %180 = sub i32 %138, %179
  %181 = load i64, ptr %178, align 1, !tbaa !13
  store i64 %181, ptr %8, align 8, !tbaa !38
  %182 = load i64, ptr %9, align 8
  %183 = load i64, ptr %10, align 8
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %187 = load ptr, ptr %186, align 8
  %188 = icmp ugt i32 %180, 64
  br i1 %188, label %241, label %189, !prof !41

189:                                              ; preds = %.thread, %165
  %190 = phi ptr [ %164, %.thread ], [ %187, %165 ]
  %191 = phi ptr [ %162, %.thread ], [ %185, %165 ]
  %192 = phi i64 [ %160, %.thread ], [ %172, %165 ]
  %193 = phi i64 [ %159, %.thread ], [ %183, %165 ]
  %194 = phi i64 [ %158, %.thread ], [ %182, %165 ]
  %195 = phi i32 [ %.ph55, %.thread ], [ %180, %165 ]
  %196 = phi i64 [ %.ph54, %.thread ], [ %181, %165 ]
  %197 = phi ptr [ %.ph53, %.thread ], [ %154, %165 ]
  %198 = phi ptr [ %.ph, %.thread ], [ %178, %165 ]
  br label %199

199:                                              ; preds = %254, %189
  %200 = phi i64 [ %231, %254 ], [ %196, %189 ]
  %201 = phi ptr [ %326, %254 ], [ %0, %189 ]
  %202 = phi i32 [ %322, %254 ], [ %195, %189 ]
  %203 = phi i64 [ %305, %254 ], [ %194, %189 ]
  %204 = phi i64 [ %324, %254 ], [ %193, %189 ]
  %205 = phi ptr [ %230, %254 ], [ %198, %189 ]
  %206 = icmp ult ptr %205, %143
  br i1 %206, label %210, label %207

207:                                              ; preds = %199
  %208 = lshr i32 %202, 3
  %209 = and i32 %202, 7
  br label %224

210:                                              ; preds = %199
  %211 = icmp eq ptr %205, %197
  br i1 %211, label %234, label %212

212:                                              ; preds = %210
  %213 = lshr i32 %202, 3
  %214 = zext nneg i32 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %205, i64 %215
  %217 = icmp uge ptr %216, %197
  %218 = ptrtoint ptr %205 to i64
  %219 = sub i64 %218, %192
  %220 = trunc i64 %219 to i32
  %221 = select i1 %217, i32 %213, i32 %220
  %222 = shl i32 %221, 3
  %223 = sub i32 %202, %222
  br label %224

224:                                              ; preds = %212, %207
  %225 = phi i32 [ %208, %207 ], [ %221, %212 ]
  %226 = phi i32 [ %209, %207 ], [ %223, %212 ]
  %227 = phi i1 [ true, %207 ], [ %217, %212 ]
  %228 = zext i32 %225 to i64
  %229 = sub nsw i64 0, %228
  %230 = getelementptr inbounds i8, ptr %205, i64 %229
  %231 = load i64, ptr %230, align 1, !tbaa !13
  %232 = icmp ult ptr %201, %57
  %233 = and i1 %232, %227
  br i1 %233, label %254, label %234

234:                                              ; preds = %254, %224, %210
  %235 = phi i64 [ %231, %254 ], [ %231, %224 ], [ %200, %210 ]
  %236 = phi i64 [ %324, %254 ], [ %204, %224 ], [ %204, %210 ]
  %237 = phi i64 [ %305, %254 ], [ %203, %224 ], [ %203, %210 ]
  %238 = phi ptr [ %326, %254 ], [ %201, %224 ], [ %201, %210 ]
  %239 = phi i32 [ %322, %254 ], [ %226, %224 ], [ %202, %210 ]
  %240 = phi ptr [ @BIT_reloadDStream.zeroFilled, %254 ], [ %230, %224 ], [ %205, %210 ]
  store i64 %235, ptr %8, align 8
  br label %241

241:                                              ; preds = %234, %165
  %242 = phi ptr [ %187, %165 ], [ %190, %234 ]
  %243 = phi ptr [ %185, %165 ], [ %191, %234 ]
  %244 = phi i64 [ %172, %165 ], [ %192, %234 ]
  %245 = phi ptr [ %154, %165 ], [ %197, %234 ]
  %246 = phi i64 [ %183, %165 ], [ %236, %234 ]
  %247 = phi i64 [ %182, %165 ], [ %237, %234 ]
  %248 = phi ptr [ %0, %165 ], [ %238, %234 ]
  %249 = phi i32 [ %180, %165 ], [ %239, %234 ]
  %250 = phi i64 [ %181, %165 ], [ %235, %234 ]
  %251 = phi ptr [ @BIT_reloadDStream.zeroFilled, %165 ], [ %240, %234 ]
  store i64 %247, ptr %9, align 8
  store i64 %246, ptr %10, align 8
  %252 = getelementptr inbounds i8, ptr %56, i64 -2
  %253 = icmp ugt ptr %248, %252
  br i1 %253, label %.loopexit66, label %.preheader65

254:                                              ; preds = %224
  %255 = getelementptr inbounds nuw [4 x i8], ptr %191, i64 %203
  %256 = load i16, ptr %255, align 2, !tbaa !5
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 2
  %258 = load i8, ptr %257, align 2, !tbaa !20
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 3
  %260 = load i8, ptr %259, align 1, !tbaa !20
  %261 = zext i8 %260 to i32
  %262 = and i32 %226, 63
  %263 = zext nneg i32 %262 to i64
  %264 = shl i64 %231, %263
  %265 = sub nsw i32 0, %261
  %266 = and i32 %265, 63
  %267 = zext nneg i32 %266 to i64
  %268 = lshr i64 %264, %267
  %269 = add i32 %226, %261
  %270 = zext i16 %256 to i64
  store i8 %258, ptr %201, align 1, !tbaa !20
  %271 = getelementptr inbounds nuw [4 x i8], ptr %190, i64 %204
  %272 = load i16, ptr %271, align 2, !tbaa !5
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 2
  %274 = load i8, ptr %273, align 2, !tbaa !20
  %275 = getelementptr inbounds nuw i8, ptr %271, i64 3
  %276 = load i8, ptr %275, align 1, !tbaa !20
  %277 = zext i8 %276 to i32
  %278 = and i32 %269, 63
  %279 = zext nneg i32 %278 to i64
  %280 = shl i64 %231, %279
  %281 = sub nsw i32 0, %277
  %282 = and i32 %281, 63
  %283 = zext nneg i32 %282 to i64
  %284 = lshr i64 %280, %283
  %285 = add i32 %269, %277
  %286 = zext i16 %272 to i64
  %287 = getelementptr inbounds nuw i8, ptr %201, i64 1
  store i8 %274, ptr %287, align 1, !tbaa !20
  %288 = getelementptr [4 x i8], ptr %191, i64 %268
  %289 = getelementptr [4 x i8], ptr %288, i64 %270
  %290 = load i16, ptr %289, align 2, !tbaa !5
  %291 = getelementptr inbounds nuw i8, ptr %289, i64 2
  %292 = load i8, ptr %291, align 2, !tbaa !20
  %293 = getelementptr inbounds nuw i8, ptr %289, i64 3
  %294 = load i8, ptr %293, align 1, !tbaa !20
  %295 = zext i8 %294 to i32
  %296 = and i32 %285, 63
  %297 = zext nneg i32 %296 to i64
  %298 = shl i64 %231, %297
  %299 = sub nsw i32 0, %295
  %300 = and i32 %299, 63
  %301 = zext nneg i32 %300 to i64
  %302 = lshr i64 %298, %301
  %303 = add i32 %285, %295
  %304 = zext i16 %290 to i64
  %305 = add i64 %302, %304
  %306 = getelementptr inbounds nuw i8, ptr %201, i64 2
  store i8 %292, ptr %306, align 1, !tbaa !20
  %307 = getelementptr [4 x i8], ptr %190, i64 %284
  %308 = getelementptr [4 x i8], ptr %307, i64 %286
  %309 = load i16, ptr %308, align 2, !tbaa !5
  %310 = getelementptr inbounds nuw i8, ptr %308, i64 2
  %311 = load i8, ptr %310, align 2, !tbaa !20
  %312 = getelementptr inbounds nuw i8, ptr %308, i64 3
  %313 = load i8, ptr %312, align 1, !tbaa !20
  %314 = zext i8 %313 to i32
  %315 = and i32 %303, 63
  %316 = zext nneg i32 %315 to i64
  %317 = shl i64 %231, %316
  %318 = sub nsw i32 0, %314
  %319 = and i32 %318, 63
  %320 = zext nneg i32 %319 to i64
  %321 = lshr i64 %317, %320
  %322 = add i32 %303, %314
  %323 = zext i16 %309 to i64
  %324 = add i64 %321, %323
  %325 = getelementptr inbounds nuw i8, ptr %201, i64 3
  store i8 %311, ptr %325, align 1, !tbaa !20
  %326 = getelementptr inbounds nuw i8, ptr %201, i64 4
  %327 = icmp ugt i32 %322, 64
  br i1 %327, label %234, label %199, !prof !42, !llvm.loop !43

.preheader65:                                     ; preds = %241, %434
  %328 = phi ptr [ %435, %434 ], [ %251, %241 ]
  %329 = phi ptr [ %406, %434 ], [ %248, %241 ]
  %330 = phi i64 [ %350, %434 ], [ %247, %241 ]
  %331 = phi i64 [ %437, %434 ], [ %250, %241 ]
  %332 = phi i32 [ %436, %434 ], [ %249, %241 ]
  %333 = phi i64 [ %405, %434 ], [ %246, %241 ]
  %334 = getelementptr inbounds nuw [4 x i8], ptr %243, i64 %330
  %335 = load i16, ptr %334, align 2, !tbaa !5
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 2
  %337 = load i8, ptr %336, align 2, !tbaa !20
  %338 = getelementptr inbounds nuw i8, ptr %334, i64 3
  %339 = load i8, ptr %338, align 1, !tbaa !20
  %340 = zext i8 %339 to i32
  %341 = and i32 %332, 63
  %342 = zext nneg i32 %341 to i64
  %343 = shl i64 %331, %342
  %344 = sub nsw i32 0, %340
  %345 = and i32 %344, 63
  %346 = zext nneg i32 %345 to i64
  %347 = lshr i64 %343, %346
  %348 = add i32 %332, %340
  %349 = zext i16 %335 to i64
  %350 = add i64 %347, %349
  %351 = getelementptr inbounds nuw i8, ptr %329, i64 1
  store i8 %337, ptr %329, align 1, !tbaa !20
  %352 = icmp ugt i32 %348, 64
  br i1 %352, label %372, label %353, !prof !40

353:                                              ; preds = %.preheader65
  %354 = icmp ult ptr %328, %143
  br i1 %354, label %358, label %355

355:                                              ; preds = %353
  %356 = lshr i32 %348, 3
  %357 = and i32 %348, 7
  br label %376

358:                                              ; preds = %353
  %359 = icmp eq ptr %328, %245
  br i1 %359, label %383, label %360

360:                                              ; preds = %358
  %361 = lshr i32 %348, 3
  %362 = zext nneg i32 %361 to i64
  %363 = sub nsw i64 0, %362
  %364 = getelementptr inbounds i8, ptr %328, i64 %363
  %365 = icmp ult ptr %364, %245
  %366 = ptrtoint ptr %328 to i64
  %367 = sub i64 %366, %244
  %368 = trunc i64 %367 to i32
  %369 = select i1 %365, i32 %368, i32 %361
  %370 = shl i32 %369, 3
  %371 = sub i32 %348, %370
  br label %376

372:                                              ; preds = %.preheader65
  %.split50 = getelementptr inbounds nuw [4 x i8], ptr %242, i64 %333
  %373 = getelementptr inbounds nuw i8, ptr %.split50, i64 2
  %374 = load i8, ptr %373, align 2, !tbaa !20
  %375 = getelementptr inbounds nuw i8, ptr %329, i64 2
  store i8 %374, ptr %351, align 1, !tbaa !20
  br label %443

376:                                              ; preds = %360, %355
  %377 = phi i32 [ %356, %355 ], [ %369, %360 ]
  %378 = phi i32 [ %357, %355 ], [ %371, %360 ]
  %379 = zext i32 %377 to i64
  %380 = sub nsw i64 0, %379
  %381 = getelementptr inbounds i8, ptr %328, i64 %380
  %382 = load i64, ptr %381, align 1, !tbaa !13
  store i64 %382, ptr %8, align 8, !tbaa !38
  br label %383

383:                                              ; preds = %376, %358
  %384 = phi ptr [ %328, %358 ], [ %381, %376 ]
  %385 = phi i32 [ %348, %358 ], [ %378, %376 ]
  %386 = phi i64 [ %331, %358 ], [ %382, %376 ]
  %387 = icmp ugt ptr %351, %252
  br i1 %387, label %.loopexit66, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds nuw [4 x i8], ptr %242, i64 %333
  %390 = load i16, ptr %389, align 2, !tbaa !5
  %391 = getelementptr inbounds nuw i8, ptr %389, i64 2
  %392 = load i8, ptr %391, align 2, !tbaa !20
  %393 = getelementptr inbounds nuw i8, ptr %389, i64 3
  %394 = load i8, ptr %393, align 1, !tbaa !20
  %395 = zext i8 %394 to i32
  %396 = and i32 %385, 63
  %397 = zext nneg i32 %396 to i64
  %398 = shl i64 %386, %397
  %399 = sub nsw i32 0, %395
  %400 = and i32 %399, 63
  %401 = zext nneg i32 %400 to i64
  %402 = lshr i64 %398, %401
  %403 = add i32 %385, %395
  %404 = zext i16 %390 to i64
  %405 = add i64 %402, %404
  %406 = getelementptr inbounds nuw i8, ptr %329, i64 2
  store i8 %392, ptr %351, align 1, !tbaa !20
  %407 = icmp ugt i32 %403, 64
  br i1 %407, label %439, label %408, !prof !40

408:                                              ; preds = %388
  %409 = icmp ult ptr %384, %143
  br i1 %409, label %413, label %410

410:                                              ; preds = %408
  %411 = lshr i32 %403, 3
  %412 = and i32 %403, 7
  br label %427

413:                                              ; preds = %408
  %414 = icmp eq ptr %384, %245
  br i1 %414, label %434, label %415

415:                                              ; preds = %413
  %416 = lshr i32 %403, 3
  %417 = zext nneg i32 %416 to i64
  %418 = sub nsw i64 0, %417
  %419 = getelementptr inbounds i8, ptr %384, i64 %418
  %420 = icmp ult ptr %419, %245
  %421 = ptrtoint ptr %384 to i64
  %422 = sub i64 %421, %244
  %423 = trunc i64 %422 to i32
  %424 = select i1 %420, i32 %423, i32 %416
  %425 = shl i32 %424, 3
  %426 = sub i32 %403, %425
  br label %427

427:                                              ; preds = %415, %410
  %428 = phi i32 [ %411, %410 ], [ %424, %415 ]
  %429 = phi i32 [ %412, %410 ], [ %426, %415 ]
  %430 = zext i32 %428 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %384, i64 %431
  %433 = load i64, ptr %432, align 1, !tbaa !13
  store i64 %433, ptr %8, align 8, !tbaa !38
  br label %434

434:                                              ; preds = %427, %413
  %435 = phi ptr [ %384, %413 ], [ %432, %427 ]
  %436 = phi i32 [ %403, %413 ], [ %429, %427 ]
  %437 = phi i64 [ %386, %413 ], [ %433, %427 ]
  %438 = icmp ugt ptr %406, %252
  br i1 %438, label %.loopexit66, label %.preheader65

439:                                              ; preds = %388
  %.split = getelementptr inbounds nuw [4 x i8], ptr %243, i64 %350
  %440 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %441 = load i8, ptr %440, align 2, !tbaa !20
  %442 = getelementptr inbounds nuw i8, ptr %329, i64 3
  store i8 %441, ptr %406, align 1, !tbaa !20
  br label %443

443:                                              ; preds = %439, %372
  %444 = phi ptr [ %375, %372 ], [ %442, %439 ]
  %445 = ptrtoint ptr %444 to i64
  %446 = ptrtoint ptr %0 to i64
  %447 = sub i64 %445, %446
  br label %.loopexit66

.loopexit66:                                      ; preds = %434, %383, %443, %241, %136, %128, %116, %65, %58
  %448 = phi i64 [ %447, %443 ], [ %26, %128 ], [ -72, %58 ], [ -1, %65 ], [ -20, %116 ], [ -20, %136 ], [ -70, %241 ], [ -70, %383 ], [ -70, %434 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %767

449:                                              ; preds = %52
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %450 = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %25, i64 noundef %26)
  %451 = icmp ult i64 %450, -119
  br i1 %451, label %452, label %.loopexit

452:                                              ; preds = %449
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %16)
  %453 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %454 = load i32, ptr %453, align 8, !tbaa !39
  %455 = icmp ugt i32 %454, 64
  br i1 %455, label %.loopexit, label %456, !prof !40

456:                                              ; preds = %452
  %457 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %458 = load ptr, ptr %457, align 8, !tbaa !37
  %459 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %460 = load ptr, ptr %459, align 8, !tbaa !36
  %461 = icmp ult ptr %458, %460
  br i1 %461, label %471, label %462

462:                                              ; preds = %456
  %463 = lshr i32 %454, 3
  %464 = zext nneg i32 %463 to i64
  %465 = sub nsw i64 0, %464
  %466 = getelementptr inbounds i8, ptr %458, i64 %465
  %467 = and i32 %454, 7
  %468 = load i64, ptr %466, align 1, !tbaa !13
  store i64 %468, ptr %11, align 8, !tbaa !38
  %469 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %470 = load ptr, ptr %469, align 8
  br label %.thread176

471:                                              ; preds = %456
  %472 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %473 = load ptr, ptr %472, align 8, !tbaa !32
  %474 = icmp eq ptr %458, %473
  br i1 %474, label %475, label %484

475:                                              ; preds = %471
  %476 = load i64, ptr %11, align 8
  br label %.thread176

.thread176:                                       ; preds = %475, %462
  %.ph172 = phi ptr [ %466, %462 ], [ %458, %475 ]
  %.ph173 = phi ptr [ %470, %462 ], [ %458, %475 ]
  %.ph174 = phi i64 [ %468, %462 ], [ %476, %475 ]
  %.ph175 = phi i32 [ %467, %462 ], [ %454, %475 ]
  %477 = load i64, ptr %12, align 8
  %478 = load i64, ptr %13, align 8
  %479 = ptrtoint ptr %.ph173 to i64
  %480 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %481 = load ptr, ptr %480, align 8
  %482 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %483 = load ptr, ptr %482, align 8
  br label %.preheader57.preheader

484:                                              ; preds = %471
  %485 = lshr i32 %454, 3
  %486 = zext nneg i32 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %458, i64 %487
  %489 = icmp ult ptr %488, %473
  %490 = ptrtoint ptr %458 to i64
  %491 = ptrtoint ptr %473 to i64
  %492 = sub i64 %490, %491
  %493 = trunc i64 %492 to i32
  %494 = select i1 %489, i32 %493, i32 %485
  %495 = zext i32 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %458, i64 %496
  %498 = shl i32 %494, 3
  %499 = sub i32 %454, %498
  %500 = load i64, ptr %497, align 1, !tbaa !13
  store i64 %500, ptr %11, align 8, !tbaa !38
  %501 = load i64, ptr %12, align 8
  %502 = load i64, ptr %13, align 8
  %503 = ptrtoint ptr %473 to i64
  %504 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %505 = load ptr, ptr %504, align 8
  %506 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %507 = load ptr, ptr %506, align 8
  %508 = icmp ugt i32 %499, 64
  br i1 %508, label %.loopexit58, label %.preheader57.preheader, !prof !41

.preheader57.preheader:                           ; preds = %.thread176, %484
  %509 = phi ptr [ %483, %.thread176 ], [ %507, %484 ]
  %510 = phi ptr [ %481, %.thread176 ], [ %505, %484 ]
  %511 = phi i64 [ %479, %.thread176 ], [ %503, %484 ]
  %512 = phi i64 [ %478, %.thread176 ], [ %502, %484 ]
  %513 = phi i64 [ %477, %.thread176 ], [ %501, %484 ]
  %514 = phi i32 [ %.ph175, %.thread176 ], [ %499, %484 ]
  %515 = phi i64 [ %.ph174, %.thread176 ], [ %500, %484 ]
  %516 = phi ptr [ %.ph173, %.thread176 ], [ %473, %484 ]
  %517 = phi ptr [ %.ph172, %.thread176 ], [ %497, %484 ]
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %564
  %518 = phi ptr [ %640, %564 ], [ %0, %.preheader57.preheader ]
  %519 = phi i32 [ %628, %564 ], [ %514, %.preheader57.preheader ]
  %520 = phi i64 [ %549, %564 ], [ %515, %.preheader57.preheader ]
  %521 = phi i64 [ %618, %564 ], [ %513, %.preheader57.preheader ]
  %522 = phi i64 [ %638, %564 ], [ %512, %.preheader57.preheader ]
  %523 = phi ptr [ %548, %564 ], [ %517, %.preheader57.preheader ]
  %524 = icmp ult ptr %523, %460
  br i1 %524, label %528, label %525

525:                                              ; preds = %.preheader57
  %526 = lshr i32 %519, 3
  %527 = and i32 %519, 7
  br label %542

528:                                              ; preds = %.preheader57
  %529 = icmp eq ptr %523, %516
  br i1 %529, label %.loopexit58, label %530

530:                                              ; preds = %528
  %531 = lshr i32 %519, 3
  %532 = zext nneg i32 %531 to i64
  %533 = sub nsw i64 0, %532
  %534 = getelementptr inbounds i8, ptr %523, i64 %533
  %535 = icmp uge ptr %534, %516
  %536 = ptrtoint ptr %523 to i64
  %537 = sub i64 %536, %511
  %538 = trunc i64 %537 to i32
  %539 = select i1 %535, i32 %531, i32 %538
  %540 = shl i32 %539, 3
  %541 = sub i32 %519, %540
  br label %542

542:                                              ; preds = %530, %525
  %543 = phi i32 [ %526, %525 ], [ %539, %530 ]
  %544 = phi i32 [ %527, %525 ], [ %541, %530 ]
  %545 = phi i1 [ true, %525 ], [ %535, %530 ]
  %546 = zext i32 %543 to i64
  %547 = sub nsw i64 0, %546
  %548 = getelementptr inbounds i8, ptr %523, i64 %547
  %549 = load i64, ptr %548, align 1, !tbaa !13
  %550 = icmp ult ptr %518, %57
  %551 = and i1 %550, %545
  br i1 %551, label %564, label %.loopexit58

.loopexit58:                                      ; preds = %564, %542, %528, %484
  %552 = phi ptr [ %507, %484 ], [ %509, %528 ], [ %509, %542 ], [ %509, %564 ]
  %553 = phi ptr [ %505, %484 ], [ %510, %528 ], [ %510, %542 ], [ %510, %564 ]
  %554 = phi i64 [ %503, %484 ], [ %511, %528 ], [ %511, %542 ], [ %511, %564 ]
  %555 = phi ptr [ %473, %484 ], [ %516, %528 ], [ %516, %542 ], [ %516, %564 ]
  %556 = phi i64 [ %502, %484 ], [ %638, %564 ], [ %522, %542 ], [ %522, %528 ]
  %557 = phi i64 [ %501, %484 ], [ %618, %564 ], [ %521, %542 ], [ %521, %528 ]
  %558 = phi ptr [ %0, %484 ], [ %640, %564 ], [ %518, %542 ], [ %518, %528 ]
  %559 = phi i32 [ %499, %484 ], [ %628, %564 ], [ %544, %542 ], [ %519, %528 ]
  %560 = phi i64 [ %500, %484 ], [ %549, %564 ], [ %549, %542 ], [ %520, %528 ]
  %561 = phi ptr [ @BIT_reloadDStream.zeroFilled, %484 ], [ @BIT_reloadDStream.zeroFilled, %564 ], [ %548, %542 ], [ %523, %528 ]
  store ptr %561, ptr %457, align 8
  store i32 %559, ptr %453, align 8
  store i64 %560, ptr %11, align 8
  store i64 %557, ptr %12, align 8
  store i64 %556, ptr %13, align 8
  %562 = getelementptr inbounds i8, ptr %56, i64 -2
  %563 = icmp ugt ptr %558, %562
  br i1 %563, label %.loopexit, label %.preheader

564:                                              ; preds = %542
  %565 = getelementptr inbounds nuw [4 x i8], ptr %510, i64 %521
  %566 = load i16, ptr %565, align 2, !tbaa !5
  %567 = getelementptr inbounds nuw i8, ptr %565, i64 2
  %568 = load i8, ptr %567, align 2, !tbaa !20
  %569 = getelementptr inbounds nuw i8, ptr %565, i64 3
  %570 = load i8, ptr %569, align 1, !tbaa !20
  %571 = zext i8 %570 to i32
  %572 = add i32 %544, %571
  %573 = sub i32 0, %572
  %574 = and i32 %573, 63
  %575 = zext nneg i32 %574 to i64
  %576 = lshr i64 %549, %575
  %577 = zext nneg i8 %570 to i64
  %578 = shl nsw i64 -1, %577
  %579 = xor i64 %578, -1
  %580 = and i64 %576, %579
  %581 = zext i16 %566 to i64
  store i8 %568, ptr %518, align 1, !tbaa !20
  %582 = getelementptr inbounds nuw [4 x i8], ptr %509, i64 %522
  %583 = load i16, ptr %582, align 2, !tbaa !5
  %584 = getelementptr inbounds nuw i8, ptr %582, i64 2
  %585 = load i8, ptr %584, align 2, !tbaa !20
  %586 = getelementptr inbounds nuw i8, ptr %582, i64 3
  %587 = load i8, ptr %586, align 1, !tbaa !20
  %588 = zext i8 %587 to i32
  %589 = add i32 %572, %588
  %590 = sub i32 0, %589
  %591 = and i32 %590, 63
  %592 = zext nneg i32 %591 to i64
  %593 = lshr i64 %549, %592
  %594 = zext nneg i8 %587 to i64
  %595 = shl nsw i64 -1, %594
  %596 = xor i64 %595, -1
  %597 = and i64 %593, %596
  %598 = zext i16 %583 to i64
  %599 = getelementptr inbounds nuw i8, ptr %518, i64 1
  store i8 %585, ptr %599, align 1, !tbaa !20
  %600 = getelementptr inbounds nuw [4 x i8], ptr %510, i64 %580
  %601 = getelementptr inbounds nuw [4 x i8], ptr %600, i64 %581
  %602 = load i16, ptr %601, align 2, !tbaa !5
  %603 = getelementptr inbounds nuw i8, ptr %601, i64 2
  %604 = load i8, ptr %603, align 2, !tbaa !20
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 3
  %606 = load i8, ptr %605, align 1, !tbaa !20
  %607 = zext i8 %606 to i32
  %608 = add i32 %589, %607
  %609 = sub i32 0, %608
  %610 = and i32 %609, 63
  %611 = zext nneg i32 %610 to i64
  %612 = lshr i64 %549, %611
  %613 = zext nneg i8 %606 to i64
  %614 = shl nsw i64 -1, %613
  %615 = xor i64 %614, -1
  %616 = and i64 %612, %615
  %617 = zext i16 %602 to i64
  %618 = add nuw i64 %616, %617
  %619 = getelementptr inbounds nuw i8, ptr %518, i64 2
  store i8 %604, ptr %619, align 1, !tbaa !20
  %620 = getelementptr inbounds nuw [4 x i8], ptr %509, i64 %597
  %621 = getelementptr inbounds nuw [4 x i8], ptr %620, i64 %598
  %622 = load i16, ptr %621, align 2, !tbaa !5
  %623 = getelementptr inbounds nuw i8, ptr %621, i64 2
  %624 = load i8, ptr %623, align 2, !tbaa !20
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 3
  %626 = load i8, ptr %625, align 1, !tbaa !20
  %627 = zext i8 %626 to i32
  %628 = add i32 %608, %627
  %629 = sub i32 0, %628
  %630 = and i32 %629, 63
  %631 = zext nneg i32 %630 to i64
  %632 = lshr i64 %549, %631
  %633 = zext nneg i8 %626 to i64
  %634 = shl nsw i64 -1, %633
  %635 = xor i64 %634, -1
  %636 = and i64 %632, %635
  %637 = zext i16 %622 to i64
  %638 = add nuw i64 %636, %637
  %639 = getelementptr inbounds nuw i8, ptr %518, i64 3
  store i8 %624, ptr %639, align 1, !tbaa !20
  %640 = getelementptr inbounds nuw i8, ptr %518, i64 4
  %641 = icmp ugt i32 %628, 64
  br i1 %641, label %.loopexit58, label %.preheader57, !prof !42, !llvm.loop !43

.preheader:                                       ; preds = %.loopexit58, %752
  %642 = phi ptr [ %753, %752 ], [ %561, %.loopexit58 ]
  %643 = phi ptr [ %723, %752 ], [ %558, %.loopexit58 ]
  %644 = phi i64 [ %665, %752 ], [ %557, %.loopexit58 ]
  %645 = phi i64 [ %755, %752 ], [ %560, %.loopexit58 ]
  %646 = phi i32 [ %754, %752 ], [ %559, %.loopexit58 ]
  %647 = phi i64 [ %722, %752 ], [ %556, %.loopexit58 ]
  %648 = getelementptr inbounds nuw [4 x i8], ptr %553, i64 %644
  %649 = load i16, ptr %648, align 2, !tbaa !5
  %650 = getelementptr inbounds nuw i8, ptr %648, i64 2
  %651 = load i8, ptr %650, align 2, !tbaa !20
  %652 = getelementptr inbounds nuw i8, ptr %648, i64 3
  %653 = load i8, ptr %652, align 1, !tbaa !20
  %654 = zext i8 %653 to i32
  %655 = add i32 %646, %654
  %656 = sub i32 0, %655
  %657 = and i32 %656, 63
  %658 = zext nneg i32 %657 to i64
  %659 = lshr i64 %645, %658
  %660 = zext nneg i8 %653 to i64
  %661 = shl nsw i64 -1, %660
  %662 = xor i64 %661, -1
  %663 = and i64 %659, %662
  %664 = zext i16 %649 to i64
  %665 = add nuw i64 %663, %664
  %666 = getelementptr inbounds nuw i8, ptr %643, i64 1
  store i8 %651, ptr %643, align 1, !tbaa !20
  %667 = icmp ugt i32 %655, 64
  br i1 %667, label %695, label %668, !prof !40

668:                                              ; preds = %.preheader
  %669 = icmp ult ptr %642, %460
  br i1 %669, label %677, label %670

670:                                              ; preds = %668
  %671 = lshr i32 %655, 3
  %672 = zext nneg i32 %671 to i64
  %673 = sub nsw i64 0, %672
  %674 = getelementptr inbounds i8, ptr %642, i64 %673
  %675 = and i32 %655, 7
  %676 = load i64, ptr %674, align 1, !tbaa !13
  br label %699

677:                                              ; preds = %668
  %678 = icmp eq ptr %642, %555
  br i1 %678, label %699, label %679

679:                                              ; preds = %677
  %680 = lshr i32 %655, 3
  %681 = zext nneg i32 %680 to i64
  %682 = sub nsw i64 0, %681
  %683 = getelementptr inbounds i8, ptr %642, i64 %682
  %684 = icmp ult ptr %683, %555
  %685 = ptrtoint ptr %642 to i64
  %686 = sub i64 %685, %554
  %687 = trunc i64 %686 to i32
  %688 = select i1 %684, i32 %687, i32 %680
  %689 = zext i32 %688 to i64
  %690 = sub nsw i64 0, %689
  %691 = getelementptr inbounds i8, ptr %642, i64 %690
  %692 = shl i32 %688, 3
  %693 = sub i32 %655, %692
  %694 = load i64, ptr %691, align 1, !tbaa !13
  br label %699

695:                                              ; preds = %.preheader
  %.split52 = getelementptr inbounds nuw [4 x i8], ptr %552, i64 %647
  %696 = getelementptr inbounds nuw i8, ptr %.split52, i64 2
  %697 = load i8, ptr %696, align 2, !tbaa !20
  %698 = getelementptr inbounds nuw i8, ptr %643, i64 2
  store i8 %697, ptr %666, align 1, !tbaa !20
  br label %761

699:                                              ; preds = %679, %677, %670
  %700 = phi ptr [ %642, %677 ], [ %674, %670 ], [ %691, %679 ]
  %701 = phi i32 [ %655, %677 ], [ %675, %670 ], [ %693, %679 ]
  %702 = phi i64 [ %645, %677 ], [ %676, %670 ], [ %694, %679 ]
  %703 = icmp ugt ptr %666, %562
  br i1 %703, label %.loopexit, label %704

704:                                              ; preds = %699
  %705 = getelementptr inbounds nuw [4 x i8], ptr %552, i64 %647
  %706 = load i16, ptr %705, align 2, !tbaa !5
  %707 = getelementptr inbounds nuw i8, ptr %705, i64 2
  %708 = load i8, ptr %707, align 2, !tbaa !20
  %709 = getelementptr inbounds nuw i8, ptr %705, i64 3
  %710 = load i8, ptr %709, align 1, !tbaa !20
  %711 = zext i8 %710 to i32
  %712 = add i32 %701, %711
  %713 = sub i32 0, %712
  %714 = and i32 %713, 63
  %715 = zext nneg i32 %714 to i64
  %716 = lshr i64 %702, %715
  %717 = zext nneg i8 %710 to i64
  %718 = shl nsw i64 -1, %717
  %719 = xor i64 %718, -1
  %720 = and i64 %716, %719
  %721 = zext i16 %706 to i64
  %722 = add nuw i64 %720, %721
  %723 = getelementptr inbounds nuw i8, ptr %643, i64 2
  store i8 %708, ptr %666, align 1, !tbaa !20
  %724 = icmp ugt i32 %712, 64
  br i1 %724, label %757, label %725, !prof !40

725:                                              ; preds = %704
  %726 = icmp ult ptr %700, %460
  br i1 %726, label %734, label %727

727:                                              ; preds = %725
  %728 = lshr i32 %712, 3
  %729 = zext nneg i32 %728 to i64
  %730 = sub nsw i64 0, %729
  %731 = getelementptr inbounds i8, ptr %700, i64 %730
  %732 = and i32 %712, 7
  %733 = load i64, ptr %731, align 1, !tbaa !13
  br label %752

734:                                              ; preds = %725
  %735 = icmp eq ptr %700, %555
  br i1 %735, label %752, label %736

736:                                              ; preds = %734
  %737 = lshr i32 %712, 3
  %738 = zext nneg i32 %737 to i64
  %739 = sub nsw i64 0, %738
  %740 = getelementptr inbounds i8, ptr %700, i64 %739
  %741 = icmp ult ptr %740, %555
  %742 = ptrtoint ptr %700 to i64
  %743 = sub i64 %742, %554
  %744 = trunc i64 %743 to i32
  %745 = select i1 %741, i32 %744, i32 %737
  %746 = zext i32 %745 to i64
  %747 = sub nsw i64 0, %746
  %748 = getelementptr inbounds i8, ptr %700, i64 %747
  %749 = shl i32 %745, 3
  %750 = sub i32 %712, %749
  %751 = load i64, ptr %748, align 1, !tbaa !13
  br label %752

752:                                              ; preds = %736, %734, %727
  %753 = phi ptr [ %700, %734 ], [ %731, %727 ], [ %748, %736 ]
  %754 = phi i32 [ %712, %734 ], [ %732, %727 ], [ %750, %736 ]
  %755 = phi i64 [ %702, %734 ], [ %733, %727 ], [ %751, %736 ]
  %756 = icmp ugt ptr %723, %562
  br i1 %756, label %.loopexit, label %.preheader

757:                                              ; preds = %704
  %.split51 = getelementptr inbounds nuw [4 x i8], ptr %553, i64 %665
  %758 = getelementptr inbounds nuw i8, ptr %.split51, i64 2
  %759 = load i8, ptr %758, align 2, !tbaa !20
  %760 = getelementptr inbounds nuw i8, ptr %643, i64 3
  store i8 %759, ptr %723, align 1, !tbaa !20
  br label %761

761:                                              ; preds = %757, %695
  %762 = phi ptr [ %698, %695 ], [ %760, %757 ]
  %763 = ptrtoint ptr %762 to i64
  %764 = ptrtoint ptr %0 to i64
  %765 = sub i64 %763, %764
  br label %.loopexit

.loopexit:                                        ; preds = %752, %699, %761, %.loopexit58, %452, %449
  %766 = phi i64 [ %765, %761 ], [ %450, %449 ], [ -20, %452 ], [ -70, %.loopexit58 ], [ -70, %699 ], [ -70, %752 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %767

767:                                              ; preds = %.loopexit, %.loopexit66, %43, %24, %21, %18, %7
  %768 = phi i64 [ %50, %43 ], [ -1, %7 ], [ -44, %24 ], [ %448, %.loopexit66 ], [ %766, %.loopexit ], [ -44, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  ret i64 %768
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

declare i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %86

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %7, align 8, !tbaa !32
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %8, ptr %9, align 8, !tbaa !36
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %14, align 8, !tbaa !37
  %15 = load i64, ptr %13, align 1, !tbaa !13
  store i64 %15, ptr %0, align 8, !tbaa !38
  %16 = getelementptr i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  %21 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %20, i1 true)
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 8, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %23, ptr %24, align 8, !tbaa !39
  br label %86

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %26, align 8, !tbaa !39
  br label %86

27:                                               ; preds = %6
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %28, align 8, !tbaa !37
  %29 = load i8, ptr %1, align 1, !tbaa !20
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !38
  switch i64 %2, label %72 [
    i64 7, label %31
    i64 6, label %37
    i64 5, label %44
    i64 4, label %51
    i64 3, label %58
    i64 2, label %65
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !20
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %30
  store i64 %36, ptr %0, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !20
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !38
  br label %44

44:                                               ; preds = %37, %27
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !38
  br label %51

51:                                               ; preds = %44, %27
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !38
  br label %58

58:                                               ; preds = %51, %27
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !20
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !38
  br label %65

65:                                               ; preds = %58, %27
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !20
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !38
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %78, align 8, !tbaa !39
  br label %86

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %80, i1 true)
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = trunc nuw nsw i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %reass.sub = sub nsw i32 %81, %84
  %85 = add nsw i32 %reass.sub, 41
  store i32 %85, ptr %82, align 8, !tbaa !39
  br label %86

86:                                               ; preds = %79, %77, %25, %19, %5
  %87 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %87
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @FSE_initDState(ptr noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #6 {
  %4 = load i16, ptr %2, align 2, !tbaa !44
  %5 = zext i16 %4 to i32
  %6 = load i64, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !39
  %9 = add i32 %8, %5
  %10 = sub i32 0, %9
  %11 = and i32 %10, 63
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %6, %12
  %14 = zext nneg i16 %4 to i64
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %13, %16
  store i32 %9, ptr %7, align 8, !tbaa !39
  store i64 %17, ptr %0, align 8, !tbaa !45
  %18 = icmp ugt i32 %9, 64
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %18, label %20, label %21, !prof !40

20:                                               ; preds = %3
  store ptr @BIT_reloadDStream.zeroFilled, ptr %19, align 8, !tbaa !37
  br label %54

21:                                               ; preds = %3
  %22 = load ptr, ptr %19, align 8, !tbaa !37
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = icmp ult ptr %22, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %9, 3
  %28 = zext nneg i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  store ptr %30, ptr %19, align 8, !tbaa !37
  %31 = and i32 %9, 7
  store i32 %31, ptr %7, align 8, !tbaa !39
  %32 = load i64, ptr %30, align 1, !tbaa !13
  store i64 %32, ptr %1, align 8, !tbaa !38
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = icmp eq ptr %22, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %9, 3
  %39 = zext nneg i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = icmp ult ptr %41, %35
  %43 = ptrtoint ptr %22 to i64
  %44 = ptrtoint ptr %35 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = select i1 %42, i32 %46, i32 %38
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %22, i64 %49
  store ptr %50, ptr %19, align 8, !tbaa !37
  %51 = shl i32 %47, 3
  %52 = sub i32 %9, %51
  store i32 %52, ptr %7, align 8, !tbaa !39
  %53 = load i64, ptr %50, align 1, !tbaa !13
  store i64 %53, ptr %1, align 8, !tbaa !38
  br label %54

54:                                               ; preds = %37, %33, %26, %20
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %55, ptr %56, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }

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
!9 = !{!10, !7, i64 2}
!10 = !{!"", !6, i64 0, !7, i64 2, !7, i64 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12, !17, !16}
!19 = distinct !{!19, !12}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!10, !7, i64 3}
!26 = !{!10, !6, i64 0}
!27 = distinct !{!27, !12}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !7, i64 0}
!30 = !{!31, !6, i64 2}
!31 = !{!"", !6, i64 0, !6, i64 2}
!32 = !{!33, !34, i64 24}
!33 = !{!"", !14, i64 0, !29, i64 8, !34, i64 16, !34, i64 24, !34, i64 32}
!34 = !{!"p1 omnipotent char", !35, i64 0}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!33, !34, i64 32}
!37 = !{!33, !34, i64 16}
!38 = !{!33, !14, i64 0}
!39 = !{!33, !29, i64 8}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 53687091, i32 2093796557}
!42 = !{!"branch_weights", i32 127, i32 255873}
!43 = distinct !{!43, !12}
!44 = !{!31, !6, i64 0}
!45 = !{!46, !14, i64 0}
!46 = !{!"", !14, i64 0, !35, i64 8}
!47 = !{!46, !35, i64 8}
