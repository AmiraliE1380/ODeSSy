; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.adler32.ll'
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
  br label %523

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %523, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %.preheader9, label %.preheader443

.preheader443:                                    ; preds = %277, %25
  %.ph = phi i64 [ %273, %277 ], [ %5, %25 ]
  %.ph444 = phi i64 [ %54, %277 ], [ %2, %25 ]
  %.ph445 = phi ptr [ %55, %277 ], [ %1, %25 ]
  %.ph446 = phi i64 [ %272, %277 ], [ %6, %25 ]
  br label %285

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
  %82 = extractvalue { i64, i1 } %81, 0, !nosanitize !9
  %83 = extractvalue { i64, i1 } %81, 1, !nosanitize !9
  br i1 %83, label %84, label %85, !prof !11, !nosanitize !9

84:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !8
  %88 = zext i8 %87 to i64
  %89 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 %88), !nosanitize !9
  %90 = extractvalue { i64, i1 } %89, 0, !nosanitize !9
  %91 = extractvalue { i64, i1 } %89, 1, !nosanitize !9
  br i1 %91, label %92, label %93, !prof !11, !nosanitize !9

92:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

93:                                               ; preds = %85
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %82, i64 %90), !nosanitize !9
  %95 = extractvalue { i64, i1 } %94, 0, !nosanitize !9
  %96 = extractvalue { i64, i1 } %94, 1, !nosanitize !9
  br i1 %96, label %97, label %98, !prof !11, !nosanitize !9

97:                                               ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %58, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !8
  %101 = zext i8 %100 to i64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %90, i64 %101), !nosanitize !9
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !9
  %104 = extractvalue { i64, i1 } %102, 1, !nosanitize !9
  br i1 %104, label %105, label %106, !prof !11, !nosanitize !9

105:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

106:                                              ; preds = %98
  %107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %103), !nosanitize !9
  %108 = extractvalue { i64, i1 } %107, 0, !nosanitize !9
  %109 = extractvalue { i64, i1 } %107, 1, !nosanitize !9
  br i1 %109, label %110, label %111, !prof !11, !nosanitize !9

110:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

111:                                              ; preds = %106
  %112 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = zext i8 %113 to i64
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %114), !nosanitize !9
  %116 = extractvalue { i64, i1 } %115, 0, !nosanitize !9
  %117 = extractvalue { i64, i1 } %115, 1, !nosanitize !9
  br i1 %117, label %118, label %119, !prof !11, !nosanitize !9

118:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

119:                                              ; preds = %111
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 %116), !nosanitize !9
  %121 = extractvalue { i64, i1 } %120, 0, !nosanitize !9
  %122 = extractvalue { i64, i1 } %120, 1, !nosanitize !9
  br i1 %122, label %123, label %124, !prof !11, !nosanitize !9

123:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

124:                                              ; preds = %119
  %125 = getelementptr inbounds nuw i8, ptr %58, i64 5
  %126 = load i8, ptr %125, align 1, !tbaa !8
  %127 = zext i8 %126 to i64
  %128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 %127), !nosanitize !9
  %129 = extractvalue { i64, i1 } %128, 0, !nosanitize !9
  %130 = extractvalue { i64, i1 } %128, 1, !nosanitize !9
  br i1 %130, label %131, label %132, !prof !11, !nosanitize !9

131:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

132:                                              ; preds = %124
  %133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %129), !nosanitize !9
  %134 = extractvalue { i64, i1 } %133, 0, !nosanitize !9
  %135 = extractvalue { i64, i1 } %133, 1, !nosanitize !9
  br i1 %135, label %136, label %137, !prof !11, !nosanitize !9

136:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %139 = load i8, ptr %138, align 1, !tbaa !8
  %140 = zext i8 %139 to i64
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %129, i64 %140), !nosanitize !9
  %142 = extractvalue { i64, i1 } %141, 0, !nosanitize !9
  %143 = extractvalue { i64, i1 } %141, 1, !nosanitize !9
  br i1 %143, label %144, label %145, !prof !11, !nosanitize !9

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

145:                                              ; preds = %137
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 %142), !nosanitize !9
  %147 = extractvalue { i64, i1 } %146, 0, !nosanitize !9
  %148 = extractvalue { i64, i1 } %146, 1, !nosanitize !9
  br i1 %148, label %149, label %150, !prof !11, !nosanitize !9

149:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw i8, ptr %58, i64 7
  %152 = load i8, ptr %151, align 1, !tbaa !8
  %153 = zext i8 %152 to i64
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 %153), !nosanitize !9
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !9
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !9
  br i1 %156, label %157, label %158, !prof !11, !nosanitize !9

157:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

158:                                              ; preds = %150
  %159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 %155), !nosanitize !9
  %160 = extractvalue { i64, i1 } %159, 0, !nosanitize !9
  %161 = extractvalue { i64, i1 } %159, 1, !nosanitize !9
  br i1 %161, label %162, label %163, !prof !11, !nosanitize !9

162:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

163:                                              ; preds = %158
  %164 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %165 = load i8, ptr %164, align 1, !tbaa !8
  %166 = zext i8 %165 to i64
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %155, i64 %166), !nosanitize !9
  %168 = extractvalue { i64, i1 } %167, 0, !nosanitize !9
  %169 = extractvalue { i64, i1 } %167, 1, !nosanitize !9
  br i1 %169, label %170, label %171, !prof !11, !nosanitize !9

170:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

171:                                              ; preds = %163
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %160, i64 %168), !nosanitize !9
  %173 = extractvalue { i64, i1 } %172, 0, !nosanitize !9
  %174 = extractvalue { i64, i1 } %172, 1, !nosanitize !9
  br i1 %174, label %175, label %176, !prof !11, !nosanitize !9

175:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw i8, ptr %58, i64 9
  %178 = load i8, ptr %177, align 1, !tbaa !8
  %179 = zext i8 %178 to i64
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %179), !nosanitize !9
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !9
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !9
  br i1 %182, label %183, label %184, !prof !11, !nosanitize !9

183:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

184:                                              ; preds = %176
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %181), !nosanitize !9
  %186 = extractvalue { i64, i1 } %185, 0, !nosanitize !9
  %187 = extractvalue { i64, i1 } %185, 1, !nosanitize !9
  br i1 %187, label %188, label %189, !prof !11, !nosanitize !9

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

189:                                              ; preds = %184
  %190 = getelementptr inbounds nuw i8, ptr %58, i64 10
  %191 = load i8, ptr %190, align 1, !tbaa !8
  %192 = zext i8 %191 to i64
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %192), !nosanitize !9
  %194 = extractvalue { i64, i1 } %193, 0, !nosanitize !9
  %195 = extractvalue { i64, i1 } %193, 1, !nosanitize !9
  br i1 %195, label %196, label %197, !prof !11, !nosanitize !9

196:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

