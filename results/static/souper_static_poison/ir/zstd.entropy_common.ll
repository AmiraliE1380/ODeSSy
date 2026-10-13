; ModuleID = '/mydata/zstd/lib/common/entropy_common.c'
source_filename = "/mydata/zstd/lib/common/entropy_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @FSE_versionNumber() local_unnamed_addr #0 {
  ret i32 900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @FSE_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FSE_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #10
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @HUF_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HUF_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #10
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_readNCount_bmi2(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca [8 x i8], align 8
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @FSE_readNCount_body_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %241

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %3, i64 %4
  %13 = load i32, ptr %1, align 4, !tbaa !5
  %14 = add i32 %13, 1
  %15 = icmp ult i64 %4, 8
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr align 1 %3, i64 %4, i1 false)
  %17 = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %7, i64 noundef 8, i32 noundef 0)
  %18 = icmp ult i64 %17, -119
  %19 = icmp ugt i64 %17, %4
  %20 = and i1 %18, %19
  %21 = select i1 %20, i64 -20, i64 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %241

22:                                               ; preds = %11
  %23 = zext i32 %14 to i64
  %24 = shl nuw nsw i64 %23, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %24, i1 false)
  %25 = load i32, ptr %3, align 1, !tbaa !5
  %26 = and i32 %25, 15
  %27 = icmp ugt i32 %26, 10
  br i1 %27, label %241, label %28

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

38:                                               ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !9
  unreachable, !nosanitize !9

39:                                               ; preds = %217, %28
  %40 = phi i32 [ %32, %28 ], [ %176, %217 ]
  %41 = phi i32 [ %31, %28 ], [ %191, %217 ]
  %42 = phi i32 [ %30, %28 ], [ %221, %217 ]
  %43 = phi i32 [ 4, %28 ], [ %218, %217 ]
  %44 = phi i32 [ 0, %28 ], [ %178, %217 ]
  %45 = phi i32 [ %33, %28 ], [ %192, %217 ]
  %46 = phi i1 [ true, %28 ], [ %181, %217 ]
  %47 = phi ptr [ %3, %28 ], [ %219, %217 ]
  br i1 %46, label %129, label %48

48:                                               ; preds = %39
  %49 = xor i32 %42, -1
  %50 = or i32 %49, -2147483648
  %51 = tail call i32 @llvm.cttz.i32(i32 %50, i1 true), !range !10
  %52 = icmp ugt i32 %51, 23
  br i1 %52, label %53, label %85

53:                                               ; preds = %48, %76
  %54 = phi ptr [ %78, %76 ], [ %47, %48 ]
  %55 = phi i32 [ %57, %76 ], [ %44, %48 ]
  %56 = phi i32 [ %77, %76 ], [ %43, %48 ]
  %57 = add i32 %55, 36
  %58 = icmp ugt ptr %54, %34
  br i1 %58, label %61, label %59, !prof !11

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %54, i64 3
  br label %76

61:                                               ; preds = %53
  %62 = ptrtoint ptr %54 to i64
  %63 = sub i64 %35, %62
  %64 = add i64 %63, 1152921504606846976
  %65 = icmp ult i64 %64, 2305843009213693952
  br i1 %65, label %67, label %66, !nosanitize !9

66:                                               ; preds = %204, %129, %111, %61
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !9
  unreachable, !nosanitize !9

67:                                               ; preds = %61
  %68 = trunc i64 %63 to i32
  %69 = shl i32 %68, 3
  %70 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %56, i32 %69), !nosanitize !9
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !9
  br i1 %71, label %72, label %73, !nosanitize !9

72:                                               ; preds = %209, %168, %159, %154, %141, %136, %116, %67
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !9
  unreachable, !nosanitize !9

73:                                               ; preds = %67
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !9
  %75 = and i32 %74, 31
  br label %76

76:                                               ; preds = %73, %59
  %77 = phi i32 [ %56, %59 ], [ %75, %73 ]
  %78 = phi ptr [ %60, %59 ], [ %36, %73 ]
  %79 = load i32, ptr %78, align 1, !tbaa !5
  %80 = lshr i32 %79, %77
  %81 = xor i32 %80, -1
  %82 = or i32 %81, -2147483648
  %83 = tail call i32 @llvm.cttz.i32(i32 %82, i1 true), !range !10
  %84 = icmp ugt i32 %83, 23
  br i1 %84, label %53, label %85, !llvm.loop !12

85:                                               ; preds = %76, %48
  %86 = phi i32 [ %42, %48 ], [ %80, %76 ]
  %87 = phi i32 [ %43, %48 ], [ %77, %76 ]
  %88 = phi i32 [ %44, %48 ], [ %57, %76 ]
  %89 = phi ptr [ %47, %48 ], [ %78, %76 ]
  %90 = phi i32 [ %51, %48 ], [ %83, %76 ]
  %91 = and i32 %90, 30
  %92 = lshr i32 %86, %91
  %93 = lshr i32 %90, 1
  %94 = mul nuw nsw i32 %93, 3
  %95 = add i32 %94, %88
  %96 = add i32 %87, %91
  %97 = and i32 %92, 3
  %98 = add i32 %95, %97
  %99 = add i32 %96, 2
  %100 = icmp ult i32 %98, %14
  br i1 %100, label %101, label %222

101:                                              ; preds = %85
  %102 = icmp ugt ptr %89, %34
  %103 = lshr i32 %99, 3
  %104 = zext nneg i32 %103 to i64
  br i1 %102, label %105, label %108, !prof !11

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %89, i64 %104
  %107 = icmp ugt ptr %106, %36
  br i1 %107, label %111, label %108

