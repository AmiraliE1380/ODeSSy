; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/entropy_common.ll.mid'
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
  br label %223

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
  br label %223

22:                                               ; preds = %11
  %23 = zext i32 %14 to i64
  %24 = shl nuw nsw i64 %23, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %24, i1 false)
  %25 = load i32, ptr %3, align 1, !tbaa !5
  %26 = and i32 %25, 15
  %27 = icmp samesign ugt i32 %26, 10
  br i1 %27, label %223, label %28

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
  br label %39

38:                                               ; preds = %154
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !9
  unreachable, !nosanitize !9

39:                                               ; preds = %199, %28
  %40 = phi i32 [ %32, %28 ], [ %159, %199 ]
  %41 = phi i32 [ %31, %28 ], [ %173, %199 ]
  %42 = phi i32 [ %30, %28 ], [ %203, %199 ]
  %43 = phi i32 [ 4, %28 ], [ %200, %199 ]
  %44 = phi i32 [ 0, %28 ], [ %161, %199 ]
  %45 = phi i32 [ %33, %28 ], [ %174, %199 ]
  %46 = phi i1 [ true, %28 ], [ %164, %199 ]
  %47 = phi ptr [ %3, %28 ], [ %201, %199 ]
  br i1 %46, label %125, label %48

48:                                               ; preds = %39
  %49 = xor i32 %42, -1
  %50 = or i32 %49, -2147483648
  %51 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %50, i1 true)
  %52 = icmp samesign ugt i32 %51, 23
  br i1 %52, label %.preheader, label %.loopexit24

.preheader:                                       ; preds = %48, %73
  %53 = phi ptr [ %75, %73 ], [ %47, %48 ]
  %54 = phi i32 [ %56, %73 ], [ %44, %48 ]
  %55 = phi i32 [ %74, %73 ], [ %43, %48 ]
  %56 = add i32 %54, 36
  %57 = icmp ugt ptr %53, %34
  br i1 %57, label %60, label %58, !prof !10

58:                                               ; preds = %.preheader
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 3
  br label %73

60:                                               ; preds = %.preheader
  %61 = ptrtoint ptr %53 to i64
  %62 = sub i64 %35, %61
  %63 = add i64 %62, 1152921504606846976
  %64 = icmp ult i64 %63, 2305843009213693952
  br i1 %64, label %65, label %.loopexit, !prof !11, !nosanitize !9

.loopexit:                                        ; preds = %186, %107, %60
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !9
  unreachable, !nosanitize !9

65:                                               ; preds = %60
  %66 = trunc i64 %62 to i32
  %67 = shl i32 %66, 3
  %68 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %55, i32 %67), !nosanitize !9
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !9
  br i1 %69, label %.loopexit23, label %70, !prof !12, !nosanitize !9

.loopexit23:                                      ; preds = %191, %151, %125, %112, %65
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !9
  unreachable, !nosanitize !9

70:                                               ; preds = %65
  %71 = extractvalue { i32, i1 } %68, 0, !nosanitize !9
  %72 = and i32 %71, 31
  br label %73

73:                                               ; preds = %70, %58
  %74 = phi i32 [ %55, %58 ], [ %72, %70 ]
  %75 = phi ptr [ %59, %58 ], [ %36, %70 ]
  %76 = load i32, ptr %75, align 1, !tbaa !5
  %77 = lshr i32 %76, %74
  %78 = xor i32 %77, -1
  %79 = or i32 %78, -2147483648
  %80 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %79, i1 true)
  %81 = icmp samesign ugt i32 %80, 23
  br i1 %81, label %.preheader, label %.loopexit24, !llvm.loop !13

