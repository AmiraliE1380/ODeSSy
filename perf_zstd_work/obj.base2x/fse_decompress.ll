; ModuleID = '<stdin>'
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
  br i1 %56, label %.preheader, label %123

58:                                               ; preds = %.loopexit17
  %59 = zext nneg i32 %13 to i64
  %60 = lshr i32 %12, 3
  %61 = add nuw nsw i32 %60, 3
  %62 = add nuw nsw i32 %61, %57
  %63 = zext nneg i32 %62 to i64
  %64 = zext nneg i32 %12 to i64
  %65 = shl nuw nsw i64 %63, 1
  br label %105

.preheader:                                       ; preds = %53, %.loopexit17
  %66 = phi i64 [ %102, %.loopexit17 ], [ 0, %53 ]
  %67 = phi i64 [ %101, %.loopexit17 ], [ 0, %53 ]
  %68 = phi i64 [ %103, %.loopexit17 ], [ 0, %53 ]
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
  br i1 %79, label %.preheader54.preheader, label %80

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
  br i1 %95, label %.loopexit17, label %.preheader54.preheader

.preheader54.preheader:                           ; preds = %92, %73
  %.ph = phi i64 [ 8, %73 ], [ %94, %92 ]
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %.preheader54
  %96 = phi i64 [ %98, %.preheader54 ], [ %.ph, %.preheader54.preheader ]
  %97 = getelementptr inbounds nuw i8, ptr %71, i64 %96
  store i64 %68, ptr %97, align 1, !tbaa !13
  %98 = add nuw nsw i64 %96, 8
  %99 = icmp samesign ult i64 %98, %74
  br i1 %99, label %.preheader54, label %.loopexit17, !llvm.loop !18

.loopexit17:                                      ; preds = %.preheader54, %92, %.preheader
  %100 = sext i16 %70 to i64
  %101 = add i64 %67, %100
  %102 = add nuw nsw i64 %66, 1
  %103 = add i64 %68, 72340172838076673
  %104 = icmp eq i64 %102, %14
  br i1 %104, label %58, label %.preheader, !llvm.loop !19

105:                                              ; preds = %105, %58
  %106 = phi i64 [ 0, %58 ], [ %121, %105 ]
  %107 = phi i64 [ 0, %58 ], [ %120, %105 ]
  %108 = getelementptr inbounds nuw i8, ptr %10, i64 %106
  %109 = and i64 %107, %59
  %110 = load i8, ptr %108, align 1, !tbaa !20
  %111 = shl nuw nsw i64 %109, 2
  %112 = getelementptr inbounds nuw i8, ptr %26, i64 %111
  store i8 %110, ptr %112, align 2, !tbaa !9
  %113 = add nuw nsw i64 %107, %63
  %114 = and i64 %113, %59
  %115 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !20
  %117 = shl nuw nsw i64 %114, 2
  %118 = getelementptr inbounds nuw i8, ptr %26, i64 %117
  store i8 %116, ptr %118, align 2, !tbaa !9
  %119 = add nuw nsw i64 %107, %65
  %120 = and i64 %119, %59
  %121 = add nuw nsw i64 %106, 2
  %122 = icmp samesign ult i64 %121, %64
  br i1 %122, label %105, label %.loopexit16, !llvm.loop !21

123:                                              ; preds = %53
  %124 = lshr i32 %12, 3
  %125 = add nuw nsw i32 %124, 3
  %126 = add nuw nsw i32 %125, %57
  br label %127

127:                                              ; preds = %.loopexit18, %123
  %128 = phi i64 [ 0, %123 ], [ %175, %.loopexit18 ]
  %129 = phi i32 [ 0, %123 ], [ %174, %.loopexit18 ]
  %130 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %128
  %131 = load i16, ptr %130, align 2, !tbaa !5
  %132 = icmp sgt i16 %131, 0
  br i1 %132, label %133, label %.loopexit18

133:                                              ; preds = %127
  %134 = trunc i64 %128 to i8
  %135 = icmp eq i16 %131, 1
  br i1 %135, label %.thread, label %136

136:                                              ; preds = %133
  %137 = and i16 %131, 32766
  %138 = zext nneg i16 %137 to i32
  br label %139

139:                                              ; preds = %159, %136
  %140 = phi i32 [ %129, %136 ], [ %157, %159 ]
  %141 = phi i32 [ 0, %136 ], [ %160, %159 ]
  %142 = zext nneg i32 %140 to i64
  %143 = shl nuw nsw i64 %142, 2
  %144 = getelementptr inbounds nuw i8, ptr %26, i64 %143
  store i8 %134, ptr %144, align 2, !tbaa !9
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i32 [ %140, %139 ], [ %148, %145 ]
  %147 = add nuw i32 %146, %126
  %148 = and i32 %147, %13
  %149 = icmp ugt i32 %148, %49
  br i1 %149, label %145, label %150, !llvm.loop !22

150:                                              ; preds = %145
  %151 = zext nneg i32 %148 to i64
  %152 = shl nuw nsw i64 %151, 2
  %153 = getelementptr inbounds nuw i8, ptr %26, i64 %152
  store i8 %134, ptr %153, align 2, !tbaa !9
  br label %154

154:                                              ; preds = %154, %150
  %155 = phi i32 [ %148, %150 ], [ %157, %154 ]
  %156 = add nuw i32 %155, %126
  %157 = and i32 %156, %13
  %158 = icmp ugt i32 %157, %49
  br i1 %158, label %154, label %159, !llvm.loop !22

159:                                              ; preds = %154
  %160 = add i32 %141, 2
  %161 = icmp eq i32 %160, %138
  br i1 %161, label %162, label %139, !llvm.loop !23

162:                                              ; preds = %159
  %163 = and i16 %131, 1
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %.loopexit18, label %.thread

.thread:                                          ; preds = %162, %133
  %165 = phi i32 [ %157, %162 ], [ %129, %133 ]
  %166 = zext nneg i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 2
  %168 = getelementptr inbounds nuw i8, ptr %26, i64 %167
  store i8 %134, ptr %168, align 2, !tbaa !9
  br label %169

169:                                              ; preds = %169, %.thread
  %170 = phi i32 [ %165, %.thread ], [ %172, %169 ]
  %171 = add nuw i32 %170, %126
  %172 = and i32 %171, %13
  %173 = icmp ugt i32 %172, %49
  br i1 %173, label %169, label %.loopexit18, !llvm.loop !22

.loopexit18:                                      ; preds = %169, %162, %127
  %174 = phi i32 [ %129, %127 ], [ %157, %162 ], [ %172, %169 ]
  %175 = add nuw nsw i64 %128, 1
  %176 = icmp eq i64 %175, %14
  br i1 %176, label %177, label %127, !llvm.loop !24

177:                                              ; preds = %.loopexit18
  %178 = icmp eq i32 %174, 0
  br i1 %178, label %179, label %.loopexit

179:                                              ; preds = %177
  %180 = zext nneg i32 %12 to i64
  br label %.loopexit16

.loopexit16:                                      ; preds = %105, %179
  %181 = phi i64 [ %180, %179 ], [ %64, %105 ]
  br label %182

182:                                              ; preds = %182, %.loopexit16
  %183 = phi i64 [ 0, %.loopexit16 ], [ %201, %182 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %183
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 2
  %186 = load i8, ptr %185, align 2, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !5
  %190 = add i16 %189, 1
  store i16 %190, ptr %188, align 2, !tbaa !5
  %191 = zext i16 %189 to i32
  %192 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %191, i1 true)
  %193 = xor i32 %192, 31
  %194 = sub nsw i32 %3, %193
  %195 = trunc nsw i32 %194 to i8
  %196 = getelementptr inbounds nuw i8, ptr %184, i64 3
  store i8 %195, ptr %196, align 1, !tbaa !25
  %197 = and i32 %194, 255
  %198 = shl i32 %191, %197
  %199 = sub i32 %198, %12
  %200 = trunc i32 %199 to i16
  store i16 %200, ptr %184, align 2, !tbaa !26
  %201 = add nuw nsw i64 %183, 1
  %202 = icmp eq i64 %201, %181
  br i1 %202, label %.loopexit, label %182, !llvm.loop !27

.loopexit:                                        ; preds = %182, %177, %23, %6
  %203 = phi i64 [ -1, %177 ], [ -46, %6 ], [ -44, %23 ], [ 0, %182 ]
  ret i64 %203
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
  br label %784

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i32 255, ptr %16, align 4, !tbaa !28
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %22 = icmp ult i64 %6, 512
  br i1 %22, label %782, label %23

23:                                               ; preds = %20
  %24 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef 0) #11
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %782

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !28
  %28 = icmp ugt i32 %27, %4
  br i1 %28, label %782, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %31 = sub i64 %3, %24
  %32 = shl nuw i32 1, %27
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 0, !nosanitize !30
  %35 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %35, label %36, label %37, !prof !31, !nosanitize !30

36:                                               ; preds = %37, %29
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !30
  unreachable, !nosanitize !30

37:                                               ; preds = %29
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !30
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !30
  br i1 %39, label %36, label %40, !prof !31, !nosanitize !30

40:                                               ; preds = %37
  %41 = extractvalue { i32, i1 } %38, 0, !nosanitize !30
  %42 = sext i32 %41 to i64
  %43 = load i32, ptr %16, align 4, !tbaa !28
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 1
  %47 = zext nneg i32 %27 to i64
  %48 = shl nuw i64 1, %47
  %49 = shl nsw i64 %42, 2
  %50 = add nuw i64 %48, 11
  %51 = add i64 %50, %49
  %52 = add i64 %51, %46
  %53 = and i64 %52, -4
  %54 = add i64 %53, 516
  %55 = icmp ugt i64 %54, %6
  br i1 %55, label %782, label %56

56:                                               ; preds = %40
  %57 = sext i32 %34 to i64
  %58 = shl nsw i64 %57, 2
  %59 = getelementptr inbounds nuw i8, ptr %21, i64 %58
  %60 = add i64 %6, -512
  %61 = sub i64 %60, %58
  %62 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %21, ptr noundef %5, i32 noundef %43, i32 noundef %27, ptr noundef nonnull %59, i64 noundef %61)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %782

64:                                               ; preds = %56
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %66 = load i16, ptr %65, align 2, !tbaa !32
  %67 = icmp eq i16 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %69 = getelementptr inbounds i8, ptr %68, i64 -3
  br i1 %67, label %458, label %70

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %71 = icmp eq i64 %31, 0
  br i1 %71, label %.loopexit64, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %73, align 8, !tbaa !34
  %74 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %75 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %74, ptr %75, align 8, !tbaa !38
  %76 = icmp ugt i64 %31, 7
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %79, ptr %80, align 8, !tbaa !39
  %81 = load i64, ptr %79, align 1
  store i64 %81, ptr %9, align 8, !tbaa !40
  %82 = icmp ult i64 %81, 72057594037927936
  br i1 %82, label %.loopexit64, label %140

83:                                               ; preds = %72
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %30, ptr %84, align 8, !tbaa !39
  %85 = load i8, ptr %30, align 1, !tbaa !20
  %86 = zext i8 %85 to i64
  store i64 %86, ptr %9, align 8, !tbaa !40
  switch i64 %31, label %128 [
    i64 7, label %87
    i64 6, label %93
    i64 5, label %100
    i64 4, label %107
    i64 3, label %114
    i64 2, label %121
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %30, i64 6
  %89 = load i8, ptr %88, align 1, !tbaa !20
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 48
  %92 = or disjoint i64 %91, %86
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i64 [ %86, %83 ], [ %92, %87 ]
  %95 = getelementptr inbounds nuw i8, ptr %30, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !20
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 40
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %83
  %101 = phi i64 [ %86, %83 ], [ %99, %93 ]
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 32
  %106 = add nuw nsw i64 %105, %101
  br label %107

107:                                              ; preds = %100, %83
  %108 = phi i64 [ %86, %83 ], [ %106, %100 ]
  %109 = getelementptr inbounds nuw i8, ptr %30, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !20
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 24
  %113 = add nuw nsw i64 %112, %108
  br label %114

114:                                              ; preds = %107, %83
  %115 = phi i64 [ %86, %83 ], [ %113, %107 ]
  %116 = getelementptr inbounds nuw i8, ptr %30, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !20
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 16
  %120 = add nuw nsw i64 %119, %115
  br label %121

121:                                              ; preds = %114, %83
  %122 = phi i64 [ %86, %83 ], [ %120, %114 ]
  %123 = getelementptr inbounds nuw i8, ptr %30, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !20
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = add nuw nsw i64 %126, %122
  store i64 %127, ptr %9, align 8, !tbaa !40
  br label %128

128:                                              ; preds = %121, %83
  %129 = getelementptr i8, ptr %2, i64 %3
  %130 = getelementptr i8, ptr %129, i64 -1
  %131 = load i8, ptr %130, align 1, !tbaa !20
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %.loopexit64, label %133

133:                                              ; preds = %128
  %134 = zext i8 %131 to i32
  %135 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %134, i1 true)
  %136 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %137 = trunc nuw nsw i64 %31 to i32
  %138 = shl nuw nsw i32 %137, 3
  %reass.sub90 = sub nsw i32 %135, %138
  %139 = add nsw i32 %reass.sub90, 41
  store i32 %139, ptr %136, align 8, !tbaa !41
  br label %148

