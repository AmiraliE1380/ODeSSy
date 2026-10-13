; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_adler32.fast.mid.ll'
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
  br label %519

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %519, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %.preheader9, label %.preheader439

.preheader439:                                    ; preds = %277, %25
  %.ph = phi i64 [ %273, %277 ], [ %5, %25 ]
  %.ph440 = phi i64 [ %54, %277 ], [ %2, %25 ]
  %.ph441 = phi ptr [ %55, %277 ], [ %1, %25 ]
  %.ph442 = phi i64 [ %272, %277 ], [ %6, %25 ]
  br label %285

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

.preheader9:                                      ; preds = %25, %271
  %50 = phi i64 [ %273, %271 ], [ %5, %25 ]
  %51 = phi i64 [ %54, %271 ], [ %2, %25 ]
  %52 = phi ptr [ %55, %271 ], [ %1, %25 ]
  %53 = phi i64 [ %272, %271 ], [ %6, %25 ]
  %54 = add i64 %51, -5552
  %55 = getelementptr i8, ptr %52, i64 5552
  br label %56

56:                                               ; preds = %266, %.preheader9
  %57 = phi i64 [ %53, %.preheader9 ], [ %259, %266 ]
  %58 = phi ptr [ %52, %.preheader9 ], [ %268, %266 ]
  %59 = phi i64 [ %50, %.preheader9 ], [ %267, %266 ]
  %60 = phi i32 [ 347, %.preheader9 ], [ %269, %266 ]
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
  %82 = extractvalue { i64, i1 } %81, 0, !nosanitize !8
  %83 = extractvalue { i64, i1 } %81, 1, !nosanitize !8
  br i1 %83, label %84, label %85, !prof !10, !nosanitize !8

84:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i64
  %89 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 %88), !nosanitize !8
  %90 = extractvalue { i64, i1 } %89, 0, !nosanitize !8
  %91 = extractvalue { i64, i1 } %89, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !10, !nosanitize !8

92:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %85
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %82, i64 %90), !nosanitize !8
  %95 = extractvalue { i64, i1 } %94, 0, !nosanitize !8
  %96 = extractvalue { i64, i1 } %94, 1, !nosanitize !8
  br i1 %96, label %97, label %98, !prof !10, !nosanitize !8

97:                                               ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %58, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %90, i64 %101), !nosanitize !8
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !8
  %104 = extractvalue { i64, i1 } %102, 1, !nosanitize !8
  br i1 %104, label %105, label %106, !prof !10, !nosanitize !8

105:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

106:                                              ; preds = %98
  %107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %103), !nosanitize !8
  %108 = extractvalue { i64, i1 } %107, 0, !nosanitize !8
  %109 = extractvalue { i64, i1 } %107, 1, !nosanitize !8
  br i1 %109, label %110, label %111, !prof !10, !nosanitize !8

110:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

111:                                              ; preds = %106
  %112 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %113 = load i8, ptr %112, align 1, !tbaa !5
  %114 = zext i8 %113 to i64
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %114), !nosanitize !8
  %116 = extractvalue { i64, i1 } %115, 0, !nosanitize !8
  %117 = extractvalue { i64, i1 } %115, 1, !nosanitize !8
  br i1 %117, label %118, label %119, !prof !10, !nosanitize !8

118:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

119:                                              ; preds = %111
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 %116), !nosanitize !8
  %121 = extractvalue { i64, i1 } %120, 0, !nosanitize !8
  %122 = extractvalue { i64, i1 } %120, 1, !nosanitize !8
  br i1 %122, label %123, label %124, !prof !10, !nosanitize !8

123:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

124:                                              ; preds = %119
  %125 = getelementptr inbounds nuw i8, ptr %58, i64 5
  %126 = load i8, ptr %125, align 1, !tbaa !5
  %127 = zext i8 %126 to i64
  %128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 %127), !nosanitize !8
  %129 = extractvalue { i64, i1 } %128, 0, !nosanitize !8
  %130 = extractvalue { i64, i1 } %128, 1, !nosanitize !8
  br i1 %130, label %131, label %132, !prof !10, !nosanitize !8

131:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

132:                                              ; preds = %124
  %133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %129), !nosanitize !8
  %134 = extractvalue { i64, i1 } %133, 0, !nosanitize !8
  %135 = extractvalue { i64, i1 } %133, 1, !nosanitize !8
  br i1 %135, label %136, label %137, !prof !10, !nosanitize !8

136:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = zext i8 %139 to i64
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %129, i64 %140), !nosanitize !8
  %142 = extractvalue { i64, i1 } %141, 0, !nosanitize !8
  %143 = extractvalue { i64, i1 } %141, 1, !nosanitize !8
  br i1 %143, label %144, label %145, !prof !10, !nosanitize !8

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

145:                                              ; preds = %137
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 %142), !nosanitize !8
  %147 = extractvalue { i64, i1 } %146, 0, !nosanitize !8
  %148 = extractvalue { i64, i1 } %146, 1, !nosanitize !8
  br i1 %148, label %149, label %150, !prof !10, !nosanitize !8

149:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw i8, ptr %58, i64 7
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i64
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 %153), !nosanitize !8
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !8
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !8
  br i1 %156, label %157, label %158, !prof !10, !nosanitize !8

157:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

158:                                              ; preds = %150
  %159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 %155), !nosanitize !8
  %160 = extractvalue { i64, i1 } %159, 0, !nosanitize !8
  %161 = extractvalue { i64, i1 } %159, 1, !nosanitize !8
  br i1 %161, label %162, label %163, !prof !10, !nosanitize !8

162:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

163:                                              ; preds = %158
  %164 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %165 = load i8, ptr %164, align 1, !tbaa !5
  %166 = zext i8 %165 to i64
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %155, i64 %166), !nosanitize !8
  %168 = extractvalue { i64, i1 } %167, 0, !nosanitize !8
  %169 = extractvalue { i64, i1 } %167, 1, !nosanitize !8
  br i1 %169, label %170, label %171, !prof !10, !nosanitize !8

170:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

171:                                              ; preds = %163
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %160, i64 %168), !nosanitize !8
  %173 = extractvalue { i64, i1 } %172, 0, !nosanitize !8
  %174 = extractvalue { i64, i1 } %172, 1, !nosanitize !8
  br i1 %174, label %175, label %176, !prof !10, !nosanitize !8

175:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw i8, ptr %58, i64 9
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = zext i8 %178 to i64
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %179), !nosanitize !8
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !8
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !8
  br i1 %182, label %183, label %184, !prof !10, !nosanitize !8

183:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

184:                                              ; preds = %176
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %181), !nosanitize !8
  %186 = extractvalue { i64, i1 } %185, 0, !nosanitize !8
  %187 = extractvalue { i64, i1 } %185, 1, !nosanitize !8
  br i1 %187, label %188, label %189, !prof !10, !nosanitize !8

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