197:                                              ; preds = %189
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %194), !nosanitize !9
  %199 = extractvalue { i64, i1 } %198, 0, !nosanitize !9
  %200 = extractvalue { i64, i1 } %198, 1, !nosanitize !9
  br i1 %200, label %201, label %202, !prof !11, !nosanitize !9

201:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

202:                                              ; preds = %197
  %203 = getelementptr inbounds nuw i8, ptr %58, i64 11
  %204 = load i8, ptr %203, align 1, !tbaa !8
  %205 = zext i8 %204 to i64
  %206 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 %205), !nosanitize !9
  %207 = extractvalue { i64, i1 } %206, 0, !nosanitize !9
  %208 = extractvalue { i64, i1 } %206, 1, !nosanitize !9
  br i1 %208, label %209, label %210, !prof !11, !nosanitize !9

209:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

210:                                              ; preds = %202
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 %207), !nosanitize !9
  %212 = extractvalue { i64, i1 } %211, 0, !nosanitize !9
  %213 = extractvalue { i64, i1 } %211, 1, !nosanitize !9
  br i1 %213, label %214, label %215, !prof !11, !nosanitize !9

214:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

215:                                              ; preds = %210
  %216 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %217 = load i8, ptr %216, align 1, !tbaa !8
  %218 = zext i8 %217 to i64
  %219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 %218), !nosanitize !9
  %220 = extractvalue { i64, i1 } %219, 0, !nosanitize !9
  %221 = extractvalue { i64, i1 } %219, 1, !nosanitize !9
  br i1 %221, label %222, label %223, !prof !11, !nosanitize !9

222:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

223:                                              ; preds = %215
  %224 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 %220), !nosanitize !9
  %225 = extractvalue { i64, i1 } %224, 0, !nosanitize !9
  %226 = extractvalue { i64, i1 } %224, 1, !nosanitize !9
  br i1 %226, label %227, label %228, !prof !11, !nosanitize !9

227:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

228:                                              ; preds = %223
  %229 = getelementptr inbounds nuw i8, ptr %58, i64 13
  %230 = load i8, ptr %229, align 1, !tbaa !8
  %231 = zext i8 %230 to i64
  %232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 %231), !nosanitize !9
  %233 = extractvalue { i64, i1 } %232, 0, !nosanitize !9
  %234 = extractvalue { i64, i1 } %232, 1, !nosanitize !9
  br i1 %234, label %235, label %236, !prof !11, !nosanitize !9

235:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

236:                                              ; preds = %228
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 %233), !nosanitize !9
  %238 = extractvalue { i64, i1 } %237, 0, !nosanitize !9
  %239 = extractvalue { i64, i1 } %237, 1, !nosanitize !9
  br i1 %239, label %240, label %241, !prof !11, !nosanitize !9

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

241:                                              ; preds = %236
  %242 = getelementptr inbounds nuw i8, ptr %58, i64 14
  %243 = load i8, ptr %242, align 1, !tbaa !8
  %244 = zext i8 %243 to i64
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %244), !nosanitize !9
  %246 = extractvalue { i64, i1 } %245, 0, !nosanitize !9
  %247 = extractvalue { i64, i1 } %245, 1, !nosanitize !9
  br i1 %247, label %248, label %249, !prof !11, !nosanitize !9

248:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

249:                                              ; preds = %241
  %250 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %238, i64 %246), !nosanitize !9
  %251 = extractvalue { i64, i1 } %250, 0, !nosanitize !9
  %252 = extractvalue { i64, i1 } %250, 1, !nosanitize !9
  br i1 %252, label %253, label %254, !prof !11, !nosanitize !9

253:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

254:                                              ; preds = %249
  %255 = getelementptr inbounds nuw i8, ptr %58, i64 15
  %256 = load i8, ptr %255, align 1, !tbaa !8
  %257 = zext i8 %256 to i64
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %246, i64 %257), !nosanitize !9
  %259 = extractvalue { i64, i1 } %258, 0, !nosanitize !9
  %260 = extractvalue { i64, i1 } %258, 1, !nosanitize !9
  br i1 %260, label %261, label %262, !prof !11, !nosanitize !9

261:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

262:                                              ; preds = %254
  %263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 %259), !nosanitize !9
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !9
  br i1 %264, label %265, label %266, !prof !11, !nosanitize !9

265:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

266:                                              ; preds = %262
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !9
  %268 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %269 = add nsw i32 %60, -1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %56, !llvm.loop !15

271:                                              ; preds = %266
  %272 = urem i64 %259, 65521
  %273 = urem i64 %267, 65521
  %274 = icmp ugt i64 %54, 5551
  br i1 %274, label %.preheader9, label %275, !llvm.loop !16

275:                                              ; preds = %271
  %276 = icmp eq i64 %54, 0
  br i1 %276, label %520, label %277

277:                                              ; preds = %275
  %278 = icmp samesign ugt i64 %54, 15
  br i1 %278, label %.preheader443, label %.loopexit8

.loopexit8:                                       ; preds = %496, %277
  %279 = phi i64 [ %272, %277 ], [ %489, %496 ]
  %280 = phi ptr [ %55, %277 ], [ %498, %496 ]
  %281 = phi i64 [ %54, %277 ], [ %290, %496 ]
  %282 = phi i64 [ %273, %277 ], [ %497, %496 ]
  %283 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %281, i64 1), !nosanitize !9
  %284 = extractvalue { i64, i1 } %283, 1, !nosanitize !9
  br i1 %284, label %.loopexit7, label %.preheader6, !prof !10, !nosanitize !9

285:                                              ; preds = %.preheader443, %496
  %286 = phi i64 [ %497, %496 ], [ %.ph, %.preheader443 ]
  %287 = phi i64 [ %290, %496 ], [ %.ph444, %.preheader443 ]
  %288 = phi ptr [ %498, %496 ], [ %.ph445, %.preheader443 ]
  %289 = phi i64 [ %489, %496 ], [ %.ph446, %.preheader443 ]
  %290 = add nsw i64 %287, -16
  %291 = load i8, ptr %288, align 1, !tbaa !8
  %292 = zext i8 %291 to i64
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 %292), !nosanitize !9
  %294 = extractvalue { i64, i1 } %293, 0, !nosanitize !9
  %295 = extractvalue { i64, i1 } %293, 1, !nosanitize !9
  br i1 %295, label %296, label %297, !prof !11, !nosanitize !9

296:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

297:                                              ; preds = %285
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %286, i64 %294), !nosanitize !9
  %299 = extractvalue { i64, i1 } %298, 0, !nosanitize !9
  %300 = extractvalue { i64, i1 } %298, 1, !nosanitize !9
  br i1 %300, label %301, label %302, !prof !11, !nosanitize !9

301:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

302:                                              ; preds = %297
  %303 = getelementptr inbounds nuw i8, ptr %288, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i64
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %294, i64 %305), !nosanitize !9
  %307 = extractvalue { i64, i1 } %306, 0, !nosanitize !9
  %308 = extractvalue { i64, i1 } %306, 1, !nosanitize !9
  br i1 %308, label %309, label %310, !prof !11, !nosanitize !9

309:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

310:                                              ; preds = %302
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 %307), !nosanitize !9
  %312 = extractvalue { i64, i1 } %311, 0, !nosanitize !9
  %313 = extractvalue { i64, i1 } %311, 1, !nosanitize !9
  br i1 %313, label %314, label %315, !prof !11, !nosanitize !9

314:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

315:                                              ; preds = %310
  %316 = getelementptr inbounds nuw i8, ptr %288, i64 2
  %317 = load i8, ptr %316, align 1, !tbaa !8
  %318 = zext i8 %317 to i64
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 %318), !nosanitize !9
  %320 = extractvalue { i64, i1 } %319, 0, !nosanitize !9
  %321 = extractvalue { i64, i1 } %319, 1, !nosanitize !9
  br i1 %321, label %322, label %323, !prof !11, !nosanitize !9

322:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

323:                                              ; preds = %315
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %320), !nosanitize !9
  %325 = extractvalue { i64, i1 } %324, 0, !nosanitize !9
  %326 = extractvalue { i64, i1 } %324, 1, !nosanitize !9
  br i1 %326, label %327, label %328, !prof !11, !nosanitize !9

327:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

328:                                              ; preds = %323
  %329 = getelementptr inbounds nuw i8, ptr %288, i64 3
  %330 = load i8, ptr %329, align 1, !tbaa !8
  %331 = zext i8 %330 to i64
  %332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 %331), !nosanitize !9
  %333 = extractvalue { i64, i1 } %332, 0, !nosanitize !9
  %334 = extractvalue { i64, i1 } %332, 1, !nosanitize !9
  br i1 %334, label %335, label %336, !prof !11, !nosanitize !9

335:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

336:                                              ; preds = %328
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 %333), !nosanitize !9
  %338 = extractvalue { i64, i1 } %337, 0, !nosanitize !9
  %339 = extractvalue { i64, i1 } %337, 1, !nosanitize !9
  br i1 %339, label %340, label %341, !prof !11, !nosanitize !9

340:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

341:                                              ; preds = %336
  %342 = getelementptr inbounds nuw i8, ptr %288, i64 4
  %343 = load i8, ptr %342, align 1, !tbaa !8
  %344 = zext i8 %343 to i64
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 %344), !nosanitize !9
  %346 = extractvalue { i64, i1 } %345, 0, !nosanitize !9
  %347 = extractvalue { i64, i1 } %345, 1, !nosanitize !9
  br i1 %347, label %348, label %349, !prof !11, !nosanitize !9

348:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

349:                                              ; preds = %341
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 %346), !nosanitize !9
  %351 = extractvalue { i64, i1 } %350, 0, !nosanitize !9
  %352 = extractvalue { i64, i1 } %350, 1, !nosanitize !9
  br i1 %352, label %353, label %354, !prof !11, !nosanitize !9

353:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

354:                                              ; preds = %349
  %355 = getelementptr inbounds nuw i8, ptr %288, i64 5
  %356 = load i8, ptr %355, align 1, !tbaa !8
  %357 = zext i8 %356 to i64
  %358 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %346, i64 %357), !nosanitize !9
  %359 = extractvalue { i64, i1 } %358, 0, !nosanitize !9
  %360 = extractvalue { i64, i1 } %358, 1, !nosanitize !9
  br i1 %360, label %361, label %362, !prof !11, !nosanitize !9

361:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

362:                                              ; preds = %354
  %363 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 %359), !nosanitize !9
  %364 = extractvalue { i64, i1 } %363, 0, !nosanitize !9
  %365 = extractvalue { i64, i1 } %363, 1, !nosanitize !9
  br i1 %365, label %366, label %367, !prof !11, !nosanitize !9

366:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

367:                                              ; preds = %362
  %368 = getelementptr inbounds nuw i8, ptr %288, i64 6
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = zext i8 %369 to i64
  %371 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %370), !nosanitize !9
  %372 = extractvalue { i64, i1 } %371, 0, !nosanitize !9
  %373 = extractvalue { i64, i1 } %371, 1, !nosanitize !9
  br i1 %373, label %374, label %375, !prof !11, !nosanitize !9

374:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

375:                                              ; preds = %367
  %376 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %364, i64 %372), !nosanitize !9
  %377 = extractvalue { i64, i1 } %376, 0, !nosanitize !9
  %378 = extractvalue { i64, i1 } %376, 1, !nosanitize !9
  br i1 %378, label %379, label %380, !prof !11, !nosanitize !9

379:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

380:                                              ; preds = %375
  %381 = getelementptr inbounds nuw i8, ptr %288, i64 7
  %382 = load i8, ptr %381, align 1, !tbaa !8
  %383 = zext i8 %382 to i64
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %372, i64 %383), !nosanitize !9
  %385 = extractvalue { i64, i1 } %384, 0, !nosanitize !9
  %386 = extractvalue { i64, i1 } %384, 1, !nosanitize !9
  br i1 %386, label %387, label %388, !prof !11, !nosanitize !9

387:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

388:                                              ; preds = %380
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %377, i64 %385), !nosanitize !9
  %390 = extractvalue { i64, i1 } %389, 0, !nosanitize !9
  %391 = extractvalue { i64, i1 } %389, 1, !nosanitize !9
  br i1 %391, label %392, label %393, !prof !11, !nosanitize !9

392:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

393:                                              ; preds = %388
  %394 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = zext i8 %395 to i64
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %385, i64 %396), !nosanitize !9
  %398 = extractvalue { i64, i1 } %397, 0, !nosanitize !9
  %399 = extractvalue { i64, i1 } %397, 1, !nosanitize !9
  br i1 %399, label %400, label %401, !prof !11, !nosanitize !9

400:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

401:                                              ; preds = %393
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %390, i64 %398), !nosanitize !9
  %403 = extractvalue { i64, i1 } %402, 0, !nosanitize !9
  %404 = extractvalue { i64, i1 } %402, 1, !nosanitize !9
  br i1 %404, label %405, label %406, !prof !11, !nosanitize !9

405:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

406:                                              ; preds = %401
  %407 = getelementptr inbounds nuw i8, ptr %288, i64 9
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = zext i8 %408 to i64
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 %409), !nosanitize !9
  %411 = extractvalue { i64, i1 } %410, 0, !nosanitize !9
  %412 = extractvalue { i64, i1 } %410, 1, !nosanitize !9
  br i1 %412, label %413, label %414, !prof !11, !nosanitize !9

413:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

414:                                              ; preds = %406
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 %411), !nosanitize !9
  %416 = extractvalue { i64, i1 } %415, 0, !nosanitize !9
  %417 = extractvalue { i64, i1 } %415, 1, !nosanitize !9
  br i1 %417, label %418, label %419, !prof !11, !nosanitize !9

418:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

419:                                              ; preds = %414
  %420 = getelementptr inbounds nuw i8, ptr %288, i64 10
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = zext i8 %421 to i64
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 %422), !nosanitize !9
  %424 = extractvalue { i64, i1 } %423, 0, !nosanitize !9
  %425 = extractvalue { i64, i1 } %423, 1, !nosanitize !9
  br i1 %425, label %426, label %427, !prof !11, !nosanitize !9

426:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

427:                                              ; preds = %419
  %428 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 %424), !nosanitize !9
  %429 = extractvalue { i64, i1 } %428, 0, !nosanitize !9
  %430 = extractvalue { i64, i1 } %428, 1, !nosanitize !9
  br i1 %430, label %431, label %432, !prof !11, !nosanitize !9

431:                                              ; preds = %427
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

432:                                              ; preds = %427
  %433 = getelementptr inbounds nuw i8, ptr %288, i64 11
  %434 = load i8, ptr %433, align 1, !tbaa !8
  %435 = zext i8 %434 to i64
  %436 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %424, i64 %435), !nosanitize !9
  %437 = extractvalue { i64, i1 } %436, 0, !nosanitize !9
  %438 = extractvalue { i64, i1 } %436, 1, !nosanitize !9
  br i1 %438, label %439, label %440, !prof !11, !nosanitize !9

439:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

440:                                              ; preds = %432
  %441 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 %437), !nosanitize !9
  %442 = extractvalue { i64, i1 } %441, 0, !nosanitize !9
  %443 = extractvalue { i64, i1 } %441, 1, !nosanitize !9
  br i1 %443, label %444, label %445, !prof !11, !nosanitize !9

444:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

445:                                              ; preds = %440
  %446 = getelementptr inbounds nuw i8, ptr %288, i64 12
  %447 = load i8, ptr %446, align 1, !tbaa !8
  %448 = zext i8 %447 to i64
  %449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %437, i64 %448), !nosanitize !9
  %450 = extractvalue { i64, i1 } %449, 0, !nosanitize !9
  %451 = extractvalue { i64, i1 } %449, 1, !nosanitize !9
  br i1 %451, label %452, label %453, !prof !11, !nosanitize !9

452:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

453:                                              ; preds = %445
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %442, i64 %450), !nosanitize !9
  %455 = extractvalue { i64, i1 } %454, 0, !nosanitize !9
  %456 = extractvalue { i64, i1 } %454, 1, !nosanitize !9
  br i1 %456, label %457, label %458, !prof !11, !nosanitize !9

457:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

458:                                              ; preds = %453
  %459 = getelementptr inbounds nuw i8, ptr %288, i64 13
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = zext i8 %460 to i64
  %462 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %450, i64 %461), !nosanitize !9
  %463 = extractvalue { i64, i1 } %462, 0, !nosanitize !9
  %464 = extractvalue { i64, i1 } %462, 1, !nosanitize !9
  br i1 %464, label %465, label %466, !prof !11, !nosanitize !9

465:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

466:                                              ; preds = %458
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %455, i64 %463), !nosanitize !9
  %468 = extractvalue { i64, i1 } %467, 0, !nosanitize !9
  %469 = extractvalue { i64, i1 } %467, 1, !nosanitize !9
  br i1 %469, label %470, label %471, !prof !11, !nosanitize !9

470:                                              ; preds = %466
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

471:                                              ; preds = %466
  %472 = getelementptr inbounds nuw i8, ptr %288, i64 14
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = zext i8 %473 to i64
  %475 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %463, i64 %474), !nosanitize !9
  %476 = extractvalue { i64, i1 } %475, 0, !nosanitize !9
  %477 = extractvalue { i64, i1 } %475, 1, !nosanitize !9
  br i1 %477, label %478, label %479, !prof !11, !nosanitize !9

478:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

479:                                              ; preds = %471
  %480 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %468, i64 %476), !nosanitize !9
  %481 = extractvalue { i64, i1 } %480, 0, !nosanitize !9
  %482 = extractvalue { i64, i1 } %480, 1, !nosanitize !9
  br i1 %482, label %483, label %484, !prof !11, !nosanitize !9

483:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

484:                                              ; preds = %479
  %485 = getelementptr inbounds nuw i8, ptr %288, i64 15
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = zext i8 %486 to i64
  %488 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %476, i64 %487), !nosanitize !9
  %489 = extractvalue { i64, i1 } %488, 0, !nosanitize !9
  %490 = extractvalue { i64, i1 } %488, 1, !nosanitize !9
  br i1 %490, label %491, label %492, !prof !11, !nosanitize !9

491:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

492:                                              ; preds = %484
  %493 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 %489), !nosanitize !9
  %494 = extractvalue { i64, i1 } %493, 1, !nosanitize !9
  br i1 %494, label %495, label %496, !prof !11, !nosanitize !9

495:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

496:                                              ; preds = %492
  %497 = extractvalue { i64, i1 } %493, 0, !nosanitize !9
  %498 = getelementptr inbounds nuw i8, ptr %288, i64 16
  %499 = icmp ugt i64 %290, 15
  br i1 %499, label %285, label %.loopexit8, !llvm.loop !17

.loopexit7:                                       ; preds = %516, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader6:                                      ; preds = %.loopexit8, %516
  %500 = phi { i64, i1 } [ %518, %516 ], [ %283, %.loopexit8 ]
  %501 = phi i64 [ %517, %516 ], [ %282, %.loopexit8 ]
  %502 = phi ptr [ %505, %516 ], [ %280, %.loopexit8 ]
  %503 = phi i64 [ %509, %516 ], [ %279, %.loopexit8 ]
  %504 = extractvalue { i64, i1 } %500, 0
  %505 = getelementptr inbounds nuw i8, ptr %502, i64 1
  %506 = load i8, ptr %502, align 1, !tbaa !8
  %507 = zext i8 %506 to i64
  %508 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %503, i64 %507), !nosanitize !9
  %509 = extractvalue { i64, i1 } %508, 0, !nosanitize !9
  %510 = extractvalue { i64, i1 } %508, 1, !nosanitize !9
  br i1 %510, label %511, label %512, !prof !11, !nosanitize !9

511:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

512:                                              ; preds = %.preheader6
  %513 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 %509), !nosanitize !9
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !9
  br i1 %514, label %515, label %516, !prof !11, !nosanitize !9

515:                                              ; preds = %512
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

516:                                              ; preds = %512
  %517 = extractvalue { i64, i1 } %513, 0, !nosanitize !9
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %504, i64 1), !nosanitize !9
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !9
  br i1 %519, label %.loopexit7, label %.preheader6, !prof !12, !llvm.loop !18, !nosanitize !9

520:                                              ; preds = %275
  %521 = shl nuw nsw i64 %273, 16
  %522 = or disjoint i64 %521, %272
  br label %523