.loopexit24:                                      ; preds = %73, %48
  %82 = phi i32 [ %42, %48 ], [ %77, %73 ]
  %83 = phi i32 [ %43, %48 ], [ %74, %73 ]
  %84 = phi i32 [ %44, %48 ], [ %56, %73 ]
  %85 = phi ptr [ %47, %48 ], [ %75, %73 ]
  %86 = phi i32 [ %51, %48 ], [ %80, %73 ]
  %87 = and i32 %86, 30
  %88 = lshr i32 %82, %87
  %89 = lshr i32 %86, 1
  %90 = mul nuw nsw i32 %89, 3
  %91 = add i32 %90, %84
  %92 = and i32 %88, 3
  %93 = add i32 %91, %92
  %94 = add nuw nsw i32 %83, 2
  %95 = add nuw nsw i32 %94, %87
  %96 = icmp ult i32 %93, %14
  br i1 %96, label %97, label %204

97:                                               ; preds = %.loopexit24
  %98 = icmp ugt ptr %85, %34
  %99 = lshr i32 %95, 3
  %100 = zext nneg i32 %99 to i64
  br i1 %98, label %101, label %104, !prof !10

101:                                              ; preds = %97
  %102 = getelementptr inbounds nuw i8, ptr %85, i64 %100
  %103 = icmp ugt ptr %102, %36
  br i1 %103, label %107, label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds nuw i8, ptr %85, i64 %100
  %106 = and i32 %95, 7
  br label %120

107:                                              ; preds = %101
  %108 = ptrtoint ptr %85 to i64
  %109 = sub i64 %37, %108
  %110 = add i64 %109, 1152921504606846976
  %111 = icmp ult i64 %110, 2305843009213693952
  br i1 %111, label %112, label %.loopexit, !prof !11, !nosanitize !9

112:                                              ; preds = %107
  %113 = trunc i64 %109 to i32
  %114 = shl i32 %113, 3
  %115 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %95, i32 %114), !nosanitize !9
  %116 = extractvalue { i32, i1 } %115, 1, !nosanitize !9
  br i1 %116, label %.loopexit23, label %117, !prof !12, !nosanitize !9

117:                                              ; preds = %112
  %118 = extractvalue { i32, i1 } %115, 0, !nosanitize !9
  %119 = and i32 %118, 31
  br label %120

120:                                              ; preds = %117, %104
  %121 = phi i32 [ %106, %104 ], [ %119, %117 ]
  %122 = phi ptr [ %105, %104 ], [ %36, %117 ]
  %123 = load i32, ptr %122, align 1, !tbaa !5
  %124 = lshr i32 %123, %121
  br label %125

125:                                              ; preds = %120, %39
  %126 = phi ptr [ %122, %120 ], [ %47, %39 ]
  %127 = phi i32 [ %93, %120 ], [ %44, %39 ]
  %128 = phi i32 [ %121, %120 ], [ %43, %39 ]
  %129 = phi i32 [ %124, %120 ], [ %42, %39 ]
  %130 = shl nuw nsw i32 %41, 1
  %131 = add nsw i32 %130, -1
  %132 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %131, i32 %40), !nosanitize !9
  %133 = extractvalue { i32, i1 } %132, 0, !nosanitize !9
  %134 = extractvalue { i32, i1 } %132, 1, !nosanitize !9
  br i1 %134, label %.loopexit23, label %135, !prof !12, !nosanitize !9

135:                                              ; preds = %125
  %136 = add nsw i32 %41, -1
  %137 = and i32 %129, %136
  %138 = icmp ult i32 %137, %133
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = add nsw i32 %45, -1
  br label %145

141:                                              ; preds = %135
  %142 = and i32 %129, %131
  %143 = icmp slt i32 %142, %41
  %144 = select i1 %143, i32 0, i32 %133
  %spec.select = sub nsw i32 %142, %144
  br label %145

145:                                              ; preds = %141, %139
  %146 = phi i32 [ %140, %139 ], [ %45, %141 ]
  %147 = phi i32 [ %137, %139 ], [ %spec.select, %141 ]
  %148 = add nuw nsw i32 %146, %128
  %149 = add nsw i32 %147, -1
  %150 = icmp sgt i32 %147, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %40, i32 %149), !nosanitize !9
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !9
  br i1 %153, label %.loopexit23, label %157, !prof !12, !nosanitize !9

154:                                              ; preds = %145
  %155 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 %149), !nosanitize !9
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !9
  br i1 %156, label %38, label %157, !prof !12, !nosanitize !9

