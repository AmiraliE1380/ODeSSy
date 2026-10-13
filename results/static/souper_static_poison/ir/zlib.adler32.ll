; ModuleID = '/mydata/zlib/adler32.c'
source_filename = "/mydata/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %466

21:                                               ; preds = %233, %226, %222, %215, %211, %204, %200, %193, %189, %182, %178, %171, %167, %160, %156, %149, %145, %138, %134, %127, %123, %116, %112, %105, %101, %94, %90, %83, %79, %72, %68, %58, %437, %430, %426, %419, %415, %408, %404, %397, %393, %386, %382, %375, %371, %364, %360, %353, %349, %342, %338, %331, %327, %320, %316, %309, %305, %298, %294, %287, %283, %276, %272, %261, %456, %444, %44, %32
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %459, %47, %254, %29
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

23:                                               ; preds = %3
  %24 = icmp eq ptr %1, null
  br i1 %24, label %466, label %25

25:                                               ; preds = %23
  %26 = icmp ult i64 %2, 16
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = icmp ugt i64 %2, 5551
  br i1 %28, label %51, label %249

29:                                               ; preds = %25
  %30 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !8
  br i1 %31, label %22, label %32, !nosanitize !8

32:                                               ; preds = %29, %47
  %33 = phi { i64, i1 } [ %49, %47 ], [ %30, %29 ]
  %34 = phi i64 [ %48, %47 ], [ %5, %29 ]
  %35 = phi ptr [ %38, %47 ], [ %1, %29 ]
  %36 = phi i64 [ %42, %47 ], [ %6, %29 ]
  %37 = extractvalue { i64, i1 } %33, 0
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %35, align 1, !tbaa !5
  %40 = zext i8 %39 to i64
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 %40), !nosanitize !8
  %42 = extractvalue { i64, i1 } %41, 0, !nosanitize !8
  %43 = extractvalue { i64, i1 } %41, 1, !nosanitize !8
  br i1 %43, label %21, label %44, !nosanitize !8

44:                                               ; preds = %32
  %45 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 %42), !nosanitize !8
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !8
  br i1 %46, label %21, label %47, !nosanitize !8

47:                                               ; preds = %44
  %48 = extractvalue { i64, i1 } %45, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 1), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %22, label %32, !llvm.loop !9, !nosanitize !8

51:                                               ; preds = %27, %241
  %52 = phi i64 [ %243, %241 ], [ %5, %27 ]
  %53 = phi i64 [ %56, %241 ], [ %2, %27 ]
  %54 = phi ptr [ %57, %241 ], [ %1, %27 ]
  %55 = phi i64 [ %242, %241 ], [ %6, %27 ]
  %56 = add i64 %53, -5552
  %57 = getelementptr i8, ptr %54, i64 5552
  br label %58

58:                                               ; preds = %236, %51
  %59 = phi i64 [ %55, %51 ], [ %231, %236 ]
  %60 = phi ptr [ %54, %51 ], [ %238, %236 ]
  %61 = phi i64 [ %52, %51 ], [ %237, %236 ]
  %62 = phi i32 [ 347, %51 ], [ %239, %236 ]
  %63 = load i8, ptr %60, align 1, !tbaa !5
  %64 = zext i8 %63 to i64
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 %64), !nosanitize !8
  %66 = extractvalue { i64, i1 } %65, 0, !nosanitize !8
  %67 = extractvalue { i64, i1 } %65, 1, !nosanitize !8
  br i1 %67, label %21, label %68, !nosanitize !8

68:                                               ; preds = %58
  %69 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 %66), !nosanitize !8
  %70 = extractvalue { i64, i1 } %69, 0, !nosanitize !8
  %71 = extractvalue { i64, i1 } %69, 1, !nosanitize !8
  br i1 %71, label %21, label %72, !nosanitize !8

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %60, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i64
  %76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 %75), !nosanitize !8
  %77 = extractvalue { i64, i1 } %76, 0, !nosanitize !8
  %78 = extractvalue { i64, i1 } %76, 1, !nosanitize !8
  br i1 %78, label %21, label %79, !nosanitize !8

79:                                               ; preds = %72
  %80 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %77), !nosanitize !8
  %81 = extractvalue { i64, i1 } %80, 0, !nosanitize !8
  %82 = extractvalue { i64, i1 } %80, 1, !nosanitize !8
  br i1 %82, label %21, label %83, !nosanitize !8

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %60, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = zext i8 %85 to i64
  %87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 %86), !nosanitize !8
  %88 = extractvalue { i64, i1 } %87, 0, !nosanitize !8
  %89 = extractvalue { i64, i1 } %87, 1, !nosanitize !8
  br i1 %89, label %21, label %90, !nosanitize !8

90:                                               ; preds = %83
  %91 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %81, i64 %88), !nosanitize !8
  %92 = extractvalue { i64, i1 } %91, 0, !nosanitize !8
  %93 = extractvalue { i64, i1 } %91, 1, !nosanitize !8
  br i1 %93, label %21, label %94, !nosanitize !8

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %60, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !5
  %97 = zext i8 %96 to i64
  %98 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %88, i64 %97), !nosanitize !8
  %99 = extractvalue { i64, i1 } %98, 0, !nosanitize !8
  %100 = extractvalue { i64, i1 } %98, 1, !nosanitize !8
  br i1 %100, label %21, label %101, !nosanitize !8

101:                                              ; preds = %94
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %92, i64 %99), !nosanitize !8
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !8
  %104 = extractvalue { i64, i1 } %102, 1, !nosanitize !8
  br i1 %104, label %21, label %105, !nosanitize !8

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %60, i64 4
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = zext i8 %107 to i64
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %99, i64 %108), !nosanitize !8
  %110 = extractvalue { i64, i1 } %109, 0, !nosanitize !8
  %111 = extractvalue { i64, i1 } %109, 1, !nosanitize !8
  br i1 %111, label %21, label %112, !nosanitize !8

112:                                              ; preds = %105
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %110), !nosanitize !8
  %114 = extractvalue { i64, i1 } %113, 0, !nosanitize !8
  %115 = extractvalue { i64, i1 } %113, 1, !nosanitize !8
  br i1 %115, label %21, label %116, !nosanitize !8

116:                                              ; preds = %112
  %117 = getelementptr inbounds i8, ptr %60, i64 5
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = zext i8 %118 to i64
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %110, i64 %119), !nosanitize !8
  %121 = extractvalue { i64, i1 } %120, 0, !nosanitize !8
  %122 = extractvalue { i64, i1 } %120, 1, !nosanitize !8
  br i1 %122, label %21, label %123, !nosanitize !8

123:                                              ; preds = %116
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %114, i64 %121), !nosanitize !8
  %125 = extractvalue { i64, i1 } %124, 0, !nosanitize !8
  %126 = extractvalue { i64, i1 } %124, 1, !nosanitize !8
  br i1 %126, label %21, label %127, !nosanitize !8

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %60, i64 6
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = zext i8 %129 to i64
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %130), !nosanitize !8
  %132 = extractvalue { i64, i1 } %131, 0, !nosanitize !8
  %133 = extractvalue { i64, i1 } %131, 1, !nosanitize !8
  br i1 %133, label %21, label %134, !nosanitize !8

134:                                              ; preds = %127
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 %132), !nosanitize !8
  %136 = extractvalue { i64, i1 } %135, 0, !nosanitize !8
  %137 = extractvalue { i64, i1 } %135, 1, !nosanitize !8
  br i1 %137, label %21, label %138, !nosanitize !8