140:                                              ; preds = %77
  %141 = lshr i64 %81, 56
  %142 = trunc nuw nsw i64 %141 to i32
  %143 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %142, i1 true)
  %144 = xor i32 %143, 31
  %145 = sub nuw nsw i32 8, %144
  %146 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %145, ptr %146, align 8, !tbaa !41
  %147 = icmp ult i64 %31, -119
  br i1 %147, label %148, label %.loopexit64

148:                                              ; preds = %140, %133
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %9, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %21)
  %149 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %150 = load i32, ptr %149, align 8, !tbaa !41
  %151 = icmp ugt i32 %150, 64
  br i1 %151, label %.loopexit64, label %152, !prof !42

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %154 = load ptr, ptr %153, align 8, !tbaa !39
  %155 = load ptr, ptr %75, align 8, !tbaa !38
  %156 = icmp ult ptr %154, %155
  br i1 %156, label %165, label %157

157:                                              ; preds = %152
  %158 = lshr i32 %150, 3
  %159 = zext nneg i32 %158 to i64
  %160 = sub nsw i64 0, %159
  %161 = getelementptr inbounds i8, ptr %154, i64 %160
  %162 = and i32 %150, 7
  %163 = load i64, ptr %161, align 1, !tbaa !13
  store i64 %163, ptr %9, align 8, !tbaa !40
  %164 = load ptr, ptr %73, align 8
  br label %170

165:                                              ; preds = %152
  %166 = load ptr, ptr %73, align 8, !tbaa !34
  %167 = icmp eq ptr %154, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i64, ptr %9, align 8
  br label %170

170:                                              ; preds = %168, %157
  %171 = phi ptr [ %161, %157 ], [ %154, %168 ]
  %172 = phi ptr [ %164, %157 ], [ %154, %168 ]
  %173 = phi i64 [ %163, %157 ], [ %169, %168 ]
  %174 = phi i32 [ %162, %157 ], [ %150, %168 ]
  %175 = load i64, ptr %10, align 8
  %176 = load i64, ptr %11, align 8
  %177 = ptrtoint ptr %172 to i64
  %178 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %181 = load ptr, ptr %180, align 8
  br label %206

182:                                              ; preds = %165
  %183 = lshr i32 %150, 3
  %184 = zext nneg i32 %183 to i64
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds i8, ptr %154, i64 %185
  %187 = icmp ult ptr %186, %166
  %188 = ptrtoint ptr %154 to i64
  %189 = ptrtoint ptr %166 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = select i1 %187, i32 %191, i32 %183
  %193 = zext i32 %192 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %154, i64 %194
  %196 = shl i32 %192, 3
  %197 = sub i32 %150, %196
  %198 = load i64, ptr %195, align 1, !tbaa !13
  store i64 %198, ptr %9, align 8, !tbaa !40
  %199 = load i64, ptr %10, align 8
  %200 = load i64, ptr %11, align 8
  %201 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %204 = load ptr, ptr %203, align 8
  %205 = icmp ugt i32 %197, 64
  br i1 %205, label %.loopexit65, label %206, !prof !43

206:                                              ; preds = %182, %170
  %207 = phi ptr [ %181, %170 ], [ %204, %182 ]
  %208 = phi ptr [ %179, %170 ], [ %202, %182 ]
  %209 = phi i64 [ %177, %170 ], [ %189, %182 ]
  %210 = phi i64 [ %176, %170 ], [ %200, %182 ]
  %211 = phi i64 [ %175, %170 ], [ %199, %182 ]
  %212 = phi i32 [ %174, %170 ], [ %197, %182 ]
  %213 = phi i64 [ %173, %170 ], [ %198, %182 ]
  %214 = phi ptr [ %172, %170 ], [ %166, %182 ]
  %215 = phi ptr [ %171, %170 ], [ %195, %182 ]
  br label %216

216:                                              ; preds = %263, %206
  %217 = phi ptr [ %335, %263 ], [ %0, %206 ]
  %218 = phi i32 [ %331, %263 ], [ %212, %206 ]
  %219 = phi i64 [ %248, %263 ], [ %213, %206 ]
  %220 = phi i64 [ %314, %263 ], [ %211, %206 ]
  %221 = phi i64 [ %333, %263 ], [ %210, %206 ]
  %222 = phi ptr [ %247, %263 ], [ %215, %206 ]
  %223 = icmp ult ptr %222, %155
  br i1 %223, label %227, label %224

224:                                              ; preds = %216
  %225 = lshr i32 %218, 3
  %226 = and i32 %218, 7
  br label %241

227:                                              ; preds = %216
  %228 = icmp eq ptr %222, %214
  br i1 %228, label %.loopexit65, label %229

229:                                              ; preds = %227
  %230 = lshr i32 %218, 3
  %231 = zext nneg i32 %230 to i64
  %232 = sub nsw i64 0, %231
  %233 = getelementptr inbounds i8, ptr %222, i64 %232
  %234 = icmp uge ptr %233, %214
  %235 = ptrtoint ptr %222 to i64
  %236 = sub i64 %235, %209
  %237 = trunc i64 %236 to i32
  %238 = select i1 %234, i32 %230, i32 %237
  %239 = shl i32 %238, 3
  %240 = sub i32 %218, %239
  br label %241

241:                                              ; preds = %229, %224
  %242 = phi i32 [ %225, %224 ], [ %238, %229 ]
  %243 = phi i32 [ %226, %224 ], [ %240, %229 ]
  %244 = phi i1 [ true, %224 ], [ %234, %229 ]
  %245 = zext i32 %242 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %222, i64 %246
  %248 = load i64, ptr %247, align 1, !tbaa !13
  %249 = icmp ult ptr %217, %69
  %250 = and i1 %249, %244
  br i1 %250, label %263, label %.loopexit65

.loopexit65:                                      ; preds = %263, %241, %227, %182
  %251 = phi ptr [ %204, %182 ], [ %207, %227 ], [ %207, %241 ], [ %207, %263 ]
  %252 = phi ptr [ %202, %182 ], [ %208, %227 ], [ %208, %241 ], [ %208, %263 ]
  %253 = phi i64 [ %189, %182 ], [ %209, %227 ], [ %209, %241 ], [ %209, %263 ]
  %254 = phi ptr [ %166, %182 ], [ %214, %227 ], [ %214, %241 ], [ %214, %263 ]
  %255 = phi i64 [ %198, %182 ], [ %248, %263 ], [ %248, %241 ], [ %219, %227 ]
  %256 = phi i64 [ %200, %182 ], [ %333, %263 ], [ %221, %241 ], [ %221, %227 ]
  %257 = phi i64 [ %199, %182 ], [ %314, %263 ], [ %220, %241 ], [ %220, %227 ]
  %258 = phi ptr [ %0, %182 ], [ %335, %263 ], [ %217, %241 ], [ %217, %227 ]
  %259 = phi i32 [ %197, %182 ], [ %331, %263 ], [ %243, %241 ], [ %218, %227 ]
  %260 = phi ptr [ @BIT_reloadDStream.zeroFilled, %182 ], [ @BIT_reloadDStream.zeroFilled, %263 ], [ %247, %241 ], [ %222, %227 ]
  store i64 %255, ptr %9, align 8
  store i64 %257, ptr %10, align 8
  store i64 %256, ptr %11, align 8
  %261 = getelementptr inbounds i8, ptr %68, i64 -2
  %262 = icmp ugt ptr %258, %261
  br i1 %262, label %.loopexit64, label %.preheader63

263:                                              ; preds = %241
  %264 = getelementptr inbounds nuw [4 x i8], ptr %208, i64 %220
  %265 = load i16, ptr %264, align 2, !tbaa !5
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 2
  %267 = load i8, ptr %266, align 2, !tbaa !20
  %268 = getelementptr inbounds nuw i8, ptr %264, i64 3
  %269 = load i8, ptr %268, align 1, !tbaa !20
  %270 = zext i8 %269 to i32
  %271 = and i32 %243, 63
  %272 = zext nneg i32 %271 to i64
  %273 = shl i64 %248, %272
  %274 = sub nsw i32 0, %270
  %275 = and i32 %274, 63
  %276 = zext nneg i32 %275 to i64
  %277 = lshr i64 %273, %276
  %278 = add i32 %243, %270
  %279 = zext i16 %265 to i64
  store i8 %267, ptr %217, align 1, !tbaa !20
  %280 = getelementptr inbounds nuw [4 x i8], ptr %207, i64 %221
  %281 = load i16, ptr %280, align 2, !tbaa !5
  %282 = getelementptr inbounds nuw i8, ptr %280, i64 2
  %283 = load i8, ptr %282, align 2, !tbaa !20
  %284 = getelementptr inbounds nuw i8, ptr %280, i64 3
  %285 = load i8, ptr %284, align 1, !tbaa !20
  %286 = zext i8 %285 to i32
  %287 = and i32 %278, 63
  %288 = zext nneg i32 %287 to i64
  %289 = shl i64 %248, %288
  %290 = sub nsw i32 0, %286
  %291 = and i32 %290, 63
  %292 = zext nneg i32 %291 to i64
  %293 = lshr i64 %289, %292
  %294 = add i32 %278, %286
  %295 = zext i16 %281 to i64
  %296 = getelementptr inbounds nuw i8, ptr %217, i64 1
  store i8 %283, ptr %296, align 1, !tbaa !20
  %297 = getelementptr [4 x i8], ptr %208, i64 %277
  %298 = getelementptr [4 x i8], ptr %297, i64 %279
  %299 = load i16, ptr %298, align 2, !tbaa !5
  %300 = getelementptr inbounds nuw i8, ptr %298, i64 2
  %301 = load i8, ptr %300, align 2, !tbaa !20
  %302 = getelementptr inbounds nuw i8, ptr %298, i64 3
  %303 = load i8, ptr %302, align 1, !tbaa !20
  %304 = zext i8 %303 to i32
  %305 = and i32 %294, 63
  %306 = zext nneg i32 %305 to i64
  %307 = shl i64 %248, %306
  %308 = sub nsw i32 0, %304
  %309 = and i32 %308, 63
  %310 = zext nneg i32 %309 to i64
  %311 = lshr i64 %307, %310
  %312 = add i32 %294, %304
  %313 = zext i16 %299 to i64
  %314 = add i64 %311, %313
  %315 = getelementptr inbounds nuw i8, ptr %217, i64 2
  store i8 %301, ptr %315, align 1, !tbaa !20
  %316 = getelementptr [4 x i8], ptr %207, i64 %293
  %317 = getelementptr [4 x i8], ptr %316, i64 %295
  %318 = load i16, ptr %317, align 2, !tbaa !5
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 2
  %320 = load i8, ptr %319, align 2, !tbaa !20
  %321 = getelementptr inbounds nuw i8, ptr %317, i64 3
  %322 = load i8, ptr %321, align 1, !tbaa !20
  %323 = zext i8 %322 to i32
  %324 = and i32 %312, 63
  %325 = zext nneg i32 %324 to i64
  %326 = shl i64 %248, %325
  %327 = sub nsw i32 0, %323
  %328 = and i32 %327, 63
  %329 = zext nneg i32 %328 to i64
  %330 = lshr i64 %326, %329
  %331 = add i32 %312, %323
  %332 = zext i16 %318 to i64
  %333 = add i64 %330, %332
  %334 = getelementptr inbounds nuw i8, ptr %217, i64 3
  store i8 %320, ptr %334, align 1, !tbaa !20
  %335 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %336 = icmp ugt i32 %331, 64
  br i1 %336, label %.loopexit65, label %216, !prof !44, !llvm.loop !45