523:                                              ; preds = %520, %21, %8
  %524 = phi i64 [ %20, %8 ], [ %522, %520 ], [ 1, %21 ]
  ret i64 %524
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
  br label %524

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %524, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %.preheader9, label %.preheader443

.preheader443:                                    ; preds = %278, %26
  %.ph = phi i64 [ %274, %278 ], [ %6, %26 ]
  %.ph444 = phi i64 [ %55, %278 ], [ %4, %26 ]
  %.ph445 = phi ptr [ %56, %278 ], [ %1, %26 ]
  %.ph446 = phi i64 [ %273, %278 ], [ %7, %26 ]
  br label %286

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
  %83 = extractvalue { i64, i1 } %82, 0, !nosanitize !9
  %84 = extractvalue { i64, i1 } %82, 1, !nosanitize !9
  br i1 %84, label %85, label %86, !prof !11, !nosanitize !9

85:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !8
  %89 = zext i8 %88 to i64
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 %89), !nosanitize !9
  %91 = extractvalue { i64, i1 } %90, 0, !nosanitize !9
  %92 = extractvalue { i64, i1 } %90, 1, !nosanitize !9
  br i1 %92, label %93, label %94, !prof !11, !nosanitize !9

93:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

94:                                               ; preds = %86
  %95 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %83, i64 %91), !nosanitize !9
  %96 = extractvalue { i64, i1 } %95, 0, !nosanitize !9
  %97 = extractvalue { i64, i1 } %95, 1, !nosanitize !9
  br i1 %97, label %98, label %99, !prof !11, !nosanitize !9

98:                                               ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

99:                                               ; preds = %94
  %100 = getelementptr inbounds nuw i8, ptr %59, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !8
  %102 = zext i8 %101 to i64
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %102), !nosanitize !9
  %104 = extractvalue { i64, i1 } %103, 0, !nosanitize !9
  %105 = extractvalue { i64, i1 } %103, 1, !nosanitize !9
  br i1 %105, label %106, label %107, !prof !11, !nosanitize !9

106:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

107:                                              ; preds = %99
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %104), !nosanitize !9
  %109 = extractvalue { i64, i1 } %108, 0, !nosanitize !9
  %110 = extractvalue { i64, i1 } %108, 1, !nosanitize !9
  br i1 %110, label %111, label %112, !prof !11, !nosanitize !9

111:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

112:                                              ; preds = %107
  %113 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %114 = load i8, ptr %113, align 1, !tbaa !8
  %115 = zext i8 %114 to i64
  %116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 %115), !nosanitize !9
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !9
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !9
  br i1 %118, label %119, label %120, !prof !11, !nosanitize !9

119:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

120:                                              ; preds = %112
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 %117), !nosanitize !9
  %122 = extractvalue { i64, i1 } %121, 0, !nosanitize !9
  %123 = extractvalue { i64, i1 } %121, 1, !nosanitize !9
  br i1 %123, label %124, label %125, !prof !11, !nosanitize !9

124:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %59, i64 5
  %127 = load i8, ptr %126, align 1, !tbaa !8
  %128 = zext i8 %127 to i64
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 %128), !nosanitize !9
  %130 = extractvalue { i64, i1 } %129, 0, !nosanitize !9
  %131 = extractvalue { i64, i1 } %129, 1, !nosanitize !9
  br i1 %131, label %132, label %133, !prof !11, !nosanitize !9

132:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

133:                                              ; preds = %125
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 %130), !nosanitize !9
  %135 = extractvalue { i64, i1 } %134, 0, !nosanitize !9
  %136 = extractvalue { i64, i1 } %134, 1, !nosanitize !9
  br i1 %136, label %137, label %138, !prof !11, !nosanitize !9

137:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

138:                                              ; preds = %133
  %139 = getelementptr inbounds nuw i8, ptr %59, i64 6
  %140 = load i8, ptr %139, align 1, !tbaa !8
  %141 = zext i8 %140 to i64
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 %141), !nosanitize !9
  %143 = extractvalue { i64, i1 } %142, 0, !nosanitize !9
  %144 = extractvalue { i64, i1 } %142, 1, !nosanitize !9
  br i1 %144, label %145, label %146, !prof !11, !nosanitize !9

145:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

146:                                              ; preds = %138
  %147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 %143), !nosanitize !9
  %148 = extractvalue { i64, i1 } %147, 0, !nosanitize !9
  %149 = extractvalue { i64, i1 } %147, 1, !nosanitize !9
  br i1 %149, label %150, label %151, !prof !11, !nosanitize !9

150:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

151:                                              ; preds = %146
  %152 = getelementptr inbounds nuw i8, ptr %59, i64 7
  %153 = load i8, ptr %152, align 1, !tbaa !8
  %154 = zext i8 %153 to i64
  %155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %154), !nosanitize !9
  %156 = extractvalue { i64, i1 } %155, 0, !nosanitize !9
  %157 = extractvalue { i64, i1 } %155, 1, !nosanitize !9
  br i1 %157, label %158, label %159, !prof !11, !nosanitize !9

158:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

159:                                              ; preds = %151
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %156), !nosanitize !9
  %161 = extractvalue { i64, i1 } %160, 0, !nosanitize !9
  %162 = extractvalue { i64, i1 } %160, 1, !nosanitize !9
  br i1 %162, label %163, label %164, !prof !11, !nosanitize !9

163:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

164:                                              ; preds = %159
  %165 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %166 = load i8, ptr %165, align 1, !tbaa !8
  %167 = zext i8 %166 to i64
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %156, i64 %167), !nosanitize !9
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !9
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !9
  br i1 %170, label %171, label %172, !prof !11, !nosanitize !9

171:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

172:                                              ; preds = %164
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %169), !nosanitize !9
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !9
  %175 = extractvalue { i64, i1 } %173, 1, !nosanitize !9
  br i1 %175, label %176, label %177, !prof !11, !nosanitize !9

176:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw i8, ptr %59, i64 9
  %179 = load i8, ptr %178, align 1, !tbaa !8
  %180 = zext i8 %179 to i64
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %180), !nosanitize !9
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !9
  %183 = extractvalue { i64, i1 } %181, 1, !nosanitize !9
  br i1 %183, label %184, label %185, !prof !11, !nosanitize !9

184:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

185:                                              ; preds = %177
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %182), !nosanitize !9
  %187 = extractvalue { i64, i1 } %186, 0, !nosanitize !9
  %188 = extractvalue { i64, i1 } %186, 1, !nosanitize !9
  br i1 %188, label %189, label %190, !prof !11, !nosanitize !9

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

190:                                              ; preds = %185
  %191 = getelementptr inbounds nuw i8, ptr %59, i64 10
  %192 = load i8, ptr %191, align 1, !tbaa !8
  %193 = zext i8 %192 to i64
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %193), !nosanitize !9
  %195 = extractvalue { i64, i1 } %194, 0, !nosanitize !9
  %196 = extractvalue { i64, i1 } %194, 1, !nosanitize !9
  br i1 %196, label %197, label %198, !prof !11, !nosanitize !9

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