157:                                              ; preds = %154, %151
  %158 = phi { i32, i1 } [ %152, %151 ], [ %155, %154 ]
  %159 = extractvalue { i32, i1 } %158, 0
  %160 = trunc i32 %149 to i16
  %161 = add nuw i32 %127, 1
  %162 = zext i32 %127 to i64
  %163 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %162
  store i16 %160, ptr %163, align 2, !tbaa !15
  %164 = icmp ne i32 %149, 0
  %165 = icmp slt i32 %159, %41
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = icmp slt i32 %159, 2
  br i1 %167, label %204, label %168

168:                                              ; preds = %166
  %169 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %159, i1 true)
  %170 = sub nuw nsw i32 32, %169
  %171 = lshr exact i32 -2147483648, %169
  br label %172

172:                                              ; preds = %168, %157
  %173 = phi i32 [ %171, %168 ], [ %41, %157 ]
  %174 = phi i32 [ %170, %168 ], [ %45, %157 ]
  %175 = icmp ult i32 %161, %14
  br i1 %175, label %176, label %204

176:                                              ; preds = %172
  %177 = icmp ugt ptr %126, %34
  %178 = lshr i32 %148, 3
  %179 = zext nneg i32 %178 to i64
  br i1 %177, label %180, label %183, !prof !10

180:                                              ; preds = %176
  %181 = getelementptr inbounds nuw i8, ptr %126, i64 %179
  %182 = icmp ugt ptr %181, %36
  br i1 %182, label %186, label %183

183:                                              ; preds = %180, %176
  %184 = getelementptr inbounds nuw i8, ptr %126, i64 %179
  %185 = and i32 %148, 7
  br label %199

186:                                              ; preds = %180
  %187 = ptrtoint ptr %126 to i64
  %188 = sub i64 %37, %187
  %189 = add i64 %188, 1152921504606846976
  %190 = icmp ult i64 %189, 2305843009213693952
  br i1 %190, label %191, label %.loopexit, !prof !11, !nosanitize !9

191:                                              ; preds = %186
  %192 = trunc i64 %188 to i32
  %193 = shl i32 %192, 3
  %194 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %148, i32 %193), !nosanitize !9
  %195 = extractvalue { i32, i1 } %194, 1, !nosanitize !9
  br i1 %195, label %.loopexit23, label %196, !prof !12, !nosanitize !9

196:                                              ; preds = %191
  %197 = extractvalue { i32, i1 } %194, 0, !nosanitize !9
  %198 = and i32 %197, 31
  br label %199

199:                                              ; preds = %196, %183
  %200 = phi i32 [ %185, %183 ], [ %198, %196 ]
  %201 = phi ptr [ %184, %183 ], [ %36, %196 ]
  %202 = load i32, ptr %201, align 1, !tbaa !5
  %203 = lshr i32 %202, %200
  br label %39

204:                                              ; preds = %172, %166, %.loopexit24
  %205 = phi i32 [ %40, %.loopexit24 ], [ %159, %166 ], [ %159, %172 ]
  %206 = phi i32 [ %95, %.loopexit24 ], [ %148, %166 ], [ %148, %172 ]
  %207 = phi i32 [ %93, %.loopexit24 ], [ %161, %166 ], [ %161, %172 ]
  %208 = phi ptr [ %85, %.loopexit24 ], [ %126, %166 ], [ %126, %172 ]
  %209 = icmp eq i32 %205, 1
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = icmp ugt i32 %207, %14
  br i1 %211, label %223, label %212

212:                                              ; preds = %210
  %213 = icmp sgt i32 %206, 32
  br i1 %213, label %223, label %214

214:                                              ; preds = %212
  %215 = add i32 %207, -1
  store i32 %215, ptr %1, align 4, !tbaa !5
  %216 = add nsw i32 %206, 7
  %217 = ashr i32 %216, 3
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %208, i64 %218
  %220 = ptrtoint ptr %219 to i64
  %221 = ptrtoint ptr %3 to i64
  %222 = sub i64 %220, %221
  br label %223

