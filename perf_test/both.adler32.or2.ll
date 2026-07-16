; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.adler32.or.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/adler32.c"
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
  %9 = load i8, ptr %1, align 1, !tbaa !8
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
  br label %411

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %411, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %.preheader9, label %.preheader267

.preheader267:                                    ; preds = %221, %25
  %.ph = phi i64 [ %217, %221 ], [ %5, %25 ]
  %.ph268 = phi i64 [ %54, %221 ], [ %2, %25 ]
  %.ph269 = phi ptr [ %55, %221 ], [ %1, %25 ]
  %.ph270 = phi i64 [ %216, %221 ], [ %6, %25 ]
  br label %229

27:                                               ; preds = %23
  %28 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !9
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !9
  br i1 %29, label %.loopexit, label %.preheader, !prof !10, !nosanitize !9

.loopexit:                                        ; preds = %46, %27
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader:                                       ; preds = %27, %46
  %30 = phi { i64, i1 } [ %48, %46 ], [ %28, %27 ]
  %31 = phi i64 [ %47, %46 ], [ %5, %27 ]
  %32 = phi ptr [ %35, %46 ], [ %1, %27 ]
  %33 = phi i64 [ %39, %46 ], [ %6, %27 ]
  %34 = extractvalue { i64, i1 } %30, 0
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %36 = load i8, ptr %32, align 1, !tbaa !8
  %37 = zext i8 %36 to i64
  %38 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %37), !nosanitize !9
  %39 = extractvalue { i64, i1 } %38, 0, !nosanitize !9
  %40 = extractvalue { i64, i1 } %38, 1, !nosanitize !9
  br i1 %40, label %41, label %42, !prof !11, !nosanitize !9

41:                                               ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

42:                                               ; preds = %.preheader
  %43 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %39), !nosanitize !9
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !9
  br i1 %44, label %45, label %46, !prof !11, !nosanitize !9

45:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !9
  %48 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 1), !nosanitize !9
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !9
  br i1 %49, label %.loopexit, label %.preheader, !prof !12, !llvm.loop !13, !nosanitize !9

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
  %61 = load i8, ptr %58, align 1, !tbaa !8
  %62 = zext i8 %61 to i64
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 %62), !nosanitize !9
  %64 = extractvalue { i64, i1 } %63, 0, !nosanitize !9
  %65 = extractvalue { i64, i1 } %63, 1, !nosanitize !9
  br i1 %65, label %66, label %67, !prof !11, !nosanitize !9

66:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

67:                                               ; preds = %56
  %68 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 %64), !nosanitize !9
  %69 = extractvalue { i64, i1 } %68, 0, !nosanitize !9
  %70 = extractvalue { i64, i1 } %68, 1, !nosanitize !9
  br i1 %70, label %71, label %72, !prof !11, !nosanitize !9

71:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !8
  %75 = zext i8 %74 to i64
  %76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 %75), !nosanitize !9
  %77 = extractvalue { i64, i1 } %76, 0, !nosanitize !9
  %78 = extractvalue { i64, i1 } %76, 1, !nosanitize !9
  br i1 %78, label %79, label %80, !prof !11, !nosanitize !9

79:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

80:                                               ; preds = %72
  %81 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 %77), !nosanitize !9
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !9
  br i1 %82, label %83, label %84, !prof !11, !nosanitize !9

83:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

84:                                               ; preds = %80
  %85 = extractvalue { i64, i1 } %81, 0, !nosanitize !9
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !8
  %88 = zext i8 %87 to i64
  %89 = add i64 %77, %88
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 %89), !nosanitize !9
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !9
  br i1 %91, label %92, label %93, !prof !11, !nosanitize !9

92:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

93:                                               ; preds = %84
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !9
  %95 = getelementptr inbounds nuw i8, ptr %58, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !8
  %97 = zext i8 %96 to i64
  %98 = add i64 %89, %97
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %98), !nosanitize !9
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !9
  br i1 %100, label %101, label %102, !prof !11, !nosanitize !9

101:                                              ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

102:                                              ; preds = %93
  %103 = extractvalue { i64, i1 } %99, 0, !nosanitize !9
  %104 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %105 = load i8, ptr %104, align 1, !tbaa !8
  %106 = zext i8 %105 to i64
  %107 = add i64 %98, %106
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %107), !nosanitize !9
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !9
  br i1 %109, label %110, label %111, !prof !11, !nosanitize !9

110:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

111:                                              ; preds = %102
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !9
  %113 = getelementptr inbounds nuw i8, ptr %58, i64 5
  %114 = load i8, ptr %113, align 1, !tbaa !8
  %115 = zext i8 %114 to i64
  %116 = add i64 %107, %115
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %116), !nosanitize !9
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !9
  br i1 %118, label %119, label %120, !prof !11, !nosanitize !9

119:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

120:                                              ; preds = %111
  %121 = extractvalue { i64, i1 } %117, 0, !nosanitize !9
  %122 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %123 = load i8, ptr %122, align 1, !tbaa !8
  %124 = zext i8 %123 to i64
  %125 = add i64 %116, %124
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %125), !nosanitize !9
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !9
  br i1 %127, label %128, label %129, !prof !11, !nosanitize !9

128:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

129:                                              ; preds = %120
  %130 = extractvalue { i64, i1 } %126, 0, !nosanitize !9
  %131 = getelementptr inbounds nuw i8, ptr %58, i64 7
  %132 = load i8, ptr %131, align 1, !tbaa !8
  %133 = zext i8 %132 to i64
  %134 = add i64 %125, %133
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 %134), !nosanitize !9
  %136 = extractvalue { i64, i1 } %135, 1, !nosanitize !9
  br i1 %136, label %137, label %138, !prof !11, !nosanitize !9

137:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

138:                                              ; preds = %129
  %139 = extractvalue { i64, i1 } %135, 0, !nosanitize !9
  %140 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %141 = load i8, ptr %140, align 1, !tbaa !8
  %142 = zext i8 %141 to i64
  %143 = add i64 %134, %142
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %143), !nosanitize !9
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !9
  br i1 %145, label %146, label %147, !prof !11, !nosanitize !9

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

147:                                              ; preds = %138
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !9
  %149 = getelementptr inbounds nuw i8, ptr %58, i64 9
  %150 = load i8, ptr %149, align 1, !tbaa !8
  %151 = zext i8 %150 to i64
  %152 = add i64 %143, %151
  %153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %152), !nosanitize !9
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !9
  br i1 %154, label %155, label %156, !prof !11, !nosanitize !9

155:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

156:                                              ; preds = %147
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !9
  %158 = getelementptr inbounds nuw i8, ptr %58, i64 10
  %159 = load i8, ptr %158, align 1, !tbaa !8
  %160 = zext i8 %159 to i64
  %161 = add i64 %152, %160
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %157, i64 %161), !nosanitize !9
  %163 = extractvalue { i64, i1 } %162, 1, !nosanitize !9
  br i1 %163, label %164, label %165, !prof !11, !nosanitize !9

164:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

165:                                              ; preds = %156
  %166 = extractvalue { i64, i1 } %162, 0, !nosanitize !9
  %167 = getelementptr inbounds nuw i8, ptr %58, i64 11
  %168 = load i8, ptr %167, align 1, !tbaa !8
  %169 = zext i8 %168 to i64
  %170 = add i64 %161, %169
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %170), !nosanitize !9
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !9
  br i1 %172, label %173, label %174, !prof !11, !nosanitize !9

173:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

174:                                              ; preds = %165
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !9
  %176 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %177 = load i8, ptr %176, align 1, !tbaa !8
  %178 = zext i8 %177 to i64
  %179 = add i64 %170, %178
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %179), !nosanitize !9
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !9
  br i1 %181, label %182, label %183, !prof !11, !nosanitize !9

182:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

183:                                              ; preds = %174
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !9
  %185 = getelementptr inbounds nuw i8, ptr %58, i64 13
  %186 = load i8, ptr %185, align 1, !tbaa !8
  %187 = zext i8 %186 to i64
  %188 = add i64 %179, %187
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %188), !nosanitize !9
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !9
  br i1 %190, label %191, label %192, !prof !11, !nosanitize !9

191:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

192:                                              ; preds = %183
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !9
  %194 = getelementptr inbounds nuw i8, ptr %58, i64 14
  %195 = load i8, ptr %194, align 1, !tbaa !8
  %196 = zext i8 %195 to i64
  %197 = add i64 %188, %196
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %197), !nosanitize !9
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !9
  br i1 %199, label %200, label %201, !prof !11, !nosanitize !9

200:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

201:                                              ; preds = %192
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !9
  %203 = getelementptr inbounds nuw i8, ptr %58, i64 15
  %204 = load i8, ptr %203, align 1, !tbaa !8
  %205 = zext i8 %204 to i64
  %206 = add i64 %197, %205
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %206), !nosanitize !9
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !9
  br i1 %208, label %209, label %210, !prof !11, !nosanitize !9

209:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

210:                                              ; preds = %201
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !9
  %212 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %213 = add nsw i32 %60, -1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %56, !llvm.loop !15

215:                                              ; preds = %210
  %216 = urem i64 %206, 65521
  %217 = urem i64 %211, 65521
  %218 = icmp ugt i64 %54, 5551
  br i1 %218, label %.preheader9, label %219, !llvm.loop !16

219:                                              ; preds = %215
  %220 = icmp eq i64 %54, 0
  br i1 %220, label %408, label %221

221:                                              ; preds = %219
  %222 = icmp samesign ugt i64 %54, 15
  br i1 %222, label %.preheader267, label %.loopexit8

.loopexit8:                                       ; preds = %384, %221
  %223 = phi i64 [ %216, %221 ], [ %380, %384 ]
  %224 = phi ptr [ %55, %221 ], [ %386, %384 ]
  %225 = phi i64 [ %54, %221 ], [ %234, %384 ]
  %226 = phi i64 [ %217, %221 ], [ %385, %384 ]
  %227 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %225, i64 1), !nosanitize !9
  %228 = extractvalue { i64, i1 } %227, 1, !nosanitize !9
  br i1 %228, label %.loopexit7, label %.preheader6, !prof !10, !nosanitize !9

