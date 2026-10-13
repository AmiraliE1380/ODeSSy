; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_entropy_common.thorough.mid.ll'
source_filename = "/mydata/zstd/lib/common/entropy_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @FSE_versionNumber() local_unnamed_addr #0 {
  ret i32 900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @FSE_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FSE_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc nsw i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #12
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @HUF_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HUF_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc nsw i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #12
  ret ptr %6
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @FSE_readNCount_bmi2(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca [8 x i8], align 8
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @FSE_readNCount_body_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %217

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %13 = load i32, ptr %1, align 4, !tbaa !5
  %14 = add i32 %13, 1
  %15 = icmp ult i64 %4, 8
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr align 1 %3, i64 %4, i1 false)
  %17 = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %7, i64 noundef 8, i32 noundef 0)
  %18 = icmp ult i64 %17, -119
  %19 = icmp ugt i64 %17, %4
  %20 = and i1 %18, %19
  %21 = select i1 %20, i64 -20, i64 %17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %217

22:                                               ; preds = %11
  %23 = zext i32 %14 to i64
  %24 = shl nuw nsw i64 %23, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %24, i1 false)
  %25 = load i32, ptr %3, align 1, !tbaa !5
  %26 = and i32 %25, 15
  %27 = icmp samesign ugt i32 %26, 10
  br i1 %27, label %217, label %28

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %26, 5
  %30 = lshr i32 %25, 4
  store i32 %29, ptr %2, align 4, !tbaa !5
  %31 = shl nuw nsw i32 32, %26
  %32 = or disjoint i32 %31, 1
  %33 = add nuw nsw i32 %26, 6
  %34 = getelementptr inbounds i8, ptr %12, i64 -7
  %35 = ptrtoint ptr %34 to i64
  %36 = getelementptr inbounds i8, ptr %12, i64 -4
  %37 = ptrtoint ptr %36 to i64
  br label %38

38:                                               ; preds = %193, %28
  %39 = phi i32 [ %32, %28 ], [ %153, %193 ]
  %40 = phi i32 [ %31, %28 ], [ %167, %193 ]
  %41 = phi i32 [ %30, %28 ], [ %197, %193 ]
  %42 = phi i32 [ 4, %28 ], [ %194, %193 ]
  %43 = phi i32 [ 0, %28 ], [ %155, %193 ]
  %44 = phi i32 [ %33, %28 ], [ %168, %193 ]
  %45 = phi i1 [ true, %28 ], [ %158, %193 ]
  %46 = phi ptr [ %3, %28 ], [ %195, %193 ]
  br i1 %45, label %124, label %47

47:                                               ; preds = %38
  %48 = xor i32 %41, -1
  %49 = or i32 %48, -2147483648
  %50 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %49, i1 true)
  %51 = icmp samesign ugt i32 %50, 23
  br i1 %51, label %.preheader, label %.loopexit24

.preheader:                                       ; preds = %47, %72
  %52 = phi ptr [ %74, %72 ], [ %46, %47 ]
  %53 = phi i32 [ %55, %72 ], [ %43, %47 ]
  %54 = phi i32 [ %73, %72 ], [ %42, %47 ]
  %55 = add i32 %53, 36
  %56 = icmp ugt ptr %52, %34
  br i1 %56, label %59, label %57, !prof !9

57:                                               ; preds = %.preheader
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 3
  br label %72

59:                                               ; preds = %.preheader
  %60 = ptrtoint ptr %52 to i64
  %61 = sub i64 %35, %60
  %62 = add i64 %61, 1152921504606846976
  %63 = icmp ult i64 %62, 2305843009213693952
  br i1 %63, label %64, label %.loopexit, !prof !10, !nosanitize !11

.loopexit:                                        ; preds = %180, %106, %59
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !11
  unreachable, !nosanitize !11

64:                                               ; preds = %59
  %65 = trunc i64 %61 to i32
  %66 = shl i32 %65, 3
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %54, i32 %66), !nosanitize !11
  %68 = extractvalue { i32, i1 } %67, 1, !nosanitize !11
  br i1 %68, label %.loopexit23, label %69, !prof !12, !nosanitize !11

.loopexit23:                                      ; preds = %185, %111, %64
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !11
  unreachable, !nosanitize !11

69:                                               ; preds = %64
  %70 = extractvalue { i32, i1 } %67, 0, !nosanitize !11
  %71 = and i32 %70, 31
  br label %72

72:                                               ; preds = %69, %57
  %73 = phi i32 [ %54, %57 ], [ %71, %69 ]
  %74 = phi ptr [ %58, %57 ], [ %36, %69 ]
  %75 = load i32, ptr %74, align 1, !tbaa !5
  %76 = lshr i32 %75, %73
  %77 = xor i32 %76, -1
  %78 = or i32 %77, -2147483648
  %79 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %78, i1 true)
  %80 = icmp samesign ugt i32 %79, 23
  br i1 %80, label %.preheader, label %.loopexit24, !llvm.loop !13

.loopexit24:                                      ; preds = %72, %47
  %81 = phi i32 [ %41, %47 ], [ %76, %72 ]
  %82 = phi i32 [ %42, %47 ], [ %73, %72 ]
  %83 = phi i32 [ %43, %47 ], [ %55, %72 ]
  %84 = phi ptr [ %46, %47 ], [ %74, %72 ]
  %85 = phi i32 [ %50, %47 ], [ %79, %72 ]
  %86 = and i32 %85, 30
  %87 = lshr i32 %81, %86
  %88 = lshr i32 %85, 1
  %89 = mul nuw nsw i32 %88, 3
  %90 = add i32 %89, %83
  %91 = and i32 %87, 3
  %92 = add i32 %90, %91
  %93 = add nuw nsw i32 %82, 2
  %94 = add nuw nsw i32 %93, %86
  %95 = icmp ult i32 %92, %14
  br i1 %95, label %96, label %198

96:                                               ; preds = %.loopexit24
  %97 = icmp ugt ptr %84, %34
  %98 = lshr i32 %94, 3
  %99 = zext nneg i32 %98 to i64
  br i1 %97, label %100, label %103, !prof !9

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %84, i64 %99
  %102 = icmp ugt ptr %101, %36
  br i1 %102, label %106, label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds nuw i8, ptr %84, i64 %99
  %105 = and i32 %94, 7
  br label %119