138:                                              ; preds = %134
  %139 = getelementptr inbounds i8, ptr %60, i64 7
  %140 = load i8, ptr %139, align 1, !tbaa !5
  %141 = zext i8 %140 to i64
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 %141), !nosanitize !8
  %143 = extractvalue { i64, i1 } %142, 0, !nosanitize !8
  %144 = extractvalue { i64, i1 } %142, 1, !nosanitize !8
  br i1 %144, label %21, label %145, !nosanitize !8

145:                                              ; preds = %138
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 %143), !nosanitize !8
  %147 = extractvalue { i64, i1 } %146, 0, !nosanitize !8
  %148 = extractvalue { i64, i1 } %146, 1, !nosanitize !8
  br i1 %148, label %21, label %149, !nosanitize !8

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %60, i64 8
  %151 = load i8, ptr %150, align 1, !tbaa !5
  %152 = zext i8 %151 to i64
  %153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %152), !nosanitize !8
  %154 = extractvalue { i64, i1 } %153, 0, !nosanitize !8
  %155 = extractvalue { i64, i1 } %153, 1, !nosanitize !8
  br i1 %155, label %21, label %156, !nosanitize !8

156:                                              ; preds = %149
  %157 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 %154), !nosanitize !8
  %158 = extractvalue { i64, i1 } %157, 0, !nosanitize !8
  %159 = extractvalue { i64, i1 } %157, 1, !nosanitize !8
  br i1 %159, label %21, label %160, !nosanitize !8

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %60, i64 9
  %162 = load i8, ptr %161, align 1, !tbaa !5
  %163 = zext i8 %162 to i64
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %154, i64 %163), !nosanitize !8
  %165 = extractvalue { i64, i1 } %164, 0, !nosanitize !8
  %166 = extractvalue { i64, i1 } %164, 1, !nosanitize !8
  br i1 %166, label %21, label %167, !nosanitize !8

167:                                              ; preds = %160
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %158, i64 %165), !nosanitize !8
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !8
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !8
  br i1 %170, label %21, label %171, !nosanitize !8

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %60, i64 10
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = zext i8 %173 to i64
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %165, i64 %174), !nosanitize !8
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !8
  %177 = extractvalue { i64, i1 } %175, 1, !nosanitize !8
  br i1 %177, label %21, label %178, !nosanitize !8

178:                                              ; preds = %171
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %176), !nosanitize !8
  %180 = extractvalue { i64, i1 } %179, 0, !nosanitize !8
  %181 = extractvalue { i64, i1 } %179, 1, !nosanitize !8
  br i1 %181, label %21, label %182, !nosanitize !8

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %60, i64 11
  %184 = load i8, ptr %183, align 1, !tbaa !5
  %185 = zext i8 %184 to i64
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 %185), !nosanitize !8
  %187 = extractvalue { i64, i1 } %186, 0, !nosanitize !8
  %188 = extractvalue { i64, i1 } %186, 1, !nosanitize !8
  br i1 %188, label %21, label %189, !nosanitize !8

189:                                              ; preds = %182
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %187), !nosanitize !8
  %191 = extractvalue { i64, i1 } %190, 0, !nosanitize !8
  %192 = extractvalue { i64, i1 } %190, 1, !nosanitize !8
  br i1 %192, label %21, label %193, !nosanitize !8

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %60, i64 12
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = zext i8 %195 to i64
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %196), !nosanitize !8
  %198 = extractvalue { i64, i1 } %197, 0, !nosanitize !8
  %199 = extractvalue { i64, i1 } %197, 1, !nosanitize !8
  br i1 %199, label %21, label %200, !nosanitize !8

200:                                              ; preds = %193
  %201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 %198), !nosanitize !8
  %202 = extractvalue { i64, i1 } %201, 0, !nosanitize !8
  %203 = extractvalue { i64, i1 } %201, 1, !nosanitize !8
  br i1 %203, label %21, label %204, !nosanitize !8

204:                                              ; preds = %200
  %205 = getelementptr inbounds i8, ptr %60, i64 13
  %206 = load i8, ptr %205, align 1, !tbaa !5
  %207 = zext i8 %206 to i64
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 %207), !nosanitize !8
  %209 = extractvalue { i64, i1 } %208, 0, !nosanitize !8
  %210 = extractvalue { i64, i1 } %208, 1, !nosanitize !8
  br i1 %210, label %21, label %211, !nosanitize !8

211:                                              ; preds = %204
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %209), !nosanitize !8
  %213 = extractvalue { i64, i1 } %212, 0, !nosanitize !8
  %214 = extractvalue { i64, i1 } %212, 1, !nosanitize !8
  br i1 %214, label %21, label %215, !nosanitize !8

215:                                              ; preds = %211
  %216 = getelementptr inbounds i8, ptr %60, i64 14
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i64
  %219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 %218), !nosanitize !8
  %220 = extractvalue { i64, i1 } %219, 0, !nosanitize !8
  %221 = extractvalue { i64, i1 } %219, 1, !nosanitize !8
  br i1 %221, label %21, label %222, !nosanitize !8

222:                                              ; preds = %215
  %223 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %220), !nosanitize !8
  %224 = extractvalue { i64, i1 } %223, 0, !nosanitize !8
  %225 = extractvalue { i64, i1 } %223, 1, !nosanitize !8
  br i1 %225, label %21, label %226, !nosanitize !8

226:                                              ; preds = %222
  %227 = getelementptr inbounds i8, ptr %60, i64 15
  %228 = load i8, ptr %227, align 1, !tbaa !5
  %229 = zext i8 %228 to i64
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 %229), !nosanitize !8
  %231 = extractvalue { i64, i1 } %230, 0, !nosanitize !8
  %232 = extractvalue { i64, i1 } %230, 1, !nosanitize !8
  br i1 %232, label %21, label %233, !nosanitize !8

233:                                              ; preds = %226
  %234 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 %231), !nosanitize !8
  %235 = extractvalue { i64, i1 } %234, 1, !nosanitize !8
  br i1 %235, label %21, label %236, !nosanitize !8

236:                                              ; preds = %233
  %237 = extractvalue { i64, i1 } %234, 0, !nosanitize !8
  %238 = getelementptr inbounds i8, ptr %60, i64 16
  %239 = add nsw i32 %62, -1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %58, !llvm.loop !11

241:                                              ; preds = %236
  %242 = urem i64 %231, 65521
  %243 = urem i64 %237, 65521
  %244 = icmp ugt i64 %56, 5551
  br i1 %244, label %51, label %245, !llvm.loop !12

245:                                              ; preds = %241
  %246 = icmp eq i64 %56, 0
  br i1 %246, label %463, label %247

247:                                              ; preds = %245
  %248 = icmp ugt i64 %56, 15
  br i1 %248, label %249, label %254

249:                                              ; preds = %27, %247
  %250 = phi i64 [ %5, %27 ], [ %243, %247 ]
  %251 = phi i64 [ %2, %27 ], [ %56, %247 ]
  %252 = phi ptr [ %1, %27 ], [ %57, %247 ]
  %253 = phi i64 [ %6, %27 ], [ %242, %247 ]
  br label %261

