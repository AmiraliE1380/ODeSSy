; ModuleID = '/mydata/zlib/inffast.c'
source_filename = "/mydata/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @inflate_fast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 5), !nosanitize !14
  %9 = extractvalue { i32, i1 } %8, 1, !nosanitize !14
  br i1 %9, label %10, label %11, !nosanitize !14

10:                                               ; preds = %301, %298, %269, %243, %149, %100, %191, %551, %531, %500, %414, %312, %279, %628, %611, %591, %21, %11, %2
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !14
  unreachable, !nosanitize !14

11:                                               ; preds = %2
  %12 = extractvalue { i32, i1 } %8, 0, !nosanitize !14
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !16
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %18), !nosanitize !14
  %20 = extractvalue { i32, i1 } %19, 1, !nosanitize !14
  br i1 %20, label %10, label %21, !nosanitize !14

21:                                               ; preds = %11
  %22 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %18, i32 257), !nosanitize !14
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !14
  br i1 %23, label %10, label %24, !nosanitize !14

24:                                               ; preds = %21
  %25 = extractvalue { i32, i1 } %19, 0, !nosanitize !14
  %26 = zext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %16, i64 %27
  %29 = extractvalue { i32, i1 } %22, 0, !nosanitize !14
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %16, i64 %30
  %32 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 13
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = ptrtoint ptr %39 to i64
  %41 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 15
  %42 = load i64, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 16
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 21
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 22
  %50 = load i32, ptr %49, align 8, !tbaa !26
  %51 = shl nsw i32 -1, %50
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 23
  %54 = load i32, ptr %53, align 4, !tbaa !27
  %55 = shl nsw i32 -1, %54
  %56 = xor i32 %55, -1
  %57 = zext nneg i32 %52 to i64
  %58 = zext nneg i32 %56 to i64
  %59 = ptrtoint ptr %28 to i64
  %60 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 32
  %61 = icmp eq i32 %37, 0
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %37)
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %65 = zext i32 %37 to i64
  %66 = icmp ult i32 %37, 32
  %67 = and i64 %65, 4294967264
  %68 = trunc i64 %67 to i32
  %69 = sub i32 %37, %68
  %70 = getelementptr i8, ptr %39, i64 %67
  %71 = icmp eq i64 %67, %65
  br label %72

72:                                               ; preds = %571, %24
  %73 = phi i32 [ %44, %24 ], [ %572, %571 ]
  %74 = phi i64 [ %42, %24 ], [ %573, %571 ]
  %75 = phi ptr [ %16, %24 ], [ %574, %571 ]
  %76 = phi ptr [ %5, %24 ], [ %575, %571 ]
  %77 = icmp ult i32 %73, 15
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load i8, ptr %76, align 1, !tbaa !28
  %80 = zext i8 %79 to i64
  %81 = zext nneg i32 %73 to i64
  %82 = shl nuw nsw i64 %80, %81
  %83 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %74, i64 %82), !nosanitize !14
  %84 = extractvalue { i64, i1 } %83, 1, !nosanitize !14
  br i1 %84, label %85, label %86, !nosanitize !14

85:                                               ; preds = %297, %232, %220, %177, %170, %138, %86, %78, %622, %605
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !14
  unreachable, !nosanitize !14

86:                                               ; preds = %78
  %87 = extractvalue { i64, i1 } %83, 0, !nosanitize !14
  %88 = getelementptr inbounds i8, ptr %76, i64 1
  %89 = add nuw nsw i32 %73, 8
  %90 = load i8, ptr %88, align 1, !tbaa !28
  %91 = zext i8 %90 to i64
  %92 = zext nneg i32 %89 to i64
  %93 = shl nuw nsw i64 %91, %92
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 %93), !nosanitize !14
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !14
  br i1 %95, label %85, label %96, !nosanitize !14

96:                                               ; preds = %86
  %97 = extractvalue { i64, i1 } %94, 0, !nosanitize !14
  %98 = getelementptr inbounds i8, ptr %76, i64 2
  %99 = or disjoint i32 %73, 16
  br label %100

100:                                              ; preds = %96, %72
  %101 = phi i32 [ %99, %96 ], [ %73, %72 ]
  %102 = phi i64 [ %97, %96 ], [ %74, %72 ]
  %103 = phi ptr [ %98, %96 ], [ %76, %72 ]
  %104 = and i64 %102, %57
  %105 = getelementptr inbounds %struct.code, ptr %46, i64 %104, i32 1
  %106 = load i8, ptr %105, align 1, !tbaa !29
  %107 = zext i8 %106 to i32
  %108 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %107), !nosanitize !14
  %109 = extractvalue { i32, i1 } %108, 1, !nosanitize !14
  br i1 %109, label %10, label %110, !nosanitize !14

110:                                              ; preds = %100
  %111 = zext nneg i8 %106 to i64
  %112 = lshr i64 %102, %111
  %113 = getelementptr inbounds %struct.code, ptr %46, i64 %104
  br label %114