189:                                              ; preds = %184
  %190 = getelementptr inbounds nuw i8, ptr %58, i64 10
  %191 = load i8, ptr %190, align 1, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %192), !nosanitize !8
  %194 = extractvalue { i64, i1 } %193, 0, !nosanitize !8
  %195 = extractvalue { i64, i1 } %193, 1, !nosanitize !8
  br i1 %195, label %196, label %197, !prof !10, !nosanitize !8

196:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

197:                                              ; preds = %189
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %194), !nosanitize !8
  %199 = extractvalue { i64, i1 } %198, 0, !nosanitize !8
  %200 = extractvalue { i64, i1 } %198, 1, !nosanitize !8
  br i1 %200, label %201, label %202, !prof !10, !nosanitize !8

201:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

202:                                              ; preds = %197
  %203 = getelementptr inbounds nuw i8, ptr %58, i64 11
  %204 = load i8, ptr %203, align 1, !tbaa !5
  %205 = zext i8 %204 to i64
  %206 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 %205), !nosanitize !8
  %207 = extractvalue { i64, i1 } %206, 0, !nosanitize !8
  %208 = extractvalue { i64, i1 } %206, 1, !nosanitize !8
  br i1 %208, label %209, label %210, !prof !10, !nosanitize !8

209:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

210:                                              ; preds = %202
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 %207), !nosanitize !8
  %212 = extractvalue { i64, i1 } %211, 0, !nosanitize !8
  %213 = extractvalue { i64, i1 } %211, 1, !nosanitize !8
  br i1 %213, label %214, label %215, !prof !10, !nosanitize !8

214:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

215:                                              ; preds = %210
  %216 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i64
  %219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 %218), !nosanitize !8
  %220 = extractvalue { i64, i1 } %219, 0, !nosanitize !8
  %221 = extractvalue { i64, i1 } %219, 1, !nosanitize !8
  br i1 %221, label %222, label %223, !prof !10, !nosanitize !8

222:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

223:                                              ; preds = %215
  %224 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 %220), !nosanitize !8
  %225 = extractvalue { i64, i1 } %224, 0, !nosanitize !8
  %226 = extractvalue { i64, i1 } %224, 1, !nosanitize !8
  br i1 %226, label %227, label %228, !prof !10, !nosanitize !8

227:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

228:                                              ; preds = %223
  %229 = getelementptr inbounds nuw i8, ptr %58, i64 13
  %230 = load i8, ptr %229, align 1, !tbaa !5
  %231 = zext i8 %230 to i64
  %232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 %231), !nosanitize !8
  %233 = extractvalue { i64, i1 } %232, 0, !nosanitize !8
  %234 = extractvalue { i64, i1 } %232, 1, !nosanitize !8
  br i1 %234, label %235, label %236, !prof !10, !nosanitize !8

235:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

236:                                              ; preds = %228
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 %233), !nosanitize !8
  %238 = extractvalue { i64, i1 } %237, 0, !nosanitize !8
  %239 = extractvalue { i64, i1 } %237, 1, !nosanitize !8
  br i1 %239, label %240, label %241, !prof !10, !nosanitize !8

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

241:                                              ; preds = %236
  %242 = getelementptr inbounds nuw i8, ptr %58, i64 14
  %243 = load i8, ptr %242, align 1, !tbaa !5
  %244 = zext i8 %243 to i64
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %244), !nosanitize !8
  %246 = extractvalue { i64, i1 } %245, 0, !nosanitize !8
  %247 = extractvalue { i64, i1 } %245, 1, !nosanitize !8
  br i1 %247, label %248, label %249, !prof !10, !nosanitize !8

248:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

249:                                              ; preds = %241
  %250 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %238, i64 %246), !nosanitize !8
  %251 = extractvalue { i64, i1 } %250, 0, !nosanitize !8
  %252 = extractvalue { i64, i1 } %250, 1, !nosanitize !8
  br i1 %252, label %253, label %254, !prof !10, !nosanitize !8

253:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

254:                                              ; preds = %249
  %255 = getelementptr inbounds nuw i8, ptr %58, i64 15
  %256 = load i8, ptr %255, align 1, !tbaa !5
  %257 = zext i8 %256 to i64
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %246, i64 %257), !nosanitize !8
  %259 = extractvalue { i64, i1 } %258, 0, !nosanitize !8
  %260 = extractvalue { i64, i1 } %258, 1, !nosanitize !8
  br i1 %260, label %261, label %262, !prof !10, !nosanitize !8

261:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

262:                                              ; preds = %254
  %263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 %259), !nosanitize !8
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !8
  br i1 %264, label %265, label %266, !prof !10, !nosanitize !8

265:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

266:                                              ; preds = %262
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !8
  %268 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %269 = add nsw i32 %60, -1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %56, !llvm.loop !14

271:                                              ; preds = %266
  %272 = urem i64 %259, 65521
  %273 = urem i64 %267, 65521
  %274 = icmp ugt i64 %54, 5551
  br i1 %274, label %.preheader9, label %275, !llvm.loop !15

275:                                              ; preds = %271
  %276 = icmp eq i64 %54, 0
  br i1 %276, label %516, label %277

277:                                              ; preds = %275
  %278 = icmp samesign ugt i64 %54, 15
  br i1 %278, label %.preheader439, label %.loopexit8

.loopexit8:                                       ; preds = %492, %277
  %279 = phi i64 [ %272, %277 ], [ %485, %492 ]
  %280 = phi ptr [ %55, %277 ], [ %494, %492 ]
  %281 = phi i64 [ %54, %277 ], [ %290, %492 ]
  %282 = phi i64 [ %273, %277 ], [ %493, %492 ]
  %283 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %281, i64 1), !nosanitize !8
  %284 = extractvalue { i64, i1 } %283, 1, !nosanitize !8
  br i1 %284, label %.loopexit7, label %.preheader6, !prof !9, !nosanitize !8

285:                                              ; preds = %.preheader439, %492
  %286 = phi i64 [ %493, %492 ], [ %.ph, %.preheader439 ]
  %287 = phi i64 [ %290, %492 ], [ %.ph440, %.preheader439 ]
  %288 = phi ptr [ %494, %492 ], [ %.ph441, %.preheader439 ]
  %289 = phi i64 [ %485, %492 ], [ %.ph442, %.preheader439 ]
  %290 = add nsw i64 %287, -16
  %291 = load i8, ptr %288, align 1, !tbaa !5
  %292 = zext i8 %291 to i64
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 %292), !nosanitize !8
  %294 = extractvalue { i64, i1 } %293, 0, !nosanitize !8
  %295 = extractvalue { i64, i1 } %293, 1, !nosanitize !8
  br i1 %295, label %296, label %297, !prof !10, !nosanitize !8

296:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