254:                                              ; preds = %440, %247
  %255 = phi i64 [ %242, %247 ], [ %435, %440 ]
  %256 = phi ptr [ %57, %247 ], [ %442, %440 ]
  %257 = phi i64 [ %56, %247 ], [ %266, %440 ]
  %258 = phi i64 [ %243, %247 ], [ %441, %440 ]
  %259 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %257, i64 1), !nosanitize !8
  %260 = extractvalue { i64, i1 } %259, 1, !nosanitize !8
  br i1 %260, label %22, label %444, !nosanitize !8

261:                                              ; preds = %249, %440
  %262 = phi i64 [ %441, %440 ], [ %250, %249 ]
  %263 = phi i64 [ %266, %440 ], [ %251, %249 ]
  %264 = phi ptr [ %442, %440 ], [ %252, %249 ]
  %265 = phi i64 [ %435, %440 ], [ %253, %249 ]
  %266 = add i64 %263, -16
  %267 = load i8, ptr %264, align 1, !tbaa !5
  %268 = zext i8 %267 to i64
  %269 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 %268), !nosanitize !8
  %270 = extractvalue { i64, i1 } %269, 0, !nosanitize !8
  %271 = extractvalue { i64, i1 } %269, 1, !nosanitize !8
  br i1 %271, label %21, label %272, !nosanitize !8

272:                                              ; preds = %261
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 %270), !nosanitize !8
  %274 = extractvalue { i64, i1 } %273, 0, !nosanitize !8
  %275 = extractvalue { i64, i1 } %273, 1, !nosanitize !8
  br i1 %275, label %21, label %276, !nosanitize !8

276:                                              ; preds = %272
  %277 = getelementptr inbounds i8, ptr %264, i64 1
  %278 = load i8, ptr %277, align 1, !tbaa !5
  %279 = zext i8 %278 to i64
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 %279), !nosanitize !8
  %281 = extractvalue { i64, i1 } %280, 0, !nosanitize !8
  %282 = extractvalue { i64, i1 } %280, 1, !nosanitize !8
  br i1 %282, label %21, label %283, !nosanitize !8

283:                                              ; preds = %276
  %284 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %274, i64 %281), !nosanitize !8
  %285 = extractvalue { i64, i1 } %284, 0, !nosanitize !8
  %286 = extractvalue { i64, i1 } %284, 1, !nosanitize !8
  br i1 %286, label %21, label %287, !nosanitize !8

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, ptr %264, i64 2
  %289 = load i8, ptr %288, align 1, !tbaa !5
  %290 = zext i8 %289 to i64
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 %290), !nosanitize !8
  %292 = extractvalue { i64, i1 } %291, 0, !nosanitize !8
  %293 = extractvalue { i64, i1 } %291, 1, !nosanitize !8
  br i1 %293, label %21, label %294, !nosanitize !8

294:                                              ; preds = %287
  %295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 %292), !nosanitize !8
  %296 = extractvalue { i64, i1 } %295, 0, !nosanitize !8
  %297 = extractvalue { i64, i1 } %295, 1, !nosanitize !8
  br i1 %297, label %21, label %298, !nosanitize !8

298:                                              ; preds = %294
  %299 = getelementptr inbounds i8, ptr %264, i64 3
  %300 = load i8, ptr %299, align 1, !tbaa !5
  %301 = zext i8 %300 to i64
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 %301), !nosanitize !8
  %303 = extractvalue { i64, i1 } %302, 0, !nosanitize !8
  %304 = extractvalue { i64, i1 } %302, 1, !nosanitize !8
  br i1 %304, label %21, label %305, !nosanitize !8

305:                                              ; preds = %298
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 %303), !nosanitize !8
  %307 = extractvalue { i64, i1 } %306, 0, !nosanitize !8
  %308 = extractvalue { i64, i1 } %306, 1, !nosanitize !8
  br i1 %308, label %21, label %309, !nosanitize !8

309:                                              ; preds = %305
  %310 = getelementptr inbounds i8, ptr %264, i64 4
  %311 = load i8, ptr %310, align 1, !tbaa !5
  %312 = zext i8 %311 to i64
  %313 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %303, i64 %312), !nosanitize !8
  %314 = extractvalue { i64, i1 } %313, 0, !nosanitize !8
  %315 = extractvalue { i64, i1 } %313, 1, !nosanitize !8
  br i1 %315, label %21, label %316, !nosanitize !8

316:                                              ; preds = %309
  %317 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 %314), !nosanitize !8
  %318 = extractvalue { i64, i1 } %317, 0, !nosanitize !8
  %319 = extractvalue { i64, i1 } %317, 1, !nosanitize !8
  br i1 %319, label %21, label %320, !nosanitize !8

320:                                              ; preds = %316
  %321 = getelementptr inbounds i8, ptr %264, i64 5
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = zext i8 %322 to i64
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 %323), !nosanitize !8
  %325 = extractvalue { i64, i1 } %324, 0, !nosanitize !8
  %326 = extractvalue { i64, i1 } %324, 1, !nosanitize !8
  br i1 %326, label %21, label %327, !nosanitize !8

327:                                              ; preds = %320
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 %325), !nosanitize !8
  %329 = extractvalue { i64, i1 } %328, 0, !nosanitize !8
  %330 = extractvalue { i64, i1 } %328, 1, !nosanitize !8
  br i1 %330, label %21, label %331, !nosanitize !8

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %264, i64 6
  %333 = load i8, ptr %332, align 1, !tbaa !5
  %334 = zext i8 %333 to i64
  %335 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 %334), !nosanitize !8
  %336 = extractvalue { i64, i1 } %335, 0, !nosanitize !8
  %337 = extractvalue { i64, i1 } %335, 1, !nosanitize !8
  br i1 %337, label %21, label %338, !nosanitize !8

338:                                              ; preds = %331
  %339 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 %336), !nosanitize !8
  %340 = extractvalue { i64, i1 } %339, 0, !nosanitize !8
  %341 = extractvalue { i64, i1 } %339, 1, !nosanitize !8
  br i1 %341, label %21, label %342, !nosanitize !8

342:                                              ; preds = %338
  %343 = getelementptr inbounds i8, ptr %264, i64 7
  %344 = load i8, ptr %343, align 1, !tbaa !5
  %345 = zext i8 %344 to i64
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 %345), !nosanitize !8
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !8
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !8
  br i1 %348, label %21, label %349, !nosanitize !8

349:                                              ; preds = %342
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 %347), !nosanitize !8
  %351 = extractvalue { i64, i1 } %350, 0, !nosanitize !8
  %352 = extractvalue { i64, i1 } %350, 1, !nosanitize !8
  br i1 %352, label %21, label %353, !nosanitize !8

353:                                              ; preds = %349
  %354 = getelementptr inbounds i8, ptr %264, i64 8
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = zext i8 %355 to i64
  %357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %356), !nosanitize !8
  %358 = extractvalue { i64, i1 } %357, 0, !nosanitize !8
  %359 = extractvalue { i64, i1 } %357, 1, !nosanitize !8
  br i1 %359, label %21, label %360, !nosanitize !8

360:                                              ; preds = %353
  %361 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 %358), !nosanitize !8
  %362 = extractvalue { i64, i1 } %361, 0, !nosanitize !8
  %363 = extractvalue { i64, i1 } %361, 1, !nosanitize !8
  br i1 %363, label %21, label %364, !nosanitize !8