229:                                              ; preds = %.preheader267, %384
  %230 = phi i64 [ %385, %384 ], [ %.ph, %.preheader267 ]
  %231 = phi i64 [ %234, %384 ], [ %.ph268, %.preheader267 ]
  %232 = phi ptr [ %386, %384 ], [ %.ph269, %.preheader267 ]
  %233 = phi i64 [ %380, %384 ], [ %.ph270, %.preheader267 ]
  %234 = add nsw i64 %231, -16
  %235 = load i8, ptr %232, align 1, !tbaa !8
  %236 = zext i8 %235 to i64
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %236), !nosanitize !9
  %238 = extractvalue { i64, i1 } %237, 0, !nosanitize !9
  %239 = extractvalue { i64, i1 } %237, 1, !nosanitize !9
  br i1 %239, label %240, label %241, !prof !11, !nosanitize !9

240:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

241:                                              ; preds = %229
  %242 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 %238), !nosanitize !9
  %243 = extractvalue { i64, i1 } %242, 0, !nosanitize !9
  %244 = extractvalue { i64, i1 } %242, 1, !nosanitize !9
  br i1 %244, label %245, label %246, !prof !11, !nosanitize !9

245:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

246:                                              ; preds = %241
  %247 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %248 = load i8, ptr %247, align 1, !tbaa !8
  %249 = zext i8 %248 to i64
  %250 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %238, i64 %249), !nosanitize !9
  %251 = extractvalue { i64, i1 } %250, 0, !nosanitize !9
  %252 = extractvalue { i64, i1 } %250, 1, !nosanitize !9
  br i1 %252, label %253, label %254, !prof !11, !nosanitize !9

253:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

254:                                              ; preds = %246
  %255 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 %251), !nosanitize !9
  %256 = extractvalue { i64, i1 } %255, 1, !nosanitize !9
  br i1 %256, label %257, label %258, !prof !11, !nosanitize !9

257:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

258:                                              ; preds = %254
  %259 = extractvalue { i64, i1 } %255, 0, !nosanitize !9
  %260 = getelementptr inbounds nuw i8, ptr %232, i64 2
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = zext i8 %261 to i64
  %263 = add i64 %251, %262
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 %263), !nosanitize !9
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !9
  br i1 %265, label %266, label %267, !prof !11, !nosanitize !9

266:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

267:                                              ; preds = %258
  %268 = extractvalue { i64, i1 } %264, 0, !nosanitize !9
  %269 = getelementptr inbounds nuw i8, ptr %232, i64 3
  %270 = load i8, ptr %269, align 1, !tbaa !8
  %271 = zext i8 %270 to i64
  %272 = add i64 %263, %271
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %268, i64 %272), !nosanitize !9
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !9
  br i1 %274, label %275, label %276, !prof !11, !nosanitize !9

275:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

276:                                              ; preds = %267
  %277 = extractvalue { i64, i1 } %273, 0, !nosanitize !9
  %278 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %279 = load i8, ptr %278, align 1, !tbaa !8
  %280 = zext i8 %279 to i64
  %281 = add i64 %272, %280
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %277, i64 %281), !nosanitize !9
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !9
  br i1 %283, label %284, label %285, !prof !11, !nosanitize !9

284:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

285:                                              ; preds = %276
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !9
  %287 = getelementptr inbounds nuw i8, ptr %232, i64 5
  %288 = load i8, ptr %287, align 1, !tbaa !8
  %289 = zext i8 %288 to i64
  %290 = add i64 %281, %289
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %286, i64 %290), !nosanitize !9
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !9
  br i1 %292, label %293, label %294, !prof !11, !nosanitize !9

293:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

294:                                              ; preds = %285
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !9
  %296 = getelementptr inbounds nuw i8, ptr %232, i64 6
  %297 = load i8, ptr %296, align 1, !tbaa !8
  %298 = zext i8 %297 to i64
  %299 = add i64 %290, %298
  %300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 %299), !nosanitize !9
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !9
  br i1 %301, label %302, label %303, !prof !11, !nosanitize !9

302:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

303:                                              ; preds = %294
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !9
  %305 = getelementptr inbounds nuw i8, ptr %232, i64 7
  %306 = load i8, ptr %305, align 1, !tbaa !8
  %307 = zext i8 %306 to i64
  %308 = add i64 %299, %307
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 %308), !nosanitize !9
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !9
  br i1 %310, label %311, label %312, !prof !11, !nosanitize !9

311:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

312:                                              ; preds = %303
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !9
  %314 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %315 = load i8, ptr %314, align 1, !tbaa !8
  %316 = zext i8 %315 to i64
  %317 = add i64 %308, %316
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %313, i64 %317), !nosanitize !9
  %319 = extractvalue { i64, i1 } %318, 1, !nosanitize !9
  br i1 %319, label %320, label %321, !prof !11, !nosanitize !9

320:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

321:                                              ; preds = %312
  %322 = extractvalue { i64, i1 } %318, 0, !nosanitize !9
  %323 = getelementptr inbounds nuw i8, ptr %232, i64 9
  %324 = load i8, ptr %323, align 1, !tbaa !8
  %325 = zext i8 %324 to i64
  %326 = add i64 %317, %325
  %327 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %322, i64 %326), !nosanitize !9
  %328 = extractvalue { i64, i1 } %327, 1, !nosanitize !9
  br i1 %328, label %329, label %330, !prof !11, !nosanitize !9

329:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

330:                                              ; preds = %321
  %331 = extractvalue { i64, i1 } %327, 0, !nosanitize !9
  %332 = getelementptr inbounds nuw i8, ptr %232, i64 10
  %333 = load i8, ptr %332, align 1, !tbaa !8
  %334 = zext i8 %333 to i64
  %335 = add i64 %326, %334
  %336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %331, i64 %335), !nosanitize !9
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !9
  br i1 %337, label %338, label %339, !prof !11, !nosanitize !9

338:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

339:                                              ; preds = %330
  %340 = extractvalue { i64, i1 } %336, 0, !nosanitize !9
  %341 = getelementptr inbounds nuw i8, ptr %232, i64 11
  %342 = load i8, ptr %341, align 1, !tbaa !8
  %343 = zext i8 %342 to i64
  %344 = add i64 %335, %343
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 %344), !nosanitize !9
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !9
  br i1 %346, label %347, label %348, !prof !11, !nosanitize !9

347:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

348:                                              ; preds = %339
  %349 = extractvalue { i64, i1 } %345, 0, !nosanitize !9
  %350 = getelementptr inbounds nuw i8, ptr %232, i64 12
  %351 = load i8, ptr %350, align 1, !tbaa !8
  %352 = zext i8 %351 to i64
  %353 = add i64 %344, %352
  %354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %353), !nosanitize !9
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !9
  br i1 %355, label %356, label %357, !prof !11, !nosanitize !9

356:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

357:                                              ; preds = %348
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !9
  %359 = getelementptr inbounds nuw i8, ptr %232, i64 13
  %360 = load i8, ptr %359, align 1, !tbaa !8
  %361 = zext i8 %360 to i64
  %362 = add i64 %353, %361
  %363 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %362), !nosanitize !9
  %364 = extractvalue { i64, i1 } %363, 1, !nosanitize !9
  br i1 %364, label %365, label %366, !prof !11, !nosanitize !9

365:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

366:                                              ; preds = %357
  %367 = extractvalue { i64, i1 } %363, 0, !nosanitize !9
  %368 = getelementptr inbounds nuw i8, ptr %232, i64 14
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = zext i8 %369 to i64
  %371 = add i64 %362, %370
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %367, i64 %371), !nosanitize !9
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !9
  br i1 %373, label %374, label %375, !prof !11, !nosanitize !9

374:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

375:                                              ; preds = %366
  %376 = extractvalue { i64, i1 } %372, 0, !nosanitize !9
  %377 = getelementptr inbounds nuw i8, ptr %232, i64 15
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = zext i8 %378 to i64
  %380 = add i64 %371, %379
  %381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 %380), !nosanitize !9
  %382 = extractvalue { i64, i1 } %381, 1, !nosanitize !9
  br i1 %382, label %383, label %384, !prof !11, !nosanitize !9

383:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

384:                                              ; preds = %375
  %385 = extractvalue { i64, i1 } %381, 0, !nosanitize !9
  %386 = getelementptr inbounds nuw i8, ptr %232, i64 16
  %387 = icmp ugt i64 %234, 15
  br i1 %387, label %229, label %.loopexit8, !llvm.loop !17

.loopexit7:                                       ; preds = %404, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader6:                                      ; preds = %.loopexit8, %404
  %388 = phi { i64, i1 } [ %406, %404 ], [ %227, %.loopexit8 ]
  %389 = phi i64 [ %405, %404 ], [ %226, %.loopexit8 ]
  %390 = phi ptr [ %393, %404 ], [ %224, %.loopexit8 ]
  %391 = phi i64 [ %397, %404 ], [ %223, %.loopexit8 ]
  %392 = extractvalue { i64, i1 } %388, 0
  %393 = getelementptr inbounds nuw i8, ptr %390, i64 1
  %394 = load i8, ptr %390, align 1, !tbaa !8
  %395 = zext i8 %394 to i64
  %396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %391, i64 %395), !nosanitize !9
  %397 = extractvalue { i64, i1 } %396, 0, !nosanitize !9
  %398 = extractvalue { i64, i1 } %396, 1, !nosanitize !9
  br i1 %398, label %399, label %400, !prof !11, !nosanitize !9

399:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

400:                                              ; preds = %.preheader6
  %401 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %389, i64 %397), !nosanitize !9
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !9
  br i1 %402, label %403, label %404, !prof !11, !nosanitize !9

403:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

404:                                              ; preds = %400
  %405 = extractvalue { i64, i1 } %401, 0, !nosanitize !9
  %406 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %392, i64 1), !nosanitize !9
  %407 = extractvalue { i64, i1 } %406, 1, !nosanitize !9
  br i1 %407, label %.loopexit7, label %.preheader6, !prof !12, !llvm.loop !18, !nosanitize !9

408:                                              ; preds = %219
  %409 = shl nuw nsw i64 %217, 16
  %410 = or disjoint i64 %409, %216
  br label %411