.preheader63:                                     ; preds = %.loopexit65, %443
  %337 = phi ptr [ %444, %443 ], [ %260, %.loopexit65 ]
  %338 = phi ptr [ %415, %443 ], [ %258, %.loopexit65 ]
  %339 = phi i64 [ %359, %443 ], [ %257, %.loopexit65 ]
  %340 = phi i64 [ %446, %443 ], [ %255, %.loopexit65 ]
  %341 = phi i32 [ %445, %443 ], [ %259, %.loopexit65 ]
  %342 = phi i64 [ %414, %443 ], [ %256, %.loopexit65 ]
  %343 = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %339
  %344 = load i16, ptr %343, align 2, !tbaa !5
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 2
  %346 = load i8, ptr %345, align 2, !tbaa !20
  %347 = getelementptr inbounds nuw i8, ptr %343, i64 3
  %348 = load i8, ptr %347, align 1, !tbaa !20
  %349 = zext i8 %348 to i32
  %350 = and i32 %341, 63
  %351 = zext nneg i32 %350 to i64
  %352 = shl i64 %340, %351
  %353 = sub nsw i32 0, %349
  %354 = and i32 %353, 63
  %355 = zext nneg i32 %354 to i64
  %356 = lshr i64 %352, %355
  %357 = add i32 %341, %349
  %358 = zext i16 %344 to i64
  %359 = add i64 %356, %358
  %360 = getelementptr inbounds nuw i8, ptr %338, i64 1
  store i8 %346, ptr %338, align 1, !tbaa !20
  %361 = icmp ugt i32 %357, 64
  br i1 %361, label %381, label %362, !prof !42

362:                                              ; preds = %.preheader63
  %363 = icmp ult ptr %337, %155
  br i1 %363, label %367, label %364

364:                                              ; preds = %362
  %365 = lshr i32 %357, 3
  %366 = and i32 %357, 7
  br label %385

367:                                              ; preds = %362
  %368 = icmp eq ptr %337, %254
  br i1 %368, label %392, label %369

369:                                              ; preds = %367
  %370 = lshr i32 %357, 3
  %371 = zext nneg i32 %370 to i64
  %372 = sub nsw i64 0, %371
  %373 = getelementptr inbounds i8, ptr %337, i64 %372
  %374 = icmp ult ptr %373, %254
  %375 = ptrtoint ptr %337 to i64
  %376 = sub i64 %375, %253
  %377 = trunc i64 %376 to i32
  %378 = select i1 %374, i32 %377, i32 %370
  %379 = shl i32 %378, 3
  %380 = sub i32 %357, %379
  br label %385

381:                                              ; preds = %.preheader63
  %.split53 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %342
  %382 = getelementptr inbounds nuw i8, ptr %.split53, i64 2
  %383 = load i8, ptr %382, align 2, !tbaa !20
  %384 = getelementptr inbounds nuw i8, ptr %338, i64 2
  store i8 %383, ptr %360, align 1, !tbaa !20
  br label %452

385:                                              ; preds = %369, %364
  %386 = phi i32 [ %365, %364 ], [ %378, %369 ]
  %387 = phi i32 [ %366, %364 ], [ %380, %369 ]
  %388 = zext i32 %386 to i64
  %389 = sub nsw i64 0, %388
  %390 = getelementptr inbounds i8, ptr %337, i64 %389
  %391 = load i64, ptr %390, align 1, !tbaa !13
  store i64 %391, ptr %9, align 8, !tbaa !40
  br label %392

392:                                              ; preds = %385, %367
  %393 = phi ptr [ %337, %367 ], [ %390, %385 ]
  %394 = phi i32 [ %357, %367 ], [ %387, %385 ]
  %395 = phi i64 [ %340, %367 ], [ %391, %385 ]
  %396 = icmp ugt ptr %360, %261
  br i1 %396, label %.loopexit64, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %342
  %399 = load i16, ptr %398, align 2, !tbaa !5
  %400 = getelementptr inbounds nuw i8, ptr %398, i64 2
  %401 = load i8, ptr %400, align 2, !tbaa !20
  %402 = getelementptr inbounds nuw i8, ptr %398, i64 3
  %403 = load i8, ptr %402, align 1, !tbaa !20
  %404 = zext i8 %403 to i32
  %405 = and i32 %394, 63
  %406 = zext nneg i32 %405 to i64
  %407 = shl i64 %395, %406
  %408 = sub nsw i32 0, %404
  %409 = and i32 %408, 63
  %410 = zext nneg i32 %409 to i64
  %411 = lshr i64 %407, %410
  %412 = add i32 %394, %404
  %413 = zext i16 %399 to i64
  %414 = add i64 %411, %413
  %415 = getelementptr inbounds nuw i8, ptr %338, i64 2
  store i8 %401, ptr %360, align 1, !tbaa !20
  %416 = icmp ugt i32 %412, 64
  br i1 %416, label %448, label %417, !prof !42

417:                                              ; preds = %397
  %418 = icmp ult ptr %393, %155
  br i1 %418, label %422, label %419

419:                                              ; preds = %417
  %420 = lshr i32 %412, 3
  %421 = and i32 %412, 7
  br label %436

422:                                              ; preds = %417
  %423 = icmp eq ptr %393, %254
  br i1 %423, label %443, label %424

424:                                              ; preds = %422
  %425 = lshr i32 %412, 3
  %426 = zext nneg i32 %425 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %393, i64 %427
  %429 = icmp ult ptr %428, %254
  %430 = ptrtoint ptr %393 to i64
  %431 = sub i64 %430, %253
  %432 = trunc i64 %431 to i32
  %433 = select i1 %429, i32 %432, i32 %425
  %434 = shl i32 %433, 3
  %435 = sub i32 %412, %434
  br label %436

436:                                              ; preds = %424, %419
  %437 = phi i32 [ %420, %419 ], [ %433, %424 ]
  %438 = phi i32 [ %421, %419 ], [ %435, %424 ]
  %439 = zext i32 %437 to i64
  %440 = sub nsw i64 0, %439
  %441 = getelementptr inbounds i8, ptr %393, i64 %440
  %442 = load i64, ptr %441, align 1, !tbaa !13
  store i64 %442, ptr %9, align 8, !tbaa !40
  br label %443

443:                                              ; preds = %436, %422
  %444 = phi ptr [ %393, %422 ], [ %441, %436 ]
  %445 = phi i32 [ %412, %422 ], [ %438, %436 ]
  %446 = phi i64 [ %395, %422 ], [ %442, %436 ]
  %447 = icmp ugt ptr %415, %261
  br i1 %447, label %.loopexit64, label %.preheader63

448:                                              ; preds = %397
  %.split = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %359
  %449 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %450 = load i8, ptr %449, align 2, !tbaa !20
  %451 = getelementptr inbounds nuw i8, ptr %338, i64 3
  store i8 %450, ptr %415, align 1, !tbaa !20
  br label %452

452:                                              ; preds = %448, %381
  %453 = phi ptr [ %384, %381 ], [ %451, %448 ]
  %454 = ptrtoint ptr %453 to i64
  %455 = ptrtoint ptr %0 to i64
  %456 = sub i64 %454, %455
  br label %.loopexit64

.loopexit64:                                      ; preds = %443, %392, %452, %.loopexit65, %148, %140, %128, %77, %70
  %457 = phi i64 [ %456, %452 ], [ %31, %140 ], [ -72, %70 ], [ -1, %77 ], [ -20, %128 ], [ -20, %148 ], [ -70, %.loopexit65 ], [ -70, %392 ], [ -70, %443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %782

458:                                              ; preds = %64
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %459 = call fastcc i64 @BIT_initDStream(ptr noundef %12, ptr noundef %30, i64 noundef %31)
  %460 = icmp ult i64 %459, -119
  br i1 %460, label %461, label %.loopexit

461:                                              ; preds = %458
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %12, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %14, ptr noundef %12, ptr noundef nonnull %21)
  %462 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %463 = load i32, ptr %462, align 8, !tbaa !41
  %464 = icmp ugt i32 %463, 64
  br i1 %464, label %.loopexit, label %465, !prof !42

465:                                              ; preds = %461
  %466 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %467 = load ptr, ptr %466, align 8, !tbaa !39
  %468 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %469 = load ptr, ptr %468, align 8, !tbaa !38
  %470 = icmp ult ptr %467, %469
  br i1 %470, label %480, label %471

471:                                              ; preds = %465
  %472 = lshr i32 %463, 3
  %473 = zext nneg i32 %472 to i64
  %474 = sub nsw i64 0, %473
  %475 = getelementptr inbounds i8, ptr %467, i64 %474
  %476 = and i32 %463, 7
  %477 = load i64, ptr %475, align 1, !tbaa !13
  store i64 %477, ptr %12, align 8, !tbaa !40
  %478 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %479 = load ptr, ptr %478, align 8
  br label %486

480:                                              ; preds = %465
  %481 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %482 = load ptr, ptr %481, align 8, !tbaa !34
  %483 = icmp eq ptr %467, %482
  br i1 %483, label %484, label %498

484:                                              ; preds = %480
  %485 = load i64, ptr %12, align 8
  br label %486

486:                                              ; preds = %484, %471
  %487 = phi ptr [ %475, %471 ], [ %467, %484 ]
  %488 = phi ptr [ %479, %471 ], [ %467, %484 ]
  %489 = phi i64 [ %477, %471 ], [ %485, %484 ]
  %490 = phi i32 [ %476, %471 ], [ %463, %484 ]
  %491 = load i64, ptr %13, align 8
  %492 = load i64, ptr %14, align 8
  %493 = ptrtoint ptr %488 to i64
  %494 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %495 = load ptr, ptr %494, align 8
  %496 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %497 = load ptr, ptr %496, align 8
  br label %522

498:                                              ; preds = %480
  %499 = lshr i32 %463, 3
  %500 = zext nneg i32 %499 to i64
  %501 = sub nsw i64 0, %500
  %502 = getelementptr inbounds i8, ptr %467, i64 %501
  %503 = icmp ult ptr %502, %482
  %504 = ptrtoint ptr %467 to i64
  %505 = ptrtoint ptr %482 to i64
  %506 = sub i64 %504, %505
  %507 = trunc i64 %506 to i32
  %508 = select i1 %503, i32 %507, i32 %499
  %509 = zext i32 %508 to i64
  %510 = sub nsw i64 0, %509
  %511 = getelementptr inbounds i8, ptr %467, i64 %510
  %512 = shl i32 %508, 3
  %513 = sub i32 %463, %512
  %514 = load i64, ptr %511, align 1, !tbaa !13
  store i64 %514, ptr %12, align 8, !tbaa !40
  %515 = load i64, ptr %13, align 8
  %516 = load i64, ptr %14, align 8
  %517 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %518 = load ptr, ptr %517, align 8
  %519 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %520 = load ptr, ptr %519, align 8
  %521 = icmp ugt i32 %513, 64
  br i1 %521, label %.loopexit57, label %522, !prof !43

522:                                              ; preds = %498, %486
  %523 = phi ptr [ %497, %486 ], [ %520, %498 ]
  %524 = phi ptr [ %495, %486 ], [ %518, %498 ]
  %525 = phi i64 [ %493, %486 ], [ %505, %498 ]
  %526 = phi i64 [ %492, %486 ], [ %516, %498 ]
  %527 = phi i64 [ %491, %486 ], [ %515, %498 ]
  %528 = phi i32 [ %490, %486 ], [ %513, %498 ]
  %529 = phi i64 [ %489, %486 ], [ %514, %498 ]
  %530 = phi ptr [ %488, %486 ], [ %482, %498 ]
  %531 = phi ptr [ %487, %486 ], [ %511, %498 ]
  br label %532

532:                                              ; preds = %579, %522
  %533 = phi ptr [ %655, %579 ], [ %0, %522 ]
  %534 = phi i32 [ %643, %579 ], [ %528, %522 ]
  %535 = phi i64 [ %564, %579 ], [ %529, %522 ]
  %536 = phi i64 [ %633, %579 ], [ %527, %522 ]
  %537 = phi i64 [ %653, %579 ], [ %526, %522 ]
  %538 = phi ptr [ %563, %579 ], [ %531, %522 ]
  %539 = icmp ult ptr %538, %469
  br i1 %539, label %543, label %540

540:                                              ; preds = %532
  %541 = lshr i32 %534, 3
  %542 = and i32 %534, 7
  br label %557

543:                                              ; preds = %532
  %544 = icmp eq ptr %538, %530
  br i1 %544, label %.loopexit57, label %545

545:                                              ; preds = %543
  %546 = lshr i32 %534, 3
  %547 = zext nneg i32 %546 to i64
  %548 = sub nsw i64 0, %547
  %549 = getelementptr inbounds i8, ptr %538, i64 %548
  %550 = icmp uge ptr %549, %530
  %551 = ptrtoint ptr %538 to i64
  %552 = sub i64 %551, %525
  %553 = trunc i64 %552 to i32
  %554 = select i1 %550, i32 %546, i32 %553
  %555 = shl i32 %554, 3
  %556 = sub i32 %534, %555
  br label %557