114:                                              ; preds = %110, %551
  %115 = phi { i32, i1 } [ %566, %551 ], [ %108, %110 ]
  %116 = phi i64 [ %565, %551 ], [ %112, %110 ]
  %117 = phi ptr [ %560, %551 ], [ %113, %110 ]
  %118 = extractvalue { i32, i1 } %115, 0
  %119 = load i8, ptr %117, align 2, !tbaa !32
  %120 = zext i8 %119 to i32
  %121 = icmp eq i8 %119, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.code, ptr %117, i64 0, i32 2
  %124 = load i16, ptr %123, align 2, !tbaa !33
  %125 = trunc i16 %124 to i8
  %126 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %125, ptr %75, align 1, !tbaa !28
  br label %571

127:                                              ; preds = %114
  %128 = and i32 %120, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %548, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.code, ptr %117, i64 0, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !33
  %133 = zext i16 %132 to i32
  %134 = and i32 %120, 15
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %164, label %136

136:                                              ; preds = %130
  %137 = icmp ult i32 %118, %134
  br i1 %137, label %138, label %149

138:                                              ; preds = %136
  %139 = load i8, ptr %103, align 1, !tbaa !28
  %140 = zext i8 %139 to i64
  %141 = zext nneg i32 %118 to i64
  %142 = shl nuw nsw i64 %140, %141
  %143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 %142), !nosanitize !14
  %144 = extractvalue { i64, i1 } %143, 1, !nosanitize !14
  br i1 %144, label %85, label %145, !nosanitize !14

145:                                              ; preds = %138
  %146 = extractvalue { i64, i1 } %143, 0, !nosanitize !14
  %147 = getelementptr inbounds i8, ptr %103, i64 1
  %148 = add nuw nsw i32 %118, 8
  br label %149

149:                                              ; preds = %136, %145
  %150 = phi i32 [ %148, %145 ], [ %118, %136 ]
  %151 = phi i64 [ %146, %145 ], [ %116, %136 ]
  %152 = phi ptr [ %147, %145 ], [ %103, %136 ]
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %134), !nosanitize !14
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !14
  br i1 %154, label %10, label %155, !nosanitize !14

155:                                              ; preds = %149
  %156 = trunc i64 %151 to i32
  %157 = shl nsw i32 -1, %134
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  %160 = add nuw nsw i32 %159, %133
  %161 = extractvalue { i32, i1 } %153, 0, !nosanitize !14
  %162 = zext nneg i32 %134 to i64
  %163 = lshr i64 %151, %162
  br label %164

164:                                              ; preds = %155, %130
  %165 = phi i32 [ %161, %155 ], [ %118, %130 ]
  %166 = phi i64 [ %163, %155 ], [ %116, %130 ]
  %167 = phi ptr [ %152, %155 ], [ %103, %130 ]
  %168 = phi i32 [ %160, %155 ], [ %133, %130 ]
  %169 = icmp ult i32 %165, 15
  br i1 %169, label %170, label %191

170:                                              ; preds = %164
  %171 = load i8, ptr %167, align 1, !tbaa !28
  %172 = zext i8 %171 to i64
  %173 = zext nneg i32 %165 to i64
  %174 = shl nuw nsw i64 %172, %173
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %174), !nosanitize !14
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !14
  br i1 %176, label %85, label %177, !nosanitize !14

177:                                              ; preds = %170
  %178 = extractvalue { i64, i1 } %175, 0, !nosanitize !14
  %179 = getelementptr inbounds i8, ptr %167, i64 1
  %180 = add nuw nsw i32 %165, 8
  %181 = load i8, ptr %179, align 1, !tbaa !28
  %182 = zext i8 %181 to i64
  %183 = zext nneg i32 %180 to i64
  %184 = shl nuw nsw i64 %182, %183
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %184), !nosanitize !14
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !14
  br i1 %186, label %85, label %187, !nosanitize !14

187:                                              ; preds = %177
  %188 = extractvalue { i64, i1 } %185, 0, !nosanitize !14
  %189 = getelementptr inbounds i8, ptr %167, i64 2
  %190 = or disjoint i32 %165, 16
  br label %191

191:                                              ; preds = %187, %164
  %192 = phi i32 [ %190, %187 ], [ %165, %164 ]
  %193 = phi i64 [ %188, %187 ], [ %166, %164 ]
  %194 = phi ptr [ %189, %187 ], [ %167, %164 ]
  %195 = and i64 %193, %58
  %196 = getelementptr inbounds %struct.code, ptr %48, i64 %195, i32 1
  %197 = load i8, ptr %196, align 1, !tbaa !29
  %198 = zext i8 %197 to i32
  %199 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %198), !nosanitize !14
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !14
  br i1 %200, label %10, label %201, !nosanitize !14

201:                                              ; preds = %191
  %202 = zext nneg i8 %197 to i64
  %203 = lshr i64 %193, %202
  %204 = getelementptr inbounds %struct.code, ptr %48, i64 %195
  br label %205

205:                                              ; preds = %201, %531
  %206 = phi { i32, i1 } [ %546, %531 ], [ %199, %201 ]
  %207 = phi i64 [ %545, %531 ], [ %203, %201 ]
  %208 = phi ptr [ %540, %531 ], [ %204, %201 ]
  %209 = extractvalue { i32, i1 } %206, 0
  %210 = load i8, ptr %208, align 2, !tbaa !32
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 16
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %528, label %214

