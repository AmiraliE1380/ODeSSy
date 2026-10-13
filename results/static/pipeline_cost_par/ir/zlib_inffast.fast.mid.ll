; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inffast.ll'
source_filename = "/mydata/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @inflate_fast(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 5), !nosanitize !16
  %9 = extractvalue { i32, i1 } %8, 1, !nosanitize !16
  br i1 %9, label %10, label %11, !prof !17, !nosanitize !16

10:                                               ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

11:                                               ; preds = %2
  %12 = extractvalue { i32, i1 } %8, 0, !nosanitize !16
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %18), !nosanitize !16
  %20 = extractvalue { i32, i1 } %19, 1, !nosanitize !16
  br i1 %20, label %21, label %22, !prof !17, !nosanitize !16

21:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

22:                                               ; preds = %11
  %23 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %18, i32 257), !nosanitize !16
  %24 = extractvalue { i32, i1 } %23, 1, !nosanitize !16
  br i1 %24, label %25, label %26, !prof !17, !nosanitize !16

25:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

26:                                               ; preds = %22
  %27 = extractvalue { i32, i1 } %19, 0, !nosanitize !16
  %28 = zext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %16, i64 %29
  %31 = extractvalue { i32, i1 } %23, 0, !nosanitize !16
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw i8, ptr %16, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %35 = load i32, ptr %34, align 4, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %37 = load i32, ptr %36, align 8, !tbaa !24
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %39 = load i32, ptr %38, align 4, !tbaa !25
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = ptrtoint ptr %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %46 = load i32, ptr %45, align 8, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %48 = load ptr, ptr %47, align 8, !tbaa !29
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %52 = load i32, ptr %51, align 8, !tbaa !31
  %53 = shl nsw i32 -1, %52
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %56 = load i32, ptr %55, align 4, !tbaa !32
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = zext nneg i32 %54 to i64
  %60 = zext nneg i32 %58 to i64
  %61 = ptrtoint ptr %30 to i64
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 7144
  %63 = icmp eq i32 %39, 0
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 %39)
  %65 = extractvalue { i32, i1 } %64, 1
  %66 = extractvalue { i32, i1 } %64, 0
  %67 = zext i32 %39 to i64
  %68 = icmp ult i32 %39, 32
  %69 = and i64 %67, 4294967264
  %70 = trunc nuw i64 %69 to i32
  %71 = sub i32 %39, %70
  %72 = getelementptr i8, ptr %41, i64 %69
  %73 = icmp eq i64 %69, %67
  br label %74

74:                                               ; preds = %591, %26
  %75 = phi i32 [ %46, %26 ], [ %592, %591 ]
  %76 = phi i64 [ %44, %26 ], [ %593, %591 ]
  %77 = phi ptr [ %16, %26 ], [ %594, %591 ]
  %78 = phi ptr [ %5, %26 ], [ %595, %591 ]
  %79 = icmp ult i32 %75, 15
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load i8, ptr %78, align 1, !tbaa !33
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %75 to i64
  %84 = shl nuw nsw i64 %82, %83
  %85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 %84), !nosanitize !16
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !16
  br i1 %86, label %87, label %88, !prof !17, !nosanitize !16

87:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

88:                                               ; preds = %80
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !16
  %90 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %91 = add nuw nsw i32 %75, 8
  %92 = load i8, ptr %90, align 1, !tbaa !33
  %93 = zext i8 %92 to i64
  %94 = zext nneg i32 %91 to i64
  %95 = shl nuw nsw i64 %93, %94
  %96 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %89, i64 %95), !nosanitize !16
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !16
  br i1 %97, label %98, label %99, !prof !17, !nosanitize !16

98:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

99:                                               ; preds = %88
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !16
  %101 = getelementptr inbounds nuw i8, ptr %78, i64 2
  %102 = or disjoint i32 %75, 16
  br label %103

103:                                              ; preds = %99, %74
  %104 = phi i32 [ %102, %99 ], [ %75, %74 ]
  %105 = phi i64 [ %100, %99 ], [ %76, %74 ]
  %106 = phi ptr [ %101, %99 ], [ %78, %74 ]
  %107 = and i64 %105, %59
  %108 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !34
  %111 = zext i8 %110 to i32
  %112 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %104, i32 %111), !nosanitize !16
  %113 = extractvalue { i32, i1 } %112, 1, !nosanitize !16
  br i1 %113, label %117, label %114, !prof !37, !nosanitize !16

114:                                              ; preds = %103
  %115 = zext nneg i8 %110 to i64
  %116 = lshr i64 %105, %115
  br label %118

117:                                              ; preds = %571, %103
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

118:                                              ; preds = %571, %114
  %119 = phi { i32, i1 } [ %586, %571 ], [ %112, %114 ]
  %120 = phi i64 [ %585, %571 ], [ %116, %114 ]
  %121 = phi ptr [ %580, %571 ], [ %108, %114 ]
  %122 = extractvalue { i32, i1 } %119, 0
  %123 = load i8, ptr %121, align 2, !tbaa !38
  %124 = zext i8 %123 to i32
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = getelementptr inbounds nuw i8, ptr %121, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !39
  %129 = trunc i16 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %77, i64 1
  store i8 %129, ptr %77, align 1, !tbaa !33
  br label %591