364:                                              ; preds = %360
  %365 = getelementptr inbounds i8, ptr %264, i64 9
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = zext i8 %366 to i64
  %368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %367), !nosanitize !8
  %369 = extractvalue { i64, i1 } %368, 0, !nosanitize !8
  %370 = extractvalue { i64, i1 } %368, 1, !nosanitize !8
  br i1 %370, label %21, label %371, !nosanitize !8

371:                                              ; preds = %364
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %362, i64 %369), !nosanitize !8
  %373 = extractvalue { i64, i1 } %372, 0, !nosanitize !8
  %374 = extractvalue { i64, i1 } %372, 1, !nosanitize !8
  br i1 %374, label %21, label %375, !nosanitize !8

375:                                              ; preds = %371
  %376 = getelementptr inbounds i8, ptr %264, i64 10
  %377 = load i8, ptr %376, align 1, !tbaa !5
  %378 = zext i8 %377 to i64
  %379 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %369, i64 %378), !nosanitize !8
  %380 = extractvalue { i64, i1 } %379, 0, !nosanitize !8
  %381 = extractvalue { i64, i1 } %379, 1, !nosanitize !8
  br i1 %381, label %21, label %382, !nosanitize !8

382:                                              ; preds = %375
  %383 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 %380), !nosanitize !8
  %384 = extractvalue { i64, i1 } %383, 0, !nosanitize !8
  %385 = extractvalue { i64, i1 } %383, 1, !nosanitize !8
  br i1 %385, label %21, label %386, !nosanitize !8

386:                                              ; preds = %382
  %387 = getelementptr inbounds i8, ptr %264, i64 11
  %388 = load i8, ptr %387, align 1, !tbaa !5
  %389 = zext i8 %388 to i64
  %390 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 %389), !nosanitize !8
  %391 = extractvalue { i64, i1 } %390, 0, !nosanitize !8
  %392 = extractvalue { i64, i1 } %390, 1, !nosanitize !8
  br i1 %392, label %21, label %393, !nosanitize !8

393:                                              ; preds = %386
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %384, i64 %391), !nosanitize !8
  %395 = extractvalue { i64, i1 } %394, 0, !nosanitize !8
  %396 = extractvalue { i64, i1 } %394, 1, !nosanitize !8
  br i1 %396, label %21, label %397, !nosanitize !8

397:                                              ; preds = %393
  %398 = getelementptr inbounds i8, ptr %264, i64 12
  %399 = load i8, ptr %398, align 1, !tbaa !5
  %400 = zext i8 %399 to i64
  %401 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %391, i64 %400), !nosanitize !8
  %402 = extractvalue { i64, i1 } %401, 0, !nosanitize !8
  %403 = extractvalue { i64, i1 } %401, 1, !nosanitize !8
  br i1 %403, label %21, label %404, !nosanitize !8

404:                                              ; preds = %397
  %405 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 %402), !nosanitize !8
  %406 = extractvalue { i64, i1 } %405, 0, !nosanitize !8
  %407 = extractvalue { i64, i1 } %405, 1, !nosanitize !8
  br i1 %407, label %21, label %408, !nosanitize !8

408:                                              ; preds = %404
  %409 = getelementptr inbounds i8, ptr %264, i64 13
  %410 = load i8, ptr %409, align 1, !tbaa !5
  %411 = zext i8 %410 to i64
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %402, i64 %411), !nosanitize !8
  %413 = extractvalue { i64, i1 } %412, 0, !nosanitize !8
  %414 = extractvalue { i64, i1 } %412, 1, !nosanitize !8
  br i1 %414, label %21, label %415, !nosanitize !8

415:                                              ; preds = %408
  %416 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 %413), !nosanitize !8
  %417 = extractvalue { i64, i1 } %416, 0, !nosanitize !8
  %418 = extractvalue { i64, i1 } %416, 1, !nosanitize !8
  br i1 %418, label %21, label %419, !nosanitize !8

419:                                              ; preds = %415
  %420 = getelementptr inbounds i8, ptr %264, i64 14
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = zext i8 %421 to i64
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %413, i64 %422), !nosanitize !8
  %424 = extractvalue { i64, i1 } %423, 0, !nosanitize !8
  %425 = extractvalue { i64, i1 } %423, 1, !nosanitize !8
  br i1 %425, label %21, label %426, !nosanitize !8

426:                                              ; preds = %419
  %427 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %417, i64 %424), !nosanitize !8
  %428 = extractvalue { i64, i1 } %427, 0, !nosanitize !8
  %429 = extractvalue { i64, i1 } %427, 1, !nosanitize !8
  br i1 %429, label %21, label %430, !nosanitize !8

430:                                              ; preds = %426
  %431 = getelementptr inbounds i8, ptr %264, i64 15
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = zext i8 %432 to i64
  %434 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %424, i64 %433), !nosanitize !8
  %435 = extractvalue { i64, i1 } %434, 0, !nosanitize !8
  %436 = extractvalue { i64, i1 } %434, 1, !nosanitize !8
  br i1 %436, label %21, label %437, !nosanitize !8

437:                                              ; preds = %430
  %438 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %428, i64 %435), !nosanitize !8
  %439 = extractvalue { i64, i1 } %438, 1, !nosanitize !8
  br i1 %439, label %21, label %440, !nosanitize !8

440:                                              ; preds = %437
  %441 = extractvalue { i64, i1 } %438, 0, !nosanitize !8
  %442 = getelementptr inbounds i8, ptr %264, i64 16
  %443 = icmp ugt i64 %266, 15
  br i1 %443, label %261, label %254, !llvm.loop !13

444:                                              ; preds = %254, %459
  %445 = phi { i64, i1 } [ %461, %459 ], [ %259, %254 ]
  %446 = phi i64 [ %460, %459 ], [ %258, %254 ]
  %447 = phi ptr [ %450, %459 ], [ %256, %254 ]
  %448 = phi i64 [ %454, %459 ], [ %255, %254 ]
  %449 = extractvalue { i64, i1 } %445, 0
  %450 = getelementptr inbounds i8, ptr %447, i64 1
  %451 = load i8, ptr %447, align 1, !tbaa !5
  %452 = zext i8 %451 to i64
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %448, i64 %452), !nosanitize !8
  %454 = extractvalue { i64, i1 } %453, 0, !nosanitize !8
  %455 = extractvalue { i64, i1 } %453, 1, !nosanitize !8
  br i1 %455, label %21, label %456, !nosanitize !8

456:                                              ; preds = %444
  %457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %446, i64 %454), !nosanitize !8
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !8
  br i1 %458, label %21, label %459, !nosanitize !8

459:                                              ; preds = %456
  %460 = extractvalue { i64, i1 } %457, 0, !nosanitize !8
  %461 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %449, i64 1), !nosanitize !8
  %462 = extractvalue { i64, i1 } %461, 1, !nosanitize !8
  br i1 %462, label %22, label %444, !llvm.loop !14, !nosanitize !8

463:                                              ; preds = %245
  %464 = shl nuw nsw i64 %243, 16
  %465 = or disjoint i64 %464, %242
  br label %466

466:                                              ; preds = %23, %463, %8
  %467 = phi i64 [ %20, %8 ], [ %465, %463 ], [ 1, %23 ]
  ret i64 %467
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = lshr i64 %0, 16
  %6 = and i64 %5, 65535
  %7 = and i64 %0, 65535
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = icmp ugt i64 %12, 65520
  %14 = add nsw i64 %12, -65521
  %15 = select i1 %13, i64 %14, i64 %12
  %16 = add nsw i64 %15, %6
  %17 = icmp ugt i64 %16, 65520
  %18 = shl nsw i64 %16, 16
  %19 = add nsw i64 %18, -4293984256
  %20 = select i1 %17, i64 %19, i64 %18
  %21 = or i64 %20, %15
  br label %467