106:                                              ; preds = %100
  %107 = ptrtoint ptr %84 to i64
  %108 = sub i64 %37, %107
  %109 = add i64 %108, 1152921504606846976
  %110 = icmp ult i64 %109, 2305843009213693952
  br i1 %110, label %111, label %.loopexit, !prof !10, !nosanitize !11

111:                                              ; preds = %106
  %112 = trunc i64 %108 to i32
  %113 = shl i32 %112, 3
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %94, i32 %113), !nosanitize !11
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !11
  br i1 %115, label %.loopexit23, label %116, !prof !12, !nosanitize !11

116:                                              ; preds = %111
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !11
  %118 = and i32 %117, 31
  br label %119

119:                                              ; preds = %116, %103
  %120 = phi i32 [ %105, %103 ], [ %118, %116 ]
  %121 = phi ptr [ %104, %103 ], [ %36, %116 ]
  %122 = load i32, ptr %121, align 1, !tbaa !5
  %123 = lshr i32 %122, %120
  br label %124

124:                                              ; preds = %119, %38
  %125 = phi ptr [ %121, %119 ], [ %46, %38 ]
  %126 = phi i32 [ %92, %119 ], [ %43, %38 ]
  %127 = phi i32 [ %120, %119 ], [ %42, %38 ]
  %128 = phi i32 [ %123, %119 ], [ %41, %38 ]
  %129 = shl nuw nsw i32 %40, 1
  %130 = add nsw i32 %129, -1
  %131 = sub i32 %130, %39
  %132 = add nsw i32 %40, -1
  %133 = and i32 %128, %132
  %134 = icmp ult i32 %133, %131
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = add nsw i32 %44, -1
  br label %141

137:                                              ; preds = %124
  %138 = and i32 %128, %130
  %139 = icmp slt i32 %138, %40
  %140 = select i1 %139, i32 0, i32 %131
  %spec.select = sub nsw i32 %138, %140
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i32 [ %136, %135 ], [ %44, %137 ]
  %143 = phi i32 [ %133, %135 ], [ %spec.select, %137 ]
  %144 = add nuw nsw i32 %142, %127
  %145 = add nsw i32 %143, -1
  %146 = icmp sgt i32 %143, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %39, i32 %145), !nosanitize !11
  br label %151

149:                                              ; preds = %141
  %150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 %145), !nosanitize !11
  br label %151

151:                                              ; preds = %147, %149
  %152 = phi { i32, i1 } [ %148, %147 ], [ %150, %149 ]
  %153 = extractvalue { i32, i1 } %152, 0
  %154 = trunc i32 %145 to i16
  %155 = add nuw i32 %126, 1
  %156 = zext i32 %126 to i64
  %157 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %156
  store i16 %154, ptr %157, align 2, !tbaa !15
  %158 = icmp ne i32 %145, 0
  %159 = icmp slt i32 %153, %40
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = icmp slt i32 %153, 2
  br i1 %161, label %198, label %162

162:                                              ; preds = %160
  %163 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %153, i1 true)
  %164 = sub nuw nsw i32 32, %163
  %165 = lshr exact i32 -2147483648, %163
  br label %166

166:                                              ; preds = %162, %151
  %167 = phi i32 [ %165, %162 ], [ %40, %151 ]
  %168 = phi i32 [ %164, %162 ], [ %44, %151 ]
  %169 = icmp ult i32 %155, %14
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = icmp ugt ptr %125, %34
  %172 = lshr i32 %144, 3
  %173 = zext nneg i32 %172 to i64
  br i1 %171, label %174, label %177, !prof !9

174:                                              ; preds = %170
  %175 = getelementptr inbounds nuw i8, ptr %125, i64 %173
  %176 = icmp ugt ptr %175, %36
  br i1 %176, label %180, label %177

177:                                              ; preds = %174, %170
  %178 = getelementptr inbounds nuw i8, ptr %125, i64 %173
  %179 = and i32 %144, 7
  br label %193

180:                                              ; preds = %174
  %181 = ptrtoint ptr %125 to i64
  %182 = sub i64 %37, %181
  %183 = add i64 %182, 1152921504606846976
  %184 = icmp ult i64 %183, 2305843009213693952
  br i1 %184, label %185, label %.loopexit, !prof !10, !nosanitize !11

185:                                              ; preds = %180
  %186 = trunc i64 %182 to i32
  %187 = shl i32 %186, 3
  %188 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %144, i32 %187), !nosanitize !11
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !11
  br i1 %189, label %.loopexit23, label %190, !prof !12, !nosanitize !11

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %188, 0, !nosanitize !11
  %192 = and i32 %191, 31
  br label %193

193:                                              ; preds = %190, %177
  %194 = phi i32 [ %179, %177 ], [ %192, %190 ]
  %195 = phi ptr [ %178, %177 ], [ %36, %190 ]
  %196 = load i32, ptr %195, align 1, !tbaa !5
  %197 = lshr i32 %196, %194
  br label %38

198:                                              ; preds = %166, %160, %.loopexit24
  %199 = phi i32 [ %39, %.loopexit24 ], [ %153, %160 ], [ %153, %166 ]
  %200 = phi i32 [ %94, %.loopexit24 ], [ %144, %160 ], [ %144, %166 ]
  %201 = phi i32 [ %92, %.loopexit24 ], [ %155, %160 ], [ %155, %166 ]
  %202 = phi ptr [ %84, %.loopexit24 ], [ %125, %160 ], [ %125, %166 ]
  %203 = icmp eq i32 %199, 1
  br i1 %203, label %204, label %217

204:                                              ; preds = %198
  %205 = icmp ugt i32 %201, %14
  br i1 %205, label %217, label %206

206:                                              ; preds = %204
  %207 = icmp sgt i32 %200, 32
  br i1 %207, label %217, label %208

208:                                              ; preds = %206
  %209 = add i32 %201, -1
  store i32 %209, ptr %1, align 4, !tbaa !5
  %210 = add nsw i32 %200, 7
  %211 = ashr i32 %210, 3
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %202, i64 %212
  %214 = ptrtoint ptr %213 to i64
  %215 = ptrtoint ptr %3 to i64
  %216 = sub i64 %214, %215
  br label %217