108:                                              ; preds = %101, %105
  %109 = getelementptr inbounds i8, ptr %89, i64 %104
  %110 = and i32 %99, 7
  br label %124

111:                                              ; preds = %105
  %112 = ptrtoint ptr %89 to i64
  %113 = sub i64 %37, %112
  %114 = add i64 %113, 1152921504606846976
  %115 = icmp ult i64 %114, 2305843009213693952
  br i1 %115, label %116, label %66, !nosanitize !9

116:                                              ; preds = %111
  %117 = trunc i64 %113 to i32
  %118 = shl i32 %117, 3
  %119 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %99, i32 %118), !nosanitize !9
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !9
  br i1 %120, label %72, label %121, !nosanitize !9

121:                                              ; preds = %116
  %122 = extractvalue { i32, i1 } %119, 0, !nosanitize !9
  %123 = and i32 %122, 31
  br label %124

124:                                              ; preds = %108, %121
  %125 = phi i32 [ %110, %108 ], [ %123, %121 ]
  %126 = phi ptr [ %109, %108 ], [ %36, %121 ]
  %127 = load i32, ptr %126, align 1, !tbaa !5
  %128 = lshr i32 %127, %125
  br label %129

129:                                              ; preds = %124, %39
  %130 = phi i32 [ %42, %39 ], [ %128, %124 ]
  %131 = phi i32 [ %43, %39 ], [ %125, %124 ]
  %132 = phi i32 [ %44, %39 ], [ %98, %124 ]
  %133 = phi ptr [ %47, %39 ], [ %126, %124 ]
  %134 = add nuw i32 %41, 1073741824
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %136, label %66, !nosanitize !9

136:                                              ; preds = %129
  %137 = shl nsw i32 %41, 1
  %138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %137, i32 -1)
  %139 = extractvalue { i32, i1 } %138, 0, !nosanitize !9
  %140 = extractvalue { i32, i1 } %138, 1, !nosanitize !9
  br i1 %140, label %72, label %141, !nosanitize !9

141:                                              ; preds = %136
  %142 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %139, i32 %40), !nosanitize !9
  %143 = extractvalue { i32, i1 } %142, 0, !nosanitize !9
  %144 = extractvalue { i32, i1 } %142, 1, !nosanitize !9
  br i1 %144, label %72, label %145, !nosanitize !9

145:                                              ; preds = %141
  %146 = add nsw i32 %41, -1
  %147 = and i32 %130, %146
  %148 = icmp ult i32 %147, %143
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = add nsw i32 %45, -1
  br label %159

151:                                              ; preds = %145
  %152 = and i32 %130, %139
  %153 = icmp slt i32 %152, %41
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %152, i32 %143), !nosanitize !9
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !9
  br i1 %156, label %72, label %157, !nosanitize !9

157:                                              ; preds = %154
  %158 = extractvalue { i32, i1 } %155, 0, !nosanitize !9
  br label %159

159:                                              ; preds = %151, %157, %149
  %160 = phi i32 [ %150, %149 ], [ %45, %157 ], [ %45, %151 ]
  %161 = phi i32 [ %147, %149 ], [ %158, %157 ], [ %152, %151 ]
  %162 = add i32 %131, %160
  %163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %161, i32 -1)
  %164 = extractvalue { i32, i1 } %163, 0, !nosanitize !9
  %165 = extractvalue { i32, i1 } %163, 1, !nosanitize !9
  br i1 %165, label %72, label %166, !nosanitize !9

166:                                              ; preds = %159
  %167 = icmp sgt i32 %164, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %40, i32 %164), !nosanitize !9
  %170 = extractvalue { i32, i1 } %169, 1, !nosanitize !9
  br i1 %170, label %72, label %174, !nosanitize !9

171:                                              ; preds = %166
  %172 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 %164), !nosanitize !9
  %173 = extractvalue { i32, i1 } %172, 1, !nosanitize !9
  br i1 %173, label %38, label %174, !nosanitize !9

174:                                              ; preds = %171, %168
  %175 = phi { i32, i1 } [ %169, %168 ], [ %172, %171 ]
  %176 = extractvalue { i32, i1 } %175, 0
  %177 = trunc i32 %164 to i16
  %178 = add nuw i32 %132, 1
  %179 = zext i32 %132 to i64
  %180 = getelementptr inbounds i16, ptr %0, i64 %179
  store i16 %177, ptr %180, align 2, !tbaa !14
  %181 = icmp ne i32 %164, 0
  %182 = icmp slt i32 %176, %41
  br i1 %182, label %183, label %190

183:                                              ; preds = %174
  %184 = icmp slt i32 %176, 2
  br i1 %184, label %222, label %185

185:                                              ; preds = %183
  %186 = tail call i32 @llvm.ctlz.i32(i32 %176, i1 true), !range !10
  %187 = xor i32 %186, 31
  %188 = sub nuw nsw i32 32, %186
  %189 = shl nuw i32 1, %187
  br label %190

190:                                              ; preds = %185, %174
  %191 = phi i32 [ %189, %185 ], [ %41, %174 ]
  %192 = phi i32 [ %188, %185 ], [ %45, %174 ]
  %193 = icmp ult i32 %178, %14
  br i1 %193, label %194, label %222

194:                                              ; preds = %190
  %195 = icmp ugt ptr %133, %34
  %196 = ashr i32 %162, 3
  %197 = sext i32 %196 to i64
  br i1 %195, label %198, label %201, !prof !11