131:                                              ; preds = %118
  %132 = and i32 %124, 16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %568, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw i8, ptr %121, i64 2
  %136 = load i16, ptr %135, align 2, !tbaa !39
  %137 = zext i16 %136 to i32
  %138 = and i32 %124, 15
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %170, label %140

140:                                              ; preds = %134
  %141 = icmp ult i32 %122, %138
  br i1 %141, label %142, label %154

142:                                              ; preds = %140
  %143 = load i8, ptr %106, align 1, !tbaa !33
  %144 = zext i8 %143 to i64
  %145 = zext nneg i32 %122 to i64
  %146 = shl nuw nsw i64 %144, %145
  %147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 %146), !nosanitize !16
  %148 = extractvalue { i64, i1 } %147, 1, !nosanitize !16
  br i1 %148, label %149, label %150, !prof !17, !nosanitize !16

149:                                              ; preds = %142
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

150:                                              ; preds = %142
  %151 = extractvalue { i64, i1 } %147, 0, !nosanitize !16
  %152 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %153 = add nuw nsw i32 %122, 8
  br label %154

154:                                              ; preds = %150, %140
  %155 = phi i32 [ %153, %150 ], [ %122, %140 ]
  %156 = phi i64 [ %151, %150 ], [ %120, %140 ]
  %157 = phi ptr [ %152, %150 ], [ %106, %140 ]
  %158 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %155, i32 %138), !nosanitize !16
  %159 = extractvalue { i32, i1 } %158, 1, !nosanitize !16
  br i1 %159, label %160, label %161, !prof !17, !nosanitize !16

160:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

161:                                              ; preds = %154
  %162 = trunc i64 %156 to i32
  %163 = shl nsw i32 -1, %138
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = add nuw nsw i32 %165, %137
  %167 = extractvalue { i32, i1 } %158, 0, !nosanitize !16
  %168 = zext nneg i32 %138 to i64
  %169 = lshr i64 %156, %168
  br label %170

170:                                              ; preds = %161, %134
  %171 = phi i32 [ %167, %161 ], [ %122, %134 ]
  %172 = phi i64 [ %169, %161 ], [ %120, %134 ]
  %173 = phi ptr [ %157, %161 ], [ %106, %134 ]
  %174 = phi i32 [ %166, %161 ], [ %137, %134 ]
  %175 = icmp ult i32 %171, 15
  br i1 %175, label %176, label %199

176:                                              ; preds = %170
  %177 = load i8, ptr %173, align 1, !tbaa !33
  %178 = zext i8 %177 to i64
  %179 = zext nneg i32 %171 to i64
  %180 = shl nuw nsw i64 %178, %179
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %180), !nosanitize !16
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !16
  br i1 %182, label %183, label %184, !prof !17, !nosanitize !16

183:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

184:                                              ; preds = %176
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !16
  %186 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %187 = add nuw nsw i32 %171, 8
  %188 = load i8, ptr %186, align 1, !tbaa !33
  %189 = zext i8 %188 to i64
  %190 = zext nneg i32 %187 to i64
  %191 = shl nuw nsw i64 %189, %190
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %191), !nosanitize !16
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !16
  br i1 %193, label %194, label %195, !prof !17, !nosanitize !16

194:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

195:                                              ; preds = %184
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !16
  %197 = getelementptr inbounds nuw i8, ptr %173, i64 2
  %198 = or disjoint i32 %171, 16
  br label %199

199:                                              ; preds = %195, %170
  %200 = phi i32 [ %198, %195 ], [ %171, %170 ]
  %201 = phi i64 [ %196, %195 ], [ %172, %170 ]
  %202 = phi ptr [ %197, %195 ], [ %173, %170 ]
  %203 = and i64 %201, %60
  %204 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %203
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !34
  %207 = zext i8 %206 to i32
  %208 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %200, i32 %207), !nosanitize !16
  %209 = extractvalue { i32, i1 } %208, 1, !nosanitize !16
  br i1 %209, label %213, label %210, !prof !37, !nosanitize !16

210:                                              ; preds = %199
  %211 = zext nneg i8 %206 to i64
  %212 = lshr i64 %201, %211
  br label %214

213:                                              ; preds = %551, %199
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

214:                                              ; preds = %551, %210
  %215 = phi { i32, i1 } [ %566, %551 ], [ %208, %210 ]
  %216 = phi i64 [ %565, %551 ], [ %212, %210 ]
  %217 = phi ptr [ %560, %551 ], [ %204, %210 ]
  %218 = extractvalue { i32, i1 } %215, 0
  %219 = load i8, ptr %217, align 2, !tbaa !38
  %220 = zext i8 %219 to i32
  %221 = and i32 %220, 16
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %548, label %223

223:                                              ; preds = %214
  %224 = getelementptr inbounds nuw i8, ptr %217, i64 2
  %225 = load i16, ptr %224, align 2, !tbaa !39
  %226 = zext i16 %225 to i32
  %227 = and i32 %220, 15
  %228 = icmp ult i32 %218, %227
  br i1 %228, label %229, label %254