557:                                              ; preds = %545, %540
  %558 = phi i32 [ %541, %540 ], [ %554, %545 ]
  %559 = phi i32 [ %542, %540 ], [ %556, %545 ]
  %560 = phi i1 [ true, %540 ], [ %550, %545 ]
  %561 = zext i32 %558 to i64
  %562 = sub nsw i64 0, %561
  %563 = getelementptr inbounds i8, ptr %538, i64 %562
  %564 = load i64, ptr %563, align 1, !tbaa !13
  %565 = icmp ult ptr %533, %69
  %566 = and i1 %565, %560
  br i1 %566, label %579, label %.loopexit57

.loopexit57:                                      ; preds = %579, %557, %543, %498
  %567 = phi ptr [ %520, %498 ], [ %523, %543 ], [ %523, %557 ], [ %523, %579 ]
  %568 = phi ptr [ %518, %498 ], [ %524, %543 ], [ %524, %557 ], [ %524, %579 ]
  %569 = phi i64 [ %505, %498 ], [ %525, %543 ], [ %525, %557 ], [ %525, %579 ]
  %570 = phi ptr [ %482, %498 ], [ %530, %543 ], [ %530, %557 ], [ %530, %579 ]
  %571 = phi i64 [ %516, %498 ], [ %653, %579 ], [ %537, %557 ], [ %537, %543 ]
  %572 = phi i64 [ %515, %498 ], [ %633, %579 ], [ %536, %557 ], [ %536, %543 ]
  %573 = phi ptr [ %0, %498 ], [ %655, %579 ], [ %533, %557 ], [ %533, %543 ]
  %574 = phi i32 [ %513, %498 ], [ %643, %579 ], [ %559, %557 ], [ %534, %543 ]
  %575 = phi i64 [ %514, %498 ], [ %564, %579 ], [ %564, %557 ], [ %535, %543 ]
  %576 = phi ptr [ @BIT_reloadDStream.zeroFilled, %498 ], [ @BIT_reloadDStream.zeroFilled, %579 ], [ %563, %557 ], [ %538, %543 ]
  store ptr %576, ptr %466, align 8
  store i32 %574, ptr %462, align 8
  store i64 %575, ptr %12, align 8
  store i64 %572, ptr %13, align 8
  store i64 %571, ptr %14, align 8
  %577 = getelementptr inbounds i8, ptr %68, i64 -2
  %578 = icmp ugt ptr %573, %577
  br i1 %578, label %.loopexit, label %.preheader

579:                                              ; preds = %557
  %580 = getelementptr inbounds nuw [4 x i8], ptr %524, i64 %536
  %581 = load i16, ptr %580, align 2, !tbaa !5
  %582 = getelementptr inbounds nuw i8, ptr %580, i64 2
  %583 = load i8, ptr %582, align 2, !tbaa !20
  %584 = getelementptr inbounds nuw i8, ptr %580, i64 3
  %585 = load i8, ptr %584, align 1, !tbaa !20
  %586 = zext i8 %585 to i32
  %587 = add i32 %559, %586
  %588 = sub i32 0, %587
  %589 = and i32 %588, 63
  %590 = zext nneg i32 %589 to i64
  %591 = lshr i64 %564, %590
  %592 = zext nneg i8 %585 to i64
  %593 = shl nsw i64 -1, %592
  %594 = xor i64 %593, -1
  %595 = and i64 %591, %594
  %596 = zext i16 %581 to i64
  store i8 %583, ptr %533, align 1, !tbaa !20
  %597 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %537
  %598 = load i16, ptr %597, align 2, !tbaa !5
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 2
  %600 = load i8, ptr %599, align 2, !tbaa !20
  %601 = getelementptr inbounds nuw i8, ptr %597, i64 3
  %602 = load i8, ptr %601, align 1, !tbaa !20
  %603 = zext i8 %602 to i32
  %604 = add i32 %587, %603
  %605 = sub i32 0, %604
  %606 = and i32 %605, 63
  %607 = zext nneg i32 %606 to i64
  %608 = lshr i64 %564, %607
  %609 = zext nneg i8 %602 to i64
  %610 = shl nsw i64 -1, %609
  %611 = xor i64 %610, -1
  %612 = and i64 %608, %611
  %613 = zext i16 %598 to i64
  %614 = getelementptr inbounds nuw i8, ptr %533, i64 1
  store i8 %600, ptr %614, align 1, !tbaa !20
  %615 = getelementptr inbounds nuw [4 x i8], ptr %524, i64 %595
  %616 = getelementptr inbounds nuw [4 x i8], ptr %615, i64 %596
  %617 = load i16, ptr %616, align 2, !tbaa !5
  %618 = getelementptr inbounds nuw i8, ptr %616, i64 2
  %619 = load i8, ptr %618, align 2, !tbaa !20
  %620 = getelementptr inbounds nuw i8, ptr %616, i64 3
  %621 = load i8, ptr %620, align 1, !tbaa !20
  %622 = zext i8 %621 to i32
  %623 = add i32 %604, %622
  %624 = sub i32 0, %623
  %625 = and i32 %624, 63
  %626 = zext nneg i32 %625 to i64
  %627 = lshr i64 %564, %626
  %628 = zext nneg i8 %621 to i64
  %629 = shl nsw i64 -1, %628
  %630 = xor i64 %629, -1
  %631 = and i64 %627, %630
  %632 = zext i16 %617 to i64
  %633 = add nuw i64 %631, %632
  %634 = getelementptr inbounds nuw i8, ptr %533, i64 2
  store i8 %619, ptr %634, align 1, !tbaa !20
  %635 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %612
  %636 = getelementptr inbounds nuw [4 x i8], ptr %635, i64 %613
  %637 = load i16, ptr %636, align 2, !tbaa !5
  %638 = getelementptr inbounds nuw i8, ptr %636, i64 2
  %639 = load i8, ptr %638, align 2, !tbaa !20
  %640 = getelementptr inbounds nuw i8, ptr %636, i64 3
  %641 = load i8, ptr %640, align 1, !tbaa !20
  %642 = zext i8 %641 to i32
  %643 = add i32 %623, %642
  %644 = sub i32 0, %643
  %645 = and i32 %644, 63
  %646 = zext nneg i32 %645 to i64
  %647 = lshr i64 %564, %646
  %648 = zext nneg i8 %641 to i64
  %649 = shl nsw i64 -1, %648
  %650 = xor i64 %649, -1
  %651 = and i64 %647, %650
  %652 = zext i16 %637 to i64
  %653 = add nuw i64 %651, %652
  %654 = getelementptr inbounds nuw i8, ptr %533, i64 3
  store i8 %639, ptr %654, align 1, !tbaa !20
  %655 = getelementptr inbounds nuw i8, ptr %533, i64 4
  %656 = icmp ugt i32 %643, 64
  br i1 %656, label %.loopexit57, label %532, !prof !44, !llvm.loop !45

.preheader:                                       ; preds = %.loopexit57, %767
  %657 = phi ptr [ %768, %767 ], [ %576, %.loopexit57 ]
  %658 = phi ptr [ %738, %767 ], [ %573, %.loopexit57 ]
  %659 = phi i64 [ %680, %767 ], [ %572, %.loopexit57 ]
  %660 = phi i64 [ %770, %767 ], [ %575, %.loopexit57 ]
  %661 = phi i32 [ %769, %767 ], [ %574, %.loopexit57 ]
  %662 = phi i64 [ %737, %767 ], [ %571, %.loopexit57 ]
  %663 = getelementptr inbounds nuw [4 x i8], ptr %568, i64 %659
  %664 = load i16, ptr %663, align 2, !tbaa !5
  %665 = getelementptr inbounds nuw i8, ptr %663, i64 2
  %666 = load i8, ptr %665, align 2, !tbaa !20
  %667 = getelementptr inbounds nuw i8, ptr %663, i64 3
  %668 = load i8, ptr %667, align 1, !tbaa !20
  %669 = zext i8 %668 to i32
  %670 = add i32 %661, %669
  %671 = sub i32 0, %670
  %672 = and i32 %671, 63
  %673 = zext nneg i32 %672 to i64
  %674 = lshr i64 %660, %673
  %675 = zext nneg i8 %668 to i64
  %676 = shl nsw i64 -1, %675
  %677 = xor i64 %676, -1
  %678 = and i64 %674, %677
  %679 = zext i16 %664 to i64
  %680 = add nuw i64 %678, %679
  %681 = getelementptr inbounds nuw i8, ptr %658, i64 1
  store i8 %666, ptr %658, align 1, !tbaa !20
  %682 = icmp ugt i32 %670, 64
  br i1 %682, label %710, label %683, !prof !42

683:                                              ; preds = %.preheader
  %684 = icmp ult ptr %657, %469
  br i1 %684, label %692, label %685

685:                                              ; preds = %683
  %686 = lshr i32 %670, 3
  %687 = zext nneg i32 %686 to i64
  %688 = sub nsw i64 0, %687
  %689 = getelementptr inbounds i8, ptr %657, i64 %688
  %690 = and i32 %670, 7
  %691 = load i64, ptr %689, align 1, !tbaa !13
  br label %714

692:                                              ; preds = %683
  %693 = icmp eq ptr %657, %570
  br i1 %693, label %714, label %694

694:                                              ; preds = %692
  %695 = lshr i32 %670, 3
  %696 = zext nneg i32 %695 to i64
  %697 = sub nsw i64 0, %696
  %698 = getelementptr inbounds i8, ptr %657, i64 %697
  %699 = icmp ult ptr %698, %570
  %700 = ptrtoint ptr %657 to i64
  %701 = sub i64 %700, %569
  %702 = trunc i64 %701 to i32
  %703 = select i1 %699, i32 %702, i32 %695
  %704 = zext i32 %703 to i64
  %705 = sub nsw i64 0, %704
  %706 = getelementptr inbounds i8, ptr %657, i64 %705
  %707 = shl i32 %703, 3
  %708 = sub i32 %670, %707
  %709 = load i64, ptr %706, align 1, !tbaa !13
  br label %714

710:                                              ; preds = %.preheader
  %.split55 = getelementptr inbounds nuw [4 x i8], ptr %567, i64 %662
  %711 = getelementptr inbounds nuw i8, ptr %.split55, i64 2
  %712 = load i8, ptr %711, align 2, !tbaa !20
  %713 = getelementptr inbounds nuw i8, ptr %658, i64 2
  store i8 %712, ptr %681, align 1, !tbaa !20
  br label %776

714:                                              ; preds = %694, %692, %685
  %715 = phi ptr [ %657, %692 ], [ %689, %685 ], [ %706, %694 ]
  %716 = phi i32 [ %670, %692 ], [ %690, %685 ], [ %708, %694 ]
  %717 = phi i64 [ %660, %692 ], [ %691, %685 ], [ %709, %694 ]
  %718 = icmp ugt ptr %681, %577
  br i1 %718, label %.loopexit, label %719

719:                                              ; preds = %714
  %720 = getelementptr inbounds nuw [4 x i8], ptr %567, i64 %662
  %721 = load i16, ptr %720, align 2, !tbaa !5
  %722 = getelementptr inbounds nuw i8, ptr %720, i64 2
  %723 = load i8, ptr %722, align 2, !tbaa !20
  %724 = getelementptr inbounds nuw i8, ptr %720, i64 3
  %725 = load i8, ptr %724, align 1, !tbaa !20
  %726 = zext i8 %725 to i32
  %727 = add i32 %716, %726
  %728 = sub i32 0, %727
  %729 = and i32 %728, 63
  %730 = zext nneg i32 %729 to i64
  %731 = lshr i64 %717, %730
  %732 = zext nneg i8 %725 to i64
  %733 = shl nsw i64 -1, %732
  %734 = xor i64 %733, -1
  %735 = and i64 %731, %734
  %736 = zext i16 %721 to i64
  %737 = add nuw i64 %735, %736
  %738 = getelementptr inbounds nuw i8, ptr %658, i64 2
  store i8 %723, ptr %681, align 1, !tbaa !20
  %739 = icmp ugt i32 %727, 64
  br i1 %739, label %772, label %740, !prof !42

740:                                              ; preds = %719
  %741 = icmp ult ptr %715, %469
  br i1 %741, label %749, label %742

742:                                              ; preds = %740
  %743 = lshr i32 %727, 3
  %744 = zext nneg i32 %743 to i64
  %745 = sub nsw i64 0, %744
  %746 = getelementptr inbounds i8, ptr %715, i64 %745
  %747 = and i32 %727, 7
  %748 = load i64, ptr %746, align 1, !tbaa !13
  br label %767

749:                                              ; preds = %740
  %750 = icmp eq ptr %715, %570
  br i1 %750, label %767, label %751