198:                                              ; preds = %194
  %199 = getelementptr inbounds i8, ptr %133, i64 %197
  %200 = icmp ugt ptr %199, %36
  br i1 %200, label %204, label %201

201:                                              ; preds = %194, %198
  %202 = getelementptr inbounds i8, ptr %133, i64 %197
  %203 = and i32 %162, 7
  br label %217

204:                                              ; preds = %198
  %205 = ptrtoint ptr %133 to i64
  %206 = sub i64 %37, %205
  %207 = add i64 %206, 1152921504606846976
  %208 = icmp ult i64 %207, 2305843009213693952
  br i1 %208, label %209, label %66, !nosanitize !9

209:                                              ; preds = %204
  %210 = trunc i64 %206 to i32
  %211 = shl i32 %210, 3
  %212 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %162, i32 %211), !nosanitize !9
  %213 = extractvalue { i32, i1 } %212, 1, !nosanitize !9
  br i1 %213, label %72, label %214, !nosanitize !9

214:                                              ; preds = %209
  %215 = extractvalue { i32, i1 } %212, 0, !nosanitize !9
  %216 = and i32 %215, 31
  br label %217

217:                                              ; preds = %201, %214
  %218 = phi i32 [ %203, %201 ], [ %216, %214 ]
  %219 = phi ptr [ %202, %201 ], [ %36, %214 ]
  %220 = load i32, ptr %219, align 1, !tbaa !5
  %221 = lshr i32 %220, %218
  br label %39

222:                                              ; preds = %190, %183, %85
  %223 = phi i32 [ %40, %85 ], [ %176, %183 ], [ %176, %190 ]
  %224 = phi i32 [ %99, %85 ], [ %162, %183 ], [ %162, %190 ]
  %225 = phi i32 [ %98, %85 ], [ %178, %183 ], [ %178, %190 ]
  %226 = phi ptr [ %89, %85 ], [ %133, %183 ], [ %133, %190 ]
  %227 = icmp eq i32 %223, 1
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = icmp ugt i32 %225, %14
  br i1 %229, label %241, label %230

230:                                              ; preds = %228
  %231 = icmp sgt i32 %224, 32
  br i1 %231, label %241, label %232

232:                                              ; preds = %230
  %233 = add i32 %225, -1
  store i32 %233, ptr %1, align 4, !tbaa !5
  %234 = add nsw i32 %224, 7
  %235 = ashr i32 %234, 3
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %226, i64 %236
  %238 = ptrtoint ptr %237 to i64
  %239 = ptrtoint ptr %3 to i64
  %240 = sub i64 %238, %239
  br label %241

241:                                              ; preds = %232, %230, %228, %222, %22, %16, %9
  %242 = phi i64 [ %10, %9 ], [ %21, %16 ], [ %240, %232 ], [ -44, %22 ], [ -20, %222 ], [ -48, %228 ], [ -20, %230 ]
  ret i64 %242
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_readNCount_body_bmi2(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i64 noundef %4) unnamed_addr #2 {
  %6 = alloca [8 x i8], align 8
  %7 = getelementptr inbounds i8, ptr %3, i64 %4
  %8 = load i32, ptr %1, align 4, !tbaa !5
  %9 = add i32 %8, 1
  %10 = icmp ult i64 %4, 8
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr align 1 %3, i64 %4, i1 false)
  %12 = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0)
  %13 = icmp ult i64 %12, -119
  %14 = icmp ugt i64 %12, %4
  %15 = and i1 %13, %14
  %16 = select i1 %15, i64 -20, i64 %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %236

17:                                               ; preds = %5
  %18 = zext i32 %9 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %19, i1 false)
  %20 = load i32, ptr %3, align 1, !tbaa !5
  %21 = and i32 %20, 15
  %22 = icmp ugt i32 %21, 10
  br i1 %22, label %236, label %23

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

33:                                               ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !9
  unreachable, !nosanitize !9

34:                                               ; preds = %212, %23
  %35 = phi i32 [ %27, %23 ], [ %171, %212 ]
  %36 = phi i32 [ %26, %23 ], [ %186, %212 ]
  %37 = phi i32 [ %25, %23 ], [ %216, %212 ]
  %38 = phi i32 [ 4, %23 ], [ %213, %212 ]
  %39 = phi i32 [ 0, %23 ], [ %173, %212 ]
  %40 = phi i32 [ %28, %23 ], [ %187, %212 ]
  %41 = phi i1 [ true, %23 ], [ %176, %212 ]
  %42 = phi ptr [ %3, %23 ], [ %214, %212 ]
  br i1 %41, label %124, label %43

43:                                               ; preds = %34
  %44 = xor i32 %37, -1
  %45 = or i32 %44, -2147483648
  %46 = tail call i32 @llvm.cttz.i32(i32 %45, i1 true), !range !10
  %47 = icmp ugt i32 %46, 23
  br i1 %47, label %48, label %80

48:                                               ; preds = %43, %71
  %49 = phi ptr [ %73, %71 ], [ %42, %43 ]
  %50 = phi i32 [ %52, %71 ], [ %39, %43 ]
  %51 = phi i32 [ %72, %71 ], [ %38, %43 ]
  %52 = add i32 %50, 36
  %53 = icmp ugt ptr %49, %29
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %48
  %55 = getelementptr inbounds i8, ptr %49, i64 3
  br label %71