223:                                              ; preds = %214, %212, %210, %204, %22, %16, %9
  %224 = phi i64 [ %10, %9 ], [ %21, %16 ], [ %222, %214 ], [ -44, %22 ], [ -20, %204 ], [ -48, %210 ], [ -20, %212 ]
  ret i64 %224
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
  br label %218

17:                                               ; preds = %5
  %18 = zext i32 %9 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %19, i1 false)
  %20 = load i32, ptr %3, align 1, !tbaa !5
  %21 = and i32 %20, 15
  %22 = icmp samesign ugt i32 %21, 10
  br i1 %22, label %218, label %23

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
  br label %34

33:                                               ; preds = %149
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !9
  unreachable, !nosanitize !9

34:                                               ; preds = %194, %23
  %35 = phi i32 [ %27, %23 ], [ %154, %194 ]
  %36 = phi i32 [ %26, %23 ], [ %168, %194 ]
  %37 = phi i32 [ %25, %23 ], [ %198, %194 ]
  %38 = phi i32 [ 4, %23 ], [ %195, %194 ]
  %39 = phi i32 [ 0, %23 ], [ %156, %194 ]
  %40 = phi i32 [ %28, %23 ], [ %169, %194 ]
  %41 = phi i1 [ true, %23 ], [ %159, %194 ]
  %42 = phi ptr [ %3, %23 ], [ %196, %194 ]
  br i1 %41, label %120, label %43

43:                                               ; preds = %34
  %44 = xor i32 %37, -1
  %45 = or i32 %44, -2147483648
  %46 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %45, i1 true)
  %47 = icmp samesign ugt i32 %46, 23
  br i1 %47, label %.preheader, label %.loopexit24

.preheader:                                       ; preds = %43, %68
  %48 = phi ptr [ %70, %68 ], [ %42, %43 ]
  %49 = phi i32 [ %51, %68 ], [ %39, %43 ]
  %50 = phi i32 [ %69, %68 ], [ %38, %43 ]
  %51 = add i32 %49, 36
  %52 = icmp ugt ptr %48, %29
  br i1 %52, label %55, label %53, !prof !10

53:                                               ; preds = %.preheader
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 3
  br label %68

55:                                               ; preds = %.preheader
  %56 = ptrtoint ptr %48 to i64
  %57 = sub i64 %30, %56
  %58 = add i64 %57, 1152921504606846976
  %59 = icmp ult i64 %58, 2305843009213693952
  br i1 %59, label %60, label %.loopexit, !prof !11, !nosanitize !9

.loopexit:                                        ; preds = %181, %102, %55
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !9
  unreachable, !nosanitize !9

60:                                               ; preds = %55
  %61 = trunc i64 %57 to i32
  %62 = shl i32 %61, 3
  %63 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %50, i32 %62), !nosanitize !9
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !9
  br i1 %64, label %.loopexit23, label %65, !prof !12, !nosanitize !9

.loopexit23:                                      ; preds = %186, %146, %120, %107, %60
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !9
  unreachable, !nosanitize !9

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !9
  %67 = and i32 %66, 31
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi i32 [ %50, %53 ], [ %67, %65 ]
  %70 = phi ptr [ %54, %53 ], [ %31, %65 ]
  %71 = load i32, ptr %70, align 1, !tbaa !5
  %72 = lshr i32 %71, %69
  %73 = xor i32 %72, -1
  %74 = or i32 %73, -2147483648
  %75 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %74, i1 true)
  %76 = icmp samesign ugt i32 %75, 23
  br i1 %76, label %.preheader, label %.loopexit24, !llvm.loop !13

.loopexit24:                                      ; preds = %68, %43
  %77 = phi i32 [ %37, %43 ], [ %72, %68 ]
  %78 = phi i32 [ %38, %43 ], [ %69, %68 ]
  %79 = phi i32 [ %39, %43 ], [ %51, %68 ]
  %80 = phi ptr [ %42, %43 ], [ %70, %68 ]
  %81 = phi i32 [ %46, %43 ], [ %75, %68 ]
  %82 = and i32 %81, 30
  %83 = lshr i32 %77, %82
  %84 = lshr i32 %81, 1
  %85 = mul nuw nsw i32 %84, 3
  %86 = add i32 %85, %79
  %87 = and i32 %83, 3
  %88 = add i32 %86, %87
  %89 = add nuw nsw i32 %78, 2
  %90 = add nuw nsw i32 %89, %82
  %91 = icmp ult i32 %88, %9
  br i1 %91, label %92, label %199