229:                                              ; preds = %223
  %230 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %231 = load i8, ptr %202, align 1, !tbaa !33
  %232 = zext i8 %231 to i64
  %233 = zext nneg i32 %218 to i64
  %234 = shl nuw nsw i64 %232, %233
  %235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %234), !nosanitize !16
  %236 = extractvalue { i64, i1 } %235, 0, !nosanitize !16
  %237 = extractvalue { i64, i1 } %235, 1, !nosanitize !16
  br i1 %237, label %238, label %239, !prof !17, !nosanitize !16

238:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

239:                                              ; preds = %229
  %240 = add nuw nsw i32 %218, 8
  %241 = icmp samesign ult i32 %240, %227
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  %243 = load i8, ptr %230, align 1, !tbaa !33
  %244 = zext i8 %243 to i64
  %245 = zext nneg i32 %240 to i64
  %246 = shl nuw nsw i64 %244, %245
  %247 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %246), !nosanitize !16
  %248 = extractvalue { i64, i1 } %247, 1, !nosanitize !16
  br i1 %248, label %249, label %250, !prof !17, !nosanitize !16

249:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

250:                                              ; preds = %242
  %251 = extractvalue { i64, i1 } %247, 0, !nosanitize !16
  %252 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %253 = add nuw nsw i32 %218, 16
  br label %254

254:                                              ; preds = %250, %239, %223
  %255 = phi i32 [ %253, %250 ], [ %240, %239 ], [ %218, %223 ]
  %256 = phi i64 [ %251, %250 ], [ %236, %239 ], [ %216, %223 ]
  %257 = phi ptr [ %252, %250 ], [ %230, %239 ], [ %202, %223 ]
  %258 = shl nsw i32 -1, %227
  %259 = xor i32 %258, -1
  %260 = trunc i64 %256 to i32
  %261 = and i32 %260, %259
  %262 = add nuw nsw i32 %261, %226
  %263 = zext nneg i32 %227 to i64
  %264 = lshr i64 %256, %263
  %265 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %255, i32 %227), !nosanitize !16
  %266 = extractvalue { i32, i1 } %265, 0, !nosanitize !16
  %267 = extractvalue { i32, i1 } %265, 1, !nosanitize !16
  br i1 false, label %268, label %269, !prof !17, !nosanitize !16

268:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

269:                                              ; preds = %254
  %270 = ptrtoint ptr %77 to i64
  %271 = sub i64 %270, %61
  %272 = trunc i64 %271 to i32
  %273 = icmp ugt i32 %262, %272
  br i1 %273, label %274, label %515

274:                                              ; preds = %269
  %275 = sub nuw nsw i32 %262, %272
  %276 = icmp ugt i32 %275, %37
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32, ptr %62, align 8, !tbaa !40
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %599

280:                                              ; preds = %277, %274
  br i1 %63, label %281, label %309

281:                                              ; preds = %280
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %35, i32 %275), !nosanitize !16
  %283 = extractvalue { i32, i1 } %282, 1, !nosanitize !16
  br i1 %283, label %284, label %285, !prof !17, !nosanitize !16

284:                                              ; preds = %281
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

285:                                              ; preds = %281
  %286 = extractvalue { i32, i1 } %282, 0, !nosanitize !16
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i8, ptr %41, i64 %287
  %289 = icmp ult i32 %275, %174
  br i1 %289, label %290, label %449

290:                                              ; preds = %285
  %291 = sub nuw nsw i32 %174, %275
  br label %292

292:                                              ; preds = %300, %290
  %293 = phi ptr [ %77, %290 ], [ %301, %300 ]
  %294 = phi i32 [ %275, %290 ], [ %302, %300 ]
  %295 = phi ptr [ %288, %290 ], [ %303, %300 ]
  %296 = load i8, ptr %295, align 1, !tbaa !33
  store i8 %296, ptr %293, align 1, !tbaa !33
  %297 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %294, i32 1), !nosanitize !16
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !16
  br i1 %298, label %299, label %300, !prof !17, !nosanitize !16

299:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

300:                                              ; preds = %292
  %301 = getelementptr inbounds nuw i8, ptr %293, i64 1
  %302 = extractvalue { i32, i1 } %297, 0, !nosanitize !16
  %303 = getelementptr inbounds nuw i8, ptr %295, i64 1
  %304 = icmp eq i32 %302, 0
  br i1 %304, label %305, label %292, !llvm.loop !41

305:                                              ; preds = %300
  %306 = zext nneg i32 %262 to i64
  %307 = sub nsw i64 0, %306
  %308 = getelementptr inbounds i8, ptr %301, i64 %307
  br label %449

309:                                              ; preds = %280
  %310 = icmp ult i32 %39, %275
  br i1 %310, label %311, label %425

311:                                              ; preds = %309
  br i1 %65, label %312, label %313, !prof !17, !nosanitize !16

312:                                              ; preds = %644, %627, %311
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

313:                                              ; preds = %311
  %314 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %66, i32 %275), !nosanitize !16
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !16
  br i1 %315, label %316, label %317, !prof !17, !nosanitize !16

316:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

317:                                              ; preds = %313
  %318 = extractvalue { i32, i1 } %314, 0, !nosanitize !16
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds nuw i8, ptr %41, i64 %319
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %275, i32 %39), !nosanitize !16
  %322 = extractvalue { i32, i1 } %321, 0, !nosanitize !16
  %323 = extractvalue { i32, i1 } %321, 1, !nosanitize !16
  br i1 %323, label %324, label %325, !prof !17, !nosanitize !16