56:                                               ; preds = %48
  %57 = ptrtoint ptr %49 to i64
  %58 = sub i64 %30, %57
  %59 = add i64 %58, 1152921504606846976
  %60 = icmp ult i64 %59, 2305843009213693952
  br i1 %60, label %62, label %61, !nosanitize !9

61:                                               ; preds = %199, %124, %106, %56
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !9
  unreachable, !nosanitize !9

62:                                               ; preds = %56
  %63 = trunc i64 %58 to i32
  %64 = shl i32 %63, 3
  %65 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %51, i32 %64), !nosanitize !9
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !9
  br i1 %66, label %67, label %68, !nosanitize !9

67:                                               ; preds = %204, %163, %154, %149, %136, %131, %111, %62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !9
  unreachable, !nosanitize !9

68:                                               ; preds = %62
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !9
  %70 = and i32 %69, 31
  br label %71

71:                                               ; preds = %68, %54
  %72 = phi i32 [ %51, %54 ], [ %70, %68 ]
  %73 = phi ptr [ %55, %54 ], [ %31, %68 ]
  %74 = load i32, ptr %73, align 1, !tbaa !5
  %75 = lshr i32 %74, %72
  %76 = xor i32 %75, -1
  %77 = or i32 %76, -2147483648
  %78 = tail call i32 @llvm.cttz.i32(i32 %77, i1 true), !range !10
  %79 = icmp ugt i32 %78, 23
  br i1 %79, label %48, label %80, !llvm.loop !12

80:                                               ; preds = %71, %43
  %81 = phi i32 [ %37, %43 ], [ %75, %71 ]
  %82 = phi i32 [ %38, %43 ], [ %72, %71 ]
  %83 = phi i32 [ %39, %43 ], [ %52, %71 ]
  %84 = phi ptr [ %42, %43 ], [ %73, %71 ]
  %85 = phi i32 [ %46, %43 ], [ %78, %71 ]
  %86 = and i32 %85, 30
  %87 = lshr i32 %81, %86
  %88 = lshr i32 %85, 1
  %89 = mul nuw nsw i32 %88, 3
  %90 = add i32 %89, %83
  %91 = add i32 %82, %86
  %92 = and i32 %87, 3
  %93 = add i32 %90, %92
  %94 = add i32 %91, 2
  %95 = icmp ult i32 %93, %9
  br i1 %95, label %96, label %217

96:                                               ; preds = %80
  %97 = icmp ugt ptr %84, %29
  %98 = lshr i32 %94, 3
  %99 = zext nneg i32 %98 to i64
  br i1 %97, label %100, label %103, !prof !11

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %84, i64 %99
  %102 = icmp ugt ptr %101, %31
  br i1 %102, label %106, label %103

103:                                              ; preds = %96, %100
  %104 = getelementptr inbounds i8, ptr %84, i64 %99
  %105 = and i32 %94, 7
  br label %119

106:                                              ; preds = %100
  %107 = ptrtoint ptr %84 to i64
  %108 = sub i64 %32, %107
  %109 = add i64 %108, 1152921504606846976
  %110 = icmp ult i64 %109, 2305843009213693952
  br i1 %110, label %111, label %61, !nosanitize !9

111:                                              ; preds = %106
  %112 = trunc i64 %108 to i32
  %113 = shl i32 %112, 3
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %94, i32 %113), !nosanitize !9
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !9
  br i1 %115, label %67, label %116, !nosanitize !9

116:                                              ; preds = %111
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !9
  %118 = and i32 %117, 31
  br label %119

119:                                              ; preds = %103, %116
  %120 = phi i32 [ %105, %103 ], [ %118, %116 ]
  %121 = phi ptr [ %104, %103 ], [ %31, %116 ]
  %122 = load i32, ptr %121, align 1, !tbaa !5
  %123 = lshr i32 %122, %120
  br label %124

124:                                              ; preds = %119, %34
  %125 = phi i32 [ %37, %34 ], [ %123, %119 ]
  %126 = phi i32 [ %38, %34 ], [ %120, %119 ]
  %127 = phi i32 [ %39, %34 ], [ %93, %119 ]
  %128 = phi ptr [ %42, %34 ], [ %121, %119 ]
  %129 = add nuw i32 %36, 1073741824
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %61, !nosanitize !9

131:                                              ; preds = %124
  %132 = shl nsw i32 %36, 1
  %133 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %132, i32 -1)
  %134 = extractvalue { i32, i1 } %133, 0, !nosanitize !9
  %135 = extractvalue { i32, i1 } %133, 1, !nosanitize !9
  br i1 %135, label %67, label %136, !nosanitize !9

136:                                              ; preds = %131
  %137 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %134, i32 %35), !nosanitize !9
  %138 = extractvalue { i32, i1 } %137, 0, !nosanitize !9
  %139 = extractvalue { i32, i1 } %137, 1, !nosanitize !9
  br i1 %139, label %67, label %140, !nosanitize !9

140:                                              ; preds = %136
  %141 = add nsw i32 %36, -1
  %142 = and i32 %125, %141
  %143 = icmp ult i32 %142, %138
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = add nsw i32 %40, -1
  br label %154

146:                                              ; preds = %140
  %147 = and i32 %125, %134
  %148 = icmp slt i32 %147, %36
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %147, i32 %138), !nosanitize !9
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !9
  br i1 %151, label %67, label %152, !nosanitize !9

152:                                              ; preds = %149
  %153 = extractvalue { i32, i1 } %150, 0, !nosanitize !9
  br label %154