297:                                              ; preds = %285
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %286, i64 %294), !nosanitize !8
  %299 = extractvalue { i64, i1 } %298, 0, !nosanitize !8
  %300 = extractvalue { i64, i1 } %298, 1, !nosanitize !8
  br i1 %300, label %301, label %302, !prof !10, !nosanitize !8

301:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

302:                                              ; preds = %297
  %303 = getelementptr inbounds nuw i8, ptr %288, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !5
  %305 = zext i8 %304 to i64
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %294, i64 %305), !nosanitize !8
  %307 = extractvalue { i64, i1 } %306, 0, !nosanitize !8
  %308 = extractvalue { i64, i1 } %306, 1, !nosanitize !8
  br i1 %308, label %309, label %310, !prof !10, !nosanitize !8

309:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

310:                                              ; preds = %302
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 %307), !nosanitize !8
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !8
  br i1 %312, label %313, label %314, !prof !10, !nosanitize !8

313:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

314:                                              ; preds = %310
  %315 = extractvalue { i64, i1 } %311, 0, !nosanitize !8
  %316 = getelementptr inbounds nuw i8, ptr %288, i64 2
  %317 = load i8, ptr %316, align 1, !tbaa !5
  %318 = zext i8 %317 to i64
  %319 = add i64 %307, %318
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %319), !nosanitize !8
  %321 = extractvalue { i64, i1 } %320, 0, !nosanitize !8
  %322 = extractvalue { i64, i1 } %320, 1, !nosanitize !8
  br i1 %322, label %323, label %324, !prof !10, !nosanitize !8

323:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

324:                                              ; preds = %314
  %325 = getelementptr inbounds nuw i8, ptr %288, i64 3
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i64
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %319, i64 %327), !nosanitize !8
  %329 = extractvalue { i64, i1 } %328, 0, !nosanitize !8
  %330 = extractvalue { i64, i1 } %328, 1, !nosanitize !8
  br i1 %330, label %331, label %332, !prof !10, !nosanitize !8

331:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

332:                                              ; preds = %324
  %333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %321, i64 %329), !nosanitize !8
  %334 = extractvalue { i64, i1 } %333, 0, !nosanitize !8
  %335 = extractvalue { i64, i1 } %333, 1, !nosanitize !8
  br i1 %335, label %336, label %337, !prof !10, !nosanitize !8

336:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

337:                                              ; preds = %332
  %338 = getelementptr inbounds nuw i8, ptr %288, i64 4
  %339 = load i8, ptr %338, align 1, !tbaa !5
  %340 = zext i8 %339 to i64
  %341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 %340), !nosanitize !8
  %342 = extractvalue { i64, i1 } %341, 0, !nosanitize !8
  %343 = extractvalue { i64, i1 } %341, 1, !nosanitize !8
  br i1 %343, label %344, label %345, !prof !10, !nosanitize !8

344:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

345:                                              ; preds = %337
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %334, i64 %342), !nosanitize !8
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !8
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !8
  br i1 %348, label %349, label %350, !prof !10, !nosanitize !8

349:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

350:                                              ; preds = %345
  %351 = getelementptr inbounds nuw i8, ptr %288, i64 5
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = zext i8 %352 to i64
  %354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %342, i64 %353), !nosanitize !8
  %355 = extractvalue { i64, i1 } %354, 0, !nosanitize !8
  %356 = extractvalue { i64, i1 } %354, 1, !nosanitize !8
  br i1 %356, label %357, label %358, !prof !10, !nosanitize !8

357:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

358:                                              ; preds = %350
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %355), !nosanitize !8
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !8
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !8
  br i1 %361, label %362, label %363, !prof !10, !nosanitize !8

362:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

363:                                              ; preds = %358
  %364 = getelementptr inbounds nuw i8, ptr %288, i64 6
  %365 = load i8, ptr %364, align 1, !tbaa !5
  %366 = zext i8 %365 to i64
  %367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %366), !nosanitize !8
  %368 = extractvalue { i64, i1 } %367, 0, !nosanitize !8
  %369 = extractvalue { i64, i1 } %367, 1, !nosanitize !8
  br i1 %369, label %370, label %371, !prof !10, !nosanitize !8

370:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

371:                                              ; preds = %363
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 %368), !nosanitize !8
  %373 = extractvalue { i64, i1 } %372, 0, !nosanitize !8
  %374 = extractvalue { i64, i1 } %372, 1, !nosanitize !8
  br i1 %374, label %375, label %376, !prof !10, !nosanitize !8

375:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

376:                                              ; preds = %371
  %377 = getelementptr inbounds nuw i8, ptr %288, i64 7
  %378 = load i8, ptr %377, align 1, !tbaa !5
  %379 = zext i8 %378 to i64
  %380 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %379), !nosanitize !8
  %381 = extractvalue { i64, i1 } %380, 0, !nosanitize !8
  %382 = extractvalue { i64, i1 } %380, 1, !nosanitize !8
  br i1 %382, label %383, label %384, !prof !10, !nosanitize !8

383:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

384:                                              ; preds = %376
  %385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 %381), !nosanitize !8
  %386 = extractvalue { i64, i1 } %385, 0, !nosanitize !8
  %387 = extractvalue { i64, i1 } %385, 1, !nosanitize !8
  br i1 %387, label %388, label %389, !prof !10, !nosanitize !8

388:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

389:                                              ; preds = %384
  %390 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %391 = load i8, ptr %390, align 1, !tbaa !5
  %392 = zext i8 %391 to i64
  %393 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %392), !nosanitize !8
  %394 = extractvalue { i64, i1 } %393, 0, !nosanitize !8
  %395 = extractvalue { i64, i1 } %393, 1, !nosanitize !8
  br i1 %395, label %396, label %397, !prof !10, !nosanitize !8

396:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

397:                                              ; preds = %389
  %398 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %386, i64 %394), !nosanitize !8
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !8
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !8
  br i1 %400, label %401, label %402, !prof !10, !nosanitize !8

401:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

402:                                              ; preds = %397
  %403 = getelementptr inbounds nuw i8, ptr %288, i64 9
  %404 = load i8, ptr %403, align 1, !tbaa !5
  %405 = zext i8 %404 to i64
  %406 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %394, i64 %405), !nosanitize !8
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !8
  %408 = extractvalue { i64, i1 } %406, 1, !nosanitize !8
  br i1 %408, label %409, label %410, !prof !10, !nosanitize !8

409:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

410:                                              ; preds = %402
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 %407), !nosanitize !8
  %412 = extractvalue { i64, i1 } %411, 0, !nosanitize !8
  %413 = extractvalue { i64, i1 } %411, 1, !nosanitize !8
  br i1 %413, label %414, label %415, !prof !10, !nosanitize !8

414:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

415:                                              ; preds = %410
  %416 = getelementptr inbounds nuw i8, ptr %288, i64 10
  %417 = load i8, ptr %416, align 1, !tbaa !5
  %418 = zext i8 %417 to i64
  %419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %407, i64 %418), !nosanitize !8
  %420 = extractvalue { i64, i1 } %419, 0, !nosanitize !8
  %421 = extractvalue { i64, i1 } %419, 1, !nosanitize !8
  br i1 %421, label %422, label %423, !prof !10, !nosanitize !8

422:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

423:                                              ; preds = %415
  %424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 %420), !nosanitize !8
  %425 = extractvalue { i64, i1 } %424, 0, !nosanitize !8
  %426 = extractvalue { i64, i1 } %424, 1, !nosanitize !8
  br i1 %426, label %427, label %428, !prof !10, !nosanitize !8

427:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

428:                                              ; preds = %423
  %429 = getelementptr inbounds nuw i8, ptr %288, i64 11
  %430 = load i8, ptr %429, align 1, !tbaa !5
  %431 = zext i8 %430 to i64
  %432 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %420, i64 %431), !nosanitize !8
  %433 = extractvalue { i64, i1 } %432, 0, !nosanitize !8
  %434 = extractvalue { i64, i1 } %432, 1, !nosanitize !8
  br i1 %434, label %435, label %436, !prof !10, !nosanitize !8

435:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

436:                                              ; preds = %428
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %433), !nosanitize !8
  %438 = extractvalue { i64, i1 } %437, 0, !nosanitize !8
  %439 = extractvalue { i64, i1 } %437, 1, !nosanitize !8
  br i1 %439, label %440, label %441, !prof !10, !nosanitize !8

440:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

441:                                              ; preds = %436
  %442 = getelementptr inbounds nuw i8, ptr %288, i64 12
  %443 = load i8, ptr %442, align 1, !tbaa !5
  %444 = zext i8 %443 to i64
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %433, i64 %444), !nosanitize !8
  %446 = extractvalue { i64, i1 } %445, 0, !nosanitize !8
  %447 = extractvalue { i64, i1 } %445, 1, !nosanitize !8
  br i1 %447, label %448, label %449, !prof !10, !nosanitize !8

448:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

449:                                              ; preds = %441
  %450 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 %446), !nosanitize !8
  %451 = extractvalue { i64, i1 } %450, 0, !nosanitize !8
  %452 = extractvalue { i64, i1 } %450, 1, !nosanitize !8
  br i1 %452, label %453, label %454, !prof !10, !nosanitize !8

453:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

454:                                              ; preds = %449
  %455 = getelementptr inbounds nuw i8, ptr %288, i64 13
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = zext i8 %456 to i64
  %458 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %446, i64 %457), !nosanitize !8
  %459 = extractvalue { i64, i1 } %458, 0, !nosanitize !8
  %460 = extractvalue { i64, i1 } %458, 1, !nosanitize !8
  br i1 %460, label %461, label %462, !prof !10, !nosanitize !8

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

462:                                              ; preds = %454
  %463 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %451, i64 %459), !nosanitize !8
  %464 = extractvalue { i64, i1 } %463, 0, !nosanitize !8
  %465 = extractvalue { i64, i1 } %463, 1, !nosanitize !8
  br i1 %465, label %466, label %467, !prof !10, !nosanitize !8

466:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

467:                                              ; preds = %462
  %468 = getelementptr inbounds nuw i8, ptr %288, i64 14
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = zext i8 %469 to i64
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 %470), !nosanitize !8
  %472 = extractvalue { i64, i1 } %471, 0, !nosanitize !8
  %473 = extractvalue { i64, i1 } %471, 1, !nosanitize !8
  br i1 %473, label %474, label %475, !prof !10, !nosanitize !8

474:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

475:                                              ; preds = %467
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 %472), !nosanitize !8
  %477 = extractvalue { i64, i1 } %476, 0, !nosanitize !8
  %478 = extractvalue { i64, i1 } %476, 1, !nosanitize !8
  br i1 %478, label %479, label %480, !prof !10, !nosanitize !8

479:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

480:                                              ; preds = %475
  %481 = getelementptr inbounds nuw i8, ptr %288, i64 15
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = zext i8 %482 to i64
  %484 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 %483), !nosanitize !8
  %485 = extractvalue { i64, i1 } %484, 0, !nosanitize !8
  %486 = extractvalue { i64, i1 } %484, 1, !nosanitize !8
  br i1 %486, label %487, label %488, !prof !10, !nosanitize !8

487:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

488:                                              ; preds = %480
  %489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 %485), !nosanitize !8
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !8
  br i1 %490, label %491, label %492, !prof !10, !nosanitize !8

491:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

492:                                              ; preds = %488
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !8
  %494 = getelementptr inbounds nuw i8, ptr %288, i64 16
  %495 = icmp ugt i64 %290, 15
  br i1 %495, label %285, label %.loopexit8, !llvm.loop !16

.loopexit7:                                       ; preds = %512, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader6:                                      ; preds = %.loopexit8, %512
  %496 = phi { i64, i1 } [ %514, %512 ], [ %283, %.loopexit8 ]
  %497 = phi i64 [ %513, %512 ], [ %282, %.loopexit8 ]
  %498 = phi ptr [ %501, %512 ], [ %280, %.loopexit8 ]
  %499 = phi i64 [ %505, %512 ], [ %279, %.loopexit8 ]
  %500 = extractvalue { i64, i1 } %496, 0
  %501 = getelementptr inbounds nuw i8, ptr %498, i64 1
  %502 = load i8, ptr %498, align 1, !tbaa !5
  %503 = zext i8 %502 to i64
  %504 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %499, i64 %503), !nosanitize !8
  %505 = extractvalue { i64, i1 } %504, 0, !nosanitize !8
  %506 = extractvalue { i64, i1 } %504, 1, !nosanitize !8
  br i1 %506, label %507, label %508, !prof !10, !nosanitize !8

507:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

508:                                              ; preds = %.preheader6
  %509 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %497, i64 %505), !nosanitize !8
  %510 = extractvalue { i64, i1 } %509, 1, !nosanitize !8
  br i1 %510, label %511, label %512, !prof !10, !nosanitize !8

511:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

512:                                              ; preds = %508
  %513 = extractvalue { i64, i1 } %509, 0, !nosanitize !8
  %514 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 1), !nosanitize !8
  %515 = extractvalue { i64, i1 } %514, 1, !nosanitize !8
  br i1 %515, label %.loopexit7, label %.preheader6, !prof !11, !llvm.loop !17, !nosanitize !8

516:                                              ; preds = %275
  %517 = shl nuw nsw i64 %273, 16
  %518 = or disjoint i64 %517, %272
  br label %519

519:                                              ; preds = %516, %21, %8
  %520 = phi i64 [ %20, %8 ], [ %518, %516 ], [ 1, %21 ]
  ret i64 %520
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
  br label %520

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %520, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %.preheader9, label %.preheader439