324:                                              ; preds = %317
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

325:                                              ; preds = %317
  %326 = icmp ult i32 %322, %174
  br i1 %326, label %327, label %449

327:                                              ; preds = %325
  %328 = sub nuw i32 %174, %322
  br label %329

329:                                              ; preds = %338, %327
  %330 = phi i64 [ %343, %338 ], [ 0, %327 ]
  %331 = phi ptr [ %339, %338 ], [ %77, %327 ]
  %332 = phi i32 [ %340, %338 ], [ %322, %327 ]
  %333 = phi ptr [ %341, %338 ], [ %320, %327 ]
  %334 = load i8, ptr %333, align 1, !tbaa !33
  store i8 %334, ptr %331, align 1, !tbaa !33
  %335 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %332, i32 1), !nosanitize !16
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !16
  br i1 %336, label %337, label %338, !prof !17, !nosanitize !16

337:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

338:                                              ; preds = %329
  %339 = getelementptr inbounds nuw i8, ptr %331, i64 1
  %340 = extractvalue { i32, i1 } %335, 0, !nosanitize !16
  %341 = getelementptr inbounds nuw i8, ptr %333, i64 1
  %342 = icmp eq i32 %340, 0
  %343 = add i64 %330, 1
  br i1 %342, label %344, label %329, !llvm.loop !43

344:                                              ; preds = %338
  %345 = icmp ult i32 %39, %328
  br i1 %345, label %346, label %449

346:                                              ; preds = %344
  br i1 %68, label %365, label %347

347:                                              ; preds = %346
  %348 = sub i64 %270, %42
  %349 = add i64 %348, 1
  %350 = add i64 %330, %349
  %351 = icmp ult i64 %350, 32
  br i1 %351, label %365, label %352

352:                                              ; preds = %347
  %353 = getelementptr i8, ptr %339, i64 %69
  br label %354

354:                                              ; preds = %354, %352
  %355 = phi i64 [ 0, %352 ], [ %362, %354 ]
  %356 = getelementptr i8, ptr %339, i64 %355
  %357 = getelementptr i8, ptr %41, i64 %355
  %358 = getelementptr i8, ptr %357, i64 16
  %359 = load <16 x i8>, ptr %357, align 1, !tbaa !33
  %360 = load <16 x i8>, ptr %358, align 1, !tbaa !33
  %361 = getelementptr i8, ptr %356, i64 16
  store <16 x i8> %359, ptr %356, align 1, !tbaa !33
  store <16 x i8> %360, ptr %361, align 1, !tbaa !33
  %362 = add nuw i64 %355, 32
  %363 = icmp eq i64 %362, %69
  br i1 %363, label %364, label %354, !llvm.loop !44

364:                                              ; preds = %354
  br i1 %73, label %419, label %365

365:                                              ; preds = %364, %347, %346
  %366 = phi ptr [ %339, %347 ], [ %339, %346 ], [ %353, %364 ]
  %367 = phi i32 [ %39, %347 ], [ %39, %346 ], [ %71, %364 ]
  %368 = phi ptr [ %41, %347 ], [ %41, %346 ], [ %72, %364 ]
  %369 = add i32 %367, -1
  %370 = and i32 %367, 7
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %383, label %372

372:                                              ; preds = %372, %365
  %373 = phi ptr [ %378, %372 ], [ %366, %365 ]
  %374 = phi i32 [ %379, %372 ], [ %367, %365 ]
  %375 = phi ptr [ %380, %372 ], [ %368, %365 ]
  %376 = phi i32 [ %381, %372 ], [ 0, %365 ]
  %377 = load i8, ptr %375, align 1, !tbaa !33
  %378 = getelementptr inbounds nuw i8, ptr %373, i64 1
  store i8 %377, ptr %373, align 1, !tbaa !33
  %379 = add i32 %374, -1
  %380 = getelementptr inbounds nuw i8, ptr %375, i64 1
  %381 = add i32 %376, 1
  %382 = icmp eq i32 %381, %370
  br i1 %382, label %383, label %372, !llvm.loop !47

383:                                              ; preds = %372, %365
  %384 = phi ptr [ poison, %365 ], [ %378, %372 ]
  %385 = phi ptr [ %366, %365 ], [ %378, %372 ]
  %386 = phi i32 [ %367, %365 ], [ %379, %372 ]
  %387 = phi ptr [ %368, %365 ], [ %380, %372 ]
  %388 = icmp ult i32 %369, 7
  br i1 %388, label %419, label %389