214:                                              ; preds = %205
  %215 = getelementptr inbounds %struct.code, ptr %208, i64 0, i32 2
  %216 = load i16, ptr %215, align 2, !tbaa !33
  %217 = zext i16 %216 to i32
  %218 = and i32 %211, 15
  %219 = icmp ult i32 %209, %218
  br i1 %219, label %220, label %243

220:                                              ; preds = %214
  %221 = getelementptr inbounds i8, ptr %194, i64 1
  %222 = load i8, ptr %194, align 1, !tbaa !28
  %223 = zext i8 %222 to i64
  %224 = zext nneg i32 %209 to i64
  %225 = shl nuw nsw i64 %223, %224
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 %225), !nosanitize !14
  %227 = extractvalue { i64, i1 } %226, 0, !nosanitize !14
  %228 = extractvalue { i64, i1 } %226, 1, !nosanitize !14
  br i1 %228, label %85, label %229, !nosanitize !14

229:                                              ; preds = %220
  %230 = add nuw nsw i32 %209, 8
  %231 = icmp ult i32 %230, %218
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i8, ptr %221, align 1, !tbaa !28
  %234 = zext i8 %233 to i64
  %235 = zext nneg i32 %230 to i64
  %236 = shl nuw nsw i64 %234, %235
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %236), !nosanitize !14
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !14
  br i1 %238, label %85, label %239, !nosanitize !14

239:                                              ; preds = %232
  %240 = extractvalue { i64, i1 } %237, 0, !nosanitize !14
  %241 = getelementptr inbounds i8, ptr %194, i64 2
  %242 = add nuw nsw i32 %209, 16
  br label %243

243:                                              ; preds = %214, %239, %229
  %244 = phi i32 [ %242, %239 ], [ %230, %229 ], [ %209, %214 ]
  %245 = phi i64 [ %240, %239 ], [ %227, %229 ], [ %207, %214 ]
  %246 = phi ptr [ %241, %239 ], [ %221, %229 ], [ %194, %214 ]
  %247 = shl nsw i32 -1, %218
  %248 = xor i32 %247, -1
  %249 = trunc i64 %245 to i32
  %250 = and i32 %249, %248
  %251 = add nuw nsw i32 %250, %217
  %252 = zext nneg i32 %218 to i64
  %253 = lshr i64 %245, %252
  %254 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %244, i32 %218), !nosanitize !14
  %255 = extractvalue { i32, i1 } %254, 0, !nosanitize !14
  %256 = extractvalue { i32, i1 } %254, 1, !nosanitize !14
  br i1 %256, label %10, label %257, !nosanitize !14

257:                                              ; preds = %243
  %258 = ptrtoint ptr %75 to i64
  %259 = sub i64 %258, %59
  %260 = trunc i64 %259 to i32
  %261 = icmp ugt i32 %251, %260
  br i1 %261, label %262, label %496

262:                                              ; preds = %257
  %263 = sub nuw nsw i32 %251, %260
  %264 = icmp ugt i32 %263, %35
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, ptr %60, align 8, !tbaa !34
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %579

268:                                              ; preds = %265, %262
  br i1 %61, label %269, label %295

269:                                              ; preds = %268
  %270 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %263), !nosanitize !14
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !14
  br i1 %271, label %10, label %272, !nosanitize !14

272:                                              ; preds = %269
  %273 = extractvalue { i32, i1 } %270, 0, !nosanitize !14
  %274 = zext i32 %273 to i64
  %275 = getelementptr i8, ptr %39, i64 %274
  %276 = icmp ult i32 %263, %168
  br i1 %276, label %277, label %430

277:                                              ; preds = %272
  %278 = sub nuw i32 %168, %263
  br label %279

279:                                              ; preds = %286, %277
  %280 = phi ptr [ %75, %277 ], [ %287, %286 ]
  %281 = phi i32 [ %263, %277 ], [ %288, %286 ]
  %282 = phi ptr [ %275, %277 ], [ %289, %286 ]
  %283 = load i8, ptr %282, align 1, !tbaa !28
  store i8 %283, ptr %280, align 1, !tbaa !28
  %284 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %281, i32 1), !nosanitize !14
  %285 = extractvalue { i32, i1 } %284, 1, !nosanitize !14
  br i1 %285, label %10, label %286, !nosanitize !14

286:                                              ; preds = %279
  %287 = getelementptr inbounds i8, ptr %280, i64 1
  %288 = extractvalue { i32, i1 } %284, 0, !nosanitize !14
  %289 = getelementptr inbounds i8, ptr %282, i64 1
  %290 = icmp eq i32 %288, 0
  br i1 %290, label %291, label %279, !llvm.loop !35

291:                                              ; preds = %286
  %292 = zext nneg i32 %251 to i64
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, ptr %287, i64 %293
  br label %430

295:                                              ; preds = %268
  %296 = icmp ult i32 %37, %263
  br i1 %296, label %297, label %407

297:                                              ; preds = %295
  br i1 %63, label %85, label %298, !nosanitize !14

298:                                              ; preds = %297
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %263), !nosanitize !14
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !14
  br i1 %300, label %10, label %301, !nosanitize !14