.preheader439:                                    ; preds = %278, %26
  %.ph = phi i64 [ %274, %278 ], [ %6, %26 ]
  %.ph440 = phi i64 [ %55, %278 ], [ %4, %26 ]
  %.ph441 = phi ptr [ %56, %278 ], [ %1, %26 ]
  %.ph442 = phi i64 [ %273, %278 ], [ %7, %26 ]
  br label %286

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

.preheader9:                                      ; preds = %26, %272
  %51 = phi i64 [ %274, %272 ], [ %6, %26 ]
  %52 = phi i64 [ %55, %272 ], [ %4, %26 ]
  %53 = phi ptr [ %56, %272 ], [ %1, %26 ]
  %54 = phi i64 [ %273, %272 ], [ %7, %26 ]
  %55 = add i64 %52, -5552
  %56 = getelementptr i8, ptr %53, i64 5552
  br label %57

57:                                               ; preds = %267, %.preheader9
  %58 = phi i64 [ %54, %.preheader9 ], [ %260, %267 ]
  %59 = phi ptr [ %53, %.preheader9 ], [ %269, %267 ]
  %60 = phi i64 [ %51, %.preheader9 ], [ %268, %267 ]
  %61 = phi i32 [ 347, %.preheader9 ], [ %270, %267 ]
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
  %83 = extractvalue { i64, i1 } %82, 0, !nosanitize !8
  %84 = extractvalue { i64, i1 } %82, 1, !nosanitize !8
  br i1 %84, label %85, label %86, !prof !10, !nosanitize !8

85:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = zext i8 %88 to i64
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 %89), !nosanitize !8
  %91 = extractvalue { i64, i1 } %90, 0, !nosanitize !8
  %92 = extractvalue { i64, i1 } %90, 1, !nosanitize !8
  br i1 %92, label %93, label %94, !prof !10, !nosanitize !8

93:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

94:                                               ; preds = %86
  %95 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %83, i64 %91), !nosanitize !8
  %96 = extractvalue { i64, i1 } %95, 0, !nosanitize !8
  %97 = extractvalue { i64, i1 } %95, 1, !nosanitize !8
  br i1 %97, label %98, label %99, !prof !10, !nosanitize !8

98:                                               ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

99:                                               ; preds = %94
  %100 = getelementptr inbounds nuw i8, ptr %59, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = zext i8 %101 to i64
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %102), !nosanitize !8
  %104 = extractvalue { i64, i1 } %103, 0, !nosanitize !8
  %105 = extractvalue { i64, i1 } %103, 1, !nosanitize !8
  br i1 %105, label %106, label %107, !prof !10, !nosanitize !8

106:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

107:                                              ; preds = %99
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %104), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 0, !nosanitize !8
  %110 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %110, label %111, label %112, !prof !10, !nosanitize !8

111:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

112:                                              ; preds = %107
  %113 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 %115), !nosanitize !8
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !8
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !8
  br i1 %118, label %119, label %120, !prof !10, !nosanitize !8

119:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

120:                                              ; preds = %112
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 %117), !nosanitize !8
  %122 = extractvalue { i64, i1 } %121, 0, !nosanitize !8
  %123 = extractvalue { i64, i1 } %121, 1, !nosanitize !8
  br i1 %123, label %124, label %125, !prof !10, !nosanitize !8

124:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %59, i64 5
  %127 = load i8, ptr %126, align 1, !tbaa !5
  %128 = zext i8 %127 to i64
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 %128), !nosanitize !8
  %130 = extractvalue { i64, i1 } %129, 0, !nosanitize !8
  %131 = extractvalue { i64, i1 } %129, 1, !nosanitize !8
  br i1 %131, label %132, label %133, !prof !10, !nosanitize !8

132:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

133:                                              ; preds = %125
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 %130), !nosanitize !8
  %135 = extractvalue { i64, i1 } %134, 0, !nosanitize !8
  %136 = extractvalue { i64, i1 } %134, 1, !nosanitize !8
  br i1 %136, label %137, label %138, !prof !10, !nosanitize !8

137:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

138:                                              ; preds = %133
  %139 = getelementptr inbounds nuw i8, ptr %59, i64 6
  %140 = load i8, ptr %139, align 1, !tbaa !5
  %141 = zext i8 %140 to i64
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 %141), !nosanitize !8
  %143 = extractvalue { i64, i1 } %142, 0, !nosanitize !8
  %144 = extractvalue { i64, i1 } %142, 1, !nosanitize !8
  br i1 %144, label %145, label %146, !prof !10, !nosanitize !8

145:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

146:                                              ; preds = %138
  %147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 %143), !nosanitize !8
  %148 = extractvalue { i64, i1 } %147, 0, !nosanitize !8
  %149 = extractvalue { i64, i1 } %147, 1, !nosanitize !8
  br i1 %149, label %150, label %151, !prof !10, !nosanitize !8

150:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

151:                                              ; preds = %146
  %152 = getelementptr inbounds nuw i8, ptr %59, i64 7
  %153 = load i8, ptr %152, align 1, !tbaa !5
  %154 = zext i8 %153 to i64
  %155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %154), !nosanitize !8
  %156 = extractvalue { i64, i1 } %155, 0, !nosanitize !8
  %157 = extractvalue { i64, i1 } %155, 1, !nosanitize !8
  br i1 %157, label %158, label %159, !prof !10, !nosanitize !8

158:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

159:                                              ; preds = %151
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %156), !nosanitize !8
  %161 = extractvalue { i64, i1 } %160, 0, !nosanitize !8
  %162 = extractvalue { i64, i1 } %160, 1, !nosanitize !8
  br i1 %162, label %163, label %164, !prof !10, !nosanitize !8

163:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

164:                                              ; preds = %159
  %165 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = zext i8 %166 to i64
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %156, i64 %167), !nosanitize !8
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !8
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !8
  br i1 %170, label %171, label %172, !prof !10, !nosanitize !8

171:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

172:                                              ; preds = %164
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %169), !nosanitize !8
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !8
  %175 = extractvalue { i64, i1 } %173, 1, !nosanitize !8
  br i1 %175, label %176, label %177, !prof !10, !nosanitize !8

176:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw i8, ptr %59, i64 9
  %179 = load i8, ptr %178, align 1, !tbaa !5
  %180 = zext i8 %179 to i64
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %180), !nosanitize !8
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !8
  %183 = extractvalue { i64, i1 } %181, 1, !nosanitize !8
  br i1 %183, label %184, label %185, !prof !10, !nosanitize !8

184:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

185:                                              ; preds = %177
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %182), !nosanitize !8
  %187 = extractvalue { i64, i1 } %186, 0, !nosanitize !8
  %188 = extractvalue { i64, i1 } %186, 1, !nosanitize !8
  br i1 %188, label %189, label %190, !prof !10, !nosanitize !8

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