389:                                              ; preds = %389, %383
  %390 = phi ptr [ %415, %389 ], [ %385, %383 ]
  %391 = phi i32 [ %416, %389 ], [ %386, %383 ]
  %392 = phi ptr [ %417, %389 ], [ %387, %383 ]
  %393 = load i8, ptr %392, align 1, !tbaa !33
  %394 = getelementptr inbounds nuw i8, ptr %390, i64 1
  store i8 %393, ptr %390, align 1, !tbaa !33
  %395 = getelementptr inbounds nuw i8, ptr %392, i64 1
  %396 = load i8, ptr %395, align 1, !tbaa !33
  %397 = getelementptr inbounds nuw i8, ptr %390, i64 2
  store i8 %396, ptr %394, align 1, !tbaa !33
  %398 = getelementptr inbounds nuw i8, ptr %392, i64 2
  %399 = load i8, ptr %398, align 1, !tbaa !33
  %400 = getelementptr inbounds nuw i8, ptr %390, i64 3
  store i8 %399, ptr %397, align 1, !tbaa !33
  %401 = getelementptr inbounds nuw i8, ptr %392, i64 3
  %402 = load i8, ptr %401, align 1, !tbaa !33
  %403 = getelementptr inbounds nuw i8, ptr %390, i64 4
  store i8 %402, ptr %400, align 1, !tbaa !33
  %404 = getelementptr inbounds nuw i8, ptr %392, i64 4
  %405 = load i8, ptr %404, align 1, !tbaa !33
  %406 = getelementptr inbounds nuw i8, ptr %390, i64 5
  store i8 %405, ptr %403, align 1, !tbaa !33
  %407 = getelementptr inbounds nuw i8, ptr %392, i64 5
  %408 = load i8, ptr %407, align 1, !tbaa !33
  %409 = getelementptr inbounds nuw i8, ptr %390, i64 6
  store i8 %408, ptr %406, align 1, !tbaa !33
  %410 = getelementptr inbounds nuw i8, ptr %392, i64 6
  %411 = load i8, ptr %410, align 1, !tbaa !33
  %412 = getelementptr inbounds nuw i8, ptr %390, i64 7
  store i8 %411, ptr %409, align 1, !tbaa !33
  %413 = getelementptr inbounds nuw i8, ptr %392, i64 7
  %414 = load i8, ptr %413, align 1, !tbaa !33
  %415 = getelementptr inbounds nuw i8, ptr %390, i64 8
  store i8 %414, ptr %412, align 1, !tbaa !33
  %416 = add i32 %391, -8
  %417 = getelementptr inbounds nuw i8, ptr %392, i64 8
  %418 = icmp eq i32 %416, 0
  br i1 %418, label %419, label %389, !llvm.loop !49

419:                                              ; preds = %389, %383, %364
  %420 = phi ptr [ %353, %364 ], [ %384, %383 ], [ %415, %389 ]
  %421 = sub nuw i32 %328, %39
  %422 = zext nneg i32 %262 to i64
  %423 = sub nsw i64 0, %422
  %424 = getelementptr inbounds i8, ptr %420, i64 %423
  br label %449

425:                                              ; preds = %309
  %426 = sub nuw i32 %39, %275
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds nuw i8, ptr %41, i64 %427
  %429 = icmp ult i32 %275, %174
  br i1 %429, label %430, label %449

430:                                              ; preds = %425
  %431 = sub nuw nsw i32 %174, %275
  br label %432

432:                                              ; preds = %440, %430
  %433 = phi ptr [ %77, %430 ], [ %441, %440 ]
  %434 = phi i32 [ %275, %430 ], [ %442, %440 ]
  %435 = phi ptr [ %428, %430 ], [ %443, %440 ]
  %436 = load i8, ptr %435, align 1, !tbaa !33
  store i8 %436, ptr %433, align 1, !tbaa !33
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %434, i32 1), !nosanitize !16
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !16
  br i1 %438, label %439, label %440, !prof !17, !nosanitize !16

439:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

440:                                              ; preds = %432
  %441 = getelementptr inbounds nuw i8, ptr %433, i64 1
  %442 = extractvalue { i32, i1 } %437, 0, !nosanitize !16
  %443 = getelementptr inbounds nuw i8, ptr %435, i64 1
  %444 = icmp eq i32 %442, 0
  br i1 %444, label %445, label %432, !llvm.loop !50

445:                                              ; preds = %440
  %446 = zext nneg i32 %262 to i64
  %447 = sub nsw i64 0, %446
  %448 = getelementptr inbounds i8, ptr %441, i64 %447
  br label %449

449:                                              ; preds = %445, %425, %419, %344, %325, %305, %285
  %450 = phi ptr [ %301, %305 ], [ %77, %285 ], [ %420, %419 ], [ %339, %344 ], [ %77, %325 ], [ %441, %445 ], [ %77, %425 ]
  %451 = phi i32 [ %291, %305 ], [ %174, %285 ], [ %421, %419 ], [ %328, %344 ], [ %174, %325 ], [ %431, %445 ], [ %174, %425 ]
  %452 = phi ptr [ %308, %305 ], [ %288, %285 ], [ %424, %419 ], [ %41, %344 ], [ %320, %325 ], [ %448, %445 ], [ %428, %425 ]
  %453 = icmp ugt i32 %451, 2
  br i1 %453, label %454, label %502