217:                                              ; preds = %208, %206, %204, %198, %22, %16, %9
  %218 = phi i64 [ %10, %9 ], [ %21, %16 ], [ %216, %208 ], [ -44, %22 ], [ -20, %198 ], [ -48, %204 ], [ -20, %206 ]
  ret i64 %218
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i64 @FSE_readNCount_body_bmi2(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
  %6 = alloca [8 x i8], align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %8 = load i32, ptr %1, align 4, !tbaa !5
  %9 = add i32 %8, 1
  %10 = icmp ult i64 %4, 8
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr align 1 %3, i64 %4, i1 false)
  %12 = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0)
  %13 = icmp ult i64 %12, -119
  %14 = icmp ugt i64 %12, %4
  %15 = and i1 %13, %14
  %16 = select i1 %15, i64 -20, i64 %12
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %212

17:                                               ; preds = %5
  %18 = zext i32 %9 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %19, i1 false)
  %20 = load i32, ptr %3, align 1, !tbaa !5
  %21 = and i32 %20, 15
  %22 = icmp samesign ugt i32 %21, 10
  br i1 %22, label %212, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %21, 5
  %25 = lshr i32 %20, 4
  store i32 %24, ptr %2, align 4, !tbaa !5
  %26 = shl nuw nsw i32 32, %21
  %27 = or disjoint i32 %26, 1
  %28 = add nuw nsw i32 %21, 6
  %29 = getelementptr inbounds i8, ptr %7, i64 -7
  %30 = ptrtoint ptr %29 to i64
  %31 = getelementptr inbounds i8, ptr %7, i64 -4
  %32 = ptrtoint ptr %31 to i64
  br label %33

33:                                               ; preds = %188, %23
  %34 = phi i32 [ %27, %23 ], [ %148, %188 ]
  %35 = phi i32 [ %26, %23 ], [ %162, %188 ]
  %36 = phi i32 [ %25, %23 ], [ %192, %188 ]
  %37 = phi i32 [ 4, %23 ], [ %189, %188 ]
  %38 = phi i32 [ 0, %23 ], [ %150, %188 ]
  %39 = phi i32 [ %28, %23 ], [ %163, %188 ]
  %40 = phi i1 [ true, %23 ], [ %153, %188 ]
  %41 = phi ptr [ %3, %23 ], [ %190, %188 ]
  br i1 %40, label %119, label %42

42:                                               ; preds = %33
  %43 = xor i32 %36, -1
  %44 = or i32 %43, -2147483648
  %45 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %44, i1 true)
  %46 = icmp samesign ugt i32 %45, 23
  br i1 %46, label %.preheader, label %.loopexit24

.preheader:                                       ; preds = %42, %67
  %47 = phi ptr [ %69, %67 ], [ %41, %42 ]
  %48 = phi i32 [ %50, %67 ], [ %38, %42 ]
  %49 = phi i32 [ %68, %67 ], [ %37, %42 ]
  %50 = add i32 %48, 36
  %51 = icmp ugt ptr %47, %29
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %.preheader
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 3
  br label %67

54:                                               ; preds = %.preheader
  %55 = ptrtoint ptr %47 to i64
  %56 = sub i64 %30, %55
  %57 = add i64 %56, 1152921504606846976
  %58 = icmp ult i64 %57, 2305843009213693952
  br i1 %58, label %59, label %.loopexit, !prof !10, !nosanitize !11

.loopexit:                                        ; preds = %175, %101, %54
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !11
  unreachable, !nosanitize !11

59:                                               ; preds = %54
  %60 = trunc i64 %56 to i32
  %61 = shl i32 %60, 3
  %62 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %49, i32 %61), !nosanitize !11
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !11
  br i1 %63, label %.loopexit23, label %64, !prof !12, !nosanitize !11

.loopexit23:                                      ; preds = %180, %106, %59
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !11
  unreachable, !nosanitize !11

64:                                               ; preds = %59
  %65 = extractvalue { i32, i1 } %62, 0, !nosanitize !11
  %66 = and i32 %65, 31
  br label %67

67:                                               ; preds = %64, %52
  %68 = phi i32 [ %49, %52 ], [ %66, %64 ]
  %69 = phi ptr [ %53, %52 ], [ %31, %64 ]
  %70 = load i32, ptr %69, align 1, !tbaa !5
  %71 = lshr i32 %70, %68
  %72 = xor i32 %71, -1
  %73 = or i32 %72, -2147483648
  %74 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %73, i1 true)
  %75 = icmp samesign ugt i32 %74, 23
  br i1 %75, label %.preheader, label %.loopexit24, !llvm.loop !13

.loopexit24:                                      ; preds = %67, %42
  %76 = phi i32 [ %36, %42 ], [ %71, %67 ]
  %77 = phi i32 [ %37, %42 ], [ %68, %67 ]
  %78 = phi i32 [ %38, %42 ], [ %50, %67 ]
  %79 = phi ptr [ %41, %42 ], [ %69, %67 ]
  %80 = phi i32 [ %45, %42 ], [ %74, %67 ]
  %81 = and i32 %80, 30
  %82 = lshr i32 %76, %81
  %83 = lshr i32 %80, 1
  %84 = mul nuw nsw i32 %83, 3
  %85 = add i32 %84, %78
  %86 = and i32 %82, 3
  %87 = add i32 %85, %86
  %88 = add nuw nsw i32 %77, 2
  %89 = add nuw nsw i32 %88, %81
  %90 = icmp ult i32 %87, %9
  br i1 %90, label %91, label %193

91:                                               ; preds = %.loopexit24
  %92 = icmp ugt ptr %79, %29
  %93 = lshr i32 %89, 3
  %94 = zext nneg i32 %93 to i64
  br i1 %92, label %95, label %98, !prof !9

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %79, i64 %94
  %97 = icmp ugt ptr %96, %31
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %91
  %99 = getelementptr inbounds nuw i8, ptr %79, i64 %94
  %100 = and i32 %89, 7
  br label %114

101:                                              ; preds = %95
  %102 = ptrtoint ptr %79 to i64
  %103 = sub i64 %32, %102
  %104 = add i64 %103, 1152921504606846976
  %105 = icmp ult i64 %104, 2305843009213693952
  br i1 %105, label %106, label %.loopexit, !prof !10, !nosanitize !11

