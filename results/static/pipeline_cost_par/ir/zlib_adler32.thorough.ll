; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_adler32.thorough.mid.ll'
source_filename = "/mydata/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp samesign ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %403

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %403, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %.preheader9, label %.preheader259

.preheader259:                                    ; preds = %221, %25
  %.ph = phi i64 [ %217, %221 ], [ %5, %25 ]
  %.ph260 = phi i64 [ %54, %221 ], [ %2, %25 ]
  %.ph261 = phi ptr [ %55, %221 ], [ %1, %25 ]
  %.ph262 = phi i64 [ %216, %221 ], [ %6, %25 ]
  br label %229

27:                                               ; preds = %23
  %28 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !8
  br i1 %29, label %.loopexit, label %.preheader, !prof !9, !nosanitize !8

.loopexit:                                        ; preds = %46, %27
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader:                                       ; preds = %27, %46
  %30 = phi { i64, i1 } [ %48, %46 ], [ %28, %27 ]
  %31 = phi i64 [ %47, %46 ], [ %5, %27 ]
  %32 = phi ptr [ %35, %46 ], [ %1, %27 ]
  %33 = phi i64 [ %39, %46 ], [ %6, %27 ]
  %34 = extractvalue { i64, i1 } %30, 0
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %36 = load i8, ptr %32, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %37), !nosanitize !8
  %39 = extractvalue { i64, i1 } %38, 0, !nosanitize !8
  %40 = extractvalue { i64, i1 } %38, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !10, !nosanitize !8

41:                                               ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %.preheader
  %43 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %39), !nosanitize !8
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !8
  br i1 %44, label %45, label %46, !prof !10, !nosanitize !8

45:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !8
  %48 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 1), !nosanitize !8
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !8
  br i1 %49, label %.loopexit, label %.preheader, !prof !11, !llvm.loop !12, !nosanitize !8

.preheader9:                                      ; preds = %25, %215
  %50 = phi i64 [ %217, %215 ], [ %5, %25 ]
  %51 = phi i64 [ %54, %215 ], [ %2, %25 ]
  %52 = phi ptr [ %55, %215 ], [ %1, %25 ]
  %53 = phi i64 [ %216, %215 ], [ %6, %25 ]
  %54 = add i64 %51, -5552
  %55 = getelementptr i8, ptr %52, i64 5552
  br label %56

56:                                               ; preds = %210, %.preheader9
  %57 = phi i64 [ %53, %.preheader9 ], [ %206, %210 ]
  %58 = phi ptr [ %52, %.preheader9 ], [ %212, %210 ]
  %59 = phi i64 [ %50, %.preheader9 ], [ %211, %210 ]
  %60 = phi i32 [ 347, %.preheader9 ], [ %213, %210 ]
  %61 = load i8, ptr %58, align 1, !tbaa !5
  %62 = zext i8 %61 to i64
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 %62), !nosanitize !8
  %64 = extractvalue { i64, i1 } %63, 0, !nosanitize !8
  %65 = extractvalue { i64, i1 } %63, 1, !nosanitize !8
  br i1 %65, label %66, label %67, !prof !10, !nosanitize !8

66:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

67:                                               ; preds = %56
  %68 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 %64), !nosanitize !8
  %69 = extractvalue { i64, i1 } %68, 0, !nosanitize !8
  %70 = extractvalue { i64, i1 } %68, 1, !nosanitize !8
  br i1 %70, label %71, label %72, !prof !10, !nosanitize !8

71:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i64
  %76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 %75), !nosanitize !8
  %77 = extractvalue { i64, i1 } %76, 0, !nosanitize !8
  %78 = extractvalue { i64, i1 } %76, 1, !nosanitize !8
  br i1 %78, label %79, label %80, !prof !10, !nosanitize !8

79:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

80:                                               ; preds = %72
  %81 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 %77), !nosanitize !8
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !8
  br i1 %82, label %83, label %84, !prof !10, !nosanitize !8

83:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

84:                                               ; preds = %80
  %85 = extractvalue { i64, i1 } %81, 0, !nosanitize !8
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i64
  %89 = add i64 %77, %88
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 %89), !nosanitize !8
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !10, !nosanitize !8

92:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %84
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !8
  %95 = getelementptr inbounds nuw i8, ptr %58, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !5
  %97 = zext i8 %96 to i64
  %98 = add i64 %89, %97
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %98), !nosanitize !8
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !8
  br i1 %100, label %101, label %102, !prof !10, !nosanitize !8

101:                                              ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %93
  %103 = extractvalue { i64, i1 } %99, 0, !nosanitize !8
  %104 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i64
  %107 = add i64 %98, %106
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %107), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %109, label %110, label %111, !prof !10, !nosanitize !8

110:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

111:                                              ; preds = %102
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !8
  %113 = getelementptr inbounds nuw i8, ptr %58, i64 5
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = add i64 %107, %115
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %116), !nosanitize !8
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !8
  br i1 %118, label %119, label %120, !prof !10, !nosanitize !8

119:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