22:                                               ; preds = %239, %232, %228, %221, %217, %210, %206, %199, %195, %188, %184, %177, %173, %166, %162, %155, %151, %144, %140, %133, %129, %122, %118, %111, %107, %100, %96, %89, %85, %78, %74, %64, %438, %431, %427, %420, %416, %409, %405, %398, %394, %387, %383, %376, %372, %365, %361, %354, %350, %343, %339, %332, %328, %321, %317, %310, %306, %299, %295, %288, %284, %277, %273, %262, %457, %445, %50, %38
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !8
  unreachable, !nosanitize !8

23:                                               ; preds = %460, %53, %255, %35
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !8
  unreachable, !nosanitize !8

24:                                               ; preds = %3
  %25 = icmp eq ptr %1, null
  br i1 %25, label %467, label %26

26:                                               ; preds = %24
  %27 = icmp ult i32 %2, 16
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = icmp ugt i32 %2, 5551
  br i1 %29, label %57, label %30

30:                                               ; preds = %253, %28
  %31 = phi i64 [ %6, %28 ], [ %249, %253 ]
  %32 = phi i64 [ %4, %28 ], [ %62, %253 ]
  %33 = phi ptr [ %1, %28 ], [ %63, %253 ]
  %34 = phi i64 [ %7, %28 ], [ %248, %253 ]
  br label %262

35:                                               ; preds = %26
  %36 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !8
  br i1 %37, label %23, label %38, !nosanitize !8

38:                                               ; preds = %35, %53
  %39 = phi { i64, i1 } [ %55, %53 ], [ %36, %35 ]
  %40 = phi i64 [ %54, %53 ], [ %6, %35 ]
  %41 = phi ptr [ %44, %53 ], [ %1, %35 ]
  %42 = phi i64 [ %48, %53 ], [ %7, %35 ]
  %43 = extractvalue { i64, i1 } %39, 0
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = load i8, ptr %41, align 1, !tbaa !5
  %46 = zext i8 %45 to i64
  %47 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %46), !nosanitize !8
  %48 = extractvalue { i64, i1 } %47, 0, !nosanitize !8
  %49 = extractvalue { i64, i1 } %47, 1, !nosanitize !8
  br i1 %49, label %22, label %50, !nosanitize !8

50:                                               ; preds = %38
  %51 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 %48), !nosanitize !8
  %52 = extractvalue { i64, i1 } %51, 1, !nosanitize !8
  br i1 %52, label %22, label %53, !nosanitize !8

53:                                               ; preds = %50
  %54 = extractvalue { i64, i1 } %51, 0, !nosanitize !8
  %55 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 1), !nosanitize !8
  %56 = extractvalue { i64, i1 } %55, 1, !nosanitize !8
  br i1 %56, label %23, label %38, !llvm.loop !9, !nosanitize !8

57:                                               ; preds = %28, %247
  %58 = phi i64 [ %249, %247 ], [ %6, %28 ]
  %59 = phi i64 [ %62, %247 ], [ %4, %28 ]
  %60 = phi ptr [ %63, %247 ], [ %1, %28 ]
  %61 = phi i64 [ %248, %247 ], [ %7, %28 ]
  %62 = add i64 %59, -5552
  %63 = getelementptr i8, ptr %60, i64 5552
  br label %64

64:                                               ; preds = %242, %57
  %65 = phi i64 [ %61, %57 ], [ %237, %242 ]
  %66 = phi ptr [ %60, %57 ], [ %244, %242 ]
  %67 = phi i64 [ %58, %57 ], [ %243, %242 ]
  %68 = phi i32 [ 347, %57 ], [ %245, %242 ]
  %69 = load i8, ptr %66, align 1, !tbaa !5
  %70 = zext i8 %69 to i64
  %71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 %70), !nosanitize !8
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !8
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !8
  br i1 %73, label %22, label %74, !nosanitize !8

74:                                               ; preds = %64
  %75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 %72), !nosanitize !8
  %76 = extractvalue { i64, i1 } %75, 0, !nosanitize !8
  %77 = extractvalue { i64, i1 } %75, 1, !nosanitize !8
  br i1 %77, label %22, label %78, !nosanitize !8

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %66, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !5
  %81 = zext i8 %80 to i64
  %82 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 %81), !nosanitize !8
  %83 = extractvalue { i64, i1 } %82, 0, !nosanitize !8
  %84 = extractvalue { i64, i1 } %82, 1, !nosanitize !8
  br i1 %84, label %22, label %85, !nosanitize !8

85:                                               ; preds = %78
  %86 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 %83), !nosanitize !8
  %87 = extractvalue { i64, i1 } %86, 0, !nosanitize !8
  %88 = extractvalue { i64, i1 } %86, 1, !nosanitize !8
  br i1 %88, label %22, label %89, !nosanitize !8

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %66, i64 2
  %91 = load i8, ptr %90, align 1, !tbaa !5
  %92 = zext i8 %91 to i64
  %93 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %83, i64 %92), !nosanitize !8
  %94 = extractvalue { i64, i1 } %93, 0, !nosanitize !8
  %95 = extractvalue { i64, i1 } %93, 1, !nosanitize !8
  br i1 %95, label %22, label %96, !nosanitize !8

96:                                               ; preds = %89
  %97 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 %94), !nosanitize !8
  %98 = extractvalue { i64, i1 } %97, 0, !nosanitize !8
  %99 = extractvalue { i64, i1 } %97, 1, !nosanitize !8
  br i1 %99, label %22, label %100, !nosanitize !8

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %66, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = zext i8 %102 to i64
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %103), !nosanitize !8
  %105 = extractvalue { i64, i1 } %104, 0, !nosanitize !8
  %106 = extractvalue { i64, i1 } %104, 1, !nosanitize !8
  br i1 %106, label %22, label %107, !nosanitize !8

107:                                              ; preds = %100
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %98, i64 %105), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 0, !nosanitize !8
  %110 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %110, label %22, label %111, !nosanitize !8

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %66, i64 4
  %113 = load i8, ptr %112, align 1, !tbaa !5
  %114 = zext i8 %113 to i64
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 %114), !nosanitize !8
  %116 = extractvalue { i64, i1 } %115, 0, !nosanitize !8
  %117 = extractvalue { i64, i1 } %115, 1, !nosanitize !8
  br i1 %117, label %22, label %118, !nosanitize !8

118:                                              ; preds = %111
  %119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 %116), !nosanitize !8
  %120 = extractvalue { i64, i1 } %119, 0, !nosanitize !8
  %121 = extractvalue { i64, i1 } %119, 1, !nosanitize !8
  br i1 %121, label %22, label %122, !nosanitize !8

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %66, i64 5
  %124 = load i8, ptr %123, align 1, !tbaa !5
  %125 = zext i8 %124 to i64
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 %125), !nosanitize !8
  %127 = extractvalue { i64, i1 } %126, 0, !nosanitize !8
  %128 = extractvalue { i64, i1 } %126, 1, !nosanitize !8
  br i1 %128, label %22, label %129, !nosanitize !8