190:                                              ; preds = %185
  %191 = getelementptr inbounds nuw i8, ptr %59, i64 10
  %192 = load i8, ptr %191, align 1, !tbaa !5
  %193 = zext i8 %192 to i64
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %193), !nosanitize !8
  %195 = extractvalue { i64, i1 } %194, 0, !nosanitize !8
  %196 = extractvalue { i64, i1 } %194, 1, !nosanitize !8
  br i1 %196, label %197, label %198, !prof !10, !nosanitize !8

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

198:                                              ; preds = %190
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %195), !nosanitize !8
  %200 = extractvalue { i64, i1 } %199, 0, !nosanitize !8
  %201 = extractvalue { i64, i1 } %199, 1, !nosanitize !8
  br i1 %201, label %202, label %203, !prof !10, !nosanitize !8

202:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

203:                                              ; preds = %198
  %204 = getelementptr inbounds nuw i8, ptr %59, i64 11
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = zext i8 %205 to i64
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 %206), !nosanitize !8
  %208 = extractvalue { i64, i1 } %207, 0, !nosanitize !8
  %209 = extractvalue { i64, i1 } %207, 1, !nosanitize !8
  br i1 %209, label %210, label %211, !prof !10, !nosanitize !8

210:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

211:                                              ; preds = %203
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 %208), !nosanitize !8
  %213 = extractvalue { i64, i1 } %212, 0, !nosanitize !8
  %214 = extractvalue { i64, i1 } %212, 1, !nosanitize !8
  br i1 %214, label %215, label %216, !prof !10, !nosanitize !8

215:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %218 = load i8, ptr %217, align 1, !tbaa !5
  %219 = zext i8 %218 to i64
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %219), !nosanitize !8
  %221 = extractvalue { i64, i1 } %220, 0, !nosanitize !8
  %222 = extractvalue { i64, i1 } %220, 1, !nosanitize !8
  br i1 %222, label %223, label %224, !prof !10, !nosanitize !8

223:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

224:                                              ; preds = %216
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %221), !nosanitize !8
  %226 = extractvalue { i64, i1 } %225, 0, !nosanitize !8
  %227 = extractvalue { i64, i1 } %225, 1, !nosanitize !8
  br i1 %227, label %228, label %229, !prof !10, !nosanitize !8

228:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

229:                                              ; preds = %224
  %230 = getelementptr inbounds nuw i8, ptr %59, i64 13
  %231 = load i8, ptr %230, align 1, !tbaa !5
  %232 = zext i8 %231 to i64
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %232), !nosanitize !8
  %234 = extractvalue { i64, i1 } %233, 0, !nosanitize !8
  %235 = extractvalue { i64, i1 } %233, 1, !nosanitize !8
  br i1 %235, label %236, label %237, !prof !10, !nosanitize !8

236:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

237:                                              ; preds = %229
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %234), !nosanitize !8
  %239 = extractvalue { i64, i1 } %238, 0, !nosanitize !8
  %240 = extractvalue { i64, i1 } %238, 1, !nosanitize !8
  br i1 %240, label %241, label %242, !prof !10, !nosanitize !8

241:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

242:                                              ; preds = %237
  %243 = getelementptr inbounds nuw i8, ptr %59, i64 14
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i64
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 %245), !nosanitize !8
  %247 = extractvalue { i64, i1 } %246, 0, !nosanitize !8
  %248 = extractvalue { i64, i1 } %246, 1, !nosanitize !8
  br i1 %248, label %249, label %250, !prof !10, !nosanitize !8

249:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

250:                                              ; preds = %242
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 %247), !nosanitize !8
  %252 = extractvalue { i64, i1 } %251, 0, !nosanitize !8
  %253 = extractvalue { i64, i1 } %251, 1, !nosanitize !8
  br i1 %253, label %254, label %255, !prof !10, !nosanitize !8

254:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

255:                                              ; preds = %250
  %256 = getelementptr inbounds nuw i8, ptr %59, i64 15
  %257 = load i8, ptr %256, align 1, !tbaa !5
  %258 = zext i8 %257 to i64
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %258), !nosanitize !8
  %260 = extractvalue { i64, i1 } %259, 0, !nosanitize !8
  %261 = extractvalue { i64, i1 } %259, 1, !nosanitize !8
  br i1 %261, label %262, label %263, !prof !10, !nosanitize !8

262:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

263:                                              ; preds = %255
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %252, i64 %260), !nosanitize !8
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !8
  br i1 %265, label %266, label %267, !prof !10, !nosanitize !8

266:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

267:                                              ; preds = %263
  %268 = extractvalue { i64, i1 } %264, 0, !nosanitize !8
  %269 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %270 = add nsw i32 %61, -1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %57, !llvm.loop !14

272:                                              ; preds = %267
  %273 = urem i64 %260, 65521
  %274 = urem i64 %268, 65521
  %275 = icmp ugt i64 %55, 5551
  br i1 %275, label %.preheader9, label %276, !llvm.loop !15

276:                                              ; preds = %272
  %277 = icmp eq i64 %55, 0
  br i1 %277, label %517, label %278

278:                                              ; preds = %276
  %279 = icmp samesign ugt i64 %55, 15
  br i1 %279, label %.preheader439, label %.loopexit8

.loopexit8:                                       ; preds = %493, %278
  %280 = phi i64 [ %273, %278 ], [ %486, %493 ]
  %281 = phi ptr [ %56, %278 ], [ %495, %493 ]
  %282 = phi i64 [ %55, %278 ], [ %291, %493 ]
  %283 = phi i64 [ %274, %278 ], [ %494, %493 ]
  %284 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %282, i64 1), !nosanitize !8
  %285 = extractvalue { i64, i1 } %284, 1, !nosanitize !8
  br i1 %285, label %.loopexit7, label %.preheader6, !prof !9, !nosanitize !8

286:                                              ; preds = %.preheader439, %493
  %287 = phi i64 [ %494, %493 ], [ %.ph, %.preheader439 ]
  %288 = phi i64 [ %291, %493 ], [ %.ph440, %.preheader439 ]
  %289 = phi ptr [ %495, %493 ], [ %.ph441, %.preheader439 ]
  %290 = phi i64 [ %486, %493 ], [ %.ph442, %.preheader439 ]
  %291 = add i64 %288, -16
  %292 = load i8, ptr %289, align 1, !tbaa !5
  %293 = zext i8 %292 to i64
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 %293), !nosanitize !8
  %295 = extractvalue { i64, i1 } %294, 0, !nosanitize !8
  %296 = extractvalue { i64, i1 } %294, 1, !nosanitize !8
  br i1 %296, label %297, label %298, !prof !10, !nosanitize !8

297:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

298:                                              ; preds = %286
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %295), !nosanitize !8
  %300 = extractvalue { i64, i1 } %299, 0, !nosanitize !8
  %301 = extractvalue { i64, i1 } %299, 1, !nosanitize !8
  br i1 %301, label %302, label %303, !prof !10, !nosanitize !8

302:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