154:                                              ; preds = %146, %152, %144
  %155 = phi i32 [ %145, %144 ], [ %40, %152 ], [ %40, %146 ]
  %156 = phi i32 [ %142, %144 ], [ %153, %152 ], [ %147, %146 ]
  %157 = add i32 %126, %155
  %158 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %156, i32 -1)
  %159 = extractvalue { i32, i1 } %158, 0, !nosanitize !9
  %160 = extractvalue { i32, i1 } %158, 1, !nosanitize !9
  br i1 %160, label %67, label %161, !nosanitize !9

161:                                              ; preds = %154
  %162 = icmp sgt i32 %159, -1
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %35, i32 %159), !nosanitize !9
  %165 = extractvalue { i32, i1 } %164, 1, !nosanitize !9
  br i1 %165, label %67, label %169, !nosanitize !9

166:                                              ; preds = %161
  %167 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 %159), !nosanitize !9
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !9
  br i1 %168, label %33, label %169, !nosanitize !9

169:                                              ; preds = %166, %163
  %170 = phi { i32, i1 } [ %164, %163 ], [ %167, %166 ]
  %171 = extractvalue { i32, i1 } %170, 0
  %172 = trunc i32 %159 to i16
  %173 = add nuw i32 %127, 1
  %174 = zext i32 %127 to i64
  %175 = getelementptr inbounds i16, ptr %0, i64 %174
  store i16 %172, ptr %175, align 2, !tbaa !14
  %176 = icmp ne i32 %159, 0
  %177 = icmp slt i32 %171, %36
  br i1 %177, label %178, label %185

178:                                              ; preds = %169
  %179 = icmp slt i32 %171, 2
  br i1 %179, label %217, label %180

180:                                              ; preds = %178
  %181 = tail call i32 @llvm.ctlz.i32(i32 %171, i1 true), !range !10
  %182 = xor i32 %181, 31
  %183 = sub nuw nsw i32 32, %181
  %184 = shl nuw i32 1, %182
  br label %185

185:                                              ; preds = %180, %169
  %186 = phi i32 [ %184, %180 ], [ %36, %169 ]
  %187 = phi i32 [ %183, %180 ], [ %40, %169 ]
  %188 = icmp ult i32 %173, %9
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  %190 = icmp ugt ptr %128, %29
  %191 = ashr i32 %157, 3
  %192 = sext i32 %191 to i64
  br i1 %190, label %193, label %196, !prof !11

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %128, i64 %192
  %195 = icmp ugt ptr %194, %31
  br i1 %195, label %199, label %196

196:                                              ; preds = %189, %193
  %197 = getelementptr inbounds i8, ptr %128, i64 %192
  %198 = and i32 %157, 7
  br label %212

199:                                              ; preds = %193
  %200 = ptrtoint ptr %128 to i64
  %201 = sub i64 %32, %200
  %202 = add i64 %201, 1152921504606846976
  %203 = icmp ult i64 %202, 2305843009213693952
  br i1 %203, label %204, label %61, !nosanitize !9

204:                                              ; preds = %199
  %205 = trunc i64 %201 to i32
  %206 = shl i32 %205, 3
  %207 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %157, i32 %206), !nosanitize !9
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !9
  br i1 %208, label %67, label %209, !nosanitize !9

209:                                              ; preds = %204
  %210 = extractvalue { i32, i1 } %207, 0, !nosanitize !9
  %211 = and i32 %210, 31
  br label %212

212:                                              ; preds = %196, %209
  %213 = phi i32 [ %198, %196 ], [ %211, %209 ]
  %214 = phi ptr [ %197, %196 ], [ %31, %209 ]
  %215 = load i32, ptr %214, align 1, !tbaa !5
  %216 = lshr i32 %215, %213
  br label %34

217:                                              ; preds = %185, %178, %80
  %218 = phi i32 [ %35, %80 ], [ %171, %178 ], [ %171, %185 ]
  %219 = phi i32 [ %94, %80 ], [ %157, %178 ], [ %157, %185 ]
  %220 = phi i32 [ %93, %80 ], [ %173, %178 ], [ %173, %185 ]
  %221 = phi ptr [ %84, %80 ], [ %128, %178 ], [ %128, %185 ]
  %222 = icmp eq i32 %218, 1
  br i1 %222, label %223, label %236

223:                                              ; preds = %217
  %224 = icmp ugt i32 %220, %9
  br i1 %224, label %236, label %225

225:                                              ; preds = %223
  %226 = icmp sgt i32 %219, 32
  br i1 %226, label %236, label %227

227:                                              ; preds = %225
  %228 = add i32 %220, -1
  store i32 %228, ptr %1, align 4, !tbaa !5
  %229 = add nsw i32 %219, 7
  %230 = ashr i32 %229, 3
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %221, i64 %231
  %233 = ptrtoint ptr %232 to i64
  %234 = ptrtoint ptr %3 to i64
  %235 = sub i64 %233, %234
  br label %236

236:                                              ; preds = %11, %17, %217, %223, %225, %227
  %237 = phi i64 [ %16, %11 ], [ %235, %227 ], [ -44, %17 ], [ -20, %217 ], [ -48, %223 ], [ -20, %225 ]
  ret i64 %237
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_readNCount(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca [219 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 876, ptr nonnull %8) #10
  %9 = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %8, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 876, ptr nonnull %8) #10
  ret i64 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %153

15:                                               ; preds = %10
  %16 = icmp eq i64 %6, 0
  br i1 %16, label %153, label %17

17:                                               ; preds = %15
  %18 = load i8, ptr %5, align 1, !tbaa !16
  %19 = zext i8 %18 to i64
  %20 = icmp slt i8 %18, 0
  br i1 %20, label %21, label %90