106:                                              ; preds = %101
  %107 = trunc i64 %103 to i32
  %108 = shl i32 %107, 3
  %109 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %89, i32 %108), !nosanitize !11
  %110 = extractvalue { i32, i1 } %109, 1, !nosanitize !11
  br i1 %110, label %.loopexit23, label %111, !prof !12, !nosanitize !11

111:                                              ; preds = %106
  %112 = extractvalue { i32, i1 } %109, 0, !nosanitize !11
  %113 = and i32 %112, 31
  br label %114

114:                                              ; preds = %111, %98
  %115 = phi i32 [ %100, %98 ], [ %113, %111 ]
  %116 = phi ptr [ %99, %98 ], [ %31, %111 ]
  %117 = load i32, ptr %116, align 1, !tbaa !5
  %118 = lshr i32 %117, %115
  br label %119

119:                                              ; preds = %114, %33
  %120 = phi ptr [ %116, %114 ], [ %41, %33 ]
  %121 = phi i32 [ %87, %114 ], [ %38, %33 ]
  %122 = phi i32 [ %115, %114 ], [ %37, %33 ]
  %123 = phi i32 [ %118, %114 ], [ %36, %33 ]
  %124 = shl nuw nsw i32 %35, 1
  %125 = add nsw i32 %124, -1
  %126 = sub i32 %125, %34
  %127 = add nsw i32 %35, -1
  %128 = and i32 %123, %127
  %129 = icmp ult i32 %128, %126
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = add nsw i32 %39, -1
  br label %136

132:                                              ; preds = %119
  %133 = and i32 %123, %125
  %134 = icmp slt i32 %133, %35
  %135 = select i1 %134, i32 0, i32 %126
  %spec.select = sub nsw i32 %133, %135
  br label %136

136:                                              ; preds = %132, %130
  %137 = phi i32 [ %131, %130 ], [ %39, %132 ]
  %138 = phi i32 [ %128, %130 ], [ %spec.select, %132 ]
  %139 = add nuw nsw i32 %137, %122
  %140 = add nsw i32 %138, -1
  %141 = icmp sgt i32 %138, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %34, i32 %140), !nosanitize !11
  br label %146

144:                                              ; preds = %136
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %140), !nosanitize !11
  br label %146

146:                                              ; preds = %142, %144
  %147 = phi { i32, i1 } [ %143, %142 ], [ %145, %144 ]
  %148 = extractvalue { i32, i1 } %147, 0
  %149 = trunc i32 %140 to i16
  %150 = add nuw i32 %121, 1
  %151 = zext i32 %121 to i64
  %152 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %151
  store i16 %149, ptr %152, align 2, !tbaa !15
  %153 = icmp ne i32 %140, 0
  %154 = icmp slt i32 %148, %35
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = icmp slt i32 %148, 2
  br i1 %156, label %193, label %157

157:                                              ; preds = %155
  %158 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %148, i1 true)
  %159 = sub nuw nsw i32 32, %158
  %160 = lshr exact i32 -2147483648, %158
  br label %161

161:                                              ; preds = %157, %146
  %162 = phi i32 [ %160, %157 ], [ %35, %146 ]
  %163 = phi i32 [ %159, %157 ], [ %39, %146 ]
  %164 = icmp ult i32 %150, %9
  br i1 %164, label %165, label %193

165:                                              ; preds = %161
  %166 = icmp ugt ptr %120, %29
  %167 = lshr i32 %139, 3
  %168 = zext nneg i32 %167 to i64
  br i1 %166, label %169, label %172, !prof !9

169:                                              ; preds = %165
  %170 = getelementptr inbounds nuw i8, ptr %120, i64 %168
  %171 = icmp ugt ptr %170, %31
  br i1 %171, label %175, label %172

172:                                              ; preds = %169, %165
  %173 = getelementptr inbounds nuw i8, ptr %120, i64 %168
  %174 = and i32 %139, 7
  br label %188

175:                                              ; preds = %169
  %176 = ptrtoint ptr %120 to i64
  %177 = sub i64 %32, %176
  %178 = add i64 %177, 1152921504606846976
  %179 = icmp ult i64 %178, 2305843009213693952
  br i1 %179, label %180, label %.loopexit, !prof !10, !nosanitize !11

180:                                              ; preds = %175
  %181 = trunc i64 %177 to i32
  %182 = shl i32 %181, 3
  %183 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %139, i32 %182), !nosanitize !11
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !11
  br i1 %184, label %.loopexit23, label %185, !prof !12, !nosanitize !11

185:                                              ; preds = %180
  %186 = extractvalue { i32, i1 } %183, 0, !nosanitize !11
  %187 = and i32 %186, 31
  br label %188

188:                                              ; preds = %185, %172
  %189 = phi i32 [ %174, %172 ], [ %187, %185 ]
  %190 = phi ptr [ %173, %172 ], [ %31, %185 ]
  %191 = load i32, ptr %190, align 1, !tbaa !5
  %192 = lshr i32 %191, %189
  br label %33

193:                                              ; preds = %161, %155, %.loopexit24
  %194 = phi i32 [ %34, %.loopexit24 ], [ %148, %155 ], [ %148, %161 ]
  %195 = phi i32 [ %89, %.loopexit24 ], [ %139, %155 ], [ %139, %161 ]
  %196 = phi i32 [ %87, %.loopexit24 ], [ %150, %155 ], [ %150, %161 ]
  %197 = phi ptr [ %79, %.loopexit24 ], [ %120, %155 ], [ %120, %161 ]
  %198 = icmp eq i32 %194, 1
  br i1 %198, label %199, label %212

199:                                              ; preds = %193
  %200 = icmp ugt i32 %196, %9
  br i1 %200, label %212, label %201

201:                                              ; preds = %199
  %202 = icmp sgt i32 %195, 32
  br i1 %202, label %212, label %203

203:                                              ; preds = %201
  %204 = add i32 %196, -1
  store i32 %204, ptr %1, align 4, !tbaa !5
  %205 = add nsw i32 %195, 7
  %206 = ashr i32 %205, 3
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %197, i64 %207
  %209 = ptrtoint ptr %208 to i64
  %210 = ptrtoint ptr %3 to i64
  %211 = sub i64 %209, %210
  br label %212