129:                                              ; preds = %122
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 %127), !nosanitize !8
  %131 = extractvalue { i64, i1 } %130, 0, !nosanitize !8
  %132 = extractvalue { i64, i1 } %130, 1, !nosanitize !8
  br i1 %132, label %22, label %133, !nosanitize !8

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, ptr %66, i64 6
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = zext i8 %135 to i64
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 %136), !nosanitize !8
  %138 = extractvalue { i64, i1 } %137, 0, !nosanitize !8
  %139 = extractvalue { i64, i1 } %137, 1, !nosanitize !8
  br i1 %139, label %22, label %140, !nosanitize !8

140:                                              ; preds = %133
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 %138), !nosanitize !8
  %142 = extractvalue { i64, i1 } %141, 0, !nosanitize !8
  %143 = extractvalue { i64, i1 } %141, 1, !nosanitize !8
  br i1 %143, label %22, label %144, !nosanitize !8

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %66, i64 7
  %146 = load i8, ptr %145, align 1, !tbaa !5
  %147 = zext i8 %146 to i64
  %148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 %147), !nosanitize !8
  %149 = extractvalue { i64, i1 } %148, 0, !nosanitize !8
  %150 = extractvalue { i64, i1 } %148, 1, !nosanitize !8
  br i1 %150, label %22, label %151, !nosanitize !8

151:                                              ; preds = %144
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 %149), !nosanitize !8
  %153 = extractvalue { i64, i1 } %152, 0, !nosanitize !8
  %154 = extractvalue { i64, i1 } %152, 1, !nosanitize !8
  br i1 %154, label %22, label %155, !nosanitize !8

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %66, i64 8
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = zext i8 %157 to i64
  %159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %158), !nosanitize !8
  %160 = extractvalue { i64, i1 } %159, 0, !nosanitize !8
  %161 = extractvalue { i64, i1 } %159, 1, !nosanitize !8
  br i1 %161, label %22, label %162, !nosanitize !8

162:                                              ; preds = %155
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %160), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  %165 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %165, label %22, label %166, !nosanitize !8

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %66, i64 9
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = zext i8 %168 to i64
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %160, i64 %169), !nosanitize !8
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !8
  %172 = extractvalue { i64, i1 } %170, 1, !nosanitize !8
  br i1 %172, label %22, label %173, !nosanitize !8

173:                                              ; preds = %166
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %171), !nosanitize !8
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !8
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !8
  br i1 %176, label %22, label %177, !nosanitize !8

177:                                              ; preds = %173
  %178 = getelementptr inbounds i8, ptr %66, i64 10
  %179 = load i8, ptr %178, align 1, !tbaa !5
  %180 = zext i8 %179 to i64
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %180), !nosanitize !8
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !8
  %183 = extractvalue { i64, i1 } %181, 1, !nosanitize !8
  br i1 %183, label %22, label %184, !nosanitize !8

184:                                              ; preds = %177
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %182), !nosanitize !8
  %186 = extractvalue { i64, i1 } %185, 0, !nosanitize !8
  %187 = extractvalue { i64, i1 } %185, 1, !nosanitize !8
  br i1 %187, label %22, label %188, !nosanitize !8

188:                                              ; preds = %184
  %189 = getelementptr inbounds i8, ptr %66, i64 11
  %190 = load i8, ptr %189, align 1, !tbaa !5
  %191 = zext i8 %190 to i64
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %191), !nosanitize !8
  %193 = extractvalue { i64, i1 } %192, 0, !nosanitize !8
  %194 = extractvalue { i64, i1 } %192, 1, !nosanitize !8
  br i1 %194, label %22, label %195, !nosanitize !8

195:                                              ; preds = %188
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %193), !nosanitize !8
  %197 = extractvalue { i64, i1 } %196, 0, !nosanitize !8
  %198 = extractvalue { i64, i1 } %196, 1, !nosanitize !8
  br i1 %198, label %22, label %199, !nosanitize !8

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %66, i64 12
  %201 = load i8, ptr %200, align 1, !tbaa !5
  %202 = zext i8 %201 to i64
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %202), !nosanitize !8
  %204 = extractvalue { i64, i1 } %203, 0, !nosanitize !8
  %205 = extractvalue { i64, i1 } %203, 1, !nosanitize !8
  br i1 %205, label %22, label %206, !nosanitize !8

206:                                              ; preds = %199
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %197, i64 %204), !nosanitize !8
  %208 = extractvalue { i64, i1 } %207, 0, !nosanitize !8
  %209 = extractvalue { i64, i1 } %207, 1, !nosanitize !8
  br i1 %209, label %22, label %210, !nosanitize !8

210:                                              ; preds = %206
  %211 = getelementptr inbounds i8, ptr %66, i64 13
  %212 = load i8, ptr %211, align 1, !tbaa !5
  %213 = zext i8 %212 to i64
  %214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 %213), !nosanitize !8
  %215 = extractvalue { i64, i1 } %214, 0, !nosanitize !8
  %216 = extractvalue { i64, i1 } %214, 1, !nosanitize !8
  br i1 %216, label %22, label %217, !nosanitize !8

217:                                              ; preds = %210
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %215), !nosanitize !8
  %219 = extractvalue { i64, i1 } %218, 0, !nosanitize !8
  %220 = extractvalue { i64, i1 } %218, 1, !nosanitize !8
  br i1 %220, label %22, label %221, !nosanitize !8

221:                                              ; preds = %217
  %222 = getelementptr inbounds i8, ptr %66, i64 14
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i64
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 %224), !nosanitize !8
  %226 = extractvalue { i64, i1 } %225, 0, !nosanitize !8
  %227 = extractvalue { i64, i1 } %225, 1, !nosanitize !8
  br i1 %227, label %22, label %228, !nosanitize !8

228:                                              ; preds = %221
  %229 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 %226), !nosanitize !8
  %230 = extractvalue { i64, i1 } %229, 0, !nosanitize !8
  %231 = extractvalue { i64, i1 } %229, 1, !nosanitize !8
  br i1 %231, label %22, label %232, !nosanitize !8

232:                                              ; preds = %228
  %233 = getelementptr inbounds i8, ptr %66, i64 15
  %234 = load i8, ptr %233, align 1, !tbaa !5
  %235 = zext i8 %234 to i64
  %236 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %235), !nosanitize !8
  %237 = extractvalue { i64, i1 } %236, 0, !nosanitize !8
  %238 = extractvalue { i64, i1 } %236, 1, !nosanitize !8
  br i1 %238, label %22, label %239, !nosanitize !8

239:                                              ; preds = %232
  %240 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 %237), !nosanitize !8
  %241 = extractvalue { i64, i1 } %240, 1, !nosanitize !8
  br i1 %241, label %22, label %242, !nosanitize !8

242:                                              ; preds = %239
  %243 = extractvalue { i64, i1 } %240, 0, !nosanitize !8
  %244 = getelementptr inbounds i8, ptr %66, i64 16
  %245 = add nsw i32 %68, -1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %64, !llvm.loop !11

247:                                              ; preds = %242
  %248 = urem i64 %237, 65521
  %249 = urem i64 %243, 65521
  %250 = icmp ugt i64 %62, 5551
  br i1 %250, label %57, label %251, !llvm.loop !12

251:                                              ; preds = %247
  %252 = icmp eq i64 %62, 0
  br i1 %252, label %464, label %253

253:                                              ; preds = %251
  %254 = icmp ugt i64 %62, 15
  br i1 %254, label %30, label %255