751:                                              ; preds = %749
  %752 = lshr i32 %727, 3
  %753 = zext nneg i32 %752 to i64
  %754 = sub nsw i64 0, %753
  %755 = getelementptr inbounds i8, ptr %715, i64 %754
  %756 = icmp ult ptr %755, %570
  %757 = ptrtoint ptr %715 to i64
  %758 = sub i64 %757, %569
  %759 = trunc i64 %758 to i32
  %760 = select i1 %756, i32 %759, i32 %752
  %761 = zext i32 %760 to i64
  %762 = sub nsw i64 0, %761
  %763 = getelementptr inbounds i8, ptr %715, i64 %762
  %764 = shl i32 %760, 3
  %765 = sub i32 %727, %764
  %766 = load i64, ptr %763, align 1, !tbaa !13
  br label %767

767:                                              ; preds = %751, %749, %742
  %768 = phi ptr [ %715, %749 ], [ %746, %742 ], [ %763, %751 ]
  %769 = phi i32 [ %727, %749 ], [ %747, %742 ], [ %765, %751 ]
  %770 = phi i64 [ %717, %749 ], [ %748, %742 ], [ %766, %751 ]
  %771 = icmp ugt ptr %738, %577
  br i1 %771, label %.loopexit, label %.preheader

772:                                              ; preds = %719
  %.split54 = getelementptr inbounds nuw [4 x i8], ptr %568, i64 %680
  %773 = getelementptr inbounds nuw i8, ptr %.split54, i64 2
  %774 = load i8, ptr %773, align 2, !tbaa !20
  %775 = getelementptr inbounds nuw i8, ptr %658, i64 3
  store i8 %774, ptr %738, align 1, !tbaa !20
  br label %776

776:                                              ; preds = %772, %710
  %777 = phi ptr [ %713, %710 ], [ %775, %772 ]
  %778 = ptrtoint ptr %777 to i64
  %779 = ptrtoint ptr %0 to i64
  %780 = sub i64 %778, %779
  br label %.loopexit

.loopexit:                                        ; preds = %767, %714, %776, %.loopexit57, %461, %458
  %781 = phi i64 [ %780, %776 ], [ %459, %458 ], [ -20, %461 ], [ -70, %.loopexit57 ], [ -70, %714 ], [ -70, %767 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %782

782:                                              ; preds = %.loopexit, %.loopexit64, %56, %40, %26, %23, %20
  %783 = phi i64 [ %62, %56 ], [ -1, %20 ], [ -44, %40 ], [ %457, %.loopexit64 ], [ %781, %.loopexit ], [ -44, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %784

784:                                              ; preds = %782, %18
  %785 = phi i64 [ %19, %18 ], [ %783, %782 ]
  ret i64 %785
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
  br i1 %17, label %773, label %18

18:                                               ; preds = %7
  %19 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3, i32 noundef 1) #11
  %20 = icmp ult i64 %19, -119
  br i1 %20, label %21, label %773

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4, !tbaa !28
  %23 = icmp ugt i32 %22, %4
  br i1 %23, label %773, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %26 = sub i64 %3, %19
  %27 = shl nuw i32 1, %22
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !30
  %29 = extractvalue { i32, i1 } %28, 0, !nosanitize !30
  %30 = extractvalue { i32, i1 } %28, 1, !nosanitize !30
  br i1 %30, label %31, label %32, !prof !31, !nosanitize !30

31:                                               ; preds = %32, %24
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !30
  unreachable, !nosanitize !30

32:                                               ; preds = %24
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %34, label %31, label %35, !prof !31, !nosanitize !30

35:                                               ; preds = %32
  %36 = extractvalue { i32, i1 } %33, 0, !nosanitize !30
  %37 = sext i32 %36 to i64
  %38 = load i32, ptr %15, align 4, !tbaa !28
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 1
  %42 = zext nneg i32 %22 to i64
  %43 = shl nuw i64 1, %42
  %44 = shl nsw i64 %37, 2
  %45 = add nuw i64 %43, 11
  %46 = add i64 %45, %44
  %47 = add i64 %46, %41
  %48 = and i64 %47, -4
  %49 = add i64 %48, 516
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %773, label %51

51:                                               ; preds = %35
  %52 = sext i32 %29 to i64
  %53 = shl nsw i64 %52, 2
  %54 = getelementptr inbounds nuw i8, ptr %16, i64 %53
  %55 = add i64 %6, -512
  %56 = sub i64 %55, %53
  %57 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %16, ptr noundef %5, i32 noundef %38, i32 noundef %22, ptr noundef nonnull %54, i64 noundef %56)
  %58 = icmp ult i64 %57, -119
  br i1 %58, label %59, label %773

59:                                               ; preds = %51
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %61 = load i16, ptr %60, align 2, !tbaa !32
  %62 = icmp eq i16 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %64 = getelementptr inbounds i8, ptr %63, i64 -3
  br i1 %62, label %456, label %65

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %66 = icmp eq i64 %26, 0
  br i1 %66, label %.loopexit66, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %25, ptr %68, align 8, !tbaa !34
  %69 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %70 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %69, ptr %70, align 8, !tbaa !38
  %71 = icmp ugt i64 %26, 7
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %74, ptr %75, align 8, !tbaa !39
  %76 = load i64, ptr %74, align 1
  store i64 %76, ptr %8, align 8, !tbaa !40
  %77 = icmp ult i64 %76, 72057594037927936
  br i1 %77, label %.loopexit66, label %135

78:                                               ; preds = %67
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %25, ptr %79, align 8, !tbaa !39
  %80 = load i8, ptr %25, align 1, !tbaa !20
  %81 = zext i8 %80 to i64
  store i64 %81, ptr %8, align 8, !tbaa !40
  switch i64 %26, label %123 [
    i64 7, label %82
    i64 6, label %88
    i64 5, label %95
    i64 4, label %102
    i64 3, label %109
    i64 2, label %116
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %25, i64 6
  %84 = load i8, ptr %83, align 1, !tbaa !20
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 48
  %87 = or disjoint i64 %86, %81
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi i64 [ %81, %78 ], [ %87, %82 ]
  %90 = getelementptr inbounds nuw i8, ptr %25, i64 5
  %91 = load i8, ptr %90, align 1, !tbaa !20
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 40
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %78
  %96 = phi i64 [ %81, %78 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %98 = load i8, ptr %97, align 1, !tbaa !20
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 32
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %78
  %103 = phi i64 [ %81, %78 ], [ %101, %95 ]
  %104 = getelementptr inbounds nuw i8, ptr %25, i64 3
  %105 = load i8, ptr %104, align 1, !tbaa !20
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 24
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %78
  %110 = phi i64 [ %81, %78 ], [ %108, %102 ]
  %111 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !20
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 16
  %115 = add nuw nsw i64 %114, %110
  br label %116

116:                                              ; preds = %109, %78
  %117 = phi i64 [ %81, %78 ], [ %115, %109 ]
  %118 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !20
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 8
  %122 = add nuw nsw i64 %121, %117
  store i64 %122, ptr %8, align 8, !tbaa !40
  br label %123

123:                                              ; preds = %116, %78
  %124 = getelementptr i8, ptr %2, i64 %3
  %125 = getelementptr i8, ptr %124, i64 -1
  %126 = load i8, ptr %125, align 1, !tbaa !20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %.loopexit66, label %128

128:                                              ; preds = %123
  %129 = zext i8 %126 to i32
  %130 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %129, i1 true)
  %131 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %132 = trunc nuw nsw i64 %26 to i32
  %133 = shl nuw nsw i32 %132, 3
  %reass.sub87 = sub nsw i32 %130, %133
  %134 = add nsw i32 %reass.sub87, 41
  store i32 %134, ptr %131, align 8, !tbaa !41
  br label %143

135:                                              ; preds = %72
  %136 = lshr i64 %76, 56
  %137 = trunc nuw nsw i64 %136 to i32
  %138 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %137, i1 true)
  %139 = xor i32 %138, 31
  %140 = sub nuw nsw i32 8, %139
  %141 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %140, ptr %141, align 8, !tbaa !41
  %142 = icmp ult i64 %26, -119
  br i1 %142, label %143, label %.loopexit66

143:                                              ; preds = %135, %128
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %16)
  %144 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %145 = load i32, ptr %144, align 8, !tbaa !41
  %146 = icmp ugt i32 %145, 64
  br i1 %146, label %.loopexit66, label %147, !prof !42

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %149 = load ptr, ptr %148, align 8, !tbaa !39
  %150 = load ptr, ptr %70, align 8, !tbaa !38
  %151 = icmp ult ptr %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = lshr i32 %145, 3
  %154 = zext nneg i32 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %149, i64 %155
  %157 = and i32 %145, 7
  %158 = load i64, ptr %156, align 1, !tbaa !13
  store i64 %158, ptr %8, align 8, !tbaa !40
  %159 = load ptr, ptr %68, align 8
  br label %.thread

160:                                              ; preds = %147
  %161 = load ptr, ptr %68, align 8, !tbaa !34
  %162 = icmp eq ptr %149, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i64, ptr %8, align 8
  br label %.thread

.thread:                                          ; preds = %163, %152
  %.ph = phi ptr [ %156, %152 ], [ %149, %163 ]
  %.ph53 = phi ptr [ %159, %152 ], [ %149, %163 ]
  %.ph54 = phi i64 [ %158, %152 ], [ %164, %163 ]
  %.ph55 = phi i32 [ %157, %152 ], [ %145, %163 ]
  %165 = load i64, ptr %9, align 8
  %166 = load i64, ptr %10, align 8
  %167 = ptrtoint ptr %.ph53 to i64
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %171 = load ptr, ptr %170, align 8
  br label %196

172:                                              ; preds = %160
  %173 = lshr i32 %145, 3
  %174 = zext nneg i32 %173 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i8, ptr %149, i64 %175
  %177 = icmp ult ptr %176, %161
  %178 = ptrtoint ptr %149 to i64
  %179 = ptrtoint ptr %161 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  %182 = select i1 %177, i32 %181, i32 %173
  %183 = zext i32 %182 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, ptr %149, i64 %184
  %186 = shl i32 %182, 3
  %187 = sub i32 %145, %186
  %188 = load i64, ptr %185, align 1, !tbaa !13
  store i64 %188, ptr %8, align 8, !tbaa !40
  %189 = load i64, ptr %9, align 8
  %190 = load i64, ptr %10, align 8
  %191 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %194 = load ptr, ptr %193, align 8
  %195 = icmp ugt i32 %187, 64
  br i1 %195, label %248, label %196, !prof !43

196:                                              ; preds = %172, %.thread
  %197 = phi ptr [ %171, %.thread ], [ %194, %172 ]
  %198 = phi ptr [ %169, %.thread ], [ %192, %172 ]
  %199 = phi i64 [ %167, %.thread ], [ %179, %172 ]
  %200 = phi i64 [ %166, %.thread ], [ %190, %172 ]
  %201 = phi i64 [ %165, %.thread ], [ %189, %172 ]
  %202 = phi i32 [ %.ph55, %.thread ], [ %187, %172 ]
  %203 = phi i64 [ %.ph54, %.thread ], [ %188, %172 ]
  %204 = phi ptr [ %.ph53, %.thread ], [ %161, %172 ]
  %205 = phi ptr [ %.ph, %.thread ], [ %185, %172 ]
  br label %206

206:                                              ; preds = %261, %196
  %207 = phi i64 [ %238, %261 ], [ %203, %196 ]
  %208 = phi ptr [ %333, %261 ], [ %0, %196 ]
  %209 = phi i32 [ %329, %261 ], [ %202, %196 ]
  %210 = phi i64 [ %312, %261 ], [ %201, %196 ]
  %211 = phi i64 [ %331, %261 ], [ %200, %196 ]
  %212 = phi ptr [ %237, %261 ], [ %205, %196 ]
  %213 = icmp ult ptr %212, %150
  br i1 %213, label %217, label %214

214:                                              ; preds = %206
  %215 = lshr i32 %209, 3
  %216 = and i32 %209, 7
  br label %231

217:                                              ; preds = %206
  %218 = icmp eq ptr %212, %204
  br i1 %218, label %241, label %219

219:                                              ; preds = %217
  %220 = lshr i32 %209, 3
  %221 = zext nneg i32 %220 to i64
  %222 = sub nsw i64 0, %221
  %223 = getelementptr inbounds i8, ptr %212, i64 %222
  %224 = icmp uge ptr %223, %204
  %225 = ptrtoint ptr %212 to i64
  %226 = sub i64 %225, %199
  %227 = trunc i64 %226 to i32
  %228 = select i1 %224, i32 %220, i32 %227
  %229 = shl i32 %228, 3
  %230 = sub i32 %209, %229
  br label %231

231:                                              ; preds = %219, %214
  %232 = phi i32 [ %215, %214 ], [ %228, %219 ]
  %233 = phi i32 [ %216, %214 ], [ %230, %219 ]
  %234 = phi i1 [ true, %214 ], [ %224, %219 ]
  %235 = zext i32 %232 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, ptr %212, i64 %236
  %238 = load i64, ptr %237, align 1, !tbaa !13
  %239 = icmp ult ptr %208, %64
  %240 = and i1 %239, %234
  br i1 %240, label %261, label %241