303:                                              ; preds = %298
  %304 = getelementptr inbounds nuw i8, ptr %289, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !5
  %306 = zext i8 %305 to i64
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 %306), !nosanitize !8
  %308 = extractvalue { i64, i1 } %307, 0, !nosanitize !8
  %309 = extractvalue { i64, i1 } %307, 1, !nosanitize !8
  br i1 %309, label %310, label %311, !prof !10, !nosanitize !8

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

311:                                              ; preds = %303
  %312 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 %308), !nosanitize !8
  %313 = extractvalue { i64, i1 } %312, 1, !nosanitize !8
  br i1 %313, label %314, label %315, !prof !10, !nosanitize !8

314:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

315:                                              ; preds = %311
  %316 = extractvalue { i64, i1 } %312, 0, !nosanitize !8
  %317 = getelementptr inbounds nuw i8, ptr %289, i64 2
  %318 = load i8, ptr %317, align 1, !tbaa !5
  %319 = zext i8 %318 to i64
  %320 = add i64 %308, %319
  %321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %316, i64 %320), !nosanitize !8
  %322 = extractvalue { i64, i1 } %321, 0, !nosanitize !8
  %323 = extractvalue { i64, i1 } %321, 1, !nosanitize !8
  br i1 %323, label %324, label %325, !prof !10, !nosanitize !8

324:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

325:                                              ; preds = %315
  %326 = getelementptr inbounds nuw i8, ptr %289, i64 3
  %327 = load i8, ptr %326, align 1, !tbaa !5
  %328 = zext i8 %327 to i64
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 %328), !nosanitize !8
  %330 = extractvalue { i64, i1 } %329, 0, !nosanitize !8
  %331 = extractvalue { i64, i1 } %329, 1, !nosanitize !8
  br i1 %331, label %332, label %333, !prof !10, !nosanitize !8

332:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

333:                                              ; preds = %325
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %322, i64 %330), !nosanitize !8
  %335 = extractvalue { i64, i1 } %334, 0, !nosanitize !8
  %336 = extractvalue { i64, i1 } %334, 1, !nosanitize !8
  br i1 %336, label %337, label %338, !prof !10, !nosanitize !8

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

338:                                              ; preds = %333
  %339 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %340 = load i8, ptr %339, align 1, !tbaa !5
  %341 = zext i8 %340 to i64
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %330, i64 %341), !nosanitize !8
  %343 = extractvalue { i64, i1 } %342, 0, !nosanitize !8
  %344 = extractvalue { i64, i1 } %342, 1, !nosanitize !8
  br i1 %344, label %345, label %346, !prof !10, !nosanitize !8

345:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

346:                                              ; preds = %338
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %335, i64 %343), !nosanitize !8
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !8
  %349 = extractvalue { i64, i1 } %347, 1, !nosanitize !8
  br i1 %349, label %350, label %351, !prof !10, !nosanitize !8

350:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

351:                                              ; preds = %346
  %352 = getelementptr inbounds nuw i8, ptr %289, i64 5
  %353 = load i8, ptr %352, align 1, !tbaa !5
  %354 = zext i8 %353 to i64
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 %354), !nosanitize !8
  %356 = extractvalue { i64, i1 } %355, 0, !nosanitize !8
  %357 = extractvalue { i64, i1 } %355, 1, !nosanitize !8
  br i1 %357, label %358, label %359, !prof !10, !nosanitize !8

358:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

359:                                              ; preds = %351
  %360 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %356), !nosanitize !8
  %361 = extractvalue { i64, i1 } %360, 0, !nosanitize !8
  %362 = extractvalue { i64, i1 } %360, 1, !nosanitize !8
  br i1 %362, label %363, label %364, !prof !10, !nosanitize !8

363:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

364:                                              ; preds = %359
  %365 = getelementptr inbounds nuw i8, ptr %289, i64 6
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = zext i8 %366 to i64
  %368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %356, i64 %367), !nosanitize !8
  %369 = extractvalue { i64, i1 } %368, 0, !nosanitize !8
  %370 = extractvalue { i64, i1 } %368, 1, !nosanitize !8
  br i1 %370, label %371, label %372, !prof !10, !nosanitize !8

371:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

372:                                              ; preds = %364
  %373 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %361, i64 %369), !nosanitize !8
  %374 = extractvalue { i64, i1 } %373, 0, !nosanitize !8
  %375 = extractvalue { i64, i1 } %373, 1, !nosanitize !8
  br i1 %375, label %376, label %377, !prof !10, !nosanitize !8

376:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

377:                                              ; preds = %372
  %378 = getelementptr inbounds nuw i8, ptr %289, i64 7
  %379 = load i8, ptr %378, align 1, !tbaa !5
  %380 = zext i8 %379 to i64
  %381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %369, i64 %380), !nosanitize !8
  %382 = extractvalue { i64, i1 } %381, 0, !nosanitize !8
  %383 = extractvalue { i64, i1 } %381, 1, !nosanitize !8
  br i1 %383, label %384, label %385, !prof !10, !nosanitize !8

384:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

385:                                              ; preds = %377
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %374, i64 %382), !nosanitize !8
  %387 = extractvalue { i64, i1 } %386, 0, !nosanitize !8
  %388 = extractvalue { i64, i1 } %386, 1, !nosanitize !8
  br i1 %388, label %389, label %390, !prof !10, !nosanitize !8

389:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

390:                                              ; preds = %385
  %391 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %392 = load i8, ptr %391, align 1, !tbaa !5
  %393 = zext i8 %392 to i64
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %382, i64 %393), !nosanitize !8
  %395 = extractvalue { i64, i1 } %394, 0, !nosanitize !8
  %396 = extractvalue { i64, i1 } %394, 1, !nosanitize !8
  br i1 %396, label %397, label %398, !prof !10, !nosanitize !8

397:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

398:                                              ; preds = %390
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %387, i64 %395), !nosanitize !8
  %400 = extractvalue { i64, i1 } %399, 0, !nosanitize !8
  %401 = extractvalue { i64, i1 } %399, 1, !nosanitize !8
  br i1 %401, label %402, label %403, !prof !10, !nosanitize !8

402:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

403:                                              ; preds = %398
  %404 = getelementptr inbounds nuw i8, ptr %289, i64 9
  %405 = load i8, ptr %404, align 1, !tbaa !5
  %406 = zext i8 %405 to i64
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 %406), !nosanitize !8
  %408 = extractvalue { i64, i1 } %407, 0, !nosanitize !8
  %409 = extractvalue { i64, i1 } %407, 1, !nosanitize !8
  br i1 %409, label %410, label %411, !prof !10, !nosanitize !8

410:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

411:                                              ; preds = %403
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %400, i64 %408), !nosanitize !8
  %413 = extractvalue { i64, i1 } %412, 0, !nosanitize !8
  %414 = extractvalue { i64, i1 } %412, 1, !nosanitize !8
  br i1 %414, label %415, label %416, !prof !10, !nosanitize !8

415:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