120:                                              ; preds = %111
  %121 = extractvalue { i64, i1 } %117, 0, !nosanitize !8
  %122 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = zext i8 %123 to i64
  %125 = add i64 %116, %124
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %125), !nosanitize !8
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !8
  br i1 %127, label %128, label %129, !prof !10, !nosanitize !8

128:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

129:                                              ; preds = %120
  %130 = extractvalue { i64, i1 } %126, 0, !nosanitize !8
  %131 = getelementptr inbounds nuw i8, ptr %58, i64 7
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = zext i8 %132 to i64
  %134 = add i64 %125, %133
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 %134), !nosanitize !8
  %136 = extractvalue { i64, i1 } %135, 1, !nosanitize !8
  br i1 %136, label %137, label %138, !prof !10, !nosanitize !8

137:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

138:                                              ; preds = %129
  %139 = extractvalue { i64, i1 } %135, 0, !nosanitize !8
  %140 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = zext i8 %141 to i64
  %143 = add i64 %134, %142
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %143), !nosanitize !8
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !8
  br i1 %145, label %146, label %147, !prof !10, !nosanitize !8

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

147:                                              ; preds = %138
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !8
  %149 = getelementptr inbounds nuw i8, ptr %58, i64 9
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = zext i8 %150 to i64
  %152 = add i64 %143, %151
  %153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %152), !nosanitize !8
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !8
  br i1 %154, label %155, label %156, !prof !10, !nosanitize !8

155:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

156:                                              ; preds = %147
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !8
  %158 = getelementptr inbounds nuw i8, ptr %58, i64 10
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = zext i8 %159 to i64
  %161 = add i64 %152, %160
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %157, i64 %161), !nosanitize !8
  %163 = extractvalue { i64, i1 } %162, 1, !nosanitize !8
  br i1 %163, label %164, label %165, !prof !10, !nosanitize !8

164:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

165:                                              ; preds = %156
  %166 = extractvalue { i64, i1 } %162, 0, !nosanitize !8
  %167 = getelementptr inbounds nuw i8, ptr %58, i64 11
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = zext i8 %168 to i64
  %170 = add i64 %161, %169
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %170), !nosanitize !8
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !8
  br i1 %172, label %173, label %174, !prof !10, !nosanitize !8

173:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

174:                                              ; preds = %165
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !8
  %176 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %177 = load i8, ptr %176, align 1, !tbaa !5
  %178 = zext i8 %177 to i64
  %179 = add i64 %170, %178
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %179), !nosanitize !8
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !8
  br i1 %181, label %182, label %183, !prof !10, !nosanitize !8

182:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

183:                                              ; preds = %174
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !8
  %185 = getelementptr inbounds nuw i8, ptr %58, i64 13
  %186 = load i8, ptr %185, align 1, !tbaa !5
  %187 = zext i8 %186 to i64
  %188 = add i64 %179, %187
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %188), !nosanitize !8
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !8
  br i1 %190, label %191, label %192, !prof !10, !nosanitize !8

191:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

192:                                              ; preds = %183
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !8
  %194 = getelementptr inbounds nuw i8, ptr %58, i64 14
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = zext i8 %195 to i64
  %197 = add i64 %188, %196
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %197), !nosanitize !8
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !8
  br i1 %199, label %200, label %201, !prof !10, !nosanitize !8

200:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

201:                                              ; preds = %192
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !8
  %203 = getelementptr inbounds nuw i8, ptr %58, i64 15
  %204 = load i8, ptr %203, align 1, !tbaa !5
  %205 = zext i8 %204 to i64
  %206 = add i64 %197, %205
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %206), !nosanitize !8
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !8
  br i1 %208, label %209, label %210, !prof !10, !nosanitize !8

209:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

210:                                              ; preds = %201
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !8
  %212 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %213 = add nsw i32 %60, -1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %56, !llvm.loop !14

215:                                              ; preds = %210
  %216 = urem i64 %206, 65521
  %217 = urem i64 %211, 65521
  %218 = icmp ugt i64 %54, 5551
  br i1 %218, label %.preheader9, label %219, !llvm.loop !15

219:                                              ; preds = %215
  %220 = icmp eq i64 %54, 0
  br i1 %220, label %400, label %221

221:                                              ; preds = %219
  %222 = icmp samesign ugt i64 %54, 15
  br i1 %222, label %.preheader259, label %.loopexit8

.loopexit8:                                       ; preds = %376, %221
  %223 = phi i64 [ %216, %221 ], [ %372, %376 ]
  %224 = phi ptr [ %55, %221 ], [ %378, %376 ]
  %225 = phi i64 [ %54, %221 ], [ %234, %376 ]
  %226 = phi i64 [ %217, %221 ], [ %377, %376 ]
  %227 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %225, i64 1), !nosanitize !8
  %228 = extractvalue { i64, i1 } %227, 1, !nosanitize !8
  br i1 %228, label %.loopexit7, label %.preheader6, !prof !9, !nosanitize !8