411:                                              ; preds = %408, %21, %8
  %412 = phi i64 [ %20, %8 ], [ %410, %408 ], [ 1, %21 ]
  ret i64 %412
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
  %10 = load i8, ptr %1, align 1, !tbaa !8
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
  br label %412

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %412, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %.preheader9, label %.preheader267

.preheader267:                                    ; preds = %222, %26
  %.ph = phi i64 [ %218, %222 ], [ %6, %26 ]
  %.ph268 = phi i64 [ %55, %222 ], [ %4, %26 ]
  %.ph269 = phi ptr [ %56, %222 ], [ %1, %26 ]
  %.ph270 = phi i64 [ %217, %222 ], [ %7, %26 ]
  br label %230

28:                                               ; preds = %24
  %29 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1), !nosanitize !9
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !9
  br i1 %30, label %.loopexit, label %.preheader, !prof !10, !nosanitize !9

.loopexit:                                        ; preds = %47, %28
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader:                                       ; preds = %28, %47
  %31 = phi { i64, i1 } [ %49, %47 ], [ %29, %28 ]
  %32 = phi i64 [ %48, %47 ], [ %6, %28 ]
  %33 = phi ptr [ %36, %47 ], [ %1, %28 ]
  %34 = phi i64 [ %40, %47 ], [ %7, %28 ]
  %35 = extractvalue { i64, i1 } %31, 0
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !8
  %38 = zext i8 %37 to i64
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 %38), !nosanitize !9
  %40 = extractvalue { i64, i1 } %39, 0, !nosanitize !9
  %41 = extractvalue { i64, i1 } %39, 1, !nosanitize !9
  br i1 %41, label %42, label %43, !prof !11, !nosanitize !9

42:                                               ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

43:                                               ; preds = %.preheader
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %32, i64 %40), !nosanitize !9
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !9
  br i1 %45, label %46, label %47, !prof !11, !nosanitize !9

46:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

47:                                               ; preds = %43
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !9
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 1), !nosanitize !9
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !9
  br i1 %50, label %.loopexit, label %.preheader, !prof !12, !llvm.loop !13, !nosanitize !9

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
  %62 = load i8, ptr %59, align 1, !tbaa !8
  %63 = zext i8 %62 to i64
  %64 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %58, i64 %63), !nosanitize !9
  %65 = extractvalue { i64, i1 } %64, 0, !nosanitize !9
  %66 = extractvalue { i64, i1 } %64, 1, !nosanitize !9
  br i1 %66, label %67, label %68, !prof !11, !nosanitize !9

67:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

68:                                               ; preds = %57
  %69 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %60, i64 %65), !nosanitize !9
  %70 = extractvalue { i64, i1 } %69, 0, !nosanitize !9
  %71 = extractvalue { i64, i1 } %69, 1, !nosanitize !9
  br i1 %71, label %72, label %73, !prof !11, !nosanitize !9

72:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = zext i8 %75 to i64
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 %76), !nosanitize !9
  %78 = extractvalue { i64, i1 } %77, 0, !nosanitize !9
  %79 = extractvalue { i64, i1 } %77, 1, !nosanitize !9
  br i1 %79, label %80, label %81, !prof !11, !nosanitize !9

80:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

81:                                               ; preds = %73
  %82 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %78), !nosanitize !9
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !9
  br i1 %83, label %84, label %85, !prof !11, !nosanitize !9

84:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

85:                                               ; preds = %81
  %86 = extractvalue { i64, i1 } %82, 0, !nosanitize !9
  %87 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !8
  %89 = zext i8 %88 to i64
  %90 = add i64 %78, %89
  %91 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 %90), !nosanitize !9
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !9
  br i1 %92, label %93, label %94, !prof !11, !nosanitize !9

93:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

94:                                               ; preds = %85
  %95 = extractvalue { i64, i1 } %91, 0, !nosanitize !9
  %96 = getelementptr inbounds nuw i8, ptr %59, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !8
  %98 = zext i8 %97 to i64
  %99 = add i64 %90, %98
  %100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %99), !nosanitize !9
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !9
  br i1 %101, label %102, label %103, !prof !11, !nosanitize !9

102:                                              ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

103:                                              ; preds = %94
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !9
  %105 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %106 = load i8, ptr %105, align 1, !tbaa !8
  %107 = zext i8 %106 to i64
  %108 = add i64 %99, %107
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 %108), !nosanitize !9
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !9
  br i1 %110, label %111, label %112, !prof !11, !nosanitize !9

111:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

112:                                              ; preds = %103
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !9
  %114 = getelementptr inbounds nuw i8, ptr %59, i64 5
  %115 = load i8, ptr %114, align 1, !tbaa !8
  %116 = zext i8 %115 to i64
  %117 = add i64 %108, %116
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 %117), !nosanitize !9
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !9
  br i1 %119, label %120, label %121, !prof !11, !nosanitize !9

120:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

121:                                              ; preds = %112
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !9
  %123 = getelementptr inbounds nuw i8, ptr %59, i64 6
  %124 = load i8, ptr %123, align 1, !tbaa !8
  %125 = zext i8 %124 to i64
  %126 = add i64 %117, %125
  %127 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 %126), !nosanitize !9
  %128 = extractvalue { i64, i1 } %127, 1, !nosanitize !9
  br i1 %128, label %129, label %130, !prof !11, !nosanitize !9