416:                                              ; preds = %411
  %417 = getelementptr inbounds nuw i8, ptr %289, i64 10
  %418 = load i8, ptr %417, align 1, !tbaa !5
  %419 = zext i8 %418 to i64
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 %419), !nosanitize !8
  %421 = extractvalue { i64, i1 } %420, 0, !nosanitize !8
  %422 = extractvalue { i64, i1 } %420, 1, !nosanitize !8
  br i1 %422, label %423, label %424, !prof !10, !nosanitize !8

423:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

424:                                              ; preds = %416
  %425 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %413, i64 %421), !nosanitize !8
  %426 = extractvalue { i64, i1 } %425, 0, !nosanitize !8
  %427 = extractvalue { i64, i1 } %425, 1, !nosanitize !8
  br i1 %427, label %428, label %429, !prof !10, !nosanitize !8

428:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

429:                                              ; preds = %424
  %430 = getelementptr inbounds nuw i8, ptr %289, i64 11
  %431 = load i8, ptr %430, align 1, !tbaa !5
  %432 = zext i8 %431 to i64
  %433 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 %432), !nosanitize !8
  %434 = extractvalue { i64, i1 } %433, 0, !nosanitize !8
  %435 = extractvalue { i64, i1 } %433, 1, !nosanitize !8
  br i1 %435, label %436, label %437, !prof !10, !nosanitize !8

436:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

437:                                              ; preds = %429
  %438 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %426, i64 %434), !nosanitize !8
  %439 = extractvalue { i64, i1 } %438, 0, !nosanitize !8
  %440 = extractvalue { i64, i1 } %438, 1, !nosanitize !8
  br i1 %440, label %441, label %442, !prof !10, !nosanitize !8

441:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

442:                                              ; preds = %437
  %443 = getelementptr inbounds nuw i8, ptr %289, i64 12
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = zext i8 %444 to i64
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %434, i64 %445), !nosanitize !8
  %447 = extractvalue { i64, i1 } %446, 0, !nosanitize !8
  %448 = extractvalue { i64, i1 } %446, 1, !nosanitize !8
  br i1 %448, label %449, label %450, !prof !10, !nosanitize !8

449:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

450:                                              ; preds = %442
  %451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 %447), !nosanitize !8
  %452 = extractvalue { i64, i1 } %451, 0, !nosanitize !8
  %453 = extractvalue { i64, i1 } %451, 1, !nosanitize !8
  br i1 %453, label %454, label %455, !prof !10, !nosanitize !8

454:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

455:                                              ; preds = %450
  %456 = getelementptr inbounds nuw i8, ptr %289, i64 13
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = zext i8 %457 to i64
  %459 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 %458), !nosanitize !8
  %460 = extractvalue { i64, i1 } %459, 0, !nosanitize !8
  %461 = extractvalue { i64, i1 } %459, 1, !nosanitize !8
  br i1 %461, label %462, label %463, !prof !10, !nosanitize !8

462:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

463:                                              ; preds = %455
  %464 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 %460), !nosanitize !8
  %465 = extractvalue { i64, i1 } %464, 0, !nosanitize !8
  %466 = extractvalue { i64, i1 } %464, 1, !nosanitize !8
  br i1 %466, label %467, label %468, !prof !10, !nosanitize !8

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %289, i64 14
  %470 = load i8, ptr %469, align 1, !tbaa !5
  %471 = zext i8 %470 to i64
  %472 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 %471), !nosanitize !8
  %473 = extractvalue { i64, i1 } %472, 0, !nosanitize !8
  %474 = extractvalue { i64, i1 } %472, 1, !nosanitize !8
  br i1 %474, label %475, label %476, !prof !10, !nosanitize !8

475:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

476:                                              ; preds = %468
  %477 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %465, i64 %473), !nosanitize !8
  %478 = extractvalue { i64, i1 } %477, 0, !nosanitize !8
  %479 = extractvalue { i64, i1 } %477, 1, !nosanitize !8
  br i1 %479, label %480, label %481, !prof !10, !nosanitize !8

480:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

481:                                              ; preds = %476
  %482 = getelementptr inbounds nuw i8, ptr %289, i64 15
  %483 = load i8, ptr %482, align 1, !tbaa !5
  %484 = zext i8 %483 to i64
  %485 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %473, i64 %484), !nosanitize !8
  %486 = extractvalue { i64, i1 } %485, 0, !nosanitize !8
  %487 = extractvalue { i64, i1 } %485, 1, !nosanitize !8
  br i1 %487, label %488, label %489, !prof !10, !nosanitize !8

488:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

489:                                              ; preds = %481
  %490 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %478, i64 %486), !nosanitize !8
  %491 = extractvalue { i64, i1 } %490, 1, !nosanitize !8
  br i1 %491, label %492, label %493, !prof !10, !nosanitize !8

492:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

493:                                              ; preds = %489
  %494 = extractvalue { i64, i1 } %490, 0, !nosanitize !8
  %495 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %496 = icmp ugt i64 %291, 15
  br i1 %496, label %286, label %.loopexit8, !llvm.loop !16

.loopexit7:                                       ; preds = %513, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

.preheader6:                                      ; preds = %.loopexit8, %513
  %497 = phi { i64, i1 } [ %515, %513 ], [ %284, %.loopexit8 ]
  %498 = phi i64 [ %514, %513 ], [ %283, %.loopexit8 ]
  %499 = phi ptr [ %502, %513 ], [ %281, %.loopexit8 ]
  %500 = phi i64 [ %506, %513 ], [ %280, %.loopexit8 ]
  %501 = extractvalue { i64, i1 } %497, 0
  %502 = getelementptr inbounds nuw i8, ptr %499, i64 1
  %503 = load i8, ptr %499, align 1, !tbaa !5
  %504 = zext i8 %503 to i64
  %505 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %500, i64 %504), !nosanitize !8
  %506 = extractvalue { i64, i1 } %505, 0, !nosanitize !8
  %507 = extractvalue { i64, i1 } %505, 1, !nosanitize !8
  br i1 %507, label %508, label %509, !prof !10, !nosanitize !8

508:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

509:                                              ; preds = %.preheader6
  %510 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %498, i64 %506), !nosanitize !8
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !8
  br i1 %511, label %512, label %513, !prof !10, !nosanitize !8

512:                                              ; preds = %509
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

513:                                              ; preds = %509
  %514 = extractvalue { i64, i1 } %510, 0, !nosanitize !8
  %515 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %501, i64 1), !nosanitize !8
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !8
  br i1 %516, label %.loopexit7, label %.preheader6, !prof !11, !llvm.loop !17, !nosanitize !8

517:                                              ; preds = %276
  %518 = shl nuw nsw i64 %274, 16
  %519 = or disjoint i64 %518, %273
  br label %520

520:                                              ; preds = %517, %22, %9
  %521 = phi i64 [ %21, %9 ], [ %519, %517 ], [ 1, %22 ]
  ret i64 %521
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