229:                                              ; preds = %.preheader259, %376
  %230 = phi i64 [ %377, %376 ], [ %.ph, %.preheader259 ]
  %231 = phi i64 [ %234, %376 ], [ %.ph260, %.preheader259 ]
  %232 = phi ptr [ %378, %376 ], [ %.ph261, %.preheader259 ]
  %233 = phi i64 [ %372, %376 ], [ %.ph262, %.preheader259 ]
  %234 = add nsw i64 %231, -16
  %235 = load i8, ptr %232, align 1, !tbaa !5
  %236 = zext i8 %235 to i64
  %237 = add i64 %233, %236
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 %237), !nosanitize !8
  %239 = extractvalue { i64, i1 } %238, 1, !nosanitize !8
  br i1 %239, label %240, label %241, !prof !10, !nosanitize !8

240:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

241:                                              ; preds = %229
  %242 = extractvalue { i64, i1 } %238, 0, !nosanitize !8
  %243 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i64
  %246 = add i64 %237, %245
  %247 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 %246), !nosanitize !8
  %248 = extractvalue { i64, i1 } %247, 1, !nosanitize !8
  br i1 %248, label %249, label %250, !prof !10, !nosanitize !8

249:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

250:                                              ; preds = %241
  %251 = extractvalue { i64, i1 } %247, 0, !nosanitize !8
  %252 = getelementptr inbounds nuw i8, ptr %232, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !5
  %254 = zext i8 %253 to i64
  %255 = add i64 %246, %254
  %256 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 %255), !nosanitize !8
  %257 = extractvalue { i64, i1 } %256, 1, !nosanitize !8
  br i1 %257, label %258, label %259, !prof !10, !nosanitize !8

258:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

259:                                              ; preds = %250
  %260 = extractvalue { i64, i1 } %256, 0, !nosanitize !8
  %261 = getelementptr inbounds nuw i8, ptr %232, i64 3
  %262 = load i8, ptr %261, align 1, !tbaa !5
  %263 = zext i8 %262 to i64
  %264 = add i64 %255, %263
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 %264), !nosanitize !8
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !8
  br i1 %266, label %267, label %268, !prof !10, !nosanitize !8

267:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

268:                                              ; preds = %259
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !8
  %270 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %271 = load i8, ptr %270, align 1, !tbaa !5
  %272 = zext i8 %271 to i64
  %273 = add i64 %264, %272
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %269, i64 %273), !nosanitize !8
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !8
  br i1 %275, label %276, label %277, !prof !10, !nosanitize !8

276:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

277:                                              ; preds = %268
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !8
  %279 = getelementptr inbounds nuw i8, ptr %232, i64 5
  %280 = load i8, ptr %279, align 1, !tbaa !5
  %281 = zext i8 %280 to i64
  %282 = add i64 %273, %281
  %283 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %278, i64 %282), !nosanitize !8
  %284 = extractvalue { i64, i1 } %283, 1, !nosanitize !8
  br i1 %284, label %285, label %286, !prof !10, !nosanitize !8

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

286:                                              ; preds = %277
  %287 = extractvalue { i64, i1 } %283, 0, !nosanitize !8
  %288 = getelementptr inbounds nuw i8, ptr %232, i64 6
  %289 = load i8, ptr %288, align 1, !tbaa !5
  %290 = zext i8 %289 to i64
  %291 = add i64 %282, %290
  %292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %291), !nosanitize !8
  %293 = extractvalue { i64, i1 } %292, 1, !nosanitize !8
  br i1 %293, label %294, label %295, !prof !10, !nosanitize !8

294:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

295:                                              ; preds = %286
  %296 = extractvalue { i64, i1 } %292, 0, !nosanitize !8
  %297 = getelementptr inbounds nuw i8, ptr %232, i64 7
  %298 = load i8, ptr %297, align 1, !tbaa !5
  %299 = zext i8 %298 to i64
  %300 = add i64 %291, %299
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 %300), !nosanitize !8
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !8
  br i1 %302, label %303, label %304, !prof !10, !nosanitize !8

303:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

304:                                              ; preds = %295
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !8
  %306 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %307 = load i8, ptr %306, align 1, !tbaa !5
  %308 = zext i8 %307 to i64
  %309 = add i64 %300, %308
  %310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 %309), !nosanitize !8
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !8
  br i1 %311, label %312, label %313, !prof !10, !nosanitize !8

312:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

313:                                              ; preds = %304
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !8
  %315 = getelementptr inbounds nuw i8, ptr %232, i64 9
  %316 = load i8, ptr %315, align 1, !tbaa !5
  %317 = zext i8 %316 to i64
  %318 = add i64 %309, %317
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 %318), !nosanitize !8
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !8
  br i1 %320, label %321, label %322, !prof !10, !nosanitize !8

321:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

322:                                              ; preds = %313
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !8
  %324 = getelementptr inbounds nuw i8, ptr %232, i64 10
  %325 = load i8, ptr %324, align 1, !tbaa !5
  %326 = zext i8 %325 to i64
  %327 = add i64 %318, %326
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 %327), !nosanitize !8
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !8
  br i1 %329, label %330, label %331, !prof !10, !nosanitize !8

330:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