21:                                               ; preds = %17
  %22 = add nsw i64 %19, -127
  %23 = add nsw i64 %19, -126
  %24 = lshr i64 %23, 1
  %25 = icmp ult i64 %24, %6
  br i1 %25, label %26, label %153

26:                                               ; preds = %21
  %27 = icmp ult i64 %22, %1
  br i1 %27, label %28, label %153

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %5, i64 1
  %30 = icmp eq i64 %22, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %28
  %32 = add nsw i64 %19, -128
  %33 = lshr i64 %32, 1
  %34 = add nuw nsw i64 %33, 1
  %35 = icmp ult i64 %32, 30
  br i1 %35, label %74, label %36

36:                                               ; preds = %31
  %37 = add nsw i64 %19, -128
  %38 = lshr i64 %37, 1
  %39 = and i64 %19, 126
  %40 = getelementptr i8, ptr %0, i64 %39
  %41 = getelementptr i8, ptr %40, i64 2
  %42 = getelementptr i8, ptr %5, i64 %38
  %43 = getelementptr i8, ptr %42, i64 2
  %44 = icmp ugt ptr %43, %0
  %45 = icmp ult ptr %29, %41
  %46 = and i1 %44, %45
  br i1 %46, label %74, label %47

47:                                               ; preds = %36
  %48 = and i64 %34, 112
  %49 = shl nuw nsw i64 %48, 1
  %50 = getelementptr i8, ptr %0, i64 -1
  %51 = getelementptr i8, ptr %0, i64 -1
  br label %52

52:                                               ; preds = %52, %47
  %53 = phi i64 [ 0, %47 ], [ %70, %52 ]
  %54 = shl i64 %53, 1
  %55 = and i64 %53, 9223372036854775792
  %56 = getelementptr inbounds i8, ptr %29, i64 %55
  %57 = getelementptr inbounds i8, ptr %56, i64 8
  %58 = load <8 x i8>, ptr %56, align 1, !tbaa !16, !alias.scope !17
  %59 = load <8 x i8>, ptr %57, align 1, !tbaa !16, !alias.scope !17
  %60 = lshr <8 x i8> %58, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %61 = lshr <8 x i8> %59, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %62 = and <8 x i8> %58, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %63 = and <8 x i8> %59, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %64 = or disjoint i64 %54, 1
  %65 = or disjoint i64 %54, 17
  %66 = getelementptr i8, ptr %50, i64 %64
  %67 = getelementptr i8, ptr %51, i64 %65
  %68 = shufflevector <8 x i8> %60, <8 x i8> %62, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %68, ptr %66, align 1, !tbaa !16
  %69 = shufflevector <8 x i8> %61, <8 x i8> %63, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %69, ptr %67, align 1, !tbaa !16
  %70 = add nuw i64 %53, 16
  %71 = icmp eq i64 %70, %48
  br i1 %71, label %72, label %52, !llvm.loop !20

72:                                               ; preds = %52
  %73 = icmp eq i64 %34, %48
  br i1 %73, label %97, label %74

74:                                               ; preds = %36, %31, %72
  %75 = phi i64 [ 0, %36 ], [ 0, %31 ], [ %49, %72 ]
  br label %77

76:                                               ; preds = %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %153

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %88, %77 ], [ %75, %74 ]
  %79 = lshr exact i64 %78, 1
  %80 = getelementptr inbounds i8, ptr %29, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !16
  %82 = lshr i8 %81, 4
  %83 = getelementptr inbounds i8, ptr %0, i64 %78
  store i8 %82, ptr %83, align 1, !tbaa !16
  %84 = load i8, ptr %80, align 1, !tbaa !16
  %85 = and i8 %84, 15
  %86 = or disjoint i64 %78, 1
  %87 = getelementptr inbounds i8, ptr %0, i64 %86
  store i8 %85, ptr %87, align 1, !tbaa !16
  %88 = add nuw nsw i64 %78, 2
  %89 = icmp ult i64 %88, %22
  br i1 %89, label %77, label %97, !llvm.loop !23

90:                                               ; preds = %17
  %91 = icmp ult i64 %19, %6
  br i1 %91, label %92, label %153

92:                                               ; preds = %90
  %93 = add i64 %1, -1
  %94 = getelementptr inbounds i8, ptr %5, i64 1
  %95 = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %93, ptr noundef nonnull %94, i64 noundef %19, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10
  %96 = icmp ult i64 %95, -119
  br i1 %96, label %97, label %153