92:                                               ; preds = %.loopexit24
  %93 = icmp ugt ptr %80, %29
  %94 = lshr i32 %90, 3
  %95 = zext nneg i32 %94 to i64
  br i1 %93, label %96, label %99, !prof !10

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %80, i64 %95
  %98 = icmp ugt ptr %97, %31
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %92
  %100 = getelementptr inbounds nuw i8, ptr %80, i64 %95
  %101 = and i32 %90, 7
  br label %115

102:                                              ; preds = %96
  %103 = ptrtoint ptr %80 to i64
  %104 = sub i64 %32, %103
  %105 = add i64 %104, 1152921504606846976
  %106 = icmp ult i64 %105, 2305843009213693952
  br i1 %106, label %107, label %.loopexit, !prof !11, !nosanitize !9

107:                                              ; preds = %102
  %108 = trunc i64 %104 to i32
  %109 = shl i32 %108, 3
  %110 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %90, i32 %109), !nosanitize !9
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !9
  br i1 %111, label %.loopexit23, label %112, !prof !12, !nosanitize !9

112:                                              ; preds = %107
  %113 = extractvalue { i32, i1 } %110, 0, !nosanitize !9
  %114 = and i32 %113, 31
  br label %115

115:                                              ; preds = %112, %99
  %116 = phi i32 [ %101, %99 ], [ %114, %112 ]
  %117 = phi ptr [ %100, %99 ], [ %31, %112 ]
  %118 = load i32, ptr %117, align 1, !tbaa !5
  %119 = lshr i32 %118, %116
  br label %120

120:                                              ; preds = %115, %34
  %121 = phi ptr [ %117, %115 ], [ %42, %34 ]
  %122 = phi i32 [ %88, %115 ], [ %39, %34 ]
  %123 = phi i32 [ %116, %115 ], [ %38, %34 ]
  %124 = phi i32 [ %119, %115 ], [ %37, %34 ]
  %125 = shl nuw nsw i32 %36, 1
  %126 = add nsw i32 %125, -1
  %127 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %126, i32 %35), !nosanitize !9
  %128 = extractvalue { i32, i1 } %127, 0, !nosanitize !9
  %129 = extractvalue { i32, i1 } %127, 1, !nosanitize !9
  br i1 %129, label %.loopexit23, label %130, !prof !12, !nosanitize !9

130:                                              ; preds = %120
  %131 = add nsw i32 %36, -1
  %132 = and i32 %124, %131
  %133 = icmp ult i32 %132, %128
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = add nsw i32 %40, -1
  br label %140

136:                                              ; preds = %130
  %137 = and i32 %124, %126
  %138 = icmp slt i32 %137, %36
  %139 = select i1 %138, i32 0, i32 %128
  %spec.select = sub nsw i32 %137, %139
  br label %140

140:                                              ; preds = %136, %134
  %141 = phi i32 [ %135, %134 ], [ %40, %136 ]
  %142 = phi i32 [ %132, %134 ], [ %spec.select, %136 ]
  %143 = add nuw nsw i32 %141, %123
  %144 = add nsw i32 %142, -1
  %145 = icmp sgt i32 %142, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %35, i32 %144), !nosanitize !9
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !9
  br i1 %148, label %.loopexit23, label %152, !prof !12, !nosanitize !9

149:                                              ; preds = %140
  %150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 %144), !nosanitize !9
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !9
  br i1 %151, label %33, label %152, !prof !12, !nosanitize !9