331:                                              ; preds = %322
  %332 = extractvalue { i64, i1 } %328, 0, !nosanitize !8
  %333 = getelementptr inbounds nuw i8, ptr %232, i64 11
  %334 = load i8, ptr %333, align 1, !tbaa !5
  %335 = zext i8 %334 to i64
  %336 = add i64 %327, %335
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %332, i64 %336), !nosanitize !8
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !8
  br i1 %338, label %339, label %340, !prof !10, !nosanitize !8

339:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

340:                                              ; preds = %331
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !8
  %342 = getelementptr inbounds nuw i8, ptr %232, i64 12
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = zext i8 %343 to i64
  %345 = add i64 %336, %344
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 %345), !nosanitize !8
  %347 = extractvalue { i64, i1 } %346, 1, !nosanitize !8
  br i1 %347, label %348, label %349, !prof !10, !nosanitize !8

348:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

349:                                              ; preds = %340
  %350 = extractvalue { i64, i1 } %346, 0, !nosanitize !8
  %351 = getelementptr inbounds nuw i8, ptr %232, i64 13
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = zext i8 %352 to i64
  %354 = add i64 %345, %353
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 %354), !nosanitize !8
  %356 = extractvalue { i64, i1 } %355, 1, !nosanitize !8
  br i1 %356, label %357, label %358, !prof !10, !nosanitize !8

357:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

358:                                              ; preds = %349
  %359 = extractvalue { i64, i1 } %355, 0, !nosanitize !8
  %360 = getelementptr inbounds nuw i8, ptr %232, i64 14
  %361 = load i8, ptr %360, align 1, !tbaa !5
  %362 = zext i8 %361 to i64
  %363 = add i64 %354, %362
  %364 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %363), !nosanitize !8
  %365 = extractvalue { i64, i1 } %364, 1, !nosanitize !8
  br i1 %365, label %366, label %367, !prof !10, !nosanitize !8

366:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

367:                                              ; preds = %358
  %368 = extractvalue { i64, i1 } %364, 0, !nosanitize !8
  %369 = getelementptr inbounds nuw i8, ptr %232, i64 15
  %370 = load i8, ptr %369, align 1, !tbaa !5
  %371 = zext i8 %370 to i64
  %372 = add i64 %363, %371
  %373 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %372), !nosanitize !8
  %374 = extractvalue { i64, i1 } %373, 1, !nosanitize !8
  br i1 %374, label %375, label %376, !prof !10, !nosanitize !8

375:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

376:                                              ; preds = %367
  %377 = extractvalue { i64, i1 } %373, 0, !nosanitize !8
  %378 = getelementptr inbounds nuw i8, ptr %232, i64 16
  %379 = icmp ugt i64 %234, 15
  br i1 %379, label %229, label %.loopexit8, !llvm.loop !16

.loopexit7:                                       ; preds = %396, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader6:                                      ; preds = %.loopexit8, %396
  %380 = phi { i64, i1 } [ %398, %396 ], [ %227, %.loopexit8 ]
  %381 = phi i64 [ %397, %396 ], [ %226, %.loopexit8 ]
  %382 = phi ptr [ %385, %396 ], [ %224, %.loopexit8 ]
  %383 = phi i64 [ %389, %396 ], [ %223, %.loopexit8 ]
  %384 = extractvalue { i64, i1 } %380, 0
  %385 = getelementptr inbounds nuw i8, ptr %382, i64 1
  %386 = load i8, ptr %382, align 1, !tbaa !5
  %387 = zext i8 %386 to i64
  %388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 %387), !nosanitize !8
  %389 = extractvalue { i64, i1 } %388, 0, !nosanitize !8
  %390 = extractvalue { i64, i1 } %388, 1, !nosanitize !8
  br i1 %390, label %391, label %392, !prof !10, !nosanitize !8

391:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

392:                                              ; preds = %.preheader6
  %393 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %389), !nosanitize !8
  %394 = extractvalue { i64, i1 } %393, 1, !nosanitize !8
  br i1 %394, label %395, label %396, !prof !10, !nosanitize !8

395:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

396:                                              ; preds = %392
  %397 = extractvalue { i64, i1 } %393, 0, !nosanitize !8
  %398 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %384, i64 1), !nosanitize !8
  %399 = extractvalue { i64, i1 } %398, 1, !nosanitize !8
  br i1 %399, label %.loopexit7, label %.preheader6, !prof !11, !llvm.loop !17, !nosanitize !8

400:                                              ; preds = %219
  %401 = shl nuw nsw i64 %217, 16
  %402 = or disjoint i64 %401, %216
  br label %403

403:                                              ; preds = %400, %21, %8
  %404 = phi i64 [ %20, %8 ], [ %402, %400 ], [ 1, %21 ]
  ret i64 %404
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = lshr i64 %0, 16
  %6 = and i64 %5, 65535
  %7 = and i64 %0, 65535
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = icmp samesign ugt i64 %12, 65520
  %14 = add nsw i64 %12, -65521
  %15 = select i1 %13, i64 %14, i64 %12
  %16 = add nsw i64 %15, %6
  %17 = icmp ugt i64 %16, 65520
  %18 = shl nsw i64 %16, 16
  %19 = add nsw i64 %18, -4293984256
  %20 = select i1 %17, i64 %19, i64 %18
  %21 = or i64 %20, %15
  br label %404

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %404, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %.preheader9, label %.preheader259