301:                                              ; preds = %298
  %302 = extractvalue { i32, i1 } %299, 0, !nosanitize !14
  %303 = zext i32 %302 to i64
  %304 = getelementptr i8, ptr %39, i64 %303
  %305 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %263, i32 %37), !nosanitize !14
  %306 = extractvalue { i32, i1 } %305, 0, !nosanitize !14
  %307 = extractvalue { i32, i1 } %305, 1, !nosanitize !14
  br i1 %307, label %10, label %308, !nosanitize !14

308:                                              ; preds = %301
  %309 = icmp ult i32 %306, %168
  br i1 %309, label %310, label %430

310:                                              ; preds = %308
  %311 = sub nuw i32 %168, %306
  br label %312

312:                                              ; preds = %320, %310
  %313 = phi i64 [ %325, %320 ], [ 0, %310 ]
  %314 = phi ptr [ %321, %320 ], [ %75, %310 ]
  %315 = phi i32 [ %322, %320 ], [ %306, %310 ]
  %316 = phi ptr [ %323, %320 ], [ %304, %310 ]
  %317 = load i8, ptr %316, align 1, !tbaa !28
  store i8 %317, ptr %314, align 1, !tbaa !28
  %318 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 1), !nosanitize !14
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !14
  br i1 %319, label %10, label %320, !nosanitize !14

320:                                              ; preds = %312
  %321 = getelementptr i8, ptr %314, i64 1
  %322 = extractvalue { i32, i1 } %318, 0, !nosanitize !14
  %323 = getelementptr inbounds i8, ptr %316, i64 1
  %324 = icmp eq i32 %322, 0
  %325 = add i64 %313, 1
  br i1 %324, label %326, label %312, !llvm.loop !37

326:                                              ; preds = %320
  %327 = icmp ult i32 %37, %311
  br i1 %327, label %328, label %430

328:                                              ; preds = %326
  br i1 %66, label %347, label %329

329:                                              ; preds = %328
  %330 = sub i64 %258, %40
  %331 = add i64 %330, 1
  %332 = add i64 %313, %331
  %333 = icmp ult i64 %332, 32
  br i1 %333, label %347, label %334

334:                                              ; preds = %329
  %335 = getelementptr i8, ptr %321, i64 %67
  br label %336

336:                                              ; preds = %336, %334
  %337 = phi i64 [ 0, %334 ], [ %344, %336 ]
  %338 = getelementptr i8, ptr %321, i64 %337
  %339 = getelementptr i8, ptr %39, i64 %337
  %340 = getelementptr i8, ptr %339, i64 16
  %341 = load <16 x i8>, ptr %339, align 1, !tbaa !28
  %342 = load <16 x i8>, ptr %340, align 1, !tbaa !28
  %343 = getelementptr i8, ptr %338, i64 16
  store <16 x i8> %341, ptr %338, align 1, !tbaa !28
  store <16 x i8> %342, ptr %343, align 1, !tbaa !28
  %344 = add nuw i64 %337, 32
  %345 = icmp eq i64 %344, %67
  br i1 %345, label %346, label %336, !llvm.loop !38

346:                                              ; preds = %336
  br i1 %71, label %401, label %347

347:                                              ; preds = %329, %328, %346
  %348 = phi ptr [ %321, %329 ], [ %321, %328 ], [ %335, %346 ]
  %349 = phi i32 [ %37, %329 ], [ %37, %328 ], [ %69, %346 ]
  %350 = phi ptr [ %39, %329 ], [ %39, %328 ], [ %70, %346 ]
  %351 = add i32 %349, -1
  %352 = and i32 %349, 7
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %365, label %354

354:                                              ; preds = %347, %354
  %355 = phi ptr [ %360, %354 ], [ %348, %347 ]
  %356 = phi i32 [ %361, %354 ], [ %349, %347 ]
  %357 = phi ptr [ %362, %354 ], [ %350, %347 ]
  %358 = phi i32 [ %363, %354 ], [ 0, %347 ]
  %359 = load i8, ptr %357, align 1, !tbaa !28
  %360 = getelementptr inbounds i8, ptr %355, i64 1
  store i8 %359, ptr %355, align 1, !tbaa !28
  %361 = add i32 %356, -1
  %362 = getelementptr inbounds i8, ptr %357, i64 1
  %363 = add i32 %358, 1
  %364 = icmp eq i32 %363, %352
  br i1 %364, label %365, label %354, !llvm.loop !41

365:                                              ; preds = %354, %347
  %366 = phi ptr [ undef, %347 ], [ %360, %354 ]
  %367 = phi ptr [ %348, %347 ], [ %360, %354 ]
  %368 = phi i32 [ %349, %347 ], [ %361, %354 ]
  %369 = phi ptr [ %350, %347 ], [ %362, %354 ]
  %370 = icmp ult i32 %351, 7
  br i1 %370, label %401, label %371