212:                                              ; preds = %203, %201, %199, %193, %17, %11
  %213 = phi i64 [ %16, %11 ], [ %211, %203 ], [ -44, %17 ], [ -20, %193 ], [ -48, %199 ], [ -20, %201 ]
  ret i64 %213
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @FSE_readNCount(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca [219 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %9 = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %8, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, -9223372036854775808) i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %.loopexit

15:                                               ; preds = %10
  %16 = icmp eq i64 %6, 0
  br i1 %16, label %.loopexit, label %17

17:                                               ; preds = %15
  %18 = load i8, ptr %5, align 1, !tbaa !17
  %19 = zext i8 %18 to i64
  %20 = icmp slt i8 %18, 0
  br i1 %20, label %21, label %136

21:                                               ; preds = %17
  %22 = add nsw i64 %19, -127
  %23 = add nsw i64 %19, -126
  %24 = lshr i64 %23, 1
  %25 = icmp ult i64 %24, %6
  br i1 %25, label %26, label %.loopexit

26:                                               ; preds = %21
  %27 = icmp ult i64 %22, %1
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %5, i64 1
  %30 = getelementptr i8, ptr %0, i64 1
  %31 = add nsw i64 %19, -128
  %32 = lshr i64 %31, 1
  %33 = add nuw nsw i64 %32, 1
  %34 = icmp samesign ult i8 %18, -122
  br i1 %34, label %.preheader28, label %35

35:                                               ; preds = %28
  %36 = and i64 %19, 126
  %37 = getelementptr i8, ptr %0, i64 %36
  %38 = getelementptr i8, ptr %37, i64 2
  %39 = getelementptr i8, ptr %5, i64 %32
  %40 = getelementptr i8, ptr %39, i64 2
  %41 = icmp ult ptr %0, %40
  %42 = icmp ult ptr %29, %38
  %43 = and i1 %42, %41
  br i1 %43, label %.preheader28, label %44

44:                                               ; preds = %35
  %45 = icmp samesign ult i8 %18, -98
  br i1 %45, label %106, label %46

46:                                               ; preds = %44
  %47 = and i64 %33, 112
  %48 = getelementptr i8, ptr %0, i64 16
  %49 = getelementptr i8, ptr %5, i64 9
  %50 = load <8 x i8>, ptr %29, align 1, !tbaa !17, !alias.scope !18
  %51 = load <8 x i8>, ptr %49, align 1, !tbaa !17, !alias.scope !18
  %52 = lshr <8 x i8> %50, splat (i8 4)
  %53 = lshr <8 x i8> %51, splat (i8 4)
  %54 = and <8 x i8> %50, splat (i8 15)
  %55 = and <8 x i8> %51, splat (i8 15)
  %56 = shufflevector <8 x i8> %52, <8 x i8> %54, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %56, ptr %0, align 1, !tbaa !17
  %57 = shufflevector <8 x i8> %53, <8 x i8> %55, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %57, ptr %48, align 1, !tbaa !17
  %58 = icmp eq i64 %47, 16
  br i1 %58, label %100, label %59

59:                                               ; preds = %46
  %60 = getelementptr i8, ptr %5, i64 17
  %61 = getelementptr i8, ptr %5, i64 25
  %62 = load <8 x i8>, ptr %60, align 1, !tbaa !17, !alias.scope !18
  %63 = load <8 x i8>, ptr %61, align 1, !tbaa !17, !alias.scope !18
  %64 = lshr <8 x i8> %62, splat (i8 4)
  %65 = lshr <8 x i8> %63, splat (i8 4)
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %67 = getelementptr i8, ptr %0, i64 48
  %68 = and <8 x i8> %62, splat (i8 15)
  %69 = and <8 x i8> %63, splat (i8 15)
  %70 = shufflevector <8 x i8> %64, <8 x i8> %68, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %70, ptr %66, align 1, !tbaa !17
  %71 = shufflevector <8 x i8> %65, <8 x i8> %69, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %71, ptr %67, align 1, !tbaa !17
  %72 = icmp eq i64 %47, 32
  br i1 %72, label %100, label %73

73:                                               ; preds = %59
  %74 = getelementptr i8, ptr %5, i64 33
  %75 = getelementptr i8, ptr %5, i64 41
  %76 = load <8 x i8>, ptr %74, align 1, !tbaa !17, !alias.scope !18
  %77 = load <8 x i8>, ptr %75, align 1, !tbaa !17, !alias.scope !18
  %78 = lshr <8 x i8> %76, splat (i8 4)
  %79 = lshr <8 x i8> %77, splat (i8 4)
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %81 = getelementptr i8, ptr %0, i64 80
  %82 = and <8 x i8> %76, splat (i8 15)
  %83 = and <8 x i8> %77, splat (i8 15)
  %84 = shufflevector <8 x i8> %78, <8 x i8> %82, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %84, ptr %80, align 1, !tbaa !17
  %85 = shufflevector <8 x i8> %79, <8 x i8> %83, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %85, ptr %81, align 1, !tbaa !17
  %86 = icmp eq i64 %47, 48
  br i1 %86, label %100, label %87

87:                                               ; preds = %73
  %88 = getelementptr i8, ptr %5, i64 49
  %89 = getelementptr i8, ptr %5, i64 57
  %90 = load <8 x i8>, ptr %88, align 1, !tbaa !17, !alias.scope !18
  %91 = load <8 x i8>, ptr %89, align 1, !tbaa !17, !alias.scope !18
  %92 = lshr <8 x i8> %90, splat (i8 4)
  %93 = lshr <8 x i8> %91, splat (i8 4)
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %95 = getelementptr i8, ptr %0, i64 112
  %96 = and <8 x i8> %90, splat (i8 15)
  %97 = and <8 x i8> %91, splat (i8 15)
  %98 = shufflevector <8 x i8> %92, <8 x i8> %96, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %98, ptr %94, align 1, !tbaa !17
  %99 = shufflevector <8 x i8> %93, <8 x i8> %97, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %99, ptr %95, align 1, !tbaa !17
  br label %100

100:                                              ; preds = %87, %73, %59, %46
  %101 = icmp eq i64 %33, %47
  br i1 %101, label %.loopexit14.thread, label %102

102:                                              ; preds = %100
  %103 = shl nuw nsw i64 %47, 1
  %104 = and i64 %33, 12
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %.preheader28, label %106

106:                                              ; preds = %102, %44
  %107 = phi i64 [ %47, %102 ], [ 0, %44 ]
  %108 = and i64 %33, 124
  br label %109

109:                                              ; preds = %109, %106
  %110 = phi i64 [ %107, %106 ], [ %119, %109 ]
  %111 = shl i64 %110, 1
  %112 = and i64 %110, 9223372036854775804
  %113 = getelementptr inbounds nuw i8, ptr %29, i64 %112
  %114 = load <4 x i8>, ptr %113, align 1, !tbaa !17, !alias.scope !18
  %115 = lshr <4 x i8> %114, splat (i8 4)
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %111
  %117 = and <4 x i8> %114, splat (i8 15)
  %118 = shufflevector <4 x i8> %115, <4 x i8> %117, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %118, ptr %116, align 1, !tbaa !17
  %119 = add nuw i64 %110, 4
  %120 = icmp eq i64 %119, %108
  br i1 %120, label %121, label %109, !llvm.loop !21

121:                                              ; preds = %109
  %122 = shl nuw nsw i64 %108, 1
  %123 = icmp eq i64 %33, %108
  br i1 %123, label %.loopexit14.thread, label %.preheader28

.preheader28:                                     ; preds = %121, %102, %35, %28
  %.ph = phi i64 [ %122, %121 ], [ %103, %102 ], [ 0, %35 ], [ 0, %28 ]
  br label %124

124:                                              ; preds = %.preheader28, %124
  %125 = phi i64 [ %134, %124 ], [ %.ph, %.preheader28 ]
  %126 = lshr exact i64 %125, 1
  %127 = getelementptr inbounds nuw i8, ptr %29, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !17
  %129 = lshr i8 %128, 4
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 %125
  store i8 %129, ptr %130, align 1, !tbaa !17
  %131 = load i8, ptr %127, align 1, !tbaa !17
  %132 = and i8 %131, 15
  %133 = getelementptr i8, ptr %30, i64 %125
  store i8 %132, ptr %133, align 1, !tbaa !17
  %134 = add nuw nsw i64 %125, 2
  %135 = icmp samesign ult i64 %134, %22
  br i1 %135, label %124, label %.loopexit14.thread, !llvm.loop !24

136:                                              ; preds = %17
  %137 = icmp ugt i64 %6, %19
  br i1 %137, label %138, label %.loopexit

138:                                              ; preds = %136
  %139 = add i64 %1, -1
  %140 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %141 = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %139, ptr noundef nonnull %140, i64 noundef %19, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #12
  %142 = icmp ult i64 %141, -119
  br i1 %142, label %.loopexit14, label %.loopexit

.loopexit14.thread:                               ; preds = %124, %121, %100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.preheader.preheader

.loopexit14:                                      ; preds = %138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %143 = icmp eq i64 %141, 0
  br i1 %143, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit14.thread, %.loopexit14
  %144 = phi i64 [ %24, %.loopexit14.thread ], [ %19, %.loopexit14 ]
  %145 = phi i64 [ %22, %.loopexit14.thread ], [ %141, %.loopexit14 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %152
  %146 = phi i64 [ %163, %152 ], [ 0, %.preheader.preheader ]
  %147 = phi i32 [ %161, %152 ], [ 0, %.preheader.preheader ]
  %148 = phi i32 [ %162, %152 ], [ 0, %.preheader.preheader ]
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 %146
  %150 = load i8, ptr %149, align 1, !tbaa !17
  %151 = icmp ugt i8 %150, 12
  br i1 %151, label %.loopexit, label %152

152:                                              ; preds = %.preheader
  %153 = zext nneg i8 %150 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !5
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 4, !tbaa !5
  %157 = load i8, ptr %149, align 1, !tbaa !17
  %158 = zext nneg i8 %157 to i32
  %159 = shl nuw i32 1, %158
  %160 = ashr i32 %159, 1
  %161 = add i32 %160, %147
  %162 = add i32 %148, 1
  %163 = zext i32 %162 to i64
  %164 = icmp ugt i64 %145, %163
  br i1 %164, label %.preheader, label %165, !llvm.loop !25

165:                                              ; preds = %152
  %166 = icmp eq i32 %161, 0
  br i1 %166, label %.loopexit, label %167

167:                                              ; preds = %165
  %168 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %161, i1 true)
  %169 = xor i32 %168, 31
  %170 = icmp samesign ugt i32 %169, 11
  br i1 %170, label %.loopexit, label %171

171:                                              ; preds = %167
  %172 = sub nuw nsw i32 32, %168
  store i32 %172, ptr %4, align 4, !tbaa !5
  %173 = shl nuw nsw i32 2, %169
  %174 = sub i32 %173, %161
  %175 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %174, i1 true)
  %176 = lshr exact i32 -2147483648, %175
  %177 = icmp eq i32 %176, %174
  br i1 %177, label %178, label %.loopexit