198:                                              ; preds = %190
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %195), !nosanitize !9
  %200 = extractvalue { i64, i1 } %199, 0, !nosanitize !9
  %201 = extractvalue { i64, i1 } %199, 1, !nosanitize !9
  br i1 %201, label %202, label %203, !prof !11, !nosanitize !9

202:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

203:                                              ; preds = %198
  %204 = getelementptr inbounds nuw i8, ptr %59, i64 11
  %205 = load i8, ptr %204, align 1, !tbaa !8
  %206 = zext i8 %205 to i64
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 %206), !nosanitize !9
  %208 = extractvalue { i64, i1 } %207, 0, !nosanitize !9
  %209 = extractvalue { i64, i1 } %207, 1, !nosanitize !9
  br i1 %209, label %210, label %211, !prof !11, !nosanitize !9

210:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

211:                                              ; preds = %203
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 %208), !nosanitize !9
  %213 = extractvalue { i64, i1 } %212, 0, !nosanitize !9
  %214 = extractvalue { i64, i1 } %212, 1, !nosanitize !9
  br i1 %214, label %215, label %216, !prof !11, !nosanitize !9

215:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %218 = load i8, ptr %217, align 1, !tbaa !8
  %219 = zext i8 %218 to i64
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %219), !nosanitize !9
  %221 = extractvalue { i64, i1 } %220, 0, !nosanitize !9
  %222 = extractvalue { i64, i1 } %220, 1, !nosanitize !9
  br i1 %222, label %223, label %224, !prof !11, !nosanitize !9

223:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

224:                                              ; preds = %216
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %221), !nosanitize !9
  %226 = extractvalue { i64, i1 } %225, 0, !nosanitize !9
  %227 = extractvalue { i64, i1 } %225, 1, !nosanitize !9
  br i1 %227, label %228, label %229, !prof !11, !nosanitize !9

228:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

229:                                              ; preds = %224
  %230 = getelementptr inbounds nuw i8, ptr %59, i64 13
  %231 = load i8, ptr %230, align 1, !tbaa !8
  %232 = zext i8 %231 to i64
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %232), !nosanitize !9
  %234 = extractvalue { i64, i1 } %233, 0, !nosanitize !9
  %235 = extractvalue { i64, i1 } %233, 1, !nosanitize !9
  br i1 %235, label %236, label %237, !prof !11, !nosanitize !9

236:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

237:                                              ; preds = %229
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %234), !nosanitize !9
  %239 = extractvalue { i64, i1 } %238, 0, !nosanitize !9
  %240 = extractvalue { i64, i1 } %238, 1, !nosanitize !9
  br i1 %240, label %241, label %242, !prof !11, !nosanitize !9

241:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

242:                                              ; preds = %237
  %243 = getelementptr inbounds nuw i8, ptr %59, i64 14
  %244 = load i8, ptr %243, align 1, !tbaa !8
  %245 = zext i8 %244 to i64
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 %245), !nosanitize !9
  %247 = extractvalue { i64, i1 } %246, 0, !nosanitize !9
  %248 = extractvalue { i64, i1 } %246, 1, !nosanitize !9
  br i1 %248, label %249, label %250, !prof !11, !nosanitize !9

249:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

250:                                              ; preds = %242
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 %247), !nosanitize !9
  %252 = extractvalue { i64, i1 } %251, 0, !nosanitize !9
  %253 = extractvalue { i64, i1 } %251, 1, !nosanitize !9
  br i1 %253, label %254, label %255, !prof !11, !nosanitize !9

254:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

255:                                              ; preds = %250
  %256 = getelementptr inbounds nuw i8, ptr %59, i64 15
  %257 = load i8, ptr %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i64
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %258), !nosanitize !9
  %260 = extractvalue { i64, i1 } %259, 0, !nosanitize !9
  %261 = extractvalue { i64, i1 } %259, 1, !nosanitize !9
  br i1 %261, label %262, label %263, !prof !11, !nosanitize !9

262:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

263:                                              ; preds = %255
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %252, i64 %260), !nosanitize !9
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !9
  br i1 %265, label %266, label %267, !prof !11, !nosanitize !9

266:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

267:                                              ; preds = %263
  %268 = extractvalue { i64, i1 } %264, 0, !nosanitize !9
  %269 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %270 = add nsw i32 %61, -1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %57, !llvm.loop !15

272:                                              ; preds = %267
  %273 = urem i64 %260, 65521
  %274 = urem i64 %268, 65521
  %275 = icmp ugt i64 %55, 5551
  br i1 %275, label %.preheader9, label %276, !llvm.loop !16

276:                                              ; preds = %272
  %277 = icmp eq i64 %55, 0
  br i1 %277, label %521, label %278

278:                                              ; preds = %276
  %279 = icmp samesign ugt i64 %55, 15
  br i1 %279, label %.preheader443, label %.loopexit8

.loopexit8:                                       ; preds = %497, %278
  %280 = phi i64 [ %273, %278 ], [ %490, %497 ]
  %281 = phi ptr [ %56, %278 ], [ %499, %497 ]
  %282 = phi i64 [ %55, %278 ], [ %291, %497 ]
  %283 = phi i64 [ %274, %278 ], [ %498, %497 ]
  %284 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %282, i64 1), !nosanitize !9
  %285 = extractvalue { i64, i1 } %284, 1, !nosanitize !9
  br i1 %285, label %.loopexit7, label %.preheader6, !prof !10, !nosanitize !9

286:                                              ; preds = %.preheader443, %497
  %287 = phi i64 [ %498, %497 ], [ %.ph, %.preheader443 ]
  %288 = phi i64 [ %291, %497 ], [ %.ph444, %.preheader443 ]
  %289 = phi ptr [ %499, %497 ], [ %.ph445, %.preheader443 ]
  %290 = phi i64 [ %490, %497 ], [ %.ph446, %.preheader443 ]
  %291 = add nsw i64 %288, -16
  %292 = load i8, ptr %289, align 1, !tbaa !8
  %293 = zext i8 %292 to i64
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 %293), !nosanitize !9
  %295 = extractvalue { i64, i1 } %294, 0, !nosanitize !9
  %296 = extractvalue { i64, i1 } %294, 1, !nosanitize !9
  br i1 %296, label %297, label %298, !prof !11, !nosanitize !9

297:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

298:                                              ; preds = %286
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %295), !nosanitize !9
  %300 = extractvalue { i64, i1 } %299, 0, !nosanitize !9
  %301 = extractvalue { i64, i1 } %299, 1, !nosanitize !9
  br i1 %301, label %302, label %303, !prof !11, !nosanitize !9

302:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