255:                                              ; preds = %441, %253
  %256 = phi i64 [ %248, %253 ], [ %436, %441 ]
  %257 = phi ptr [ %63, %253 ], [ %443, %441 ]
  %258 = phi i64 [ %62, %253 ], [ %267, %441 ]
  %259 = phi i64 [ %249, %253 ], [ %442, %441 ]
  %260 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %258, i64 1), !nosanitize !8
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !8
  br i1 %261, label %23, label %445, !nosanitize !8

262:                                              ; preds = %30, %441
  %263 = phi i64 [ %442, %441 ], [ %31, %30 ]
  %264 = phi i64 [ %267, %441 ], [ %32, %30 ]
  %265 = phi ptr [ %443, %441 ], [ %33, %30 ]
  %266 = phi i64 [ %436, %441 ], [ %34, %30 ]
  %267 = add i64 %264, -16
  %268 = load i8, ptr %265, align 1, !tbaa !5
  %269 = zext i8 %268 to i64
  %270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %266, i64 %269), !nosanitize !8
  %271 = extractvalue { i64, i1 } %270, 0, !nosanitize !8
  %272 = extractvalue { i64, i1 } %270, 1, !nosanitize !8
  br i1 %272, label %22, label %273, !nosanitize !8

273:                                              ; preds = %262
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %263, i64 %271), !nosanitize !8
  %275 = extractvalue { i64, i1 } %274, 0, !nosanitize !8
  %276 = extractvalue { i64, i1 } %274, 1, !nosanitize !8
  br i1 %276, label %22, label %277, !nosanitize !8

277:                                              ; preds = %273
  %278 = getelementptr inbounds i8, ptr %265, i64 1
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i64
  %281 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %271, i64 %280), !nosanitize !8
  %282 = extractvalue { i64, i1 } %281, 0, !nosanitize !8
  %283 = extractvalue { i64, i1 } %281, 1, !nosanitize !8
  br i1 %283, label %22, label %284, !nosanitize !8

284:                                              ; preds = %277
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 %282), !nosanitize !8
  %286 = extractvalue { i64, i1 } %285, 0, !nosanitize !8
  %287 = extractvalue { i64, i1 } %285, 1, !nosanitize !8
  br i1 %287, label %22, label %288, !nosanitize !8

288:                                              ; preds = %284
  %289 = getelementptr inbounds i8, ptr %265, i64 2
  %290 = load i8, ptr %289, align 1, !tbaa !5
  %291 = zext i8 %290 to i64
  %292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %282, i64 %291), !nosanitize !8
  %293 = extractvalue { i64, i1 } %292, 0, !nosanitize !8
  %294 = extractvalue { i64, i1 } %292, 1, !nosanitize !8
  br i1 %294, label %22, label %295, !nosanitize !8

295:                                              ; preds = %288
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %286, i64 %293), !nosanitize !8
  %297 = extractvalue { i64, i1 } %296, 0, !nosanitize !8
  %298 = extractvalue { i64, i1 } %296, 1, !nosanitize !8
  br i1 %298, label %22, label %299, !nosanitize !8

299:                                              ; preds = %295
  %300 = getelementptr inbounds i8, ptr %265, i64 3
  %301 = load i8, ptr %300, align 1, !tbaa !5
  %302 = zext i8 %301 to i64
  %303 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 %302), !nosanitize !8
  %304 = extractvalue { i64, i1 } %303, 0, !nosanitize !8
  %305 = extractvalue { i64, i1 } %303, 1, !nosanitize !8
  br i1 %305, label %22, label %306, !nosanitize !8

306:                                              ; preds = %299
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 %304), !nosanitize !8
  %308 = extractvalue { i64, i1 } %307, 0, !nosanitize !8
  %309 = extractvalue { i64, i1 } %307, 1, !nosanitize !8
  br i1 %309, label %22, label %310, !nosanitize !8

310:                                              ; preds = %306
  %311 = getelementptr inbounds i8, ptr %265, i64 4
  %312 = load i8, ptr %311, align 1, !tbaa !5
  %313 = zext i8 %312 to i64
  %314 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 %313), !nosanitize !8
  %315 = extractvalue { i64, i1 } %314, 0, !nosanitize !8
  %316 = extractvalue { i64, i1 } %314, 1, !nosanitize !8
  br i1 %316, label %22, label %317, !nosanitize !8

317:                                              ; preds = %310
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %315), !nosanitize !8
  %319 = extractvalue { i64, i1 } %318, 0, !nosanitize !8
  %320 = extractvalue { i64, i1 } %318, 1, !nosanitize !8
  br i1 %320, label %22, label %321, !nosanitize !8

321:                                              ; preds = %317
  %322 = getelementptr inbounds i8, ptr %265, i64 5
  %323 = load i8, ptr %322, align 1, !tbaa !5
  %324 = zext i8 %323 to i64
  %325 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %324), !nosanitize !8
  %326 = extractvalue { i64, i1 } %325, 0, !nosanitize !8
  %327 = extractvalue { i64, i1 } %325, 1, !nosanitize !8
  br i1 %327, label %22, label %328, !nosanitize !8

328:                                              ; preds = %321
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %319, i64 %326), !nosanitize !8
  %330 = extractvalue { i64, i1 } %329, 0, !nosanitize !8
  %331 = extractvalue { i64, i1 } %329, 1, !nosanitize !8
  br i1 %331, label %22, label %332, !nosanitize !8

332:                                              ; preds = %328
  %333 = getelementptr inbounds i8, ptr %265, i64 6
  %334 = load i8, ptr %333, align 1, !tbaa !5
  %335 = zext i8 %334 to i64
  %336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %326, i64 %335), !nosanitize !8
  %337 = extractvalue { i64, i1 } %336, 0, !nosanitize !8
  %338 = extractvalue { i64, i1 } %336, 1, !nosanitize !8
  br i1 %338, label %22, label %339, !nosanitize !8

339:                                              ; preds = %332
  %340 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %330, i64 %337), !nosanitize !8
  %341 = extractvalue { i64, i1 } %340, 0, !nosanitize !8
  %342 = extractvalue { i64, i1 } %340, 1, !nosanitize !8
  br i1 %342, label %22, label %343, !nosanitize !8

343:                                              ; preds = %339
  %344 = getelementptr inbounds i8, ptr %265, i64 7
  %345 = load i8, ptr %344, align 1, !tbaa !5
  %346 = zext i8 %345 to i64
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %337, i64 %346), !nosanitize !8
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !8
  %349 = extractvalue { i64, i1 } %347, 1, !nosanitize !8
  br i1 %349, label %22, label %350, !nosanitize !8

350:                                              ; preds = %343
  %351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 %348), !nosanitize !8
  %352 = extractvalue { i64, i1 } %351, 0, !nosanitize !8
  %353 = extractvalue { i64, i1 } %351, 1, !nosanitize !8
  br i1 %353, label %22, label %354, !nosanitize !8

354:                                              ; preds = %350
  %355 = getelementptr inbounds i8, ptr %265, i64 8
  %356 = load i8, ptr %355, align 1, !tbaa !5
  %357 = zext i8 %356 to i64
  %358 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %357), !nosanitize !8
  %359 = extractvalue { i64, i1 } %358, 0, !nosanitize !8
  %360 = extractvalue { i64, i1 } %358, 1, !nosanitize !8
  br i1 %360, label %22, label %361, !nosanitize !8