129:                                              ; preds = %121
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

130:                                              ; preds = %121
  %131 = extractvalue { i64, i1 } %127, 0, !nosanitize !9
  %132 = getelementptr inbounds nuw i8, ptr %59, i64 7
  %133 = load i8, ptr %132, align 1, !tbaa !8
  %134 = zext i8 %133 to i64
  %135 = add i64 %126, %134
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 %135), !nosanitize !9
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !9
  br i1 %137, label %138, label %139, !prof !11, !nosanitize !9

138:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

139:                                              ; preds = %130
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !9
  %141 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %142 = load i8, ptr %141, align 1, !tbaa !8
  %143 = zext i8 %142 to i64
  %144 = add i64 %135, %143
  %145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 %144), !nosanitize !9
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !9
  br i1 %146, label %147, label %148, !prof !11, !nosanitize !9

147:                                              ; preds = %139
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

148:                                              ; preds = %139
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !9
  %150 = getelementptr inbounds nuw i8, ptr %59, i64 9
  %151 = load i8, ptr %150, align 1, !tbaa !8
  %152 = zext i8 %151 to i64
  %153 = add i64 %144, %152
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %153), !nosanitize !9
  %155 = extractvalue { i64, i1 } %154, 1, !nosanitize !9
  br i1 %155, label %156, label %157, !prof !11, !nosanitize !9

156:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

157:                                              ; preds = %148
  %158 = extractvalue { i64, i1 } %154, 0, !nosanitize !9
  %159 = getelementptr inbounds nuw i8, ptr %59, i64 10
  %160 = load i8, ptr %159, align 1, !tbaa !8
  %161 = zext i8 %160 to i64
  %162 = add i64 %153, %161
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %158, i64 %162), !nosanitize !9
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !9
  br i1 %164, label %165, label %166, !prof !11, !nosanitize !9

165:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

166:                                              ; preds = %157
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !9
  %168 = getelementptr inbounds nuw i8, ptr %59, i64 11
  %169 = load i8, ptr %168, align 1, !tbaa !8
  %170 = zext i8 %169 to i64
  %171 = add i64 %162, %170
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %171), !nosanitize !9
  %173 = extractvalue { i64, i1 } %172, 1, !nosanitize !9
  br i1 %173, label %174, label %175, !prof !11, !nosanitize !9

174:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

175:                                              ; preds = %166
  %176 = extractvalue { i64, i1 } %172, 0, !nosanitize !9
  %177 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %178 = load i8, ptr %177, align 1, !tbaa !8
  %179 = zext i8 %178 to i64
  %180 = add i64 %171, %179
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 %180), !nosanitize !9
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !9
  br i1 %182, label %183, label %184, !prof !11, !nosanitize !9

183:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

184:                                              ; preds = %175
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !9
  %186 = getelementptr inbounds nuw i8, ptr %59, i64 13
  %187 = load i8, ptr %186, align 1, !tbaa !8
  %188 = zext i8 %187 to i64
  %189 = add i64 %180, %188
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %189), !nosanitize !9
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !9
  br i1 %191, label %192, label %193, !prof !11, !nosanitize !9

192:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

193:                                              ; preds = %184
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !9
  %195 = getelementptr inbounds nuw i8, ptr %59, i64 14
  %196 = load i8, ptr %195, align 1, !tbaa !8
  %197 = zext i8 %196 to i64
  %198 = add i64 %189, %197
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 %198), !nosanitize !9
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !9
  br i1 %200, label %201, label %202, !prof !11, !nosanitize !9

201:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

202:                                              ; preds = %193
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !9
  %204 = getelementptr inbounds nuw i8, ptr %59, i64 15
  %205 = load i8, ptr %204, align 1, !tbaa !8
  %206 = zext i8 %205 to i64
  %207 = add i64 %198, %206
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %207), !nosanitize !9
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !9
  br i1 %209, label %210, label %211, !prof !11, !nosanitize !9

210:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

211:                                              ; preds = %202
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !9
  %213 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %214 = add nsw i32 %61, -1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %57, !llvm.loop !15

216:                                              ; preds = %211
  %217 = urem i64 %207, 65521
  %218 = urem i64 %212, 65521
  %219 = icmp ugt i64 %55, 5551
  br i1 %219, label %.preheader9, label %220, !llvm.loop !16

220:                                              ; preds = %216
  %221 = icmp eq i64 %55, 0
  br i1 %221, label %409, label %222

222:                                              ; preds = %220
  %223 = icmp samesign ugt i64 %55, 15
  br i1 %223, label %.preheader267, label %.loopexit8

.loopexit8:                                       ; preds = %385, %222
  %224 = phi i64 [ %217, %222 ], [ %381, %385 ]
  %225 = phi ptr [ %56, %222 ], [ %387, %385 ]
  %226 = phi i64 [ %55, %222 ], [ %235, %385 ]
  %227 = phi i64 [ %218, %222 ], [ %386, %385 ]
  %228 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %226, i64 1), !nosanitize !9
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !9
  br i1 %229, label %.loopexit7, label %.preheader6, !prof !10, !nosanitize !9