97:                                               ; preds = %77, %72, %92
  %98 = phi i64 [ %95, %92 ], [ %22, %72 ], [ %22, %77 ]
  %99 = phi i64 [ %19, %92 ], [ %24, %72 ], [ %24, %77 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %100 = icmp eq i64 %98, 0
  br i1 %100, label %153, label %101

101:                                              ; preds = %97, %108
  %102 = phi i64 [ %119, %108 ], [ 0, %97 ]
  %103 = phi i32 [ %117, %108 ], [ 0, %97 ]
  %104 = phi i32 [ %118, %108 ], [ 0, %97 ]
  %105 = getelementptr inbounds i8, ptr %0, i64 %102
  %106 = load i8, ptr %105, align 1, !tbaa !16
  %107 = icmp ugt i8 %106, 12
  br i1 %107, label %153, label %108

108:                                              ; preds = %101
  %109 = zext nneg i8 %106 to i64
  %110 = getelementptr inbounds i32, ptr %2, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !5
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !5
  %113 = load i8, ptr %105, align 1, !tbaa !16
  %114 = zext nneg i8 %113 to i32
  %115 = shl nuw i32 1, %114
  %116 = ashr i32 %115, 1
  %117 = add i32 %116, %103
  %118 = add i32 %104, 1
  %119 = zext i32 %118 to i64
  %120 = icmp ugt i64 %98, %119
  br i1 %120, label %101, label %121, !llvm.loop !24

121:                                              ; preds = %108
  %122 = icmp eq i32 %117, 0
  br i1 %122, label %153, label %123

123:                                              ; preds = %121
  %124 = tail call i32 @llvm.ctlz.i32(i32 %117, i1 true), !range !10
  %125 = xor i32 %124, 31
  %126 = icmp ugt i32 %125, 11
  br i1 %126, label %153, label %127

127:                                              ; preds = %123
  %128 = sub nuw nsw i32 32, %124
  store i32 %128, ptr %4, align 4, !tbaa !5
  %129 = shl nuw nsw i32 2, %125
  %130 = sub i32 %129, %117
  %131 = tail call i32 @llvm.ctlz.i32(i32 %130, i1 true), !range !10
  %132 = xor i32 %131, 31
  %133 = shl nuw i32 1, %132
  %134 = icmp eq i32 %133, %130
  br i1 %134, label %135, label %153

135:                                              ; preds = %127
  %136 = sub nuw nsw i32 32, %131
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %0, i64 %98
  store i8 %137, ptr %138, align 1, !tbaa !16
  %139 = zext nneg i32 %136 to i64
  %140 = getelementptr inbounds i32, ptr %2, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !5
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4, !tbaa !5
  %143 = getelementptr inbounds i32, ptr %2, i64 1
  %144 = load i32, ptr %143, align 4, !tbaa !5
  %145 = icmp ugt i32 %144, 1
  %146 = and i32 %144, 1
  %147 = icmp eq i32 %146, 0
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = trunc i64 %98 to i32
  %151 = add i32 %150, 1
  store i32 %151, ptr %3, align 4, !tbaa !5
  %152 = add nuw nsw i64 %99, 1
  br label %153

153:                                              ; preds = %101, %149, %135, %127, %123, %121, %97, %92, %90, %76, %26, %21, %15, %13
  %154 = phi i64 [ %14, %13 ], [ %152, %149 ], [ -72, %15 ], [ -72, %21 ], [ -20, %26 ], [ -72, %90 ], [ %95, %92 ], [ -20, %121 ], [ -20, %135 ], [ -20, %123 ], [ -20, %127 ], [ -20, %97 ], [ -20, %76 ], [ -20, %101 ]
  ret i64 %154
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #2 {
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %151, label %11

11:                                               ; preds = %9
  %12 = load i8, ptr %5, align 1, !tbaa !16
  %13 = zext i8 %12 to i64
  %14 = icmp slt i8 %12, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %11
  %16 = add nsw i64 %13, -127
  %17 = add nsw i64 %13, -126
  %18 = lshr i64 %17, 1
  %19 = icmp ult i64 %18, %6
  br i1 %19, label %20, label %151

20:                                               ; preds = %15
  %21 = icmp ult i64 %16, %1
  br i1 %21, label %22, label %151

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %5, i64 1
  %24 = icmp eq i64 %16, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %151

26:                                               ; preds = %22
  %27 = trunc i64 %16 to i32
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 2)
  %29 = add nsw i32 %28, -1
  %30 = lshr i32 %29, 1
  %31 = add nuw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i32 %27, 31
  br i1 %33, label %72, label %34

34:                                               ; preds = %26
  %35 = lshr i64 %13, 1
  %36 = and i64 %35, 63
  %37 = shl nuw nsw i64 %36, 1
  %38 = getelementptr i8, ptr %0, i64 %37
  %39 = getelementptr i8, ptr %38, i64 2
  %40 = getelementptr i8, ptr %5, i64 %36
  %41 = getelementptr i8, ptr %40, i64 2
  %42 = icmp ugt ptr %41, %0
  %43 = icmp ult ptr %23, %39
  %44 = and i1 %42, %43
  br i1 %44, label %72, label %45

45:                                               ; preds = %34
  %46 = and i64 %32, 4294967280
  %47 = shl nuw nsw i64 %46, 1
  %48 = getelementptr i8, ptr %0, i64 -1
  %49 = getelementptr i8, ptr %0, i64 -1
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi i64 [ 0, %45 ], [ %68, %50 ]
  %52 = shl i64 %51, 1
  %53 = and i64 %51, 9223372036854775792
  %54 = getelementptr inbounds i8, ptr %23, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 8
  %56 = load <8 x i8>, ptr %54, align 1, !tbaa !16, !alias.scope !25
  %57 = load <8 x i8>, ptr %55, align 1, !tbaa !16, !alias.scope !25
  %58 = lshr <8 x i8> %56, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %59 = lshr <8 x i8> %57, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %60 = and <8 x i8> %56, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %61 = and <8 x i8> %57, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %62 = or disjoint i64 %52, 1
  %63 = or disjoint i64 %52, 17
  %64 = getelementptr i8, ptr %48, i64 %62
  %65 = getelementptr i8, ptr %49, i64 %63
  %66 = shufflevector <8 x i8> %58, <8 x i8> %60, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %66, ptr %64, align 1, !tbaa !16
  %67 = shufflevector <8 x i8> %59, <8 x i8> %61, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %67, ptr %65, align 1, !tbaa !16
  %68 = add nuw i64 %51, 16
  %69 = icmp eq i64 %68, %46
  br i1 %69, label %70, label %50, !llvm.loop !28