454:                                              ; preds = %449
  %455 = add i32 %451, -3
  %456 = udiv i32 %455, 3
  %457 = and i32 %456, 1
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %454
  %460 = getelementptr inbounds nuw i8, ptr %452, i64 1
  %461 = load i8, ptr %452, align 1, !tbaa !33
  %462 = getelementptr inbounds nuw i8, ptr %450, i64 1
  store i8 %461, ptr %450, align 1, !tbaa !33
  %463 = getelementptr inbounds nuw i8, ptr %452, i64 2
  %464 = load i8, ptr %460, align 1, !tbaa !33
  %465 = getelementptr inbounds nuw i8, ptr %450, i64 2
  store i8 %464, ptr %462, align 1, !tbaa !33
  %466 = load i8, ptr %463, align 1, !tbaa !33
  store i8 %466, ptr %465, align 1, !tbaa !33
  %467 = add i32 %451, -3
  %468 = getelementptr inbounds nuw i8, ptr %450, i64 3
  %469 = getelementptr inbounds nuw i8, ptr %452, i64 3
  br label %470

470:                                              ; preds = %459, %454
  %471 = phi ptr [ %452, %454 ], [ %469, %459 ]
  %472 = phi i32 [ %451, %454 ], [ %467, %459 ]
  %473 = phi ptr [ %450, %454 ], [ %468, %459 ]
  %474 = phi i32 [ poison, %454 ], [ %467, %459 ]
  %475 = phi ptr [ poison, %454 ], [ %468, %459 ]
  %476 = phi ptr [ poison, %454 ], [ %469, %459 ]
  %477 = icmp ult i32 %455, 3
  br i1 %477, label %502, label %478

478:                                              ; preds = %478, %470
  %479 = phi ptr [ %500, %478 ], [ %471, %470 ]
  %480 = phi i32 [ %498, %478 ], [ %472, %470 ]
  %481 = phi ptr [ %499, %478 ], [ %473, %470 ]
  %482 = getelementptr inbounds nuw i8, ptr %479, i64 1
  %483 = load i8, ptr %479, align 1, !tbaa !33
  %484 = getelementptr inbounds nuw i8, ptr %481, i64 1
  store i8 %483, ptr %481, align 1, !tbaa !33
  %485 = getelementptr inbounds nuw i8, ptr %479, i64 2
  %486 = load i8, ptr %482, align 1, !tbaa !33
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 2
  store i8 %486, ptr %484, align 1, !tbaa !33
  %488 = load i8, ptr %485, align 1, !tbaa !33
  store i8 %488, ptr %487, align 1, !tbaa !33
  %489 = getelementptr inbounds nuw i8, ptr %481, i64 3
  %490 = getelementptr inbounds nuw i8, ptr %479, i64 3
  %491 = getelementptr inbounds nuw i8, ptr %479, i64 4
  %492 = load i8, ptr %490, align 1, !tbaa !33
  %493 = getelementptr inbounds nuw i8, ptr %481, i64 4
  store i8 %492, ptr %489, align 1, !tbaa !33
  %494 = getelementptr inbounds nuw i8, ptr %479, i64 5
  %495 = load i8, ptr %491, align 1, !tbaa !33
  %496 = getelementptr inbounds nuw i8, ptr %481, i64 5
  store i8 %495, ptr %493, align 1, !tbaa !33
  %497 = load i8, ptr %494, align 1, !tbaa !33
  store i8 %497, ptr %496, align 1, !tbaa !33
  %498 = add i32 %480, -6
  %499 = getelementptr inbounds nuw i8, ptr %481, i64 6
  %500 = getelementptr inbounds nuw i8, ptr %479, i64 6
  %501 = icmp ugt i32 %498, 2
  br i1 %501, label %478, label %502, !llvm.loop !51

502:                                              ; preds = %478, %470, %449
  %503 = phi ptr [ %450, %449 ], [ %475, %470 ], [ %499, %478 ]
  %504 = phi i32 [ %451, %449 ], [ %474, %470 ], [ %498, %478 ]
  %505 = phi ptr [ %452, %449 ], [ %476, %470 ], [ %500, %478 ]
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %591, label %507

507:                                              ; preds = %502
  %508 = load i8, ptr %505, align 1, !tbaa !33
  %509 = getelementptr inbounds nuw i8, ptr %503, i64 1
  store i8 %508, ptr %503, align 1, !tbaa !33
  %510 = icmp eq i32 %504, 2
  br i1 %510, label %511, label %591

511:                                              ; preds = %507
  %512 = getelementptr inbounds nuw i8, ptr %505, i64 1
  %513 = load i8, ptr %512, align 1, !tbaa !33
  %514 = getelementptr inbounds nuw i8, ptr %503, i64 2
  store i8 %513, ptr %509, align 1, !tbaa !33
  br label %591

515:                                              ; preds = %269
  %516 = zext nneg i32 %262 to i64
  %517 = sub nsw i64 0, %516
  %518 = getelementptr inbounds i8, ptr %77, i64 %517
  br label %519

519:                                              ; preds = %533, %515
  %520 = phi ptr [ %77, %515 ], [ %535, %533 ]
  %521 = phi i32 [ %174, %515 ], [ %534, %533 ]
  %522 = phi ptr [ %518, %515 ], [ %536, %533 ]
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 1
  %524 = load i8, ptr %522, align 1, !tbaa !33
  %525 = getelementptr inbounds nuw i8, ptr %520, i64 1
  store i8 %524, ptr %520, align 1, !tbaa !33
  %526 = getelementptr inbounds nuw i8, ptr %522, i64 2
  %527 = load i8, ptr %523, align 1, !tbaa !33
  %528 = getelementptr inbounds nuw i8, ptr %520, i64 2
  store i8 %527, ptr %525, align 1, !tbaa !33
  %529 = load i8, ptr %526, align 1, !tbaa !33
  store i8 %529, ptr %528, align 1, !tbaa !33
  %530 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 3), !nosanitize !16
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !16
  br i1 %531, label %532, label %533, !prof !17, !nosanitize !16

532:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

533:                                              ; preds = %519
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !16
  %535 = getelementptr inbounds nuw i8, ptr %520, i64 3
  %536 = getelementptr inbounds nuw i8, ptr %522, i64 3
  %537 = icmp ugt i32 %534, 2
  br i1 %537, label %519, label %538, !llvm.loop !52

538:                                              ; preds = %533
  %539 = icmp eq i32 %534, 0
  br i1 %539, label %591, label %540

540:                                              ; preds = %538
  %541 = load i8, ptr %536, align 1, !tbaa !33
  %542 = getelementptr inbounds nuw i8, ptr %520, i64 4
  store i8 %541, ptr %535, align 1, !tbaa !33
  %543 = icmp eq i32 %534, 2
  br i1 %543, label %544, label %591

544:                                              ; preds = %540
  %545 = getelementptr inbounds nuw i8, ptr %522, i64 4
  %546 = load i8, ptr %545, align 1, !tbaa !33
  %547 = getelementptr inbounds nuw i8, ptr %520, i64 5
  store i8 %546, ptr %542, align 1, !tbaa !33
  br label %591

548:                                              ; preds = %214
  %549 = and i32 %220, 64
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %599

551:                                              ; preds = %548
  %552 = shl nsw i32 -1, %220
  %553 = xor i32 %552, -1
  %554 = getelementptr inbounds nuw i8, ptr %217, i64 2
  %555 = load i16, ptr %554, align 2, !tbaa !39
  %556 = zext i16 %555 to i64
  %557 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %556
  %558 = zext nneg i32 %553 to i64
  %559 = and i64 %216, %558
  %560 = getelementptr inbounds nuw %struct.code, ptr %557, i64 %559
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %562 = load i8, ptr %561, align 1, !tbaa !34
  %563 = zext i8 %562 to i32
  %564 = zext nneg i8 %562 to i64
  %565 = lshr i64 %216, %564
  %566 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %218, i32 %563), !nosanitize !16
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !16
  br i1 %567, label %213, label %214, !prof !53, !nosanitize !16

568:                                              ; preds = %131
  %569 = and i32 %124, 64
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %588

571:                                              ; preds = %568
  %572 = shl nsw i32 -1, %124
  %573 = xor i32 %572, -1
  %574 = getelementptr inbounds nuw i8, ptr %121, i64 2
  %575 = load i16, ptr %574, align 2, !tbaa !39
  %576 = zext i16 %575 to i64
  %577 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %576
  %578 = zext nneg i32 %573 to i64
  %579 = and i64 %120, %578
  %580 = getelementptr inbounds nuw %struct.code, ptr %577, i64 %579
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 1
  %582 = load i8, ptr %581, align 1, !tbaa !34
  %583 = zext i8 %582 to i32
  %584 = zext nneg i8 %582 to i64
  %585 = lshr i64 %120, %584
  %586 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 %583), !nosanitize !16
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !16
  br i1 %587, label %117, label %118, !prof !53, !nosanitize !16

588:                                              ; preds = %568
  %589 = and i32 %124, 32
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %605

591:                                              ; preds = %544, %540, %538, %511, %507, %502, %126
  %592 = phi i32 [ %122, %126 ], [ %266, %511 ], [ %266, %507 ], [ %266, %502 ], [ %266, %544 ], [ %266, %540 ], [ %266, %538 ]
  %593 = phi i64 [ %120, %126 ], [ %264, %511 ], [ %264, %507 ], [ %264, %502 ], [ %264, %544 ], [ %264, %540 ], [ %264, %538 ]
  %594 = phi ptr [ %130, %126 ], [ %514, %511 ], [ %509, %507 ], [ %503, %502 ], [ %547, %544 ], [ %542, %540 ], [ %535, %538 ]
  %595 = phi ptr [ %106, %126 ], [ %257, %511 ], [ %257, %507 ], [ %257, %502 ], [ %257, %544 ], [ %257, %540 ], [ %257, %538 ]
  %596 = icmp ult ptr %595, %14
  %597 = icmp ult ptr %594, %33
  %598 = select i1 %596, i1 %597, i1 false
  br i1 %598, label %74, label %611, !llvm.loop !54

599:                                              ; preds = %588, %548, %277
  %600 = phi ptr [ @.str.2, %588 ], [ @.str.1, %548 ], [ @.str, %277 ]
  %601 = phi i32 [ %122, %588 ], [ %218, %548 ], [ %266, %277 ]
  %602 = phi i64 [ %120, %588 ], [ %216, %548 ], [ %264, %277 ]
  %603 = phi ptr [ %106, %588 ], [ %202, %548 ], [ %257, %277 ]
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %600, ptr %604, align 8, !tbaa !55
  br label %605

605:                                              ; preds = %599, %588
  %606 = phi i32 [ 16191, %588 ], [ 16209, %599 ]
  %607 = phi i32 [ %122, %588 ], [ %601, %599 ]
  %608 = phi i64 [ %120, %588 ], [ %602, %599 ]
  %609 = phi ptr [ %106, %588 ], [ %603, %599 ]
  %610 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %606, ptr %610, align 8, !tbaa !56
  br label %611