230:                                              ; preds = %.preheader267, %385
  %231 = phi i64 [ %386, %385 ], [ %.ph, %.preheader267 ]
  %232 = phi i64 [ %235, %385 ], [ %.ph268, %.preheader267 ]
  %233 = phi ptr [ %387, %385 ], [ %.ph269, %.preheader267 ]
  %234 = phi i64 [ %381, %385 ], [ %.ph270, %.preheader267 ]
  %235 = add nsw i64 %232, -16
  %236 = load i8, ptr %233, align 1, !tbaa !8
  %237 = zext i8 %236 to i64
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 %237), !nosanitize !9
  %239 = extractvalue { i64, i1 } %238, 0, !nosanitize !9
  %240 = extractvalue { i64, i1 } %238, 1, !nosanitize !9
  br i1 %240, label %241, label %242, !prof !11, !nosanitize !9

241:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

242:                                              ; preds = %230
  %243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %231, i64 %239), !nosanitize !9
  %244 = extractvalue { i64, i1 } %243, 0, !nosanitize !9
  %245 = extractvalue { i64, i1 } %243, 1, !nosanitize !9
  br i1 %245, label %246, label %247, !prof !11, !nosanitize !9

246:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

247:                                              ; preds = %242
  %248 = getelementptr inbounds nuw i8, ptr %233, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !8
  %250 = zext i8 %249 to i64
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 %250), !nosanitize !9
  %252 = extractvalue { i64, i1 } %251, 0, !nosanitize !9
  %253 = extractvalue { i64, i1 } %251, 1, !nosanitize !9
  br i1 %253, label %254, label %255, !prof !11, !nosanitize !9

254:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

255:                                              ; preds = %247
  %256 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %252), !nosanitize !9
  %257 = extractvalue { i64, i1 } %256, 1, !nosanitize !9
  br i1 %257, label %258, label %259, !prof !11, !nosanitize !9

258:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

259:                                              ; preds = %255
  %260 = extractvalue { i64, i1 } %256, 0, !nosanitize !9
  %261 = getelementptr inbounds nuw i8, ptr %233, i64 2
  %262 = load i8, ptr %261, align 1, !tbaa !8
  %263 = zext i8 %262 to i64
  %264 = add i64 %252, %263
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 %264), !nosanitize !9
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !9
  br i1 %266, label %267, label %268, !prof !11, !nosanitize !9

267:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

268:                                              ; preds = %259
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !9
  %270 = getelementptr inbounds nuw i8, ptr %233, i64 3
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i64
  %273 = add i64 %264, %272
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %269, i64 %273), !nosanitize !9
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !9
  br i1 %275, label %276, label %277, !prof !11, !nosanitize !9

276:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

277:                                              ; preds = %268
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !9
  %279 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %280 = load i8, ptr %279, align 1, !tbaa !8
  %281 = zext i8 %280 to i64
  %282 = add i64 %273, %281
  %283 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %278, i64 %282), !nosanitize !9
  %284 = extractvalue { i64, i1 } %283, 1, !nosanitize !9
  br i1 %284, label %285, label %286, !prof !11, !nosanitize !9

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

286:                                              ; preds = %277
  %287 = extractvalue { i64, i1 } %283, 0, !nosanitize !9
  %288 = getelementptr inbounds nuw i8, ptr %233, i64 5
  %289 = load i8, ptr %288, align 1, !tbaa !8
  %290 = zext i8 %289 to i64
  %291 = add i64 %282, %290
  %292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %291), !nosanitize !9
  %293 = extractvalue { i64, i1 } %292, 1, !nosanitize !9
  br i1 %293, label %294, label %295, !prof !11, !nosanitize !9

294:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

295:                                              ; preds = %286
  %296 = extractvalue { i64, i1 } %292, 0, !nosanitize !9
  %297 = getelementptr inbounds nuw i8, ptr %233, i64 6
  %298 = load i8, ptr %297, align 1, !tbaa !8
  %299 = zext i8 %298 to i64
  %300 = add i64 %291, %299
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 %300), !nosanitize !9
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !9
  br i1 %302, label %303, label %304, !prof !11, !nosanitize !9

303:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

304:                                              ; preds = %295
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !9
  %306 = getelementptr inbounds nuw i8, ptr %233, i64 7
  %307 = load i8, ptr %306, align 1, !tbaa !8
  %308 = zext i8 %307 to i64
  %309 = add i64 %300, %308
  %310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 %309), !nosanitize !9
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !9
  br i1 %311, label %312, label %313, !prof !11, !nosanitize !9

312:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

313:                                              ; preds = %304
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !9
  %315 = getelementptr inbounds nuw i8, ptr %233, i64 8
  %316 = load i8, ptr %315, align 1, !tbaa !8
  %317 = zext i8 %316 to i64
  %318 = add i64 %309, %317
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 %318), !nosanitize !9
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !9
  br i1 %320, label %321, label %322, !prof !11, !nosanitize !9

321:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

322:                                              ; preds = %313
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !9
  %324 = getelementptr inbounds nuw i8, ptr %233, i64 9
  %325 = load i8, ptr %324, align 1, !tbaa !8
  %326 = zext i8 %325 to i64
  %327 = add i64 %318, %326
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 %327), !nosanitize !9
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !9
  br i1 %329, label %330, label %331, !prof !11, !nosanitize !9

330:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

331:                                              ; preds = %322
  %332 = extractvalue { i64, i1 } %328, 0, !nosanitize !9
  %333 = getelementptr inbounds nuw i8, ptr %233, i64 10
  %334 = load i8, ptr %333, align 1, !tbaa !8
  %335 = zext i8 %334 to i64
  %336 = add i64 %327, %335
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %332, i64 %336), !nosanitize !9
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !9
  br i1 %338, label %339, label %340, !prof !11, !nosanitize !9

339:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

340:                                              ; preds = %331
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !9
  %342 = getelementptr inbounds nuw i8, ptr %233, i64 11
  %343 = load i8, ptr %342, align 1, !tbaa !8
  %344 = zext i8 %343 to i64
  %345 = add i64 %336, %344
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 %345), !nosanitize !9
  %347 = extractvalue { i64, i1 } %346, 1, !nosanitize !9
  br i1 %347, label %348, label %349, !prof !11, !nosanitize !9

348:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

349:                                              ; preds = %340
  %350 = extractvalue { i64, i1 } %346, 0, !nosanitize !9
  %351 = getelementptr inbounds nuw i8, ptr %233, i64 12
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = zext i8 %352 to i64
  %354 = add i64 %345, %353
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 %354), !nosanitize !9
  %356 = extractvalue { i64, i1 } %355, 1, !nosanitize !9
  br i1 %356, label %357, label %358, !prof !11, !nosanitize !9

357:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

358:                                              ; preds = %349
  %359 = extractvalue { i64, i1 } %355, 0, !nosanitize !9
  %360 = getelementptr inbounds nuw i8, ptr %233, i64 13
  %361 = load i8, ptr %360, align 1, !tbaa !8
  %362 = zext i8 %361 to i64
  %363 = add i64 %354, %362
  %364 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %363), !nosanitize !9
  %365 = extractvalue { i64, i1 } %364, 1, !nosanitize !9
  br i1 %365, label %366, label %367, !prof !11, !nosanitize !9

366:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

367:                                              ; preds = %358
  %368 = extractvalue { i64, i1 } %364, 0, !nosanitize !9
  %369 = getelementptr inbounds nuw i8, ptr %233, i64 14
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = zext i8 %370 to i64
  %372 = add i64 %363, %371
  %373 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %372), !nosanitize !9
  %374 = extractvalue { i64, i1 } %373, 1, !nosanitize !9
  br i1 %374, label %375, label %376, !prof !11, !nosanitize !9

375:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

376:                                              ; preds = %367
  %377 = extractvalue { i64, i1 } %373, 0, !nosanitize !9
  %378 = getelementptr inbounds nuw i8, ptr %233, i64 15
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = zext i8 %379 to i64
  %381 = add i64 %372, %380
  %382 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %377, i64 %381), !nosanitize !9
  %383 = extractvalue { i64, i1 } %382, 1, !nosanitize !9
  br i1 %383, label %384, label %385, !prof !11, !nosanitize !9

384:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

385:                                              ; preds = %376
  %386 = extractvalue { i64, i1 } %382, 0, !nosanitize !9
  %387 = getelementptr inbounds nuw i8, ptr %233, i64 16
  %388 = icmp ugt i64 %235, 15
  br i1 %388, label %230, label %.loopexit8, !llvm.loop !17

.loopexit7:                                       ; preds = %405, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader6:                                      ; preds = %.loopexit8, %405
  %389 = phi { i64, i1 } [ %407, %405 ], [ %228, %.loopexit8 ]
  %390 = phi i64 [ %406, %405 ], [ %227, %.loopexit8 ]
  %391 = phi ptr [ %394, %405 ], [ %225, %.loopexit8 ]
  %392 = phi i64 [ %398, %405 ], [ %224, %.loopexit8 ]
  %393 = extractvalue { i64, i1 } %389, 0
  %394 = getelementptr inbounds nuw i8, ptr %391, i64 1
  %395 = load i8, ptr %391, align 1, !tbaa !8
  %396 = zext i8 %395 to i64
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %392, i64 %396), !nosanitize !9
  %398 = extractvalue { i64, i1 } %397, 0, !nosanitize !9
  %399 = extractvalue { i64, i1 } %397, 1, !nosanitize !9
  br i1 %399, label %400, label %401, !prof !11, !nosanitize !9

400:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

401:                                              ; preds = %.preheader6
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %390, i64 %398), !nosanitize !9
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !9
  br i1 %403, label %404, label %405, !prof !11, !nosanitize !9

404:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

405:                                              ; preds = %401
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !9
  %407 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %393, i64 1), !nosanitize !9
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !9
  br i1 %408, label %.loopexit7, label %.preheader6, !prof !12, !llvm.loop !18, !nosanitize !9

409:                                              ; preds = %220
  %410 = shl nuw nsw i64 %218, 16
  %411 = or disjoint i64 %410, %217
  br label %412

412:                                              ; preds = %409, %22, %9
  %413 = phi i64 [ %21, %9 ], [ %411, %409 ], [ 1, %22 ]
  ret i64 %413
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 127}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!"branch_weights", i32 127, i32 134217473}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