371:                                              ; preds = %365, %371
  %372 = phi ptr [ %397, %371 ], [ %367, %365 ]
  %373 = phi i32 [ %398, %371 ], [ %368, %365 ]
  %374 = phi ptr [ %399, %371 ], [ %369, %365 ]
  %375 = load i8, ptr %374, align 1, !tbaa !28
  %376 = getelementptr inbounds i8, ptr %372, i64 1
  store i8 %375, ptr %372, align 1, !tbaa !28
  %377 = getelementptr inbounds i8, ptr %374, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !28
  %379 = getelementptr inbounds i8, ptr %372, i64 2
  store i8 %378, ptr %376, align 1, !tbaa !28
  %380 = getelementptr inbounds i8, ptr %374, i64 2
  %381 = load i8, ptr %380, align 1, !tbaa !28
  %382 = getelementptr inbounds i8, ptr %372, i64 3
  store i8 %381, ptr %379, align 1, !tbaa !28
  %383 = getelementptr inbounds i8, ptr %374, i64 3
  %384 = load i8, ptr %383, align 1, !tbaa !28
  %385 = getelementptr inbounds i8, ptr %372, i64 4
  store i8 %384, ptr %382, align 1, !tbaa !28
  %386 = getelementptr inbounds i8, ptr %374, i64 4
  %387 = load i8, ptr %386, align 1, !tbaa !28
  %388 = getelementptr inbounds i8, ptr %372, i64 5
  store i8 %387, ptr %385, align 1, !tbaa !28
  %389 = getelementptr inbounds i8, ptr %374, i64 5
  %390 = load i8, ptr %389, align 1, !tbaa !28
  %391 = getelementptr inbounds i8, ptr %372, i64 6
  store i8 %390, ptr %388, align 1, !tbaa !28
  %392 = getelementptr inbounds i8, ptr %374, i64 6
  %393 = load i8, ptr %392, align 1, !tbaa !28
  %394 = getelementptr inbounds i8, ptr %372, i64 7
  store i8 %393, ptr %391, align 1, !tbaa !28
  %395 = getelementptr inbounds i8, ptr %374, i64 7
  %396 = load i8, ptr %395, align 1, !tbaa !28
  %397 = getelementptr inbounds i8, ptr %372, i64 8
  store i8 %396, ptr %394, align 1, !tbaa !28
  %398 = add i32 %373, -8
  %399 = getelementptr inbounds i8, ptr %374, i64 8
  %400 = icmp eq i32 %398, 0
  br i1 %400, label %401, label %371, !llvm.loop !43

401:                                              ; preds = %365, %371, %346
  %402 = phi ptr [ %335, %346 ], [ %366, %365 ], [ %397, %371 ]
  %403 = sub nuw i32 %311, %37
  %404 = zext nneg i32 %251 to i64
  %405 = sub nsw i64 0, %404
  %406 = getelementptr inbounds i8, ptr %402, i64 %405
  br label %430

407:                                              ; preds = %295
  %408 = sub i32 %37, %263
  %409 = zext i32 %408 to i64
  %410 = getelementptr i8, ptr %39, i64 %409
  %411 = icmp ult i32 %263, %168
  br i1 %411, label %412, label %430

412:                                              ; preds = %407
  %413 = sub nuw i32 %168, %263
  br label %414

414:                                              ; preds = %421, %412
  %415 = phi ptr [ %75, %412 ], [ %422, %421 ]
  %416 = phi i32 [ %263, %412 ], [ %423, %421 ]
  %417 = phi ptr [ %410, %412 ], [ %424, %421 ]
  %418 = load i8, ptr %417, align 1, !tbaa !28
  store i8 %418, ptr %415, align 1, !tbaa !28
  %419 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %416, i32 1), !nosanitize !14
  %420 = extractvalue { i32, i1 } %419, 1, !nosanitize !14
  br i1 %420, label %10, label %421, !nosanitize !14

421:                                              ; preds = %414
  %422 = getelementptr inbounds i8, ptr %415, i64 1
  %423 = extractvalue { i32, i1 } %419, 0, !nosanitize !14
  %424 = getelementptr inbounds i8, ptr %417, i64 1
  %425 = icmp eq i32 %423, 0
  br i1 %425, label %426, label %414, !llvm.loop !44

426:                                              ; preds = %421
  %427 = zext nneg i32 %251 to i64
  %428 = sub nsw i64 0, %427
  %429 = getelementptr inbounds i8, ptr %422, i64 %428
  br label %430

430:                                              ; preds = %326, %401, %308, %426, %407, %272, %291
  %431 = phi ptr [ %287, %291 ], [ %75, %272 ], [ %402, %401 ], [ %321, %326 ], [ %75, %308 ], [ %422, %426 ], [ %75, %407 ]
  %432 = phi i32 [ %278, %291 ], [ %168, %272 ], [ %403, %401 ], [ %311, %326 ], [ %168, %308 ], [ %413, %426 ], [ %168, %407 ]
  %433 = phi ptr [ %294, %291 ], [ %275, %272 ], [ %406, %401 ], [ %39, %326 ], [ %304, %308 ], [ %429, %426 ], [ %410, %407 ]
  %434 = icmp ugt i32 %432, 2
  br i1 %434, label %435, label %483

435:                                              ; preds = %430
  %436 = add i32 %432, -3
  %437 = udiv i32 %436, 3
  %438 = and i32 %437, 1
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %451