.preheader259:                                    ; preds = %222, %26
  %.ph = phi i64 [ %218, %222 ], [ %6, %26 ]
  %.ph260 = phi i64 [ %55, %222 ], [ %4, %26 ]
  %.ph261 = phi ptr [ %56, %222 ], [ %1, %26 ]
  %.ph262 = phi i64 [ %217, %222 ], [ %7, %26 ]
  br label %230

28:                                               ; preds = %24
  %29 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !8
  br i1 %30, label %.loopexit, label %.preheader, !prof !9, !nosanitize !8

.loopexit:                                        ; preds = %47, %28
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader:                                       ; preds = %28, %47
  %31 = phi { i64, i1 } [ %49, %47 ], [ %29, %28 ]
  %32 = phi i64 [ %48, %47 ], [ %6, %28 ]
  %33 = phi ptr [ %36, %47 ], [ %1, %28 ]
  %34 = phi i64 [ %40, %47 ], [ %7, %28 ]
  %35 = extractvalue { i64, i1 } %31, 0
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !5
  %38 = zext i8 %37 to i64
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 %38), !nosanitize !8
  %40 = extractvalue { i64, i1 } %39, 0, !nosanitize !8
  %41 = extractvalue { i64, i1 } %39, 1, !nosanitize !8
  br i1 %41, label %42, label %43, !prof !10, !nosanitize !8

42:                                               ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

43:                                               ; preds = %.preheader
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %32, i64 %40), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !10, !nosanitize !8

46:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %43
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 1), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %.loopexit, label %.preheader, !prof !11, !llvm.loop !12, !nosanitize !8

.preheader9:                                      ; preds = %26, %216
  %51 = phi i64 [ %218, %216 ], [ %6, %26 ]
  %52 = phi i64 [ %55, %216 ], [ %4, %26 ]
  %53 = phi ptr [ %56, %216 ], [ %1, %26 ]
  %54 = phi i64 [ %217, %216 ], [ %7, %26 ]
  %55 = add i64 %52, -5552
  %56 = getelementptr i8, ptr %53, i64 5552
  br label %57

57:                                               ; preds = %211, %.preheader9
  %58 = phi i64 [ %54, %.preheader9 ], [ %207, %211 ]
  %59 = phi ptr [ %53, %.preheader9 ], [ %213, %211 ]
  %60 = phi i64 [ %51, %.preheader9 ], [ %212, %211 ]
  %61 = phi i32 [ 347, %.preheader9 ], [ %214, %211 ]
  %62 = load i8, ptr %59, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  %64 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %58, i64 %63), !nosanitize !8
  %65 = extractvalue { i64, i1 } %64, 0, !nosanitize !8
  %66 = extractvalue { i64, i1 } %64, 1, !nosanitize !8
  br i1 %66, label %67, label %68, !prof !10, !nosanitize !8

67:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

68:                                               ; preds = %57
  %69 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %60, i64 %65), !nosanitize !8
  %70 = extractvalue { i64, i1 } %69, 0, !nosanitize !8
  %71 = extractvalue { i64, i1 } %69, 1, !nosanitize !8
  br i1 %71, label %72, label %73, !prof !10, !nosanitize !8

72:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = zext i8 %75 to i64
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 %76), !nosanitize !8
  %78 = extractvalue { i64, i1 } %77, 0, !nosanitize !8
  %79 = extractvalue { i64, i1 } %77, 1, !nosanitize !8
  br i1 %79, label %80, label %81, !prof !10, !nosanitize !8

80:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

81:                                               ; preds = %73
  %82 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %78), !nosanitize !8
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !8
  br i1 %83, label %84, label %85, !prof !10, !nosanitize !8

84:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

85:                                               ; preds = %81
  %86 = extractvalue { i64, i1 } %82, 0, !nosanitize !8
  %87 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = zext i8 %88 to i64
  %90 = add i64 %78, %89
  %91 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 %90), !nosanitize !8
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !8
  br i1 %92, label %93, label %94, !prof !10, !nosanitize !8

93:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

94:                                               ; preds = %85
  %95 = extractvalue { i64, i1 } %91, 0, !nosanitize !8
  %96 = getelementptr inbounds nuw i8, ptr %59, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = zext i8 %97 to i64
  %99 = add i64 %90, %98
  %100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %99), !nosanitize !8
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !8
  br i1 %101, label %102, label %103, !prof !10, !nosanitize !8

102:                                              ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

103:                                              ; preds = %94
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !8
  %105 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = zext i8 %106 to i64
  %108 = add i64 %99, %107
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 %108), !nosanitize !8
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !8
  br i1 %110, label %111, label %112, !prof !10, !nosanitize !8

111:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

112:                                              ; preds = %103
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !8
  %114 = getelementptr inbounds nuw i8, ptr %59, i64 5
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = zext i8 %115 to i64
  %117 = add i64 %108, %116
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 %117), !nosanitize !8
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !8
  br i1 %119, label %120, label %121, !prof !10, !nosanitize !8

120:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

121:                                              ; preds = %112
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !8
  %123 = getelementptr inbounds nuw i8, ptr %59, i64 6
  %124 = load i8, ptr %123, align 1, !tbaa !5
  %125 = zext i8 %124 to i64
  %126 = add i64 %117, %125
  %127 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 %126), !nosanitize !8
  %128 = extractvalue { i64, i1 } %127, 1, !nosanitize !8
  br i1 %128, label %129, label %130, !prof !10, !nosanitize !8

129:                                              ; preds = %121
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

130:                                              ; preds = %121
  %131 = extractvalue { i64, i1 } %127, 0, !nosanitize !8
  %132 = getelementptr inbounds nuw i8, ptr %59, i64 7
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = zext i8 %133 to i64
  %135 = add i64 %126, %134
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 %135), !nosanitize !8
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !8
  br i1 %137, label %138, label %139, !prof !10, !nosanitize !8

138:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

139:                                              ; preds = %130
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !8
  %141 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %142 = load i8, ptr %141, align 1, !tbaa !5
  %143 = zext i8 %142 to i64
  %144 = add i64 %135, %143
  %145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 %144), !nosanitize !8
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !10, !nosanitize !8

147:                                              ; preds = %139
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %139
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !8
  %150 = getelementptr inbounds nuw i8, ptr %59, i64 9
  %151 = load i8, ptr %150, align 1, !tbaa !5
  %152 = zext i8 %151 to i64
  %153 = add i64 %144, %152
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %153), !nosanitize !8
  %155 = extractvalue { i64, i1 } %154, 1, !nosanitize !8
  br i1 %155, label %156, label %157, !prof !10, !nosanitize !8

156:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

157:                                              ; preds = %148
  %158 = extractvalue { i64, i1 } %154, 0, !nosanitize !8
  %159 = getelementptr inbounds nuw i8, ptr %59, i64 10
  %160 = load i8, ptr %159, align 1, !tbaa !5
  %161 = zext i8 %160 to i64
  %162 = add i64 %153, %161
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %158, i64 %162), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %164, label %165, label %166, !prof !10, !nosanitize !8

165:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

166:                                              ; preds = %157
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  %168 = getelementptr inbounds nuw i8, ptr %59, i64 11
  %169 = load i8, ptr %168, align 1, !tbaa !5
  %170 = zext i8 %169 to i64
  %171 = add i64 %162, %170
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %171), !nosanitize !8
  %173 = extractvalue { i64, i1 } %172, 1, !nosanitize !8
  br i1 %173, label %174, label %175, !prof !10, !nosanitize !8

174:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

175:                                              ; preds = %166
  %176 = extractvalue { i64, i1 } %172, 0, !nosanitize !8
  %177 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = zext i8 %178 to i64
  %180 = add i64 %171, %179
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 %180), !nosanitize !8
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !8
  br i1 %182, label %183, label %184, !prof !10, !nosanitize !8

183:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

184:                                              ; preds = %175
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !8
  %186 = getelementptr inbounds nuw i8, ptr %59, i64 13
  %187 = load i8, ptr %186, align 1, !tbaa !5
  %188 = zext i8 %187 to i64
  %189 = add i64 %180, %188
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %189), !nosanitize !8
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !8
  br i1 %191, label %192, label %193, !prof !10, !nosanitize !8

192:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

193:                                              ; preds = %184
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !8
  %195 = getelementptr inbounds nuw i8, ptr %59, i64 14
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = zext i8 %196 to i64
  %198 = add i64 %189, %197
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 %198), !nosanitize !8
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !8
  br i1 %200, label %201, label %202, !prof !10, !nosanitize !8

201:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

202:                                              ; preds = %193
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !8
  %204 = getelementptr inbounds nuw i8, ptr %59, i64 15
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = zext i8 %205 to i64
  %207 = add i64 %198, %206
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %207), !nosanitize !8
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !8
  br i1 %209, label %210, label %211, !prof !10, !nosanitize !8

210:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

211:                                              ; preds = %202
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !8
  %213 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %214 = add nsw i32 %61, -1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %57, !llvm.loop !14

216:                                              ; preds = %211
  %217 = urem i64 %207, 65521
  %218 = urem i64 %212, 65521
  %219 = icmp ugt i64 %55, 5551
  br i1 %219, label %.preheader9, label %220, !llvm.loop !15

220:                                              ; preds = %216
  %221 = icmp eq i64 %55, 0
  br i1 %221, label %401, label %222

222:                                              ; preds = %220
  %223 = icmp samesign ugt i64 %55, 15
  br i1 %223, label %.preheader259, label %.loopexit8

.loopexit8:                                       ; preds = %377, %222
  %224 = phi i64 [ %217, %222 ], [ %373, %377 ]
  %225 = phi ptr [ %56, %222 ], [ %379, %377 ]
  %226 = phi i64 [ %55, %222 ], [ %235, %377 ]
  %227 = phi i64 [ %218, %222 ], [ %378, %377 ]
  %228 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %226, i64 1), !nosanitize !8
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !8
  br i1 %229, label %.loopexit7, label %.preheader6, !prof !9, !nosanitize !8