611:                                              ; preds = %605, %591
  %612 = phi i32 [ %607, %605 ], [ %592, %591 ]
  %613 = phi i64 [ %608, %605 ], [ %593, %591 ]
  %614 = phi ptr [ %77, %605 ], [ %594, %591 ]
  %615 = phi ptr [ %609, %605 ], [ %595, %591 ]
  %616 = lshr i32 %612, 3
  %617 = zext nneg i32 %616 to i64
  %618 = sub nsw i64 0, %617
  %619 = getelementptr inbounds i8, ptr %615, i64 %618
  %620 = and i32 %612, -8
  %621 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %620), !nosanitize !16
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !16
  br i1 %622, label %623, label %625, !prof !17, !nosanitize !16

623:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

624:                                              ; preds = %650, %633
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

625:                                              ; preds = %611
  store ptr %619, ptr %0, align 8, !tbaa !14
  store ptr %614, ptr %15, align 8, !tbaa !18
  %626 = icmp ult ptr %619, %14
  br i1 %626, label %627, label %633

627:                                              ; preds = %625
  %628 = ptrtoint ptr %14 to i64
  %629 = ptrtoint ptr %619 to i64
  %630 = sub i64 %628, %629
  %631 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %630, i64 5), !nosanitize !16
  %632 = extractvalue { i64, i1 } %631, 1, !nosanitize !16
  br i1 %632, label %312, label %639, !prof !17, !nosanitize !16

633:                                              ; preds = %625
  %634 = ptrtoint ptr %619 to i64
  %635 = ptrtoint ptr %14 to i64
  %636 = sub i64 %634, %635
  %637 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %636), !nosanitize !16
  %638 = extractvalue { i64, i1 } %637, 1, !nosanitize !16
  br i1 %638, label %624, label %639, !prof !17, !nosanitize !16

639:                                              ; preds = %633, %627
  %640 = phi { i64, i1 } [ %631, %627 ], [ %637, %633 ]
  %641 = extractvalue { i64, i1 } %640, 0
  %642 = trunc i64 %641 to i32
  store i32 %642, ptr %6, align 8, !tbaa !15
  %643 = icmp ult ptr %614, %33
  br i1 %643, label %644, label %650

644:                                              ; preds = %639
  %645 = ptrtoint ptr %33 to i64
  %646 = ptrtoint ptr %614 to i64
  %647 = sub i64 %645, %646
  %648 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %647, i64 257), !nosanitize !16
  %649 = extractvalue { i64, i1 } %648, 1, !nosanitize !16
  br i1 %649, label %312, label %656, !prof !17, !nosanitize !16

650:                                              ; preds = %639
  %651 = ptrtoint ptr %614 to i64
  %652 = ptrtoint ptr %33 to i64
  %653 = sub i64 %651, %652
  %654 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %653), !nosanitize !16
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !16
  br i1 %655, label %624, label %656, !prof !17, !nosanitize !16

656:                                              ; preds = %650, %644
  %657 = phi { i64, i1 } [ %648, %644 ], [ %654, %650 ]
  %658 = extractvalue { i64, i1 } %657, 0
  %659 = extractvalue { i32, i1 } %621, 0, !nosanitize !16
  %660 = shl nsw i32 -1, %659
  %661 = xor i32 %660, -1
  %662 = zext nneg i32 %661 to i64
  %663 = and i64 %613, %662
  %664 = trunc i64 %658 to i32
  store i32 %664, ptr %17, align 8, !tbaa !19
  store i64 %663, ptr %43, align 8, !tbaa !27
  store i32 %659, ptr %45, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !13, i64 56}
!6 = !{!"z_stream_s", !7, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !11, i64 32, !12, i64 40, !7, i64 48, !13, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !11, i64 8}
!16 = !{}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!6, !7, i64 24}
!19 = !{!6, !11, i64 32}
!20 = !{!21, !11, i64 60}
!21 = !{!"inflate_state", !22, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !23, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !7, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !8, i64 144, !9, i64 152, !9, i64 792, !9, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!22 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!23 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!24 = !{!21, !11, i64 64}
!25 = !{!21, !11, i64 68}
!26 = !{!21, !7, i64 72}
!27 = !{!21, !12, i64 80}
!28 = !{!21, !11, i64 88}
!29 = !{!21, !8, i64 104}
!30 = !{!21, !8, i64 112}
!31 = !{!21, !11, i64 120}
!32 = !{!21, !11, i64 124}
!33 = !{!9, !9, i64 0}
!34 = !{!35, !9, i64 1}
!35 = !{!"", !9, i64 0, !9, i64 1, !36, i64 2}
!36 = !{!"short", !9, i64 0}
!37 = !{!"branch_weights", i32 1, i32 127}
!38 = !{!35, !9, i64 0}
!39 = !{!35, !36, i64 2}
!40 = !{!21, !11, i64 7144}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !42, !45}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = !{!"branch_weights", i32 127, i32 134217473}
!54 = distinct !{!54, !42}
!55 = !{!6, !7, i64 48}
!56 = !{!21, !11, i64 8}