178:                                              ; preds = %171
  %179 = sub nuw nsw i32 32, %175
  %180 = trunc nuw nsw i32 %179 to i8
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  store i8 %180, ptr %181, align 1, !tbaa !17
  %182 = zext nneg i32 %179 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !5
  %185 = add i32 %184, 1
  store i32 %185, ptr %183, align 4, !tbaa !5
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = icmp ugt i32 %187, 1
  %189 = and i32 %187, 1
  %190 = icmp eq i32 %189, 0
  %191 = and i1 %188, %190
  br i1 %191, label %192, label %.loopexit

192:                                              ; preds = %178
  %193 = trunc nuw i64 %145 to i32
  %194 = add i32 %193, 1
  store i32 %194, ptr %3, align 4, !tbaa !5
  %195 = add nuw nsw i64 %144, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %192, %178, %171, %167, %165, %.loopexit14, %138, %136, %26, %21, %15, %13
  %196 = phi i64 [ %14, %13 ], [ %195, %192 ], [ -72, %15 ], [ -72, %21 ], [ -20, %26 ], [ -72, %136 ], [ %141, %138 ], [ -20, %165 ], [ -20, %178 ], [ -20, %167 ], [ -20, %171 ], [ -20, %.loopexit14 ], [ -20, %.preheader ]
  ret i64 %196
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #4 {
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %.loopexit, label %11