303:                                              ; preds = %298
  %304 = getelementptr inbounds nuw i8, ptr %289, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !8
  %306 = zext i8 %305 to i64
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 %306), !nosanitize !9
  %308 = extractvalue { i64, i1 } %307, 0, !nosanitize !9
  %309 = extractvalue { i64, i1 } %307, 1, !nosanitize !9
  br i1 %309, label %310, label %311, !prof !11, !nosanitize !9

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

311:                                              ; preds = %303
  %312 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 %308), !nosanitize !9
  %313 = extractvalue { i64, i1 } %312, 0, !nosanitize !9
  %314 = extractvalue { i64, i1 } %312, 1, !nosanitize !9
  br i1 %314, label %315, label %316, !prof !11, !nosanitize !9

315:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

316:                                              ; preds = %311
  %317 = getelementptr inbounds nuw i8, ptr %289, i64 2
  %318 = load i8, ptr %317, align 1, !tbaa !8
  %319 = zext i8 %318 to i64
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %319), !nosanitize !9
  %321 = extractvalue { i64, i1 } %320, 0, !nosanitize !9
  %322 = extractvalue { i64, i1 } %320, 1, !nosanitize !9
  br i1 %322, label %323, label %324, !prof !11, !nosanitize !9

323:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

324:                                              ; preds = %316
  %325 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %313, i64 %321), !nosanitize !9
  %326 = extractvalue { i64, i1 } %325, 0, !nosanitize !9
  %327 = extractvalue { i64, i1 } %325, 1, !nosanitize !9
  br i1 %327, label %328, label %329, !prof !11, !nosanitize !9

328:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

329:                                              ; preds = %324
  %330 = getelementptr inbounds nuw i8, ptr %289, i64 3
  %331 = load i8, ptr %330, align 1, !tbaa !8
  %332 = zext i8 %331 to i64
  %333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %321, i64 %332), !nosanitize !9
  %334 = extractvalue { i64, i1 } %333, 0, !nosanitize !9
  %335 = extractvalue { i64, i1 } %333, 1, !nosanitize !9
  br i1 %335, label %336, label %337, !prof !11, !nosanitize !9

336:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

337:                                              ; preds = %329
  %338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %326, i64 %334), !nosanitize !9
  %339 = extractvalue { i64, i1 } %338, 0, !nosanitize !9
  %340 = extractvalue { i64, i1 } %338, 1, !nosanitize !9
  br i1 %340, label %341, label %342, !prof !11, !nosanitize !9

341:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

342:                                              ; preds = %337
  %343 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %344 = load i8, ptr %343, align 1, !tbaa !8
  %345 = zext i8 %344 to i64
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %334, i64 %345), !nosanitize !9
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !9
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !9
  br i1 %348, label %349, label %350, !prof !11, !nosanitize !9

349:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

350:                                              ; preds = %342
  %351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %339, i64 %347), !nosanitize !9
  %352 = extractvalue { i64, i1 } %351, 0, !nosanitize !9
  %353 = extractvalue { i64, i1 } %351, 1, !nosanitize !9
  br i1 %353, label %354, label %355, !prof !11, !nosanitize !9

354:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

355:                                              ; preds = %350
  %356 = getelementptr inbounds nuw i8, ptr %289, i64 5
  %357 = load i8, ptr %356, align 1, !tbaa !8
  %358 = zext i8 %357 to i64
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %358), !nosanitize !9
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !9
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !9
  br i1 %361, label %362, label %363, !prof !11, !nosanitize !9

362:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

363:                                              ; preds = %355
  %364 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 %360), !nosanitize !9
  %365 = extractvalue { i64, i1 } %364, 0, !nosanitize !9
  %366 = extractvalue { i64, i1 } %364, 1, !nosanitize !9
  br i1 %366, label %367, label %368, !prof !11, !nosanitize !9

367:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

368:                                              ; preds = %363
  %369 = getelementptr inbounds nuw i8, ptr %289, i64 6
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = zext i8 %370 to i64
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 %371), !nosanitize !9
  %373 = extractvalue { i64, i1 } %372, 0, !nosanitize !9
  %374 = extractvalue { i64, i1 } %372, 1, !nosanitize !9
  br i1 %374, label %375, label %376, !prof !11, !nosanitize !9

375:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

376:                                              ; preds = %368
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %365, i64 %373), !nosanitize !9
  %378 = extractvalue { i64, i1 } %377, 0, !nosanitize !9
  %379 = extractvalue { i64, i1 } %377, 1, !nosanitize !9
  br i1 %379, label %380, label %381, !prof !11, !nosanitize !9

380:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

381:                                              ; preds = %376
  %382 = getelementptr inbounds nuw i8, ptr %289, i64 7
  %383 = load i8, ptr %382, align 1, !tbaa !8
  %384 = zext i8 %383 to i64
  %385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 %384), !nosanitize !9
  %386 = extractvalue { i64, i1 } %385, 0, !nosanitize !9
  %387 = extractvalue { i64, i1 } %385, 1, !nosanitize !9
  br i1 %387, label %388, label %389, !prof !11, !nosanitize !9

388:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

389:                                              ; preds = %381
  %390 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %378, i64 %386), !nosanitize !9
  %391 = extractvalue { i64, i1 } %390, 0, !nosanitize !9
  %392 = extractvalue { i64, i1 } %390, 1, !nosanitize !9
  br i1 %392, label %393, label %394, !prof !11, !nosanitize !9

393:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

394:                                              ; preds = %389
  %395 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = zext i8 %396 to i64
  %398 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %386, i64 %397), !nosanitize !9
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !9
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !9
  br i1 %400, label %401, label %402, !prof !11, !nosanitize !9

401:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

402:                                              ; preds = %394
  %403 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %391, i64 %399), !nosanitize !9
  %404 = extractvalue { i64, i1 } %403, 0, !nosanitize !9
  %405 = extractvalue { i64, i1 } %403, 1, !nosanitize !9
  br i1 %405, label %406, label %407, !prof !11, !nosanitize !9

406:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

407:                                              ; preds = %402
  %408 = getelementptr inbounds nuw i8, ptr %289, i64 9
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = zext i8 %409 to i64
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 %410), !nosanitize !9
  %412 = extractvalue { i64, i1 } %411, 0, !nosanitize !9
  %413 = extractvalue { i64, i1 } %411, 1, !nosanitize !9
  br i1 %413, label %414, label %415, !prof !11, !nosanitize !9

414:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

415:                                              ; preds = %407
  %416 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %404, i64 %412), !nosanitize !9
  %417 = extractvalue { i64, i1 } %416, 0, !nosanitize !9
  %418 = extractvalue { i64, i1 } %416, 1, !nosanitize !9
  br i1 %418, label %419, label %420, !prof !11, !nosanitize !9

419:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

420:                                              ; preds = %415
  %421 = getelementptr inbounds nuw i8, ptr %289, i64 10
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = zext i8 %422 to i64
  %424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 %423), !nosanitize !9
  %425 = extractvalue { i64, i1 } %424, 0, !nosanitize !9
  %426 = extractvalue { i64, i1 } %424, 1, !nosanitize !9
  br i1 %426, label %427, label %428, !prof !11, !nosanitize !9

427:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

428:                                              ; preds = %420
  %429 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %417, i64 %425), !nosanitize !9
  %430 = extractvalue { i64, i1 } %429, 0, !nosanitize !9
  %431 = extractvalue { i64, i1 } %429, 1, !nosanitize !9
  br i1 %431, label %432, label %433, !prof !11, !nosanitize !9

432:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

433:                                              ; preds = %428
  %434 = getelementptr inbounds nuw i8, ptr %289, i64 11
  %435 = load i8, ptr %434, align 1, !tbaa !8
  %436 = zext i8 %435 to i64
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %436), !nosanitize !9
  %438 = extractvalue { i64, i1 } %437, 0, !nosanitize !9
  %439 = extractvalue { i64, i1 } %437, 1, !nosanitize !9
  br i1 %439, label %440, label %441, !prof !11, !nosanitize !9

440:                                              ; preds = %433
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

441:                                              ; preds = %433
  %442 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %430, i64 %438), !nosanitize !9
  %443 = extractvalue { i64, i1 } %442, 0, !nosanitize !9
  %444 = extractvalue { i64, i1 } %442, 1, !nosanitize !9
  br i1 %444, label %445, label %446, !prof !11, !nosanitize !9

445:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

446:                                              ; preds = %441
  %447 = getelementptr inbounds nuw i8, ptr %289, i64 12
  %448 = load i8, ptr %447, align 1, !tbaa !8
  %449 = zext i8 %448 to i64
  %450 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 %449), !nosanitize !9
  %451 = extractvalue { i64, i1 } %450, 0, !nosanitize !9
  %452 = extractvalue { i64, i1 } %450, 1, !nosanitize !9
  br i1 %452, label %453, label %454, !prof !11, !nosanitize !9

453:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

454:                                              ; preds = %446
  %455 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %443, i64 %451), !nosanitize !9
  %456 = extractvalue { i64, i1 } %455, 0, !nosanitize !9
  %457 = extractvalue { i64, i1 } %455, 1, !nosanitize !9
  br i1 %457, label %458, label %459, !prof !11, !nosanitize !9

458:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

459:                                              ; preds = %454
  %460 = getelementptr inbounds nuw i8, ptr %289, i64 13
  %461 = load i8, ptr %460, align 1, !tbaa !8
  %462 = zext i8 %461 to i64
  %463 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %451, i64 %462), !nosanitize !9
  %464 = extractvalue { i64, i1 } %463, 0, !nosanitize !9
  %465 = extractvalue { i64, i1 } %463, 1, !nosanitize !9
  br i1 %465, label %466, label %467, !prof !11, !nosanitize !9

466:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

467:                                              ; preds = %459
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 %464), !nosanitize !9
  %469 = extractvalue { i64, i1 } %468, 0, !nosanitize !9
  %470 = extractvalue { i64, i1 } %468, 1, !nosanitize !9
  br i1 %470, label %471, label %472, !prof !11, !nosanitize !9

471:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

472:                                              ; preds = %467
  %473 = getelementptr inbounds nuw i8, ptr %289, i64 14
  %474 = load i8, ptr %473, align 1, !tbaa !8
  %475 = zext i8 %474 to i64
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 %475), !nosanitize !9
  %477 = extractvalue { i64, i1 } %476, 0, !nosanitize !9
  %478 = extractvalue { i64, i1 } %476, 1, !nosanitize !9
  br i1 %478, label %479, label %480, !prof !11, !nosanitize !9

479:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

480:                                              ; preds = %472
  %481 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %469, i64 %477), !nosanitize !9
  %482 = extractvalue { i64, i1 } %481, 0, !nosanitize !9
  %483 = extractvalue { i64, i1 } %481, 1, !nosanitize !9
  br i1 %483, label %484, label %485, !prof !11, !nosanitize !9

484:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

485:                                              ; preds = %480
  %486 = getelementptr inbounds nuw i8, ptr %289, i64 15
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = zext i8 %487 to i64
  %489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 %488), !nosanitize !9
  %490 = extractvalue { i64, i1 } %489, 0, !nosanitize !9
  %491 = extractvalue { i64, i1 } %489, 1, !nosanitize !9
  br i1 %491, label %492, label %493, !prof !11, !nosanitize !9

492:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

493:                                              ; preds = %485
  %494 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %482, i64 %490), !nosanitize !9
  %495 = extractvalue { i64, i1 } %494, 1, !nosanitize !9
  br i1 %495, label %496, label %497, !prof !11, !nosanitize !9

496:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

497:                                              ; preds = %493
  %498 = extractvalue { i64, i1 } %494, 0, !nosanitize !9
  %499 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %500 = icmp ugt i64 %291, 15
  br i1 %500, label %286, label %.loopexit8, !llvm.loop !17

.loopexit7:                                       ; preds = %517, %.loopexit8
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

.preheader6:                                      ; preds = %.loopexit8, %517
  %501 = phi { i64, i1 } [ %519, %517 ], [ %284, %.loopexit8 ]
  %502 = phi i64 [ %518, %517 ], [ %283, %.loopexit8 ]
  %503 = phi ptr [ %506, %517 ], [ %281, %.loopexit8 ]
  %504 = phi i64 [ %510, %517 ], [ %280, %.loopexit8 ]
  %505 = extractvalue { i64, i1 } %501, 0
  %506 = getelementptr inbounds nuw i8, ptr %503, i64 1
  %507 = load i8, ptr %503, align 1, !tbaa !8
  %508 = zext i8 %507 to i64
  %509 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %504, i64 %508), !nosanitize !9
  %510 = extractvalue { i64, i1 } %509, 0, !nosanitize !9
  %511 = extractvalue { i64, i1 } %509, 1, !nosanitize !9
  br i1 %511, label %512, label %513, !prof !11, !nosanitize !9

512:                                              ; preds = %.preheader6
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

513:                                              ; preds = %.preheader6
  %514 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %502, i64 %510), !nosanitize !9
  %515 = extractvalue { i64, i1 } %514, 1, !nosanitize !9
  br i1 %515, label %516, label %517, !prof !11, !nosanitize !9

516:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

517:                                              ; preds = %513
  %518 = extractvalue { i64, i1 } %514, 0, !nosanitize !9
  %519 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %505, i64 1), !nosanitize !9
  %520 = extractvalue { i64, i1 } %519, 1, !nosanitize !9
  br i1 %520, label %.loopexit7, label %.preheader6, !prof !12, !llvm.loop !18, !nosanitize !9

521:                                              ; preds = %276
  %522 = shl nuw nsw i64 %274, 16
  %523 = or disjoint i64 %522, %273
  br label %524

524:                                              ; preds = %521, %22, %9
  %525 = phi i64 [ %21, %9 ], [ %523, %521 ], [ 1, %22 ]
  ret i64 %525
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