241:                                              ; preds = %261, %231, %217
  %242 = phi i64 [ %238, %261 ], [ %238, %231 ], [ %207, %217 ]
  %243 = phi i64 [ %331, %261 ], [ %211, %231 ], [ %211, %217 ]
  %244 = phi i64 [ %312, %261 ], [ %210, %231 ], [ %210, %217 ]
  %245 = phi ptr [ %333, %261 ], [ %208, %231 ], [ %208, %217 ]
  %246 = phi i32 [ %329, %261 ], [ %233, %231 ], [ %209, %217 ]
  %247 = phi ptr [ @BIT_reloadDStream.zeroFilled, %261 ], [ %237, %231 ], [ %212, %217 ]
  store i64 %242, ptr %8, align 8
  br label %248

248:                                              ; preds = %241, %172
  %249 = phi ptr [ %194, %172 ], [ %197, %241 ]
  %250 = phi ptr [ %192, %172 ], [ %198, %241 ]
  %251 = phi i64 [ %179, %172 ], [ %199, %241 ]
  %252 = phi ptr [ %161, %172 ], [ %204, %241 ]
  %253 = phi i64 [ %190, %172 ], [ %243, %241 ]
  %254 = phi i64 [ %189, %172 ], [ %244, %241 ]
  %255 = phi ptr [ %0, %172 ], [ %245, %241 ]
  %256 = phi i32 [ %187, %172 ], [ %246, %241 ]
  %257 = phi i64 [ %188, %172 ], [ %242, %241 ]
  %258 = phi ptr [ @BIT_reloadDStream.zeroFilled, %172 ], [ %247, %241 ]
  store i64 %254, ptr %9, align 8
  store i64 %253, ptr %10, align 8
  %259 = getelementptr inbounds i8, ptr %63, i64 -2
  %260 = icmp ugt ptr %255, %259
  br i1 %260, label %.loopexit66, label %.preheader65

261:                                              ; preds = %231
  %262 = getelementptr inbounds nuw [4 x i8], ptr %198, i64 %210
  %263 = load i16, ptr %262, align 2, !tbaa !5
  %264 = getelementptr inbounds nuw i8, ptr %262, i64 2
  %265 = load i8, ptr %264, align 2, !tbaa !20
  %266 = getelementptr inbounds nuw i8, ptr %262, i64 3
  %267 = load i8, ptr %266, align 1, !tbaa !20
  %268 = zext i8 %267 to i32
  %269 = and i32 %233, 63
  %270 = zext nneg i32 %269 to i64
  %271 = shl i64 %238, %270
  %272 = sub nsw i32 0, %268
  %273 = and i32 %272, 63
  %274 = zext nneg i32 %273 to i64
  %275 = lshr i64 %271, %274
  %276 = add i32 %233, %268
  %277 = zext i16 %263 to i64
  store i8 %265, ptr %208, align 1, !tbaa !20
  %278 = getelementptr inbounds nuw [4 x i8], ptr %197, i64 %211
  %279 = load i16, ptr %278, align 2, !tbaa !5
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 2
  %281 = load i8, ptr %280, align 2, !tbaa !20
  %282 = getelementptr inbounds nuw i8, ptr %278, i64 3
  %283 = load i8, ptr %282, align 1, !tbaa !20
  %284 = zext i8 %283 to i32
  %285 = and i32 %276, 63
  %286 = zext nneg i32 %285 to i64
  %287 = shl i64 %238, %286
  %288 = sub nsw i32 0, %284
  %289 = and i32 %288, 63
  %290 = zext nneg i32 %289 to i64
  %291 = lshr i64 %287, %290
  %292 = add i32 %276, %284
  %293 = zext i16 %279 to i64
  %294 = getelementptr inbounds nuw i8, ptr %208, i64 1
  store i8 %281, ptr %294, align 1, !tbaa !20
  %295 = getelementptr [4 x i8], ptr %198, i64 %275
  %296 = getelementptr [4 x i8], ptr %295, i64 %277
  %297 = load i16, ptr %296, align 2, !tbaa !5
  %298 = getelementptr inbounds nuw i8, ptr %296, i64 2
  %299 = load i8, ptr %298, align 2, !tbaa !20
  %300 = getelementptr inbounds nuw i8, ptr %296, i64 3
  %301 = load i8, ptr %300, align 1, !tbaa !20
  %302 = zext i8 %301 to i32
  %303 = and i32 %292, 63
  %304 = zext nneg i32 %303 to i64
  %305 = shl i64 %238, %304
  %306 = sub nsw i32 0, %302
  %307 = and i32 %306, 63
  %308 = zext nneg i32 %307 to i64
  %309 = lshr i64 %305, %308
  %310 = add i32 %292, %302
  %311 = zext i16 %297 to i64
  %312 = add i64 %309, %311
  %313 = getelementptr inbounds nuw i8, ptr %208, i64 2
  store i8 %299, ptr %313, align 1, !tbaa !20
  %314 = getelementptr [4 x i8], ptr %197, i64 %291
  %315 = getelementptr [4 x i8], ptr %314, i64 %293
  %316 = load i16, ptr %315, align 2, !tbaa !5
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 2
  %318 = load i8, ptr %317, align 2, !tbaa !20
  %319 = getelementptr inbounds nuw i8, ptr %315, i64 3
  %320 = load i8, ptr %319, align 1, !tbaa !20
  %321 = zext i8 %320 to i32
  %322 = and i32 %310, 63
  %323 = zext nneg i32 %322 to i64
  %324 = shl i64 %238, %323
  %325 = sub nsw i32 0, %321
  %326 = and i32 %325, 63
  %327 = zext nneg i32 %326 to i64
  %328 = lshr i64 %324, %327
  %329 = add i32 %310, %321
  %330 = zext i16 %316 to i64
  %331 = add i64 %328, %330
  %332 = getelementptr inbounds nuw i8, ptr %208, i64 3
  store i8 %318, ptr %332, align 1, !tbaa !20
  %333 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %334 = icmp ugt i32 %329, 64
  br i1 %334, label %241, label %206, !prof !44, !llvm.loop !45

.preheader65:                                     ; preds = %248, %441
  %335 = phi ptr [ %442, %441 ], [ %258, %248 ]
  %336 = phi ptr [ %413, %441 ], [ %255, %248 ]
  %337 = phi i64 [ %357, %441 ], [ %254, %248 ]
  %338 = phi i64 [ %444, %441 ], [ %257, %248 ]
  %339 = phi i32 [ %443, %441 ], [ %256, %248 ]
  %340 = phi i64 [ %412, %441 ], [ %253, %248 ]
  %341 = getelementptr inbounds nuw [4 x i8], ptr %250, i64 %337
  %342 = load i16, ptr %341, align 2, !tbaa !5
  %343 = getelementptr inbounds nuw i8, ptr %341, i64 2
  %344 = load i8, ptr %343, align 2, !tbaa !20
  %345 = getelementptr inbounds nuw i8, ptr %341, i64 3
  %346 = load i8, ptr %345, align 1, !tbaa !20
  %347 = zext i8 %346 to i32
  %348 = and i32 %339, 63
  %349 = zext nneg i32 %348 to i64
  %350 = shl i64 %338, %349
  %351 = sub nsw i32 0, %347
  %352 = and i32 %351, 63
  %353 = zext nneg i32 %352 to i64
  %354 = lshr i64 %350, %353
  %355 = add i32 %339, %347
  %356 = zext i16 %342 to i64
  %357 = add i64 %354, %356
  %358 = getelementptr inbounds nuw i8, ptr %336, i64 1
  store i8 %344, ptr %336, align 1, !tbaa !20
  %359 = icmp ugt i32 %355, 64
  br i1 %359, label %379, label %360, !prof !42

360:                                              ; preds = %.preheader65
  %361 = icmp ult ptr %335, %150
  br i1 %361, label %365, label %362

362:                                              ; preds = %360
  %363 = lshr i32 %355, 3
  %364 = and i32 %355, 7
  br label %383

365:                                              ; preds = %360
  %366 = icmp eq ptr %335, %252
  br i1 %366, label %390, label %367

367:                                              ; preds = %365
  %368 = lshr i32 %355, 3
  %369 = zext nneg i32 %368 to i64
  %370 = sub nsw i64 0, %369
  %371 = getelementptr inbounds i8, ptr %335, i64 %370
  %372 = icmp ult ptr %371, %252
  %373 = ptrtoint ptr %335 to i64
  %374 = sub i64 %373, %251
  %375 = trunc i64 %374 to i32
  %376 = select i1 %372, i32 %375, i32 %368
  %377 = shl i32 %376, 3
  %378 = sub i32 %355, %377
  br label %383

379:                                              ; preds = %.preheader65
  %.split50 = getelementptr inbounds nuw [4 x i8], ptr %249, i64 %340
  %380 = getelementptr inbounds nuw i8, ptr %.split50, i64 2
  %381 = load i8, ptr %380, align 2, !tbaa !20
  %382 = getelementptr inbounds nuw i8, ptr %336, i64 2
  store i8 %381, ptr %358, align 1, !tbaa !20
  br label %450

383:                                              ; preds = %367, %362
  %384 = phi i32 [ %363, %362 ], [ %376, %367 ]
  %385 = phi i32 [ %364, %362 ], [ %378, %367 ]
  %386 = zext i32 %384 to i64
  %387 = sub nsw i64 0, %386
  %388 = getelementptr inbounds i8, ptr %335, i64 %387
  %389 = load i64, ptr %388, align 1, !tbaa !13
  store i64 %389, ptr %8, align 8, !tbaa !40
  br label %390

390:                                              ; preds = %383, %365
  %391 = phi ptr [ %335, %365 ], [ %388, %383 ]
  %392 = phi i32 [ %355, %365 ], [ %385, %383 ]
  %393 = phi i64 [ %338, %365 ], [ %389, %383 ]
  %394 = icmp ugt ptr %358, %259
  br i1 %394, label %.loopexit66, label %395

395:                                              ; preds = %390
  %396 = getelementptr inbounds nuw [4 x i8], ptr %249, i64 %340
  %397 = load i16, ptr %396, align 2, !tbaa !5
  %398 = getelementptr inbounds nuw i8, ptr %396, i64 2
  %399 = load i8, ptr %398, align 2, !tbaa !20
  %400 = getelementptr inbounds nuw i8, ptr %396, i64 3
  %401 = load i8, ptr %400, align 1, !tbaa !20
  %402 = zext i8 %401 to i32
  %403 = and i32 %392, 63
  %404 = zext nneg i32 %403 to i64
  %405 = shl i64 %393, %404
  %406 = sub nsw i32 0, %402
  %407 = and i32 %406, 63
  %408 = zext nneg i32 %407 to i64
  %409 = lshr i64 %405, %408
  %410 = add i32 %392, %402
  %411 = zext i16 %397 to i64
  %412 = add i64 %409, %411
  %413 = getelementptr inbounds nuw i8, ptr %336, i64 2
  store i8 %399, ptr %358, align 1, !tbaa !20
  %414 = icmp ugt i32 %410, 64
  br i1 %414, label %446, label %415, !prof !42

415:                                              ; preds = %395
  %416 = icmp ult ptr %391, %150
  br i1 %416, label %420, label %417

417:                                              ; preds = %415
  %418 = lshr i32 %410, 3
  %419 = and i32 %410, 7
  br label %434

420:                                              ; preds = %415
  %421 = icmp eq ptr %391, %252
  br i1 %421, label %441, label %422

422:                                              ; preds = %420
  %423 = lshr i32 %410, 3
  %424 = zext nneg i32 %423 to i64
  %425 = sub nsw i64 0, %424
  %426 = getelementptr inbounds i8, ptr %391, i64 %425
  %427 = icmp ult ptr %426, %252
  %428 = ptrtoint ptr %391 to i64
  %429 = sub i64 %428, %251
  %430 = trunc i64 %429 to i32
  %431 = select i1 %427, i32 %430, i32 %423
  %432 = shl i32 %431, 3
  %433 = sub i32 %410, %432
  br label %434

434:                                              ; preds = %422, %417
  %435 = phi i32 [ %418, %417 ], [ %431, %422 ]
  %436 = phi i32 [ %419, %417 ], [ %433, %422 ]
  %437 = zext i32 %435 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, ptr %391, i64 %438
  %440 = load i64, ptr %439, align 1, !tbaa !13
  store i64 %440, ptr %8, align 8, !tbaa !40
  br label %441

441:                                              ; preds = %434, %420
  %442 = phi ptr [ %391, %420 ], [ %439, %434 ]
  %443 = phi i32 [ %410, %420 ], [ %436, %434 ]
  %444 = phi i64 [ %393, %420 ], [ %440, %434 ]
  %445 = icmp ugt ptr %413, %259
  br i1 %445, label %.loopexit66, label %.preheader65