70:                                               ; preds = %50
  %71 = icmp eq i64 %46, %32
  br i1 %71, label %95, label %72

72:                                               ; preds = %34, %26, %70
  %73 = phi i64 [ 0, %34 ], [ 0, %26 ], [ %47, %70 ]
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ %85, %74 ], [ %73, %72 ]
  %76 = lshr exact i64 %75, 1
  %77 = getelementptr inbounds i8, ptr %23, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !16
  %79 = lshr i8 %78, 4
  %80 = getelementptr inbounds i8, ptr %0, i64 %75
  store i8 %79, ptr %80, align 1, !tbaa !16
  %81 = load i8, ptr %77, align 1, !tbaa !16
  %82 = and i8 %81, 15
  %83 = or disjoint i64 %75, 1
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  store i8 %82, ptr %84, align 1, !tbaa !16
  %85 = add nuw i64 %75, 2
  %86 = trunc i64 %85 to i32
  %87 = icmp ugt i32 %27, %86
  br i1 %87, label %74, label %95, !llvm.loop !29

88:                                               ; preds = %11
  %89 = icmp ult i64 %13, %6
  br i1 %89, label %90, label %151

90:                                               ; preds = %88
  %91 = add i64 %1, -1
  %92 = getelementptr inbounds i8, ptr %5, i64 1
  %93 = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %91, ptr noundef nonnull %92, i64 noundef %13, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10
  %94 = icmp ult i64 %93, -119
  br i1 %94, label %95, label %151

95:                                               ; preds = %74, %70, %90
  %96 = phi i64 [ %93, %90 ], [ %16, %70 ], [ %16, %74 ]
  %97 = phi i64 [ %13, %90 ], [ %18, %70 ], [ %18, %74 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %98 = icmp eq i64 %96, 0
  br i1 %98, label %151, label %99

99:                                               ; preds = %95, %106
  %100 = phi i64 [ %117, %106 ], [ 0, %95 ]
  %101 = phi i32 [ %115, %106 ], [ 0, %95 ]
  %102 = phi i32 [ %116, %106 ], [ 0, %95 ]
  %103 = getelementptr inbounds i8, ptr %0, i64 %100
  %104 = load i8, ptr %103, align 1, !tbaa !16
  %105 = icmp ugt i8 %104, 12
  br i1 %105, label %151, label %106

106:                                              ; preds = %99
  %107 = zext nneg i8 %104 to i64
  %108 = getelementptr inbounds i32, ptr %2, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4, !tbaa !5
  %111 = load i8, ptr %103, align 1, !tbaa !16
  %112 = zext nneg i8 %111 to i32
  %113 = shl nuw i32 1, %112
  %114 = ashr i32 %113, 1
  %115 = add i32 %114, %101
  %116 = add i32 %102, 1
  %117 = zext i32 %116 to i64
  %118 = icmp ugt i64 %96, %117
  br i1 %118, label %99, label %119, !llvm.loop !24

119:                                              ; preds = %106
  %120 = icmp eq i32 %115, 0
  br i1 %120, label %151, label %121

121:                                              ; preds = %119
  %122 = tail call i32 @llvm.ctlz.i32(i32 %115, i1 true), !range !10
  %123 = xor i32 %122, 31
  %124 = icmp ugt i32 %123, 11
  br i1 %124, label %151, label %125

125:                                              ; preds = %121
  %126 = sub nuw nsw i32 32, %122
  store i32 %126, ptr %4, align 4, !tbaa !5
  %127 = shl nuw nsw i32 2, %123
  %128 = sub i32 %127, %115
  %129 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 true), !range !10
  %130 = xor i32 %129, 31
  %131 = shl nuw i32 1, %130
  %132 = icmp eq i32 %131, %128
  br i1 %132, label %133, label %151

133:                                              ; preds = %125
  %134 = sub nuw nsw i32 32, %129
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds i8, ptr %0, i64 %96
  store i8 %135, ptr %136, align 1, !tbaa !16
  %137 = zext nneg i32 %134 to i64
  %138 = getelementptr inbounds i32, ptr %2, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !5
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4, !tbaa !5
  %141 = getelementptr inbounds i32, ptr %2, i64 1
  %142 = load i32, ptr %141, align 4, !tbaa !5
  %143 = icmp ugt i32 %142, 1
  %144 = and i32 %142, 1
  %145 = icmp eq i32 %144, 0
  %146 = and i1 %143, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = trunc i64 %96 to i32
  %149 = add i32 %148, 1
  store i32 %149, ptr %3, align 4, !tbaa !5
  %150 = add nuw nsw i64 %97, 1
  br label %151

151:                                              ; preds = %99, %25, %95, %9, %15, %20, %88, %90, %119, %121, %125, %133, %147
  %152 = phi i64 [ %150, %147 ], [ -72, %9 ], [ -72, %15 ], [ -20, %20 ], [ -72, %88 ], [ %93, %90 ], [ -20, %119 ], [ -20, %133 ], [ -20, %121 ], [ -20, %125 ], [ -20, %95 ], [ -20, %25 ], [ -20, %99 ]
  ret i64 %152
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #7

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!9 = !{}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = distinct !{!20, !13, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !13, !21}
!24 = distinct !{!24, !13}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = distinct !{!28, !13, !21, !22}
!29 = distinct !{!29, !13, !21}