152:                                              ; preds = %149, %146
  %153 = phi { i32, i1 } [ %147, %146 ], [ %150, %149 ]
  %154 = extractvalue { i32, i1 } %153, 0
  %155 = trunc i32 %144 to i16
  %156 = add nuw i32 %122, 1
  %157 = zext i32 %122 to i64
  %158 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %157
  store i16 %155, ptr %158, align 2, !tbaa !15
  %159 = icmp ne i32 %144, 0
  %160 = icmp slt i32 %154, %36
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = icmp slt i32 %154, 2
  br i1 %162, label %199, label %163

163:                                              ; preds = %161
  %164 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %154, i1 true)
  %165 = sub nuw nsw i32 32, %164
  %166 = lshr exact i32 -2147483648, %164
  br label %167

167:                                              ; preds = %163, %152
  %168 = phi i32 [ %166, %163 ], [ %36, %152 ]
  %169 = phi i32 [ %165, %163 ], [ %40, %152 ]
  %170 = icmp ult i32 %156, %9
  br i1 %170, label %171, label %199

171:                                              ; preds = %167
  %172 = icmp ugt ptr %121, %29
  %173 = lshr i32 %143, 3
  %174 = zext nneg i32 %173 to i64
  br i1 %172, label %175, label %178, !prof !10

175:                                              ; preds = %171
  %176 = getelementptr inbounds nuw i8, ptr %121, i64 %174
  %177 = icmp ugt ptr %176, %31
  br i1 %177, label %181, label %178

178:                                              ; preds = %175, %171
  %179 = getelementptr inbounds nuw i8, ptr %121, i64 %174
  %180 = and i32 %143, 7
  br label %194

181:                                              ; preds = %175
  %182 = ptrtoint ptr %121 to i64
  %183 = sub i64 %32, %182
  %184 = add i64 %183, 1152921504606846976
  %185 = icmp ult i64 %184, 2305843009213693952
  br i1 %185, label %186, label %.loopexit, !prof !11, !nosanitize !9

186:                                              ; preds = %181
  %187 = trunc i64 %183 to i32
  %188 = shl i32 %187, 3
  %189 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %143, i32 %188), !nosanitize !9
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !9
  br i1 %190, label %.loopexit23, label %191, !prof !12, !nosanitize !9

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %189, 0, !nosanitize !9
  %193 = and i32 %192, 31
  br label %194

194:                                              ; preds = %191, %178
  %195 = phi i32 [ %180, %178 ], [ %193, %191 ]
  %196 = phi ptr [ %179, %178 ], [ %31, %191 ]
  %197 = load i32, ptr %196, align 1, !tbaa !5
  %198 = lshr i32 %197, %195
  br label %34

199:                                              ; preds = %167, %161, %.loopexit24
  %200 = phi i32 [ %35, %.loopexit24 ], [ %154, %161 ], [ %154, %167 ]
  %201 = phi i32 [ %90, %.loopexit24 ], [ %143, %161 ], [ %143, %167 ]
  %202 = phi i32 [ %88, %.loopexit24 ], [ %156, %161 ], [ %156, %167 ]
  %203 = phi ptr [ %80, %.loopexit24 ], [ %121, %161 ], [ %121, %167 ]
  %204 = icmp eq i32 %200, 1
  br i1 %204, label %205, label %218

205:                                              ; preds = %199
  %206 = icmp ugt i32 %202, %9
  br i1 %206, label %218, label %207

207:                                              ; preds = %205
  %208 = icmp sgt i32 %201, 32
  br i1 %208, label %218, label %209

209:                                              ; preds = %207
  %210 = add i32 %202, -1
  store i32 %210, ptr %1, align 4, !tbaa !5
  %211 = add nsw i32 %201, 7
  %212 = ashr i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %203, i64 %213
  %215 = ptrtoint ptr %214 to i64
  %216 = ptrtoint ptr %3 to i64
  %217 = sub i64 %215, %216
  br label %218

218:                                              ; preds = %209, %207, %205, %199, %17, %11
  %219 = phi i64 [ %16, %11 ], [ %217, %209 ], [ -44, %17 ], [ -20, %199 ], [ -48, %205 ], [ -20, %207 ]
  ret i64 %219
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
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 1048575, i32 1}
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