446:                                              ; preds = %395
  %.split = getelementptr inbounds nuw [4 x i8], ptr %250, i64 %357
  %447 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %448 = load i8, ptr %447, align 2, !tbaa !20
  %449 = getelementptr inbounds nuw i8, ptr %336, i64 3
  store i8 %448, ptr %413, align 1, !tbaa !20
  br label %450

450:                                              ; preds = %446, %379
  %451 = phi ptr [ %382, %379 ], [ %449, %446 ]
  %452 = ptrtoint ptr %451 to i64
  %453 = ptrtoint ptr %0 to i64
  %454 = sub i64 %452, %453
  br label %.loopexit66

.loopexit66:                                      ; preds = %441, %390, %450, %248, %143, %135, %123, %72, %65
  %455 = phi i64 [ %454, %450 ], [ %26, %135 ], [ -72, %65 ], [ -1, %72 ], [ -20, %123 ], [ -20, %143 ], [ -70, %248 ], [ -70, %390 ], [ -70, %441 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %773

456:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %457 = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %25, i64 noundef %26)
  %458 = icmp ult i64 %457, -119
  br i1 %458, label %459, label %.loopexit

459:                                              ; preds = %456
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %16)
  %460 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %461 = load i32, ptr %460, align 8, !tbaa !41
  %462 = icmp ugt i32 %461, 64
  br i1 %462, label %.loopexit, label %463, !prof !42

463:                                              ; preds = %459
  %464 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %465 = load ptr, ptr %464, align 8, !tbaa !39
  %466 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %467 = load ptr, ptr %466, align 8, !tbaa !38
  %468 = icmp ult ptr %465, %467
  br i1 %468, label %478, label %469

469:                                              ; preds = %463
  %470 = lshr i32 %461, 3
  %471 = zext nneg i32 %470 to i64
  %472 = sub nsw i64 0, %471
  %473 = getelementptr inbounds i8, ptr %465, i64 %472
  %474 = and i32 %461, 7
  %475 = load i64, ptr %473, align 1, !tbaa !13
  store i64 %475, ptr %11, align 8, !tbaa !40
  %476 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %477 = load ptr, ptr %476, align 8
  br label %.thread176

478:                                              ; preds = %463
  %479 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %480 = load ptr, ptr %479, align 8, !tbaa !34
  %481 = icmp eq ptr %465, %480
  br i1 %481, label %482, label %491

482:                                              ; preds = %478
  %483 = load i64, ptr %11, align 8
  br label %.thread176

.thread176:                                       ; preds = %482, %469
  %.ph172 = phi ptr [ %473, %469 ], [ %465, %482 ]
  %.ph173 = phi ptr [ %477, %469 ], [ %465, %482 ]
  %.ph174 = phi i64 [ %475, %469 ], [ %483, %482 ]
  %.ph175 = phi i32 [ %474, %469 ], [ %461, %482 ]
  %484 = load i64, ptr %12, align 8
  %485 = load i64, ptr %13, align 8
  %486 = ptrtoint ptr %.ph173 to i64
  %487 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %488 = load ptr, ptr %487, align 8
  %489 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %490 = load ptr, ptr %489, align 8
  br label %.preheader57.preheader

491:                                              ; preds = %478
  %492 = lshr i32 %461, 3
  %493 = zext nneg i32 %492 to i64
  %494 = sub nsw i64 0, %493
  %495 = getelementptr inbounds i8, ptr %465, i64 %494
  %496 = icmp ult ptr %495, %480
  %497 = ptrtoint ptr %465 to i64
  %498 = ptrtoint ptr %480 to i64
  %499 = sub i64 %497, %498
  %500 = trunc i64 %499 to i32
  %501 = select i1 %496, i32 %500, i32 %492
  %502 = zext i32 %501 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %465, i64 %503
  %505 = shl i32 %501, 3
  %506 = sub i32 %461, %505
  %507 = load i64, ptr %504, align 1, !tbaa !13
  store i64 %507, ptr %11, align 8, !tbaa !40
  %508 = load i64, ptr %12, align 8
  %509 = load i64, ptr %13, align 8
  %510 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %513 = load ptr, ptr %512, align 8
  %514 = icmp ugt i32 %506, 64
  br i1 %514, label %.loopexit58, label %.preheader57.preheader, !prof !43

.preheader57.preheader:                           ; preds = %491, %.thread176
  %515 = phi ptr [ %490, %.thread176 ], [ %513, %491 ]
  %516 = phi ptr [ %488, %.thread176 ], [ %511, %491 ]
  %517 = phi i64 [ %486, %.thread176 ], [ %498, %491 ]
  %518 = phi i64 [ %485, %.thread176 ], [ %509, %491 ]
  %519 = phi i64 [ %484, %.thread176 ], [ %508, %491 ]
  %520 = phi i32 [ %.ph175, %.thread176 ], [ %506, %491 ]
  %521 = phi i64 [ %.ph174, %.thread176 ], [ %507, %491 ]
  %522 = phi ptr [ %.ph173, %.thread176 ], [ %480, %491 ]
  %523 = phi ptr [ %.ph172, %.thread176 ], [ %504, %491 ]
  br label %.preheader57

.preheader57:                                     ; preds = %570, %.preheader57.preheader
  %524 = phi ptr [ %646, %570 ], [ %0, %.preheader57.preheader ]
  %525 = phi i32 [ %634, %570 ], [ %520, %.preheader57.preheader ]
  %526 = phi i64 [ %555, %570 ], [ %521, %.preheader57.preheader ]
  %527 = phi i64 [ %624, %570 ], [ %519, %.preheader57.preheader ]
  %528 = phi i64 [ %644, %570 ], [ %518, %.preheader57.preheader ]
  %529 = phi ptr [ %554, %570 ], [ %523, %.preheader57.preheader ]
  %530 = icmp ult ptr %529, %467
  br i1 %530, label %534, label %531

531:                                              ; preds = %.preheader57
  %532 = lshr i32 %525, 3
  %533 = and i32 %525, 7
  br label %548

534:                                              ; preds = %.preheader57
  %535 = icmp eq ptr %529, %522
  br i1 %535, label %.loopexit58, label %536

536:                                              ; preds = %534
  %537 = lshr i32 %525, 3
  %538 = zext nneg i32 %537 to i64
  %539 = sub nsw i64 0, %538
  %540 = getelementptr inbounds i8, ptr %529, i64 %539
  %541 = icmp uge ptr %540, %522
  %542 = ptrtoint ptr %529 to i64
  %543 = sub i64 %542, %517
  %544 = trunc i64 %543 to i32
  %545 = select i1 %541, i32 %537, i32 %544
  %546 = shl i32 %545, 3
  %547 = sub i32 %525, %546
  br label %548

548:                                              ; preds = %536, %531
  %549 = phi i32 [ %532, %531 ], [ %545, %536 ]
  %550 = phi i32 [ %533, %531 ], [ %547, %536 ]
  %551 = phi i1 [ true, %531 ], [ %541, %536 ]
  %552 = zext i32 %549 to i64
  %553 = sub nsw i64 0, %552
  %554 = getelementptr inbounds i8, ptr %529, i64 %553
  %555 = load i64, ptr %554, align 1, !tbaa !13
  %556 = icmp ult ptr %524, %64
  %557 = and i1 %556, %551
  br i1 %557, label %570, label %.loopexit58

.loopexit58:                                      ; preds = %570, %548, %534, %491
  %558 = phi ptr [ %513, %491 ], [ %515, %534 ], [ %515, %548 ], [ %515, %570 ]
  %559 = phi ptr [ %511, %491 ], [ %516, %534 ], [ %516, %548 ], [ %516, %570 ]
  %560 = phi i64 [ %498, %491 ], [ %517, %534 ], [ %517, %548 ], [ %517, %570 ]
  %561 = phi ptr [ %480, %491 ], [ %522, %534 ], [ %522, %548 ], [ %522, %570 ]
  %562 = phi i64 [ %509, %491 ], [ %644, %570 ], [ %528, %548 ], [ %528, %534 ]
  %563 = phi i64 [ %508, %491 ], [ %624, %570 ], [ %527, %548 ], [ %527, %534 ]
  %564 = phi ptr [ %0, %491 ], [ %646, %570 ], [ %524, %548 ], [ %524, %534 ]
  %565 = phi i32 [ %506, %491 ], [ %634, %570 ], [ %550, %548 ], [ %525, %534 ]
  %566 = phi i64 [ %507, %491 ], [ %555, %570 ], [ %555, %548 ], [ %526, %534 ]
  %567 = phi ptr [ @BIT_reloadDStream.zeroFilled, %491 ], [ @BIT_reloadDStream.zeroFilled, %570 ], [ %554, %548 ], [ %529, %534 ]
  store ptr %567, ptr %464, align 8
  store i32 %565, ptr %460, align 8
  store i64 %566, ptr %11, align 8
  store i64 %563, ptr %12, align 8
  store i64 %562, ptr %13, align 8
  %568 = getelementptr inbounds i8, ptr %63, i64 -2
  %569 = icmp ugt ptr %564, %568
  br i1 %569, label %.loopexit, label %.preheader

570:                                              ; preds = %548
  %571 = getelementptr inbounds nuw [4 x i8], ptr %516, i64 %527
  %572 = load i16, ptr %571, align 2, !tbaa !5
  %573 = getelementptr inbounds nuw i8, ptr %571, i64 2
  %574 = load i8, ptr %573, align 2, !tbaa !20
  %575 = getelementptr inbounds nuw i8, ptr %571, i64 3
  %576 = load i8, ptr %575, align 1, !tbaa !20
  %577 = zext i8 %576 to i32
  %578 = add i32 %550, %577
  %579 = sub i32 0, %578
  %580 = and i32 %579, 63
  %581 = zext nneg i32 %580 to i64
  %582 = lshr i64 %555, %581
  %583 = zext nneg i8 %576 to i64
  %584 = shl nsw i64 -1, %583
  %585 = xor i64 %584, -1
  %586 = and i64 %582, %585
  %587 = zext i16 %572 to i64
  store i8 %574, ptr %524, align 1, !tbaa !20
  %588 = getelementptr inbounds nuw [4 x i8], ptr %515, i64 %528
  %589 = load i16, ptr %588, align 2, !tbaa !5
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 2
  %591 = load i8, ptr %590, align 2, !tbaa !20
  %592 = getelementptr inbounds nuw i8, ptr %588, i64 3
  %593 = load i8, ptr %592, align 1, !tbaa !20
  %594 = zext i8 %593 to i32
  %595 = add i32 %578, %594
  %596 = sub i32 0, %595
  %597 = and i32 %596, 63
  %598 = zext nneg i32 %597 to i64
  %599 = lshr i64 %555, %598
  %600 = zext nneg i8 %593 to i64
  %601 = shl nsw i64 -1, %600
  %602 = xor i64 %601, -1
  %603 = and i64 %599, %602
  %604 = zext i16 %589 to i64
  %605 = getelementptr inbounds nuw i8, ptr %524, i64 1
  store i8 %591, ptr %605, align 1, !tbaa !20
  %606 = getelementptr inbounds nuw [4 x i8], ptr %516, i64 %586
  %607 = getelementptr inbounds nuw [4 x i8], ptr %606, i64 %587
  %608 = load i16, ptr %607, align 2, !tbaa !5
  %609 = getelementptr inbounds nuw i8, ptr %607, i64 2
  %610 = load i8, ptr %609, align 2, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %607, i64 3
  %612 = load i8, ptr %611, align 1, !tbaa !20
  %613 = zext i8 %612 to i32
  %614 = add i32 %595, %613
  %615 = sub i32 0, %614
  %616 = and i32 %615, 63
  %617 = zext nneg i32 %616 to i64
  %618 = lshr i64 %555, %617
  %619 = zext nneg i8 %612 to i64
  %620 = shl nsw i64 -1, %619
  %621 = xor i64 %620, -1
  %622 = and i64 %618, %621
  %623 = zext i16 %608 to i64
  %624 = add nuw i64 %622, %623
  %625 = getelementptr inbounds nuw i8, ptr %524, i64 2
  store i8 %610, ptr %625, align 1, !tbaa !20
  %626 = getelementptr inbounds nuw [4 x i8], ptr %515, i64 %603
  %627 = getelementptr inbounds nuw [4 x i8], ptr %626, i64 %604
  %628 = load i16, ptr %627, align 2, !tbaa !5
  %629 = getelementptr inbounds nuw i8, ptr %627, i64 2
  %630 = load i8, ptr %629, align 2, !tbaa !20
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 3
  %632 = load i8, ptr %631, align 1, !tbaa !20
  %633 = zext i8 %632 to i32
  %634 = add i32 %614, %633
  %635 = sub i32 0, %634
  %636 = and i32 %635, 63
  %637 = zext nneg i32 %636 to i64
  %638 = lshr i64 %555, %637
  %639 = zext nneg i8 %632 to i64
  %640 = shl nsw i64 -1, %639
  %641 = xor i64 %640, -1
  %642 = and i64 %638, %641
  %643 = zext i16 %628 to i64
  %644 = add nuw i64 %642, %643
  %645 = getelementptr inbounds nuw i8, ptr %524, i64 3
  store i8 %630, ptr %645, align 1, !tbaa !20
  %646 = getelementptr inbounds nuw i8, ptr %524, i64 4
  %647 = icmp ugt i32 %634, 64
  br i1 %647, label %.loopexit58, label %.preheader57, !prof !44, !llvm.loop !45