230:                                              ; preds = %.preheader259, %377
  %231 = phi i64 [ %378, %377 ], [ %.ph, %.preheader259 ]
  %232 = phi i64 [ %235, %377 ], [ %.ph260, %.preheader259 ]
  %233 = phi ptr [ %379, %377 ], [ %.ph261, %.preheader259 ]
  %234 = phi i64 [ %373, %377 ], [ %.ph262, %.preheader259 ]
  %235 = add i64 %232, -16
  %236 = load i8, ptr %233, align 1, !tbaa !5
  %237 = zext i8 %236 to i64
  %238 = add i64 %234, %237
  %239 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %231, i64 %238), !nosanitize !8
  %240 = extractvalue { i64, i1 } %239, 1, !nosanitize !8
  br i1 %240, label %241, label %242, !prof !10, !nosanitize !8

241:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

242:                                              ; preds = %230
  %243 = extractvalue { i64, i1 } %239, 0, !nosanitize !8
  %244 = getelementptr inbounds nuw i8, ptr %233, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !5
  %246 = zext i8 %245 to i64
  %247 = add i64 %238, %246
  %248 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 %247), !nosanitize !8
  %249 = extractvalue { i64, i1 } %248, 1, !nosanitize !8
  br i1 %249, label %250, label %251, !prof !10, !nosanitize !8

250:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

251:                                              ; preds = %242
  %252 = extractvalue { i64, i1 } %248, 0, !nosanitize !8
  %253 = getelementptr inbounds nuw i8, ptr %233, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = zext i8 %254 to i64
  %256 = add i64 %247, %255
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %252, i64 %256), !nosanitize !8
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !8
  br i1 %258, label %259, label %260, !prof !10, !nosanitize !8

259:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

260:                                              ; preds = %251
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !8
  %262 = getelementptr inbounds nuw i8, ptr %233, i64 3
  %263 = load i8, ptr %262, align 1, !tbaa !5
  %264 = zext i8 %263 to i64
  %265 = add i64 %256, %264
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 %265), !nosanitize !8
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !8
  br i1 %267, label %268, label %269, !prof !10, !nosanitize !8

268:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

269:                                              ; preds = %260
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !8
  %271 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %272 = load i8, ptr %271, align 1, !tbaa !5
  %273 = zext i8 %272 to i64
  %274 = add i64 %265, %273
  %275 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 %274), !nosanitize !8
  %276 = extractvalue { i64, i1 } %275, 1, !nosanitize !8
  br i1 %276, label %277, label %278, !prof !10, !nosanitize !8

277:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

278:                                              ; preds = %269
  %279 = extractvalue { i64, i1 } %275, 0, !nosanitize !8
  %280 = getelementptr inbounds nuw i8, ptr %233, i64 5
  %281 = load i8, ptr %280, align 1, !tbaa !5
  %282 = zext i8 %281 to i64
  %283 = add i64 %274, %282
  %284 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 %283), !nosanitize !8
  %285 = extractvalue { i64, i1 } %284, 1, !nosanitize !8
  br i1 %285, label %286, label %287, !prof !10, !nosanitize !8

286:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

287:                                              ; preds = %278
  %288 = extractvalue { i64, i1 } %284, 0, !nosanitize !8
  %289 = getelementptr inbounds nuw i8, ptr %233, i64 6
  %290 = load i8, ptr %289, align 1, !tbaa !5
  %291 = zext i8 %290 to i64
  %292 = add i64 %283, %291
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 %292), !nosanitize !8
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !8
  br i1 %294, label %295, label %296, !prof !10, !nosanitize !8

295:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

296:                                              ; preds = %287
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !8
  %298 = getelementptr inbounds nuw i8, ptr %233, i64 7
  %299 = load i8, ptr %298, align 1, !tbaa !5
  %300 = zext i8 %299 to i64
  %301 = add i64 %292, %300
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 %301), !nosanitize !8
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !8
  br i1 %303, label %304, label %305, !prof !10, !nosanitize !8

304:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

305:                                              ; preds = %296
  %306 = extractvalue { i64, i1 } %302, 0, !nosanitize !8
  %307 = getelementptr inbounds nuw i8, ptr %233, i64 8
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = zext i8 %308 to i64
  %310 = add i64 %301, %309
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %306, i64 %310), !nosanitize !8
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !8
  br i1 %312, label %313, label %314, !prof !10, !nosanitize !8

313:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

314:                                              ; preds = %305
  %315 = extractvalue { i64, i1 } %311, 0, !nosanitize !8
  %316 = getelementptr inbounds nuw i8, ptr %233, i64 9
  %317 = load i8, ptr %316, align 1, !tbaa !5
  %318 = zext i8 %317 to i64
  %319 = add i64 %310, %318
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %319), !nosanitize !8
  %321 = extractvalue { i64, i1 } %320, 1, !nosanitize !8
  br i1 %321, label %322, label %323, !prof !10, !nosanitize !8

322:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

323:                                              ; preds = %314
  %324 = extractvalue { i64, i1 } %320, 0, !nosanitize !8
  %325 = getelementptr inbounds nuw i8, ptr %233, i64 10
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i64
  %328 = add i64 %319, %327
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %324, i64 %328), !nosanitize !8
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !8
  br i1 %330, label %331, label %332, !prof !10, !nosanitize !8

331:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

332:                                              ; preds = %323
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !8
  %334 = getelementptr inbounds nuw i8, ptr %233, i64 11
  %335 = load i8, ptr %334, align 1, !tbaa !5
  %336 = zext i8 %335 to i64
  %337 = add i64 %328, %336
  %338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 %337), !nosanitize !8
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !8
  br i1 %339, label %340, label %341, !prof !10, !nosanitize !8

340:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

341:                                              ; preds = %332
  %342 = extractvalue { i64, i1 } %338, 0, !nosanitize !8
  %343 = getelementptr inbounds nuw i8, ptr %233, i64 12
  %344 = load i8, ptr %343, align 1, !tbaa !5
  %345 = zext i8 %344 to i64
  %346 = add i64 %337, %345
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %342, i64 %346), !nosanitize !8
  %348 = extractvalue { i64, i1 } %347, 1, !nosanitize !8
  br i1 %348, label %349, label %350, !prof !10, !nosanitize !8

349:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

350:                                              ; preds = %341
  %351 = extractvalue { i64, i1 } %347, 0, !nosanitize !8
  %352 = getelementptr inbounds nuw i8, ptr %233, i64 13
  %353 = load i8, ptr %352, align 1, !tbaa !5
  %354 = zext i8 %353 to i64
  %355 = add i64 %346, %354
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 %355), !nosanitize !8
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !8
  br i1 %357, label %358, label %359, !prof !10, !nosanitize !8

358:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

359:                                              ; preds = %350
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !8
  %361 = getelementptr inbounds nuw i8, ptr %233, i64 14
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = zext i8 %362 to i64
  %364 = add i64 %355, %363
  %365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 %364), !nosanitize !8
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !8
  br i1 %366, label %367, label %368, !prof !10, !nosanitize !8

367:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

368:                                              ; preds = %359
  %369 = extractvalue { i64, i1 } %365, 0, !nosanitize !8
  %370 = getelementptr inbounds nuw i8, ptr %233, i64 15
  %371 = load i8, ptr %370, align 1, !tbaa !5
  %372 = zext i8 %371 to i64
  %373 = add i64 %364, %372
  %374 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %369, i64 %373), !nosanitize !8
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !8
  br i1 %375, label %376, label %377, !prof !10, !nosanitize !8

376:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

377:                                              ; preds = %368
  %378 = extractvalue { i64, i1 } %374, 0, !nosanitize !8
  %379 = getelementptr inbounds nuw i8, ptr %233, i64 16
  %380 = icmp ugt i64 %235, 15
  br i1 %380, label %230, label %.loopexit8, !llvm.loop !16

.loopexit7:                                       ; preds = %397, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader6:                                      ; preds = %.loopexit8, %397
  %381 = phi { i64, i1 } [ %399, %397 ], [ %228, %.loopexit8 ]
  %382 = phi i64 [ %398, %397 ], [ %227, %.loopexit8 ]
  %383 = phi ptr [ %386, %397 ], [ %225, %.loopexit8 ]
  %384 = phi i64 [ %390, %397 ], [ %224, %.loopexit8 ]
  %385 = extractvalue { i64, i1 } %381, 0
  %386 = getelementptr inbounds nuw i8, ptr %383, i64 1
  %387 = load i8, ptr %383, align 1, !tbaa !5
  %388 = zext i8 %387 to i64
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %384, i64 %388), !nosanitize !8
  %390 = extractvalue { i64, i1 } %389, 0, !nosanitize !8
  %391 = extractvalue { i64, i1 } %389, 1, !nosanitize !8
  br i1 %391, label %392, label %393, !prof !10, !nosanitize !8

392:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

393:                                              ; preds = %.preheader6
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %382, i64 %390), !nosanitize !8
  %395 = extractvalue { i64, i1 } %394, 1, !nosanitize !8
  br i1 %395, label %396, label %397, !prof !10, !nosanitize !8

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

397:                                              ; preds = %393
  %398 = extractvalue { i64, i1 } %394, 0, !nosanitize !8
  %399 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %385, i64 1), !nosanitize !8
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !8
  br i1 %400, label %.loopexit7, label %.preheader6, !prof !11, !llvm.loop !17, !nosanitize !8

401:                                              ; preds = %220
  %402 = shl nuw nsw i64 %218, 16
  %403 = or disjoint i64 %402, %217
  br label %404

404:                                              ; preds = %401, %22, %9
  %405 = phi i64 [ %21, %9 ], [ %403, %401 ], [ 1, %22 ]
  ret i64 %405
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{}
!9 = !{!"branch_weights", i32 1, i32 127}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"branch_weights", i32 127, i32 134217473}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