361:                                              ; preds = %354
  %362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 %359), !nosanitize !8
  %363 = extractvalue { i64, i1 } %362, 0, !nosanitize !8
  %364 = extractvalue { i64, i1 } %362, 1, !nosanitize !8
  br i1 %364, label %22, label %365, !nosanitize !8

365:                                              ; preds = %361
  %366 = getelementptr inbounds i8, ptr %265, i64 9
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = zext i8 %367 to i64
  %369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %368), !nosanitize !8
  %370 = extractvalue { i64, i1 } %369, 0, !nosanitize !8
  %371 = extractvalue { i64, i1 } %369, 1, !nosanitize !8
  br i1 %371, label %22, label %372, !nosanitize !8

372:                                              ; preds = %365
  %373 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %363, i64 %370), !nosanitize !8
  %374 = extractvalue { i64, i1 } %373, 0, !nosanitize !8
  %375 = extractvalue { i64, i1 } %373, 1, !nosanitize !8
  br i1 %375, label %22, label %376, !nosanitize !8

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %265, i64 10
  %378 = load i8, ptr %377, align 1, !tbaa !5
  %379 = zext i8 %378 to i64
  %380 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %370, i64 %379), !nosanitize !8
  %381 = extractvalue { i64, i1 } %380, 0, !nosanitize !8
  %382 = extractvalue { i64, i1 } %380, 1, !nosanitize !8
  br i1 %382, label %22, label %383, !nosanitize !8

383:                                              ; preds = %376
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %374, i64 %381), !nosanitize !8
  %385 = extractvalue { i64, i1 } %384, 0, !nosanitize !8
  %386 = extractvalue { i64, i1 } %384, 1, !nosanitize !8
  br i1 %386, label %22, label %387, !nosanitize !8

387:                                              ; preds = %383
  %388 = getelementptr inbounds i8, ptr %265, i64 11
  %389 = load i8, ptr %388, align 1, !tbaa !5
  %390 = zext i8 %389 to i64
  %391 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %390), !nosanitize !8
  %392 = extractvalue { i64, i1 } %391, 0, !nosanitize !8
  %393 = extractvalue { i64, i1 } %391, 1, !nosanitize !8
  br i1 %393, label %22, label %394, !nosanitize !8

394:                                              ; preds = %387
  %395 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %385, i64 %392), !nosanitize !8
  %396 = extractvalue { i64, i1 } %395, 0, !nosanitize !8
  %397 = extractvalue { i64, i1 } %395, 1, !nosanitize !8
  br i1 %397, label %22, label %398, !nosanitize !8

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, ptr %265, i64 12
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = zext i8 %400 to i64
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %392, i64 %401), !nosanitize !8
  %403 = extractvalue { i64, i1 } %402, 0, !nosanitize !8
  %404 = extractvalue { i64, i1 } %402, 1, !nosanitize !8
  br i1 %404, label %22, label %405, !nosanitize !8

405:                                              ; preds = %398
  %406 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 %403), !nosanitize !8
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !8
  %408 = extractvalue { i64, i1 } %406, 1, !nosanitize !8
  br i1 %408, label %22, label %409, !nosanitize !8

409:                                              ; preds = %405
  %410 = getelementptr inbounds i8, ptr %265, i64 13
  %411 = load i8, ptr %410, align 1, !tbaa !5
  %412 = zext i8 %411 to i64
  %413 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 %412), !nosanitize !8
  %414 = extractvalue { i64, i1 } %413, 0, !nosanitize !8
  %415 = extractvalue { i64, i1 } %413, 1, !nosanitize !8
  br i1 %415, label %22, label %416, !nosanitize !8

416:                                              ; preds = %409
  %417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %407, i64 %414), !nosanitize !8
  %418 = extractvalue { i64, i1 } %417, 0, !nosanitize !8
  %419 = extractvalue { i64, i1 } %417, 1, !nosanitize !8
  br i1 %419, label %22, label %420, !nosanitize !8

420:                                              ; preds = %416
  %421 = getelementptr inbounds i8, ptr %265, i64 14
  %422 = load i8, ptr %421, align 1, !tbaa !5
  %423 = zext i8 %422 to i64
  %424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 %423), !nosanitize !8
  %425 = extractvalue { i64, i1 } %424, 0, !nosanitize !8
  %426 = extractvalue { i64, i1 } %424, 1, !nosanitize !8
  br i1 %426, label %22, label %427, !nosanitize !8

427:                                              ; preds = %420
  %428 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %418, i64 %425), !nosanitize !8
  %429 = extractvalue { i64, i1 } %428, 0, !nosanitize !8
  %430 = extractvalue { i64, i1 } %428, 1, !nosanitize !8
  br i1 %430, label %22, label %431, !nosanitize !8

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %265, i64 15
  %433 = load i8, ptr %432, align 1, !tbaa !5
  %434 = zext i8 %433 to i64
  %435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %434), !nosanitize !8
  %436 = extractvalue { i64, i1 } %435, 0, !nosanitize !8
  %437 = extractvalue { i64, i1 } %435, 1, !nosanitize !8
  br i1 %437, label %22, label %438, !nosanitize !8

438:                                              ; preds = %431
  %439 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 %436), !nosanitize !8
  %440 = extractvalue { i64, i1 } %439, 1, !nosanitize !8
  br i1 %440, label %22, label %441, !nosanitize !8

441:                                              ; preds = %438
  %442 = extractvalue { i64, i1 } %439, 0, !nosanitize !8
  %443 = getelementptr inbounds i8, ptr %265, i64 16
  %444 = icmp ugt i64 %267, 15
  br i1 %444, label %262, label %255, !llvm.loop !13

445:                                              ; preds = %255, %460
  %446 = phi { i64, i1 } [ %462, %460 ], [ %260, %255 ]
  %447 = phi i64 [ %461, %460 ], [ %259, %255 ]
  %448 = phi ptr [ %451, %460 ], [ %257, %255 ]
  %449 = phi i64 [ %455, %460 ], [ %256, %255 ]
  %450 = extractvalue { i64, i1 } %446, 0
  %451 = getelementptr inbounds i8, ptr %448, i64 1
  %452 = load i8, ptr %448, align 1, !tbaa !5
  %453 = zext i8 %452 to i64
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %449, i64 %453), !nosanitize !8
  %455 = extractvalue { i64, i1 } %454, 0, !nosanitize !8
  %456 = extractvalue { i64, i1 } %454, 1, !nosanitize !8
  br i1 %456, label %22, label %457, !nosanitize !8

457:                                              ; preds = %445
  %458 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 %455), !nosanitize !8
  %459 = extractvalue { i64, i1 } %458, 1, !nosanitize !8
  br i1 %459, label %22, label %460, !nosanitize !8

460:                                              ; preds = %457
  %461 = extractvalue { i64, i1 } %458, 0, !nosanitize !8
  %462 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %450, i64 1), !nosanitize !8
  %463 = extractvalue { i64, i1 } %462, 1, !nosanitize !8
  br i1 %463, label %23, label %445, !llvm.loop !14, !nosanitize !8

464:                                              ; preds = %251
  %465 = shl nuw nsw i64 %249, 16
  %466 = or disjoint i64 %465, %248
  br label %467

467:                                              ; preds = %9, %24, %464
  %468 = phi i64 [ %21, %9 ], [ %466, %464 ], [ 1, %24 ]
  ret i64 %468
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
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
  %23 = icmp ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
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
  %9 = trunc i64 %8 to i32
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
  %23 = icmp ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