.preheader:                                       ; preds = %.loopexit58, %758
  %648 = phi ptr [ %759, %758 ], [ %567, %.loopexit58 ]
  %649 = phi ptr [ %729, %758 ], [ %564, %.loopexit58 ]
  %650 = phi i64 [ %671, %758 ], [ %563, %.loopexit58 ]
  %651 = phi i64 [ %761, %758 ], [ %566, %.loopexit58 ]
  %652 = phi i32 [ %760, %758 ], [ %565, %.loopexit58 ]
  %653 = phi i64 [ %728, %758 ], [ %562, %.loopexit58 ]
  %654 = getelementptr inbounds nuw [4 x i8], ptr %559, i64 %650
  %655 = load i16, ptr %654, align 2, !tbaa !5
  %656 = getelementptr inbounds nuw i8, ptr %654, i64 2
  %657 = load i8, ptr %656, align 2, !tbaa !20
  %658 = getelementptr inbounds nuw i8, ptr %654, i64 3
  %659 = load i8, ptr %658, align 1, !tbaa !20
  %660 = zext i8 %659 to i32
  %661 = add i32 %652, %660
  %662 = sub i32 0, %661
  %663 = and i32 %662, 63
  %664 = zext nneg i32 %663 to i64
  %665 = lshr i64 %651, %664
  %666 = zext nneg i8 %659 to i64
  %667 = shl nsw i64 -1, %666
  %668 = xor i64 %667, -1
  %669 = and i64 %665, %668
  %670 = zext i16 %655 to i64
  %671 = add nuw i64 %669, %670
  %672 = getelementptr inbounds nuw i8, ptr %649, i64 1
  store i8 %657, ptr %649, align 1, !tbaa !20
  %673 = icmp ugt i32 %661, 64
  br i1 %673, label %701, label %674, !prof !42

674:                                              ; preds = %.preheader
  %675 = icmp ult ptr %648, %467
  br i1 %675, label %683, label %676

676:                                              ; preds = %674
  %677 = lshr i32 %661, 3
  %678 = zext nneg i32 %677 to i64
  %679 = sub nsw i64 0, %678
  %680 = getelementptr inbounds i8, ptr %648, i64 %679
  %681 = and i32 %661, 7
  %682 = load i64, ptr %680, align 1, !tbaa !13
  br label %705

683:                                              ; preds = %674
  %684 = icmp eq ptr %648, %561
  br i1 %684, label %705, label %685

685:                                              ; preds = %683
  %686 = lshr i32 %661, 3
  %687 = zext nneg i32 %686 to i64
  %688 = sub nsw i64 0, %687
  %689 = getelementptr inbounds i8, ptr %648, i64 %688
  %690 = icmp ult ptr %689, %561
  %691 = ptrtoint ptr %648 to i64
  %692 = sub i64 %691, %560
  %693 = trunc i64 %692 to i32
  %694 = select i1 %690, i32 %693, i32 %686
  %695 = zext i32 %694 to i64
  %696 = sub nsw i64 0, %695
  %697 = getelementptr inbounds i8, ptr %648, i64 %696
  %698 = shl i32 %694, 3
  %699 = sub i32 %661, %698
  %700 = load i64, ptr %697, align 1, !tbaa !13
  br label %705

701:                                              ; preds = %.preheader
  %.split52 = getelementptr inbounds nuw [4 x i8], ptr %558, i64 %653
  %702 = getelementptr inbounds nuw i8, ptr %.split52, i64 2
  %703 = load i8, ptr %702, align 2, !tbaa !20
  %704 = getelementptr inbounds nuw i8, ptr %649, i64 2
  store i8 %703, ptr %672, align 1, !tbaa !20
  br label %767

705:                                              ; preds = %685, %683, %676
  %706 = phi ptr [ %648, %683 ], [ %680, %676 ], [ %697, %685 ]
  %707 = phi i32 [ %661, %683 ], [ %681, %676 ], [ %699, %685 ]
  %708 = phi i64 [ %651, %683 ], [ %682, %676 ], [ %700, %685 ]
  %709 = icmp ugt ptr %672, %568
  br i1 %709, label %.loopexit, label %710

710:                                              ; preds = %705
  %711 = getelementptr inbounds nuw [4 x i8], ptr %558, i64 %653
  %712 = load i16, ptr %711, align 2, !tbaa !5
  %713 = getelementptr inbounds nuw i8, ptr %711, i64 2
  %714 = load i8, ptr %713, align 2, !tbaa !20
  %715 = getelementptr inbounds nuw i8, ptr %711, i64 3
  %716 = load i8, ptr %715, align 1, !tbaa !20
  %717 = zext i8 %716 to i32
  %718 = add i32 %707, %717
  %719 = sub i32 0, %718
  %720 = and i32 %719, 63
  %721 = zext nneg i32 %720 to i64
  %722 = lshr i64 %708, %721
  %723 = zext nneg i8 %716 to i64
  %724 = shl nsw i64 -1, %723
  %725 = xor i64 %724, -1
  %726 = and i64 %722, %725
  %727 = zext i16 %712 to i64
  %728 = add nuw i64 %726, %727
  %729 = getelementptr inbounds nuw i8, ptr %649, i64 2
  store i8 %714, ptr %672, align 1, !tbaa !20
  %730 = icmp ugt i32 %718, 64
  br i1 %730, label %763, label %731, !prof !42

731:                                              ; preds = %710
  %732 = icmp ult ptr %706, %467
  br i1 %732, label %740, label %733

733:                                              ; preds = %731
  %734 = lshr i32 %718, 3
  %735 = zext nneg i32 %734 to i64
  %736 = sub nsw i64 0, %735
  %737 = getelementptr inbounds i8, ptr %706, i64 %736
  %738 = and i32 %718, 7
  %739 = load i64, ptr %737, align 1, !tbaa !13
  br label %758

740:                                              ; preds = %731
  %741 = icmp eq ptr %706, %561
  br i1 %741, label %758, label %742

742:                                              ; preds = %740
  %743 = lshr i32 %718, 3
  %744 = zext nneg i32 %743 to i64
  %745 = sub nsw i64 0, %744
  %746 = getelementptr inbounds i8, ptr %706, i64 %745
  %747 = icmp ult ptr %746, %561
  %748 = ptrtoint ptr %706 to i64
  %749 = sub i64 %748, %560
  %750 = trunc i64 %749 to i32
  %751 = select i1 %747, i32 %750, i32 %743
  %752 = zext i32 %751 to i64
  %753 = sub nsw i64 0, %752
  %754 = getelementptr inbounds i8, ptr %706, i64 %753
  %755 = shl i32 %751, 3
  %756 = sub i32 %718, %755
  %757 = load i64, ptr %754, align 1, !tbaa !13
  br label %758

758:                                              ; preds = %742, %740, %733
  %759 = phi ptr [ %706, %740 ], [ %737, %733 ], [ %754, %742 ]
  %760 = phi i32 [ %718, %740 ], [ %738, %733 ], [ %756, %742 ]
  %761 = phi i64 [ %708, %740 ], [ %739, %733 ], [ %757, %742 ]
  %762 = icmp ugt ptr %729, %568
  br i1 %762, label %.loopexit, label %.preheader

763:                                              ; preds = %710
  %.split51 = getelementptr inbounds nuw [4 x i8], ptr %559, i64 %671
  %764 = getelementptr inbounds nuw i8, ptr %.split51, i64 2
  %765 = load i8, ptr %764, align 2, !tbaa !20
  %766 = getelementptr inbounds nuw i8, ptr %649, i64 3
  store i8 %765, ptr %729, align 1, !tbaa !20
  br label %767

767:                                              ; preds = %763, %701
  %768 = phi ptr [ %704, %701 ], [ %766, %763 ]
  %769 = ptrtoint ptr %768 to i64
  %770 = ptrtoint ptr %0 to i64
  %771 = sub i64 %769, %770
  br label %.loopexit

.loopexit:                                        ; preds = %758, %705, %767, %.loopexit58, %459, %456
  %772 = phi i64 [ %771, %767 ], [ %457, %456 ], [ -20, %459 ], [ -70, %.loopexit58 ], [ -70, %705 ], [ -70, %758 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %773

773:                                              ; preds = %.loopexit, %.loopexit66, %51, %35, %21, %18, %7
  %774 = phi i64 [ %57, %51 ], [ -1, %7 ], [ -44, %35 ], [ %455, %.loopexit66 ], [ %772, %.loopexit ], [ -44, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  ret i64 %774
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %86

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %14, align 8, !tbaa !39
  %15 = load i64, ptr %13, align 1, !tbaa !13
  store i64 %15, ptr %0, align 8, !tbaa !40
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
  store i32 %23, ptr %24, align 8, !tbaa !41
  br label %86

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %26, align 8, !tbaa !41
  br label %86

27:                                               ; preds = %6
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %28, align 8, !tbaa !39
  %29 = load i8, ptr %1, align 1, !tbaa !20
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !40
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
  store i64 %36, ptr %0, align 8, !tbaa !40
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !20
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !40
  br label %44

44:                                               ; preds = %37, %27
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %44, %27
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %51, %27
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !20
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !40
  br label %65

65:                                               ; preds = %58, %27
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !20
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !40
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %78, align 8, !tbaa !41
  br label %86

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %80, i1 true)
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = trunc nuw nsw i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %reass.sub4 = sub nsw i32 %81, %84
  %85 = add nsw i32 %reass.sub4, 41
  store i32 %85, ptr %82, align 8, !tbaa !41
  br label %86

86:                                               ; preds = %79, %77, %25, %19, %5
  %87 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %87
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @FSE_initDState(ptr noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #8 {
  %4 = load i16, ptr %2, align 2, !tbaa !46
  %5 = zext i16 %4 to i32
  %6 = load i64, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = add i32 %8, %5
  %10 = sub i32 0, %9
  %11 = and i32 %10, 63
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %6, %12
  %14 = zext nneg i16 %4 to i64
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %13, %16
  store i32 %9, ptr %7, align 8, !tbaa !41
  store i64 %17, ptr %0, align 8, !tbaa !47
  %18 = icmp ugt i32 %9, 64
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %18, label %20, label %21, !prof !42

20:                                               ; preds = %3
  store ptr @BIT_reloadDStream.zeroFilled, ptr %19, align 8, !tbaa !39
  br label %54

21:                                               ; preds = %3
  %22 = load ptr, ptr %19, align 8, !tbaa !39
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp ult ptr %22, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %9, 3
  %28 = zext nneg i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  store ptr %30, ptr %19, align 8, !tbaa !39
  %31 = and i32 %9, 7
  store i32 %31, ptr %7, align 8, !tbaa !41
  %32 = load i64, ptr %30, align 1, !tbaa !13
  store i64 %32, ptr %1, align 8, !tbaa !40
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !34
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
  store ptr %50, ptr %19, align 8, !tbaa !39
  %51 = shl i32 %47, 3
  %52 = sub i32 %9, %51
  store i32 %52, ptr %7, align 8, !tbaa !41
  %53 = load i64, ptr %50, align 1, !tbaa !13
  store i64 %53, ptr %1, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %37, %33, %26, %20
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %55, ptr %56, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!30 = !{}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !6, i64 2}
!33 = !{!"", !6, i64 0, !6, i64 2}
!34 = !{!35, !36, i64 24}
!35 = !{!"", !14, i64 0, !29, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!36 = !{!"p1 omnipotent char", !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = !{!35, !36, i64 32}
!39 = !{!35, !36, i64 16}
!40 = !{!35, !14, i64 0}
!41 = !{!35, !29, i64 8}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 53687091, i32 2093796557}
!44 = !{!"branch_weights", i32 127, i32 255873}
!45 = distinct !{!45, !12}
!46 = !{!33, !6, i64 0}
!47 = !{!48, !14, i64 0}
!48 = !{!"", !14, i64 0, !37, i64 8}
!49 = !{!48, !37, i64 8}