440:                                              ; preds = %435
  %441 = getelementptr inbounds i8, ptr %433, i64 1
  %442 = load i8, ptr %433, align 1, !tbaa !28
  %443 = getelementptr inbounds i8, ptr %431, i64 1
  store i8 %442, ptr %431, align 1, !tbaa !28
  %444 = getelementptr inbounds i8, ptr %433, i64 2
  %445 = load i8, ptr %441, align 1, !tbaa !28
  %446 = getelementptr inbounds i8, ptr %431, i64 2
  store i8 %445, ptr %443, align 1, !tbaa !28
  %447 = load i8, ptr %444, align 1, !tbaa !28
  store i8 %447, ptr %446, align 1, !tbaa !28
  %448 = add i32 %432, -3
  %449 = getelementptr inbounds i8, ptr %431, i64 3
  %450 = getelementptr inbounds i8, ptr %433, i64 3
  br label %451

451:                                              ; preds = %440, %435
  %452 = phi ptr [ %433, %435 ], [ %450, %440 ]
  %453 = phi i32 [ %432, %435 ], [ %448, %440 ]
  %454 = phi ptr [ %431, %435 ], [ %449, %440 ]
  %455 = phi i32 [ undef, %435 ], [ %448, %440 ]
  %456 = phi ptr [ undef, %435 ], [ %449, %440 ]
  %457 = phi ptr [ undef, %435 ], [ %450, %440 ]
  %458 = icmp ult i32 %436, 3
  br i1 %458, label %483, label %459

459:                                              ; preds = %451, %459
  %460 = phi ptr [ %481, %459 ], [ %452, %451 ]
  %461 = phi i32 [ %479, %459 ], [ %453, %451 ]
  %462 = phi ptr [ %480, %459 ], [ %454, %451 ]
  %463 = getelementptr inbounds i8, ptr %460, i64 1
  %464 = load i8, ptr %460, align 1, !tbaa !28
  %465 = getelementptr inbounds i8, ptr %462, i64 1
  store i8 %464, ptr %462, align 1, !tbaa !28
  %466 = getelementptr inbounds i8, ptr %460, i64 2
  %467 = load i8, ptr %463, align 1, !tbaa !28
  %468 = getelementptr inbounds i8, ptr %462, i64 2
  store i8 %467, ptr %465, align 1, !tbaa !28
  %469 = load i8, ptr %466, align 1, !tbaa !28
  store i8 %469, ptr %468, align 1, !tbaa !28
  %470 = getelementptr inbounds i8, ptr %462, i64 3
  %471 = getelementptr inbounds i8, ptr %460, i64 3
  %472 = getelementptr inbounds i8, ptr %460, i64 4
  %473 = load i8, ptr %471, align 1, !tbaa !28
  %474 = getelementptr inbounds i8, ptr %462, i64 4
  store i8 %473, ptr %470, align 1, !tbaa !28
  %475 = getelementptr inbounds i8, ptr %460, i64 5
  %476 = load i8, ptr %472, align 1, !tbaa !28
  %477 = getelementptr inbounds i8, ptr %462, i64 5
  store i8 %476, ptr %474, align 1, !tbaa !28
  %478 = load i8, ptr %475, align 1, !tbaa !28
  store i8 %478, ptr %477, align 1, !tbaa !28
  %479 = add i32 %461, -6
  %480 = getelementptr inbounds i8, ptr %462, i64 6
  %481 = getelementptr inbounds i8, ptr %460, i64 6
  %482 = icmp ugt i32 %479, 2
  br i1 %482, label %459, label %483, !llvm.loop !45

483:                                              ; preds = %451, %459, %430
  %484 = phi ptr [ %431, %430 ], [ %456, %451 ], [ %480, %459 ]
  %485 = phi i32 [ %432, %430 ], [ %455, %451 ], [ %479, %459 ]
  %486 = phi ptr [ %433, %430 ], [ %457, %451 ], [ %481, %459 ]
  %487 = icmp eq i32 %485, 0
  br i1 %487, label %571, label %488

488:                                              ; preds = %483
  %489 = load i8, ptr %486, align 1, !tbaa !28
  %490 = getelementptr inbounds i8, ptr %484, i64 1
  store i8 %489, ptr %484, align 1, !tbaa !28
  %491 = icmp eq i32 %485, 2
  br i1 %491, label %492, label %571

492:                                              ; preds = %488
  %493 = getelementptr inbounds i8, ptr %486, i64 1
  %494 = load i8, ptr %493, align 1, !tbaa !28
  %495 = getelementptr inbounds i8, ptr %484, i64 2
  store i8 %494, ptr %490, align 1, !tbaa !28
  br label %571

496:                                              ; preds = %257
  %497 = zext nneg i32 %251 to i64
  %498 = sub nsw i64 0, %497
  %499 = getelementptr inbounds i8, ptr %75, i64 %498
  br label %500

500:                                              ; preds = %513, %496
  %501 = phi ptr [ %75, %496 ], [ %515, %513 ]
  %502 = phi i32 [ %168, %496 ], [ %514, %513 ]
  %503 = phi ptr [ %499, %496 ], [ %516, %513 ]
  %504 = getelementptr inbounds i8, ptr %503, i64 1
  %505 = load i8, ptr %503, align 1, !tbaa !28
  %506 = getelementptr inbounds i8, ptr %501, i64 1
  store i8 %505, ptr %501, align 1, !tbaa !28
  %507 = getelementptr inbounds i8, ptr %503, i64 2
  %508 = load i8, ptr %504, align 1, !tbaa !28
  %509 = getelementptr inbounds i8, ptr %501, i64 2
  store i8 %508, ptr %506, align 1, !tbaa !28
  %510 = load i8, ptr %507, align 1, !tbaa !28
  store i8 %510, ptr %509, align 1, !tbaa !28
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 3), !nosanitize !14
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !14
  br i1 %512, label %10, label %513, !nosanitize !14