11:                                               ; preds = %9
  %12 = load i8, ptr %5, align 1, !tbaa !17
  %13 = zext i8 %12 to i64
  %14 = icmp slt i8 %12, 0
  br i1 %14, label %15, label %135

15:                                               ; preds = %11
  %16 = add nsw i64 %13, -127
  %17 = add nsw i64 %13, -126
  %18 = lshr i64 %17, 1
  %19 = icmp ult i64 %18, %6
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %15
  %21 = icmp ult i64 %16, %1
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %5, i64 1
  %24 = trunc nuw nsw i64 %16 to i32
  %25 = getelementptr i8, ptr %0, i64 1
  %26 = tail call i32 @llvm.umax.i32(i32 %24, i32 2)
  %27 = add nsw i32 %26, -1
  %28 = lshr i32 %27, 1
  %29 = add nuw nsw i32 %28, 1
  %30 = zext nneg i32 %29 to i64
  %31 = icmp samesign ult i8 %12, -122
  br i1 %31, label %.preheader27, label %32

32:                                               ; preds = %22
  %33 = zext nneg i32 %28 to i64
  %34 = shl nuw nsw i64 %33, 1
  %35 = getelementptr i8, ptr %0, i64 %34
  %36 = getelementptr i8, ptr %35, i64 2
  %37 = getelementptr i8, ptr %5, i64 %33
  %38 = getelementptr i8, ptr %37, i64 2
  %39 = icmp ult ptr %0, %38
  %40 = icmp ult ptr %23, %36
  %41 = and i1 %39, %40
  br i1 %41, label %.preheader27, label %42

42:                                               ; preds = %32
  %43 = icmp samesign ult i8 %12, -98
  br i1 %43, label %104, label %44

44:                                               ; preds = %42
  %45 = and i64 %30, 2147483632
  %46 = getelementptr i8, ptr %0, i64 16
  %47 = getelementptr i8, ptr %5, i64 9
  %48 = load <8 x i8>, ptr %23, align 1, !tbaa !17, !alias.scope !26
  %49 = load <8 x i8>, ptr %47, align 1, !tbaa !17, !alias.scope !26
  %50 = lshr <8 x i8> %48, splat (i8 4)
  %51 = lshr <8 x i8> %49, splat (i8 4)
  %52 = and <8 x i8> %48, splat (i8 15)
  %53 = and <8 x i8> %49, splat (i8 15)
  %54 = shufflevector <8 x i8> %50, <8 x i8> %52, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %54, ptr %0, align 1, !tbaa !17
  %55 = shufflevector <8 x i8> %51, <8 x i8> %53, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %55, ptr %46, align 1, !tbaa !17
  %56 = icmp eq i64 %45, 16
  br i1 %56, label %98, label %57

57:                                               ; preds = %44
  %58 = getelementptr i8, ptr %5, i64 17
  %59 = getelementptr i8, ptr %5, i64 25
  %60 = load <8 x i8>, ptr %58, align 1, !tbaa !17, !alias.scope !26
  %61 = load <8 x i8>, ptr %59, align 1, !tbaa !17, !alias.scope !26
  %62 = lshr <8 x i8> %60, splat (i8 4)
  %63 = lshr <8 x i8> %61, splat (i8 4)
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %65 = getelementptr i8, ptr %0, i64 48
  %66 = and <8 x i8> %60, splat (i8 15)
  %67 = and <8 x i8> %61, splat (i8 15)
  %68 = shufflevector <8 x i8> %62, <8 x i8> %66, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %68, ptr %64, align 1, !tbaa !17
  %69 = shufflevector <8 x i8> %63, <8 x i8> %67, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %69, ptr %65, align 1, !tbaa !17
  %70 = icmp eq i64 %45, 32
  br i1 %70, label %98, label %71

71:                                               ; preds = %57
  %72 = getelementptr i8, ptr %5, i64 33
  %73 = getelementptr i8, ptr %5, i64 41
  %74 = load <8 x i8>, ptr %72, align 1, !tbaa !17, !alias.scope !26
  %75 = load <8 x i8>, ptr %73, align 1, !tbaa !17, !alias.scope !26
  %76 = lshr <8 x i8> %74, splat (i8 4)
  %77 = lshr <8 x i8> %75, splat (i8 4)
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %79 = getelementptr i8, ptr %0, i64 80
  %80 = and <8 x i8> %74, splat (i8 15)
  %81 = and <8 x i8> %75, splat (i8 15)
  %82 = shufflevector <8 x i8> %76, <8 x i8> %80, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %82, ptr %78, align 1, !tbaa !17
  %83 = shufflevector <8 x i8> %77, <8 x i8> %81, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %83, ptr %79, align 1, !tbaa !17
  %84 = icmp eq i64 %45, 48
  br i1 %84, label %98, label %85

85:                                               ; preds = %71
  %86 = getelementptr i8, ptr %5, i64 49
  %87 = getelementptr i8, ptr %5, i64 57
  %88 = load <8 x i8>, ptr %86, align 1, !tbaa !17, !alias.scope !26
  %89 = load <8 x i8>, ptr %87, align 1, !tbaa !17, !alias.scope !26
  %90 = lshr <8 x i8> %88, splat (i8 4)
  %91 = lshr <8 x i8> %89, splat (i8 4)
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %93 = getelementptr i8, ptr %0, i64 112
  %94 = and <8 x i8> %88, splat (i8 15)
  %95 = and <8 x i8> %89, splat (i8 15)
  %96 = shufflevector <8 x i8> %90, <8 x i8> %94, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %96, ptr %92, align 1, !tbaa !17
  %97 = shufflevector <8 x i8> %91, <8 x i8> %95, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %97, ptr %93, align 1, !tbaa !17
  br label %98

98:                                               ; preds = %85, %71, %57, %44
  %99 = icmp eq i64 %45, %30
  br i1 %99, label %.loopexit13.thread, label %100

100:                                              ; preds = %98
  %101 = shl nuw nsw i64 %45, 1
  %102 = and i64 %30, 12
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %.preheader27, label %104