513:                                              ; preds = %500
  %514 = extractvalue { i32, i1 } %511, 0, !nosanitize !14
  %515 = getelementptr inbounds i8, ptr %501, i64 3
  %516 = getelementptr inbounds i8, ptr %503, i64 3
  %517 = icmp ugt i32 %514, 2
  br i1 %517, label %500, label %518, !llvm.loop !46

518:                                              ; preds = %513
  %519 = icmp eq i32 %514, 0
  br i1 %519, label %571, label %520

520:                                              ; preds = %518
  %521 = load i8, ptr %516, align 1, !tbaa !28
  %522 = getelementptr inbounds i8, ptr %501, i64 4
  store i8 %521, ptr %515, align 1, !tbaa !28
  %523 = icmp eq i32 %514, 2
  br i1 %523, label %524, label %571

524:                                              ; preds = %520
  %525 = getelementptr inbounds i8, ptr %503, i64 4
  %526 = load i8, ptr %525, align 1, !tbaa !28
  %527 = getelementptr inbounds i8, ptr %501, i64 5
  store i8 %526, ptr %522, align 1, !tbaa !28
  br label %571

528:                                              ; preds = %205
  %529 = and i32 %211, 64
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %579

531:                                              ; preds = %528
  %532 = shl nsw i32 -1, %211
  %533 = xor i32 %532, -1
  %534 = getelementptr inbounds %struct.code, ptr %208, i64 0, i32 2
  %535 = load i16, ptr %534, align 2, !tbaa !33
  %536 = zext i16 %535 to i64
  %537 = getelementptr inbounds %struct.code, ptr %48, i64 %536
  %538 = zext nneg i32 %533 to i64
  %539 = and i64 %207, %538
  %540 = getelementptr inbounds %struct.code, ptr %537, i64 %539
  %541 = getelementptr inbounds %struct.code, ptr %537, i64 %539, i32 1
  %542 = load i8, ptr %541, align 1, !tbaa !29
  %543 = zext i8 %542 to i32
  %544 = zext nneg i8 %542 to i64
  %545 = lshr i64 %207, %544
  %546 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %543), !nosanitize !14
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !14
  br i1 %547, label %10, label %205, !nosanitize !14

548:                                              ; preds = %127
  %549 = and i32 %120, 64
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %568

551:                                              ; preds = %548
  %552 = shl nsw i32 -1, %120
  %553 = xor i32 %552, -1
  %554 = getelementptr inbounds %struct.code, ptr %117, i64 0, i32 2
  %555 = load i16, ptr %554, align 2, !tbaa !33
  %556 = zext i16 %555 to i64
  %557 = getelementptr inbounds %struct.code, ptr %46, i64 %556
  %558 = zext nneg i32 %553 to i64
  %559 = and i64 %116, %558
  %560 = getelementptr inbounds %struct.code, ptr %557, i64 %559
  %561 = getelementptr inbounds %struct.code, ptr %557, i64 %559, i32 1
  %562 = load i8, ptr %561, align 1, !tbaa !29
  %563 = zext i8 %562 to i32
  %564 = zext nneg i8 %562 to i64
  %565 = lshr i64 %116, %564
  %566 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %563), !nosanitize !14
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !14
  br i1 %567, label %10, label %114, !nosanitize !14

568:                                              ; preds = %548
  %569 = and i32 %120, 32
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %579, label %585

571:                                              ; preds = %122, %518, %524, %520, %483, %492, %488
  %572 = phi i32 [ %118, %122 ], [ %255, %492 ], [ %255, %488 ], [ %255, %483 ], [ %255, %524 ], [ %255, %520 ], [ %255, %518 ]
  %573 = phi i64 [ %116, %122 ], [ %253, %492 ], [ %253, %488 ], [ %253, %483 ], [ %253, %524 ], [ %253, %520 ], [ %253, %518 ]
  %574 = phi ptr [ %126, %122 ], [ %495, %492 ], [ %490, %488 ], [ %484, %483 ], [ %527, %524 ], [ %522, %520 ], [ %515, %518 ]
  %575 = phi ptr [ %103, %122 ], [ %246, %492 ], [ %246, %488 ], [ %246, %483 ], [ %246, %524 ], [ %246, %520 ], [ %246, %518 ]
  %576 = icmp ult ptr %575, %14
  %577 = icmp ult ptr %574, %31
  %578 = select i1 %576, i1 %577, i1 false
  br i1 %578, label %72, label %591, !llvm.loop !47

579:                                              ; preds = %265, %528, %568
  %580 = phi ptr [ @.str.2, %568 ], [ @.str.1, %528 ], [ @.str, %265 ]
  %581 = phi i32 [ %118, %568 ], [ %209, %528 ], [ %255, %265 ]
  %582 = phi i64 [ %116, %568 ], [ %207, %528 ], [ %253, %265 ]
  %583 = phi ptr [ %103, %568 ], [ %194, %528 ], [ %246, %265 ]
  %584 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %580, ptr %584, align 8, !tbaa !48
  br label %585

585:                                              ; preds = %579, %568
  %586 = phi i32 [ 16191, %568 ], [ 16209, %579 ]
  %587 = phi i32 [ %118, %568 ], [ %581, %579 ]
  %588 = phi i64 [ %116, %568 ], [ %582, %579 ]
  %589 = phi ptr [ %103, %568 ], [ %583, %579 ]
  %590 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 1
  store i32 %586, ptr %590, align 8, !tbaa !49
  br label %591

591:                                              ; preds = %571, %585
  %592 = phi i32 [ %587, %585 ], [ %572, %571 ]
  %593 = phi i64 [ %588, %585 ], [ %573, %571 ]
  %594 = phi ptr [ %75, %585 ], [ %574, %571 ]
  %595 = phi ptr [ %589, %585 ], [ %575, %571 ]
  %596 = lshr i32 %592, 3
  %597 = zext nneg i32 %596 to i64
  %598 = sub nsw i64 0, %597
  %599 = getelementptr inbounds i8, ptr %595, i64 %598
  %600 = and i32 %592, -8
  %601 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 %600), !nosanitize !14
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !14
  br i1 %602, label %10, label %603, !nosanitize !14

603:                                              ; preds = %591
  store ptr %599, ptr %0, align 8, !tbaa !12
  store ptr %594, ptr %15, align 8, !tbaa !15
  %604 = icmp ult ptr %599, %14
  br i1 %604, label %605, label %611

605:                                              ; preds = %603
  %606 = ptrtoint ptr %14 to i64
  %607 = ptrtoint ptr %599 to i64
  %608 = sub i64 %606, %607
  %609 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %608, i64 5), !nosanitize !14
  %610 = extractvalue { i64, i1 } %609, 1, !nosanitize !14
  br i1 %610, label %85, label %617, !nosanitize !14

611:                                              ; preds = %603
  %612 = ptrtoint ptr %599 to i64
  %613 = ptrtoint ptr %14 to i64
  %614 = sub i64 %612, %613
  %615 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %614), !nosanitize !14
  %616 = extractvalue { i64, i1 } %615, 1, !nosanitize !14
  br i1 %616, label %10, label %617, !nosanitize !14

617:                                              ; preds = %611, %605
  %618 = phi { i64, i1 } [ %609, %605 ], [ %615, %611 ]
  %619 = extractvalue { i64, i1 } %618, 0
  %620 = trunc i64 %619 to i32
  store i32 %620, ptr %6, align 8, !tbaa !13
  %621 = icmp ult ptr %594, %31
  br i1 %621, label %622, label %628

622:                                              ; preds = %617
  %623 = ptrtoint ptr %31 to i64
  %624 = ptrtoint ptr %594 to i64
  %625 = sub i64 %623, %624
  %626 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %625, i64 257), !nosanitize !14
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !14
  br i1 %627, label %85, label %634, !nosanitize !14

628:                                              ; preds = %617
  %629 = ptrtoint ptr %594 to i64
  %630 = ptrtoint ptr %31 to i64
  %631 = sub i64 %629, %630
  %632 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %631), !nosanitize !14
  %633 = extractvalue { i64, i1 } %632, 1, !nosanitize !14
  br i1 %633, label %10, label %634, !nosanitize !14

634:                                              ; preds = %628, %622
  %635 = phi { i64, i1 } [ %626, %622 ], [ %632, %628 ]
  %636 = extractvalue { i64, i1 } %635, 0
  %637 = extractvalue { i32, i1 } %601, 0, !nosanitize !14
  %638 = shl nsw i32 -1, %637
  %639 = xor i32 %638, -1
  %640 = zext nneg i32 %639 to i64
  %641 = and i64 %593, %640
  %642 = trunc i64 %636 to i32
  store i32 %642, ptr %17, align 8, !tbaa !16
  store i64 %641, ptr %41, align 8, !tbaa !22
  store i32 %637, ptr %43, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 56}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{}
!15 = !{!6, !7, i64 24}
!16 = !{!6, !10, i64 32}
!17 = !{!18, !10, i64 60}
!18 = !{!"inflate_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !7, i64 144, !8, i64 152, !8, i64 792, !8, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!19 = !{!18, !10, i64 64}
!20 = !{!18, !10, i64 68}
!21 = !{!18, !7, i64 72}
!22 = !{!18, !11, i64 80}
!23 = !{!18, !10, i64 88}
!24 = !{!18, !7, i64 104}
!25 = !{!18, !7, i64 112}
!26 = !{!18, !10, i64 120}
!27 = !{!18, !10, i64 124}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !8, i64 1}
!30 = !{!"", !8, i64 0, !8, i64 1, !31, i64 2}
!31 = !{!"short", !8, i64 0}
!32 = !{!30, !8, i64 0}
!33 = !{!30, !31, i64 2}
!34 = !{!18, !10, i64 7144}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !36, !39}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = !{!6, !7, i64 48}
!49 = !{!18, !10, i64 8}