104:                                              ; preds = %100, %42
  %105 = phi i64 [ %45, %100 ], [ 0, %42 ]
  %106 = and i64 %30, 2147483644
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i64 [ %105, %104 ], [ %117, %107 ]
  %109 = shl i64 %108, 1
  %110 = and i64 %108, 9223372036854775804
  %111 = getelementptr inbounds nuw i8, ptr %23, i64 %110
  %112 = load <4 x i8>, ptr %111, align 1, !tbaa !17, !alias.scope !26
  %113 = lshr <4 x i8> %112, splat (i8 4)
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 %109
  %115 = and <4 x i8> %112, splat (i8 15)
  %116 = shufflevector <4 x i8> %113, <4 x i8> %115, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %116, ptr %114, align 1, !tbaa !17
  %117 = add nuw i64 %108, 4
  %118 = icmp eq i64 %117, %106
  br i1 %118, label %119, label %107, !llvm.loop !29

119:                                              ; preds = %107
  %120 = shl nuw nsw i64 %106, 1
  %121 = icmp eq i64 %106, %30
  br i1 %121, label %.loopexit13.thread, label %.preheader27

.preheader27:                                     ; preds = %119, %100, %32, %22
  %.ph = phi i64 [ %120, %119 ], [ %101, %100 ], [ 0, %32 ], [ 0, %22 ]
  br label %122

122:                                              ; preds = %.preheader27, %122
  %123 = phi i64 [ %132, %122 ], [ %.ph, %.preheader27 ]
  %124 = lshr exact i64 %123, 1
  %125 = getelementptr inbounds nuw i8, ptr %23, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !17
  %127 = lshr i8 %126, 4
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 %123
  store i8 %127, ptr %128, align 1, !tbaa !17
  %129 = load i8, ptr %125, align 1, !tbaa !17
  %130 = and i8 %129, 15
  %131 = getelementptr i8, ptr %25, i64 %123
  store i8 %130, ptr %131, align 1, !tbaa !17
  %132 = add nuw nsw i64 %123, 2
  %133 = trunc i64 %132 to i32
  %134 = icmp ugt i32 %24, %133
  br i1 %134, label %122, label %.loopexit13.thread, !llvm.loop !30

135:                                              ; preds = %11
  %136 = icmp ugt i64 %6, %13
  br i1 %136, label %137, label %.loopexit

137:                                              ; preds = %135
  %138 = add i64 %1, -1
  %139 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %140 = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %138, ptr noundef nonnull %139, i64 noundef %13, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #12
  %141 = icmp ult i64 %140, -119
  br i1 %141, label %.loopexit13, label %.loopexit

.loopexit13.thread:                               ; preds = %122, %119, %98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.preheader.preheader

.loopexit13:                                      ; preds = %137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %142 = icmp eq i64 %140, 0
  br i1 %142, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit13.thread, %.loopexit13
  %143 = phi i64 [ %18, %.loopexit13.thread ], [ %13, %.loopexit13 ]
  %144 = phi i64 [ %16, %.loopexit13.thread ], [ %140, %.loopexit13 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %151
  %145 = phi i64 [ %162, %151 ], [ 0, %.preheader.preheader ]
  %146 = phi i32 [ %160, %151 ], [ 0, %.preheader.preheader ]
  %147 = phi i32 [ %161, %151 ], [ 0, %.preheader.preheader ]
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  %149 = load i8, ptr %148, align 1, !tbaa !17
  %150 = icmp ugt i8 %149, 12
  br i1 %150, label %.loopexit, label %151

151:                                              ; preds = %.preheader
  %152 = zext nneg i8 %149 to i64
  %153 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !5
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 4, !tbaa !5
  %156 = load i8, ptr %148, align 1, !tbaa !17
  %157 = zext nneg i8 %156 to i32
  %158 = shl nuw i32 1, %157
  %159 = ashr i32 %158, 1
  %160 = add i32 %159, %146
  %161 = add i32 %147, 1
  %162 = zext i32 %161 to i64
  %163 = icmp ugt i64 %144, %162
  br i1 %163, label %.preheader, label %164, !llvm.loop !25

164:                                              ; preds = %151
  %165 = icmp eq i32 %160, 0
  br i1 %165, label %.loopexit, label %166

166:                                              ; preds = %164
  %167 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %160, i1 true)
  %168 = xor i32 %167, 31
  %169 = icmp samesign ugt i32 %168, 11
  br i1 %169, label %.loopexit, label %170

170:                                              ; preds = %166
  %171 = sub nuw nsw i32 32, %167
  store i32 %171, ptr %4, align 4, !tbaa !5
  %172 = shl nuw nsw i32 2, %168
  %173 = sub i32 %172, %160
  %174 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %173, i1 true)
  %175 = lshr exact i32 -2147483648, %174
  %176 = icmp eq i32 %175, %173
  br i1 %176, label %177, label %.loopexit

177:                                              ; preds = %170
  %178 = sub nuw nsw i32 32, %174
  %179 = trunc nuw nsw i32 %178 to i8
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 %144
  store i8 %179, ptr %180, align 1, !tbaa !17
  %181 = zext nneg i32 %178 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !5
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4, !tbaa !5
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %186 = load i32, ptr %185, align 4, !tbaa !5
  %187 = icmp ugt i32 %186, 1
  %188 = and i32 %186, 1
  %189 = icmp eq i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %.loopexit

191:                                              ; preds = %177
  %192 = trunc nuw i64 %144 to i32
  %193 = add i32 %192, 1
  store i32 %193, ptr %3, align 4, !tbaa !5
  %194 = add nuw nsw i64 %143, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %191, %177, %170, %166, %164, %.loopexit13, %137, %135, %20, %15, %9
  %195 = phi i64 [ %194, %191 ], [ -72, %9 ], [ -72, %15 ], [ -20, %20 ], [ -72, %135 ], [ %140, %137 ], [ -20, %164 ], [ -20, %177 ], [ -20, %166 ], [ -20, %170 ], [ -20, %.loopexit13 ], [ -20, %.preheader ]
  ret i64 %195
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = distinct !{!21, !14, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !14, !22}
!25 = distinct !{!25, !14}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !14, !22, !23}
!30 = distinct !{!30, !14, !22}
