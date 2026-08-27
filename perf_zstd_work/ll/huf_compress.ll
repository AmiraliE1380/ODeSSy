; ModuleID = '/mydata/zstd/lib/compress/huf_compress.c'
source_filename = "/mydata/zstd/lib/compress/huf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rankPos = type { i16, i16 }
%struct.nodeElt_s = type { i32, i16, i8, i8 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @HUF_readCTableHeader(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %6, %12
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = icmp ult i64 %15, 748
  br i1 %17, label %434, label %18

18:                                               ; preds = %7
  %19 = icmp ugt i32 %3, 255
  br i1 %19, label %434, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 480
  store i8 0, ptr %21, align 4, !tbaa !5
  %22 = add i32 %4, 1
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = zext i32 %22 to i64
  %26 = add nsw i64 %25, -1
  %27 = icmp ult i32 %22, 5
  br i1 %27, label %28, label %30

28:                                               ; preds = %49, %74, %24
  %29 = phi i64 [ 1, %24 ], [ %50, %49 ], [ %57, %74 ]
  br label %85

30:                                               ; preds = %24
  %31 = icmp ult i32 %22, 17
  br i1 %31, label %53, label %32

32:                                               ; preds = %30
  %33 = and i64 %26, -16
  %34 = or disjoint i64 %33, 1
  %35 = insertelement <16 x i32> poison, i32 %22, i64 0
  %36 = shufflevector <16 x i32> %35, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %37

37:                                               ; preds = %37, %32
  %38 = phi i64 [ 0, %32 ], [ %44, %37 ]
  %39 = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %32 ], [ %45, %37 ]
  %40 = or disjoint i64 %38, 1
  %41 = sub <16 x i32> %36, %39
  %42 = trunc <16 x i32> %41 to <16 x i8>
  %43 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %40
  store <16 x i8> %42, ptr %43, align 1, !tbaa !5
  %44 = add nuw i64 %38, 16
  %45 = add <16 x i32> %39, splat (i32 16)
  %46 = icmp eq i64 %44, %33
  br i1 %46, label %47, label %37, !llvm.loop !8

47:                                               ; preds = %37
  %48 = icmp eq i64 %26, %33
  br i1 %48, label %76, label %49

49:                                               ; preds = %47
  %50 = or disjoint i64 %33, 1
  %51 = and i64 %26, 12
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %28, label %53

53:                                               ; preds = %49, %30
  %54 = phi i64 [ %33, %49 ], [ 0, %30 ]
  %55 = phi i64 [ %34, %49 ], [ 1, %30 ]
  %56 = and i64 %26, -4
  %57 = or disjoint i64 %56, 1
  %58 = insertelement <4 x i32> poison, i32 %22, i64 0
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> zeroinitializer
  %60 = trunc i64 %55 to i32
  %61 = insertelement <4 x i32> poison, i32 %60, i64 0
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> zeroinitializer
  %63 = add <4 x i32> %62, <i32 0, i32 1, i32 2, i32 3>
  br label %64

64:                                               ; preds = %64, %53
  %65 = phi i64 [ %54, %53 ], [ %71, %64 ]
  %66 = phi <4 x i32> [ %63, %53 ], [ %72, %64 ]
  %67 = or disjoint i64 %65, 1
  %68 = sub <4 x i32> %59, %66
  %69 = trunc <4 x i32> %68 to <4 x i8>
  %70 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %67
  store <4 x i8> %69, ptr %70, align 1, !tbaa !5
  %71 = add nuw i64 %65, 4
  %72 = add <4 x i32> %66, splat (i32 4)
  %73 = icmp eq i64 %71, %56
  br i1 %73, label %74, label %64, !llvm.loop !12

74:                                               ; preds = %64
  %75 = icmp eq i64 %26, %56
  br i1 %75, label %76, label %28

76:                                               ; preds = %85, %47, %74, %20
  %77 = icmp eq i32 %3, 0
  br i1 %77, label %141, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds nuw i8, ptr %14, i64 493
  %80 = zext nneg i32 %3 to i64
  %81 = and i64 %80, 3
  %82 = icmp ult i32 %3, 4
  br i1 %82, label %126, label %83

83:                                               ; preds = %78
  %84 = and i64 %80, 252
  br label %93

85:                                               ; preds = %28, %85
  %86 = phi i64 [ %91, %85 ], [ %29, %28 ]
  %87 = trunc i64 %86 to i32
  %88 = sub i32 %22, %87
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %86
  store i8 %89, ptr %90, align 1, !tbaa !5
  %91 = add nuw nsw i64 %86, 1
  %92 = icmp eq i64 %91, %25
  br i1 %92, label %76, label %85, !llvm.loop !13

93:                                               ; preds = %93, %83
  %94 = phi i64 [ 0, %83 ], [ %123, %93 ]
  %95 = phi i64 [ 0, %83 ], [ %124, %93 ]
  %96 = getelementptr inbounds nuw i64, ptr %9, i64 %94
  %97 = load i64, ptr %96, align 8, !tbaa !14
  %98 = and i64 %97, 255
  %99 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = getelementptr inbounds nuw [255 x i8], ptr %79, i64 0, i64 %94
  store i8 %100, ptr %101, align 1, !tbaa !5
  %102 = or disjoint i64 %94, 1
  %103 = getelementptr inbounds nuw i64, ptr %9, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = and i64 %104, 255
  %106 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = getelementptr inbounds nuw [255 x i8], ptr %79, i64 0, i64 %102
  store i8 %107, ptr %108, align 1, !tbaa !5
  %109 = or disjoint i64 %94, 2
  %110 = getelementptr inbounds nuw i64, ptr %9, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !14
  %112 = and i64 %111, 255
  %113 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = getelementptr inbounds nuw [255 x i8], ptr %79, i64 0, i64 %109
  store i8 %114, ptr %115, align 1, !tbaa !5
  %116 = or disjoint i64 %94, 3
  %117 = getelementptr inbounds nuw i64, ptr %9, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !14
  %119 = and i64 %118, 255
  %120 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !5
  %122 = getelementptr inbounds nuw [255 x i8], ptr %79, i64 0, i64 %116
  store i8 %121, ptr %122, align 1, !tbaa !5
  %123 = add nuw nsw i64 %94, 4
  %124 = add i64 %95, 4
  %125 = icmp eq i64 %124, %84
  br i1 %125, label %126, label %93, !llvm.loop !16

126:                                              ; preds = %93, %78
  %127 = phi i64 [ 0, %78 ], [ %123, %93 ]
  %128 = icmp eq i64 %81, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %138, %129 ], [ %127, %126 ]
  %131 = phi i64 [ %139, %129 ], [ 0, %126 ]
  %132 = getelementptr inbounds nuw i64, ptr %9, i64 %130
  %133 = load i64, ptr %132, align 8, !tbaa !14
  %134 = and i64 %133, 255
  %135 = getelementptr inbounds nuw [13 x i8], ptr %21, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = getelementptr inbounds nuw [255 x i8], ptr %79, i64 0, i64 %130
  store i8 %136, ptr %137, align 1, !tbaa !5
  %138 = add nuw nsw i64 %130, 1
  %139 = add i64 %131, 1
  %140 = icmp eq i64 %139, %81
  br i1 %140, label %141, label %129, !llvm.loop !17

141:                                              ; preds = %126, %129, %76
  %142 = icmp eq i64 %1, 0
  br i1 %142, label %434, label %143

143:                                              ; preds = %141
  %144 = getelementptr i8, ptr %0, i64 1
  %145 = add i64 %1, -1
  %146 = getelementptr i8, ptr %16, i64 493
  %147 = zext nneg i32 %3 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 12, ptr %8, align 4, !tbaa !19
  %148 = ptrtoint ptr %16 to i64
  %149 = sub i64 0, %148
  %150 = and i64 %149, 3
  %151 = getelementptr inbounds nuw i8, ptr %16, i64 %150
  %152 = icmp eq i64 %150, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %143
  %154 = icmp samesign ult i32 %3, 2
  br i1 %154, label %184, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds nuw i8, ptr %151, i64 400
  %157 = call i32 @HIST_count_simple(ptr noundef nonnull %156, ptr noundef nonnull %8, ptr noundef nonnull %146, i64 noundef range(i64 0, 256) %147) #12
  %158 = icmp eq i32 %3, %157
  %159 = icmp eq i32 %157, 1
  %160 = or i1 %158, %159
  br i1 %160, label %184, label %161

161:                                              ; preds = %155
  %162 = load i32, ptr %8, align 4, !tbaa !19
  %163 = call i32 @FSE_optimalTableLog(i32 noundef 6, i64 noundef range(i64 0, 256) %147, i32 noundef %162) #12
  %164 = getelementptr inbounds nuw i8, ptr %151, i64 452
  %165 = load i32, ptr %8, align 4, !tbaa !19
  %166 = call i64 @FSE_normalizeCount(ptr noundef nonnull %164, i32 noundef %163, ptr noundef nonnull %156, i64 noundef range(i64 0, 256) %147, i32 noundef %165, i32 noundef 0) #12
  %167 = icmp ult i64 %166, -119
  br i1 %167, label %168, label %182

168:                                              ; preds = %161
  %169 = load i32, ptr %8, align 4, !tbaa !19
  %170 = call i64 @FSE_writeNCount(ptr noundef nonnull %144, i64 noundef range(i64 0, -1) %145, ptr noundef nonnull %164, i32 noundef %169, i32 noundef %163) #12
  %171 = icmp ult i64 %170, -119
  %172 = getelementptr inbounds nuw i8, ptr %144, i64 %170
  br i1 %171, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32, ptr %8, align 4, !tbaa !19
  %175 = getelementptr inbounds nuw i8, ptr %151, i64 236
  %176 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %151, ptr noundef nonnull %164, i32 noundef %174, i32 noundef %163, ptr noundef nonnull %175, i64 noundef 164) #12
  %177 = icmp ult i64 %176, -119
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = sub nsw i64 %145, %170
  %180 = call i64 @FSE_compress_usingCTable(ptr noundef nonnull %172, i64 noundef %179, ptr noundef nonnull %146, i64 noundef range(i64 0, 256) %147, ptr noundef nonnull %151) #12
  %181 = icmp ult i64 %180, -119
  br i1 %181, label %185, label %182

182:                                              ; preds = %173, %168, %161, %143, %178
  %183 = phi i64 [ %180, %178 ], [ -1, %143 ], [ %166, %161 ], [ %170, %168 ], [ %176, %173 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %434

184:                                              ; preds = %155, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %199

185:                                              ; preds = %178
  %186 = icmp eq i64 %180, 0
  %187 = add nuw nsw i64 %180, %170
  %188 = select i1 %186, i64 0, i64 %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %189 = icmp ult i64 %188, -119
  br i1 %189, label %190, label %434

190:                                              ; preds = %185
  %191 = icmp ugt i64 %188, 1
  %192 = lshr i32 %3, 1
  %193 = zext nneg i32 %192 to i64
  %194 = icmp ult i64 %188, %193
  %195 = and i1 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = trunc nuw nsw i64 %188 to i8
  store i8 %197, ptr %0, align 1, !tbaa !5
  %198 = add nuw nsw i64 %188, 1
  br label %434

199:                                              ; preds = %190, %184
  %200 = icmp samesign ugt i32 %3, 128
  br i1 %200, label %434, label %201

201:                                              ; preds = %199
  %202 = add nuw nsw i32 %3, 1
  %203 = lshr i32 %202, 1
  %204 = add nuw nsw i32 %203, 1
  %205 = zext nneg i32 %204 to i64
  %206 = icmp ult i64 %1, %205
  br i1 %206, label %434, label %207

207:                                              ; preds = %201
  %208 = trunc nuw i32 %3 to i8
  %209 = add nuw i8 %208, 127
  store i8 %209, ptr %0, align 1, !tbaa !5
  %210 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %147
  store i8 0, ptr %210, align 1, !tbaa !5
  br i1 %77, label %434, label %211

211:                                              ; preds = %207
  %212 = add nsw i64 %147, -1
  %213 = lshr i64 %212, 1
  %214 = add nuw i64 %213, 1
  %215 = icmp ult i32 %3, 7
  br i1 %215, label %419, label %216

216:                                              ; preds = %211
  %217 = add nsw i64 %147, -1
  %218 = lshr i64 %217, 1
  %219 = getelementptr i8, ptr %0, i64 %218
  %220 = getelementptr i8, ptr %219, i64 2
  %221 = and i64 %217, -2
  %222 = getelementptr i8, ptr %16, i64 %221
  %223 = getelementptr i8, ptr %222, i64 495
  %224 = icmp ult ptr %144, %223
  %225 = icmp ult ptr %146, %220
  %226 = and i1 %224, %225
  br i1 %226, label %419, label %227

227:                                              ; preds = %216
  %228 = icmp ult i32 %3, 31
  br i1 %228, label %373, label %229

229:                                              ; preds = %227
  %230 = and i64 %214, -16
  br label %231

231:                                              ; preds = %231, %229
  %232 = phi i64 [ 0, %229 ], [ %365, %231 ]
  %233 = shl i64 %232, 1
  %234 = or disjoint i64 %233, 2
  %235 = or disjoint i64 %233, 4
  %236 = or disjoint i64 %233, 6
  %237 = or disjoint i64 %233, 8
  %238 = or disjoint i64 %233, 10
  %239 = or disjoint i64 %233, 12
  %240 = or disjoint i64 %233, 14
  %241 = or disjoint i64 %233, 16
  %242 = or disjoint i64 %233, 18
  %243 = or disjoint i64 %233, 20
  %244 = or disjoint i64 %233, 22
  %245 = or disjoint i64 %233, 24
  %246 = or disjoint i64 %233, 26
  %247 = or disjoint i64 %233, 28
  %248 = or disjoint i64 %233, 30
  %249 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %233
  %250 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %234
  %251 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %235
  %252 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %236
  %253 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %237
  %254 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %238
  %255 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %239
  %256 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %240
  %257 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %241
  %258 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %242
  %259 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %243
  %260 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %244
  %261 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %245
  %262 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %246
  %263 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %247
  %264 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %248
  %265 = load i8, ptr %249, align 1, !tbaa !5, !alias.scope !21
  %266 = load i8, ptr %250, align 1, !tbaa !5, !alias.scope !21
  %267 = load i8, ptr %251, align 1, !tbaa !5, !alias.scope !21
  %268 = load i8, ptr %252, align 1, !tbaa !5, !alias.scope !21
  %269 = load i8, ptr %253, align 1, !tbaa !5, !alias.scope !21
  %270 = load i8, ptr %254, align 1, !tbaa !5, !alias.scope !21
  %271 = load i8, ptr %255, align 1, !tbaa !5, !alias.scope !21
  %272 = load i8, ptr %256, align 1, !tbaa !5, !alias.scope !21
  %273 = load i8, ptr %257, align 1, !tbaa !5, !alias.scope !21
  %274 = load i8, ptr %258, align 1, !tbaa !5, !alias.scope !21
  %275 = load i8, ptr %259, align 1, !tbaa !5, !alias.scope !21
  %276 = load i8, ptr %260, align 1, !tbaa !5, !alias.scope !21
  %277 = load i8, ptr %261, align 1, !tbaa !5, !alias.scope !21
  %278 = load i8, ptr %262, align 1, !tbaa !5, !alias.scope !21
  %279 = load i8, ptr %263, align 1, !tbaa !5, !alias.scope !21
  %280 = load i8, ptr %264, align 1, !tbaa !5, !alias.scope !21
  %281 = insertelement <16 x i8> poison, i8 %265, i64 0
  %282 = insertelement <16 x i8> %281, i8 %266, i64 1
  %283 = insertelement <16 x i8> %282, i8 %267, i64 2
  %284 = insertelement <16 x i8> %283, i8 %268, i64 3
  %285 = insertelement <16 x i8> %284, i8 %269, i64 4
  %286 = insertelement <16 x i8> %285, i8 %270, i64 5
  %287 = insertelement <16 x i8> %286, i8 %271, i64 6
  %288 = insertelement <16 x i8> %287, i8 %272, i64 7
  %289 = insertelement <16 x i8> %288, i8 %273, i64 8
  %290 = insertelement <16 x i8> %289, i8 %274, i64 9
  %291 = insertelement <16 x i8> %290, i8 %275, i64 10
  %292 = insertelement <16 x i8> %291, i8 %276, i64 11
  %293 = insertelement <16 x i8> %292, i8 %277, i64 12
  %294 = insertelement <16 x i8> %293, i8 %278, i64 13
  %295 = insertelement <16 x i8> %294, i8 %279, i64 14
  %296 = insertelement <16 x i8> %295, i8 %280, i64 15
  %297 = shl <16 x i8> %296, splat (i8 4)
  %298 = or disjoint i64 %233, 1
  %299 = or disjoint i64 %233, 3
  %300 = or disjoint i64 %233, 5
  %301 = or disjoint i64 %233, 7
  %302 = or disjoint i64 %233, 9
  %303 = or disjoint i64 %233, 11
  %304 = or disjoint i64 %233, 13
  %305 = or disjoint i64 %233, 15
  %306 = or disjoint i64 %233, 17
  %307 = or disjoint i64 %233, 19
  %308 = or disjoint i64 %233, 21
  %309 = or disjoint i64 %233, 23
  %310 = or disjoint i64 %233, 25
  %311 = or disjoint i64 %233, 27
  %312 = or disjoint i64 %233, 29
  %313 = or disjoint i64 %233, 31
  %314 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %298
  %315 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %299
  %316 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %300
  %317 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %301
  %318 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %302
  %319 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %303
  %320 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %304
  %321 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %305
  %322 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %306
  %323 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %307
  %324 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %308
  %325 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %309
  %326 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %310
  %327 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %311
  %328 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %312
  %329 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %313
  %330 = load i8, ptr %314, align 1, !tbaa !5, !alias.scope !21
  %331 = load i8, ptr %315, align 1, !tbaa !5, !alias.scope !21
  %332 = load i8, ptr %316, align 1, !tbaa !5, !alias.scope !21
  %333 = load i8, ptr %317, align 1, !tbaa !5, !alias.scope !21
  %334 = load i8, ptr %318, align 1, !tbaa !5, !alias.scope !21
  %335 = load i8, ptr %319, align 1, !tbaa !5, !alias.scope !21
  %336 = load i8, ptr %320, align 1, !tbaa !5, !alias.scope !21
  %337 = load i8, ptr %321, align 1, !tbaa !5, !alias.scope !21
  %338 = load i8, ptr %322, align 1, !tbaa !5, !alias.scope !21
  %339 = load i8, ptr %323, align 1, !tbaa !5, !alias.scope !21
  %340 = load i8, ptr %324, align 1, !tbaa !5, !alias.scope !21
  %341 = load i8, ptr %325, align 1, !tbaa !5, !alias.scope !21
  %342 = load i8, ptr %326, align 1, !tbaa !5, !alias.scope !21
  %343 = load i8, ptr %327, align 1, !tbaa !5, !alias.scope !21
  %344 = load i8, ptr %328, align 1, !tbaa !5, !alias.scope !21
  %345 = load i8, ptr %329, align 1, !tbaa !5, !alias.scope !21
  %346 = insertelement <16 x i8> poison, i8 %330, i64 0
  %347 = insertelement <16 x i8> %346, i8 %331, i64 1
  %348 = insertelement <16 x i8> %347, i8 %332, i64 2
  %349 = insertelement <16 x i8> %348, i8 %333, i64 3
  %350 = insertelement <16 x i8> %349, i8 %334, i64 4
  %351 = insertelement <16 x i8> %350, i8 %335, i64 5
  %352 = insertelement <16 x i8> %351, i8 %336, i64 6
  %353 = insertelement <16 x i8> %352, i8 %337, i64 7
  %354 = insertelement <16 x i8> %353, i8 %338, i64 8
  %355 = insertelement <16 x i8> %354, i8 %339, i64 9
  %356 = insertelement <16 x i8> %355, i8 %340, i64 10
  %357 = insertelement <16 x i8> %356, i8 %341, i64 11
  %358 = insertelement <16 x i8> %357, i8 %342, i64 12
  %359 = insertelement <16 x i8> %358, i8 %343, i64 13
  %360 = insertelement <16 x i8> %359, i8 %344, i64 14
  %361 = insertelement <16 x i8> %360, i8 %345, i64 15
  %362 = add <16 x i8> %297, %361
  %363 = and i64 %232, 9223372036854775792
  %364 = getelementptr inbounds nuw i8, ptr %144, i64 %363
  store <16 x i8> %362, ptr %364, align 1, !tbaa !5, !alias.scope !24, !noalias !21
  %365 = add nuw i64 %232, 16
  %366 = icmp eq i64 %365, %230
  br i1 %366, label %367, label %231, !llvm.loop !26

367:                                              ; preds = %231
  %368 = icmp eq i64 %214, %230
  br i1 %368, label %434, label %369

369:                                              ; preds = %367
  %370 = shl i64 %230, 1
  %371 = and i64 %214, 12
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %419, label %373

373:                                              ; preds = %369, %227
  %374 = phi i64 [ %230, %369 ], [ 0, %227 ]
  %375 = and i64 %214, -4
  %376 = shl i64 %375, 1
  br label %377

377:                                              ; preds = %377, %373
  %378 = phi i64 [ %374, %373 ], [ %415, %377 ]
  %379 = shl i64 %378, 1
  %380 = or disjoint i64 %379, 2
  %381 = or disjoint i64 %379, 4
  %382 = or disjoint i64 %379, 6
  %383 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %379
  %384 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %380
  %385 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %381
  %386 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %382
  %387 = load i8, ptr %383, align 1, !tbaa !5, !alias.scope !21
  %388 = load i8, ptr %384, align 1, !tbaa !5, !alias.scope !21
  %389 = load i8, ptr %385, align 1, !tbaa !5, !alias.scope !21
  %390 = load i8, ptr %386, align 1, !tbaa !5, !alias.scope !21
  %391 = insertelement <4 x i8> poison, i8 %387, i64 0
  %392 = insertelement <4 x i8> %391, i8 %388, i64 1
  %393 = insertelement <4 x i8> %392, i8 %389, i64 2
  %394 = insertelement <4 x i8> %393, i8 %390, i64 3
  %395 = shl <4 x i8> %394, splat (i8 4)
  %396 = or disjoint i64 %379, 1
  %397 = or disjoint i64 %379, 3
  %398 = or disjoint i64 %379, 5
  %399 = or disjoint i64 %379, 7
  %400 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %396
  %401 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %397
  %402 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %398
  %403 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %399
  %404 = load i8, ptr %400, align 1, !tbaa !5, !alias.scope !21
  %405 = load i8, ptr %401, align 1, !tbaa !5, !alias.scope !21
  %406 = load i8, ptr %402, align 1, !tbaa !5, !alias.scope !21
  %407 = load i8, ptr %403, align 1, !tbaa !5, !alias.scope !21
  %408 = insertelement <4 x i8> poison, i8 %404, i64 0
  %409 = insertelement <4 x i8> %408, i8 %405, i64 1
  %410 = insertelement <4 x i8> %409, i8 %406, i64 2
  %411 = insertelement <4 x i8> %410, i8 %407, i64 3
  %412 = add <4 x i8> %395, %411
  %413 = and i64 %378, 9223372036854775804
  %414 = getelementptr inbounds nuw i8, ptr %144, i64 %413
  store <4 x i8> %412, ptr %414, align 1, !tbaa !5, !alias.scope !24, !noalias !21
  %415 = add nuw i64 %378, 4
  %416 = icmp eq i64 %415, %375
  br i1 %416, label %417, label %377, !llvm.loop !27

417:                                              ; preds = %377
  %418 = icmp eq i64 %214, %375
  br i1 %418, label %434, label %419

419:                                              ; preds = %369, %417, %216, %211
  %420 = phi i64 [ 0, %211 ], [ 0, %216 ], [ %370, %369 ], [ %376, %417 ]
  br label %421

421:                                              ; preds = %419, %421
  %422 = phi i64 [ %432, %421 ], [ %420, %419 ]
  %423 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !5
  %425 = shl i8 %424, 4
  %426 = or disjoint i64 %422, 1
  %427 = getelementptr inbounds nuw [255 x i8], ptr %146, i64 0, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !5
  %429 = add i8 %425, %428
  %430 = lshr exact i64 %422, 1
  %431 = getelementptr inbounds nuw i8, ptr %144, i64 %430
  store i8 %429, ptr %431, align 1, !tbaa !5
  %432 = add nuw nsw i64 %422, 2
  %433 = icmp samesign ult i64 %432, %147
  br i1 %433, label %421, label %434, !llvm.loop !28

434:                                              ; preds = %421, %367, %417, %207, %182, %185, %196, %201, %199, %141, %18, %7
  %435 = phi i64 [ -1, %7 ], [ -46, %18 ], [ -70, %141 ], [ -1, %199 ], [ -70, %201 ], [ %183, %182 ], [ %187, %185 ], [ %198, %196 ], [ %205, %207 ], [ %205, %417 ], [ %205, %367 ], [ %205, %421 ]
  ret i64 %435
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readCTable(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #2 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [13 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 16
  %11 = alloca [14 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call i64 @HUF_readStats(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #12
  %14 = icmp ult i64 %13, -119
  br i1 %14, label %15, label %198

15:                                               ; preds = %5
  %16 = load i32, ptr %7, align 16, !tbaa !19
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %4, align 4, !tbaa !19
  %19 = load i32, ptr %8, align 4, !tbaa !19
  %20 = icmp ugt i32 %19, 12
  br i1 %20, label %198, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %9, align 4, !tbaa !19
  %23 = load i32, ptr %1, align 4, !tbaa !19
  %24 = add i32 %23, 1
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %198, label %26

26:                                               ; preds = %21
  %27 = add i32 %22, -1
  store i32 %27, ptr %1, align 4, !tbaa !19
  %28 = trunc nuw nsw i32 %19 to i8
  %29 = trunc i32 %27 to i8
  store i8 %28, ptr %0, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %31, i8 0, i64 6, i1 false)
  %32 = icmp eq i32 %19, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = zext nneg i32 %19 to i64
  %35 = and i64 %34, 1
  %36 = icmp eq i32 %19, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = and i64 %34, 14
  br label %78

39:                                               ; preds = %78, %33
  %40 = phi i64 [ 1, %33 ], [ %95, %78 ]
  %41 = phi i32 [ 0, %33 ], [ %94, %78 ]
  %42 = icmp eq i64 %35, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw [13 x i32], ptr %7, i64 0, i64 %40
  store i32 %41, ptr %44, align 4, !tbaa !19
  br label %45

45:                                               ; preds = %43, %39, %26
  %46 = icmp eq i32 %22, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  br label %143

48:                                               ; preds = %45
  %49 = add nuw nsw i8 %28, 1
  %50 = zext i32 %22 to i64
  %51 = icmp ult i32 %22, 4
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = and i64 %50, 4294967292
  %54 = insertelement <2 x i8> poison, i8 %49, i64 0
  %55 = shufflevector <2 x i8> %54, <2 x i8> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i64 [ 0, %52 ], [ %72, %56 ]
  %58 = getelementptr inbounds nuw [256 x i8], ptr %6, i64 0, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %60 = load <2 x i8>, ptr %58, align 4, !tbaa !5
  %61 = load <2 x i8>, ptr %59, align 2, !tbaa !5
  %62 = icmp eq <2 x i8> %60, zeroinitializer
  %63 = icmp eq <2 x i8> %61, zeroinitializer
  %64 = sub <2 x i8> %55, %60
  %65 = sub <2 x i8> %55, %61
  %66 = getelementptr inbounds nuw i64, ptr %12, i64 %57
  %67 = select <2 x i1> %62, <2 x i8> zeroinitializer, <2 x i8> %64
  %68 = select <2 x i1> %63, <2 x i8> zeroinitializer, <2 x i8> %65
  %69 = zext <2 x i8> %67 to <2 x i64>
  %70 = zext <2 x i8> %68 to <2 x i64>
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 16
  store <2 x i64> %69, ptr %66, align 8, !tbaa !14
  store <2 x i64> %70, ptr %71, align 8, !tbaa !14
  %72 = add nuw i64 %57, 4
  %73 = icmp eq i64 %72, %53
  br i1 %73, label %74, label %56, !llvm.loop !29

74:                                               ; preds = %56
  %75 = icmp eq i64 %53, %50
  br i1 %75, label %109, label %76

76:                                               ; preds = %48, %74
  %77 = phi i64 [ 0, %48 ], [ %53, %74 ]
  br label %98

78:                                               ; preds = %78, %37
  %79 = phi i64 [ 1, %37 ], [ %95, %78 ]
  %80 = phi i32 [ 0, %37 ], [ %94, %78 ]
  %81 = phi i64 [ 0, %37 ], [ %96, %78 ]
  %82 = getelementptr inbounds nuw [13 x i32], ptr %7, i64 0, i64 %79
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = trunc i64 %79 to i32
  %85 = add nsw i32 %84, -1
  %86 = shl i32 %83, %85
  %87 = add i32 %86, %80
  store i32 %80, ptr %82, align 4, !tbaa !19
  %88 = add nuw nsw i64 %79, 1
  %89 = getelementptr inbounds nuw [13 x i32], ptr %7, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !19
  %91 = trunc i64 %88 to i32
  %92 = add i32 %91, -1
  %93 = shl i32 %90, %92
  %94 = add i32 %93, %87
  store i32 %87, ptr %89, align 4, !tbaa !19
  %95 = add nuw nsw i64 %79, 2
  %96 = add i64 %81, 2
  %97 = icmp eq i64 %96, %38
  br i1 %97, label %39, label %78, !llvm.loop !30

98:                                               ; preds = %76, %98
  %99 = phi i64 [ %107, %98 ], [ %77, %76 ]
  %100 = getelementptr inbounds nuw [256 x i8], ptr %6, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = icmp eq i8 %101, 0
  %103 = sub i8 %49, %101
  %104 = getelementptr inbounds nuw i64, ptr %12, i64 %99
  %105 = select i1 %102, i8 0, i8 %103
  %106 = zext i8 %105 to i64
  store i64 %106, ptr %104, align 8, !tbaa !14
  %107 = add nuw nsw i64 %99, 1
  %108 = icmp eq i64 %107, %50
  br i1 %108, label %109, label %98, !llvm.loop !31

109:                                              ; preds = %98, %74
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  %110 = and i64 %50, 1
  %111 = icmp eq i32 %22, 1
  br i1 %111, label %133, label %112

112:                                              ; preds = %109
  %113 = and i64 %50, 4294967294
  %114 = getelementptr inbounds i8, ptr %12, i64 8
  br label %115

115:                                              ; preds = %115, %112
  %116 = phi i64 [ 0, %112 ], [ %130, %115 ]
  %117 = phi i64 [ 0, %112 ], [ %131, %115 ]
  %118 = getelementptr inbounds nuw i64, ptr %12, i64 %116
  %119 = load i64, ptr %118, align 8, !tbaa !14
  %120 = and i64 %119, 255
  %121 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !32
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 2, !tbaa !32
  %124 = getelementptr inbounds i64, ptr %114, i64 %116
  %125 = load i64, ptr %124, align 8, !tbaa !14
  %126 = and i64 %125, 255
  %127 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !32
  %129 = add i16 %128, 1
  store i16 %129, ptr %127, align 2, !tbaa !32
  %130 = add nuw nsw i64 %116, 2
  %131 = add i64 %117, 2
  %132 = icmp eq i64 %131, %113
  br i1 %132, label %133, label %115, !llvm.loop !34

133:                                              ; preds = %115, %109
  %134 = phi i64 [ 0, %109 ], [ %130, %115 ]
  %135 = icmp eq i64 %110, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds nuw i64, ptr %12, i64 %134
  %138 = load i64, ptr %137, align 8, !tbaa !14
  %139 = and i64 %138, 255
  %140 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !32
  %142 = add i16 %141, 1
  store i16 %142, ptr %140, align 2, !tbaa !32
  br label %143

143:                                              ; preds = %136, %133, %47
  %144 = add nuw nsw i32 %19, 1
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %145
  store i16 0, ptr %146, align 2, !tbaa !32
  br i1 %32, label %159, label %147

147:                                              ; preds = %143
  %148 = zext nneg i32 %19 to i64
  %149 = and i32 %19, 1
  %150 = icmp eq i32 %19, 1
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = and i32 %19, 14
  br label %162

153:                                              ; preds = %162, %147
  %154 = phi i64 [ %148, %147 ], [ %177, %162 ]
  %155 = phi i16 [ 0, %147 ], [ %176, %162 ]
  %156 = icmp eq i32 %149, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %154
  store i16 %155, ptr %158, align 2, !tbaa !32
  br label %159

159:                                              ; preds = %157, %153, %143
  br i1 %46, label %197, label %160

160:                                              ; preds = %159
  %161 = zext i32 %22 to i64
  br label %180

162:                                              ; preds = %162, %151
  %163 = phi i64 [ %148, %151 ], [ %177, %162 ]
  %164 = phi i16 [ 0, %151 ], [ %176, %162 ]
  %165 = phi i32 [ 0, %151 ], [ %178, %162 ]
  %166 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %163
  store i16 %164, ptr %166, align 2, !tbaa !32
  %167 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %163
  %168 = load i16, ptr %167, align 2, !tbaa !32
  %169 = add i16 %168, %164
  %170 = lshr i16 %169, 1
  %171 = add nsw i64 %163, -1
  %172 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %171
  store i16 %170, ptr %172, align 2, !tbaa !32
  %173 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %171
  %174 = load i16, ptr %173, align 2, !tbaa !32
  %175 = add i16 %174, %170
  %176 = lshr i16 %175, 1
  %177 = add nsw i64 %163, -2
  %178 = add i32 %165, 2
  %179 = icmp eq i32 %178, %152
  br i1 %179, label %153, label %162, !llvm.loop !35

180:                                              ; preds = %160, %194
  %181 = phi i64 [ 0, %160 ], [ %195, %194 ]
  %182 = getelementptr inbounds nuw i64, ptr %12, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !14
  %184 = and i64 %183, 255
  %185 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !32
  %187 = add i16 %186, 1
  store i16 %187, ptr %185, align 2, !tbaa !32
  %188 = icmp eq i64 %184, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %180
  %190 = zext i16 %186 to i64
  %191 = sub nsw i64 64, %184
  %192 = shl i64 %190, %191
  %193 = or i64 %192, %183
  store i64 %193, ptr %182, align 8, !tbaa !14
  br label %194

194:                                              ; preds = %180, %189
  %195 = add nuw nsw i64 %181, 1
  %196 = icmp eq i64 %195, %161
  br i1 %196, label %197, label %180, !llvm.loop !36

197:                                              ; preds = %194, %159
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #12
  br label %198

198:                                              ; preds = %21, %15, %5, %197
  %199 = phi i64 [ %13, %197 ], [ %13, %5 ], [ -44, %15 ], [ -48, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  ret i64 %199
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @HUF_getNbBitsFromCTable(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %1, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds nuw i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %2, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -66, 13) i64 @HUF_buildCTable_wksp(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
  %7 = alloca [13 x i16], align 16
  %8 = alloca [13 x i16], align 16
  %9 = alloca [14 x i32], align 16
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %5, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = icmp ult i64 %15, 4864
  br i1 %18, label %774, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i32 %2, 255
  br i1 %20, label %774, label %21

21:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %14, i8 0, i64 4096, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 4096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %22, i8 0, i64 768, i1 false)
  %23 = add nuw nsw i32 %2, 1
  %24 = zext nneg i32 %23 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %21
  %28 = and i64 %24, 510
  %29 = getelementptr inbounds i8, ptr %1, i64 4
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %53, %30 ]
  %32 = phi i64 [ 0, %27 ], [ %54, %30 ]
  %33 = getelementptr inbounds nuw i32, ptr %1, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = icmp ult i32 %34, 165
  %36 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %34, i1 true)
  %37 = sub nuw nsw i32 189, %36
  %38 = select i1 %35, i32 %34, i32 %37
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !37
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 2, !tbaa !37
  %43 = getelementptr inbounds i32, ptr %29, i64 %31
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = icmp ult i32 %44, 165
  %46 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %44, i1 true)
  %47 = sub nuw nsw i32 189, %46
  %48 = select i1 %45, i32 %44, i32 %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !37
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 2, !tbaa !37
  %53 = add nuw nsw i64 %31, 2
  %54 = add i64 %32, 2
  %55 = icmp eq i64 %54, %28
  br i1 %55, label %56, label %30, !llvm.loop !39

56:                                               ; preds = %30, %21
  %57 = phi i64 [ 0, %21 ], [ %53, %30 ]
  %58 = icmp eq i64 %25, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds nuw i32, ptr %1, i64 %57
  %61 = load i32, ptr %60, align 4, !tbaa !19
  %62 = icmp ult i32 %61, 165
  %63 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %61, i1 true)
  %64 = sub nuw nsw i32 189, %63
  %65 = select i1 %62, i32 %61, i32 %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !37
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 2, !tbaa !37
  br label %70

70:                                               ; preds = %56, %59
  %71 = getelementptr inbounds nuw i8, ptr %14, i64 4860
  %72 = load i16, ptr %71, align 2, !tbaa !37
  br label %75

73:                                               ; preds = %75
  %74 = getelementptr inbounds nuw i8, ptr %16, i64 4102
  br label %100

75:                                               ; preds = %94, %70
  %76 = phi i16 [ %72, %70 ], [ %98, %94 ]
  %77 = phi i64 [ 191, %70 ], [ %95, %94 ]
  %78 = getelementptr %struct.rankPos, ptr %22, i64 %77
  %79 = getelementptr i8, ptr %78, i64 -4
  %80 = load i16, ptr %79, align 2, !tbaa !37
  %81 = add i16 %80, %76
  store i16 %81, ptr %79, align 2, !tbaa !37
  %82 = getelementptr i8, ptr %78, i64 -2
  store i16 %81, ptr %82, align 2, !tbaa !40
  %83 = getelementptr %struct.rankPos, ptr %22, i64 %77
  %84 = getelementptr i8, ptr %83, i64 -8
  %85 = load i16, ptr %84, align 2, !tbaa !37
  %86 = add i16 %85, %81
  store i16 %86, ptr %84, align 2, !tbaa !37
  %87 = getelementptr i8, ptr %83, i64 -6
  store i16 %86, ptr %87, align 2, !tbaa !40
  %88 = add nsw i64 %77, -3
  %89 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !37
  %91 = add i16 %90, %86
  store i16 %91, ptr %89, align 2, !tbaa !37
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 2
  store i16 %91, ptr %92, align 2, !tbaa !40
  %93 = icmp eq i64 %88, 0
  br i1 %93, label %73, label %94, !llvm.loop !41

94:                                               ; preds = %75
  %95 = add nsw i64 %77, -4
  %96 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !37
  %98 = add i16 %97, %91
  store i16 %98, ptr %96, align 2, !tbaa !37
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 2
  store i16 %98, ptr %99, align 2, !tbaa !40
  br label %75

100:                                              ; preds = %100, %73
  %101 = phi i64 [ 0, %73 ], [ %116, %100 ]
  %102 = getelementptr inbounds nuw i32, ptr %1, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !19
  %104 = icmp ult i32 %103, 165
  %105 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %103, i1 true)
  %106 = sub nuw nsw i32 189, %105
  %107 = select i1 %104, i32 %103, i32 %106
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds nuw %struct.rankPos, ptr %74, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !40
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 2, !tbaa !40
  %112 = zext i16 %110 to i64
  %113 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %112
  store i32 %103, ptr %113, align 4, !tbaa !42
  %114 = trunc i64 %101 to i8
  %115 = getelementptr inbounds nuw i8, ptr %113, i64 6
  store i8 %114, ptr %115, align 2, !tbaa !44
  %116 = add nuw nsw i64 %101, 1
  %117 = icmp eq i64 %116, %24
  br i1 %117, label %118, label %100, !llvm.loop !45

118:                                              ; preds = %100, %132
  %119 = phi i64 [ %133, %132 ], [ 165, %100 ]
  %120 = getelementptr inbounds nuw %struct.rankPos, ptr %22, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 2
  %122 = load i16, ptr %121, align 2, !tbaa !40
  %123 = zext i16 %122 to i32
  %124 = load i16, ptr %120, align 2, !tbaa !37
  %125 = zext i16 %124 to i32
  %126 = sub nsw i32 %123, %125
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = add nsw i32 %126, -1
  %130 = zext i16 %124 to i64
  %131 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %130
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %131, i32 noundef 0, i32 noundef %129)
  br label %132

132:                                              ; preds = %128, %118
  %133 = add nuw nsw i64 %119, 1
  %134 = icmp eq i64 %133, 191
  br i1 %134, label %135, label %118, !llvm.loop !46

135:                                              ; preds = %132
  %136 = icmp eq i32 %3, 0
  %137 = select i1 %136, i32 11, i32 %3
  %138 = zext nneg i32 %2 to i64
  %139 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !42
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %135, %147
  %143 = phi i32 [ %148, %147 ], [ %2, %135 ]
  %144 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %143, i32 -1)
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !47
  br i1 %145, label %146, label %147, !prof !48, !nosanitize !47

146:                                              ; preds = %142, %259, %234, %285, %165, %160
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

147:                                              ; preds = %142
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !47
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !42
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %142, label %153, !llvm.loop !49

153:                                              ; preds = %147, %135
  %154 = phi i64 [ %138, %135 ], [ %149, %147 ]
  %155 = phi i32 [ %2, %135 ], [ %148, %147 ]
  %156 = phi i32 [ %140, %135 ], [ %151, %147 ]
  %157 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %155, i32 256), !nosanitize !47
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !47
  br i1 %158, label %159, label %160, !prof !48, !nosanitize !47

159:                                              ; preds = %264, %242, %328, %153
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

160:                                              ; preds = %153
  %161 = extractvalue { i32, i1 } %157, 0, !nosanitize !47
  %162 = add nsw i32 %161, -1
  %163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %155, i32 -1)
  %164 = extractvalue { i32, i1 } %163, 1, !nosanitize !47
  br i1 %164, label %146, label %165, !prof !48, !nosanitize !47

165:                                              ; preds = %160
  %166 = extractvalue { i32, i1 } %163, 0, !nosanitize !47
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !42
  %170 = add i32 %169, %156
  %171 = getelementptr inbounds nuw i8, ptr %14, i64 2056
  store i32 %170, ptr %171, align 4, !tbaa !42
  %172 = getelementptr inbounds nuw i8, ptr %168, i64 4
  store i16 256, ptr %172, align 4, !tbaa !50
  %173 = shl nsw i64 %154, 3
  %174 = getelementptr i8, ptr %17, i64 %173
  %175 = getelementptr i8, ptr %174, i64 4
  store i16 256, ptr %175, align 4, !tbaa !50
  %176 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %155, i32 -2)
  %177 = extractvalue { i32, i1 } %176, 0, !nosanitize !47
  %178 = extractvalue { i32, i1 } %176, 1, !nosanitize !47
  br i1 %178, label %146, label %179, !prof !48, !nosanitize !47

179:                                              ; preds = %165
  %180 = icmp sgt i32 %161, 257
  br i1 %180, label %181, label %210

181:                                              ; preds = %179
  %182 = zext nneg i32 %161 to i64
  %183 = add nsw i64 %182, -257
  %184 = and i64 %183, 7
  %185 = add nsw i32 %161, -258
  %186 = icmp ult i32 %185, 7
  br i1 %186, label %211, label %187

187:                                              ; preds = %181
  %188 = and i64 %183, -8
  %189 = getelementptr inbounds i8, ptr %17, i64 8
  %190 = getelementptr inbounds i8, ptr %17, i64 16
  %191 = getelementptr inbounds i8, ptr %17, i64 24
  %192 = getelementptr inbounds i8, ptr %17, i64 32
  %193 = getelementptr inbounds i8, ptr %17, i64 40
  %194 = getelementptr inbounds i8, ptr %17, i64 48
  %195 = getelementptr inbounds i8, ptr %17, i64 56
  br label %196

196:                                              ; preds = %196, %187
  %197 = phi i64 [ 257, %187 ], [ %207, %196 ]
  %198 = phi i64 [ 0, %187 ], [ %208, %196 ]
  %199 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %197
  store i32 1073741824, ptr %199, align 4, !tbaa !42
  %200 = getelementptr inbounds %struct.nodeElt_s, ptr %189, i64 %197
  store i32 1073741824, ptr %200, align 4, !tbaa !42
  %201 = getelementptr inbounds %struct.nodeElt_s, ptr %190, i64 %197
  store i32 1073741824, ptr %201, align 4, !tbaa !42
  %202 = getelementptr inbounds %struct.nodeElt_s, ptr %191, i64 %197
  store i32 1073741824, ptr %202, align 4, !tbaa !42
  %203 = getelementptr inbounds %struct.nodeElt_s, ptr %192, i64 %197
  store i32 1073741824, ptr %203, align 4, !tbaa !42
  %204 = getelementptr inbounds %struct.nodeElt_s, ptr %193, i64 %197
  store i32 1073741824, ptr %204, align 4, !tbaa !42
  %205 = getelementptr inbounds %struct.nodeElt_s, ptr %194, i64 %197
  store i32 1073741824, ptr %205, align 4, !tbaa !42
  %206 = getelementptr inbounds %struct.nodeElt_s, ptr %195, i64 %197
  store i32 1073741824, ptr %206, align 4, !tbaa !42
  %207 = add nuw nsw i64 %197, 8
  %208 = add i64 %198, 8
  %209 = icmp eq i64 %208, %188
  br i1 %209, label %211, label %196, !llvm.loop !51

210:                                              ; preds = %179
  store i32 -2147483648, ptr %14, align 4, !tbaa !42
  br label %285

211:                                              ; preds = %196, %181
  %212 = phi i64 [ 257, %181 ], [ %207, %196 ]
  %213 = icmp eq i64 %184, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211, %214
  %215 = phi i64 [ %218, %214 ], [ %212, %211 ]
  %216 = phi i64 [ %219, %214 ], [ 0, %211 ]
  %217 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %215
  store i32 1073741824, ptr %217, align 4, !tbaa !42
  %218 = add nuw nsw i64 %215, 1
  %219 = add i64 %216, 1
  %220 = icmp eq i64 %219, %184
  br i1 %220, label %221, label %214, !llvm.loop !52

221:                                              ; preds = %214, %211
  store i32 -2147483648, ptr %14, align 4, !tbaa !42
  %222 = getelementptr i8, ptr %14, i64 12
  br label %223

223:                                              ; preds = %269, %221
  %224 = phi i64 [ 257, %221 ], [ %283, %269 ]
  %225 = phi i32 [ %177, %221 ], [ %273, %269 ]
  %226 = phi i32 [ 256, %221 ], [ %272, %269 ]
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !42
  %230 = sext i32 %226 to i64
  %231 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !42
  %233 = icmp ult i32 %229, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %223
  %235 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %225, i32 -1)
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !47
  br i1 %236, label %146, label %237, !prof !48, !nosanitize !47

237:                                              ; preds = %234
  %238 = extractvalue { i32, i1 } %235, 0, !nosanitize !47
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !42
  br label %250

242:                                              ; preds = %223
  %243 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %226, i32 1), !nosanitize !47
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !47
  br i1 %244, label %159, label %245, !prof !48, !nosanitize !47

245:                                              ; preds = %242
  %246 = extractvalue { i32, i1 } %243, 0, !nosanitize !47
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !42
  br label %250

250:                                              ; preds = %245, %237
  %251 = phi i32 [ %249, %245 ], [ %232, %237 ]
  %252 = phi i64 [ %247, %245 ], [ %230, %237 ]
  %253 = phi i32 [ %229, %245 ], [ %241, %237 ]
  %254 = phi i64 [ %227, %245 ], [ %239, %237 ]
  %255 = phi i32 [ %246, %245 ], [ %226, %237 ]
  %256 = phi i32 [ %225, %245 ], [ %238, %237 ]
  %257 = phi i32 [ %226, %245 ], [ %225, %237 ]
  %258 = icmp ult i32 %253, %251
  br i1 %258, label %259, label %264

259:                                              ; preds = %250
  %260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %256, i32 -1)
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !47
  br i1 %261, label %146, label %262, !prof !48, !nosanitize !47

262:                                              ; preds = %259
  %263 = extractvalue { i32, i1 } %260, 0, !nosanitize !47
  br label %269

264:                                              ; preds = %250
  %265 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %255, i32 1), !nosanitize !47
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !47
  br i1 %266, label %159, label %267, !prof !48, !nosanitize !47

267:                                              ; preds = %264
  %268 = extractvalue { i32, i1 } %265, 0, !nosanitize !47
  br label %269

269:                                              ; preds = %267, %262
  %270 = phi i32 [ %251, %267 ], [ %253, %262 ]
  %271 = phi i64 [ %252, %267 ], [ %254, %262 ]
  %272 = phi i32 [ %268, %267 ], [ %255, %262 ]
  %273 = phi i32 [ %256, %267 ], [ %263, %262 ]
  %274 = sext i32 %257 to i64
  %275 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !42
  %277 = add i32 %276, %270
  %278 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %224
  store i32 %277, ptr %278, align 4, !tbaa !42
  %279 = trunc i64 %224 to i16
  %280 = shl nsw i64 %271, 3
  %281 = getelementptr i8, ptr %222, i64 %280
  store i16 %279, ptr %281, align 4, !tbaa !50
  %282 = getelementptr inbounds nuw i8, ptr %275, i64 4
  store i16 %279, ptr %282, align 4, !tbaa !50
  %283 = add nuw nsw i64 %224, 1
  %284 = icmp eq i64 %283, %182
  br i1 %284, label %285, label %223, !llvm.loop !53

285:                                              ; preds = %269, %210
  %286 = sext i32 %162 to i64
  %287 = shl nsw i64 %286, 3
  %288 = getelementptr i8, ptr %17, i64 %287
  %289 = getelementptr i8, ptr %288, i64 7
  store i8 0, ptr %289, align 1, !tbaa !54
  %290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %161, i32 -2)
  %291 = extractvalue { i32, i1 } %290, 1, !nosanitize !47
  br i1 %291, label %146, label %292, !prof !48, !nosanitize !47

292:                                              ; preds = %285
  %293 = extractvalue { i32, i1 } %290, 0
  %294 = icmp sgt i32 %293, 255
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = zext nneg i32 %293 to i64
  %297 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %303

298:                                              ; preds = %303, %292
  %299 = icmp slt i32 %155, 0
  br i1 %299, label %343, label %300

300:                                              ; preds = %298
  %301 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %302 = zext nneg i32 %155 to i64
  br label %316

303:                                              ; preds = %303, %295
  %304 = phi i64 [ %296, %295 ], [ %314, %303 ]
  %305 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 4
  %307 = load i16, ptr %306, align 4, !tbaa !50
  %308 = zext i16 %307 to i64
  %309 = shl nuw nsw i64 %308, 3
  %310 = getelementptr inbounds nuw i8, ptr %297, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !54
  %312 = add i8 %311, 1
  %313 = getelementptr inbounds nuw i8, ptr %305, i64 7
  store i8 %312, ptr %313, align 1, !tbaa !54
  %314 = add nsw i64 %304, -1
  %315 = icmp samesign ugt i64 %304, 256
  br i1 %315, label %303, label %298, !llvm.loop !55

316:                                              ; preds = %339, %300
  %317 = phi i64 [ 0, %300 ], [ %340, %339 ]
  %318 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 4
  %320 = load i16, ptr %319, align 4, !tbaa !50
  %321 = zext i16 %320 to i64
  %322 = shl nuw nsw i64 %321, 3
  %323 = getelementptr inbounds nuw i8, ptr %301, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !54
  %325 = add i8 %324, 1
  %326 = getelementptr inbounds nuw i8, ptr %318, i64 7
  store i8 %325, ptr %326, align 1, !tbaa !54
  %327 = icmp samesign ult i64 %317, %302
  br i1 %327, label %328, label %343, !llvm.loop !56

328:                                              ; preds = %316
  %329 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %317
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 12
  %331 = load i16, ptr %330, align 4, !tbaa !50
  %332 = zext i16 %331 to i64
  %333 = shl nuw nsw i64 %332, 3
  %334 = getelementptr inbounds nuw i8, ptr %301, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !54
  %336 = add i8 %335, 1
  %337 = getelementptr inbounds nuw i8, ptr %329, i64 15
  store i8 %336, ptr %337, align 1, !tbaa !54
  %338 = icmp eq i64 %317, 2147483646
  br i1 %338, label %159, label %339, !prof !48, !nosanitize !47

339:                                              ; preds = %328
  %340 = add nuw nsw i64 %317, 2
  %341 = trunc i64 %340 to i32
  %342 = icmp slt i32 %155, %341
  br i1 %342, label %343, label %316, !llvm.loop !56

343:                                              ; preds = %316, %339, %298
  %344 = zext i32 %155 to i64
  %345 = shl nuw nsw i64 %344, 3
  %346 = getelementptr inbounds nuw i8, ptr %17, i64 %345
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 7
  %348 = load i8, ptr %347, align 1, !tbaa !54
  %349 = zext i8 %348 to i32
  %350 = icmp ult i32 %137, %349
  br i1 %350, label %351, label %603

351:                                              ; preds = %343
  %352 = sub nuw nsw i32 %349, %137
  %353 = shl nuw i32 1, %352
  %354 = sext i32 %155 to i64
  %355 = shl nsw i64 %354, 3
  %356 = getelementptr i8, ptr %17, i64 %355
  %357 = getelementptr i8, ptr %356, i64 7
  %358 = load i8, ptr %357, align 1, !tbaa !54
  %359 = zext i8 %358 to i32
  %360 = icmp samesign ult i32 %137, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %351
  %362 = trunc nuw i32 %137 to i8
  %363 = getelementptr i8, ptr %16, i64 15
  br label %371

364:                                              ; preds = %379, %351
  %365 = phi i32 [ %359, %351 ], [ %389, %379 ]
  %366 = phi i32 [ %155, %351 ], [ %380, %379 ]
  %367 = phi i32 [ 0, %351 ], [ %384, %379 ]
  %368 = icmp eq i32 %137, %365
  br i1 %368, label %369, label %403

369:                                              ; preds = %364
  %370 = getelementptr i8, ptr %14, i64 15
  br label %391

371:                                              ; preds = %379, %361
  %372 = phi i32 [ %359, %361 ], [ %389, %379 ]
  %373 = phi ptr [ %357, %361 ], [ %387, %379 ]
  %374 = phi i32 [ 0, %361 ], [ %384, %379 ]
  %375 = phi i32 [ %155, %361 ], [ %380, %379 ]
  store i8 %362, ptr %373, align 1, !tbaa !54
  %376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %375, i32 -1)
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !47
  br i1 %377, label %378, label %379, !prof !48, !nosanitize !47

378:                                              ; preds = %371, %391, %517, %563
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

379:                                              ; preds = %371
  %380 = extractvalue { i32, i1 } %376, 0, !nosanitize !47
  %381 = sub nsw i32 %349, %372
  %382 = shl nsw i32 -1, %381
  %383 = add i32 %374, %353
  %384 = add i32 %383, %382
  %385 = sext i32 %380 to i64
  %386 = shl nsw i64 %385, 3
  %387 = getelementptr i8, ptr %363, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !54
  %389 = zext i8 %388 to i32
  %390 = icmp samesign ult i32 %137, %389
  br i1 %390, label %371, label %364, !llvm.loop !57

391:                                              ; preds = %369, %395
  %392 = phi i32 [ %396, %395 ], [ %366, %369 ]
  %393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %392, i32 -1)
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !47
  br i1 %394, label %378, label %395, !prof !48, !nosanitize !47

395:                                              ; preds = %391
  %396 = extractvalue { i32, i1 } %393, 0, !nosanitize !47
  %397 = sext i32 %396 to i64
  %398 = shl nsw i64 %397, 3
  %399 = getelementptr i8, ptr %370, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !54
  %401 = zext i8 %400 to i32
  %402 = icmp eq i32 %137, %401
  br i1 %402, label %391, label %403, !llvm.loop !58

403:                                              ; preds = %395, %364
  %404 = phi i32 [ %366, %364 ], [ %396, %395 ]
  %405 = ashr i32 %367, %352
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, i8 -16, i64 56, i1 false)
  %406 = icmp sgt i32 %404, -1
  br i1 %406, label %407, label %429

407:                                              ; preds = %403
  %408 = zext nneg i32 %404 to i64
  %409 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %410 = and i64 %408, 1
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %425

412:                                              ; preds = %407
  %413 = shl nuw nsw i64 %408, 3
  %414 = getelementptr inbounds nuw i8, ptr %409, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !54
  %416 = zext i8 %415 to i32
  %417 = icmp ugt i32 %137, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %412
  %419 = sub nuw nsw i32 %137, %416
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %420
  store i32 %404, ptr %421, align 4, !tbaa !19
  br label %422

422:                                              ; preds = %418, %412
  %423 = phi i32 [ %137, %412 ], [ %416, %418 ]
  %424 = add nsw i64 %408, -1
  br label %425

425:                                              ; preds = %422, %407
  %426 = phi i64 [ %408, %407 ], [ %424, %422 ]
  %427 = phi i32 [ %137, %407 ], [ %423, %422 ]
  %428 = icmp eq i32 %404, 0
  br i1 %428, label %429, label %434

429:                                              ; preds = %425, %460, %403
  %430 = icmp sgt i32 %405, 0
  br i1 %430, label %431, label %464

431:                                              ; preds = %429
  %432 = getelementptr inbounds nuw i8, ptr %16, i64 15
  %433 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %472

434:                                              ; preds = %425, %460
  %435 = phi i64 [ %462, %460 ], [ %426, %425 ]
  %436 = phi i32 [ %461, %460 ], [ %427, %425 ]
  %437 = shl nuw nsw i64 %435, 3
  %438 = getelementptr inbounds nuw i8, ptr %409, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !54
  %440 = zext i8 %439 to i32
  %441 = icmp ugt i32 %436, %440
  br i1 %441, label %442, label %447

442:                                              ; preds = %434
  %443 = sub nsw i32 %137, %440
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %444
  %446 = trunc nuw nsw i64 %435 to i32
  store i32 %446, ptr %445, align 4, !tbaa !19
  br label %447

447:                                              ; preds = %442, %434
  %448 = phi i32 [ %436, %434 ], [ %440, %442 ]
  %449 = add nsw i64 %435, -1
  %450 = shl nuw nsw i64 %449, 3
  %451 = getelementptr inbounds nuw i8, ptr %409, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !54
  %453 = zext i8 %452 to i32
  %454 = icmp ugt i32 %448, %453
  br i1 %454, label %455, label %460

455:                                              ; preds = %447
  %456 = sub nsw i32 %137, %453
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %457
  %459 = trunc nuw nsw i64 %449 to i32
  store i32 %459, ptr %458, align 4, !tbaa !19
  br label %460

460:                                              ; preds = %455, %447
  %461 = phi i32 [ %448, %447 ], [ %453, %455 ]
  %462 = add nsw i64 %435, -2
  %463 = icmp sgt i64 %435, 1
  br i1 %463, label %434, label %429, !llvm.loop !59

464:                                              ; preds = %549, %429
  %465 = phi i32 [ %405, %429 ], [ %522, %549 ]
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %467, label %602

467:                                              ; preds = %464
  %468 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %469 = load i32, ptr %468, align 4
  %470 = getelementptr i8, ptr %16, i64 15
  %471 = getelementptr i8, ptr %14, i64 15
  br label %589

472:                                              ; preds = %431, %549
  %473 = phi i32 [ %522, %549 ], [ %405, %431 ]
  %474 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %473, i1 true)
  %475 = icmp eq i32 %474, 31
  br i1 %475, label %505, label %476

476:                                              ; preds = %472
  %477 = sub nuw nsw i32 32, %474
  %478 = zext nneg i32 %477 to i64
  br label %479

479:                                              ; preds = %499, %476
  %480 = phi i64 [ %478, %476 ], [ %483, %499 ]
  %481 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !19
  %483 = add nsw i64 %480, -1
  %484 = and i64 %483, 4294967295
  %485 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !19
  %487 = icmp eq i32 %482, -252645136
  br i1 %487, label %499, label %488

488:                                              ; preds = %479
  %489 = icmp eq i32 %486, -252645136
  br i1 %489, label %502, label %490

490:                                              ; preds = %488
  %491 = zext i32 %482 to i64
  %492 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !42
  %494 = zext i32 %486 to i64
  %495 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !42
  %497 = shl i32 %496, 1
  %498 = icmp ugt i32 %493, %497
  br i1 %498, label %499, label %502

499:                                              ; preds = %490, %479
  %500 = and i64 %483, 4294967294
  %501 = icmp eq i64 %500, 0
  br i1 %501, label %505, label %479, !llvm.loop !60

502:                                              ; preds = %490, %488
  %503 = trunc nuw i64 %480 to i32
  %504 = icmp ult i64 %480, 13
  br i1 %504, label %505, label %517

505:                                              ; preds = %499, %502, %472
  %506 = phi i64 [ 1, %472 ], [ %480, %502 ], [ 1, %499 ]
  br label %507

507:                                              ; preds = %505, %512
  %508 = phi i64 [ %513, %512 ], [ %506, %505 ]
  %509 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !19
  %511 = icmp eq i32 %510, -252645136
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = add nuw nsw i64 %508, 1
  %514 = icmp eq i64 %513, 13
  br i1 %514, label %517, label %507, !llvm.loop !61

515:                                              ; preds = %507
  %516 = trunc nuw nsw i64 %508 to i32
  br label %517

517:                                              ; preds = %512, %515, %502
  %518 = phi i32 [ %503, %502 ], [ %516, %515 ], [ 13, %512 ]
  %519 = add nsw i32 %518, -1
  %520 = shl nuw i32 1, %519
  %521 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %473, i32 %520), !nosanitize !47
  %522 = extractvalue { i32, i1 } %521, 0, !nosanitize !47
  %523 = extractvalue { i32, i1 } %521, 1, !nosanitize !47
  br i1 %523, label %378, label %524, !prof !48, !nosanitize !47

524:                                              ; preds = %517
  %525 = zext nneg i32 %518 to i64
  %526 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !19
  %528 = zext i32 %527 to i64
  %529 = shl nuw nsw i64 %528, 3
  %530 = getelementptr inbounds nuw i8, ptr %432, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !54
  %532 = add i8 %531, 1
  store i8 %532, ptr %530, align 1, !tbaa !54
  %533 = zext nneg i32 %519 to i64
  %534 = getelementptr inbounds nuw [14 x i32], ptr %9, i64 0, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !19
  %536 = icmp eq i32 %535, -252645136
  %537 = select i1 %536, i32 %527, i32 %535
  store i32 %537, ptr %534, align 4
  %538 = icmp eq i32 %527, 0
  br i1 %538, label %549, label %539

539:                                              ; preds = %524
  %540 = add i32 %527, -1
  %541 = zext i32 %540 to i64
  %542 = shl nuw nsw i64 %541, 3
  %543 = getelementptr inbounds nuw i8, ptr %433, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !54
  %545 = zext i8 %544 to i32
  %546 = sub nsw i32 %137, %518
  %547 = icmp eq i32 %546, %545
  %548 = select i1 %547, i32 %540, i32 -252645136
  br label %549

549:                                              ; preds = %539, %524
  %550 = phi i32 [ %548, %539 ], [ -252645136, %524 ]
  store i32 %550, ptr %526, align 4
  %551 = icmp sgt i32 %522, 0
  br i1 %551, label %472, label %464, !llvm.loop !62

552:                                              ; preds = %593, %589
  %553 = phi i32 [ %590, %589 ], [ %594, %593 ]
  %554 = phi i32 [ %591, %589 ], [ %600, %593 ]
  %555 = icmp eq i32 %553, -252645136
  br i1 %555, label %556, label %593

556:                                              ; preds = %552
  %557 = sext i32 %592 to i64
  %558 = shl nsw i64 %557, 3
  %559 = getelementptr i8, ptr %471, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !54
  %561 = zext i8 %560 to i32
  %562 = icmp eq i32 %137, %561
  br i1 %562, label %563, label %575

563:                                              ; preds = %556, %567
  %564 = phi i32 [ %568, %567 ], [ %592, %556 ]
  %565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %564, i32 -1)
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !47
  br i1 %566, label %378, label %567, !prof !48, !nosanitize !47

567:                                              ; preds = %563
  %568 = extractvalue { i32, i1 } %565, 0, !nosanitize !47
  %569 = sext i32 %568 to i64
  %570 = shl nsw i64 %569, 3
  %571 = getelementptr i8, ptr %471, i64 %570
  %572 = load i8, ptr %571, align 1, !tbaa !54
  %573 = zext i8 %572 to i32
  %574 = icmp eq i32 %137, %573
  br i1 %574, label %563, label %575, !llvm.loop !63

575:                                              ; preds = %567, %556
  %576 = phi i32 [ %592, %556 ], [ %568, %567 ]
  %577 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %576, i32 1), !nosanitize !47
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !47
  br i1 %578, label %579, label %580, !prof !48, !nosanitize !47

579:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

580:                                              ; preds = %575
  %581 = extractvalue { i32, i1 } %577, 0, !nosanitize !47
  %582 = sext i32 %581 to i64
  %583 = shl nsw i64 %582, 3
  %584 = getelementptr i8, ptr %470, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !54
  %586 = add i8 %585, -1
  store i8 %586, ptr %584, align 1, !tbaa !54
  %587 = add nuw nsw i32 %554, 1
  %588 = icmp slt i32 %554, -1
  br i1 %588, label %589, label %602, !llvm.loop !64

589:                                              ; preds = %580, %467
  %590 = phi i32 [ %469, %467 ], [ %581, %580 ]
  %591 = phi i32 [ %465, %467 ], [ %587, %580 ]
  %592 = phi i32 [ %404, %467 ], [ %576, %580 ]
  br label %552

593:                                              ; preds = %552
  %594 = add i32 %553, 1
  %595 = zext i32 %594 to i64
  %596 = shl nuw nsw i64 %595, 3
  %597 = getelementptr inbounds nuw i8, ptr %470, i64 %596
  %598 = load i8, ptr %597, align 1, !tbaa !54
  %599 = add i8 %598, -1
  store i8 %599, ptr %597, align 1, !tbaa !54
  %600 = add nuw i32 %554, 1
  %601 = icmp eq i32 %554, -1
  br i1 %601, label %602, label %552, !llvm.loop !64

602:                                              ; preds = %580, %593, %464
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12
  br label %603

603:                                              ; preds = %343, %602
  %604 = phi i32 [ %137, %602 ], [ %349, %343 ]
  %605 = icmp samesign ugt i32 %604, 12
  br i1 %605, label %774, label %606

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %7, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %8, i8 0, i64 26, i1 false)
  br i1 %299, label %612, label %608

608:                                              ; preds = %606
  %609 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %610 = zext nneg i32 %155 to i64
  %611 = getelementptr i8, ptr %609, i64 8
  br label %620

612:                                              ; preds = %620, %640, %606
  %613 = icmp eq i32 %604, 0
  br i1 %613, label %690, label %614

614:                                              ; preds = %612
  %615 = zext nneg i32 %604 to i64
  %616 = and i64 %615, 3
  %617 = icmp ult i32 %604, 4
  br i1 %617, label %674, label %618

618:                                              ; preds = %614
  %619 = and i64 %615, 12
  br label %644

620:                                              ; preds = %640, %608
  %621 = phi i64 [ 0, %608 ], [ %641, %640 ]
  %622 = shl nuw nsw i64 %621, 3
  %623 = getelementptr inbounds nuw i8, ptr %609, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !54
  %625 = zext i8 %624 to i64
  %626 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %625
  %627 = load i16, ptr %626, align 2, !tbaa !32
  %628 = add i16 %627, 1
  store i16 %628, ptr %626, align 2, !tbaa !32
  %629 = icmp samesign ult i64 %621, %610
  br i1 %629, label %631, label %612, !llvm.loop !65

630:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

631:                                              ; preds = %620
  %632 = shl i64 %621, 3
  %633 = getelementptr i8, ptr %611, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !54
  %635 = zext i8 %634 to i64
  %636 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %635
  %637 = load i16, ptr %636, align 2, !tbaa !32
  %638 = add i16 %637, 1
  store i16 %638, ptr %636, align 2, !tbaa !32
  %639 = icmp eq i64 %621, 2147483646
  br i1 %639, label %630, label %640, !prof !48, !nosanitize !47

640:                                              ; preds = %631
  %641 = add nuw nsw i64 %621, 2
  %642 = trunc i64 %641 to i32
  %643 = icmp slt i32 %155, %642
  br i1 %643, label %612, label %620, !llvm.loop !65

644:                                              ; preds = %644, %618
  %645 = phi i64 [ %615, %618 ], [ %667, %644 ]
  %646 = phi i16 [ 0, %618 ], [ %671, %644 ]
  %647 = phi i64 [ 0, %618 ], [ %672, %644 ]
  %648 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %645
  store i16 %646, ptr %648, align 2, !tbaa !32
  %649 = add nsw i64 %645, -1
  %650 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %645
  %651 = load i16, ptr %650, align 2, !tbaa !32
  %652 = add i16 %651, %646
  %653 = lshr i16 %652, 1
  %654 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %649
  store i16 %653, ptr %654, align 2, !tbaa !32
  %655 = add nsw i64 %645, -2
  %656 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %649
  %657 = load i16, ptr %656, align 2, !tbaa !32
  %658 = add i16 %657, %653
  %659 = lshr i16 %658, 1
  %660 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %655
  store i16 %659, ptr %660, align 2, !tbaa !32
  %661 = add nsw i64 %645, -3
  %662 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %655
  %663 = load i16, ptr %662, align 2, !tbaa !32
  %664 = add i16 %663, %659
  %665 = lshr i16 %664, 1
  %666 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %661
  store i16 %665, ptr %666, align 2, !tbaa !32
  %667 = add nsw i64 %645, -4
  %668 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %661
  %669 = load i16, ptr %668, align 2, !tbaa !32
  %670 = add i16 %669, %665
  %671 = lshr i16 %670, 1
  %672 = add i64 %647, 4
  %673 = icmp eq i64 %672, %619
  br i1 %673, label %674, label %644, !llvm.loop !66

674:                                              ; preds = %644, %614
  %675 = phi i64 [ %615, %614 ], [ %667, %644 ]
  %676 = phi i16 [ 0, %614 ], [ %671, %644 ]
  %677 = icmp eq i64 %616, 0
  br i1 %677, label %690, label %678

678:                                              ; preds = %674, %678
  %679 = phi i64 [ %683, %678 ], [ %675, %674 ]
  %680 = phi i16 [ %687, %678 ], [ %676, %674 ]
  %681 = phi i64 [ %688, %678 ], [ 0, %674 ]
  %682 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %679
  store i16 %680, ptr %682, align 2, !tbaa !32
  %683 = add nsw i64 %679, -1
  %684 = getelementptr inbounds nuw [13 x i16], ptr %7, i64 0, i64 %679
  %685 = load i16, ptr %684, align 2, !tbaa !32
  %686 = add i16 %685, %680
  %687 = lshr i16 %686, 1
  %688 = add i64 %681, 1
  %689 = icmp eq i64 %688, %616
  br i1 %689, label %690, label %678, !llvm.loop !67

690:                                              ; preds = %674, %678, %612
  %691 = and i64 %24, 3
  %692 = icmp ult i32 %2, 3
  br i1 %692, label %733, label %693

693:                                              ; preds = %690
  %694 = and i64 %24, 508
  br label %695

695:                                              ; preds = %695, %693
  %696 = phi i64 [ 0, %693 ], [ %730, %695 ]
  %697 = phi i64 [ 0, %693 ], [ %731, %695 ]
  %698 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %696
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 6
  %700 = load i8, ptr %699, align 2, !tbaa !44
  %701 = zext i8 %700 to i64
  %702 = getelementptr inbounds nuw i64, ptr %607, i64 %701
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 7
  %704 = load i8, ptr %703, align 1, !tbaa !54
  %705 = zext i8 %704 to i64
  store i64 %705, ptr %702, align 8, !tbaa !14
  %706 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %696
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 14
  %708 = load i8, ptr %707, align 2, !tbaa !44
  %709 = zext i8 %708 to i64
  %710 = getelementptr inbounds nuw i64, ptr %607, i64 %709
  %711 = getelementptr inbounds nuw i8, ptr %706, i64 15
  %712 = load i8, ptr %711, align 1, !tbaa !54
  %713 = zext i8 %712 to i64
  store i64 %713, ptr %710, align 8, !tbaa !14
  %714 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %696
  %715 = getelementptr inbounds nuw i8, ptr %714, i64 22
  %716 = load i8, ptr %715, align 2, !tbaa !44
  %717 = zext i8 %716 to i64
  %718 = getelementptr inbounds nuw i64, ptr %607, i64 %717
  %719 = getelementptr inbounds nuw i8, ptr %714, i64 23
  %720 = load i8, ptr %719, align 1, !tbaa !54
  %721 = zext i8 %720 to i64
  store i64 %721, ptr %718, align 8, !tbaa !14
  %722 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %696
  %723 = getelementptr inbounds nuw i8, ptr %722, i64 30
  %724 = load i8, ptr %723, align 2, !tbaa !44
  %725 = zext i8 %724 to i64
  %726 = getelementptr inbounds nuw i64, ptr %607, i64 %725
  %727 = getelementptr inbounds nuw i8, ptr %722, i64 31
  %728 = load i8, ptr %727, align 1, !tbaa !54
  %729 = zext i8 %728 to i64
  store i64 %729, ptr %726, align 8, !tbaa !14
  %730 = add nuw nsw i64 %696, 4
  %731 = add i64 %697, 4
  %732 = icmp eq i64 %731, %694
  br i1 %732, label %733, label %695, !llvm.loop !68

733:                                              ; preds = %695, %690
  %734 = phi i64 [ 0, %690 ], [ %730, %695 ]
  %735 = icmp eq i64 %691, 0
  br i1 %735, label %750, label %736

736:                                              ; preds = %733, %736
  %737 = phi i64 [ %747, %736 ], [ %734, %733 ]
  %738 = phi i64 [ %748, %736 ], [ 0, %733 ]
  %739 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %17, i64 %737
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 6
  %741 = load i8, ptr %740, align 2, !tbaa !44
  %742 = zext i8 %741 to i64
  %743 = getelementptr inbounds nuw i64, ptr %607, i64 %742
  %744 = getelementptr inbounds nuw i8, ptr %739, i64 7
  %745 = load i8, ptr %744, align 1, !tbaa !54
  %746 = zext i8 %745 to i64
  store i64 %746, ptr %743, align 8, !tbaa !14
  %747 = add nuw nsw i64 %737, 1
  %748 = add i64 %738, 1
  %749 = icmp eq i64 %748, %691
  br i1 %749, label %750, label %736, !llvm.loop !69

750:                                              ; preds = %736, %733
  br label %751

751:                                              ; preds = %750, %765
  %752 = phi i64 [ %766, %765 ], [ 0, %750 ]
  %753 = getelementptr inbounds nuw i64, ptr %607, i64 %752
  %754 = load i64, ptr %753, align 8, !tbaa !14
  %755 = and i64 %754, 255
  %756 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %755
  %757 = load i16, ptr %756, align 2, !tbaa !32
  %758 = add i16 %757, 1
  store i16 %758, ptr %756, align 2, !tbaa !32
  %759 = icmp eq i64 %755, 0
  br i1 %759, label %765, label %760

760:                                              ; preds = %751
  %761 = zext i16 %757 to i64
  %762 = sub nsw i64 64, %755
  %763 = shl i64 %761, %762
  %764 = or i64 %763, %754
  store i64 %764, ptr %753, align 8, !tbaa !14
  br label %765

765:                                              ; preds = %760, %751
  %766 = add nuw nsw i64 %752, 1
  %767 = icmp eq i64 %766, %24
  br i1 %767, label %768, label %751, !llvm.loop !70

768:                                              ; preds = %765
  %769 = trunc nuw nsw i32 %604 to i8
  %770 = trunc nuw i32 %2 to i8
  store i8 %769, ptr %0, align 8
  %771 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %770, ptr %771, align 1
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %772, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #12
  %773 = zext nneg i32 %604 to i64
  br label %774

774:                                              ; preds = %603, %19, %6, %768
  %775 = phi i64 [ %773, %768 ], [ -66, %6 ], [ -46, %19 ], [ -1, %603 ]
  ret i64 %775
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2305843009213693952) i64 @HUF_estimateCompressedSize(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %3
  switch i32 %2, label %7 [
    i32 2147483647, label %39
    i32 5, label %39
    i32 4, label %39
    i32 3, label %39
    i32 2, label %39
    i32 1, label %39
    i32 0, label %39
  ]

7:                                                ; preds = %6
  %8 = add nuw i32 %2, 1
  %9 = zext i32 %8 to i64
  %10 = and i64 %9, 3
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 4, i64 %10
  %13 = sub nsw i64 %9, %12
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi i64 [ 0, %7 ], [ %34, %14 ]
  %16 = phi <2 x i64> [ zeroinitializer, %7 ], [ %32, %14 ]
  %17 = phi <2 x i64> [ zeroinitializer, %7 ], [ %33, %14 ]
  %18 = getelementptr inbounds nuw i64, ptr %4, i64 %15
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !14
  %21 = load <2 x i64>, ptr %19, align 8, !tbaa !14
  %22 = and <2 x i64> %20, splat (i64 255)
  %23 = and <2 x i64> %21, splat (i64 255)
  %24 = getelementptr inbounds nuw i32, ptr %1, i64 %15
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !19
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !19
  %28 = zext <2 x i32> %26 to <2 x i64>
  %29 = zext <2 x i32> %27 to <2 x i64>
  %30 = mul nuw nsw <2 x i64> %22, %28
  %31 = mul nuw nsw <2 x i64> %23, %29
  %32 = add <2 x i64> %30, %16
  %33 = add <2 x i64> %31, %17
  %34 = add nuw i64 %15, 4
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %14, !llvm.loop !71

36:                                               ; preds = %14
  %37 = add <2 x i64> %33, %32
  %38 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %37)
  br label %39

39:                                               ; preds = %36, %6, %6, %6, %6, %6, %6, %6
  %40 = phi i64 [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ %13, %36 ]
  %41 = phi i64 [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ %38, %36 ]
  br label %42

42:                                               ; preds = %39, %47
  %43 = phi i64 [ %51, %47 ], [ %40, %39 ]
  %44 = phi i64 [ %57, %47 ], [ %41, %39 ]
  %45 = icmp eq i64 %43, 2147483647
  br i1 %45, label %46, label %47, !prof !48, !nosanitize !47

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i64, ptr %4, i64 %43
  %49 = load i64, ptr %48, align 8, !tbaa !14
  %50 = and i64 %49, 255
  %51 = add nuw nsw i64 %43, 1
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds nuw i32, ptr %1, i64 %43
  %54 = load i32, ptr %53, align 4, !tbaa !19
  %55 = zext i32 %54 to i64
  %56 = mul nuw nsw i64 %50, %55
  %57 = add i64 %56, %44
  %58 = icmp slt i32 %2, %52
  br i1 %58, label %59, label %42, !llvm.loop !72

59:                                               ; preds = %47
  %60 = lshr i64 %57, 3
  br label %61

61:                                               ; preds = %59, %3
  %62 = phi i64 [ 0, %3 ], [ %60, %59 ]
  ret i64 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @HUF_validateCTable(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = and i32 %6, 255
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %2, 1
  %12 = zext nneg i32 %11 to i64
  %13 = icmp ult i32 %2, 3
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = and i64 %12, 2147483644
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %40, %16 ]
  %18 = phi <2 x i32> [ zeroinitializer, %14 ], [ %38, %16 ]
  %19 = phi <2 x i32> [ zeroinitializer, %14 ], [ %39, %16 ]
  %20 = getelementptr inbounds nuw i32, ptr %1, i64 %17
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !19
  %23 = load <2 x i32>, ptr %21, align 4, !tbaa !19
  %24 = getelementptr inbounds nuw i64, ptr %7, i64 %17
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !14
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !14
  %28 = and <2 x i64> %26, splat (i64 255)
  %29 = and <2 x i64> %27, splat (i64 255)
  %30 = icmp ne <2 x i32> %22, zeroinitializer
  %31 = icmp ne <2 x i32> %23, zeroinitializer
  %32 = icmp eq <2 x i64> %28, zeroinitializer
  %33 = icmp eq <2 x i64> %29, zeroinitializer
  %34 = and <2 x i1> %30, %32
  %35 = and <2 x i1> %31, %33
  %36 = zext <2 x i1> %34 to <2 x i32>
  %37 = zext <2 x i1> %35 to <2 x i32>
  %38 = or <2 x i32> %18, %36
  %39 = or <2 x i32> %19, %37
  %40 = add nuw i64 %17, 4
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %42, label %16, !llvm.loop !73

42:                                               ; preds = %16
  %43 = or <2 x i32> %39, %38
  %44 = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %43)
  %45 = icmp eq i64 %15, %12
  br i1 %45, label %64, label %46

46:                                               ; preds = %10, %42
  %47 = phi i64 [ 0, %10 ], [ %15, %42 ]
  %48 = phi i32 [ 0, %10 ], [ %44, %42 ]
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %57, %49 ], [ %47, %46 ]
  %51 = phi i32 [ %62, %49 ], [ %48, %46 ]
  %52 = getelementptr inbounds nuw i32, ptr %1, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = getelementptr inbounds nuw i64, ptr %7, i64 %50
  %55 = load i64, ptr %54, align 8, !tbaa !14
  %56 = and i64 %55, 255
  %57 = add nuw nsw i64 %50, 1
  %58 = icmp ne i32 %53, 0
  %59 = icmp eq i64 %56, 0
  %60 = and i1 %58, %59
  %61 = zext i1 %60 to i32
  %62 = or i32 %51, %61
  %63 = icmp eq i64 %57, %12
  br i1 %63, label %64, label %49, !llvm.loop !74

64:                                               ; preds = %49, %42
  %65 = phi i32 [ %44, %42 ], [ %62, %49 ]
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %3, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %3 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #9 {
  %2 = lshr i64 %0, 8
  %3 = add i64 %0, 137
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #2 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %2533

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = icmp ult i64 %1, 8
  br i1 %16, label %2533, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = icmp eq i64 %1, 8
  br i1 %20, label %2533, label %21

21:                                               ; preds = %17
  %22 = and i64 %12, 255
  %23 = mul i64 %22, %3
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %1, %25
  %27 = icmp samesign ugt i32 %14, 11
  %28 = select i1 %26, i1 true, i1 %27
  %29 = trunc i64 %3 to i32
  br i1 %28, label %30, label %305

30:                                               ; preds = %21
  %31 = srem i32 %29, 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %30
  %34 = xor i32 %29, -2147483648
  %35 = add nsw i32 %31, -1
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %73, !prof !75, !nosanitize !47

37:                                               ; preds = %33
  %38 = and i32 %31, 1
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %37
  %41 = and i32 %31, 2147483646
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %29, %40 ], [ %59, %42 ]
  %44 = phi i64 [ 0, %40 ], [ %69, %42 ]
  %45 = phi i64 [ 0, %40 ], [ %70, %42 ]
  %46 = phi i32 [ 0, %40 ], [ %71, %42 ]
  %47 = add i32 %43, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw i64, ptr %15, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !14
  %54 = and i64 %53, 255
  %55 = lshr i64 %44, %54
  %56 = and i64 %53, -256
  %57 = or i64 %55, %56
  %58 = add i64 %53, %45
  %59 = add i32 %43, -2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds nuw i64, ptr %15, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !14
  %66 = and i64 %65, 255
  %67 = lshr i64 %57, %66
  %68 = and i64 %65, -256
  %69 = or i64 %67, %68
  %70 = add i64 %65, %58
  %71 = add i32 %46, 2
  %72 = icmp eq i32 %71, %41
  br i1 %72, label %74, label %42, !llvm.loop !76

73:                                               ; preds = %248, %245, %191, %122, %119, %116, %113, %33
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

74:                                               ; preds = %42, %37
  %75 = phi i64 [ poison, %37 ], [ %69, %42 ]
  %76 = phi i64 [ poison, %37 ], [ %70, %42 ]
  %77 = phi i32 [ %29, %37 ], [ %59, %42 ]
  %78 = phi i64 [ 0, %37 ], [ %69, %42 ]
  %79 = phi i64 [ 0, %37 ], [ %70, %42 ]
  %80 = icmp eq i32 %38, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %74
  %82 = add i32 %77, -1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %2, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds nuw i64, ptr %15, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !14
  %89 = and i64 %88, 255
  %90 = lshr i64 %78, %89
  %91 = and i64 %88, -256
  %92 = or i64 %90, %91
  %93 = add i64 %88, %79
  br label %94

94:                                               ; preds = %74, %81
  %95 = phi i64 [ %75, %74 ], [ %92, %81 ]
  %96 = phi i64 [ %76, %74 ], [ %93, %81 ]
  %97 = sub nsw i32 %29, %31
  %98 = and i64 %96, 255
  %99 = lshr i64 %98, 3
  %100 = sub nsw i64 64, %98
  %101 = lshr i64 %95, %100
  %102 = and i64 %96, 7
  store i64 %101, ptr %0, align 1, !tbaa !14
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %104 = icmp ugt ptr %103, %19
  %105 = select i1 %104, ptr %19, ptr %103
  br label %106

106:                                              ; preds = %94, %30
  %107 = phi i64 [ 0, %30 ], [ %102, %94 ]
  %108 = phi ptr [ %0, %30 ], [ %105, %94 ]
  %109 = phi i64 [ 0, %30 ], [ %95, %94 ]
  %110 = phi i32 [ %29, %30 ], [ %97, %94 ]
  %111 = and i32 %110, 7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %179, label %113

113:                                              ; preds = %106
  %114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %110, i32 -1)
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !47
  br i1 %115, label %73, label %116, !prof !48, !nosanitize !47

116:                                              ; preds = %113
  %117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %110, i32 -2)
  %118 = extractvalue { i32, i1 } %117, 1, !nosanitize !47
  br i1 %118, label %73, label %119, !prof !48, !nosanitize !47

119:                                              ; preds = %116
  %120 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %110, i32 -3)
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !47
  br i1 %121, label %73, label %122, !prof !48, !nosanitize !47

122:                                              ; preds = %119
  %123 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %110, i32 -4)
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !47
  br i1 %124, label %73, label %125, !prof !48, !nosanitize !47

125:                                              ; preds = %122
  %126 = extractvalue { i32, i1 } %120, 0, !nosanitize !47
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %2, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds nuw i64, ptr %15, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !14
  %133 = extractvalue { i32, i1 } %117, 0, !nosanitize !47
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %2, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw i64, ptr %15, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !14
  %140 = extractvalue { i32, i1 } %114, 0, !nosanitize !47
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %2, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !5
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds nuw i64, ptr %15, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !14
  %147 = and i64 %146, 255
  %148 = lshr i64 %109, %147
  %149 = or i64 %148, %146
  %150 = and i64 %139, 255
  %151 = lshr i64 %149, %150
  %152 = or i64 %151, %139
  %153 = and i64 %132, 255
  %154 = lshr i64 %152, %153
  %155 = or i64 %154, %132
  %156 = extractvalue { i32, i1 } %123, 0, !nosanitize !47
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %2, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw i64, ptr %15, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !14
  %163 = and i64 %162, 255
  %164 = lshr i64 %155, %163
  %165 = and i64 %162, -256
  %166 = or i64 %164, %165
  %167 = add i64 %132, %107
  %168 = add i64 %167, %139
  %169 = add i64 %168, %146
  %170 = add i64 %169, %162
  %171 = and i64 %170, 255
  %172 = lshr i64 %171, 3
  %173 = sub nsw i64 64, %171
  %174 = lshr i64 %166, %173
  %175 = and i64 %170, 7
  store i64 %174, ptr %108, align 1, !tbaa !14
  %176 = getelementptr inbounds nuw i8, ptr %108, i64 %172
  %177 = icmp ugt ptr %176, %19
  %178 = select i1 %177, ptr %19, ptr %176
  br label %179

179:                                              ; preds = %125, %106
  %180 = phi i64 [ %107, %106 ], [ %175, %125 ]
  %181 = phi ptr [ %108, %106 ], [ %178, %125 ]
  %182 = phi i64 [ %109, %106 ], [ %166, %125 ]
  %183 = phi i32 [ %110, %106 ], [ %156, %125 ]
  %184 = getelementptr i8, ptr %2, i64 -8
  %185 = icmp sgt i32 %183, 0
  br i1 %185, label %186, label %2510

186:                                              ; preds = %179
  %187 = zext nneg i32 %183 to i64
  %188 = getelementptr i8, ptr %2, i64 -1
  %189 = getelementptr i8, ptr %2, i64 -2
  %190 = getelementptr i8, ptr %2, i64 -3
  br label %191

191:                                              ; preds = %251, %186
  %192 = phi i64 [ %187, %186 ], [ %303, %251 ]
  %193 = phi i64 [ %182, %186 ], [ %293, %251 ]
  %194 = phi ptr [ %181, %186 ], [ %302, %251 ]
  %195 = phi i64 [ %180, %186 ], [ %299, %251 ]
  %196 = getelementptr i8, ptr %188, i64 %192
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw i64, ptr %15, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !14
  %201 = and i64 %200, 255
  %202 = lshr i64 %193, %201
  %203 = or i64 %202, %200
  %204 = add i64 %200, %195
  %205 = getelementptr i8, ptr %189, i64 %192
  %206 = load i8, ptr %205, align 1, !tbaa !5
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds nuw i64, ptr %15, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !14
  %210 = and i64 %209, 255
  %211 = lshr i64 %203, %210
  %212 = or i64 %211, %209
  %213 = add i64 %204, %209
  %214 = getelementptr i8, ptr %190, i64 %192
  %215 = load i8, ptr %214, align 1, !tbaa !5
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds nuw i64, ptr %15, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !14
  %219 = and i64 %218, 255
  %220 = lshr i64 %212, %219
  %221 = or i64 %220, %218
  %222 = add i64 %213, %218
  %223 = add nsw i64 %192, -4
  %224 = getelementptr inbounds i8, ptr %2, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds nuw i64, ptr %15, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !14
  %229 = and i64 %228, 255
  %230 = lshr i64 %221, %229
  %231 = and i64 %228, -256
  %232 = or i64 %230, %231
  %233 = add i64 %222, %228
  %234 = and i64 %233, 255
  %235 = lshr i64 %234, 3
  %236 = sub nsw i64 64, %234
  %237 = lshr i64 %232, %236
  %238 = and i64 %233, 7
  store i64 %237, ptr %194, align 1, !tbaa !14
  %239 = getelementptr inbounds nuw i8, ptr %194, i64 %235
  %240 = icmp ugt ptr %239, %19
  %241 = select i1 %240, ptr %19, ptr %239
  %242 = trunc nsw i64 %223 to i32
  %243 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %242, i32 -1)
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !47
  br i1 %244, label %73, label %245, !prof !48, !nosanitize !47

245:                                              ; preds = %191
  %246 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %242, i32 -2)
  %247 = extractvalue { i32, i1 } %246, 1, !nosanitize !47
  br i1 %247, label %73, label %248, !prof !48, !nosanitize !47

248:                                              ; preds = %245
  %249 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %242, i32 -3)
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !47
  br i1 %250, label %73, label %251, !prof !48, !nosanitize !47

251:                                              ; preds = %248
  %252 = extractvalue { i32, i1 } %246, 0, !nosanitize !47
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %2, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !5
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds nuw i64, ptr %15, i64 %256
  %258 = load i64, ptr %257, align 8, !tbaa !14
  %259 = extractvalue { i32, i1 } %243, 0, !nosanitize !47
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, ptr %2, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !5
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds nuw i64, ptr %15, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !14
  %266 = add i64 %265, %258
  %267 = and i64 %258, 255
  %268 = lshr i64 %265, %267
  %269 = or i64 %268, %258
  %270 = extractvalue { i32, i1 } %249, 0, !nosanitize !47
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, ptr %2, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !5
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds nuw i64, ptr %15, i64 %274
  %276 = load i64, ptr %275, align 8, !tbaa !14
  %277 = and i64 %276, 255
  %278 = lshr i64 %269, %277
  %279 = or i64 %278, %276
  %280 = add i64 %266, %276
  %281 = getelementptr i8, ptr %184, i64 %192
  %282 = load i8, ptr %281, align 1, !tbaa !5
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds nuw i64, ptr %15, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !14
  %286 = and i64 %285, 255
  %287 = lshr i64 %279, %286
  %288 = and i64 %285, -256
  %289 = or i64 %287, %288
  %290 = add i64 %280, %285
  %291 = and i64 %290, 255
  %292 = lshr i64 %232, %291
  %293 = or i64 %289, %292
  %294 = add i64 %290, %238
  %295 = and i64 %294, 255
  %296 = lshr i64 %295, 3
  %297 = sub nsw i64 64, %295
  %298 = lshr i64 %293, %297
  %299 = and i64 %294, 7
  store i64 %298, ptr %241, align 1, !tbaa !14
  %300 = getelementptr inbounds nuw i8, ptr %241, i64 %296
  %301 = icmp ugt ptr %300, %19
  %302 = select i1 %301, ptr %19, ptr %300
  %303 = add nsw i64 %192, -8
  %304 = icmp sgt i64 %192, 8
  br i1 %304, label %191, label %2510, !llvm.loop !77

305:                                              ; preds = %21
  switch i32 %14, label %2056 [
    i32 11, label %306
    i32 10, label %611
    i32 9, label %913
    i32 8, label %1256
    i32 7, label %1637
  ]

306:                                              ; preds = %305
  %307 = srem i32 %29, 5
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %380

309:                                              ; preds = %306
  %310 = xor i32 %29, -2147483648
  %311 = add nsw i32 %307, -1
  %312 = icmp ugt i32 %310, %311
  br i1 %312, label %313, label %349, !prof !75, !nosanitize !47

313:                                              ; preds = %309
  %314 = and i32 %307, 1
  %315 = icmp eq i32 %311, 0
  br i1 %315, label %350, label %316

316:                                              ; preds = %313
  %317 = and i32 %307, 2147483646
  br label %318

318:                                              ; preds = %318, %316
  %319 = phi i32 [ %29, %316 ], [ %335, %318 ]
  %320 = phi i64 [ 0, %316 ], [ %345, %318 ]
  %321 = phi i64 [ 0, %316 ], [ %346, %318 ]
  %322 = phi i32 [ 0, %316 ], [ %347, %318 ]
  %323 = add i32 %319, -1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %2, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i64
  %328 = getelementptr inbounds nuw i64, ptr %15, i64 %327
  %329 = load i64, ptr %328, align 8, !tbaa !14
  %330 = and i64 %329, 255
  %331 = lshr i64 %320, %330
  %332 = and i64 %329, -256
  %333 = or i64 %331, %332
  %334 = add i64 %329, %321
  %335 = add i32 %319, -2
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, ptr %2, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !5
  %339 = zext i8 %338 to i64
  %340 = getelementptr inbounds nuw i64, ptr %15, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !14
  %342 = and i64 %341, 255
  %343 = lshr i64 %333, %342
  %344 = and i64 %341, -256
  %345 = or i64 %343, %344
  %346 = add i64 %341, %334
  %347 = add i32 %322, 2
  %348 = icmp eq i32 %347, %317
  br i1 %348, label %350, label %318, !llvm.loop !76

349:                                              ; preds = %545, %542, %539, %478, %399, %396, %393, %390, %387, %309
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

350:                                              ; preds = %318, %313
  %351 = phi i64 [ poison, %313 ], [ %345, %318 ]
  %352 = phi i64 [ poison, %313 ], [ %346, %318 ]
  %353 = phi i32 [ %29, %313 ], [ %335, %318 ]
  %354 = phi i64 [ 0, %313 ], [ %345, %318 ]
  %355 = phi i64 [ 0, %313 ], [ %346, %318 ]
  %356 = icmp eq i32 %314, 0
  br i1 %356, label %370, label %357

357:                                              ; preds = %350
  %358 = add i32 %353, -1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %2, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !5
  %362 = zext i8 %361 to i64
  %363 = getelementptr inbounds nuw i64, ptr %15, i64 %362
  %364 = load i64, ptr %363, align 8, !tbaa !14
  %365 = and i64 %364, 255
  %366 = lshr i64 %354, %365
  %367 = and i64 %364, -256
  %368 = or i64 %366, %367
  %369 = add i64 %364, %355
  br label %370

370:                                              ; preds = %350, %357
  %371 = phi i64 [ %351, %350 ], [ %368, %357 ]
  %372 = phi i64 [ %352, %350 ], [ %369, %357 ]
  %373 = sub nsw i32 %29, %307
  %374 = and i64 %372, 255
  %375 = lshr i64 %374, 3
  %376 = sub nsw i64 64, %374
  %377 = lshr i64 %371, %376
  %378 = and i64 %372, 7
  store i64 %377, ptr %0, align 1, !tbaa !14
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 %375
  br label %380

380:                                              ; preds = %370, %306
  %381 = phi i64 [ %378, %370 ], [ 0, %306 ]
  %382 = phi ptr [ %379, %370 ], [ %0, %306 ]
  %383 = phi i64 [ %371, %370 ], [ 0, %306 ]
  %384 = phi i32 [ %373, %370 ], [ %29, %306 ]
  %385 = srem i32 %384, 10
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %465, label %387

387:                                              ; preds = %380
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %384, i32 -1)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !47
  br i1 %389, label %349, label %390, !prof !48, !nosanitize !47

390:                                              ; preds = %387
  %391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %384, i32 -2)
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !47
  br i1 %392, label %349, label %393, !prof !48, !nosanitize !47

393:                                              ; preds = %390
  %394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %384, i32 -3)
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !47
  br i1 %395, label %349, label %396, !prof !48, !nosanitize !47

396:                                              ; preds = %393
  %397 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %384, i32 -4)
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !47
  br i1 %398, label %349, label %399, !prof !48, !nosanitize !47

399:                                              ; preds = %396
  %400 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %384, i32 -5)
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !47
  br i1 %401, label %349, label %402, !prof !48, !nosanitize !47

402:                                              ; preds = %399
  %403 = extractvalue { i32, i1 } %397, 0, !nosanitize !47
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %2, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !5
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds nuw i64, ptr %15, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !14
  %410 = extractvalue { i32, i1 } %394, 0, !nosanitize !47
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, ptr %2, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !5
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds nuw i64, ptr %15, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !14
  %417 = extractvalue { i32, i1 } %391, 0, !nosanitize !47
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, ptr %2, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !5
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds nuw i64, ptr %15, i64 %421
  %423 = load i64, ptr %422, align 8, !tbaa !14
  %424 = extractvalue { i32, i1 } %388, 0, !nosanitize !47
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, ptr %2, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !5
  %428 = zext i8 %427 to i64
  %429 = getelementptr inbounds nuw i64, ptr %15, i64 %428
  %430 = load i64, ptr %429, align 8, !tbaa !14
  %431 = and i64 %430, 255
  %432 = lshr i64 %383, %431
  %433 = or i64 %432, %430
  %434 = and i64 %423, 255
  %435 = lshr i64 %433, %434
  %436 = or i64 %435, %423
  %437 = and i64 %416, 255
  %438 = lshr i64 %436, %437
  %439 = or i64 %438, %416
  %440 = and i64 %409, 255
  %441 = lshr i64 %439, %440
  %442 = or i64 %441, %409
  %443 = extractvalue { i32, i1 } %400, 0, !nosanitize !47
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, ptr %2, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !5
  %447 = zext i8 %446 to i64
  %448 = getelementptr inbounds nuw i64, ptr %15, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !14
  %450 = and i64 %449, 255
  %451 = lshr i64 %442, %450
  %452 = and i64 %449, -256
  %453 = or i64 %451, %452
  %454 = add i64 %409, %381
  %455 = add i64 %454, %416
  %456 = add i64 %455, %423
  %457 = add i64 %456, %430
  %458 = add i64 %457, %449
  %459 = and i64 %458, 255
  %460 = lshr i64 %459, 3
  %461 = sub nsw i64 64, %459
  %462 = lshr i64 %453, %461
  %463 = and i64 %458, 7
  store i64 %462, ptr %382, align 1, !tbaa !14
  %464 = getelementptr inbounds nuw i8, ptr %382, i64 %460
  br label %465

465:                                              ; preds = %402, %380
  %466 = phi i64 [ %381, %380 ], [ %463, %402 ]
  %467 = phi ptr [ %382, %380 ], [ %464, %402 ]
  %468 = phi i64 [ %383, %380 ], [ %453, %402 ]
  %469 = phi i32 [ %384, %380 ], [ %443, %402 ]
  %470 = getelementptr i8, ptr %2, i64 -10
  %471 = icmp sgt i32 %469, 0
  br i1 %471, label %472, label %2510

472:                                              ; preds = %465
  %473 = zext nneg i32 %469 to i64
  %474 = getelementptr i8, ptr %2, i64 -1
  %475 = getelementptr i8, ptr %2, i64 -2
  %476 = getelementptr i8, ptr %2, i64 -3
  %477 = getelementptr i8, ptr %2, i64 -4
  br label %478

478:                                              ; preds = %548, %472
  %479 = phi i64 [ %473, %472 ], [ %609, %548 ]
  %480 = phi i64 [ %468, %472 ], [ %601, %548 ]
  %481 = phi ptr [ %467, %472 ], [ %608, %548 ]
  %482 = phi i64 [ %466, %472 ], [ %607, %548 ]
  %483 = getelementptr i8, ptr %474, i64 %479
  %484 = load i8, ptr %483, align 1, !tbaa !5
  %485 = zext i8 %484 to i64
  %486 = getelementptr inbounds nuw i64, ptr %15, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !14
  %488 = and i64 %487, 255
  %489 = lshr i64 %480, %488
  %490 = or i64 %489, %487
  %491 = add i64 %487, %482
  %492 = getelementptr i8, ptr %475, i64 %479
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = zext i8 %493 to i64
  %495 = getelementptr inbounds nuw i64, ptr %15, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !14
  %497 = and i64 %496, 255
  %498 = lshr i64 %490, %497
  %499 = or i64 %498, %496
  %500 = add i64 %491, %496
  %501 = getelementptr i8, ptr %476, i64 %479
  %502 = load i8, ptr %501, align 1, !tbaa !5
  %503 = zext i8 %502 to i64
  %504 = getelementptr inbounds nuw i64, ptr %15, i64 %503
  %505 = load i64, ptr %504, align 8, !tbaa !14
  %506 = and i64 %505, 255
  %507 = lshr i64 %499, %506
  %508 = or i64 %507, %505
  %509 = add i64 %500, %505
  %510 = getelementptr i8, ptr %477, i64 %479
  %511 = load i8, ptr %510, align 1, !tbaa !5
  %512 = zext i8 %511 to i64
  %513 = getelementptr inbounds nuw i64, ptr %15, i64 %512
  %514 = load i64, ptr %513, align 8, !tbaa !14
  %515 = and i64 %514, 255
  %516 = lshr i64 %508, %515
  %517 = or i64 %516, %514
  %518 = add i64 %509, %514
  %519 = add nsw i64 %479, -5
  %520 = getelementptr inbounds i8, ptr %2, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !5
  %522 = zext i8 %521 to i64
  %523 = getelementptr inbounds nuw i64, ptr %15, i64 %522
  %524 = load i64, ptr %523, align 8, !tbaa !14
  %525 = and i64 %524, 255
  %526 = lshr i64 %517, %525
  %527 = and i64 %524, -256
  %528 = or i64 %526, %527
  %529 = add i64 %518, %524
  %530 = and i64 %529, 255
  %531 = lshr i64 %530, 3
  %532 = sub nsw i64 64, %530
  %533 = lshr i64 %528, %532
  %534 = and i64 %529, 7
  store i64 %533, ptr %481, align 1, !tbaa !14
  %535 = getelementptr inbounds nuw i8, ptr %481, i64 %531
  %536 = trunc nsw i64 %519 to i32
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %536, i32 -1)
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !47
  br i1 %538, label %349, label %539, !prof !48, !nosanitize !47

539:                                              ; preds = %478
  %540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %536, i32 -2)
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !47
  br i1 %541, label %349, label %542, !prof !48, !nosanitize !47

542:                                              ; preds = %539
  %543 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %536, i32 -3)
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !47
  br i1 %544, label %349, label %545, !prof !48, !nosanitize !47

545:                                              ; preds = %542
  %546 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %536, i32 -4)
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !47
  br i1 %547, label %349, label %548, !prof !48, !nosanitize !47

548:                                              ; preds = %545
  %549 = extractvalue { i32, i1 } %543, 0, !nosanitize !47
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, ptr %2, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !5
  %553 = zext i8 %552 to i64
  %554 = getelementptr inbounds nuw i64, ptr %15, i64 %553
  %555 = load i64, ptr %554, align 8, !tbaa !14
  %556 = extractvalue { i32, i1 } %540, 0, !nosanitize !47
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, ptr %2, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !5
  %560 = zext i8 %559 to i64
  %561 = getelementptr inbounds nuw i64, ptr %15, i64 %560
  %562 = load i64, ptr %561, align 8, !tbaa !14
  %563 = extractvalue { i32, i1 } %537, 0, !nosanitize !47
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, ptr %2, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !5
  %567 = zext i8 %566 to i64
  %568 = getelementptr inbounds nuw i64, ptr %15, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !14
  %570 = and i64 %562, 255
  %571 = lshr i64 %569, %570
  %572 = or i64 %571, %562
  %573 = and i64 %555, 255
  %574 = lshr i64 %572, %573
  %575 = or i64 %574, %555
  %576 = extractvalue { i32, i1 } %546, 0, !nosanitize !47
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8, ptr %2, i64 %577
  %579 = load i8, ptr %578, align 1, !tbaa !5
  %580 = zext i8 %579 to i64
  %581 = getelementptr inbounds nuw i64, ptr %15, i64 %580
  %582 = load i64, ptr %581, align 8, !tbaa !14
  %583 = and i64 %582, 255
  %584 = lshr i64 %575, %583
  %585 = or i64 %584, %582
  %586 = getelementptr i8, ptr %470, i64 %479
  %587 = load i8, ptr %586, align 1, !tbaa !5
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds nuw i64, ptr %15, i64 %588
  %590 = load i64, ptr %589, align 8, !tbaa !14
  %591 = and i64 %590, 255
  %592 = lshr i64 %585, %591
  %593 = and i64 %590, -256
  %594 = or i64 %592, %593
  %595 = add i64 %562, %555
  %596 = add i64 %595, %569
  %597 = add i64 %596, %582
  %598 = add i64 %597, %590
  %599 = and i64 %598, 255
  %600 = lshr i64 %528, %599
  %601 = or i64 %594, %600
  %602 = add i64 %598, %534
  %603 = and i64 %602, 255
  %604 = lshr i64 %603, 3
  %605 = sub nsw i64 64, %603
  %606 = lshr i64 %601, %605
  %607 = and i64 %602, 7
  store i64 %606, ptr %535, align 1, !tbaa !14
  %608 = getelementptr inbounds nuw i8, ptr %535, i64 %604
  %609 = add nsw i64 %479, -10
  %610 = icmp sgt i64 %479, 10
  br i1 %610, label %478, label %2510, !llvm.loop !77

611:                                              ; preds = %305
  %612 = srem i32 %29, 5
  %613 = icmp sgt i32 %612, 0
  br i1 %613, label %614, label %685

614:                                              ; preds = %611
  %615 = xor i32 %29, -2147483648
  %616 = add nsw i32 %612, -1
  %617 = icmp ugt i32 %615, %616
  br i1 %617, label %618, label %654, !prof !75, !nosanitize !47

618:                                              ; preds = %614
  %619 = and i32 %612, 1
  %620 = icmp eq i32 %616, 0
  br i1 %620, label %655, label %621

621:                                              ; preds = %618
  %622 = and i32 %612, 2147483646
  br label %623

623:                                              ; preds = %623, %621
  %624 = phi i32 [ %29, %621 ], [ %640, %623 ]
  %625 = phi i64 [ 0, %621 ], [ %650, %623 ]
  %626 = phi i64 [ 0, %621 ], [ %651, %623 ]
  %627 = phi i32 [ 0, %621 ], [ %652, %623 ]
  %628 = add i32 %624, -1
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i8, ptr %2, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !5
  %632 = zext i8 %631 to i64
  %633 = getelementptr inbounds nuw i64, ptr %15, i64 %632
  %634 = load i64, ptr %633, align 8, !tbaa !14
  %635 = and i64 %634, 255
  %636 = lshr i64 %625, %635
  %637 = and i64 %634, -256
  %638 = or i64 %636, %637
  %639 = add i64 %634, %626
  %640 = add i32 %624, -2
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i8, ptr %2, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds nuw i64, ptr %15, i64 %644
  %646 = load i64, ptr %645, align 8, !tbaa !14
  %647 = and i64 %646, 255
  %648 = lshr i64 %638, %647
  %649 = and i64 %646, -256
  %650 = or i64 %648, %649
  %651 = add i64 %646, %639
  %652 = add i32 %627, 2
  %653 = icmp eq i32 %652, %622
  br i1 %653, label %655, label %623, !llvm.loop !76

654:                                              ; preds = %848, %845, %842, %782, %704, %701, %698, %695, %692, %614
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

655:                                              ; preds = %623, %618
  %656 = phi i64 [ poison, %618 ], [ %650, %623 ]
  %657 = phi i64 [ poison, %618 ], [ %651, %623 ]
  %658 = phi i32 [ %29, %618 ], [ %640, %623 ]
  %659 = phi i64 [ 0, %618 ], [ %650, %623 ]
  %660 = phi i64 [ 0, %618 ], [ %651, %623 ]
  %661 = icmp eq i32 %619, 0
  br i1 %661, label %675, label %662

662:                                              ; preds = %655
  %663 = add i32 %658, -1
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i8, ptr %2, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !5
  %667 = zext i8 %666 to i64
  %668 = getelementptr inbounds nuw i64, ptr %15, i64 %667
  %669 = load i64, ptr %668, align 8, !tbaa !14
  %670 = and i64 %669, 255
  %671 = lshr i64 %659, %670
  %672 = and i64 %669, -256
  %673 = or i64 %671, %672
  %674 = add i64 %669, %660
  br label %675

675:                                              ; preds = %655, %662
  %676 = phi i64 [ %656, %655 ], [ %673, %662 ]
  %677 = phi i64 [ %657, %655 ], [ %674, %662 ]
  %678 = sub nsw i32 %29, %612
  %679 = and i64 %677, 255
  %680 = lshr i64 %679, 3
  %681 = sub nsw i64 64, %679
  %682 = lshr i64 %676, %681
  %683 = and i64 %677, 7
  store i64 %682, ptr %0, align 1, !tbaa !14
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 %680
  br label %685

685:                                              ; preds = %675, %611
  %686 = phi i64 [ %683, %675 ], [ 0, %611 ]
  %687 = phi ptr [ %684, %675 ], [ %0, %611 ]
  %688 = phi i64 [ %676, %675 ], [ 0, %611 ]
  %689 = phi i32 [ %678, %675 ], [ %29, %611 ]
  %690 = srem i32 %689, 10
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %769, label %692

692:                                              ; preds = %685
  %693 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -1)
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !47
  br i1 %694, label %654, label %695, !prof !48, !nosanitize !47

695:                                              ; preds = %692
  %696 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -2)
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !47
  br i1 %697, label %654, label %698, !prof !48, !nosanitize !47

698:                                              ; preds = %695
  %699 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -3)
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !47
  br i1 %700, label %654, label %701, !prof !48, !nosanitize !47

701:                                              ; preds = %698
  %702 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -4)
  %703 = extractvalue { i32, i1 } %702, 1, !nosanitize !47
  br i1 %703, label %654, label %704, !prof !48, !nosanitize !47

704:                                              ; preds = %701
  %705 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -5)
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !47
  br i1 %706, label %654, label %707, !prof !48, !nosanitize !47

707:                                              ; preds = %704
  %708 = extractvalue { i32, i1 } %702, 0, !nosanitize !47
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8, ptr %2, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !5
  %712 = zext i8 %711 to i64
  %713 = getelementptr inbounds nuw i64, ptr %15, i64 %712
  %714 = load i64, ptr %713, align 8, !tbaa !14
  %715 = extractvalue { i32, i1 } %699, 0, !nosanitize !47
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i8, ptr %2, i64 %716
  %718 = load i8, ptr %717, align 1, !tbaa !5
  %719 = zext i8 %718 to i64
  %720 = getelementptr inbounds nuw i64, ptr %15, i64 %719
  %721 = load i64, ptr %720, align 8, !tbaa !14
  %722 = extractvalue { i32, i1 } %696, 0, !nosanitize !47
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i8, ptr %2, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !5
  %726 = zext i8 %725 to i64
  %727 = getelementptr inbounds nuw i64, ptr %15, i64 %726
  %728 = load i64, ptr %727, align 8, !tbaa !14
  %729 = extractvalue { i32, i1 } %693, 0, !nosanitize !47
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i8, ptr %2, i64 %730
  %732 = load i8, ptr %731, align 1, !tbaa !5
  %733 = zext i8 %732 to i64
  %734 = getelementptr inbounds nuw i64, ptr %15, i64 %733
  %735 = load i64, ptr %734, align 8, !tbaa !14
  %736 = and i64 %735, 255
  %737 = lshr i64 %688, %736
  %738 = or i64 %737, %735
  %739 = and i64 %728, 255
  %740 = lshr i64 %738, %739
  %741 = or i64 %740, %728
  %742 = and i64 %721, 255
  %743 = lshr i64 %741, %742
  %744 = or i64 %743, %721
  %745 = and i64 %714, 255
  %746 = lshr i64 %744, %745
  %747 = or i64 %746, %714
  %748 = extractvalue { i32, i1 } %705, 0, !nosanitize !47
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i8, ptr %2, i64 %749
  %751 = load i8, ptr %750, align 1, !tbaa !5
  %752 = zext i8 %751 to i64
  %753 = getelementptr inbounds nuw i64, ptr %15, i64 %752
  %754 = load i64, ptr %753, align 8, !tbaa !14
  %755 = and i64 %754, 255
  %756 = lshr i64 %747, %755
  %757 = or i64 %756, %754
  %758 = add i64 %714, %686
  %759 = add i64 %758, %721
  %760 = add i64 %759, %728
  %761 = add i64 %760, %735
  %762 = add i64 %761, %754
  %763 = and i64 %762, 255
  %764 = lshr i64 %763, 3
  %765 = sub nsw i64 64, %763
  %766 = lshr i64 %757, %765
  %767 = and i64 %762, 7
  store i64 %766, ptr %687, align 1, !tbaa !14
  %768 = getelementptr inbounds nuw i8, ptr %687, i64 %764
  br label %769

769:                                              ; preds = %707, %685
  %770 = phi i64 [ %686, %685 ], [ %767, %707 ]
  %771 = phi ptr [ %687, %685 ], [ %768, %707 ]
  %772 = phi i64 [ %688, %685 ], [ %757, %707 ]
  %773 = phi i32 [ %689, %685 ], [ %748, %707 ]
  %774 = getelementptr i8, ptr %2, i64 -10
  %775 = icmp sgt i32 %773, 0
  br i1 %775, label %776, label %2510

776:                                              ; preds = %769
  %777 = zext nneg i32 %773 to i64
  %778 = getelementptr i8, ptr %2, i64 -1
  %779 = getelementptr i8, ptr %2, i64 -2
  %780 = getelementptr i8, ptr %2, i64 -3
  %781 = getelementptr i8, ptr %2, i64 -4
  br label %782

782:                                              ; preds = %851, %776
  %783 = phi i64 [ %777, %776 ], [ %911, %851 ]
  %784 = phi i64 [ %772, %776 ], [ %903, %851 ]
  %785 = phi ptr [ %771, %776 ], [ %910, %851 ]
  %786 = phi i64 [ %770, %776 ], [ %909, %851 ]
  %787 = getelementptr i8, ptr %778, i64 %783
  %788 = load i8, ptr %787, align 1, !tbaa !5
  %789 = zext i8 %788 to i64
  %790 = getelementptr inbounds nuw i64, ptr %15, i64 %789
  %791 = load i64, ptr %790, align 8, !tbaa !14
  %792 = and i64 %791, 255
  %793 = lshr i64 %784, %792
  %794 = or i64 %793, %791
  %795 = add i64 %791, %786
  %796 = getelementptr i8, ptr %779, i64 %783
  %797 = load i8, ptr %796, align 1, !tbaa !5
  %798 = zext i8 %797 to i64
  %799 = getelementptr inbounds nuw i64, ptr %15, i64 %798
  %800 = load i64, ptr %799, align 8, !tbaa !14
  %801 = and i64 %800, 255
  %802 = lshr i64 %794, %801
  %803 = or i64 %802, %800
  %804 = add i64 %795, %800
  %805 = getelementptr i8, ptr %780, i64 %783
  %806 = load i8, ptr %805, align 1, !tbaa !5
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds nuw i64, ptr %15, i64 %807
  %809 = load i64, ptr %808, align 8, !tbaa !14
  %810 = and i64 %809, 255
  %811 = lshr i64 %803, %810
  %812 = or i64 %811, %809
  %813 = add i64 %804, %809
  %814 = getelementptr i8, ptr %781, i64 %783
  %815 = load i8, ptr %814, align 1, !tbaa !5
  %816 = zext i8 %815 to i64
  %817 = getelementptr inbounds nuw i64, ptr %15, i64 %816
  %818 = load i64, ptr %817, align 8, !tbaa !14
  %819 = and i64 %818, 255
  %820 = lshr i64 %812, %819
  %821 = or i64 %820, %818
  %822 = add i64 %813, %818
  %823 = add nsw i64 %783, -5
  %824 = getelementptr inbounds i8, ptr %2, i64 %823
  %825 = load i8, ptr %824, align 1, !tbaa !5
  %826 = zext i8 %825 to i64
  %827 = getelementptr inbounds nuw i64, ptr %15, i64 %826
  %828 = load i64, ptr %827, align 8, !tbaa !14
  %829 = and i64 %828, 255
  %830 = lshr i64 %821, %829
  %831 = or i64 %830, %828
  %832 = add i64 %822, %828
  %833 = and i64 %832, 255
  %834 = lshr i64 %833, 3
  %835 = sub nsw i64 64, %833
  %836 = lshr i64 %831, %835
  %837 = and i64 %832, 7
  store i64 %836, ptr %785, align 1, !tbaa !14
  %838 = getelementptr inbounds nuw i8, ptr %785, i64 %834
  %839 = trunc nsw i64 %823 to i32
  %840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %839, i32 -1)
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !47
  br i1 %841, label %654, label %842, !prof !48, !nosanitize !47

842:                                              ; preds = %782
  %843 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %839, i32 -2)
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !47
  br i1 %844, label %654, label %845, !prof !48, !nosanitize !47

845:                                              ; preds = %842
  %846 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %839, i32 -3)
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !47
  br i1 %847, label %654, label %848, !prof !48, !nosanitize !47

848:                                              ; preds = %845
  %849 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %839, i32 -4)
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !47
  br i1 %850, label %654, label %851, !prof !48, !nosanitize !47

851:                                              ; preds = %848
  %852 = extractvalue { i32, i1 } %846, 0, !nosanitize !47
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds i8, ptr %2, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !5
  %856 = zext i8 %855 to i64
  %857 = getelementptr inbounds nuw i64, ptr %15, i64 %856
  %858 = load i64, ptr %857, align 8, !tbaa !14
  %859 = extractvalue { i32, i1 } %843, 0, !nosanitize !47
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i8, ptr %2, i64 %860
  %862 = load i8, ptr %861, align 1, !tbaa !5
  %863 = zext i8 %862 to i64
  %864 = getelementptr inbounds nuw i64, ptr %15, i64 %863
  %865 = load i64, ptr %864, align 8, !tbaa !14
  %866 = extractvalue { i32, i1 } %840, 0, !nosanitize !47
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i8, ptr %2, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !5
  %870 = zext i8 %869 to i64
  %871 = getelementptr inbounds nuw i64, ptr %15, i64 %870
  %872 = load i64, ptr %871, align 8, !tbaa !14
  %873 = and i64 %865, 255
  %874 = lshr i64 %872, %873
  %875 = or i64 %874, %865
  %876 = and i64 %858, 255
  %877 = lshr i64 %875, %876
  %878 = or i64 %877, %858
  %879 = extractvalue { i32, i1 } %849, 0, !nosanitize !47
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i8, ptr %2, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !5
  %883 = zext i8 %882 to i64
  %884 = getelementptr inbounds nuw i64, ptr %15, i64 %883
  %885 = load i64, ptr %884, align 8, !tbaa !14
  %886 = and i64 %885, 255
  %887 = lshr i64 %878, %886
  %888 = or i64 %887, %885
  %889 = getelementptr i8, ptr %774, i64 %783
  %890 = load i8, ptr %889, align 1, !tbaa !5
  %891 = zext i8 %890 to i64
  %892 = getelementptr inbounds nuw i64, ptr %15, i64 %891
  %893 = load i64, ptr %892, align 8, !tbaa !14
  %894 = and i64 %893, 255
  %895 = lshr i64 %888, %894
  %896 = add i64 %865, %858
  %897 = add i64 %896, %872
  %898 = add i64 %897, %885
  %899 = add i64 %898, %893
  %900 = and i64 %899, 255
  %901 = lshr i64 %831, %900
  %902 = or i64 %901, %895
  %903 = or i64 %902, %893
  %904 = add i64 %899, %837
  %905 = and i64 %904, 255
  %906 = lshr i64 %905, 3
  %907 = sub nsw i64 64, %905
  %908 = lshr i64 %903, %907
  %909 = and i64 %904, 7
  store i64 %908, ptr %838, align 1, !tbaa !14
  %910 = getelementptr inbounds nuw i8, ptr %838, i64 %906
  %911 = add nsw i64 %783, -10
  %912 = icmp sgt i64 %783, 10
  br i1 %912, label %782, label %2510, !llvm.loop !77

913:                                              ; preds = %305
  %914 = srem i32 %29, 6
  %915 = icmp sgt i32 %914, 0
  br i1 %915, label %916, label %987

916:                                              ; preds = %913
  %917 = xor i32 %29, -2147483648
  %918 = add nsw i32 %914, -1
  %919 = icmp ugt i32 %917, %918
  br i1 %919, label %920, label %956, !prof !75, !nosanitize !47

920:                                              ; preds = %916
  %921 = and i32 %914, 1
  %922 = icmp eq i32 %918, 0
  br i1 %922, label %957, label %923

923:                                              ; preds = %920
  %924 = and i32 %914, 2147483646
  br label %925

925:                                              ; preds = %925, %923
  %926 = phi i32 [ %29, %923 ], [ %942, %925 ]
  %927 = phi i64 [ 0, %923 ], [ %952, %925 ]
  %928 = phi i64 [ 0, %923 ], [ %953, %925 ]
  %929 = phi i32 [ 0, %923 ], [ %954, %925 ]
  %930 = add i32 %926, -1
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds i8, ptr %2, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !5
  %934 = zext i8 %933 to i64
  %935 = getelementptr inbounds nuw i64, ptr %15, i64 %934
  %936 = load i64, ptr %935, align 8, !tbaa !14
  %937 = and i64 %936, 255
  %938 = lshr i64 %927, %937
  %939 = and i64 %936, -256
  %940 = or i64 %938, %939
  %941 = add i64 %936, %928
  %942 = add i32 %926, -2
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds i8, ptr %2, i64 %943
  %945 = load i8, ptr %944, align 1, !tbaa !5
  %946 = zext i8 %945 to i64
  %947 = getelementptr inbounds nuw i64, ptr %15, i64 %946
  %948 = load i64, ptr %947, align 8, !tbaa !14
  %949 = and i64 %948, 255
  %950 = lshr i64 %940, %949
  %951 = and i64 %948, -256
  %952 = or i64 %950, %951
  %953 = add i64 %948, %941
  %954 = add i32 %929, 2
  %955 = icmp eq i32 %954, %924
  br i1 %955, label %957, label %925, !llvm.loop !76

956:                                              ; preds = %1179, %1176, %1173, %1170, %1100, %1009, %1006, %1003, %1000, %997, %994, %916
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

957:                                              ; preds = %925, %920
  %958 = phi i64 [ poison, %920 ], [ %952, %925 ]
  %959 = phi i64 [ poison, %920 ], [ %953, %925 ]
  %960 = phi i32 [ %29, %920 ], [ %942, %925 ]
  %961 = phi i64 [ 0, %920 ], [ %952, %925 ]
  %962 = phi i64 [ 0, %920 ], [ %953, %925 ]
  %963 = icmp eq i32 %921, 0
  br i1 %963, label %977, label %964

964:                                              ; preds = %957
  %965 = add i32 %960, -1
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds i8, ptr %2, i64 %966
  %968 = load i8, ptr %967, align 1, !tbaa !5
  %969 = zext i8 %968 to i64
  %970 = getelementptr inbounds nuw i64, ptr %15, i64 %969
  %971 = load i64, ptr %970, align 8, !tbaa !14
  %972 = and i64 %971, 255
  %973 = lshr i64 %961, %972
  %974 = and i64 %971, -256
  %975 = or i64 %973, %974
  %976 = add i64 %971, %962
  br label %977

977:                                              ; preds = %957, %964
  %978 = phi i64 [ %958, %957 ], [ %975, %964 ]
  %979 = phi i64 [ %959, %957 ], [ %976, %964 ]
  %980 = sub nsw i32 %29, %914
  %981 = and i64 %979, 255
  %982 = lshr i64 %981, 3
  %983 = sub nsw i64 64, %981
  %984 = lshr i64 %978, %983
  %985 = and i64 %979, 7
  store i64 %984, ptr %0, align 1, !tbaa !14
  %986 = getelementptr inbounds nuw i8, ptr %0, i64 %982
  br label %987

987:                                              ; preds = %977, %913
  %988 = phi i64 [ %985, %977 ], [ 0, %913 ]
  %989 = phi ptr [ %986, %977 ], [ %0, %913 ]
  %990 = phi i64 [ %978, %977 ], [ 0, %913 ]
  %991 = phi i32 [ %980, %977 ], [ %29, %913 ]
  %992 = srem i32 %991, 12
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1086, label %994

994:                                              ; preds = %987
  %995 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -1)
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !47
  br i1 %996, label %956, label %997, !prof !48, !nosanitize !47

997:                                              ; preds = %994
  %998 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -2)
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !47
  br i1 %999, label %956, label %1000, !prof !48, !nosanitize !47

1000:                                             ; preds = %997
  %1001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -3)
  %1002 = extractvalue { i32, i1 } %1001, 1, !nosanitize !47
  br i1 %1002, label %956, label %1003, !prof !48, !nosanitize !47

1003:                                             ; preds = %1000
  %1004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -4)
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !47
  br i1 %1005, label %956, label %1006, !prof !48, !nosanitize !47

1006:                                             ; preds = %1003
  %1007 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -5)
  %1008 = extractvalue { i32, i1 } %1007, 1, !nosanitize !47
  br i1 %1008, label %956, label %1009, !prof !48, !nosanitize !47

1009:                                             ; preds = %1006
  %1010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %991, i32 -6)
  %1011 = extractvalue { i32, i1 } %1010, 1, !nosanitize !47
  br i1 %1011, label %956, label %1012, !prof !48, !nosanitize !47

1012:                                             ; preds = %1009
  %1013 = extractvalue { i32, i1 } %1007, 0, !nosanitize !47
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i8, ptr %2, i64 %1014
  %1016 = load i8, ptr %1015, align 1, !tbaa !5
  %1017 = zext i8 %1016 to i64
  %1018 = getelementptr inbounds nuw i64, ptr %15, i64 %1017
  %1019 = load i64, ptr %1018, align 8, !tbaa !14
  %1020 = extractvalue { i32, i1 } %1004, 0, !nosanitize !47
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds i8, ptr %2, i64 %1021
  %1023 = load i8, ptr %1022, align 1, !tbaa !5
  %1024 = zext i8 %1023 to i64
  %1025 = getelementptr inbounds nuw i64, ptr %15, i64 %1024
  %1026 = load i64, ptr %1025, align 8, !tbaa !14
  %1027 = extractvalue { i32, i1 } %1001, 0, !nosanitize !47
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i8, ptr %2, i64 %1028
  %1030 = load i8, ptr %1029, align 1, !tbaa !5
  %1031 = zext i8 %1030 to i64
  %1032 = getelementptr inbounds nuw i64, ptr %15, i64 %1031
  %1033 = load i64, ptr %1032, align 8, !tbaa !14
  %1034 = extractvalue { i32, i1 } %998, 0, !nosanitize !47
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds i8, ptr %2, i64 %1035
  %1037 = load i8, ptr %1036, align 1, !tbaa !5
  %1038 = zext i8 %1037 to i64
  %1039 = getelementptr inbounds nuw i64, ptr %15, i64 %1038
  %1040 = load i64, ptr %1039, align 8, !tbaa !14
  %1041 = extractvalue { i32, i1 } %995, 0, !nosanitize !47
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds i8, ptr %2, i64 %1042
  %1044 = load i8, ptr %1043, align 1, !tbaa !5
  %1045 = zext i8 %1044 to i64
  %1046 = getelementptr inbounds nuw i64, ptr %15, i64 %1045
  %1047 = load i64, ptr %1046, align 8, !tbaa !14
  %1048 = and i64 %1047, 255
  %1049 = lshr i64 %990, %1048
  %1050 = or i64 %1049, %1047
  %1051 = and i64 %1040, 255
  %1052 = lshr i64 %1050, %1051
  %1053 = or i64 %1052, %1040
  %1054 = and i64 %1033, 255
  %1055 = lshr i64 %1053, %1054
  %1056 = or i64 %1055, %1033
  %1057 = and i64 %1026, 255
  %1058 = lshr i64 %1056, %1057
  %1059 = or i64 %1058, %1026
  %1060 = and i64 %1019, 255
  %1061 = lshr i64 %1059, %1060
  %1062 = or i64 %1061, %1019
  %1063 = extractvalue { i32, i1 } %1010, 0, !nosanitize !47
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds i8, ptr %2, i64 %1064
  %1066 = load i8, ptr %1065, align 1, !tbaa !5
  %1067 = zext i8 %1066 to i64
  %1068 = getelementptr inbounds nuw i64, ptr %15, i64 %1067
  %1069 = load i64, ptr %1068, align 8, !tbaa !14
  %1070 = and i64 %1069, 255
  %1071 = lshr i64 %1062, %1070
  %1072 = and i64 %1069, -256
  %1073 = or i64 %1071, %1072
  %1074 = add i64 %1019, %988
  %1075 = add i64 %1074, %1026
  %1076 = add i64 %1075, %1033
  %1077 = add i64 %1076, %1040
  %1078 = add i64 %1077, %1047
  %1079 = add i64 %1078, %1069
  %1080 = and i64 %1079, 255
  %1081 = lshr i64 %1080, 3
  %1082 = sub nsw i64 64, %1080
  %1083 = lshr i64 %1073, %1082
  %1084 = and i64 %1079, 7
  store i64 %1083, ptr %989, align 1, !tbaa !14
  %1085 = getelementptr inbounds nuw i8, ptr %989, i64 %1081
  br label %1086

1086:                                             ; preds = %1012, %987
  %1087 = phi i64 [ %988, %987 ], [ %1084, %1012 ]
  %1088 = phi ptr [ %989, %987 ], [ %1085, %1012 ]
  %1089 = phi i64 [ %990, %987 ], [ %1073, %1012 ]
  %1090 = phi i32 [ %991, %987 ], [ %1063, %1012 ]
  %1091 = getelementptr i8, ptr %2, i64 -12
  %1092 = icmp sgt i32 %1090, 0
  br i1 %1092, label %1093, label %2510

1093:                                             ; preds = %1086
  %1094 = zext nneg i32 %1090 to i64
  %1095 = getelementptr i8, ptr %2, i64 -1
  %1096 = getelementptr i8, ptr %2, i64 -2
  %1097 = getelementptr i8, ptr %2, i64 -3
  %1098 = getelementptr i8, ptr %2, i64 -4
  %1099 = getelementptr i8, ptr %2, i64 -5
  br label %1100

1100:                                             ; preds = %1182, %1093
  %1101 = phi i64 [ %1094, %1093 ], [ %1254, %1182 ]
  %1102 = phi i64 [ %1089, %1093 ], [ %1246, %1182 ]
  %1103 = phi ptr [ %1088, %1093 ], [ %1253, %1182 ]
  %1104 = phi i64 [ %1087, %1093 ], [ %1252, %1182 ]
  %1105 = getelementptr i8, ptr %1095, i64 %1101
  %1106 = load i8, ptr %1105, align 1, !tbaa !5
  %1107 = zext i8 %1106 to i64
  %1108 = getelementptr inbounds nuw i64, ptr %15, i64 %1107
  %1109 = load i64, ptr %1108, align 8, !tbaa !14
  %1110 = and i64 %1109, 255
  %1111 = lshr i64 %1102, %1110
  %1112 = or i64 %1111, %1109
  %1113 = add i64 %1109, %1104
  %1114 = getelementptr i8, ptr %1096, i64 %1101
  %1115 = load i8, ptr %1114, align 1, !tbaa !5
  %1116 = zext i8 %1115 to i64
  %1117 = getelementptr inbounds nuw i64, ptr %15, i64 %1116
  %1118 = load i64, ptr %1117, align 8, !tbaa !14
  %1119 = and i64 %1118, 255
  %1120 = lshr i64 %1112, %1119
  %1121 = or i64 %1120, %1118
  %1122 = add i64 %1113, %1118
  %1123 = getelementptr i8, ptr %1097, i64 %1101
  %1124 = load i8, ptr %1123, align 1, !tbaa !5
  %1125 = zext i8 %1124 to i64
  %1126 = getelementptr inbounds nuw i64, ptr %15, i64 %1125
  %1127 = load i64, ptr %1126, align 8, !tbaa !14
  %1128 = and i64 %1127, 255
  %1129 = lshr i64 %1121, %1128
  %1130 = or i64 %1129, %1127
  %1131 = add i64 %1122, %1127
  %1132 = getelementptr i8, ptr %1098, i64 %1101
  %1133 = load i8, ptr %1132, align 1, !tbaa !5
  %1134 = zext i8 %1133 to i64
  %1135 = getelementptr inbounds nuw i64, ptr %15, i64 %1134
  %1136 = load i64, ptr %1135, align 8, !tbaa !14
  %1137 = and i64 %1136, 255
  %1138 = lshr i64 %1130, %1137
  %1139 = or i64 %1138, %1136
  %1140 = add i64 %1131, %1136
  %1141 = getelementptr i8, ptr %1099, i64 %1101
  %1142 = load i8, ptr %1141, align 1, !tbaa !5
  %1143 = zext i8 %1142 to i64
  %1144 = getelementptr inbounds nuw i64, ptr %15, i64 %1143
  %1145 = load i64, ptr %1144, align 8, !tbaa !14
  %1146 = and i64 %1145, 255
  %1147 = lshr i64 %1139, %1146
  %1148 = or i64 %1147, %1145
  %1149 = add i64 %1140, %1145
  %1150 = add nsw i64 %1101, -6
  %1151 = getelementptr inbounds i8, ptr %2, i64 %1150
  %1152 = load i8, ptr %1151, align 1, !tbaa !5
  %1153 = zext i8 %1152 to i64
  %1154 = getelementptr inbounds nuw i64, ptr %15, i64 %1153
  %1155 = load i64, ptr %1154, align 8, !tbaa !14
  %1156 = and i64 %1155, 255
  %1157 = lshr i64 %1148, %1156
  %1158 = and i64 %1155, -256
  %1159 = or i64 %1157, %1158
  %1160 = add i64 %1149, %1155
  %1161 = and i64 %1160, 255
  %1162 = lshr i64 %1161, 3
  %1163 = sub nsw i64 64, %1161
  %1164 = lshr i64 %1159, %1163
  %1165 = and i64 %1160, 7
  store i64 %1164, ptr %1103, align 1, !tbaa !14
  %1166 = getelementptr inbounds nuw i8, ptr %1103, i64 %1162
  %1167 = trunc nsw i64 %1150 to i32
  %1168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 -1)
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !47
  br i1 %1169, label %956, label %1170, !prof !48, !nosanitize !47

1170:                                             ; preds = %1100
  %1171 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 -2)
  %1172 = extractvalue { i32, i1 } %1171, 1, !nosanitize !47
  br i1 %1172, label %956, label %1173, !prof !48, !nosanitize !47

1173:                                             ; preds = %1170
  %1174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 -3)
  %1175 = extractvalue { i32, i1 } %1174, 1, !nosanitize !47
  br i1 %1175, label %956, label %1176, !prof !48, !nosanitize !47

1176:                                             ; preds = %1173
  %1177 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 -4)
  %1178 = extractvalue { i32, i1 } %1177, 1, !nosanitize !47
  br i1 %1178, label %956, label %1179, !prof !48, !nosanitize !47

1179:                                             ; preds = %1176
  %1180 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 -5)
  %1181 = extractvalue { i32, i1 } %1180, 1, !nosanitize !47
  br i1 %1181, label %956, label %1182, !prof !48, !nosanitize !47

1182:                                             ; preds = %1179
  %1183 = extractvalue { i32, i1 } %1177, 0, !nosanitize !47
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds i8, ptr %2, i64 %1184
  %1186 = load i8, ptr %1185, align 1, !tbaa !5
  %1187 = zext i8 %1186 to i64
  %1188 = getelementptr inbounds nuw i64, ptr %15, i64 %1187
  %1189 = load i64, ptr %1188, align 8, !tbaa !14
  %1190 = extractvalue { i32, i1 } %1174, 0, !nosanitize !47
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds i8, ptr %2, i64 %1191
  %1193 = load i8, ptr %1192, align 1, !tbaa !5
  %1194 = zext i8 %1193 to i64
  %1195 = getelementptr inbounds nuw i64, ptr %15, i64 %1194
  %1196 = load i64, ptr %1195, align 8, !tbaa !14
  %1197 = extractvalue { i32, i1 } %1171, 0, !nosanitize !47
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i8, ptr %2, i64 %1198
  %1200 = load i8, ptr %1199, align 1, !tbaa !5
  %1201 = zext i8 %1200 to i64
  %1202 = getelementptr inbounds nuw i64, ptr %15, i64 %1201
  %1203 = load i64, ptr %1202, align 8, !tbaa !14
  %1204 = extractvalue { i32, i1 } %1168, 0, !nosanitize !47
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds i8, ptr %2, i64 %1205
  %1207 = load i8, ptr %1206, align 1, !tbaa !5
  %1208 = zext i8 %1207 to i64
  %1209 = getelementptr inbounds nuw i64, ptr %15, i64 %1208
  %1210 = load i64, ptr %1209, align 8, !tbaa !14
  %1211 = and i64 %1203, 255
  %1212 = lshr i64 %1210, %1211
  %1213 = or i64 %1212, %1203
  %1214 = and i64 %1196, 255
  %1215 = lshr i64 %1213, %1214
  %1216 = or i64 %1215, %1196
  %1217 = and i64 %1189, 255
  %1218 = lshr i64 %1216, %1217
  %1219 = or i64 %1218, %1189
  %1220 = extractvalue { i32, i1 } %1180, 0, !nosanitize !47
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds i8, ptr %2, i64 %1221
  %1223 = load i8, ptr %1222, align 1, !tbaa !5
  %1224 = zext i8 %1223 to i64
  %1225 = getelementptr inbounds nuw i64, ptr %15, i64 %1224
  %1226 = load i64, ptr %1225, align 8, !tbaa !14
  %1227 = and i64 %1226, 255
  %1228 = lshr i64 %1219, %1227
  %1229 = or i64 %1228, %1226
  %1230 = getelementptr i8, ptr %1091, i64 %1101
  %1231 = load i8, ptr %1230, align 1, !tbaa !5
  %1232 = zext i8 %1231 to i64
  %1233 = getelementptr inbounds nuw i64, ptr %15, i64 %1232
  %1234 = load i64, ptr %1233, align 8, !tbaa !14
  %1235 = and i64 %1234, 255
  %1236 = lshr i64 %1229, %1235
  %1237 = and i64 %1234, -256
  %1238 = add i64 %1196, %1189
  %1239 = add i64 %1238, %1203
  %1240 = add i64 %1239, %1210
  %1241 = add i64 %1240, %1226
  %1242 = add i64 %1241, %1234
  %1243 = and i64 %1242, 255
  %1244 = lshr i64 %1159, %1243
  %1245 = or i64 %1244, %1237
  %1246 = or i64 %1245, %1236
  %1247 = add i64 %1242, %1165
  %1248 = and i64 %1247, 255
  %1249 = lshr i64 %1248, 3
  %1250 = sub nsw i64 64, %1248
  %1251 = lshr i64 %1246, %1250
  %1252 = and i64 %1247, 7
  store i64 %1251, ptr %1166, align 1, !tbaa !14
  %1253 = getelementptr inbounds nuw i8, ptr %1166, i64 %1249
  %1254 = add nsw i64 %1101, -12
  %1255 = icmp sgt i64 %1101, 12
  br i1 %1255, label %1100, label %2510, !llvm.loop !77

1256:                                             ; preds = %305
  %1257 = srem i32 %29, 7
  %1258 = icmp sgt i32 %1257, 0
  br i1 %1258, label %1259, label %1330

1259:                                             ; preds = %1256
  %1260 = xor i32 %29, -2147483648
  %1261 = add nsw i32 %1257, -1
  %1262 = icmp ugt i32 %1260, %1261
  br i1 %1262, label %1263, label %1299, !prof !75, !nosanitize !47

1263:                                             ; preds = %1259
  %1264 = and i32 %1257, 1
  %1265 = icmp eq i32 %1261, 0
  br i1 %1265, label %1300, label %1266

1266:                                             ; preds = %1263
  %1267 = and i32 %1257, 2147483646
  br label %1268

1268:                                             ; preds = %1268, %1266
  %1269 = phi i32 [ %29, %1266 ], [ %1285, %1268 ]
  %1270 = phi i64 [ 0, %1266 ], [ %1295, %1268 ]
  %1271 = phi i64 [ 0, %1266 ], [ %1296, %1268 ]
  %1272 = phi i32 [ 0, %1266 ], [ %1297, %1268 ]
  %1273 = add i32 %1269, -1
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds i8, ptr %2, i64 %1274
  %1276 = load i8, ptr %1275, align 1, !tbaa !5
  %1277 = zext i8 %1276 to i64
  %1278 = getelementptr inbounds nuw i64, ptr %15, i64 %1277
  %1279 = load i64, ptr %1278, align 8, !tbaa !14
  %1280 = and i64 %1279, 255
  %1281 = lshr i64 %1270, %1280
  %1282 = and i64 %1279, -256
  %1283 = or i64 %1281, %1282
  %1284 = add i64 %1279, %1271
  %1285 = add i32 %1269, -2
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds i8, ptr %2, i64 %1286
  %1288 = load i8, ptr %1287, align 1, !tbaa !5
  %1289 = zext i8 %1288 to i64
  %1290 = getelementptr inbounds nuw i64, ptr %15, i64 %1289
  %1291 = load i64, ptr %1290, align 8, !tbaa !14
  %1292 = and i64 %1291, 255
  %1293 = lshr i64 %1283, %1292
  %1294 = and i64 %1291, -256
  %1295 = or i64 %1293, %1294
  %1296 = add i64 %1291, %1284
  %1297 = add i32 %1272, 2
  %1298 = icmp eq i32 %1297, %1267
  br i1 %1298, label %1300, label %1268, !llvm.loop !76

1299:                                             ; preds = %1549, %1546, %1543, %1540, %1537, %1458, %1355, %1352, %1349, %1346, %1343, %1340, %1337, %1259
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1300:                                             ; preds = %1268, %1263
  %1301 = phi i64 [ poison, %1263 ], [ %1295, %1268 ]
  %1302 = phi i64 [ poison, %1263 ], [ %1296, %1268 ]
  %1303 = phi i32 [ %29, %1263 ], [ %1285, %1268 ]
  %1304 = phi i64 [ 0, %1263 ], [ %1295, %1268 ]
  %1305 = phi i64 [ 0, %1263 ], [ %1296, %1268 ]
  %1306 = icmp eq i32 %1264, 0
  br i1 %1306, label %1320, label %1307

1307:                                             ; preds = %1300
  %1308 = add i32 %1303, -1
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds i8, ptr %2, i64 %1309
  %1311 = load i8, ptr %1310, align 1, !tbaa !5
  %1312 = zext i8 %1311 to i64
  %1313 = getelementptr inbounds nuw i64, ptr %15, i64 %1312
  %1314 = load i64, ptr %1313, align 8, !tbaa !14
  %1315 = and i64 %1314, 255
  %1316 = lshr i64 %1304, %1315
  %1317 = and i64 %1314, -256
  %1318 = or i64 %1316, %1317
  %1319 = add i64 %1314, %1305
  br label %1320

1320:                                             ; preds = %1300, %1307
  %1321 = phi i64 [ %1301, %1300 ], [ %1318, %1307 ]
  %1322 = phi i64 [ %1302, %1300 ], [ %1319, %1307 ]
  %1323 = sub nsw i32 %29, %1257
  %1324 = and i64 %1322, 255
  %1325 = lshr i64 %1324, 3
  %1326 = sub nsw i64 64, %1324
  %1327 = lshr i64 %1321, %1326
  %1328 = and i64 %1322, 7
  store i64 %1327, ptr %0, align 1, !tbaa !14
  %1329 = getelementptr inbounds nuw i8, ptr %0, i64 %1325
  br label %1330

1330:                                             ; preds = %1320, %1256
  %1331 = phi i64 [ %1328, %1320 ], [ 0, %1256 ]
  %1332 = phi ptr [ %1329, %1320 ], [ %0, %1256 ]
  %1333 = phi i64 [ %1321, %1320 ], [ 0, %1256 ]
  %1334 = phi i32 [ %1323, %1320 ], [ %29, %1256 ]
  %1335 = srem i32 %1334, 14
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1443, label %1337

1337:                                             ; preds = %1330
  %1338 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -1)
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !47
  br i1 %1339, label %1299, label %1340, !prof !48, !nosanitize !47

1340:                                             ; preds = %1337
  %1341 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -2)
  %1342 = extractvalue { i32, i1 } %1341, 1, !nosanitize !47
  br i1 %1342, label %1299, label %1343, !prof !48, !nosanitize !47

1343:                                             ; preds = %1340
  %1344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -3)
  %1345 = extractvalue { i32, i1 } %1344, 1, !nosanitize !47
  br i1 %1345, label %1299, label %1346, !prof !48, !nosanitize !47

1346:                                             ; preds = %1343
  %1347 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -4)
  %1348 = extractvalue { i32, i1 } %1347, 1, !nosanitize !47
  br i1 %1348, label %1299, label %1349, !prof !48, !nosanitize !47

1349:                                             ; preds = %1346
  %1350 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -5)
  %1351 = extractvalue { i32, i1 } %1350, 1, !nosanitize !47
  br i1 %1351, label %1299, label %1352, !prof !48, !nosanitize !47

1352:                                             ; preds = %1349
  %1353 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -6)
  %1354 = extractvalue { i32, i1 } %1353, 1, !nosanitize !47
  br i1 %1354, label %1299, label %1355, !prof !48, !nosanitize !47

1355:                                             ; preds = %1352
  %1356 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1334, i32 -7)
  %1357 = extractvalue { i32, i1 } %1356, 1, !nosanitize !47
  br i1 %1357, label %1299, label %1358, !prof !48, !nosanitize !47

1358:                                             ; preds = %1355
  %1359 = extractvalue { i32, i1 } %1353, 0, !nosanitize !47
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds i8, ptr %2, i64 %1360
  %1362 = load i8, ptr %1361, align 1, !tbaa !5
  %1363 = zext i8 %1362 to i64
  %1364 = getelementptr inbounds nuw i64, ptr %15, i64 %1363
  %1365 = load i64, ptr %1364, align 8, !tbaa !14
  %1366 = extractvalue { i32, i1 } %1350, 0, !nosanitize !47
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds i8, ptr %2, i64 %1367
  %1369 = load i8, ptr %1368, align 1, !tbaa !5
  %1370 = zext i8 %1369 to i64
  %1371 = getelementptr inbounds nuw i64, ptr %15, i64 %1370
  %1372 = load i64, ptr %1371, align 8, !tbaa !14
  %1373 = extractvalue { i32, i1 } %1347, 0, !nosanitize !47
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds i8, ptr %2, i64 %1374
  %1376 = load i8, ptr %1375, align 1, !tbaa !5
  %1377 = zext i8 %1376 to i64
  %1378 = getelementptr inbounds nuw i64, ptr %15, i64 %1377
  %1379 = load i64, ptr %1378, align 8, !tbaa !14
  %1380 = extractvalue { i32, i1 } %1344, 0, !nosanitize !47
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds i8, ptr %2, i64 %1381
  %1383 = load i8, ptr %1382, align 1, !tbaa !5
  %1384 = zext i8 %1383 to i64
  %1385 = getelementptr inbounds nuw i64, ptr %15, i64 %1384
  %1386 = load i64, ptr %1385, align 8, !tbaa !14
  %1387 = extractvalue { i32, i1 } %1341, 0, !nosanitize !47
  %1388 = sext i32 %1387 to i64
  %1389 = getelementptr inbounds i8, ptr %2, i64 %1388
  %1390 = load i8, ptr %1389, align 1, !tbaa !5
  %1391 = zext i8 %1390 to i64
  %1392 = getelementptr inbounds nuw i64, ptr %15, i64 %1391
  %1393 = load i64, ptr %1392, align 8, !tbaa !14
  %1394 = extractvalue { i32, i1 } %1338, 0, !nosanitize !47
  %1395 = sext i32 %1394 to i64
  %1396 = getelementptr inbounds i8, ptr %2, i64 %1395
  %1397 = load i8, ptr %1396, align 1, !tbaa !5
  %1398 = zext i8 %1397 to i64
  %1399 = getelementptr inbounds nuw i64, ptr %15, i64 %1398
  %1400 = load i64, ptr %1399, align 8, !tbaa !14
  %1401 = and i64 %1400, 255
  %1402 = lshr i64 %1333, %1401
  %1403 = or i64 %1402, %1400
  %1404 = and i64 %1393, 255
  %1405 = lshr i64 %1403, %1404
  %1406 = or i64 %1405, %1393
  %1407 = and i64 %1386, 255
  %1408 = lshr i64 %1406, %1407
  %1409 = or i64 %1408, %1386
  %1410 = and i64 %1379, 255
  %1411 = lshr i64 %1409, %1410
  %1412 = or i64 %1411, %1379
  %1413 = and i64 %1372, 255
  %1414 = lshr i64 %1412, %1413
  %1415 = or i64 %1414, %1372
  %1416 = and i64 %1365, 255
  %1417 = lshr i64 %1415, %1416
  %1418 = or i64 %1417, %1365
  %1419 = extractvalue { i32, i1 } %1356, 0, !nosanitize !47
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds i8, ptr %2, i64 %1420
  %1422 = load i8, ptr %1421, align 1, !tbaa !5
  %1423 = zext i8 %1422 to i64
  %1424 = getelementptr inbounds nuw i64, ptr %15, i64 %1423
  %1425 = load i64, ptr %1424, align 8, !tbaa !14
  %1426 = and i64 %1425, 255
  %1427 = lshr i64 %1418, %1426
  %1428 = and i64 %1425, -256
  %1429 = or i64 %1427, %1428
  %1430 = add i64 %1365, %1331
  %1431 = add i64 %1430, %1372
  %1432 = add i64 %1431, %1379
  %1433 = add i64 %1432, %1386
  %1434 = add i64 %1433, %1393
  %1435 = add i64 %1434, %1400
  %1436 = add i64 %1435, %1425
  %1437 = and i64 %1436, 255
  %1438 = lshr i64 %1437, 3
  %1439 = sub nsw i64 64, %1437
  %1440 = lshr i64 %1429, %1439
  %1441 = and i64 %1436, 7
  store i64 %1440, ptr %1332, align 1, !tbaa !14
  %1442 = getelementptr inbounds nuw i8, ptr %1332, i64 %1438
  br label %1443

1443:                                             ; preds = %1358, %1330
  %1444 = phi i64 [ %1331, %1330 ], [ %1441, %1358 ]
  %1445 = phi ptr [ %1332, %1330 ], [ %1442, %1358 ]
  %1446 = phi i64 [ %1333, %1330 ], [ %1429, %1358 ]
  %1447 = phi i32 [ %1334, %1330 ], [ %1419, %1358 ]
  %1448 = getelementptr i8, ptr %2, i64 -14
  %1449 = icmp sgt i32 %1447, 0
  br i1 %1449, label %1450, label %2510

1450:                                             ; preds = %1443
  %1451 = zext nneg i32 %1447 to i64
  %1452 = getelementptr i8, ptr %2, i64 -1
  %1453 = getelementptr i8, ptr %2, i64 -2
  %1454 = getelementptr i8, ptr %2, i64 -3
  %1455 = getelementptr i8, ptr %2, i64 -4
  %1456 = getelementptr i8, ptr %2, i64 -5
  %1457 = getelementptr i8, ptr %2, i64 -6
  br label %1458

1458:                                             ; preds = %1552, %1450
  %1459 = phi i64 [ %1451, %1450 ], [ %1635, %1552 ]
  %1460 = phi i64 [ %1446, %1450 ], [ %1627, %1552 ]
  %1461 = phi ptr [ %1445, %1450 ], [ %1634, %1552 ]
  %1462 = phi i64 [ %1444, %1450 ], [ %1633, %1552 ]
  %1463 = getelementptr i8, ptr %1452, i64 %1459
  %1464 = load i8, ptr %1463, align 1, !tbaa !5
  %1465 = zext i8 %1464 to i64
  %1466 = getelementptr inbounds nuw i64, ptr %15, i64 %1465
  %1467 = load i64, ptr %1466, align 8, !tbaa !14
  %1468 = and i64 %1467, 255
  %1469 = lshr i64 %1460, %1468
  %1470 = or i64 %1469, %1467
  %1471 = add i64 %1467, %1462
  %1472 = getelementptr i8, ptr %1453, i64 %1459
  %1473 = load i8, ptr %1472, align 1, !tbaa !5
  %1474 = zext i8 %1473 to i64
  %1475 = getelementptr inbounds nuw i64, ptr %15, i64 %1474
  %1476 = load i64, ptr %1475, align 8, !tbaa !14
  %1477 = and i64 %1476, 255
  %1478 = lshr i64 %1470, %1477
  %1479 = or i64 %1478, %1476
  %1480 = add i64 %1471, %1476
  %1481 = getelementptr i8, ptr %1454, i64 %1459
  %1482 = load i8, ptr %1481, align 1, !tbaa !5
  %1483 = zext i8 %1482 to i64
  %1484 = getelementptr inbounds nuw i64, ptr %15, i64 %1483
  %1485 = load i64, ptr %1484, align 8, !tbaa !14
  %1486 = and i64 %1485, 255
  %1487 = lshr i64 %1479, %1486
  %1488 = or i64 %1487, %1485
  %1489 = add i64 %1480, %1485
  %1490 = getelementptr i8, ptr %1455, i64 %1459
  %1491 = load i8, ptr %1490, align 1, !tbaa !5
  %1492 = zext i8 %1491 to i64
  %1493 = getelementptr inbounds nuw i64, ptr %15, i64 %1492
  %1494 = load i64, ptr %1493, align 8, !tbaa !14
  %1495 = and i64 %1494, 255
  %1496 = lshr i64 %1488, %1495
  %1497 = or i64 %1496, %1494
  %1498 = add i64 %1489, %1494
  %1499 = getelementptr i8, ptr %1456, i64 %1459
  %1500 = load i8, ptr %1499, align 1, !tbaa !5
  %1501 = zext i8 %1500 to i64
  %1502 = getelementptr inbounds nuw i64, ptr %15, i64 %1501
  %1503 = load i64, ptr %1502, align 8, !tbaa !14
  %1504 = and i64 %1503, 255
  %1505 = lshr i64 %1497, %1504
  %1506 = or i64 %1505, %1503
  %1507 = add i64 %1498, %1503
  %1508 = getelementptr i8, ptr %1457, i64 %1459
  %1509 = load i8, ptr %1508, align 1, !tbaa !5
  %1510 = zext i8 %1509 to i64
  %1511 = getelementptr inbounds nuw i64, ptr %15, i64 %1510
  %1512 = load i64, ptr %1511, align 8, !tbaa !14
  %1513 = and i64 %1512, 255
  %1514 = lshr i64 %1506, %1513
  %1515 = or i64 %1514, %1512
  %1516 = add i64 %1507, %1512
  %1517 = add nsw i64 %1459, -7
  %1518 = getelementptr inbounds i8, ptr %2, i64 %1517
  %1519 = load i8, ptr %1518, align 1, !tbaa !5
  %1520 = zext i8 %1519 to i64
  %1521 = getelementptr inbounds nuw i64, ptr %15, i64 %1520
  %1522 = load i64, ptr %1521, align 8, !tbaa !14
  %1523 = and i64 %1522, 255
  %1524 = lshr i64 %1515, %1523
  %1525 = and i64 %1522, -256
  %1526 = or i64 %1524, %1525
  %1527 = add i64 %1516, %1522
  %1528 = and i64 %1527, 255
  %1529 = lshr i64 %1528, 3
  %1530 = sub nsw i64 64, %1528
  %1531 = lshr i64 %1526, %1530
  %1532 = and i64 %1527, 7
  store i64 %1531, ptr %1461, align 1, !tbaa !14
  %1533 = getelementptr inbounds nuw i8, ptr %1461, i64 %1529
  %1534 = trunc nsw i64 %1517 to i32
  %1535 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -1)
  %1536 = extractvalue { i32, i1 } %1535, 1, !nosanitize !47
  br i1 %1536, label %1299, label %1537, !prof !48, !nosanitize !47

1537:                                             ; preds = %1458
  %1538 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -2)
  %1539 = extractvalue { i32, i1 } %1538, 1, !nosanitize !47
  br i1 %1539, label %1299, label %1540, !prof !48, !nosanitize !47

1540:                                             ; preds = %1537
  %1541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -3)
  %1542 = extractvalue { i32, i1 } %1541, 1, !nosanitize !47
  br i1 %1542, label %1299, label %1543, !prof !48, !nosanitize !47

1543:                                             ; preds = %1540
  %1544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -4)
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !47
  br i1 %1545, label %1299, label %1546, !prof !48, !nosanitize !47

1546:                                             ; preds = %1543
  %1547 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -5)
  %1548 = extractvalue { i32, i1 } %1547, 1, !nosanitize !47
  br i1 %1548, label %1299, label %1549, !prof !48, !nosanitize !47

1549:                                             ; preds = %1546
  %1550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -6)
  %1551 = extractvalue { i32, i1 } %1550, 1, !nosanitize !47
  br i1 %1551, label %1299, label %1552, !prof !48, !nosanitize !47

1552:                                             ; preds = %1549
  %1553 = extractvalue { i32, i1 } %1547, 0, !nosanitize !47
  %1554 = sext i32 %1553 to i64
  %1555 = getelementptr inbounds i8, ptr %2, i64 %1554
  %1556 = load i8, ptr %1555, align 1, !tbaa !5
  %1557 = zext i8 %1556 to i64
  %1558 = getelementptr inbounds nuw i64, ptr %15, i64 %1557
  %1559 = load i64, ptr %1558, align 8, !tbaa !14
  %1560 = extractvalue { i32, i1 } %1544, 0, !nosanitize !47
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds i8, ptr %2, i64 %1561
  %1563 = load i8, ptr %1562, align 1, !tbaa !5
  %1564 = zext i8 %1563 to i64
  %1565 = getelementptr inbounds nuw i64, ptr %15, i64 %1564
  %1566 = load i64, ptr %1565, align 8, !tbaa !14
  %1567 = extractvalue { i32, i1 } %1541, 0, !nosanitize !47
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds i8, ptr %2, i64 %1568
  %1570 = load i8, ptr %1569, align 1, !tbaa !5
  %1571 = zext i8 %1570 to i64
  %1572 = getelementptr inbounds nuw i64, ptr %15, i64 %1571
  %1573 = load i64, ptr %1572, align 8, !tbaa !14
  %1574 = extractvalue { i32, i1 } %1538, 0, !nosanitize !47
  %1575 = sext i32 %1574 to i64
  %1576 = getelementptr inbounds i8, ptr %2, i64 %1575
  %1577 = load i8, ptr %1576, align 1, !tbaa !5
  %1578 = zext i8 %1577 to i64
  %1579 = getelementptr inbounds nuw i64, ptr %15, i64 %1578
  %1580 = load i64, ptr %1579, align 8, !tbaa !14
  %1581 = extractvalue { i32, i1 } %1535, 0, !nosanitize !47
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds i8, ptr %2, i64 %1582
  %1584 = load i8, ptr %1583, align 1, !tbaa !5
  %1585 = zext i8 %1584 to i64
  %1586 = getelementptr inbounds nuw i64, ptr %15, i64 %1585
  %1587 = load i64, ptr %1586, align 8, !tbaa !14
  %1588 = and i64 %1580, 255
  %1589 = lshr i64 %1587, %1588
  %1590 = or i64 %1589, %1580
  %1591 = and i64 %1573, 255
  %1592 = lshr i64 %1590, %1591
  %1593 = or i64 %1592, %1573
  %1594 = and i64 %1566, 255
  %1595 = lshr i64 %1593, %1594
  %1596 = or i64 %1595, %1566
  %1597 = and i64 %1559, 255
  %1598 = lshr i64 %1596, %1597
  %1599 = or i64 %1598, %1559
  %1600 = extractvalue { i32, i1 } %1550, 0, !nosanitize !47
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds i8, ptr %2, i64 %1601
  %1603 = load i8, ptr %1602, align 1, !tbaa !5
  %1604 = zext i8 %1603 to i64
  %1605 = getelementptr inbounds nuw i64, ptr %15, i64 %1604
  %1606 = load i64, ptr %1605, align 8, !tbaa !14
  %1607 = and i64 %1606, 255
  %1608 = lshr i64 %1599, %1607
  %1609 = or i64 %1608, %1606
  %1610 = getelementptr i8, ptr %1448, i64 %1459
  %1611 = load i8, ptr %1610, align 1, !tbaa !5
  %1612 = zext i8 %1611 to i64
  %1613 = getelementptr inbounds nuw i64, ptr %15, i64 %1612
  %1614 = load i64, ptr %1613, align 8, !tbaa !14
  %1615 = and i64 %1614, 255
  %1616 = lshr i64 %1609, %1615
  %1617 = and i64 %1614, -256
  %1618 = add i64 %1566, %1559
  %1619 = add i64 %1618, %1573
  %1620 = add i64 %1619, %1580
  %1621 = add i64 %1620, %1587
  %1622 = add i64 %1621, %1606
  %1623 = add i64 %1622, %1614
  %1624 = and i64 %1623, 255
  %1625 = lshr i64 %1526, %1624
  %1626 = or i64 %1625, %1617
  %1627 = or i64 %1626, %1616
  %1628 = add i64 %1623, %1532
  %1629 = and i64 %1628, 255
  %1630 = lshr i64 %1629, 3
  %1631 = sub nsw i64 64, %1629
  %1632 = lshr i64 %1627, %1631
  %1633 = and i64 %1628, 7
  store i64 %1632, ptr %1533, align 1, !tbaa !14
  %1634 = getelementptr inbounds nuw i8, ptr %1533, i64 %1630
  %1635 = add nsw i64 %1459, -14
  %1636 = icmp sgt i64 %1459, 14
  br i1 %1636, label %1458, label %2510, !llvm.loop !77

1637:                                             ; preds = %305
  %1638 = srem i32 %29, 8
  %1639 = icmp sgt i32 %1638, 0
  br i1 %1639, label %1640, label %1711

1640:                                             ; preds = %1637
  %1641 = xor i32 %29, -2147483648
  %1642 = add nsw i32 %1638, -1
  %1643 = icmp ugt i32 %1641, %1642
  br i1 %1643, label %1644, label %1680, !prof !75, !nosanitize !47

1644:                                             ; preds = %1640
  %1645 = and i32 %1638, 1
  %1646 = icmp eq i32 %1642, 0
  br i1 %1646, label %1681, label %1647

1647:                                             ; preds = %1644
  %1648 = and i32 %1638, 2147483646
  br label %1649

1649:                                             ; preds = %1649, %1647
  %1650 = phi i32 [ %29, %1647 ], [ %1666, %1649 ]
  %1651 = phi i64 [ 0, %1647 ], [ %1676, %1649 ]
  %1652 = phi i64 [ 0, %1647 ], [ %1677, %1649 ]
  %1653 = phi i32 [ 0, %1647 ], [ %1678, %1649 ]
  %1654 = add i32 %1650, -1
  %1655 = sext i32 %1654 to i64
  %1656 = getelementptr inbounds i8, ptr %2, i64 %1655
  %1657 = load i8, ptr %1656, align 1, !tbaa !5
  %1658 = zext i8 %1657 to i64
  %1659 = getelementptr inbounds nuw i64, ptr %15, i64 %1658
  %1660 = load i64, ptr %1659, align 8, !tbaa !14
  %1661 = and i64 %1660, 255
  %1662 = lshr i64 %1651, %1661
  %1663 = and i64 %1660, -256
  %1664 = or i64 %1662, %1663
  %1665 = add i64 %1660, %1652
  %1666 = add i32 %1650, -2
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds i8, ptr %2, i64 %1667
  %1669 = load i8, ptr %1668, align 1, !tbaa !5
  %1670 = zext i8 %1669 to i64
  %1671 = getelementptr inbounds nuw i64, ptr %15, i64 %1670
  %1672 = load i64, ptr %1671, align 8, !tbaa !14
  %1673 = and i64 %1672, 255
  %1674 = lshr i64 %1664, %1673
  %1675 = and i64 %1672, -256
  %1676 = or i64 %1674, %1675
  %1677 = add i64 %1672, %1665
  %1678 = add i32 %1653, 2
  %1679 = icmp eq i32 %1678, %1648
  br i1 %1679, label %1681, label %1649, !llvm.loop !76

1680:                                             ; preds = %1957, %1954, %1951, %1948, %1945, %1942, %1854, %1739, %1736, %1733, %1730, %1727, %1724, %1721, %1718, %1640
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1681:                                             ; preds = %1649, %1644
  %1682 = phi i64 [ poison, %1644 ], [ %1676, %1649 ]
  %1683 = phi i64 [ poison, %1644 ], [ %1677, %1649 ]
  %1684 = phi i32 [ %29, %1644 ], [ %1666, %1649 ]
  %1685 = phi i64 [ 0, %1644 ], [ %1676, %1649 ]
  %1686 = phi i64 [ 0, %1644 ], [ %1677, %1649 ]
  %1687 = icmp eq i32 %1645, 0
  br i1 %1687, label %1701, label %1688

1688:                                             ; preds = %1681
  %1689 = add i32 %1684, -1
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds i8, ptr %2, i64 %1690
  %1692 = load i8, ptr %1691, align 1, !tbaa !5
  %1693 = zext i8 %1692 to i64
  %1694 = getelementptr inbounds nuw i64, ptr %15, i64 %1693
  %1695 = load i64, ptr %1694, align 8, !tbaa !14
  %1696 = and i64 %1695, 255
  %1697 = lshr i64 %1685, %1696
  %1698 = and i64 %1695, -256
  %1699 = or i64 %1697, %1698
  %1700 = add i64 %1695, %1686
  br label %1701

1701:                                             ; preds = %1681, %1688
  %1702 = phi i64 [ %1682, %1681 ], [ %1699, %1688 ]
  %1703 = phi i64 [ %1683, %1681 ], [ %1700, %1688 ]
  %1704 = sub nsw i32 %29, %1638
  %1705 = and i64 %1703, 255
  %1706 = lshr i64 %1705, 3
  %1707 = sub nsw i64 64, %1705
  %1708 = lshr i64 %1702, %1707
  %1709 = and i64 %1703, 7
  store i64 %1708, ptr %0, align 1, !tbaa !14
  %1710 = getelementptr inbounds nuw i8, ptr %0, i64 %1706
  br label %1711

1711:                                             ; preds = %1701, %1637
  %1712 = phi i64 [ %1709, %1701 ], [ 0, %1637 ]
  %1713 = phi ptr [ %1710, %1701 ], [ %0, %1637 ]
  %1714 = phi i64 [ %1702, %1701 ], [ 0, %1637 ]
  %1715 = phi i32 [ %1704, %1701 ], [ %29, %1637 ]
  %1716 = and i32 %1715, 15
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1838, label %1718

1718:                                             ; preds = %1711
  %1719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -1)
  %1720 = extractvalue { i32, i1 } %1719, 1, !nosanitize !47
  br i1 %1720, label %1680, label %1721, !prof !48, !nosanitize !47

1721:                                             ; preds = %1718
  %1722 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -2)
  %1723 = extractvalue { i32, i1 } %1722, 1, !nosanitize !47
  br i1 %1723, label %1680, label %1724, !prof !48, !nosanitize !47

1724:                                             ; preds = %1721
  %1725 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -3)
  %1726 = extractvalue { i32, i1 } %1725, 1, !nosanitize !47
  br i1 %1726, label %1680, label %1727, !prof !48, !nosanitize !47

1727:                                             ; preds = %1724
  %1728 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -4)
  %1729 = extractvalue { i32, i1 } %1728, 1, !nosanitize !47
  br i1 %1729, label %1680, label %1730, !prof !48, !nosanitize !47

1730:                                             ; preds = %1727
  %1731 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -5)
  %1732 = extractvalue { i32, i1 } %1731, 1, !nosanitize !47
  br i1 %1732, label %1680, label %1733, !prof !48, !nosanitize !47

1733:                                             ; preds = %1730
  %1734 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -6)
  %1735 = extractvalue { i32, i1 } %1734, 1, !nosanitize !47
  br i1 %1735, label %1680, label %1736, !prof !48, !nosanitize !47

1736:                                             ; preds = %1733
  %1737 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -7)
  %1738 = extractvalue { i32, i1 } %1737, 1, !nosanitize !47
  br i1 %1738, label %1680, label %1739, !prof !48, !nosanitize !47

1739:                                             ; preds = %1736
  %1740 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1715, i32 -8)
  %1741 = extractvalue { i32, i1 } %1740, 1, !nosanitize !47
  br i1 %1741, label %1680, label %1742, !prof !48, !nosanitize !47

1742:                                             ; preds = %1739
  %1743 = extractvalue { i32, i1 } %1737, 0, !nosanitize !47
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds i8, ptr %2, i64 %1744
  %1746 = load i8, ptr %1745, align 1, !tbaa !5
  %1747 = zext i8 %1746 to i64
  %1748 = getelementptr inbounds nuw i64, ptr %15, i64 %1747
  %1749 = load i64, ptr %1748, align 8, !tbaa !14
  %1750 = extractvalue { i32, i1 } %1734, 0, !nosanitize !47
  %1751 = sext i32 %1750 to i64
  %1752 = getelementptr inbounds i8, ptr %2, i64 %1751
  %1753 = load i8, ptr %1752, align 1, !tbaa !5
  %1754 = zext i8 %1753 to i64
  %1755 = getelementptr inbounds nuw i64, ptr %15, i64 %1754
  %1756 = load i64, ptr %1755, align 8, !tbaa !14
  %1757 = extractvalue { i32, i1 } %1731, 0, !nosanitize !47
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds i8, ptr %2, i64 %1758
  %1760 = load i8, ptr %1759, align 1, !tbaa !5
  %1761 = zext i8 %1760 to i64
  %1762 = getelementptr inbounds nuw i64, ptr %15, i64 %1761
  %1763 = load i64, ptr %1762, align 8, !tbaa !14
  %1764 = extractvalue { i32, i1 } %1728, 0, !nosanitize !47
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds i8, ptr %2, i64 %1765
  %1767 = load i8, ptr %1766, align 1, !tbaa !5
  %1768 = zext i8 %1767 to i64
  %1769 = getelementptr inbounds nuw i64, ptr %15, i64 %1768
  %1770 = load i64, ptr %1769, align 8, !tbaa !14
  %1771 = extractvalue { i32, i1 } %1725, 0, !nosanitize !47
  %1772 = sext i32 %1771 to i64
  %1773 = getelementptr inbounds i8, ptr %2, i64 %1772
  %1774 = load i8, ptr %1773, align 1, !tbaa !5
  %1775 = zext i8 %1774 to i64
  %1776 = getelementptr inbounds nuw i64, ptr %15, i64 %1775
  %1777 = load i64, ptr %1776, align 8, !tbaa !14
  %1778 = extractvalue { i32, i1 } %1722, 0, !nosanitize !47
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds i8, ptr %2, i64 %1779
  %1781 = load i8, ptr %1780, align 1, !tbaa !5
  %1782 = zext i8 %1781 to i64
  %1783 = getelementptr inbounds nuw i64, ptr %15, i64 %1782
  %1784 = load i64, ptr %1783, align 8, !tbaa !14
  %1785 = extractvalue { i32, i1 } %1719, 0, !nosanitize !47
  %1786 = sext i32 %1785 to i64
  %1787 = getelementptr inbounds i8, ptr %2, i64 %1786
  %1788 = load i8, ptr %1787, align 1, !tbaa !5
  %1789 = zext i8 %1788 to i64
  %1790 = getelementptr inbounds nuw i64, ptr %15, i64 %1789
  %1791 = load i64, ptr %1790, align 8, !tbaa !14
  %1792 = and i64 %1791, 255
  %1793 = lshr i64 %1714, %1792
  %1794 = or i64 %1793, %1791
  %1795 = and i64 %1784, 255
  %1796 = lshr i64 %1794, %1795
  %1797 = or i64 %1796, %1784
  %1798 = and i64 %1777, 255
  %1799 = lshr i64 %1797, %1798
  %1800 = or i64 %1799, %1777
  %1801 = and i64 %1770, 255
  %1802 = lshr i64 %1800, %1801
  %1803 = or i64 %1802, %1770
  %1804 = and i64 %1763, 255
  %1805 = lshr i64 %1803, %1804
  %1806 = or i64 %1805, %1763
  %1807 = and i64 %1756, 255
  %1808 = lshr i64 %1806, %1807
  %1809 = or i64 %1808, %1756
  %1810 = and i64 %1749, 255
  %1811 = lshr i64 %1809, %1810
  %1812 = or i64 %1811, %1749
  %1813 = extractvalue { i32, i1 } %1740, 0, !nosanitize !47
  %1814 = sext i32 %1813 to i64
  %1815 = getelementptr inbounds i8, ptr %2, i64 %1814
  %1816 = load i8, ptr %1815, align 1, !tbaa !5
  %1817 = zext i8 %1816 to i64
  %1818 = getelementptr inbounds nuw i64, ptr %15, i64 %1817
  %1819 = load i64, ptr %1818, align 8, !tbaa !14
  %1820 = and i64 %1819, 255
  %1821 = lshr i64 %1812, %1820
  %1822 = and i64 %1819, -256
  %1823 = or i64 %1821, %1822
  %1824 = add i64 %1749, %1712
  %1825 = add i64 %1824, %1756
  %1826 = add i64 %1825, %1763
  %1827 = add i64 %1826, %1770
  %1828 = add i64 %1827, %1777
  %1829 = add i64 %1828, %1784
  %1830 = add i64 %1829, %1791
  %1831 = add i64 %1830, %1819
  %1832 = and i64 %1831, 255
  %1833 = lshr i64 %1832, 3
  %1834 = sub nsw i64 64, %1832
  %1835 = lshr i64 %1823, %1834
  %1836 = and i64 %1831, 7
  store i64 %1835, ptr %1713, align 1, !tbaa !14
  %1837 = getelementptr inbounds nuw i8, ptr %1713, i64 %1833
  br label %1838

1838:                                             ; preds = %1742, %1711
  %1839 = phi i64 [ %1712, %1711 ], [ %1836, %1742 ]
  %1840 = phi ptr [ %1713, %1711 ], [ %1837, %1742 ]
  %1841 = phi i64 [ %1714, %1711 ], [ %1823, %1742 ]
  %1842 = phi i32 [ %1715, %1711 ], [ %1813, %1742 ]
  %1843 = getelementptr i8, ptr %2, i64 -16
  %1844 = icmp sgt i32 %1842, 0
  br i1 %1844, label %1845, label %2510

1845:                                             ; preds = %1838
  %1846 = zext nneg i32 %1842 to i64
  %1847 = getelementptr i8, ptr %2, i64 -1
  %1848 = getelementptr i8, ptr %2, i64 -2
  %1849 = getelementptr i8, ptr %2, i64 -3
  %1850 = getelementptr i8, ptr %2, i64 -4
  %1851 = getelementptr i8, ptr %2, i64 -5
  %1852 = getelementptr i8, ptr %2, i64 -6
  %1853 = getelementptr i8, ptr %2, i64 -7
  br label %1854

1854:                                             ; preds = %1960, %1845
  %1855 = phi i64 [ %1846, %1845 ], [ %2054, %1960 ]
  %1856 = phi i64 [ %1841, %1845 ], [ %2046, %1960 ]
  %1857 = phi ptr [ %1840, %1845 ], [ %2053, %1960 ]
  %1858 = phi i64 [ %1839, %1845 ], [ %2052, %1960 ]
  %1859 = getelementptr i8, ptr %1847, i64 %1855
  %1860 = load i8, ptr %1859, align 1, !tbaa !5
  %1861 = zext i8 %1860 to i64
  %1862 = getelementptr inbounds nuw i64, ptr %15, i64 %1861
  %1863 = load i64, ptr %1862, align 8, !tbaa !14
  %1864 = and i64 %1863, 255
  %1865 = lshr i64 %1856, %1864
  %1866 = or i64 %1865, %1863
  %1867 = add i64 %1863, %1858
  %1868 = getelementptr i8, ptr %1848, i64 %1855
  %1869 = load i8, ptr %1868, align 1, !tbaa !5
  %1870 = zext i8 %1869 to i64
  %1871 = getelementptr inbounds nuw i64, ptr %15, i64 %1870
  %1872 = load i64, ptr %1871, align 8, !tbaa !14
  %1873 = and i64 %1872, 255
  %1874 = lshr i64 %1866, %1873
  %1875 = or i64 %1874, %1872
  %1876 = add i64 %1867, %1872
  %1877 = getelementptr i8, ptr %1849, i64 %1855
  %1878 = load i8, ptr %1877, align 1, !tbaa !5
  %1879 = zext i8 %1878 to i64
  %1880 = getelementptr inbounds nuw i64, ptr %15, i64 %1879
  %1881 = load i64, ptr %1880, align 8, !tbaa !14
  %1882 = and i64 %1881, 255
  %1883 = lshr i64 %1875, %1882
  %1884 = or i64 %1883, %1881
  %1885 = add i64 %1876, %1881
  %1886 = getelementptr i8, ptr %1850, i64 %1855
  %1887 = load i8, ptr %1886, align 1, !tbaa !5
  %1888 = zext i8 %1887 to i64
  %1889 = getelementptr inbounds nuw i64, ptr %15, i64 %1888
  %1890 = load i64, ptr %1889, align 8, !tbaa !14
  %1891 = and i64 %1890, 255
  %1892 = lshr i64 %1884, %1891
  %1893 = or i64 %1892, %1890
  %1894 = add i64 %1885, %1890
  %1895 = getelementptr i8, ptr %1851, i64 %1855
  %1896 = load i8, ptr %1895, align 1, !tbaa !5
  %1897 = zext i8 %1896 to i64
  %1898 = getelementptr inbounds nuw i64, ptr %15, i64 %1897
  %1899 = load i64, ptr %1898, align 8, !tbaa !14
  %1900 = and i64 %1899, 255
  %1901 = lshr i64 %1893, %1900
  %1902 = or i64 %1901, %1899
  %1903 = add i64 %1894, %1899
  %1904 = getelementptr i8, ptr %1852, i64 %1855
  %1905 = load i8, ptr %1904, align 1, !tbaa !5
  %1906 = zext i8 %1905 to i64
  %1907 = getelementptr inbounds nuw i64, ptr %15, i64 %1906
  %1908 = load i64, ptr %1907, align 8, !tbaa !14
  %1909 = and i64 %1908, 255
  %1910 = lshr i64 %1902, %1909
  %1911 = or i64 %1910, %1908
  %1912 = add i64 %1903, %1908
  %1913 = getelementptr i8, ptr %1853, i64 %1855
  %1914 = load i8, ptr %1913, align 1, !tbaa !5
  %1915 = zext i8 %1914 to i64
  %1916 = getelementptr inbounds nuw i64, ptr %15, i64 %1915
  %1917 = load i64, ptr %1916, align 8, !tbaa !14
  %1918 = and i64 %1917, 255
  %1919 = lshr i64 %1911, %1918
  %1920 = or i64 %1919, %1917
  %1921 = add i64 %1912, %1917
  %1922 = add nsw i64 %1855, -8
  %1923 = getelementptr inbounds i8, ptr %2, i64 %1922
  %1924 = load i8, ptr %1923, align 1, !tbaa !5
  %1925 = zext i8 %1924 to i64
  %1926 = getelementptr inbounds nuw i64, ptr %15, i64 %1925
  %1927 = load i64, ptr %1926, align 8, !tbaa !14
  %1928 = and i64 %1927, 255
  %1929 = lshr i64 %1920, %1928
  %1930 = and i64 %1927, -256
  %1931 = or i64 %1929, %1930
  %1932 = add i64 %1921, %1927
  %1933 = and i64 %1932, 255
  %1934 = lshr i64 %1933, 3
  %1935 = sub nsw i64 64, %1933
  %1936 = lshr i64 %1931, %1935
  %1937 = and i64 %1932, 7
  store i64 %1936, ptr %1857, align 1, !tbaa !14
  %1938 = getelementptr inbounds nuw i8, ptr %1857, i64 %1934
  %1939 = trunc nsw i64 %1922 to i32
  %1940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -1)
  %1941 = extractvalue { i32, i1 } %1940, 1, !nosanitize !47
  br i1 %1941, label %1680, label %1942, !prof !48, !nosanitize !47

1942:                                             ; preds = %1854
  %1943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -2)
  %1944 = extractvalue { i32, i1 } %1943, 1, !nosanitize !47
  br i1 %1944, label %1680, label %1945, !prof !48, !nosanitize !47

1945:                                             ; preds = %1942
  %1946 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -3)
  %1947 = extractvalue { i32, i1 } %1946, 1, !nosanitize !47
  br i1 %1947, label %1680, label %1948, !prof !48, !nosanitize !47

1948:                                             ; preds = %1945
  %1949 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -4)
  %1950 = extractvalue { i32, i1 } %1949, 1, !nosanitize !47
  br i1 %1950, label %1680, label %1951, !prof !48, !nosanitize !47

1951:                                             ; preds = %1948
  %1952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -5)
  %1953 = extractvalue { i32, i1 } %1952, 1, !nosanitize !47
  br i1 %1953, label %1680, label %1954, !prof !48, !nosanitize !47

1954:                                             ; preds = %1951
  %1955 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -6)
  %1956 = extractvalue { i32, i1 } %1955, 1, !nosanitize !47
  br i1 %1956, label %1680, label %1957, !prof !48, !nosanitize !47

1957:                                             ; preds = %1954
  %1958 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1939, i32 -7)
  %1959 = extractvalue { i32, i1 } %1958, 1, !nosanitize !47
  br i1 %1959, label %1680, label %1960, !prof !48, !nosanitize !47

1960:                                             ; preds = %1957
  %1961 = extractvalue { i32, i1 } %1955, 0, !nosanitize !47
  %1962 = sext i32 %1961 to i64
  %1963 = getelementptr inbounds i8, ptr %2, i64 %1962
  %1964 = load i8, ptr %1963, align 1, !tbaa !5
  %1965 = zext i8 %1964 to i64
  %1966 = getelementptr inbounds nuw i64, ptr %15, i64 %1965
  %1967 = load i64, ptr %1966, align 8, !tbaa !14
  %1968 = extractvalue { i32, i1 } %1952, 0, !nosanitize !47
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds i8, ptr %2, i64 %1969
  %1971 = load i8, ptr %1970, align 1, !tbaa !5
  %1972 = zext i8 %1971 to i64
  %1973 = getelementptr inbounds nuw i64, ptr %15, i64 %1972
  %1974 = load i64, ptr %1973, align 8, !tbaa !14
  %1975 = extractvalue { i32, i1 } %1949, 0, !nosanitize !47
  %1976 = sext i32 %1975 to i64
  %1977 = getelementptr inbounds i8, ptr %2, i64 %1976
  %1978 = load i8, ptr %1977, align 1, !tbaa !5
  %1979 = zext i8 %1978 to i64
  %1980 = getelementptr inbounds nuw i64, ptr %15, i64 %1979
  %1981 = load i64, ptr %1980, align 8, !tbaa !14
  %1982 = extractvalue { i32, i1 } %1946, 0, !nosanitize !47
  %1983 = sext i32 %1982 to i64
  %1984 = getelementptr inbounds i8, ptr %2, i64 %1983
  %1985 = load i8, ptr %1984, align 1, !tbaa !5
  %1986 = zext i8 %1985 to i64
  %1987 = getelementptr inbounds nuw i64, ptr %15, i64 %1986
  %1988 = load i64, ptr %1987, align 8, !tbaa !14
  %1989 = extractvalue { i32, i1 } %1943, 0, !nosanitize !47
  %1990 = sext i32 %1989 to i64
  %1991 = getelementptr inbounds i8, ptr %2, i64 %1990
  %1992 = load i8, ptr %1991, align 1, !tbaa !5
  %1993 = zext i8 %1992 to i64
  %1994 = getelementptr inbounds nuw i64, ptr %15, i64 %1993
  %1995 = load i64, ptr %1994, align 8, !tbaa !14
  %1996 = extractvalue { i32, i1 } %1940, 0, !nosanitize !47
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds i8, ptr %2, i64 %1997
  %1999 = load i8, ptr %1998, align 1, !tbaa !5
  %2000 = zext i8 %1999 to i64
  %2001 = getelementptr inbounds nuw i64, ptr %15, i64 %2000
  %2002 = load i64, ptr %2001, align 8, !tbaa !14
  %2003 = and i64 %1995, 255
  %2004 = lshr i64 %2002, %2003
  %2005 = or i64 %2004, %1995
  %2006 = and i64 %1988, 255
  %2007 = lshr i64 %2005, %2006
  %2008 = or i64 %2007, %1988
  %2009 = and i64 %1981, 255
  %2010 = lshr i64 %2008, %2009
  %2011 = or i64 %2010, %1981
  %2012 = and i64 %1974, 255
  %2013 = lshr i64 %2011, %2012
  %2014 = or i64 %2013, %1974
  %2015 = and i64 %1967, 255
  %2016 = lshr i64 %2014, %2015
  %2017 = or i64 %2016, %1967
  %2018 = extractvalue { i32, i1 } %1958, 0, !nosanitize !47
  %2019 = sext i32 %2018 to i64
  %2020 = getelementptr inbounds i8, ptr %2, i64 %2019
  %2021 = load i8, ptr %2020, align 1, !tbaa !5
  %2022 = zext i8 %2021 to i64
  %2023 = getelementptr inbounds nuw i64, ptr %15, i64 %2022
  %2024 = load i64, ptr %2023, align 8, !tbaa !14
  %2025 = and i64 %2024, 255
  %2026 = lshr i64 %2017, %2025
  %2027 = or i64 %2026, %2024
  %2028 = getelementptr i8, ptr %1843, i64 %1855
  %2029 = load i8, ptr %2028, align 1, !tbaa !5
  %2030 = zext i8 %2029 to i64
  %2031 = getelementptr inbounds nuw i64, ptr %15, i64 %2030
  %2032 = load i64, ptr %2031, align 8, !tbaa !14
  %2033 = and i64 %2032, 255
  %2034 = lshr i64 %2027, %2033
  %2035 = and i64 %2032, -256
  %2036 = add i64 %1974, %1967
  %2037 = add i64 %2036, %1981
  %2038 = add i64 %2037, %1988
  %2039 = add i64 %2038, %1995
  %2040 = add i64 %2039, %2002
  %2041 = add i64 %2040, %2024
  %2042 = add i64 %2041, %2032
  %2043 = and i64 %2042, 255
  %2044 = lshr i64 %1931, %2043
  %2045 = or i64 %2044, %2035
  %2046 = or i64 %2045, %2034
  %2047 = add i64 %2042, %1937
  %2048 = and i64 %2047, 255
  %2049 = lshr i64 %2048, 3
  %2050 = sub nsw i64 64, %2048
  %2051 = lshr i64 %2046, %2050
  %2052 = and i64 %2047, 7
  store i64 %2051, ptr %1938, align 1, !tbaa !14
  %2053 = getelementptr inbounds nuw i8, ptr %1938, i64 %2049
  %2054 = add nsw i64 %1855, -16
  %2055 = icmp sgt i64 %1855, 16
  br i1 %2055, label %1854, label %2510, !llvm.loop !77

2056:                                             ; preds = %305
  %2057 = srem i32 %29, 9
  %2058 = icmp sgt i32 %2057, 0
  br i1 %2058, label %2059, label %2130

2059:                                             ; preds = %2056
  %2060 = xor i32 %29, -2147483648
  %2061 = add nsw i32 %2057, -1
  %2062 = icmp ugt i32 %2060, %2061
  br i1 %2062, label %2063, label %2099, !prof !75, !nosanitize !47

2063:                                             ; preds = %2059
  %2064 = and i32 %2057, 1
  %2065 = icmp eq i32 %2061, 0
  br i1 %2065, label %2100, label %2066

2066:                                             ; preds = %2063
  %2067 = and i32 %2057, 2147483646
  br label %2068

2068:                                             ; preds = %2068, %2066
  %2069 = phi i32 [ %29, %2066 ], [ %2085, %2068 ]
  %2070 = phi i64 [ 0, %2066 ], [ %2095, %2068 ]
  %2071 = phi i64 [ 0, %2066 ], [ %2096, %2068 ]
  %2072 = phi i32 [ 0, %2066 ], [ %2097, %2068 ]
  %2073 = add i32 %2069, -1
  %2074 = sext i32 %2073 to i64
  %2075 = getelementptr inbounds i8, ptr %2, i64 %2074
  %2076 = load i8, ptr %2075, align 1, !tbaa !5
  %2077 = zext i8 %2076 to i64
  %2078 = getelementptr inbounds nuw i64, ptr %15, i64 %2077
  %2079 = load i64, ptr %2078, align 8, !tbaa !14
  %2080 = and i64 %2079, 255
  %2081 = lshr i64 %2070, %2080
  %2082 = and i64 %2079, -256
  %2083 = or i64 %2081, %2082
  %2084 = add i64 %2079, %2071
  %2085 = add i32 %2069, -2
  %2086 = sext i32 %2085 to i64
  %2087 = getelementptr inbounds i8, ptr %2, i64 %2086
  %2088 = load i8, ptr %2087, align 1, !tbaa !5
  %2089 = zext i8 %2088 to i64
  %2090 = getelementptr inbounds nuw i64, ptr %15, i64 %2089
  %2091 = load i64, ptr %2090, align 8, !tbaa !14
  %2092 = and i64 %2091, 255
  %2093 = lshr i64 %2083, %2092
  %2094 = and i64 %2091, -256
  %2095 = or i64 %2093, %2094
  %2096 = add i64 %2091, %2084
  %2097 = add i32 %2072, 2
  %2098 = icmp eq i32 %2097, %2067
  br i1 %2098, label %2100, label %2068, !llvm.loop !76

2099:                                             ; preds = %2401, %2398, %2395, %2392, %2389, %2386, %2383, %2287, %2161, %2158, %2155, %2152, %2149, %2146, %2143, %2140, %2137, %2059
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2100:                                             ; preds = %2068, %2063
  %2101 = phi i64 [ poison, %2063 ], [ %2095, %2068 ]
  %2102 = phi i64 [ poison, %2063 ], [ %2096, %2068 ]
  %2103 = phi i32 [ %29, %2063 ], [ %2085, %2068 ]
  %2104 = phi i64 [ 0, %2063 ], [ %2095, %2068 ]
  %2105 = phi i64 [ 0, %2063 ], [ %2096, %2068 ]
  %2106 = icmp eq i32 %2064, 0
  br i1 %2106, label %2120, label %2107

2107:                                             ; preds = %2100
  %2108 = add i32 %2103, -1
  %2109 = sext i32 %2108 to i64
  %2110 = getelementptr inbounds i8, ptr %2, i64 %2109
  %2111 = load i8, ptr %2110, align 1, !tbaa !5
  %2112 = zext i8 %2111 to i64
  %2113 = getelementptr inbounds nuw i64, ptr %15, i64 %2112
  %2114 = load i64, ptr %2113, align 8, !tbaa !14
  %2115 = and i64 %2114, 255
  %2116 = lshr i64 %2104, %2115
  %2117 = and i64 %2114, -256
  %2118 = or i64 %2116, %2117
  %2119 = add i64 %2114, %2105
  br label %2120

2120:                                             ; preds = %2100, %2107
  %2121 = phi i64 [ %2101, %2100 ], [ %2118, %2107 ]
  %2122 = phi i64 [ %2102, %2100 ], [ %2119, %2107 ]
  %2123 = sub nsw i32 %29, %2057
  %2124 = and i64 %2122, 255
  %2125 = lshr i64 %2124, 3
  %2126 = sub nsw i64 64, %2124
  %2127 = lshr i64 %2121, %2126
  %2128 = and i64 %2122, 7
  store i64 %2127, ptr %0, align 1, !tbaa !14
  %2129 = getelementptr inbounds nuw i8, ptr %0, i64 %2125
  br label %2130

2130:                                             ; preds = %2120, %2056
  %2131 = phi i64 [ %2128, %2120 ], [ 0, %2056 ]
  %2132 = phi ptr [ %2129, %2120 ], [ %0, %2056 ]
  %2133 = phi i64 [ %2121, %2120 ], [ 0, %2056 ]
  %2134 = phi i32 [ %2123, %2120 ], [ %29, %2056 ]
  %2135 = srem i32 %2134, 18
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2270, label %2137

2137:                                             ; preds = %2130
  %2138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -1)
  %2139 = extractvalue { i32, i1 } %2138, 1, !nosanitize !47
  br i1 %2139, label %2099, label %2140, !prof !48, !nosanitize !47

2140:                                             ; preds = %2137
  %2141 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -2)
  %2142 = extractvalue { i32, i1 } %2141, 1, !nosanitize !47
  br i1 %2142, label %2099, label %2143, !prof !48, !nosanitize !47

2143:                                             ; preds = %2140
  %2144 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -3)
  %2145 = extractvalue { i32, i1 } %2144, 1, !nosanitize !47
  br i1 %2145, label %2099, label %2146, !prof !48, !nosanitize !47

2146:                                             ; preds = %2143
  %2147 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -4)
  %2148 = extractvalue { i32, i1 } %2147, 1, !nosanitize !47
  br i1 %2148, label %2099, label %2149, !prof !48, !nosanitize !47

2149:                                             ; preds = %2146
  %2150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -5)
  %2151 = extractvalue { i32, i1 } %2150, 1, !nosanitize !47
  br i1 %2151, label %2099, label %2152, !prof !48, !nosanitize !47

2152:                                             ; preds = %2149
  %2153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -6)
  %2154 = extractvalue { i32, i1 } %2153, 1, !nosanitize !47
  br i1 %2154, label %2099, label %2155, !prof !48, !nosanitize !47

2155:                                             ; preds = %2152
  %2156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -7)
  %2157 = extractvalue { i32, i1 } %2156, 1, !nosanitize !47
  br i1 %2157, label %2099, label %2158, !prof !48, !nosanitize !47

2158:                                             ; preds = %2155
  %2159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -8)
  %2160 = extractvalue { i32, i1 } %2159, 1, !nosanitize !47
  br i1 %2160, label %2099, label %2161, !prof !48, !nosanitize !47

2161:                                             ; preds = %2158
  %2162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -9)
  %2163 = extractvalue { i32, i1 } %2162, 1, !nosanitize !47
  br i1 %2163, label %2099, label %2164, !prof !48, !nosanitize !47

2164:                                             ; preds = %2161
  %2165 = extractvalue { i32, i1 } %2159, 0, !nosanitize !47
  %2166 = sext i32 %2165 to i64
  %2167 = getelementptr inbounds i8, ptr %2, i64 %2166
  %2168 = load i8, ptr %2167, align 1, !tbaa !5
  %2169 = zext i8 %2168 to i64
  %2170 = getelementptr inbounds nuw i64, ptr %15, i64 %2169
  %2171 = load i64, ptr %2170, align 8, !tbaa !14
  %2172 = extractvalue { i32, i1 } %2156, 0, !nosanitize !47
  %2173 = sext i32 %2172 to i64
  %2174 = getelementptr inbounds i8, ptr %2, i64 %2173
  %2175 = load i8, ptr %2174, align 1, !tbaa !5
  %2176 = zext i8 %2175 to i64
  %2177 = getelementptr inbounds nuw i64, ptr %15, i64 %2176
  %2178 = load i64, ptr %2177, align 8, !tbaa !14
  %2179 = extractvalue { i32, i1 } %2153, 0, !nosanitize !47
  %2180 = sext i32 %2179 to i64
  %2181 = getelementptr inbounds i8, ptr %2, i64 %2180
  %2182 = load i8, ptr %2181, align 1, !tbaa !5
  %2183 = zext i8 %2182 to i64
  %2184 = getelementptr inbounds nuw i64, ptr %15, i64 %2183
  %2185 = load i64, ptr %2184, align 8, !tbaa !14
  %2186 = extractvalue { i32, i1 } %2150, 0, !nosanitize !47
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds i8, ptr %2, i64 %2187
  %2189 = load i8, ptr %2188, align 1, !tbaa !5
  %2190 = zext i8 %2189 to i64
  %2191 = getelementptr inbounds nuw i64, ptr %15, i64 %2190
  %2192 = load i64, ptr %2191, align 8, !tbaa !14
  %2193 = extractvalue { i32, i1 } %2147, 0, !nosanitize !47
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds i8, ptr %2, i64 %2194
  %2196 = load i8, ptr %2195, align 1, !tbaa !5
  %2197 = zext i8 %2196 to i64
  %2198 = getelementptr inbounds nuw i64, ptr %15, i64 %2197
  %2199 = load i64, ptr %2198, align 8, !tbaa !14
  %2200 = extractvalue { i32, i1 } %2144, 0, !nosanitize !47
  %2201 = sext i32 %2200 to i64
  %2202 = getelementptr inbounds i8, ptr %2, i64 %2201
  %2203 = load i8, ptr %2202, align 1, !tbaa !5
  %2204 = zext i8 %2203 to i64
  %2205 = getelementptr inbounds nuw i64, ptr %15, i64 %2204
  %2206 = load i64, ptr %2205, align 8, !tbaa !14
  %2207 = extractvalue { i32, i1 } %2141, 0, !nosanitize !47
  %2208 = sext i32 %2207 to i64
  %2209 = getelementptr inbounds i8, ptr %2, i64 %2208
  %2210 = load i8, ptr %2209, align 1, !tbaa !5
  %2211 = zext i8 %2210 to i64
  %2212 = getelementptr inbounds nuw i64, ptr %15, i64 %2211
  %2213 = load i64, ptr %2212, align 8, !tbaa !14
  %2214 = extractvalue { i32, i1 } %2138, 0, !nosanitize !47
  %2215 = sext i32 %2214 to i64
  %2216 = getelementptr inbounds i8, ptr %2, i64 %2215
  %2217 = load i8, ptr %2216, align 1, !tbaa !5
  %2218 = zext i8 %2217 to i64
  %2219 = getelementptr inbounds nuw i64, ptr %15, i64 %2218
  %2220 = load i64, ptr %2219, align 8, !tbaa !14
  %2221 = and i64 %2220, 255
  %2222 = lshr i64 %2133, %2221
  %2223 = or i64 %2222, %2220
  %2224 = and i64 %2213, 255
  %2225 = lshr i64 %2223, %2224
  %2226 = or i64 %2225, %2213
  %2227 = and i64 %2206, 255
  %2228 = lshr i64 %2226, %2227
  %2229 = or i64 %2228, %2206
  %2230 = and i64 %2199, 255
  %2231 = lshr i64 %2229, %2230
  %2232 = or i64 %2231, %2199
  %2233 = and i64 %2192, 255
  %2234 = lshr i64 %2232, %2233
  %2235 = or i64 %2234, %2192
  %2236 = and i64 %2185, 255
  %2237 = lshr i64 %2235, %2236
  %2238 = or i64 %2237, %2185
  %2239 = and i64 %2178, 255
  %2240 = lshr i64 %2238, %2239
  %2241 = or i64 %2240, %2178
  %2242 = and i64 %2171, 255
  %2243 = lshr i64 %2241, %2242
  %2244 = or i64 %2243, %2171
  %2245 = extractvalue { i32, i1 } %2162, 0, !nosanitize !47
  %2246 = sext i32 %2245 to i64
  %2247 = getelementptr inbounds i8, ptr %2, i64 %2246
  %2248 = load i8, ptr %2247, align 1, !tbaa !5
  %2249 = zext i8 %2248 to i64
  %2250 = getelementptr inbounds nuw i64, ptr %15, i64 %2249
  %2251 = load i64, ptr %2250, align 8, !tbaa !14
  %2252 = and i64 %2251, 255
  %2253 = lshr i64 %2244, %2252
  %2254 = or i64 %2253, %2251
  %2255 = add i64 %2171, %2131
  %2256 = add i64 %2255, %2178
  %2257 = add i64 %2256, %2185
  %2258 = add i64 %2257, %2192
  %2259 = add i64 %2258, %2199
  %2260 = add i64 %2259, %2206
  %2261 = add i64 %2260, %2213
  %2262 = add i64 %2261, %2220
  %2263 = add i64 %2262, %2251
  %2264 = and i64 %2263, 255
  %2265 = lshr i64 %2264, 3
  %2266 = sub nsw i64 64, %2264
  %2267 = lshr i64 %2254, %2266
  %2268 = and i64 %2263, 7
  store i64 %2267, ptr %2132, align 1, !tbaa !14
  %2269 = getelementptr inbounds nuw i8, ptr %2132, i64 %2265
  br label %2270

2270:                                             ; preds = %2164, %2130
  %2271 = phi i64 [ %2131, %2130 ], [ %2268, %2164 ]
  %2272 = phi ptr [ %2132, %2130 ], [ %2269, %2164 ]
  %2273 = phi i64 [ %2133, %2130 ], [ %2254, %2164 ]
  %2274 = phi i32 [ %2134, %2130 ], [ %2245, %2164 ]
  %2275 = getelementptr i8, ptr %2, i64 -18
  %2276 = icmp sgt i32 %2274, 0
  br i1 %2276, label %2277, label %2510

2277:                                             ; preds = %2270
  %2278 = zext nneg i32 %2274 to i64
  %2279 = getelementptr i8, ptr %2, i64 -1
  %2280 = getelementptr i8, ptr %2, i64 -2
  %2281 = getelementptr i8, ptr %2, i64 -3
  %2282 = getelementptr i8, ptr %2, i64 -4
  %2283 = getelementptr i8, ptr %2, i64 -5
  %2284 = getelementptr i8, ptr %2, i64 -6
  %2285 = getelementptr i8, ptr %2, i64 -7
  %2286 = getelementptr i8, ptr %2, i64 -8
  br label %2287

2287:                                             ; preds = %2404, %2277
  %2288 = phi i64 [ %2278, %2277 ], [ %2508, %2404 ]
  %2289 = phi i64 [ %2273, %2277 ], [ %2500, %2404 ]
  %2290 = phi ptr [ %2272, %2277 ], [ %2507, %2404 ]
  %2291 = phi i64 [ %2271, %2277 ], [ %2506, %2404 ]
  %2292 = getelementptr i8, ptr %2279, i64 %2288
  %2293 = load i8, ptr %2292, align 1, !tbaa !5
  %2294 = zext i8 %2293 to i64
  %2295 = getelementptr inbounds nuw i64, ptr %15, i64 %2294
  %2296 = load i64, ptr %2295, align 8, !tbaa !14
  %2297 = and i64 %2296, 255
  %2298 = lshr i64 %2289, %2297
  %2299 = or i64 %2298, %2296
  %2300 = add i64 %2296, %2291
  %2301 = getelementptr i8, ptr %2280, i64 %2288
  %2302 = load i8, ptr %2301, align 1, !tbaa !5
  %2303 = zext i8 %2302 to i64
  %2304 = getelementptr inbounds nuw i64, ptr %15, i64 %2303
  %2305 = load i64, ptr %2304, align 8, !tbaa !14
  %2306 = and i64 %2305, 255
  %2307 = lshr i64 %2299, %2306
  %2308 = or i64 %2307, %2305
  %2309 = add i64 %2300, %2305
  %2310 = getelementptr i8, ptr %2281, i64 %2288
  %2311 = load i8, ptr %2310, align 1, !tbaa !5
  %2312 = zext i8 %2311 to i64
  %2313 = getelementptr inbounds nuw i64, ptr %15, i64 %2312
  %2314 = load i64, ptr %2313, align 8, !tbaa !14
  %2315 = and i64 %2314, 255
  %2316 = lshr i64 %2308, %2315
  %2317 = or i64 %2316, %2314
  %2318 = add i64 %2309, %2314
  %2319 = getelementptr i8, ptr %2282, i64 %2288
  %2320 = load i8, ptr %2319, align 1, !tbaa !5
  %2321 = zext i8 %2320 to i64
  %2322 = getelementptr inbounds nuw i64, ptr %15, i64 %2321
  %2323 = load i64, ptr %2322, align 8, !tbaa !14
  %2324 = and i64 %2323, 255
  %2325 = lshr i64 %2317, %2324
  %2326 = or i64 %2325, %2323
  %2327 = add i64 %2318, %2323
  %2328 = getelementptr i8, ptr %2283, i64 %2288
  %2329 = load i8, ptr %2328, align 1, !tbaa !5
  %2330 = zext i8 %2329 to i64
  %2331 = getelementptr inbounds nuw i64, ptr %15, i64 %2330
  %2332 = load i64, ptr %2331, align 8, !tbaa !14
  %2333 = and i64 %2332, 255
  %2334 = lshr i64 %2326, %2333
  %2335 = or i64 %2334, %2332
  %2336 = add i64 %2327, %2332
  %2337 = getelementptr i8, ptr %2284, i64 %2288
  %2338 = load i8, ptr %2337, align 1, !tbaa !5
  %2339 = zext i8 %2338 to i64
  %2340 = getelementptr inbounds nuw i64, ptr %15, i64 %2339
  %2341 = load i64, ptr %2340, align 8, !tbaa !14
  %2342 = and i64 %2341, 255
  %2343 = lshr i64 %2335, %2342
  %2344 = or i64 %2343, %2341
  %2345 = add i64 %2336, %2341
  %2346 = getelementptr i8, ptr %2285, i64 %2288
  %2347 = load i8, ptr %2346, align 1, !tbaa !5
  %2348 = zext i8 %2347 to i64
  %2349 = getelementptr inbounds nuw i64, ptr %15, i64 %2348
  %2350 = load i64, ptr %2349, align 8, !tbaa !14
  %2351 = and i64 %2350, 255
  %2352 = lshr i64 %2344, %2351
  %2353 = or i64 %2352, %2350
  %2354 = add i64 %2345, %2350
  %2355 = getelementptr i8, ptr %2286, i64 %2288
  %2356 = load i8, ptr %2355, align 1, !tbaa !5
  %2357 = zext i8 %2356 to i64
  %2358 = getelementptr inbounds nuw i64, ptr %15, i64 %2357
  %2359 = load i64, ptr %2358, align 8, !tbaa !14
  %2360 = and i64 %2359, 255
  %2361 = lshr i64 %2353, %2360
  %2362 = or i64 %2361, %2359
  %2363 = add i64 %2354, %2359
  %2364 = add nsw i64 %2288, -9
  %2365 = getelementptr inbounds i8, ptr %2, i64 %2364
  %2366 = load i8, ptr %2365, align 1, !tbaa !5
  %2367 = zext i8 %2366 to i64
  %2368 = getelementptr inbounds nuw i64, ptr %15, i64 %2367
  %2369 = load i64, ptr %2368, align 8, !tbaa !14
  %2370 = and i64 %2369, 255
  %2371 = lshr i64 %2362, %2370
  %2372 = or i64 %2371, %2369
  %2373 = add i64 %2363, %2369
  %2374 = and i64 %2373, 255
  %2375 = lshr i64 %2374, 3
  %2376 = sub nsw i64 64, %2374
  %2377 = lshr i64 %2372, %2376
  %2378 = and i64 %2373, 7
  store i64 %2377, ptr %2290, align 1, !tbaa !14
  %2379 = getelementptr inbounds nuw i8, ptr %2290, i64 %2375
  %2380 = trunc nsw i64 %2364 to i32
  %2381 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -1)
  %2382 = extractvalue { i32, i1 } %2381, 1, !nosanitize !47
  br i1 %2382, label %2099, label %2383, !prof !48, !nosanitize !47

2383:                                             ; preds = %2287
  %2384 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -2)
  %2385 = extractvalue { i32, i1 } %2384, 1, !nosanitize !47
  br i1 %2385, label %2099, label %2386, !prof !48, !nosanitize !47

2386:                                             ; preds = %2383
  %2387 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -3)
  %2388 = extractvalue { i32, i1 } %2387, 1, !nosanitize !47
  br i1 %2388, label %2099, label %2389, !prof !48, !nosanitize !47

2389:                                             ; preds = %2386
  %2390 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -4)
  %2391 = extractvalue { i32, i1 } %2390, 1, !nosanitize !47
  br i1 %2391, label %2099, label %2392, !prof !48, !nosanitize !47

2392:                                             ; preds = %2389
  %2393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -5)
  %2394 = extractvalue { i32, i1 } %2393, 1, !nosanitize !47
  br i1 %2394, label %2099, label %2395, !prof !48, !nosanitize !47

2395:                                             ; preds = %2392
  %2396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -6)
  %2397 = extractvalue { i32, i1 } %2396, 1, !nosanitize !47
  br i1 %2397, label %2099, label %2398, !prof !48, !nosanitize !47

2398:                                             ; preds = %2395
  %2399 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -7)
  %2400 = extractvalue { i32, i1 } %2399, 1, !nosanitize !47
  br i1 %2400, label %2099, label %2401, !prof !48, !nosanitize !47

2401:                                             ; preds = %2398
  %2402 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 -8)
  %2403 = extractvalue { i32, i1 } %2402, 1, !nosanitize !47
  br i1 %2403, label %2099, label %2404, !prof !48, !nosanitize !47

2404:                                             ; preds = %2401
  %2405 = extractvalue { i32, i1 } %2399, 0, !nosanitize !47
  %2406 = sext i32 %2405 to i64
  %2407 = getelementptr inbounds i8, ptr %2, i64 %2406
  %2408 = load i8, ptr %2407, align 1, !tbaa !5
  %2409 = zext i8 %2408 to i64
  %2410 = getelementptr inbounds nuw i64, ptr %15, i64 %2409
  %2411 = load i64, ptr %2410, align 8, !tbaa !14
  %2412 = extractvalue { i32, i1 } %2396, 0, !nosanitize !47
  %2413 = sext i32 %2412 to i64
  %2414 = getelementptr inbounds i8, ptr %2, i64 %2413
  %2415 = load i8, ptr %2414, align 1, !tbaa !5
  %2416 = zext i8 %2415 to i64
  %2417 = getelementptr inbounds nuw i64, ptr %15, i64 %2416
  %2418 = load i64, ptr %2417, align 8, !tbaa !14
  %2419 = extractvalue { i32, i1 } %2393, 0, !nosanitize !47
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds i8, ptr %2, i64 %2420
  %2422 = load i8, ptr %2421, align 1, !tbaa !5
  %2423 = zext i8 %2422 to i64
  %2424 = getelementptr inbounds nuw i64, ptr %15, i64 %2423
  %2425 = load i64, ptr %2424, align 8, !tbaa !14
  %2426 = extractvalue { i32, i1 } %2390, 0, !nosanitize !47
  %2427 = sext i32 %2426 to i64
  %2428 = getelementptr inbounds i8, ptr %2, i64 %2427
  %2429 = load i8, ptr %2428, align 1, !tbaa !5
  %2430 = zext i8 %2429 to i64
  %2431 = getelementptr inbounds nuw i64, ptr %15, i64 %2430
  %2432 = load i64, ptr %2431, align 8, !tbaa !14
  %2433 = extractvalue { i32, i1 } %2387, 0, !nosanitize !47
  %2434 = sext i32 %2433 to i64
  %2435 = getelementptr inbounds i8, ptr %2, i64 %2434
  %2436 = load i8, ptr %2435, align 1, !tbaa !5
  %2437 = zext i8 %2436 to i64
  %2438 = getelementptr inbounds nuw i64, ptr %15, i64 %2437
  %2439 = load i64, ptr %2438, align 8, !tbaa !14
  %2440 = extractvalue { i32, i1 } %2384, 0, !nosanitize !47
  %2441 = sext i32 %2440 to i64
  %2442 = getelementptr inbounds i8, ptr %2, i64 %2441
  %2443 = load i8, ptr %2442, align 1, !tbaa !5
  %2444 = zext i8 %2443 to i64
  %2445 = getelementptr inbounds nuw i64, ptr %15, i64 %2444
  %2446 = load i64, ptr %2445, align 8, !tbaa !14
  %2447 = extractvalue { i32, i1 } %2381, 0, !nosanitize !47
  %2448 = sext i32 %2447 to i64
  %2449 = getelementptr inbounds i8, ptr %2, i64 %2448
  %2450 = load i8, ptr %2449, align 1, !tbaa !5
  %2451 = zext i8 %2450 to i64
  %2452 = getelementptr inbounds nuw i64, ptr %15, i64 %2451
  %2453 = load i64, ptr %2452, align 8, !tbaa !14
  %2454 = and i64 %2446, 255
  %2455 = lshr i64 %2453, %2454
  %2456 = or i64 %2455, %2446
  %2457 = and i64 %2439, 255
  %2458 = lshr i64 %2456, %2457
  %2459 = or i64 %2458, %2439
  %2460 = and i64 %2432, 255
  %2461 = lshr i64 %2459, %2460
  %2462 = or i64 %2461, %2432
  %2463 = and i64 %2425, 255
  %2464 = lshr i64 %2462, %2463
  %2465 = or i64 %2464, %2425
  %2466 = and i64 %2418, 255
  %2467 = lshr i64 %2465, %2466
  %2468 = or i64 %2467, %2418
  %2469 = and i64 %2411, 255
  %2470 = lshr i64 %2468, %2469
  %2471 = or i64 %2470, %2411
  %2472 = extractvalue { i32, i1 } %2402, 0, !nosanitize !47
  %2473 = sext i32 %2472 to i64
  %2474 = getelementptr inbounds i8, ptr %2, i64 %2473
  %2475 = load i8, ptr %2474, align 1, !tbaa !5
  %2476 = zext i8 %2475 to i64
  %2477 = getelementptr inbounds nuw i64, ptr %15, i64 %2476
  %2478 = load i64, ptr %2477, align 8, !tbaa !14
  %2479 = and i64 %2478, 255
  %2480 = lshr i64 %2471, %2479
  %2481 = or i64 %2480, %2478
  %2482 = getelementptr i8, ptr %2275, i64 %2288
  %2483 = load i8, ptr %2482, align 1, !tbaa !5
  %2484 = zext i8 %2483 to i64
  %2485 = getelementptr inbounds nuw i64, ptr %15, i64 %2484
  %2486 = load i64, ptr %2485, align 8, !tbaa !14
  %2487 = and i64 %2486, 255
  %2488 = lshr i64 %2481, %2487
  %2489 = add i64 %2418, %2411
  %2490 = add i64 %2489, %2425
  %2491 = add i64 %2490, %2432
  %2492 = add i64 %2491, %2439
  %2493 = add i64 %2492, %2446
  %2494 = add i64 %2493, %2453
  %2495 = add i64 %2494, %2478
  %2496 = add i64 %2495, %2486
  %2497 = and i64 %2496, 255
  %2498 = lshr i64 %2372, %2497
  %2499 = or i64 %2498, %2488
  %2500 = or i64 %2499, %2486
  %2501 = add i64 %2496, %2378
  %2502 = and i64 %2501, 255
  %2503 = lshr i64 %2502, 3
  %2504 = sub nsw i64 64, %2502
  %2505 = lshr i64 %2500, %2504
  %2506 = and i64 %2501, 7
  store i64 %2505, ptr %2379, align 1, !tbaa !14
  %2507 = getelementptr inbounds nuw i8, ptr %2379, i64 %2503
  %2508 = add nsw i64 %2288, -18
  %2509 = icmp sgt i64 %2288, 18
  br i1 %2509, label %2287, label %2510, !llvm.loop !77

2510:                                             ; preds = %1960, %1552, %1182, %851, %548, %2404, %251, %2270, %1838, %1443, %1086, %769, %465, %179
  %2511 = phi i64 [ %180, %179 ], [ %2271, %2270 ], [ %466, %465 ], [ %770, %769 ], [ %1087, %1086 ], [ %1444, %1443 ], [ %1839, %1838 ], [ %299, %251 ], [ %2506, %2404 ], [ %607, %548 ], [ %909, %851 ], [ %1252, %1182 ], [ %1633, %1552 ], [ %2052, %1960 ]
  %2512 = phi ptr [ %181, %179 ], [ %2272, %2270 ], [ %467, %465 ], [ %771, %769 ], [ %1088, %1086 ], [ %1445, %1443 ], [ %1840, %1838 ], [ %302, %251 ], [ %2507, %2404 ], [ %608, %548 ], [ %910, %851 ], [ %1253, %1182 ], [ %1634, %1552 ], [ %2053, %1960 ]
  %2513 = phi i64 [ %182, %179 ], [ %2273, %2270 ], [ %468, %465 ], [ %772, %769 ], [ %1089, %1086 ], [ %1446, %1443 ], [ %1841, %1838 ], [ %293, %251 ], [ %2500, %2404 ], [ %601, %548 ], [ %903, %851 ], [ %1246, %1182 ], [ %1627, %1552 ], [ %2046, %1960 ]
  %2514 = lshr i64 %2513, 1
  %2515 = or disjoint i64 %2514, -9223372036854775808
  %2516 = add nuw nsw i64 %2511, -9223372036854775807
  %2517 = and i64 %2516, 255
  %2518 = lshr i64 %2517, 3
  %2519 = sub nuw nsw i64 64, %2517
  %2520 = lshr i64 %2515, %2519
  store i64 %2520, ptr %2512, align 1, !tbaa !14
  %2521 = getelementptr inbounds nuw i8, ptr %2512, i64 %2518
  %2522 = icmp ugt ptr %2521, %19
  %2523 = select i1 %2522, ptr %19, ptr %2521
  %2524 = icmp ult ptr %2523, %19
  br i1 %2524, label %2525, label %2533

2525:                                             ; preds = %2510
  %2526 = and i64 %2516, 7
  %2527 = ptrtoint ptr %2523 to i64
  %2528 = ptrtoint ptr %0 to i64
  %2529 = icmp ne i64 %2526, 0
  %2530 = zext i1 %2529 to i64
  %2531 = sub i64 %2530, %2528
  %2532 = add i64 %2531, %2527
  br label %2533

2533:                                             ; preds = %2525, %2510, %17, %11, %9
  %2534 = phi i64 [ %10, %9 ], [ 0, %17 ], [ 0, %11 ], [ %2532, %2525 ], [ 0, %2510 ]
  ret i64 %2534
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 262147) i64 @HUF_compress4X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 262147) i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = add i64 %3, 3
  %8 = lshr i64 %7, 2
  %9 = icmp ult i64 %1, 17
  %10 = icmp ult i64 %3, 12
  %11 = or i1 %9, %10
  br i1 %11, label %61, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %14 = add i64 %1, -6
  %15 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %13, i64 noundef %14, ptr noundef %2, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %16 = icmp ult i64 %15, -119
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = add i64 %15, -65536
  %19 = icmp ult i64 %18, -65535
  br i1 %19, label %61, label %20

20:                                               ; preds = %17
  %21 = trunc nuw i64 %15 to i16
  store i16 %21, ptr %0, align 1, !tbaa !32
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 %15
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %24 = sub i64 %14, %15
  %25 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %22, i64 noundef %24, ptr noundef %23, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = add i64 %25, -65536
  %29 = icmp ult i64 %28, -65535
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %32 = trunc nuw i64 %25 to i16
  store i16 %32, ptr %31, align 1, !tbaa !32
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %34 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  %35 = add nuw nsw i64 %15, %25
  %36 = sub i64 %14, %35
  %37 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %33, i64 noundef %36, ptr noundef %34, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %38 = icmp ult i64 %37, -119
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = add i64 %37, -65536
  %41 = icmp ult i64 %40, -65535
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %44 = trunc nuw i64 %37 to i16
  store i16 %44, ptr %43, align 1, !tbaa !32
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 %37
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 %8
  %47 = add nuw nsw i64 %35, %37
  %48 = sub i64 %14, %47
  %49 = mul i64 %8, -3
  %50 = add i64 %49, %3
  %51 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %45, i64 noundef %48, ptr noundef %46, i64 noundef %50, ptr noundef %4, i32 noundef %5)
  %52 = icmp ult i64 %51, -119
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = add i64 %51, -65536
  %55 = icmp ult i64 %54, -65535
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %15, 6
  %58 = add nuw nsw i64 %57, %25
  %59 = add nuw nsw i64 %58, %37
  %60 = add nuw nsw i64 %59, %51
  br label %61

61:                                               ; preds = %53, %42, %39, %30, %27, %20, %17, %12, %6, %56
  %62 = phi i64 [ %60, %56 ], [ 0, %6 ], [ 0, %17 ], [ %15, %12 ], [ 0, %27 ], [ %25, %20 ], [ 0, %39 ], [ %37, %30 ], [ 0, %53 ], [ %51, %42 ]
  ret i64 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @HUF_cardinality(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = add i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = zext i32 %3 to i64
  %7 = icmp ult i32 %3, 8
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %24, %10 ]
  %12 = phi <4 x i32> [ zeroinitializer, %8 ], [ %22, %10 ]
  %13 = phi <4 x i32> [ zeroinitializer, %8 ], [ %23, %10 ]
  %14 = getelementptr inbounds nuw i32, ptr %0, i64 %11
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load <4 x i32>, ptr %14, align 4, !tbaa !19
  %17 = load <4 x i32>, ptr %15, align 4, !tbaa !19
  %18 = icmp ne <4 x i32> %16, zeroinitializer
  %19 = icmp ne <4 x i32> %17, zeroinitializer
  %20 = zext <4 x i1> %18 to <4 x i32>
  %21 = zext <4 x i1> %19 to <4 x i32>
  %22 = add <4 x i32> %12, %20
  %23 = add <4 x i32> %13, %21
  %24 = add nuw i64 %11, 8
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !78

26:                                               ; preds = %10
  %27 = add <4 x i32> %23, %22
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %29 = icmp eq i64 %9, %6
  br i1 %29, label %43, label %30

30:                                               ; preds = %5, %26
  %31 = phi i64 [ 0, %5 ], [ %9, %26 ]
  %32 = phi i32 [ 0, %5 ], [ %28, %26 ]
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %41, %33 ], [ %31, %30 ]
  %35 = phi i32 [ %40, %33 ], [ %32, %30 ]
  %36 = getelementptr inbounds nuw i32, ptr %0, i64 %34
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add i32 %35, %39
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, %6
  br i1 %42, label %43, label %33, !llvm.loop !79

43:                                               ; preds = %33, %26, %2
  %44 = phi i32 [ 0, %2 ], [ %28, %26 ], [ %40, %33 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 1, 33) i32 @HUF_minTableLog(i32 noundef %0) local_unnamed_addr #9 {
  %2 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %3 = sub nuw nsw i32 32, %2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HUF_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef captures(none) %5, ptr noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1) #12
  br label %175

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 748
  %15 = add i64 %4, -748
  %16 = add i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %13
  %19 = zext i32 %16 to i64
  %20 = icmp ult i32 %16, 8
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = and i64 %19, 4294967288
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %37, %23 ]
  %25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %35, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %36, %23 ]
  %27 = getelementptr inbounds nuw i32, ptr %6, i64 %24
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %29 = load <4 x i32>, ptr %27, align 4, !tbaa !19
  %30 = load <4 x i32>, ptr %28, align 4, !tbaa !19
  %31 = icmp ne <4 x i32> %29, zeroinitializer
  %32 = icmp ne <4 x i32> %30, zeroinitializer
  %33 = zext <4 x i1> %31 to <4 x i32>
  %34 = zext <4 x i1> %32 to <4 x i32>
  %35 = add <4 x i32> %25, %33
  %36 = add <4 x i32> %26, %34
  %37 = add nuw i64 %24, 8
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !80

39:                                               ; preds = %23
  %40 = add <4 x i32> %36, %35
  %41 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = icmp eq i64 %22, %19
  br i1 %42, label %56, label %43

43:                                               ; preds = %18, %39
  %44 = phi i64 [ 0, %18 ], [ %22, %39 ]
  %45 = phi i32 [ 0, %18 ], [ %41, %39 ]
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %54, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %53, %46 ], [ %45, %43 ]
  %49 = getelementptr inbounds nuw i32, ptr %6, i64 %47
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = add i32 %48, %52
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %19
  br i1 %55, label %56, label %46, !llvm.loop !81

56:                                               ; preds = %46, %39
  %57 = phi i32 [ %41, %39 ], [ %53, %46 ]
  %58 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %57, i1 true)
  %59 = sub nuw nsw i32 32, %58
  %60 = icmp ugt i32 %59, %0
  br i1 %60, label %175, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %63 = icmp slt i32 %2, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = add nuw i32 %2, 1
  %66 = zext i32 %65 to i64
  %67 = and i64 %66, 3
  %68 = icmp eq i64 %67, 0
  %69 = select i1 %68, i64 4, i64 %67
  %70 = sub nsw i64 %66, %69
  br label %100

71:                                               ; preds = %13, %61
  %72 = phi i32 [ %59, %61 ], [ poison, %13 ]
  br label %73

73:                                               ; preds = %71, %95
  %74 = phi i32 [ %98, %95 ], [ %72, %71 ]
  %75 = phi i32 [ %97, %95 ], [ %0, %71 ]
  %76 = phi i64 [ %96, %95 ], [ -2, %71 ]
  %77 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %74, ptr noundef %3, i64 noundef %4)
  %78 = icmp ult i64 %77, -119
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = zext i32 %74 to i64
  %81 = icmp samesign ult i64 %77, %80
  %82 = icmp ugt i32 %74, %72
  %83 = and i1 %81, %82
  br i1 %83, label %175, label %84

84:                                               ; preds = %79
  %85 = trunc nuw nsw i64 %77 to i32
  %86 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %85, ptr noundef %3, i64 noundef %4)
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = add nuw i64 %76, 1
  %90 = icmp ugt i64 %86, %89
  br i1 %90, label %175, label %91

91:                                               ; preds = %88
  %92 = icmp ult i64 %86, %76
  %93 = tail call i64 @llvm.umin.i64(i64 %86, i64 %76)
  %94 = select i1 %92, i32 %74, i32 %75
  br label %95

95:                                               ; preds = %91, %84, %73
  %96 = phi i64 [ %76, %84 ], [ %93, %91 ], [ %76, %73 ]
  %97 = phi i32 [ %75, %84 ], [ %94, %91 ], [ %75, %73 ]
  %98 = add i32 %74, 1
  %99 = icmp ugt i32 %98, %0
  br i1 %99, label %175, label %73, !llvm.loop !82

100:                                              ; preds = %64, %170
  %101 = phi i32 [ %173, %170 ], [ %59, %64 ]
  %102 = phi i32 [ %172, %170 ], [ %0, %64 ]
  %103 = phi i64 [ %171, %170 ], [ -2, %64 ]
  %104 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %101, ptr noundef %3, i64 noundef %4)
  %105 = icmp ult i64 %104, -119
  br i1 %105, label %106, label %170

106:                                              ; preds = %100
  %107 = zext i32 %101 to i64
  %108 = icmp samesign ult i64 %104, %107
  %109 = icmp ugt i32 %101, %59
  %110 = and i1 %108, %109
  br i1 %110, label %175, label %111

111:                                              ; preds = %106
  %112 = trunc nuw nsw i64 %104 to i32
  %113 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %112, ptr noundef %3, i64 noundef %4)
  %114 = icmp ult i64 %113, -119
  br i1 %114, label %115, label %170

115:                                              ; preds = %111
  switch i32 %2, label %116 [
    i32 2147483647, label %141
    i32 3, label %141
    i32 2, label %141
    i32 1, label %141
    i32 0, label %141
  ]

116:                                              ; preds = %115, %116
  %117 = phi i64 [ %136, %116 ], [ 0, %115 ]
  %118 = phi <2 x i64> [ %134, %116 ], [ zeroinitializer, %115 ]
  %119 = phi <2 x i64> [ %135, %116 ], [ zeroinitializer, %115 ]
  %120 = getelementptr inbounds nuw i64, ptr %62, i64 %117
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %122 = load <2 x i64>, ptr %120, align 8, !tbaa !14
  %123 = load <2 x i64>, ptr %121, align 8, !tbaa !14
  %124 = and <2 x i64> %122, splat (i64 255)
  %125 = and <2 x i64> %123, splat (i64 255)
  %126 = getelementptr inbounds nuw i32, ptr %6, i64 %117
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 8
  %128 = load <2 x i32>, ptr %126, align 4, !tbaa !19
  %129 = load <2 x i32>, ptr %127, align 4, !tbaa !19
  %130 = zext <2 x i32> %128 to <2 x i64>
  %131 = zext <2 x i32> %129 to <2 x i64>
  %132 = mul nuw nsw <2 x i64> %124, %130
  %133 = mul nuw nsw <2 x i64> %125, %131
  %134 = add <2 x i64> %132, %118
  %135 = add <2 x i64> %133, %119
  %136 = add nuw i64 %117, 4
  %137 = icmp eq i64 %136, %70
  br i1 %137, label %138, label %116, !llvm.loop !83

138:                                              ; preds = %116
  %139 = add <2 x i64> %135, %134
  %140 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %139)
  br label %141

141:                                              ; preds = %138, %115, %115, %115, %115, %115
  %142 = phi i64 [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ %70, %138 ]
  %143 = phi i64 [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ %140, %138 ]
  br label %144

144:                                              ; preds = %141, %149
  %145 = phi i64 [ %153, %149 ], [ %142, %141 ]
  %146 = phi i64 [ %159, %149 ], [ %143, %141 ]
  %147 = icmp eq i64 %145, 2147483647
  br i1 %147, label %148, label %149, !prof !48, !nosanitize !47

148:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

149:                                              ; preds = %144
  %150 = getelementptr inbounds nuw i64, ptr %62, i64 %145
  %151 = load i64, ptr %150, align 8, !tbaa !14
  %152 = and i64 %151, 255
  %153 = add nuw nsw i64 %145, 1
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds nuw i32, ptr %6, i64 %145
  %156 = load i32, ptr %155, align 4, !tbaa !19
  %157 = zext i32 %156 to i64
  %158 = mul nuw nsw i64 %152, %157
  %159 = add i64 %158, %146
  %160 = icmp slt i32 %2, %154
  br i1 %160, label %161, label %144, !llvm.loop !84

161:                                              ; preds = %149
  %162 = lshr i64 %159, 3
  %163 = add i64 %162, %113
  %164 = add nuw i64 %103, 1
  %165 = icmp ugt i64 %163, %164
  br i1 %165, label %175, label %166

166:                                              ; preds = %161
  %167 = icmp ult i64 %163, %103
  %168 = tail call i64 @llvm.umin.i64(i64 %163, i64 %103)
  %169 = select i1 %167, i32 %101, i32 %102
  br label %170

170:                                              ; preds = %100, %166, %111
  %171 = phi i64 [ %103, %111 ], [ %168, %166 ], [ %103, %100 ]
  %172 = phi i32 [ %102, %111 ], [ %169, %166 ], [ %102, %100 ]
  %173 = add i32 %101, 1
  %174 = icmp ugt i32 %173, %0
  br i1 %174, label %175, label %100, !llvm.loop !82

175:                                              ; preds = %161, %170, %106, %88, %95, %79, %56, %11
  %176 = phi i32 [ %12, %11 ], [ %0, %56 ], [ %75, %88 ], [ %97, %95 ], [ %75, %79 ], [ %102, %161 ], [ %172, %170 ], [ %102, %106 ]
  ret i32 %176
}

declare i32 @FSE_optimalTableLog_internal(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef captures(address_is_null) %10, i32 noundef %11) unnamed_addr #2 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %4, ptr %13, align 4, !tbaa !19
  %16 = ptrtoint ptr %7 to i64
  %17 = sub i64 0, %16
  %18 = and i64 %17, 7
  %19 = icmp ult i64 %8, %18
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 %18
  %21 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %18)
  %22 = select i1 %19, ptr null, ptr %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = icmp ult i64 %21, 7944
  br i1 %24, label %243, label %25

25:                                               ; preds = %12
  %26 = icmp eq i64 %3, 0
  %27 = icmp eq i64 %1, 0
  %28 = or i1 %27, %26
  br i1 %28, label %243, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i64 %3, 131072
  br i1 %30, label %243, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %5, 12
  br i1 %32, label %243, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %4, 255
  br i1 %34, label %243, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i32 255, ptr %13, align 4, !tbaa !19
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ 255, %37 ], [ %4, %35 ]
  %40 = icmp eq i32 %5, 0
  %41 = select i1 %40, i32 11, i32 %5
  %42 = and i32 %11, 4
  %43 = icmp eq i32 %42, 0
  %44 = icmp eq ptr %10, null
  %45 = or i1 %44, %43
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %10, align 4, !tbaa !19
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %243

51:                                               ; preds = %46, %38
  %52 = and i32 %11, 8
  %53 = icmp ne i32 %52, 0
  %54 = icmp samesign ugt i64 %3, 40959
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  store i32 %39, ptr %14, align 4, !tbaa !19
  %57 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %14, ptr noundef %2, i64 noundef 4096) #12
  %58 = zext i32 %57 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  %59 = load i32, ptr %13, align 4, !tbaa !19
  store i32 %59, ptr %15, align 4, !tbaa !19
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %61 = getelementptr inbounds i8, ptr %60, i64 -4096
  %62 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %15, ptr noundef nonnull %61, i64 noundef 4096) #12
  %63 = zext i32 %62 to i64
  %64 = add nuw nsw i64 %63, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %65 = icmp samesign ugt i64 %64, 68
  br i1 %65, label %66, label %243

66:                                               ; preds = %56, %51
  %67 = getelementptr inbounds nuw i8, ptr %22, i64 3080
  %68 = call i64 @HIST_count_wksp(ptr noundef %22, ptr noundef nonnull %13, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %67, i64 noundef 4096) #12
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %243

70:                                               ; preds = %66
  %71 = icmp eq i64 %68, %3
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = load i8, ptr %2, align 1, !tbaa !5
  store i8 %73, ptr %0, align 1, !tbaa !5
  br label %243

74:                                               ; preds = %70
  %75 = lshr i64 %3, 7
  %76 = add nuw nsw i64 %75, 4
  %77 = icmp ugt i64 %68, %76
  br i1 %77, label %78, label %243

78:                                               ; preds = %74
  br i1 %44, label %94, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %10, align 4, !tbaa !19
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, ptr %13, align 4, !tbaa !19
  %84 = call i32 @HUF_validateCTable(ptr noundef %9, ptr noundef nonnull %20, i32 noundef %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i32 [ 0, %86 ], [ %80, %79 ]
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %45, %89
  br i1 %90, label %94, label %92

91:                                               ; preds = %82
  br i1 %45, label %94, label %92

92:                                               ; preds = %87, %91
  %93 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %243

94:                                               ; preds = %91, %78, %87
  %95 = load i32, ptr %13, align 4, !tbaa !19
  %96 = getelementptr inbounds nuw i8, ptr %22, i64 1024
  %97 = call i32 @HUF_optimalTableLog(i32 noundef %41, i64 noundef %3, i32 noundef %95, ptr noundef nonnull %67, i64 noundef 4864, ptr noundef nonnull %96, ptr noundef nonnull %20, i32 noundef %11)
  %98 = load i32, ptr %13, align 4, !tbaa !19
  %99 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %96, ptr noundef nonnull %20, i32 noundef %98, i32 noundef %97, ptr noundef nonnull %67, i64 noundef 4864)
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %101, label %243

101:                                              ; preds = %94
  %102 = trunc nuw nsw i64 %99 to i32
  %103 = load i32, ptr %13, align 4, !tbaa !19
  %104 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %96, i32 noundef %103, i32 noundef %102, ptr noundef nonnull %67, i64 noundef 748)
  %105 = icmp ult i64 %104, -119
  br i1 %105, label %106, label %243

106:                                              ; preds = %101
  br i1 %44, label %233, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %10, align 4, !tbaa !19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %230, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %13, align 4, !tbaa !19
  %112 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %113 = icmp slt i32 %111, 0
  br i1 %113, label %228, label %114

114:                                              ; preds = %110
  %115 = zext nneg i32 %111 to i64
  switch i32 %111, label %116 [
    i32 2147483647, label %147
    i32 3, label %147
    i32 2, label %147
    i32 1, label %147
    i32 0, label %147
  ]

116:                                              ; preds = %114
  %117 = add nuw nsw i64 %115, 1
  %118 = and i64 %117, 3
  %119 = icmp eq i64 %118, 0
  %120 = select i1 %119, i64 4, i64 %118
  %121 = sub nsw i64 %117, %120
  br label %122

122:                                              ; preds = %122, %116
  %123 = phi i64 [ 0, %116 ], [ %142, %122 ]
  %124 = phi <2 x i64> [ zeroinitializer, %116 ], [ %140, %122 ]
  %125 = phi <2 x i64> [ zeroinitializer, %116 ], [ %141, %122 ]
  %126 = getelementptr inbounds nuw i64, ptr %112, i64 %123
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %128 = load <2 x i64>, ptr %126, align 8, !tbaa !14
  %129 = load <2 x i64>, ptr %127, align 8, !tbaa !14
  %130 = and <2 x i64> %128, splat (i64 255)
  %131 = and <2 x i64> %129, splat (i64 255)
  %132 = getelementptr inbounds nuw i32, ptr %20, i64 %123
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %134 = load <2 x i32>, ptr %132, align 4, !tbaa !19
  %135 = load <2 x i32>, ptr %133, align 4, !tbaa !19
  %136 = zext <2 x i32> %134 to <2 x i64>
  %137 = zext <2 x i32> %135 to <2 x i64>
  %138 = mul nuw nsw <2 x i64> %130, %136
  %139 = mul nuw nsw <2 x i64> %131, %137
  %140 = add <2 x i64> %138, %124
  %141 = add <2 x i64> %139, %125
  %142 = add nuw i64 %123, 4
  %143 = icmp eq i64 %142, %121
  br i1 %143, label %144, label %122, !llvm.loop !85

144:                                              ; preds = %122
  %145 = add <2 x i64> %141, %140
  %146 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %145)
  br label %147

147:                                              ; preds = %144, %114, %114, %114, %114, %114
  %148 = phi i64 [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ %121, %144 ]
  %149 = phi i64 [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ %146, %144 ]
  br label %150

150:                                              ; preds = %147, %155
  %151 = phi i64 [ %159, %155 ], [ %148, %147 ]
  %152 = phi i64 [ %165, %155 ], [ %149, %147 ]
  %153 = icmp eq i64 %151, 2147483647
  br i1 %153, label %154, label %155, !prof !48, !nosanitize !47

154:                                              ; preds = %150
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

155:                                              ; preds = %150
  %156 = getelementptr inbounds nuw i64, ptr %112, i64 %151
  %157 = load i64, ptr %156, align 8, !tbaa !14
  %158 = and i64 %157, 255
  %159 = add nuw nsw i64 %151, 1
  %160 = trunc i64 %159 to i32
  %161 = getelementptr inbounds nuw i32, ptr %20, i64 %151
  %162 = load i32, ptr %161, align 4, !tbaa !19
  %163 = zext i32 %162 to i64
  %164 = mul nuw nsw i64 %158, %163
  %165 = add i64 %164, %152
  %166 = icmp slt i32 %111, %160
  br i1 %166, label %167, label %150, !llvm.loop !86

167:                                              ; preds = %155
  %168 = lshr i64 %165, 3
  %169 = getelementptr inbounds nuw i8, ptr %20, i64 1032
  switch i32 %111, label %170 [
    i32 2147483647, label %201
    i32 7, label %201
    i32 6, label %201
    i32 5, label %201
    i32 4, label %201
    i32 3, label %201
    i32 2, label %201
    i32 1, label %201
    i32 0, label %201
  ]

170:                                              ; preds = %167
  %171 = add nuw nsw i64 %115, 1
  %172 = and i64 %171, 3
  %173 = icmp eq i64 %172, 0
  %174 = select i1 %173, i64 4, i64 %172
  %175 = sub nsw i64 %171, %174
  br label %176

176:                                              ; preds = %176, %170
  %177 = phi i64 [ 0, %170 ], [ %196, %176 ]
  %178 = phi <2 x i64> [ zeroinitializer, %170 ], [ %194, %176 ]
  %179 = phi <2 x i64> [ zeroinitializer, %170 ], [ %195, %176 ]
  %180 = getelementptr inbounds nuw i64, ptr %169, i64 %177
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 16
  %182 = load <2 x i64>, ptr %180, align 8, !tbaa !14
  %183 = load <2 x i64>, ptr %181, align 8, !tbaa !14
  %184 = and <2 x i64> %182, splat (i64 255)
  %185 = and <2 x i64> %183, splat (i64 255)
  %186 = getelementptr inbounds nuw i32, ptr %20, i64 %177
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %188 = load <2 x i32>, ptr %186, align 4, !tbaa !19
  %189 = load <2 x i32>, ptr %187, align 4, !tbaa !19
  %190 = zext <2 x i32> %188 to <2 x i64>
  %191 = zext <2 x i32> %189 to <2 x i64>
  %192 = mul nuw nsw <2 x i64> %184, %190
  %193 = mul nuw nsw <2 x i64> %185, %191
  %194 = add <2 x i64> %192, %178
  %195 = add <2 x i64> %193, %179
  %196 = add nuw i64 %177, 4
  %197 = icmp eq i64 %196, %175
  br i1 %197, label %198, label %176, !llvm.loop !87

198:                                              ; preds = %176
  %199 = add <2 x i64> %195, %194
  %200 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %199)
  br label %201

201:                                              ; preds = %198, %167, %167, %167, %167, %167, %167, %167, %167, %167
  %202 = phi i64 [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ %175, %198 ]
  %203 = phi i64 [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ 0, %167 ], [ %200, %198 ]
  br label %204

204:                                              ; preds = %201, %209
  %205 = phi i64 [ %213, %209 ], [ %202, %201 ]
  %206 = phi i64 [ %219, %209 ], [ %203, %201 ]
  %207 = icmp eq i64 %205, 2147483647
  br i1 %207, label %208, label %209, !prof !48, !nosanitize !47

208:                                              ; preds = %204
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

209:                                              ; preds = %204
  %210 = getelementptr inbounds nuw i64, ptr %169, i64 %205
  %211 = load i64, ptr %210, align 8, !tbaa !14
  %212 = and i64 %211, 255
  %213 = add nuw nsw i64 %205, 1
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds nuw i32, ptr %20, i64 %205
  %216 = load i32, ptr %215, align 4, !tbaa !19
  %217 = zext i32 %216 to i64
  %218 = mul nuw nsw i64 %212, %217
  %219 = add i64 %218, %206
  %220 = icmp slt i32 %111, %214
  br i1 %220, label %221, label %204, !llvm.loop !88

221:                                              ; preds = %209
  %222 = lshr i64 %219, 3
  %223 = add i64 %222, %104
  %224 = icmp ugt i64 %168, %223
  %225 = add i64 %104, 12
  %226 = icmp ult i64 %225, %3
  %227 = and i1 %226, %224
  br i1 %227, label %236, label %228

228:                                              ; preds = %110, %221
  %229 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %243

230:                                              ; preds = %107
  %231 = add nuw i64 %104, 12
  %232 = icmp ult i64 %231, %3
  br i1 %232, label %236, label %243

233:                                              ; preds = %106
  %234 = add nuw i64 %104, 12
  %235 = icmp ult i64 %234, %3
  br i1 %235, label %237, label %243

236:                                              ; preds = %221, %230
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %237

237:                                              ; preds = %233, %236
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 %104
  %239 = icmp eq ptr %9, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %96, i64 2056, i1 false)
  br label %241

241:                                              ; preds = %240, %237
  %242 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %238, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %96, i32 noundef %11)
  br label %243

243:                                              ; preds = %230, %233, %101, %228, %66, %72, %33, %31, %29, %25, %12, %56, %94, %74, %241, %92, %49
  %244 = phi i64 [ %50, %49 ], [ %93, %92 ], [ %242, %241 ], [ %99, %94 ], [ 0, %74 ], [ 0, %56 ], [ -66, %12 ], [ 0, %25 ], [ -72, %29 ], [ -44, %31 ], [ -46, %33 ], [ %68, %66 ], [ 1, %72 ], [ 0, %230 ], [ 0, %233 ], [ %104, %101 ], [ %229, %228 ]
  ret i64 %244
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @FSE_compress_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @HUF_simpleQuickSort(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2, i32 %1), !nosanitize !47
  %5 = extractvalue { i32, i1 } %4, 1, !nosanitize !47
  br i1 %5, label %6, label %7, !prof !48, !nosanitize !47

6:                                                ; preds = %87, %78, %3
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

7:                                                ; preds = %3
  %8 = extractvalue { i32, i1 } %4, 0, !nosanitize !47
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = icmp slt i32 %1, %2
  br i1 %11, label %42, label %110

12:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

13:                                               ; preds = %7
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %14
  %16 = icmp slt i32 %8, 1
  br i1 %16, label %110, label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ %39, %38 ], [ 1, %13 ]
  %19 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %15, i64 %18
  %20 = load <2 x i32>, ptr %19, align 4
  %21 = load i32, ptr %19, align 4, !tbaa !19
  br label %22

22:                                               ; preds = %17, %28
  %23 = phi i64 [ %18, %17 ], [ %24, %28 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %15, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = icmp ult i32 %26, %21
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %15, i64 %23
  %30 = load i64, ptr %25, align 4
  store i64 %30, ptr %29, align 4
  %31 = icmp sgt i64 %23, 1
  br i1 %31, label %22, label %32, !llvm.loop !89

32:                                               ; preds = %22, %28
  %33 = phi i64 [ %23, %22 ], [ 0, %28 ]
  %34 = shl i64 %33, 32
  %35 = ashr exact i64 %34, 29
  %36 = getelementptr inbounds i8, ptr %15, i64 %35
  store <2 x i32> %20, ptr %36, align 4
  %37 = icmp eq i64 %18, 2147483647
  br i1 %37, label %12, label %38, !prof !48, !nosanitize !47

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %18, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp slt i32 %8, %40
  br i1 %41, label %110, label %17, !llvm.loop !90

42:                                               ; preds = %10, %106
  %43 = phi i32 [ %108, %106 ], [ %1, %10 ]
  %44 = phi i32 [ %107, %106 ], [ %2, %10 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !42
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 -1)
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !47
  br i1 %49, label %50, label %51, !prof !48, !nosanitize !47

50:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

51:                                               ; preds = %42
  %52 = extractvalue { i32, i1 } %48, 0, !nosanitize !47
  %53 = sext i32 %43 to i64
  br label %54

54:                                               ; preds = %70, %51
  %55 = phi i64 [ %53, %51 ], [ %72, %70 ]
  %56 = phi i32 [ %52, %51 ], [ %71, %70 ]
  %57 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %55
  %58 = load i32, ptr %57, align 4, !tbaa !42
  %59 = icmp ugt i32 %58, %47
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %56, i32 1), !nosanitize !47
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !47
  br i1 %62, label %63, label %64, !prof !48, !nosanitize !47

63:                                               ; preds = %75, %60
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !47
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %66
  %68 = load i64, ptr %67, align 4
  %69 = load i64, ptr %57, align 4
  store i64 %69, ptr %67, align 4
  store i64 %68, ptr %57, align 4
  br label %70

70:                                               ; preds = %64, %54
  %71 = phi i32 [ %65, %64 ], [ %56, %54 ]
  %72 = add nsw i64 %55, 1
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %44, %73
  br i1 %74, label %75, label %54, !llvm.loop !91

75:                                               ; preds = %70
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %71, i32 1), !nosanitize !47
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !47
  br i1 %77, label %63, label %78, !prof !48, !nosanitize !47

78:                                               ; preds = %75
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !47
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %80
  %82 = load i64, ptr %81, align 4
  %83 = load i64, ptr %46, align 4
  store i64 %83, ptr %81, align 4
  store i64 %82, ptr %46, align 4
  %84 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %79, i32 %43), !nosanitize !47
  %85 = extractvalue { i32, i1 } %84, 0, !nosanitize !47
  %86 = extractvalue { i32, i1 } %84, 1, !nosanitize !47
  br i1 %86, label %6, label %87, !prof !48, !nosanitize !47

87:                                               ; preds = %78
  %88 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %44, i32 %79), !nosanitize !47
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !47
  br i1 %89, label %6, label %90, !prof !48, !nosanitize !47

90:                                               ; preds = %87
  %91 = extractvalue { i32, i1 } %88, 0, !nosanitize !47
  %92 = icmp slt i32 %85, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = add nsw i32 %79, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %94)
  %95 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %79, i32 1), !nosanitize !47
  %96 = extractvalue { i32, i1 } %95, 1, !nosanitize !47
  br i1 %96, label %97, label %98, !prof !48, !nosanitize !47

97:                                               ; preds = %100, %93
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

98:                                               ; preds = %93
  %99 = extractvalue { i32, i1 } %95, 0, !nosanitize !47
  br label %106

100:                                              ; preds = %90
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %79, i32 1), !nosanitize !47
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !47
  br i1 %102, label %97, label %103, !prof !48, !nosanitize !47

103:                                              ; preds = %100
  %104 = extractvalue { i32, i1 } %101, 0, !nosanitize !47
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %104, i32 noundef %44)
  %105 = add nsw i32 %79, -1
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi i32 [ %44, %98 ], [ %105, %103 ]
  %108 = phi i32 [ %99, %98 ], [ %43, %103 ]
  %109 = icmp slt i32 %108, %107
  br i1 %109, label %42, label %110, !llvm.loop !92

110:                                              ; preds = %106, %38, %10, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #10 {
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = icmp ult i64 %1, 8
  br i1 %10, label %2527, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp eq i64 %1, 8
  br i1 %14, label %2527, label %15

15:                                               ; preds = %11
  %16 = and i64 %6, 255
  %17 = mul i64 %16, %3
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ult i64 %1, %19
  %21 = icmp samesign ugt i32 %8, 11
  %22 = select i1 %20, i1 true, i1 %21
  %23 = trunc i64 %3 to i32
  br i1 %22, label %24, label %299

24:                                               ; preds = %15
  %25 = srem i32 %23, 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %100

27:                                               ; preds = %24
  %28 = xor i32 %23, -2147483648
  %29 = add nsw i32 %25, -1
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %67, !prof !75, !nosanitize !47

31:                                               ; preds = %27
  %32 = and i32 %25, 1
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %31
  %35 = and i32 %25, 2147483646
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %23, %34 ], [ %53, %36 ]
  %38 = phi i64 [ 0, %34 ], [ %63, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %64, %36 ]
  %40 = phi i32 [ 0, %34 ], [ %65, %36 ]
  %41 = add i32 %37, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw i64, ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !14
  %48 = and i64 %47, 255
  %49 = lshr i64 %38, %48
  %50 = and i64 %47, -256
  %51 = or i64 %49, %50
  %52 = add i64 %47, %39
  %53 = add i32 %37, -2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %2, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds nuw i64, ptr %9, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = and i64 %59, 255
  %61 = lshr i64 %51, %60
  %62 = and i64 %59, -256
  %63 = or i64 %61, %62
  %64 = add i64 %59, %52
  %65 = add i32 %40, 2
  %66 = icmp eq i32 %65, %35
  br i1 %66, label %68, label %36, !llvm.loop !76

67:                                               ; preds = %185, %239, %242, %27, %107, %110, %113, %116
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

68:                                               ; preds = %36, %31
  %69 = phi i64 [ poison, %31 ], [ %63, %36 ]
  %70 = phi i64 [ poison, %31 ], [ %64, %36 ]
  %71 = phi i32 [ %23, %31 ], [ %53, %36 ]
  %72 = phi i64 [ 0, %31 ], [ %63, %36 ]
  %73 = phi i64 [ 0, %31 ], [ %64, %36 ]
  %74 = icmp eq i32 %32, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %68
  %76 = add i32 %71, -1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %2, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !5
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds nuw i64, ptr %9, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !14
  %83 = and i64 %82, 255
  %84 = lshr i64 %72, %83
  %85 = and i64 %82, -256
  %86 = or i64 %84, %85
  %87 = add i64 %82, %73
  br label %88

88:                                               ; preds = %68, %75
  %89 = phi i64 [ %69, %68 ], [ %86, %75 ]
  %90 = phi i64 [ %70, %68 ], [ %87, %75 ]
  %91 = sub nsw i32 %23, %25
  %92 = and i64 %90, 255
  %93 = lshr i64 %92, 3
  %94 = sub nsw i64 64, %92
  %95 = lshr i64 %89, %94
  %96 = and i64 %90, 7
  store i64 %95, ptr %0, align 1, !tbaa !14
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %93
  %98 = icmp ugt ptr %97, %13
  %99 = select i1 %98, ptr %13, ptr %97
  br label %100

100:                                              ; preds = %88, %24
  %101 = phi i64 [ 0, %24 ], [ %96, %88 ]
  %102 = phi ptr [ %0, %24 ], [ %99, %88 ]
  %103 = phi i64 [ 0, %24 ], [ %89, %88 ]
  %104 = phi i32 [ %23, %24 ], [ %91, %88 ]
  %105 = and i32 %104, 7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %173, label %107

107:                                              ; preds = %100
  %108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 -1)
  %109 = extractvalue { i32, i1 } %108, 1, !nosanitize !47
  br i1 %109, label %67, label %110, !prof !48, !nosanitize !47

110:                                              ; preds = %107
  %111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 -2)
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !47
  br i1 %112, label %67, label %113, !prof !48, !nosanitize !47

113:                                              ; preds = %110
  %114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 -3)
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !47
  br i1 %115, label %67, label %116, !prof !48, !nosanitize !47

116:                                              ; preds = %113
  %117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 -4)
  %118 = extractvalue { i32, i1 } %117, 1, !nosanitize !47
  br i1 %118, label %67, label %119, !prof !48, !nosanitize !47

119:                                              ; preds = %116
  %120 = extractvalue { i32, i1 } %114, 0, !nosanitize !47
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %2, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw i64, ptr %9, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !14
  %127 = extractvalue { i32, i1 } %111, 0, !nosanitize !47
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %2, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw i64, ptr %9, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !14
  %134 = extractvalue { i32, i1 } %108, 0, !nosanitize !47
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %2, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds nuw i64, ptr %9, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !14
  %141 = add i64 %140, %101
  %142 = add i64 %133, %141
  %143 = add i64 %126, %142
  %144 = and i64 %140, 255
  %145 = lshr i64 %103, %144
  %146 = or i64 %145, %140
  %147 = and i64 %133, 255
  %148 = lshr i64 %146, %147
  %149 = or i64 %148, %133
  %150 = and i64 %126, 255
  %151 = lshr i64 %149, %150
  %152 = or i64 %151, %126
  %153 = extractvalue { i32, i1 } %117, 0, !nosanitize !47
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %2, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw i64, ptr %9, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !14
  %160 = and i64 %159, 255
  %161 = lshr i64 %152, %160
  %162 = and i64 %159, -256
  %163 = or i64 %161, %162
  %164 = add i64 %159, %143
  %165 = and i64 %164, 255
  %166 = lshr i64 %165, 3
  %167 = sub nsw i64 64, %165
  %168 = lshr i64 %163, %167
  %169 = and i64 %164, 7
  store i64 %168, ptr %102, align 1, !tbaa !14
  %170 = getelementptr inbounds nuw i8, ptr %102, i64 %166
  %171 = icmp ugt ptr %170, %13
  %172 = select i1 %171, ptr %13, ptr %170
  br label %173

173:                                              ; preds = %119, %100
  %174 = phi i64 [ %101, %100 ], [ %169, %119 ]
  %175 = phi ptr [ %102, %100 ], [ %172, %119 ]
  %176 = phi i64 [ %103, %100 ], [ %163, %119 ]
  %177 = phi i32 [ %104, %100 ], [ %153, %119 ]
  %178 = getelementptr i8, ptr %2, i64 -8
  %179 = icmp sgt i32 %177, 0
  br i1 %179, label %180, label %2504

180:                                              ; preds = %173
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr i8, ptr %2, i64 -1
  %183 = getelementptr i8, ptr %2, i64 -2
  %184 = getelementptr i8, ptr %2, i64 -3
  br label %185

185:                                              ; preds = %180, %245
  %186 = phi i64 [ %181, %180 ], [ %297, %245 ]
  %187 = phi i64 [ %176, %180 ], [ %287, %245 ]
  %188 = phi ptr [ %175, %180 ], [ %296, %245 ]
  %189 = phi i64 [ %174, %180 ], [ %293, %245 ]
  %190 = getelementptr i8, ptr %182, i64 %186
  %191 = load i8, ptr %190, align 1, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds nuw i64, ptr %9, i64 %192
  %194 = load i64, ptr %193, align 8, !tbaa !14
  %195 = and i64 %194, 255
  %196 = lshr i64 %187, %195
  %197 = or i64 %196, %194
  %198 = add i64 %194, %189
  %199 = getelementptr i8, ptr %183, i64 %186
  %200 = load i8, ptr %199, align 1, !tbaa !5
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds nuw i64, ptr %9, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !14
  %204 = and i64 %203, 255
  %205 = lshr i64 %197, %204
  %206 = or i64 %205, %203
  %207 = add i64 %203, %198
  %208 = getelementptr i8, ptr %184, i64 %186
  %209 = load i8, ptr %208, align 1, !tbaa !5
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds nuw i64, ptr %9, i64 %210
  %212 = load i64, ptr %211, align 8, !tbaa !14
  %213 = and i64 %212, 255
  %214 = lshr i64 %206, %213
  %215 = or i64 %214, %212
  %216 = add i64 %212, %207
  %217 = add nsw i64 %186, -4
  %218 = getelementptr inbounds i8, ptr %2, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !5
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds nuw i64, ptr %9, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !14
  %223 = and i64 %222, 255
  %224 = lshr i64 %215, %223
  %225 = and i64 %222, -256
  %226 = or i64 %224, %225
  %227 = add i64 %222, %216
  %228 = and i64 %227, 255
  %229 = lshr i64 %228, 3
  %230 = sub nsw i64 64, %228
  %231 = lshr i64 %226, %230
  %232 = and i64 %227, 7
  store i64 %231, ptr %188, align 1, !tbaa !14
  %233 = getelementptr inbounds nuw i8, ptr %188, i64 %229
  %234 = icmp ugt ptr %233, %13
  %235 = select i1 %234, ptr %13, ptr %233
  %236 = trunc nsw i64 %217 to i32
  %237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %236, i32 -1)
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !47
  br i1 %238, label %67, label %239, !prof !48, !nosanitize !47

239:                                              ; preds = %185
  %240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %236, i32 -2)
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !47
  br i1 %241, label %67, label %242, !prof !48, !nosanitize !47

242:                                              ; preds = %239
  %243 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %236, i32 -3)
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !47
  br i1 %244, label %67, label %245, !prof !48, !nosanitize !47

245:                                              ; preds = %242
  %246 = extractvalue { i32, i1 } %240, 0, !nosanitize !47
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %2, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !5
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds nuw i64, ptr %9, i64 %250
  %252 = load i64, ptr %251, align 8, !tbaa !14
  %253 = extractvalue { i32, i1 } %237, 0, !nosanitize !47
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %2, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !5
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds nuw i64, ptr %9, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !14
  %260 = add i64 %252, %259
  %261 = and i64 %252, 255
  %262 = lshr i64 %259, %261
  %263 = or i64 %262, %252
  %264 = extractvalue { i32, i1 } %243, 0, !nosanitize !47
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %2, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !5
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds nuw i64, ptr %9, i64 %268
  %270 = load i64, ptr %269, align 8, !tbaa !14
  %271 = and i64 %270, 255
  %272 = lshr i64 %263, %271
  %273 = or i64 %272, %270
  %274 = add i64 %270, %260
  %275 = getelementptr i8, ptr %178, i64 %186
  %276 = load i8, ptr %275, align 1, !tbaa !5
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds nuw i64, ptr %9, i64 %277
  %279 = load i64, ptr %278, align 8, !tbaa !14
  %280 = and i64 %279, 255
  %281 = lshr i64 %273, %280
  %282 = and i64 %279, -256
  %283 = or i64 %281, %282
  %284 = add i64 %279, %274
  %285 = and i64 %284, 255
  %286 = lshr i64 %226, %285
  %287 = or i64 %283, %286
  %288 = add i64 %284, %232
  %289 = and i64 %288, 255
  %290 = lshr i64 %289, 3
  %291 = sub nsw i64 64, %289
  %292 = lshr i64 %287, %291
  %293 = and i64 %288, 7
  store i64 %292, ptr %235, align 1, !tbaa !14
  %294 = getelementptr inbounds nuw i8, ptr %235, i64 %290
  %295 = icmp ugt ptr %294, %13
  %296 = select i1 %295, ptr %13, ptr %294
  %297 = add nsw i64 %186, -8
  %298 = icmp sgt i64 %186, 8
  br i1 %298, label %185, label %2504, !llvm.loop !77

299:                                              ; preds = %15
  switch i32 %8, label %2050 [
    i32 11, label %300
    i32 10, label %605
    i32 9, label %907
    i32 8, label %1250
    i32 7, label %1631
  ]

300:                                              ; preds = %299
  %301 = srem i32 %23, 5
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %374

303:                                              ; preds = %300
  %304 = xor i32 %23, -2147483648
  %305 = add nsw i32 %301, -1
  %306 = icmp ugt i32 %304, %305
  br i1 %306, label %307, label %343, !prof !75, !nosanitize !47

307:                                              ; preds = %303
  %308 = and i32 %301, 1
  %309 = icmp eq i32 %305, 0
  br i1 %309, label %344, label %310

310:                                              ; preds = %307
  %311 = and i32 %301, 2147483646
  br label %312

312:                                              ; preds = %312, %310
  %313 = phi i32 [ %23, %310 ], [ %329, %312 ]
  %314 = phi i64 [ 0, %310 ], [ %339, %312 ]
  %315 = phi i64 [ 0, %310 ], [ %340, %312 ]
  %316 = phi i32 [ 0, %310 ], [ %341, %312 ]
  %317 = add i32 %313, -1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %2, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !5
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds nuw i64, ptr %9, i64 %321
  %323 = load i64, ptr %322, align 8, !tbaa !14
  %324 = and i64 %323, 255
  %325 = lshr i64 %314, %324
  %326 = and i64 %323, -256
  %327 = or i64 %325, %326
  %328 = add i64 %323, %315
  %329 = add i32 %313, -2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, ptr %2, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !5
  %333 = zext i8 %332 to i64
  %334 = getelementptr inbounds nuw i64, ptr %9, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !14
  %336 = and i64 %335, 255
  %337 = lshr i64 %327, %336
  %338 = and i64 %335, -256
  %339 = or i64 %337, %338
  %340 = add i64 %335, %328
  %341 = add i32 %316, 2
  %342 = icmp eq i32 %341, %311
  br i1 %342, label %344, label %312, !llvm.loop !76

343:                                              ; preds = %472, %533, %536, %539, %303, %381, %384, %387, %390, %393
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

344:                                              ; preds = %312, %307
  %345 = phi i64 [ poison, %307 ], [ %339, %312 ]
  %346 = phi i64 [ poison, %307 ], [ %340, %312 ]
  %347 = phi i32 [ %23, %307 ], [ %329, %312 ]
  %348 = phi i64 [ 0, %307 ], [ %339, %312 ]
  %349 = phi i64 [ 0, %307 ], [ %340, %312 ]
  %350 = icmp eq i32 %308, 0
  br i1 %350, label %364, label %351

351:                                              ; preds = %344
  %352 = add i32 %347, -1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %2, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = zext i8 %355 to i64
  %357 = getelementptr inbounds nuw i64, ptr %9, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !14
  %359 = and i64 %358, 255
  %360 = lshr i64 %348, %359
  %361 = and i64 %358, -256
  %362 = or i64 %360, %361
  %363 = add i64 %358, %349
  br label %364

364:                                              ; preds = %344, %351
  %365 = phi i64 [ %345, %344 ], [ %362, %351 ]
  %366 = phi i64 [ %346, %344 ], [ %363, %351 ]
  %367 = sub nsw i32 %23, %301
  %368 = and i64 %366, 255
  %369 = lshr i64 %368, 3
  %370 = sub nsw i64 64, %368
  %371 = lshr i64 %365, %370
  %372 = and i64 %366, 7
  store i64 %371, ptr %0, align 1, !tbaa !14
  %373 = getelementptr inbounds nuw i8, ptr %0, i64 %369
  br label %374

374:                                              ; preds = %364, %300
  %375 = phi i64 [ %372, %364 ], [ 0, %300 ]
  %376 = phi ptr [ %373, %364 ], [ %0, %300 ]
  %377 = phi i64 [ %365, %364 ], [ 0, %300 ]
  %378 = phi i32 [ %367, %364 ], [ %23, %300 ]
  %379 = srem i32 %378, 10
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %459, label %381

381:                                              ; preds = %374
  %382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -1)
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !47
  br i1 %383, label %343, label %384, !prof !48, !nosanitize !47

384:                                              ; preds = %381
  %385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -2)
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !47
  br i1 %386, label %343, label %387, !prof !48, !nosanitize !47

387:                                              ; preds = %384
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -3)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !47
  br i1 %389, label %343, label %390, !prof !48, !nosanitize !47

390:                                              ; preds = %387
  %391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -4)
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !47
  br i1 %392, label %343, label %393, !prof !48, !nosanitize !47

393:                                              ; preds = %390
  %394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -5)
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !47
  br i1 %395, label %343, label %396, !prof !48, !nosanitize !47

396:                                              ; preds = %393
  %397 = extractvalue { i32, i1 } %391, 0, !nosanitize !47
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %2, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds nuw i64, ptr %9, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !14
  %404 = extractvalue { i32, i1 } %388, 0, !nosanitize !47
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %2, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds nuw i64, ptr %9, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !14
  %411 = extractvalue { i32, i1 } %385, 0, !nosanitize !47
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %2, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = zext i8 %414 to i64
  %416 = getelementptr inbounds nuw i64, ptr %9, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !14
  %418 = extractvalue { i32, i1 } %382, 0, !nosanitize !47
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %2, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = zext i8 %421 to i64
  %423 = getelementptr inbounds nuw i64, ptr %9, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !14
  %425 = add i64 %424, %375
  %426 = add i64 %417, %425
  %427 = add i64 %410, %426
  %428 = add i64 %403, %427
  %429 = and i64 %424, 255
  %430 = lshr i64 %377, %429
  %431 = or i64 %430, %424
  %432 = and i64 %417, 255
  %433 = lshr i64 %431, %432
  %434 = or i64 %433, %417
  %435 = and i64 %410, 255
  %436 = lshr i64 %434, %435
  %437 = or i64 %436, %410
  %438 = and i64 %403, 255
  %439 = lshr i64 %437, %438
  %440 = or i64 %439, %403
  %441 = extractvalue { i32, i1 } %394, 0, !nosanitize !47
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, ptr %2, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = zext i8 %444 to i64
  %446 = getelementptr inbounds nuw i64, ptr %9, i64 %445
  %447 = load i64, ptr %446, align 8, !tbaa !14
  %448 = and i64 %447, 255
  %449 = lshr i64 %440, %448
  %450 = and i64 %447, -256
  %451 = or i64 %449, %450
  %452 = add i64 %447, %428
  %453 = and i64 %452, 255
  %454 = lshr i64 %453, 3
  %455 = sub nsw i64 64, %453
  %456 = lshr i64 %451, %455
  %457 = and i64 %452, 7
  store i64 %456, ptr %376, align 1, !tbaa !14
  %458 = getelementptr inbounds nuw i8, ptr %376, i64 %454
  br label %459

459:                                              ; preds = %396, %374
  %460 = phi i64 [ %375, %374 ], [ %457, %396 ]
  %461 = phi ptr [ %376, %374 ], [ %458, %396 ]
  %462 = phi i64 [ %377, %374 ], [ %451, %396 ]
  %463 = phi i32 [ %378, %374 ], [ %441, %396 ]
  %464 = getelementptr i8, ptr %2, i64 -10
  %465 = icmp sgt i32 %463, 0
  br i1 %465, label %466, label %2504

466:                                              ; preds = %459
  %467 = zext nneg i32 %463 to i64
  %468 = getelementptr i8, ptr %2, i64 -1
  %469 = getelementptr i8, ptr %2, i64 -2
  %470 = getelementptr i8, ptr %2, i64 -3
  %471 = getelementptr i8, ptr %2, i64 -4
  br label %472

472:                                              ; preds = %466, %542
  %473 = phi i64 [ %467, %466 ], [ %603, %542 ]
  %474 = phi i64 [ %462, %466 ], [ %595, %542 ]
  %475 = phi ptr [ %461, %466 ], [ %602, %542 ]
  %476 = phi i64 [ %460, %466 ], [ %601, %542 ]
  %477 = getelementptr i8, ptr %468, i64 %473
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds nuw i64, ptr %9, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !14
  %482 = and i64 %481, 255
  %483 = lshr i64 %474, %482
  %484 = or i64 %483, %481
  %485 = add i64 %481, %476
  %486 = getelementptr i8, ptr %469, i64 %473
  %487 = load i8, ptr %486, align 1, !tbaa !5
  %488 = zext i8 %487 to i64
  %489 = getelementptr inbounds nuw i64, ptr %9, i64 %488
  %490 = load i64, ptr %489, align 8, !tbaa !14
  %491 = and i64 %490, 255
  %492 = lshr i64 %484, %491
  %493 = or i64 %492, %490
  %494 = add i64 %490, %485
  %495 = getelementptr i8, ptr %470, i64 %473
  %496 = load i8, ptr %495, align 1, !tbaa !5
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds nuw i64, ptr %9, i64 %497
  %499 = load i64, ptr %498, align 8, !tbaa !14
  %500 = and i64 %499, 255
  %501 = lshr i64 %493, %500
  %502 = or i64 %501, %499
  %503 = add i64 %499, %494
  %504 = getelementptr i8, ptr %471, i64 %473
  %505 = load i8, ptr %504, align 1, !tbaa !5
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds nuw i64, ptr %9, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !14
  %509 = and i64 %508, 255
  %510 = lshr i64 %502, %509
  %511 = or i64 %510, %508
  %512 = add i64 %508, %503
  %513 = add nsw i64 %473, -5
  %514 = getelementptr inbounds i8, ptr %2, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !5
  %516 = zext i8 %515 to i64
  %517 = getelementptr inbounds nuw i64, ptr %9, i64 %516
  %518 = load i64, ptr %517, align 8, !tbaa !14
  %519 = and i64 %518, 255
  %520 = lshr i64 %511, %519
  %521 = and i64 %518, -256
  %522 = or i64 %520, %521
  %523 = add i64 %518, %512
  %524 = and i64 %523, 255
  %525 = lshr i64 %524, 3
  %526 = sub nsw i64 64, %524
  %527 = lshr i64 %522, %526
  %528 = and i64 %523, 7
  store i64 %527, ptr %475, align 1, !tbaa !14
  %529 = getelementptr inbounds nuw i8, ptr %475, i64 %525
  %530 = trunc nsw i64 %513 to i32
  %531 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -1)
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !47
  br i1 %532, label %343, label %533, !prof !48, !nosanitize !47

533:                                              ; preds = %472
  %534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -2)
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !47
  br i1 %535, label %343, label %536, !prof !48, !nosanitize !47

536:                                              ; preds = %533
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -3)
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !47
  br i1 %538, label %343, label %539, !prof !48, !nosanitize !47

539:                                              ; preds = %536
  %540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -4)
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !47
  br i1 %541, label %343, label %542, !prof !48, !nosanitize !47

542:                                              ; preds = %539
  %543 = extractvalue { i32, i1 } %537, 0, !nosanitize !47
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, ptr %2, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !5
  %547 = zext i8 %546 to i64
  %548 = getelementptr inbounds nuw i64, ptr %9, i64 %547
  %549 = load i64, ptr %548, align 8, !tbaa !14
  %550 = extractvalue { i32, i1 } %534, 0, !nosanitize !47
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, ptr %2, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !5
  %554 = zext i8 %553 to i64
  %555 = getelementptr inbounds nuw i64, ptr %9, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !14
  %557 = extractvalue { i32, i1 } %531, 0, !nosanitize !47
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, ptr %2, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds nuw i64, ptr %9, i64 %561
  %563 = load i64, ptr %562, align 8, !tbaa !14
  %564 = add i64 %556, %563
  %565 = add i64 %549, %564
  %566 = and i64 %556, 255
  %567 = lshr i64 %563, %566
  %568 = or i64 %567, %556
  %569 = and i64 %549, 255
  %570 = lshr i64 %568, %569
  %571 = or i64 %570, %549
  %572 = extractvalue { i32, i1 } %540, 0, !nosanitize !47
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, ptr %2, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !5
  %576 = zext i8 %575 to i64
  %577 = getelementptr inbounds nuw i64, ptr %9, i64 %576
  %578 = load i64, ptr %577, align 8, !tbaa !14
  %579 = and i64 %578, 255
  %580 = lshr i64 %571, %579
  %581 = or i64 %580, %578
  %582 = add i64 %578, %565
  %583 = getelementptr i8, ptr %464, i64 %473
  %584 = load i8, ptr %583, align 1, !tbaa !5
  %585 = zext i8 %584 to i64
  %586 = getelementptr inbounds nuw i64, ptr %9, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !14
  %588 = and i64 %587, 255
  %589 = lshr i64 %581, %588
  %590 = and i64 %587, -256
  %591 = or i64 %589, %590
  %592 = add i64 %587, %582
  %593 = and i64 %592, 255
  %594 = lshr i64 %522, %593
  %595 = or i64 %591, %594
  %596 = add i64 %592, %528
  %597 = and i64 %596, 255
  %598 = lshr i64 %597, 3
  %599 = sub nsw i64 64, %597
  %600 = lshr i64 %595, %599
  %601 = and i64 %596, 7
  store i64 %600, ptr %529, align 1, !tbaa !14
  %602 = getelementptr inbounds nuw i8, ptr %529, i64 %598
  %603 = add nsw i64 %473, -10
  %604 = icmp sgt i64 %473, 10
  br i1 %604, label %472, label %2504, !llvm.loop !77

605:                                              ; preds = %299
  %606 = srem i32 %23, 5
  %607 = icmp sgt i32 %606, 0
  br i1 %607, label %608, label %679

608:                                              ; preds = %605
  %609 = xor i32 %23, -2147483648
  %610 = add nsw i32 %606, -1
  %611 = icmp ugt i32 %609, %610
  br i1 %611, label %612, label %648, !prof !75, !nosanitize !47

612:                                              ; preds = %608
  %613 = and i32 %606, 1
  %614 = icmp eq i32 %610, 0
  br i1 %614, label %649, label %615

615:                                              ; preds = %612
  %616 = and i32 %606, 2147483646
  br label %617

617:                                              ; preds = %617, %615
  %618 = phi i32 [ %23, %615 ], [ %634, %617 ]
  %619 = phi i64 [ 0, %615 ], [ %644, %617 ]
  %620 = phi i64 [ 0, %615 ], [ %645, %617 ]
  %621 = phi i32 [ 0, %615 ], [ %646, %617 ]
  %622 = add i32 %618, -1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i8, ptr %2, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !5
  %626 = zext i8 %625 to i64
  %627 = getelementptr inbounds nuw i64, ptr %9, i64 %626
  %628 = load i64, ptr %627, align 8, !tbaa !14
  %629 = and i64 %628, 255
  %630 = lshr i64 %619, %629
  %631 = and i64 %628, -256
  %632 = or i64 %630, %631
  %633 = add i64 %628, %620
  %634 = add i32 %618, -2
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8, ptr %2, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !5
  %638 = zext i8 %637 to i64
  %639 = getelementptr inbounds nuw i64, ptr %9, i64 %638
  %640 = load i64, ptr %639, align 8, !tbaa !14
  %641 = and i64 %640, 255
  %642 = lshr i64 %632, %641
  %643 = and i64 %640, -256
  %644 = or i64 %642, %643
  %645 = add i64 %640, %633
  %646 = add i32 %621, 2
  %647 = icmp eq i32 %646, %616
  br i1 %647, label %649, label %617, !llvm.loop !76

648:                                              ; preds = %776, %836, %839, %842, %608, %686, %689, %692, %695, %698
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

649:                                              ; preds = %617, %612
  %650 = phi i64 [ poison, %612 ], [ %644, %617 ]
  %651 = phi i64 [ poison, %612 ], [ %645, %617 ]
  %652 = phi i32 [ %23, %612 ], [ %634, %617 ]
  %653 = phi i64 [ 0, %612 ], [ %644, %617 ]
  %654 = phi i64 [ 0, %612 ], [ %645, %617 ]
  %655 = icmp eq i32 %613, 0
  br i1 %655, label %669, label %656

656:                                              ; preds = %649
  %657 = add i32 %652, -1
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %2, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !5
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds nuw i64, ptr %9, i64 %661
  %663 = load i64, ptr %662, align 8, !tbaa !14
  %664 = and i64 %663, 255
  %665 = lshr i64 %653, %664
  %666 = and i64 %663, -256
  %667 = or i64 %665, %666
  %668 = add i64 %663, %654
  br label %669

669:                                              ; preds = %649, %656
  %670 = phi i64 [ %650, %649 ], [ %667, %656 ]
  %671 = phi i64 [ %651, %649 ], [ %668, %656 ]
  %672 = sub nsw i32 %23, %606
  %673 = and i64 %671, 255
  %674 = lshr i64 %673, 3
  %675 = sub nsw i64 64, %673
  %676 = lshr i64 %670, %675
  %677 = and i64 %671, 7
  store i64 %676, ptr %0, align 1, !tbaa !14
  %678 = getelementptr inbounds nuw i8, ptr %0, i64 %674
  br label %679

679:                                              ; preds = %669, %605
  %680 = phi i64 [ %677, %669 ], [ 0, %605 ]
  %681 = phi ptr [ %678, %669 ], [ %0, %605 ]
  %682 = phi i64 [ %670, %669 ], [ 0, %605 ]
  %683 = phi i32 [ %672, %669 ], [ %23, %605 ]
  %684 = srem i32 %683, 10
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %763, label %686

686:                                              ; preds = %679
  %687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %683, i32 -1)
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !47
  br i1 %688, label %648, label %689, !prof !48, !nosanitize !47

689:                                              ; preds = %686
  %690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %683, i32 -2)
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !47
  br i1 %691, label %648, label %692, !prof !48, !nosanitize !47

692:                                              ; preds = %689
  %693 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %683, i32 -3)
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !47
  br i1 %694, label %648, label %695, !prof !48, !nosanitize !47

695:                                              ; preds = %692
  %696 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %683, i32 -4)
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !47
  br i1 %697, label %648, label %698, !prof !48, !nosanitize !47

698:                                              ; preds = %695
  %699 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %683, i32 -5)
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !47
  br i1 %700, label %648, label %701, !prof !48, !nosanitize !47

701:                                              ; preds = %698
  %702 = extractvalue { i32, i1 } %696, 0, !nosanitize !47
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i8, ptr %2, i64 %703
  %705 = load i8, ptr %704, align 1, !tbaa !5
  %706 = zext i8 %705 to i64
  %707 = getelementptr inbounds nuw i64, ptr %9, i64 %706
  %708 = load i64, ptr %707, align 8, !tbaa !14
  %709 = extractvalue { i32, i1 } %693, 0, !nosanitize !47
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i8, ptr %2, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !5
  %713 = zext i8 %712 to i64
  %714 = getelementptr inbounds nuw i64, ptr %9, i64 %713
  %715 = load i64, ptr %714, align 8, !tbaa !14
  %716 = extractvalue { i32, i1 } %690, 0, !nosanitize !47
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8, ptr %2, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !5
  %720 = zext i8 %719 to i64
  %721 = getelementptr inbounds nuw i64, ptr %9, i64 %720
  %722 = load i64, ptr %721, align 8, !tbaa !14
  %723 = extractvalue { i32, i1 } %687, 0, !nosanitize !47
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, ptr %2, i64 %724
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds nuw i64, ptr %9, i64 %727
  %729 = load i64, ptr %728, align 8, !tbaa !14
  %730 = add i64 %729, %680
  %731 = add i64 %722, %730
  %732 = add i64 %715, %731
  %733 = add i64 %708, %732
  %734 = and i64 %729, 255
  %735 = lshr i64 %682, %734
  %736 = or i64 %735, %729
  %737 = and i64 %722, 255
  %738 = lshr i64 %736, %737
  %739 = or i64 %738, %722
  %740 = and i64 %715, 255
  %741 = lshr i64 %739, %740
  %742 = or i64 %741, %715
  %743 = and i64 %708, 255
  %744 = lshr i64 %742, %743
  %745 = or i64 %744, %708
  %746 = extractvalue { i32, i1 } %699, 0, !nosanitize !47
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i8, ptr %2, i64 %747
  %749 = load i8, ptr %748, align 1, !tbaa !5
  %750 = zext i8 %749 to i64
  %751 = getelementptr inbounds nuw i64, ptr %9, i64 %750
  %752 = load i64, ptr %751, align 8, !tbaa !14
  %753 = and i64 %752, 255
  %754 = lshr i64 %745, %753
  %755 = or i64 %754, %752
  %756 = add i64 %752, %733
  %757 = and i64 %756, 255
  %758 = lshr i64 %757, 3
  %759 = sub nsw i64 64, %757
  %760 = lshr i64 %755, %759
  %761 = and i64 %756, 7
  store i64 %760, ptr %681, align 1, !tbaa !14
  %762 = getelementptr inbounds nuw i8, ptr %681, i64 %758
  br label %763

763:                                              ; preds = %701, %679
  %764 = phi i64 [ %680, %679 ], [ %761, %701 ]
  %765 = phi ptr [ %681, %679 ], [ %762, %701 ]
  %766 = phi i64 [ %682, %679 ], [ %755, %701 ]
  %767 = phi i32 [ %683, %679 ], [ %746, %701 ]
  %768 = getelementptr i8, ptr %2, i64 -10
  %769 = icmp sgt i32 %767, 0
  br i1 %769, label %770, label %2504

770:                                              ; preds = %763
  %771 = zext nneg i32 %767 to i64
  %772 = getelementptr i8, ptr %2, i64 -1
  %773 = getelementptr i8, ptr %2, i64 -2
  %774 = getelementptr i8, ptr %2, i64 -3
  %775 = getelementptr i8, ptr %2, i64 -4
  br label %776

776:                                              ; preds = %770, %845
  %777 = phi i64 [ %771, %770 ], [ %905, %845 ]
  %778 = phi i64 [ %766, %770 ], [ %897, %845 ]
  %779 = phi ptr [ %765, %770 ], [ %904, %845 ]
  %780 = phi i64 [ %764, %770 ], [ %903, %845 ]
  %781 = getelementptr i8, ptr %772, i64 %777
  %782 = load i8, ptr %781, align 1, !tbaa !5
  %783 = zext i8 %782 to i64
  %784 = getelementptr inbounds nuw i64, ptr %9, i64 %783
  %785 = load i64, ptr %784, align 8, !tbaa !14
  %786 = and i64 %785, 255
  %787 = lshr i64 %778, %786
  %788 = or i64 %787, %785
  %789 = add i64 %785, %780
  %790 = getelementptr i8, ptr %773, i64 %777
  %791 = load i8, ptr %790, align 1, !tbaa !5
  %792 = zext i8 %791 to i64
  %793 = getelementptr inbounds nuw i64, ptr %9, i64 %792
  %794 = load i64, ptr %793, align 8, !tbaa !14
  %795 = and i64 %794, 255
  %796 = lshr i64 %788, %795
  %797 = or i64 %796, %794
  %798 = add i64 %794, %789
  %799 = getelementptr i8, ptr %774, i64 %777
  %800 = load i8, ptr %799, align 1, !tbaa !5
  %801 = zext i8 %800 to i64
  %802 = getelementptr inbounds nuw i64, ptr %9, i64 %801
  %803 = load i64, ptr %802, align 8, !tbaa !14
  %804 = and i64 %803, 255
  %805 = lshr i64 %797, %804
  %806 = or i64 %805, %803
  %807 = add i64 %803, %798
  %808 = getelementptr i8, ptr %775, i64 %777
  %809 = load i8, ptr %808, align 1, !tbaa !5
  %810 = zext i8 %809 to i64
  %811 = getelementptr inbounds nuw i64, ptr %9, i64 %810
  %812 = load i64, ptr %811, align 8, !tbaa !14
  %813 = and i64 %812, 255
  %814 = lshr i64 %806, %813
  %815 = or i64 %814, %812
  %816 = add i64 %812, %807
  %817 = add nsw i64 %777, -5
  %818 = getelementptr inbounds i8, ptr %2, i64 %817
  %819 = load i8, ptr %818, align 1, !tbaa !5
  %820 = zext i8 %819 to i64
  %821 = getelementptr inbounds nuw i64, ptr %9, i64 %820
  %822 = load i64, ptr %821, align 8, !tbaa !14
  %823 = and i64 %822, 255
  %824 = lshr i64 %815, %823
  %825 = or i64 %824, %822
  %826 = add i64 %822, %816
  %827 = and i64 %826, 255
  %828 = lshr i64 %827, 3
  %829 = sub nsw i64 64, %827
  %830 = lshr i64 %825, %829
  %831 = and i64 %826, 7
  store i64 %830, ptr %779, align 1, !tbaa !14
  %832 = getelementptr inbounds nuw i8, ptr %779, i64 %828
  %833 = trunc nsw i64 %817 to i32
  %834 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %833, i32 -1)
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !47
  br i1 %835, label %648, label %836, !prof !48, !nosanitize !47

836:                                              ; preds = %776
  %837 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %833, i32 -2)
  %838 = extractvalue { i32, i1 } %837, 1, !nosanitize !47
  br i1 %838, label %648, label %839, !prof !48, !nosanitize !47

839:                                              ; preds = %836
  %840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %833, i32 -3)
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !47
  br i1 %841, label %648, label %842, !prof !48, !nosanitize !47

842:                                              ; preds = %839
  %843 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %833, i32 -4)
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !47
  br i1 %844, label %648, label %845, !prof !48, !nosanitize !47

845:                                              ; preds = %842
  %846 = extractvalue { i32, i1 } %840, 0, !nosanitize !47
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds i8, ptr %2, i64 %847
  %849 = load i8, ptr %848, align 1, !tbaa !5
  %850 = zext i8 %849 to i64
  %851 = getelementptr inbounds nuw i64, ptr %9, i64 %850
  %852 = load i64, ptr %851, align 8, !tbaa !14
  %853 = extractvalue { i32, i1 } %837, 0, !nosanitize !47
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i8, ptr %2, i64 %854
  %856 = load i8, ptr %855, align 1, !tbaa !5
  %857 = zext i8 %856 to i64
  %858 = getelementptr inbounds nuw i64, ptr %9, i64 %857
  %859 = load i64, ptr %858, align 8, !tbaa !14
  %860 = extractvalue { i32, i1 } %834, 0, !nosanitize !47
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i8, ptr %2, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !5
  %864 = zext i8 %863 to i64
  %865 = getelementptr inbounds nuw i64, ptr %9, i64 %864
  %866 = load i64, ptr %865, align 8, !tbaa !14
  %867 = add i64 %859, %866
  %868 = add i64 %852, %867
  %869 = and i64 %859, 255
  %870 = lshr i64 %866, %869
  %871 = or i64 %870, %859
  %872 = and i64 %852, 255
  %873 = lshr i64 %871, %872
  %874 = or i64 %873, %852
  %875 = extractvalue { i32, i1 } %843, 0, !nosanitize !47
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i8, ptr %2, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !5
  %879 = zext i8 %878 to i64
  %880 = getelementptr inbounds nuw i64, ptr %9, i64 %879
  %881 = load i64, ptr %880, align 8, !tbaa !14
  %882 = and i64 %881, 255
  %883 = lshr i64 %874, %882
  %884 = or i64 %883, %881
  %885 = add i64 %881, %868
  %886 = getelementptr i8, ptr %768, i64 %777
  %887 = load i8, ptr %886, align 1, !tbaa !5
  %888 = zext i8 %887 to i64
  %889 = getelementptr inbounds nuw i64, ptr %9, i64 %888
  %890 = load i64, ptr %889, align 8, !tbaa !14
  %891 = and i64 %890, 255
  %892 = lshr i64 %884, %891
  %893 = add i64 %890, %885
  %894 = and i64 %893, 255
  %895 = lshr i64 %825, %894
  %896 = or i64 %892, %895
  %897 = or i64 %896, %890
  %898 = add i64 %893, %831
  %899 = and i64 %898, 255
  %900 = lshr i64 %899, 3
  %901 = sub nsw i64 64, %899
  %902 = lshr i64 %897, %901
  %903 = and i64 %898, 7
  store i64 %902, ptr %832, align 1, !tbaa !14
  %904 = getelementptr inbounds nuw i8, ptr %832, i64 %900
  %905 = add nsw i64 %777, -10
  %906 = icmp sgt i64 %777, 10
  br i1 %906, label %776, label %2504, !llvm.loop !77

907:                                              ; preds = %299
  %908 = srem i32 %23, 6
  %909 = icmp sgt i32 %908, 0
  br i1 %909, label %910, label %981

910:                                              ; preds = %907
  %911 = xor i32 %23, -2147483648
  %912 = add nsw i32 %908, -1
  %913 = icmp ugt i32 %911, %912
  br i1 %913, label %914, label %950, !prof !75, !nosanitize !47

914:                                              ; preds = %910
  %915 = and i32 %908, 1
  %916 = icmp eq i32 %912, 0
  br i1 %916, label %951, label %917

917:                                              ; preds = %914
  %918 = and i32 %908, 2147483646
  br label %919

919:                                              ; preds = %919, %917
  %920 = phi i32 [ %23, %917 ], [ %936, %919 ]
  %921 = phi i64 [ 0, %917 ], [ %946, %919 ]
  %922 = phi i64 [ 0, %917 ], [ %947, %919 ]
  %923 = phi i32 [ 0, %917 ], [ %948, %919 ]
  %924 = add i32 %920, -1
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i8, ptr %2, i64 %925
  %927 = load i8, ptr %926, align 1, !tbaa !5
  %928 = zext i8 %927 to i64
  %929 = getelementptr inbounds nuw i64, ptr %9, i64 %928
  %930 = load i64, ptr %929, align 8, !tbaa !14
  %931 = and i64 %930, 255
  %932 = lshr i64 %921, %931
  %933 = and i64 %930, -256
  %934 = or i64 %932, %933
  %935 = add i64 %930, %922
  %936 = add i32 %920, -2
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i8, ptr %2, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !5
  %940 = zext i8 %939 to i64
  %941 = getelementptr inbounds nuw i64, ptr %9, i64 %940
  %942 = load i64, ptr %941, align 8, !tbaa !14
  %943 = and i64 %942, 255
  %944 = lshr i64 %934, %943
  %945 = and i64 %942, -256
  %946 = or i64 %944, %945
  %947 = add i64 %942, %935
  %948 = add i32 %923, 2
  %949 = icmp eq i32 %948, %918
  br i1 %949, label %951, label %919, !llvm.loop !76

950:                                              ; preds = %1094, %1164, %1167, %1170, %1173, %910, %988, %991, %994, %997, %1000, %1003
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

951:                                              ; preds = %919, %914
  %952 = phi i64 [ poison, %914 ], [ %946, %919 ]
  %953 = phi i64 [ poison, %914 ], [ %947, %919 ]
  %954 = phi i32 [ %23, %914 ], [ %936, %919 ]
  %955 = phi i64 [ 0, %914 ], [ %946, %919 ]
  %956 = phi i64 [ 0, %914 ], [ %947, %919 ]
  %957 = icmp eq i32 %915, 0
  br i1 %957, label %971, label %958

958:                                              ; preds = %951
  %959 = add i32 %954, -1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i8, ptr %2, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !5
  %963 = zext i8 %962 to i64
  %964 = getelementptr inbounds nuw i64, ptr %9, i64 %963
  %965 = load i64, ptr %964, align 8, !tbaa !14
  %966 = and i64 %965, 255
  %967 = lshr i64 %955, %966
  %968 = and i64 %965, -256
  %969 = or i64 %967, %968
  %970 = add i64 %965, %956
  br label %971

971:                                              ; preds = %951, %958
  %972 = phi i64 [ %952, %951 ], [ %969, %958 ]
  %973 = phi i64 [ %953, %951 ], [ %970, %958 ]
  %974 = sub nsw i32 %23, %908
  %975 = and i64 %973, 255
  %976 = lshr i64 %975, 3
  %977 = sub nsw i64 64, %975
  %978 = lshr i64 %972, %977
  %979 = and i64 %973, 7
  store i64 %978, ptr %0, align 1, !tbaa !14
  %980 = getelementptr inbounds nuw i8, ptr %0, i64 %976
  br label %981

981:                                              ; preds = %971, %907
  %982 = phi i64 [ %979, %971 ], [ 0, %907 ]
  %983 = phi ptr [ %980, %971 ], [ %0, %907 ]
  %984 = phi i64 [ %972, %971 ], [ 0, %907 ]
  %985 = phi i32 [ %974, %971 ], [ %23, %907 ]
  %986 = srem i32 %985, 12
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1080, label %988

988:                                              ; preds = %981
  %989 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -1)
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !47
  br i1 %990, label %950, label %991, !prof !48, !nosanitize !47

991:                                              ; preds = %988
  %992 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -2)
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !47
  br i1 %993, label %950, label %994, !prof !48, !nosanitize !47

994:                                              ; preds = %991
  %995 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -3)
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !47
  br i1 %996, label %950, label %997, !prof !48, !nosanitize !47

997:                                              ; preds = %994
  %998 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -4)
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !47
  br i1 %999, label %950, label %1000, !prof !48, !nosanitize !47

1000:                                             ; preds = %997
  %1001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -5)
  %1002 = extractvalue { i32, i1 } %1001, 1, !nosanitize !47
  br i1 %1002, label %950, label %1003, !prof !48, !nosanitize !47

1003:                                             ; preds = %1000
  %1004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %985, i32 -6)
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !47
  br i1 %1005, label %950, label %1006, !prof !48, !nosanitize !47

1006:                                             ; preds = %1003
  %1007 = extractvalue { i32, i1 } %1001, 0, !nosanitize !47
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds i8, ptr %2, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !5
  %1011 = zext i8 %1010 to i64
  %1012 = getelementptr inbounds nuw i64, ptr %9, i64 %1011
  %1013 = load i64, ptr %1012, align 8, !tbaa !14
  %1014 = extractvalue { i32, i1 } %998, 0, !nosanitize !47
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds i8, ptr %2, i64 %1015
  %1017 = load i8, ptr %1016, align 1, !tbaa !5
  %1018 = zext i8 %1017 to i64
  %1019 = getelementptr inbounds nuw i64, ptr %9, i64 %1018
  %1020 = load i64, ptr %1019, align 8, !tbaa !14
  %1021 = extractvalue { i32, i1 } %995, 0, !nosanitize !47
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i8, ptr %2, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !5
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds nuw i64, ptr %9, i64 %1025
  %1027 = load i64, ptr %1026, align 8, !tbaa !14
  %1028 = extractvalue { i32, i1 } %992, 0, !nosanitize !47
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %2, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !5
  %1032 = zext i8 %1031 to i64
  %1033 = getelementptr inbounds nuw i64, ptr %9, i64 %1032
  %1034 = load i64, ptr %1033, align 8, !tbaa !14
  %1035 = extractvalue { i32, i1 } %989, 0, !nosanitize !47
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i8, ptr %2, i64 %1036
  %1038 = load i8, ptr %1037, align 1, !tbaa !5
  %1039 = zext i8 %1038 to i64
  %1040 = getelementptr inbounds nuw i64, ptr %9, i64 %1039
  %1041 = load i64, ptr %1040, align 8, !tbaa !14
  %1042 = add i64 %1041, %982
  %1043 = add i64 %1034, %1042
  %1044 = add i64 %1027, %1043
  %1045 = add i64 %1020, %1044
  %1046 = add i64 %1013, %1045
  %1047 = and i64 %1041, 255
  %1048 = lshr i64 %984, %1047
  %1049 = or i64 %1048, %1041
  %1050 = and i64 %1034, 255
  %1051 = lshr i64 %1049, %1050
  %1052 = or i64 %1051, %1034
  %1053 = and i64 %1027, 255
  %1054 = lshr i64 %1052, %1053
  %1055 = or i64 %1054, %1027
  %1056 = and i64 %1020, 255
  %1057 = lshr i64 %1055, %1056
  %1058 = or i64 %1057, %1020
  %1059 = and i64 %1013, 255
  %1060 = lshr i64 %1058, %1059
  %1061 = or i64 %1060, %1013
  %1062 = extractvalue { i32, i1 } %1004, 0, !nosanitize !47
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds i8, ptr %2, i64 %1063
  %1065 = load i8, ptr %1064, align 1, !tbaa !5
  %1066 = zext i8 %1065 to i64
  %1067 = getelementptr inbounds nuw i64, ptr %9, i64 %1066
  %1068 = load i64, ptr %1067, align 8, !tbaa !14
  %1069 = and i64 %1068, 255
  %1070 = lshr i64 %1061, %1069
  %1071 = and i64 %1068, -256
  %1072 = or i64 %1070, %1071
  %1073 = add i64 %1068, %1046
  %1074 = and i64 %1073, 255
  %1075 = lshr i64 %1074, 3
  %1076 = sub nsw i64 64, %1074
  %1077 = lshr i64 %1072, %1076
  %1078 = and i64 %1073, 7
  store i64 %1077, ptr %983, align 1, !tbaa !14
  %1079 = getelementptr inbounds nuw i8, ptr %983, i64 %1075
  br label %1080

1080:                                             ; preds = %1006, %981
  %1081 = phi i64 [ %982, %981 ], [ %1078, %1006 ]
  %1082 = phi ptr [ %983, %981 ], [ %1079, %1006 ]
  %1083 = phi i64 [ %984, %981 ], [ %1072, %1006 ]
  %1084 = phi i32 [ %985, %981 ], [ %1062, %1006 ]
  %1085 = getelementptr i8, ptr %2, i64 -12
  %1086 = icmp sgt i32 %1084, 0
  br i1 %1086, label %1087, label %2504

1087:                                             ; preds = %1080
  %1088 = zext nneg i32 %1084 to i64
  %1089 = getelementptr i8, ptr %2, i64 -1
  %1090 = getelementptr i8, ptr %2, i64 -2
  %1091 = getelementptr i8, ptr %2, i64 -3
  %1092 = getelementptr i8, ptr %2, i64 -4
  %1093 = getelementptr i8, ptr %2, i64 -5
  br label %1094

1094:                                             ; preds = %1087, %1176
  %1095 = phi i64 [ %1088, %1087 ], [ %1248, %1176 ]
  %1096 = phi i64 [ %1083, %1087 ], [ %1240, %1176 ]
  %1097 = phi ptr [ %1082, %1087 ], [ %1247, %1176 ]
  %1098 = phi i64 [ %1081, %1087 ], [ %1246, %1176 ]
  %1099 = getelementptr i8, ptr %1089, i64 %1095
  %1100 = load i8, ptr %1099, align 1, !tbaa !5
  %1101 = zext i8 %1100 to i64
  %1102 = getelementptr inbounds nuw i64, ptr %9, i64 %1101
  %1103 = load i64, ptr %1102, align 8, !tbaa !14
  %1104 = and i64 %1103, 255
  %1105 = lshr i64 %1096, %1104
  %1106 = or i64 %1105, %1103
  %1107 = add i64 %1103, %1098
  %1108 = getelementptr i8, ptr %1090, i64 %1095
  %1109 = load i8, ptr %1108, align 1, !tbaa !5
  %1110 = zext i8 %1109 to i64
  %1111 = getelementptr inbounds nuw i64, ptr %9, i64 %1110
  %1112 = load i64, ptr %1111, align 8, !tbaa !14
  %1113 = and i64 %1112, 255
  %1114 = lshr i64 %1106, %1113
  %1115 = or i64 %1114, %1112
  %1116 = add i64 %1112, %1107
  %1117 = getelementptr i8, ptr %1091, i64 %1095
  %1118 = load i8, ptr %1117, align 1, !tbaa !5
  %1119 = zext i8 %1118 to i64
  %1120 = getelementptr inbounds nuw i64, ptr %9, i64 %1119
  %1121 = load i64, ptr %1120, align 8, !tbaa !14
  %1122 = and i64 %1121, 255
  %1123 = lshr i64 %1115, %1122
  %1124 = or i64 %1123, %1121
  %1125 = add i64 %1121, %1116
  %1126 = getelementptr i8, ptr %1092, i64 %1095
  %1127 = load i8, ptr %1126, align 1, !tbaa !5
  %1128 = zext i8 %1127 to i64
  %1129 = getelementptr inbounds nuw i64, ptr %9, i64 %1128
  %1130 = load i64, ptr %1129, align 8, !tbaa !14
  %1131 = and i64 %1130, 255
  %1132 = lshr i64 %1124, %1131
  %1133 = or i64 %1132, %1130
  %1134 = add i64 %1130, %1125
  %1135 = getelementptr i8, ptr %1093, i64 %1095
  %1136 = load i8, ptr %1135, align 1, !tbaa !5
  %1137 = zext i8 %1136 to i64
  %1138 = getelementptr inbounds nuw i64, ptr %9, i64 %1137
  %1139 = load i64, ptr %1138, align 8, !tbaa !14
  %1140 = and i64 %1139, 255
  %1141 = lshr i64 %1133, %1140
  %1142 = or i64 %1141, %1139
  %1143 = add i64 %1139, %1134
  %1144 = add nsw i64 %1095, -6
  %1145 = getelementptr inbounds i8, ptr %2, i64 %1144
  %1146 = load i8, ptr %1145, align 1, !tbaa !5
  %1147 = zext i8 %1146 to i64
  %1148 = getelementptr inbounds nuw i64, ptr %9, i64 %1147
  %1149 = load i64, ptr %1148, align 8, !tbaa !14
  %1150 = and i64 %1149, 255
  %1151 = lshr i64 %1142, %1150
  %1152 = and i64 %1149, -256
  %1153 = or i64 %1151, %1152
  %1154 = add i64 %1149, %1143
  %1155 = and i64 %1154, 255
  %1156 = lshr i64 %1155, 3
  %1157 = sub nsw i64 64, %1155
  %1158 = lshr i64 %1153, %1157
  %1159 = and i64 %1154, 7
  store i64 %1158, ptr %1097, align 1, !tbaa !14
  %1160 = getelementptr inbounds nuw i8, ptr %1097, i64 %1156
  %1161 = trunc nsw i64 %1144 to i32
  %1162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1161, i32 -1)
  %1163 = extractvalue { i32, i1 } %1162, 1, !nosanitize !47
  br i1 %1163, label %950, label %1164, !prof !48, !nosanitize !47

1164:                                             ; preds = %1094
  %1165 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1161, i32 -2)
  %1166 = extractvalue { i32, i1 } %1165, 1, !nosanitize !47
  br i1 %1166, label %950, label %1167, !prof !48, !nosanitize !47

1167:                                             ; preds = %1164
  %1168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1161, i32 -3)
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !47
  br i1 %1169, label %950, label %1170, !prof !48, !nosanitize !47

1170:                                             ; preds = %1167
  %1171 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1161, i32 -4)
  %1172 = extractvalue { i32, i1 } %1171, 1, !nosanitize !47
  br i1 %1172, label %950, label %1173, !prof !48, !nosanitize !47

1173:                                             ; preds = %1170
  %1174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1161, i32 -5)
  %1175 = extractvalue { i32, i1 } %1174, 1, !nosanitize !47
  br i1 %1175, label %950, label %1176, !prof !48, !nosanitize !47

1176:                                             ; preds = %1173
  %1177 = extractvalue { i32, i1 } %1171, 0, !nosanitize !47
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i8, ptr %2, i64 %1178
  %1180 = load i8, ptr %1179, align 1, !tbaa !5
  %1181 = zext i8 %1180 to i64
  %1182 = getelementptr inbounds nuw i64, ptr %9, i64 %1181
  %1183 = load i64, ptr %1182, align 8, !tbaa !14
  %1184 = extractvalue { i32, i1 } %1168, 0, !nosanitize !47
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds i8, ptr %2, i64 %1185
  %1187 = load i8, ptr %1186, align 1, !tbaa !5
  %1188 = zext i8 %1187 to i64
  %1189 = getelementptr inbounds nuw i64, ptr %9, i64 %1188
  %1190 = load i64, ptr %1189, align 8, !tbaa !14
  %1191 = extractvalue { i32, i1 } %1165, 0, !nosanitize !47
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, ptr %2, i64 %1192
  %1194 = load i8, ptr %1193, align 1, !tbaa !5
  %1195 = zext i8 %1194 to i64
  %1196 = getelementptr inbounds nuw i64, ptr %9, i64 %1195
  %1197 = load i64, ptr %1196, align 8, !tbaa !14
  %1198 = extractvalue { i32, i1 } %1162, 0, !nosanitize !47
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i8, ptr %2, i64 %1199
  %1201 = load i8, ptr %1200, align 1, !tbaa !5
  %1202 = zext i8 %1201 to i64
  %1203 = getelementptr inbounds nuw i64, ptr %9, i64 %1202
  %1204 = load i64, ptr %1203, align 8, !tbaa !14
  %1205 = add i64 %1197, %1204
  %1206 = add i64 %1190, %1205
  %1207 = add i64 %1183, %1206
  %1208 = and i64 %1197, 255
  %1209 = lshr i64 %1204, %1208
  %1210 = or i64 %1209, %1197
  %1211 = and i64 %1190, 255
  %1212 = lshr i64 %1210, %1211
  %1213 = or i64 %1212, %1190
  %1214 = and i64 %1183, 255
  %1215 = lshr i64 %1213, %1214
  %1216 = or i64 %1215, %1183
  %1217 = extractvalue { i32, i1 } %1174, 0, !nosanitize !47
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds i8, ptr %2, i64 %1218
  %1220 = load i8, ptr %1219, align 1, !tbaa !5
  %1221 = zext i8 %1220 to i64
  %1222 = getelementptr inbounds nuw i64, ptr %9, i64 %1221
  %1223 = load i64, ptr %1222, align 8, !tbaa !14
  %1224 = and i64 %1223, 255
  %1225 = lshr i64 %1216, %1224
  %1226 = or i64 %1225, %1223
  %1227 = add i64 %1223, %1207
  %1228 = getelementptr i8, ptr %1085, i64 %1095
  %1229 = load i8, ptr %1228, align 1, !tbaa !5
  %1230 = zext i8 %1229 to i64
  %1231 = getelementptr inbounds nuw i64, ptr %9, i64 %1230
  %1232 = load i64, ptr %1231, align 8, !tbaa !14
  %1233 = and i64 %1232, 255
  %1234 = lshr i64 %1226, %1233
  %1235 = and i64 %1232, -256
  %1236 = or i64 %1234, %1235
  %1237 = add i64 %1232, %1227
  %1238 = and i64 %1237, 255
  %1239 = lshr i64 %1153, %1238
  %1240 = or i64 %1236, %1239
  %1241 = add i64 %1237, %1159
  %1242 = and i64 %1241, 255
  %1243 = lshr i64 %1242, 3
  %1244 = sub nsw i64 64, %1242
  %1245 = lshr i64 %1240, %1244
  %1246 = and i64 %1241, 7
  store i64 %1245, ptr %1160, align 1, !tbaa !14
  %1247 = getelementptr inbounds nuw i8, ptr %1160, i64 %1243
  %1248 = add nsw i64 %1095, -12
  %1249 = icmp sgt i64 %1095, 12
  br i1 %1249, label %1094, label %2504, !llvm.loop !77

1250:                                             ; preds = %299
  %1251 = srem i32 %23, 7
  %1252 = icmp sgt i32 %1251, 0
  br i1 %1252, label %1253, label %1324

1253:                                             ; preds = %1250
  %1254 = xor i32 %23, -2147483648
  %1255 = add nsw i32 %1251, -1
  %1256 = icmp ugt i32 %1254, %1255
  br i1 %1256, label %1257, label %1293, !prof !75, !nosanitize !47

1257:                                             ; preds = %1253
  %1258 = and i32 %1251, 1
  %1259 = icmp eq i32 %1255, 0
  br i1 %1259, label %1294, label %1260

1260:                                             ; preds = %1257
  %1261 = and i32 %1251, 2147483646
  br label %1262

1262:                                             ; preds = %1262, %1260
  %1263 = phi i32 [ %23, %1260 ], [ %1279, %1262 ]
  %1264 = phi i64 [ 0, %1260 ], [ %1289, %1262 ]
  %1265 = phi i64 [ 0, %1260 ], [ %1290, %1262 ]
  %1266 = phi i32 [ 0, %1260 ], [ %1291, %1262 ]
  %1267 = add i32 %1263, -1
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i8, ptr %2, i64 %1268
  %1270 = load i8, ptr %1269, align 1, !tbaa !5
  %1271 = zext i8 %1270 to i64
  %1272 = getelementptr inbounds nuw i64, ptr %9, i64 %1271
  %1273 = load i64, ptr %1272, align 8, !tbaa !14
  %1274 = and i64 %1273, 255
  %1275 = lshr i64 %1264, %1274
  %1276 = and i64 %1273, -256
  %1277 = or i64 %1275, %1276
  %1278 = add i64 %1273, %1265
  %1279 = add i32 %1263, -2
  %1280 = sext i32 %1279 to i64
  %1281 = getelementptr inbounds i8, ptr %2, i64 %1280
  %1282 = load i8, ptr %1281, align 1, !tbaa !5
  %1283 = zext i8 %1282 to i64
  %1284 = getelementptr inbounds nuw i64, ptr %9, i64 %1283
  %1285 = load i64, ptr %1284, align 8, !tbaa !14
  %1286 = and i64 %1285, 255
  %1287 = lshr i64 %1277, %1286
  %1288 = and i64 %1285, -256
  %1289 = or i64 %1287, %1288
  %1290 = add i64 %1285, %1278
  %1291 = add i32 %1266, 2
  %1292 = icmp eq i32 %1291, %1261
  br i1 %1292, label %1294, label %1262, !llvm.loop !76

1293:                                             ; preds = %1452, %1531, %1534, %1537, %1540, %1543, %1253, %1331, %1334, %1337, %1340, %1343, %1346, %1349
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1294:                                             ; preds = %1262, %1257
  %1295 = phi i64 [ poison, %1257 ], [ %1289, %1262 ]
  %1296 = phi i64 [ poison, %1257 ], [ %1290, %1262 ]
  %1297 = phi i32 [ %23, %1257 ], [ %1279, %1262 ]
  %1298 = phi i64 [ 0, %1257 ], [ %1289, %1262 ]
  %1299 = phi i64 [ 0, %1257 ], [ %1290, %1262 ]
  %1300 = icmp eq i32 %1258, 0
  br i1 %1300, label %1314, label %1301

1301:                                             ; preds = %1294
  %1302 = add i32 %1297, -1
  %1303 = sext i32 %1302 to i64
  %1304 = getelementptr inbounds i8, ptr %2, i64 %1303
  %1305 = load i8, ptr %1304, align 1, !tbaa !5
  %1306 = zext i8 %1305 to i64
  %1307 = getelementptr inbounds nuw i64, ptr %9, i64 %1306
  %1308 = load i64, ptr %1307, align 8, !tbaa !14
  %1309 = and i64 %1308, 255
  %1310 = lshr i64 %1298, %1309
  %1311 = and i64 %1308, -256
  %1312 = or i64 %1310, %1311
  %1313 = add i64 %1308, %1299
  br label %1314

1314:                                             ; preds = %1294, %1301
  %1315 = phi i64 [ %1295, %1294 ], [ %1312, %1301 ]
  %1316 = phi i64 [ %1296, %1294 ], [ %1313, %1301 ]
  %1317 = sub nsw i32 %23, %1251
  %1318 = and i64 %1316, 255
  %1319 = lshr i64 %1318, 3
  %1320 = sub nsw i64 64, %1318
  %1321 = lshr i64 %1315, %1320
  %1322 = and i64 %1316, 7
  store i64 %1321, ptr %0, align 1, !tbaa !14
  %1323 = getelementptr inbounds nuw i8, ptr %0, i64 %1319
  br label %1324

1324:                                             ; preds = %1314, %1250
  %1325 = phi i64 [ %1322, %1314 ], [ 0, %1250 ]
  %1326 = phi ptr [ %1323, %1314 ], [ %0, %1250 ]
  %1327 = phi i64 [ %1315, %1314 ], [ 0, %1250 ]
  %1328 = phi i32 [ %1317, %1314 ], [ %23, %1250 ]
  %1329 = srem i32 %1328, 14
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1437, label %1331

1331:                                             ; preds = %1324
  %1332 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -1)
  %1333 = extractvalue { i32, i1 } %1332, 1, !nosanitize !47
  br i1 %1333, label %1293, label %1334, !prof !48, !nosanitize !47

1334:                                             ; preds = %1331
  %1335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -2)
  %1336 = extractvalue { i32, i1 } %1335, 1, !nosanitize !47
  br i1 %1336, label %1293, label %1337, !prof !48, !nosanitize !47

1337:                                             ; preds = %1334
  %1338 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -3)
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !47
  br i1 %1339, label %1293, label %1340, !prof !48, !nosanitize !47

1340:                                             ; preds = %1337
  %1341 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -4)
  %1342 = extractvalue { i32, i1 } %1341, 1, !nosanitize !47
  br i1 %1342, label %1293, label %1343, !prof !48, !nosanitize !47

1343:                                             ; preds = %1340
  %1344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -5)
  %1345 = extractvalue { i32, i1 } %1344, 1, !nosanitize !47
  br i1 %1345, label %1293, label %1346, !prof !48, !nosanitize !47

1346:                                             ; preds = %1343
  %1347 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -6)
  %1348 = extractvalue { i32, i1 } %1347, 1, !nosanitize !47
  br i1 %1348, label %1293, label %1349, !prof !48, !nosanitize !47

1349:                                             ; preds = %1346
  %1350 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -7)
  %1351 = extractvalue { i32, i1 } %1350, 1, !nosanitize !47
  br i1 %1351, label %1293, label %1352, !prof !48, !nosanitize !47

1352:                                             ; preds = %1349
  %1353 = extractvalue { i32, i1 } %1347, 0, !nosanitize !47
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds i8, ptr %2, i64 %1354
  %1356 = load i8, ptr %1355, align 1, !tbaa !5
  %1357 = zext i8 %1356 to i64
  %1358 = getelementptr inbounds nuw i64, ptr %9, i64 %1357
  %1359 = load i64, ptr %1358, align 8, !tbaa !14
  %1360 = extractvalue { i32, i1 } %1344, 0, !nosanitize !47
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i8, ptr %2, i64 %1361
  %1363 = load i8, ptr %1362, align 1, !tbaa !5
  %1364 = zext i8 %1363 to i64
  %1365 = getelementptr inbounds nuw i64, ptr %9, i64 %1364
  %1366 = load i64, ptr %1365, align 8, !tbaa !14
  %1367 = extractvalue { i32, i1 } %1341, 0, !nosanitize !47
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, ptr %2, i64 %1368
  %1370 = load i8, ptr %1369, align 1, !tbaa !5
  %1371 = zext i8 %1370 to i64
  %1372 = getelementptr inbounds nuw i64, ptr %9, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !14
  %1374 = extractvalue { i32, i1 } %1338, 0, !nosanitize !47
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds i8, ptr %2, i64 %1375
  %1377 = load i8, ptr %1376, align 1, !tbaa !5
  %1378 = zext i8 %1377 to i64
  %1379 = getelementptr inbounds nuw i64, ptr %9, i64 %1378
  %1380 = load i64, ptr %1379, align 8, !tbaa !14
  %1381 = extractvalue { i32, i1 } %1335, 0, !nosanitize !47
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds i8, ptr %2, i64 %1382
  %1384 = load i8, ptr %1383, align 1, !tbaa !5
  %1385 = zext i8 %1384 to i64
  %1386 = getelementptr inbounds nuw i64, ptr %9, i64 %1385
  %1387 = load i64, ptr %1386, align 8, !tbaa !14
  %1388 = extractvalue { i32, i1 } %1332, 0, !nosanitize !47
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds i8, ptr %2, i64 %1389
  %1391 = load i8, ptr %1390, align 1, !tbaa !5
  %1392 = zext i8 %1391 to i64
  %1393 = getelementptr inbounds nuw i64, ptr %9, i64 %1392
  %1394 = load i64, ptr %1393, align 8, !tbaa !14
  %1395 = add i64 %1394, %1325
  %1396 = add i64 %1387, %1395
  %1397 = add i64 %1380, %1396
  %1398 = add i64 %1373, %1397
  %1399 = add i64 %1366, %1398
  %1400 = add i64 %1359, %1399
  %1401 = and i64 %1394, 255
  %1402 = lshr i64 %1327, %1401
  %1403 = or i64 %1402, %1394
  %1404 = and i64 %1387, 255
  %1405 = lshr i64 %1403, %1404
  %1406 = or i64 %1405, %1387
  %1407 = and i64 %1380, 255
  %1408 = lshr i64 %1406, %1407
  %1409 = or i64 %1408, %1380
  %1410 = and i64 %1373, 255
  %1411 = lshr i64 %1409, %1410
  %1412 = or i64 %1411, %1373
  %1413 = and i64 %1366, 255
  %1414 = lshr i64 %1412, %1413
  %1415 = or i64 %1414, %1366
  %1416 = and i64 %1359, 255
  %1417 = lshr i64 %1415, %1416
  %1418 = or i64 %1417, %1359
  %1419 = extractvalue { i32, i1 } %1350, 0, !nosanitize !47
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds i8, ptr %2, i64 %1420
  %1422 = load i8, ptr %1421, align 1, !tbaa !5
  %1423 = zext i8 %1422 to i64
  %1424 = getelementptr inbounds nuw i64, ptr %9, i64 %1423
  %1425 = load i64, ptr %1424, align 8, !tbaa !14
  %1426 = and i64 %1425, 255
  %1427 = lshr i64 %1418, %1426
  %1428 = and i64 %1425, -256
  %1429 = or i64 %1427, %1428
  %1430 = add i64 %1425, %1400
  %1431 = and i64 %1430, 255
  %1432 = lshr i64 %1431, 3
  %1433 = sub nsw i64 64, %1431
  %1434 = lshr i64 %1429, %1433
  %1435 = and i64 %1430, 7
  store i64 %1434, ptr %1326, align 1, !tbaa !14
  %1436 = getelementptr inbounds nuw i8, ptr %1326, i64 %1432
  br label %1437

1437:                                             ; preds = %1352, %1324
  %1438 = phi i64 [ %1325, %1324 ], [ %1435, %1352 ]
  %1439 = phi ptr [ %1326, %1324 ], [ %1436, %1352 ]
  %1440 = phi i64 [ %1327, %1324 ], [ %1429, %1352 ]
  %1441 = phi i32 [ %1328, %1324 ], [ %1419, %1352 ]
  %1442 = getelementptr i8, ptr %2, i64 -14
  %1443 = icmp sgt i32 %1441, 0
  br i1 %1443, label %1444, label %2504

1444:                                             ; preds = %1437
  %1445 = zext nneg i32 %1441 to i64
  %1446 = getelementptr i8, ptr %2, i64 -1
  %1447 = getelementptr i8, ptr %2, i64 -2
  %1448 = getelementptr i8, ptr %2, i64 -3
  %1449 = getelementptr i8, ptr %2, i64 -4
  %1450 = getelementptr i8, ptr %2, i64 -5
  %1451 = getelementptr i8, ptr %2, i64 -6
  br label %1452

1452:                                             ; preds = %1444, %1546
  %1453 = phi i64 [ %1445, %1444 ], [ %1629, %1546 ]
  %1454 = phi i64 [ %1440, %1444 ], [ %1621, %1546 ]
  %1455 = phi ptr [ %1439, %1444 ], [ %1628, %1546 ]
  %1456 = phi i64 [ %1438, %1444 ], [ %1627, %1546 ]
  %1457 = getelementptr i8, ptr %1446, i64 %1453
  %1458 = load i8, ptr %1457, align 1, !tbaa !5
  %1459 = zext i8 %1458 to i64
  %1460 = getelementptr inbounds nuw i64, ptr %9, i64 %1459
  %1461 = load i64, ptr %1460, align 8, !tbaa !14
  %1462 = and i64 %1461, 255
  %1463 = lshr i64 %1454, %1462
  %1464 = or i64 %1463, %1461
  %1465 = add i64 %1461, %1456
  %1466 = getelementptr i8, ptr %1447, i64 %1453
  %1467 = load i8, ptr %1466, align 1, !tbaa !5
  %1468 = zext i8 %1467 to i64
  %1469 = getelementptr inbounds nuw i64, ptr %9, i64 %1468
  %1470 = load i64, ptr %1469, align 8, !tbaa !14
  %1471 = and i64 %1470, 255
  %1472 = lshr i64 %1464, %1471
  %1473 = or i64 %1472, %1470
  %1474 = add i64 %1470, %1465
  %1475 = getelementptr i8, ptr %1448, i64 %1453
  %1476 = load i8, ptr %1475, align 1, !tbaa !5
  %1477 = zext i8 %1476 to i64
  %1478 = getelementptr inbounds nuw i64, ptr %9, i64 %1477
  %1479 = load i64, ptr %1478, align 8, !tbaa !14
  %1480 = and i64 %1479, 255
  %1481 = lshr i64 %1473, %1480
  %1482 = or i64 %1481, %1479
  %1483 = add i64 %1479, %1474
  %1484 = getelementptr i8, ptr %1449, i64 %1453
  %1485 = load i8, ptr %1484, align 1, !tbaa !5
  %1486 = zext i8 %1485 to i64
  %1487 = getelementptr inbounds nuw i64, ptr %9, i64 %1486
  %1488 = load i64, ptr %1487, align 8, !tbaa !14
  %1489 = and i64 %1488, 255
  %1490 = lshr i64 %1482, %1489
  %1491 = or i64 %1490, %1488
  %1492 = add i64 %1488, %1483
  %1493 = getelementptr i8, ptr %1450, i64 %1453
  %1494 = load i8, ptr %1493, align 1, !tbaa !5
  %1495 = zext i8 %1494 to i64
  %1496 = getelementptr inbounds nuw i64, ptr %9, i64 %1495
  %1497 = load i64, ptr %1496, align 8, !tbaa !14
  %1498 = and i64 %1497, 255
  %1499 = lshr i64 %1491, %1498
  %1500 = or i64 %1499, %1497
  %1501 = add i64 %1497, %1492
  %1502 = getelementptr i8, ptr %1451, i64 %1453
  %1503 = load i8, ptr %1502, align 1, !tbaa !5
  %1504 = zext i8 %1503 to i64
  %1505 = getelementptr inbounds nuw i64, ptr %9, i64 %1504
  %1506 = load i64, ptr %1505, align 8, !tbaa !14
  %1507 = and i64 %1506, 255
  %1508 = lshr i64 %1500, %1507
  %1509 = or i64 %1508, %1506
  %1510 = add i64 %1506, %1501
  %1511 = add nsw i64 %1453, -7
  %1512 = getelementptr inbounds i8, ptr %2, i64 %1511
  %1513 = load i8, ptr %1512, align 1, !tbaa !5
  %1514 = zext i8 %1513 to i64
  %1515 = getelementptr inbounds nuw i64, ptr %9, i64 %1514
  %1516 = load i64, ptr %1515, align 8, !tbaa !14
  %1517 = and i64 %1516, 255
  %1518 = lshr i64 %1509, %1517
  %1519 = and i64 %1516, -256
  %1520 = or i64 %1518, %1519
  %1521 = add i64 %1516, %1510
  %1522 = and i64 %1521, 255
  %1523 = lshr i64 %1522, 3
  %1524 = sub nsw i64 64, %1522
  %1525 = lshr i64 %1520, %1524
  %1526 = and i64 %1521, 7
  store i64 %1525, ptr %1455, align 1, !tbaa !14
  %1527 = getelementptr inbounds nuw i8, ptr %1455, i64 %1523
  %1528 = trunc nsw i64 %1511 to i32
  %1529 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -1)
  %1530 = extractvalue { i32, i1 } %1529, 1, !nosanitize !47
  br i1 %1530, label %1293, label %1531, !prof !48, !nosanitize !47

1531:                                             ; preds = %1452
  %1532 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -2)
  %1533 = extractvalue { i32, i1 } %1532, 1, !nosanitize !47
  br i1 %1533, label %1293, label %1534, !prof !48, !nosanitize !47

1534:                                             ; preds = %1531
  %1535 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -3)
  %1536 = extractvalue { i32, i1 } %1535, 1, !nosanitize !47
  br i1 %1536, label %1293, label %1537, !prof !48, !nosanitize !47

1537:                                             ; preds = %1534
  %1538 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -4)
  %1539 = extractvalue { i32, i1 } %1538, 1, !nosanitize !47
  br i1 %1539, label %1293, label %1540, !prof !48, !nosanitize !47

1540:                                             ; preds = %1537
  %1541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -5)
  %1542 = extractvalue { i32, i1 } %1541, 1, !nosanitize !47
  br i1 %1542, label %1293, label %1543, !prof !48, !nosanitize !47

1543:                                             ; preds = %1540
  %1544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1528, i32 -6)
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !47
  br i1 %1545, label %1293, label %1546, !prof !48, !nosanitize !47

1546:                                             ; preds = %1543
  %1547 = extractvalue { i32, i1 } %1541, 0, !nosanitize !47
  %1548 = sext i32 %1547 to i64
  %1549 = getelementptr inbounds i8, ptr %2, i64 %1548
  %1550 = load i8, ptr %1549, align 1, !tbaa !5
  %1551 = zext i8 %1550 to i64
  %1552 = getelementptr inbounds nuw i64, ptr %9, i64 %1551
  %1553 = load i64, ptr %1552, align 8, !tbaa !14
  %1554 = extractvalue { i32, i1 } %1538, 0, !nosanitize !47
  %1555 = sext i32 %1554 to i64
  %1556 = getelementptr inbounds i8, ptr %2, i64 %1555
  %1557 = load i8, ptr %1556, align 1, !tbaa !5
  %1558 = zext i8 %1557 to i64
  %1559 = getelementptr inbounds nuw i64, ptr %9, i64 %1558
  %1560 = load i64, ptr %1559, align 8, !tbaa !14
  %1561 = extractvalue { i32, i1 } %1535, 0, !nosanitize !47
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds i8, ptr %2, i64 %1562
  %1564 = load i8, ptr %1563, align 1, !tbaa !5
  %1565 = zext i8 %1564 to i64
  %1566 = getelementptr inbounds nuw i64, ptr %9, i64 %1565
  %1567 = load i64, ptr %1566, align 8, !tbaa !14
  %1568 = extractvalue { i32, i1 } %1532, 0, !nosanitize !47
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds i8, ptr %2, i64 %1569
  %1571 = load i8, ptr %1570, align 1, !tbaa !5
  %1572 = zext i8 %1571 to i64
  %1573 = getelementptr inbounds nuw i64, ptr %9, i64 %1572
  %1574 = load i64, ptr %1573, align 8, !tbaa !14
  %1575 = extractvalue { i32, i1 } %1529, 0, !nosanitize !47
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds i8, ptr %2, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !5
  %1579 = zext i8 %1578 to i64
  %1580 = getelementptr inbounds nuw i64, ptr %9, i64 %1579
  %1581 = load i64, ptr %1580, align 8, !tbaa !14
  %1582 = add i64 %1574, %1581
  %1583 = add i64 %1567, %1582
  %1584 = add i64 %1560, %1583
  %1585 = add i64 %1553, %1584
  %1586 = and i64 %1574, 255
  %1587 = lshr i64 %1581, %1586
  %1588 = or i64 %1587, %1574
  %1589 = and i64 %1567, 255
  %1590 = lshr i64 %1588, %1589
  %1591 = or i64 %1590, %1567
  %1592 = and i64 %1560, 255
  %1593 = lshr i64 %1591, %1592
  %1594 = or i64 %1593, %1560
  %1595 = and i64 %1553, 255
  %1596 = lshr i64 %1594, %1595
  %1597 = or i64 %1596, %1553
  %1598 = extractvalue { i32, i1 } %1544, 0, !nosanitize !47
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds i8, ptr %2, i64 %1599
  %1601 = load i8, ptr %1600, align 1, !tbaa !5
  %1602 = zext i8 %1601 to i64
  %1603 = getelementptr inbounds nuw i64, ptr %9, i64 %1602
  %1604 = load i64, ptr %1603, align 8, !tbaa !14
  %1605 = and i64 %1604, 255
  %1606 = lshr i64 %1597, %1605
  %1607 = or i64 %1606, %1604
  %1608 = add i64 %1604, %1585
  %1609 = getelementptr i8, ptr %1442, i64 %1453
  %1610 = load i8, ptr %1609, align 1, !tbaa !5
  %1611 = zext i8 %1610 to i64
  %1612 = getelementptr inbounds nuw i64, ptr %9, i64 %1611
  %1613 = load i64, ptr %1612, align 8, !tbaa !14
  %1614 = and i64 %1613, 255
  %1615 = lshr i64 %1607, %1614
  %1616 = and i64 %1613, -256
  %1617 = or i64 %1615, %1616
  %1618 = add i64 %1613, %1608
  %1619 = and i64 %1618, 255
  %1620 = lshr i64 %1520, %1619
  %1621 = or i64 %1617, %1620
  %1622 = add i64 %1618, %1526
  %1623 = and i64 %1622, 255
  %1624 = lshr i64 %1623, 3
  %1625 = sub nsw i64 64, %1623
  %1626 = lshr i64 %1621, %1625
  %1627 = and i64 %1622, 7
  store i64 %1626, ptr %1527, align 1, !tbaa !14
  %1628 = getelementptr inbounds nuw i8, ptr %1527, i64 %1624
  %1629 = add nsw i64 %1453, -14
  %1630 = icmp sgt i64 %1453, 14
  br i1 %1630, label %1452, label %2504, !llvm.loop !77

1631:                                             ; preds = %299
  %1632 = srem i32 %23, 8
  %1633 = icmp sgt i32 %1632, 0
  br i1 %1633, label %1634, label %1705

1634:                                             ; preds = %1631
  %1635 = xor i32 %23, -2147483648
  %1636 = add nsw i32 %1632, -1
  %1637 = icmp ugt i32 %1635, %1636
  br i1 %1637, label %1638, label %1674, !prof !75, !nosanitize !47

1638:                                             ; preds = %1634
  %1639 = and i32 %1632, 1
  %1640 = icmp eq i32 %1636, 0
  br i1 %1640, label %1675, label %1641

1641:                                             ; preds = %1638
  %1642 = and i32 %1632, 2147483646
  br label %1643

1643:                                             ; preds = %1643, %1641
  %1644 = phi i32 [ %23, %1641 ], [ %1660, %1643 ]
  %1645 = phi i64 [ 0, %1641 ], [ %1670, %1643 ]
  %1646 = phi i64 [ 0, %1641 ], [ %1671, %1643 ]
  %1647 = phi i32 [ 0, %1641 ], [ %1672, %1643 ]
  %1648 = add i32 %1644, -1
  %1649 = sext i32 %1648 to i64
  %1650 = getelementptr inbounds i8, ptr %2, i64 %1649
  %1651 = load i8, ptr %1650, align 1, !tbaa !5
  %1652 = zext i8 %1651 to i64
  %1653 = getelementptr inbounds nuw i64, ptr %9, i64 %1652
  %1654 = load i64, ptr %1653, align 8, !tbaa !14
  %1655 = and i64 %1654, 255
  %1656 = lshr i64 %1645, %1655
  %1657 = and i64 %1654, -256
  %1658 = or i64 %1656, %1657
  %1659 = add i64 %1654, %1646
  %1660 = add i32 %1644, -2
  %1661 = sext i32 %1660 to i64
  %1662 = getelementptr inbounds i8, ptr %2, i64 %1661
  %1663 = load i8, ptr %1662, align 1, !tbaa !5
  %1664 = zext i8 %1663 to i64
  %1665 = getelementptr inbounds nuw i64, ptr %9, i64 %1664
  %1666 = load i64, ptr %1665, align 8, !tbaa !14
  %1667 = and i64 %1666, 255
  %1668 = lshr i64 %1658, %1667
  %1669 = and i64 %1666, -256
  %1670 = or i64 %1668, %1669
  %1671 = add i64 %1666, %1659
  %1672 = add i32 %1647, 2
  %1673 = icmp eq i32 %1672, %1642
  br i1 %1673, label %1675, label %1643, !llvm.loop !76

1674:                                             ; preds = %1848, %1936, %1939, %1942, %1945, %1948, %1951, %1634, %1712, %1715, %1718, %1721, %1724, %1727, %1730, %1733
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1675:                                             ; preds = %1643, %1638
  %1676 = phi i64 [ poison, %1638 ], [ %1670, %1643 ]
  %1677 = phi i64 [ poison, %1638 ], [ %1671, %1643 ]
  %1678 = phi i32 [ %23, %1638 ], [ %1660, %1643 ]
  %1679 = phi i64 [ 0, %1638 ], [ %1670, %1643 ]
  %1680 = phi i64 [ 0, %1638 ], [ %1671, %1643 ]
  %1681 = icmp eq i32 %1639, 0
  br i1 %1681, label %1695, label %1682

1682:                                             ; preds = %1675
  %1683 = add i32 %1678, -1
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds i8, ptr %2, i64 %1684
  %1686 = load i8, ptr %1685, align 1, !tbaa !5
  %1687 = zext i8 %1686 to i64
  %1688 = getelementptr inbounds nuw i64, ptr %9, i64 %1687
  %1689 = load i64, ptr %1688, align 8, !tbaa !14
  %1690 = and i64 %1689, 255
  %1691 = lshr i64 %1679, %1690
  %1692 = and i64 %1689, -256
  %1693 = or i64 %1691, %1692
  %1694 = add i64 %1689, %1680
  br label %1695

1695:                                             ; preds = %1675, %1682
  %1696 = phi i64 [ %1676, %1675 ], [ %1693, %1682 ]
  %1697 = phi i64 [ %1677, %1675 ], [ %1694, %1682 ]
  %1698 = sub nsw i32 %23, %1632
  %1699 = and i64 %1697, 255
  %1700 = lshr i64 %1699, 3
  %1701 = sub nsw i64 64, %1699
  %1702 = lshr i64 %1696, %1701
  %1703 = and i64 %1697, 7
  store i64 %1702, ptr %0, align 1, !tbaa !14
  %1704 = getelementptr inbounds nuw i8, ptr %0, i64 %1700
  br label %1705

1705:                                             ; preds = %1695, %1631
  %1706 = phi i64 [ %1703, %1695 ], [ 0, %1631 ]
  %1707 = phi ptr [ %1704, %1695 ], [ %0, %1631 ]
  %1708 = phi i64 [ %1696, %1695 ], [ 0, %1631 ]
  %1709 = phi i32 [ %1698, %1695 ], [ %23, %1631 ]
  %1710 = and i32 %1709, 15
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1832, label %1712

1712:                                             ; preds = %1705
  %1713 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -1)
  %1714 = extractvalue { i32, i1 } %1713, 1, !nosanitize !47
  br i1 %1714, label %1674, label %1715, !prof !48, !nosanitize !47

1715:                                             ; preds = %1712
  %1716 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -2)
  %1717 = extractvalue { i32, i1 } %1716, 1, !nosanitize !47
  br i1 %1717, label %1674, label %1718, !prof !48, !nosanitize !47

1718:                                             ; preds = %1715
  %1719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -3)
  %1720 = extractvalue { i32, i1 } %1719, 1, !nosanitize !47
  br i1 %1720, label %1674, label %1721, !prof !48, !nosanitize !47

1721:                                             ; preds = %1718
  %1722 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -4)
  %1723 = extractvalue { i32, i1 } %1722, 1, !nosanitize !47
  br i1 %1723, label %1674, label %1724, !prof !48, !nosanitize !47

1724:                                             ; preds = %1721
  %1725 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -5)
  %1726 = extractvalue { i32, i1 } %1725, 1, !nosanitize !47
  br i1 %1726, label %1674, label %1727, !prof !48, !nosanitize !47

1727:                                             ; preds = %1724
  %1728 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -6)
  %1729 = extractvalue { i32, i1 } %1728, 1, !nosanitize !47
  br i1 %1729, label %1674, label %1730, !prof !48, !nosanitize !47

1730:                                             ; preds = %1727
  %1731 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -7)
  %1732 = extractvalue { i32, i1 } %1731, 1, !nosanitize !47
  br i1 %1732, label %1674, label %1733, !prof !48, !nosanitize !47

1733:                                             ; preds = %1730
  %1734 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1709, i32 -8)
  %1735 = extractvalue { i32, i1 } %1734, 1, !nosanitize !47
  br i1 %1735, label %1674, label %1736, !prof !48, !nosanitize !47

1736:                                             ; preds = %1733
  %1737 = extractvalue { i32, i1 } %1731, 0, !nosanitize !47
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds i8, ptr %2, i64 %1738
  %1740 = load i8, ptr %1739, align 1, !tbaa !5
  %1741 = zext i8 %1740 to i64
  %1742 = getelementptr inbounds nuw i64, ptr %9, i64 %1741
  %1743 = load i64, ptr %1742, align 8, !tbaa !14
  %1744 = extractvalue { i32, i1 } %1728, 0, !nosanitize !47
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds i8, ptr %2, i64 %1745
  %1747 = load i8, ptr %1746, align 1, !tbaa !5
  %1748 = zext i8 %1747 to i64
  %1749 = getelementptr inbounds nuw i64, ptr %9, i64 %1748
  %1750 = load i64, ptr %1749, align 8, !tbaa !14
  %1751 = extractvalue { i32, i1 } %1725, 0, !nosanitize !47
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i8, ptr %2, i64 %1752
  %1754 = load i8, ptr %1753, align 1, !tbaa !5
  %1755 = zext i8 %1754 to i64
  %1756 = getelementptr inbounds nuw i64, ptr %9, i64 %1755
  %1757 = load i64, ptr %1756, align 8, !tbaa !14
  %1758 = extractvalue { i32, i1 } %1722, 0, !nosanitize !47
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds i8, ptr %2, i64 %1759
  %1761 = load i8, ptr %1760, align 1, !tbaa !5
  %1762 = zext i8 %1761 to i64
  %1763 = getelementptr inbounds nuw i64, ptr %9, i64 %1762
  %1764 = load i64, ptr %1763, align 8, !tbaa !14
  %1765 = extractvalue { i32, i1 } %1719, 0, !nosanitize !47
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds i8, ptr %2, i64 %1766
  %1768 = load i8, ptr %1767, align 1, !tbaa !5
  %1769 = zext i8 %1768 to i64
  %1770 = getelementptr inbounds nuw i64, ptr %9, i64 %1769
  %1771 = load i64, ptr %1770, align 8, !tbaa !14
  %1772 = extractvalue { i32, i1 } %1716, 0, !nosanitize !47
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i8, ptr %2, i64 %1773
  %1775 = load i8, ptr %1774, align 1, !tbaa !5
  %1776 = zext i8 %1775 to i64
  %1777 = getelementptr inbounds nuw i64, ptr %9, i64 %1776
  %1778 = load i64, ptr %1777, align 8, !tbaa !14
  %1779 = extractvalue { i32, i1 } %1713, 0, !nosanitize !47
  %1780 = sext i32 %1779 to i64
  %1781 = getelementptr inbounds i8, ptr %2, i64 %1780
  %1782 = load i8, ptr %1781, align 1, !tbaa !5
  %1783 = zext i8 %1782 to i64
  %1784 = getelementptr inbounds nuw i64, ptr %9, i64 %1783
  %1785 = load i64, ptr %1784, align 8, !tbaa !14
  %1786 = add i64 %1785, %1706
  %1787 = add i64 %1778, %1786
  %1788 = add i64 %1771, %1787
  %1789 = add i64 %1764, %1788
  %1790 = add i64 %1757, %1789
  %1791 = add i64 %1750, %1790
  %1792 = add i64 %1743, %1791
  %1793 = and i64 %1785, 255
  %1794 = lshr i64 %1708, %1793
  %1795 = or i64 %1794, %1785
  %1796 = and i64 %1778, 255
  %1797 = lshr i64 %1795, %1796
  %1798 = or i64 %1797, %1778
  %1799 = and i64 %1771, 255
  %1800 = lshr i64 %1798, %1799
  %1801 = or i64 %1800, %1771
  %1802 = and i64 %1764, 255
  %1803 = lshr i64 %1801, %1802
  %1804 = or i64 %1803, %1764
  %1805 = and i64 %1757, 255
  %1806 = lshr i64 %1804, %1805
  %1807 = or i64 %1806, %1757
  %1808 = and i64 %1750, 255
  %1809 = lshr i64 %1807, %1808
  %1810 = or i64 %1809, %1750
  %1811 = and i64 %1743, 255
  %1812 = lshr i64 %1810, %1811
  %1813 = or i64 %1812, %1743
  %1814 = extractvalue { i32, i1 } %1734, 0, !nosanitize !47
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds i8, ptr %2, i64 %1815
  %1817 = load i8, ptr %1816, align 1, !tbaa !5
  %1818 = zext i8 %1817 to i64
  %1819 = getelementptr inbounds nuw i64, ptr %9, i64 %1818
  %1820 = load i64, ptr %1819, align 8, !tbaa !14
  %1821 = and i64 %1820, 255
  %1822 = lshr i64 %1813, %1821
  %1823 = and i64 %1820, -256
  %1824 = or i64 %1822, %1823
  %1825 = add i64 %1820, %1792
  %1826 = and i64 %1825, 255
  %1827 = lshr i64 %1826, 3
  %1828 = sub nsw i64 64, %1826
  %1829 = lshr i64 %1824, %1828
  %1830 = and i64 %1825, 7
  store i64 %1829, ptr %1707, align 1, !tbaa !14
  %1831 = getelementptr inbounds nuw i8, ptr %1707, i64 %1827
  br label %1832

1832:                                             ; preds = %1736, %1705
  %1833 = phi i64 [ %1706, %1705 ], [ %1830, %1736 ]
  %1834 = phi ptr [ %1707, %1705 ], [ %1831, %1736 ]
  %1835 = phi i64 [ %1708, %1705 ], [ %1824, %1736 ]
  %1836 = phi i32 [ %1709, %1705 ], [ %1814, %1736 ]
  %1837 = getelementptr i8, ptr %2, i64 -16
  %1838 = icmp sgt i32 %1836, 0
  br i1 %1838, label %1839, label %2504

1839:                                             ; preds = %1832
  %1840 = zext nneg i32 %1836 to i64
  %1841 = getelementptr i8, ptr %2, i64 -1
  %1842 = getelementptr i8, ptr %2, i64 -2
  %1843 = getelementptr i8, ptr %2, i64 -3
  %1844 = getelementptr i8, ptr %2, i64 -4
  %1845 = getelementptr i8, ptr %2, i64 -5
  %1846 = getelementptr i8, ptr %2, i64 -6
  %1847 = getelementptr i8, ptr %2, i64 -7
  br label %1848

1848:                                             ; preds = %1839, %1954
  %1849 = phi i64 [ %1840, %1839 ], [ %2048, %1954 ]
  %1850 = phi i64 [ %1835, %1839 ], [ %2040, %1954 ]
  %1851 = phi ptr [ %1834, %1839 ], [ %2047, %1954 ]
  %1852 = phi i64 [ %1833, %1839 ], [ %2046, %1954 ]
  %1853 = getelementptr i8, ptr %1841, i64 %1849
  %1854 = load i8, ptr %1853, align 1, !tbaa !5
  %1855 = zext i8 %1854 to i64
  %1856 = getelementptr inbounds nuw i64, ptr %9, i64 %1855
  %1857 = load i64, ptr %1856, align 8, !tbaa !14
  %1858 = and i64 %1857, 255
  %1859 = lshr i64 %1850, %1858
  %1860 = or i64 %1859, %1857
  %1861 = add i64 %1857, %1852
  %1862 = getelementptr i8, ptr %1842, i64 %1849
  %1863 = load i8, ptr %1862, align 1, !tbaa !5
  %1864 = zext i8 %1863 to i64
  %1865 = getelementptr inbounds nuw i64, ptr %9, i64 %1864
  %1866 = load i64, ptr %1865, align 8, !tbaa !14
  %1867 = and i64 %1866, 255
  %1868 = lshr i64 %1860, %1867
  %1869 = or i64 %1868, %1866
  %1870 = add i64 %1866, %1861
  %1871 = getelementptr i8, ptr %1843, i64 %1849
  %1872 = load i8, ptr %1871, align 1, !tbaa !5
  %1873 = zext i8 %1872 to i64
  %1874 = getelementptr inbounds nuw i64, ptr %9, i64 %1873
  %1875 = load i64, ptr %1874, align 8, !tbaa !14
  %1876 = and i64 %1875, 255
  %1877 = lshr i64 %1869, %1876
  %1878 = or i64 %1877, %1875
  %1879 = add i64 %1875, %1870
  %1880 = getelementptr i8, ptr %1844, i64 %1849
  %1881 = load i8, ptr %1880, align 1, !tbaa !5
  %1882 = zext i8 %1881 to i64
  %1883 = getelementptr inbounds nuw i64, ptr %9, i64 %1882
  %1884 = load i64, ptr %1883, align 8, !tbaa !14
  %1885 = and i64 %1884, 255
  %1886 = lshr i64 %1878, %1885
  %1887 = or i64 %1886, %1884
  %1888 = add i64 %1884, %1879
  %1889 = getelementptr i8, ptr %1845, i64 %1849
  %1890 = load i8, ptr %1889, align 1, !tbaa !5
  %1891 = zext i8 %1890 to i64
  %1892 = getelementptr inbounds nuw i64, ptr %9, i64 %1891
  %1893 = load i64, ptr %1892, align 8, !tbaa !14
  %1894 = and i64 %1893, 255
  %1895 = lshr i64 %1887, %1894
  %1896 = or i64 %1895, %1893
  %1897 = add i64 %1893, %1888
  %1898 = getelementptr i8, ptr %1846, i64 %1849
  %1899 = load i8, ptr %1898, align 1, !tbaa !5
  %1900 = zext i8 %1899 to i64
  %1901 = getelementptr inbounds nuw i64, ptr %9, i64 %1900
  %1902 = load i64, ptr %1901, align 8, !tbaa !14
  %1903 = and i64 %1902, 255
  %1904 = lshr i64 %1896, %1903
  %1905 = or i64 %1904, %1902
  %1906 = add i64 %1902, %1897
  %1907 = getelementptr i8, ptr %1847, i64 %1849
  %1908 = load i8, ptr %1907, align 1, !tbaa !5
  %1909 = zext i8 %1908 to i64
  %1910 = getelementptr inbounds nuw i64, ptr %9, i64 %1909
  %1911 = load i64, ptr %1910, align 8, !tbaa !14
  %1912 = and i64 %1911, 255
  %1913 = lshr i64 %1905, %1912
  %1914 = or i64 %1913, %1911
  %1915 = add i64 %1911, %1906
  %1916 = add nsw i64 %1849, -8
  %1917 = getelementptr inbounds i8, ptr %2, i64 %1916
  %1918 = load i8, ptr %1917, align 1, !tbaa !5
  %1919 = zext i8 %1918 to i64
  %1920 = getelementptr inbounds nuw i64, ptr %9, i64 %1919
  %1921 = load i64, ptr %1920, align 8, !tbaa !14
  %1922 = and i64 %1921, 255
  %1923 = lshr i64 %1914, %1922
  %1924 = and i64 %1921, -256
  %1925 = or i64 %1923, %1924
  %1926 = add i64 %1921, %1915
  %1927 = and i64 %1926, 255
  %1928 = lshr i64 %1927, 3
  %1929 = sub nsw i64 64, %1927
  %1930 = lshr i64 %1925, %1929
  %1931 = and i64 %1926, 7
  store i64 %1930, ptr %1851, align 1, !tbaa !14
  %1932 = getelementptr inbounds nuw i8, ptr %1851, i64 %1928
  %1933 = trunc nsw i64 %1916 to i32
  %1934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -1)
  %1935 = extractvalue { i32, i1 } %1934, 1, !nosanitize !47
  br i1 %1935, label %1674, label %1936, !prof !48, !nosanitize !47

1936:                                             ; preds = %1848
  %1937 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -2)
  %1938 = extractvalue { i32, i1 } %1937, 1, !nosanitize !47
  br i1 %1938, label %1674, label %1939, !prof !48, !nosanitize !47

1939:                                             ; preds = %1936
  %1940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -3)
  %1941 = extractvalue { i32, i1 } %1940, 1, !nosanitize !47
  br i1 %1941, label %1674, label %1942, !prof !48, !nosanitize !47

1942:                                             ; preds = %1939
  %1943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -4)
  %1944 = extractvalue { i32, i1 } %1943, 1, !nosanitize !47
  br i1 %1944, label %1674, label %1945, !prof !48, !nosanitize !47

1945:                                             ; preds = %1942
  %1946 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -5)
  %1947 = extractvalue { i32, i1 } %1946, 1, !nosanitize !47
  br i1 %1947, label %1674, label %1948, !prof !48, !nosanitize !47

1948:                                             ; preds = %1945
  %1949 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -6)
  %1950 = extractvalue { i32, i1 } %1949, 1, !nosanitize !47
  br i1 %1950, label %1674, label %1951, !prof !48, !nosanitize !47

1951:                                             ; preds = %1948
  %1952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1933, i32 -7)
  %1953 = extractvalue { i32, i1 } %1952, 1, !nosanitize !47
  br i1 %1953, label %1674, label %1954, !prof !48, !nosanitize !47

1954:                                             ; preds = %1951
  %1955 = extractvalue { i32, i1 } %1949, 0, !nosanitize !47
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds i8, ptr %2, i64 %1956
  %1958 = load i8, ptr %1957, align 1, !tbaa !5
  %1959 = zext i8 %1958 to i64
  %1960 = getelementptr inbounds nuw i64, ptr %9, i64 %1959
  %1961 = load i64, ptr %1960, align 8, !tbaa !14
  %1962 = extractvalue { i32, i1 } %1946, 0, !nosanitize !47
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds i8, ptr %2, i64 %1963
  %1965 = load i8, ptr %1964, align 1, !tbaa !5
  %1966 = zext i8 %1965 to i64
  %1967 = getelementptr inbounds nuw i64, ptr %9, i64 %1966
  %1968 = load i64, ptr %1967, align 8, !tbaa !14
  %1969 = extractvalue { i32, i1 } %1943, 0, !nosanitize !47
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds i8, ptr %2, i64 %1970
  %1972 = load i8, ptr %1971, align 1, !tbaa !5
  %1973 = zext i8 %1972 to i64
  %1974 = getelementptr inbounds nuw i64, ptr %9, i64 %1973
  %1975 = load i64, ptr %1974, align 8, !tbaa !14
  %1976 = extractvalue { i32, i1 } %1940, 0, !nosanitize !47
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds i8, ptr %2, i64 %1977
  %1979 = load i8, ptr %1978, align 1, !tbaa !5
  %1980 = zext i8 %1979 to i64
  %1981 = getelementptr inbounds nuw i64, ptr %9, i64 %1980
  %1982 = load i64, ptr %1981, align 8, !tbaa !14
  %1983 = extractvalue { i32, i1 } %1937, 0, !nosanitize !47
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds i8, ptr %2, i64 %1984
  %1986 = load i8, ptr %1985, align 1, !tbaa !5
  %1987 = zext i8 %1986 to i64
  %1988 = getelementptr inbounds nuw i64, ptr %9, i64 %1987
  %1989 = load i64, ptr %1988, align 8, !tbaa !14
  %1990 = extractvalue { i32, i1 } %1934, 0, !nosanitize !47
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i8, ptr %2, i64 %1991
  %1993 = load i8, ptr %1992, align 1, !tbaa !5
  %1994 = zext i8 %1993 to i64
  %1995 = getelementptr inbounds nuw i64, ptr %9, i64 %1994
  %1996 = load i64, ptr %1995, align 8, !tbaa !14
  %1997 = add i64 %1989, %1996
  %1998 = add i64 %1982, %1997
  %1999 = add i64 %1975, %1998
  %2000 = add i64 %1968, %1999
  %2001 = add i64 %1961, %2000
  %2002 = and i64 %1989, 255
  %2003 = lshr i64 %1996, %2002
  %2004 = or i64 %2003, %1989
  %2005 = and i64 %1982, 255
  %2006 = lshr i64 %2004, %2005
  %2007 = or i64 %2006, %1982
  %2008 = and i64 %1975, 255
  %2009 = lshr i64 %2007, %2008
  %2010 = or i64 %2009, %1975
  %2011 = and i64 %1968, 255
  %2012 = lshr i64 %2010, %2011
  %2013 = or i64 %2012, %1968
  %2014 = and i64 %1961, 255
  %2015 = lshr i64 %2013, %2014
  %2016 = or i64 %2015, %1961
  %2017 = extractvalue { i32, i1 } %1952, 0, !nosanitize !47
  %2018 = sext i32 %2017 to i64
  %2019 = getelementptr inbounds i8, ptr %2, i64 %2018
  %2020 = load i8, ptr %2019, align 1, !tbaa !5
  %2021 = zext i8 %2020 to i64
  %2022 = getelementptr inbounds nuw i64, ptr %9, i64 %2021
  %2023 = load i64, ptr %2022, align 8, !tbaa !14
  %2024 = and i64 %2023, 255
  %2025 = lshr i64 %2016, %2024
  %2026 = or i64 %2025, %2023
  %2027 = add i64 %2023, %2001
  %2028 = getelementptr i8, ptr %1837, i64 %1849
  %2029 = load i8, ptr %2028, align 1, !tbaa !5
  %2030 = zext i8 %2029 to i64
  %2031 = getelementptr inbounds nuw i64, ptr %9, i64 %2030
  %2032 = load i64, ptr %2031, align 8, !tbaa !14
  %2033 = and i64 %2032, 255
  %2034 = lshr i64 %2026, %2033
  %2035 = and i64 %2032, -256
  %2036 = or i64 %2034, %2035
  %2037 = add i64 %2032, %2027
  %2038 = and i64 %2037, 255
  %2039 = lshr i64 %1925, %2038
  %2040 = or i64 %2036, %2039
  %2041 = add i64 %2037, %1931
  %2042 = and i64 %2041, 255
  %2043 = lshr i64 %2042, 3
  %2044 = sub nsw i64 64, %2042
  %2045 = lshr i64 %2040, %2044
  %2046 = and i64 %2041, 7
  store i64 %2045, ptr %1932, align 1, !tbaa !14
  %2047 = getelementptr inbounds nuw i8, ptr %1932, i64 %2043
  %2048 = add nsw i64 %1849, -16
  %2049 = icmp sgt i64 %1849, 16
  br i1 %2049, label %1848, label %2504, !llvm.loop !77

2050:                                             ; preds = %299
  %2051 = srem i32 %23, 9
  %2052 = icmp sgt i32 %2051, 0
  br i1 %2052, label %2053, label %2124

2053:                                             ; preds = %2050
  %2054 = xor i32 %23, -2147483648
  %2055 = add nsw i32 %2051, -1
  %2056 = icmp ugt i32 %2054, %2055
  br i1 %2056, label %2057, label %2093, !prof !75, !nosanitize !47

2057:                                             ; preds = %2053
  %2058 = and i32 %2051, 1
  %2059 = icmp eq i32 %2055, 0
  br i1 %2059, label %2094, label %2060

2060:                                             ; preds = %2057
  %2061 = and i32 %2051, 2147483646
  br label %2062

2062:                                             ; preds = %2062, %2060
  %2063 = phi i32 [ %23, %2060 ], [ %2079, %2062 ]
  %2064 = phi i64 [ 0, %2060 ], [ %2089, %2062 ]
  %2065 = phi i64 [ 0, %2060 ], [ %2090, %2062 ]
  %2066 = phi i32 [ 0, %2060 ], [ %2091, %2062 ]
  %2067 = add i32 %2063, -1
  %2068 = sext i32 %2067 to i64
  %2069 = getelementptr inbounds i8, ptr %2, i64 %2068
  %2070 = load i8, ptr %2069, align 1, !tbaa !5
  %2071 = zext i8 %2070 to i64
  %2072 = getelementptr inbounds nuw i64, ptr %9, i64 %2071
  %2073 = load i64, ptr %2072, align 8, !tbaa !14
  %2074 = and i64 %2073, 255
  %2075 = lshr i64 %2064, %2074
  %2076 = and i64 %2073, -256
  %2077 = or i64 %2075, %2076
  %2078 = add i64 %2073, %2065
  %2079 = add i32 %2063, -2
  %2080 = sext i32 %2079 to i64
  %2081 = getelementptr inbounds i8, ptr %2, i64 %2080
  %2082 = load i8, ptr %2081, align 1, !tbaa !5
  %2083 = zext i8 %2082 to i64
  %2084 = getelementptr inbounds nuw i64, ptr %9, i64 %2083
  %2085 = load i64, ptr %2084, align 8, !tbaa !14
  %2086 = and i64 %2085, 255
  %2087 = lshr i64 %2077, %2086
  %2088 = and i64 %2085, -256
  %2089 = or i64 %2087, %2088
  %2090 = add i64 %2085, %2078
  %2091 = add i32 %2066, 2
  %2092 = icmp eq i32 %2091, %2061
  br i1 %2092, label %2094, label %2062, !llvm.loop !76

2093:                                             ; preds = %2281, %2377, %2380, %2383, %2386, %2389, %2392, %2395, %2053, %2131, %2134, %2137, %2140, %2143, %2146, %2149, %2152, %2155
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2094:                                             ; preds = %2062, %2057
  %2095 = phi i64 [ poison, %2057 ], [ %2089, %2062 ]
  %2096 = phi i64 [ poison, %2057 ], [ %2090, %2062 ]
  %2097 = phi i32 [ %23, %2057 ], [ %2079, %2062 ]
  %2098 = phi i64 [ 0, %2057 ], [ %2089, %2062 ]
  %2099 = phi i64 [ 0, %2057 ], [ %2090, %2062 ]
  %2100 = icmp eq i32 %2058, 0
  br i1 %2100, label %2114, label %2101

2101:                                             ; preds = %2094
  %2102 = add i32 %2097, -1
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds i8, ptr %2, i64 %2103
  %2105 = load i8, ptr %2104, align 1, !tbaa !5
  %2106 = zext i8 %2105 to i64
  %2107 = getelementptr inbounds nuw i64, ptr %9, i64 %2106
  %2108 = load i64, ptr %2107, align 8, !tbaa !14
  %2109 = and i64 %2108, 255
  %2110 = lshr i64 %2098, %2109
  %2111 = and i64 %2108, -256
  %2112 = or i64 %2110, %2111
  %2113 = add i64 %2108, %2099
  br label %2114

2114:                                             ; preds = %2094, %2101
  %2115 = phi i64 [ %2095, %2094 ], [ %2112, %2101 ]
  %2116 = phi i64 [ %2096, %2094 ], [ %2113, %2101 ]
  %2117 = sub nsw i32 %23, %2051
  %2118 = and i64 %2116, 255
  %2119 = lshr i64 %2118, 3
  %2120 = sub nsw i64 64, %2118
  %2121 = lshr i64 %2115, %2120
  %2122 = and i64 %2116, 7
  store i64 %2121, ptr %0, align 1, !tbaa !14
  %2123 = getelementptr inbounds nuw i8, ptr %0, i64 %2119
  br label %2124

2124:                                             ; preds = %2114, %2050
  %2125 = phi i64 [ %2122, %2114 ], [ 0, %2050 ]
  %2126 = phi ptr [ %2123, %2114 ], [ %0, %2050 ]
  %2127 = phi i64 [ %2115, %2114 ], [ 0, %2050 ]
  %2128 = phi i32 [ %2117, %2114 ], [ %23, %2050 ]
  %2129 = srem i32 %2128, 18
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %2264, label %2131

2131:                                             ; preds = %2124
  %2132 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -1)
  %2133 = extractvalue { i32, i1 } %2132, 1, !nosanitize !47
  br i1 %2133, label %2093, label %2134, !prof !48, !nosanitize !47

2134:                                             ; preds = %2131
  %2135 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -2)
  %2136 = extractvalue { i32, i1 } %2135, 1, !nosanitize !47
  br i1 %2136, label %2093, label %2137, !prof !48, !nosanitize !47

2137:                                             ; preds = %2134
  %2138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -3)
  %2139 = extractvalue { i32, i1 } %2138, 1, !nosanitize !47
  br i1 %2139, label %2093, label %2140, !prof !48, !nosanitize !47

2140:                                             ; preds = %2137
  %2141 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -4)
  %2142 = extractvalue { i32, i1 } %2141, 1, !nosanitize !47
  br i1 %2142, label %2093, label %2143, !prof !48, !nosanitize !47

2143:                                             ; preds = %2140
  %2144 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -5)
  %2145 = extractvalue { i32, i1 } %2144, 1, !nosanitize !47
  br i1 %2145, label %2093, label %2146, !prof !48, !nosanitize !47

2146:                                             ; preds = %2143
  %2147 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -6)
  %2148 = extractvalue { i32, i1 } %2147, 1, !nosanitize !47
  br i1 %2148, label %2093, label %2149, !prof !48, !nosanitize !47

2149:                                             ; preds = %2146
  %2150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -7)
  %2151 = extractvalue { i32, i1 } %2150, 1, !nosanitize !47
  br i1 %2151, label %2093, label %2152, !prof !48, !nosanitize !47

2152:                                             ; preds = %2149
  %2153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -8)
  %2154 = extractvalue { i32, i1 } %2153, 1, !nosanitize !47
  br i1 %2154, label %2093, label %2155, !prof !48, !nosanitize !47

2155:                                             ; preds = %2152
  %2156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2128, i32 -9)
  %2157 = extractvalue { i32, i1 } %2156, 1, !nosanitize !47
  br i1 %2157, label %2093, label %2158, !prof !48, !nosanitize !47

2158:                                             ; preds = %2155
  %2159 = extractvalue { i32, i1 } %2153, 0, !nosanitize !47
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds i8, ptr %2, i64 %2160
  %2162 = load i8, ptr %2161, align 1, !tbaa !5
  %2163 = zext i8 %2162 to i64
  %2164 = getelementptr inbounds nuw i64, ptr %9, i64 %2163
  %2165 = load i64, ptr %2164, align 8, !tbaa !14
  %2166 = extractvalue { i32, i1 } %2150, 0, !nosanitize !47
  %2167 = sext i32 %2166 to i64
  %2168 = getelementptr inbounds i8, ptr %2, i64 %2167
  %2169 = load i8, ptr %2168, align 1, !tbaa !5
  %2170 = zext i8 %2169 to i64
  %2171 = getelementptr inbounds nuw i64, ptr %9, i64 %2170
  %2172 = load i64, ptr %2171, align 8, !tbaa !14
  %2173 = extractvalue { i32, i1 } %2147, 0, !nosanitize !47
  %2174 = sext i32 %2173 to i64
  %2175 = getelementptr inbounds i8, ptr %2, i64 %2174
  %2176 = load i8, ptr %2175, align 1, !tbaa !5
  %2177 = zext i8 %2176 to i64
  %2178 = getelementptr inbounds nuw i64, ptr %9, i64 %2177
  %2179 = load i64, ptr %2178, align 8, !tbaa !14
  %2180 = extractvalue { i32, i1 } %2144, 0, !nosanitize !47
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds i8, ptr %2, i64 %2181
  %2183 = load i8, ptr %2182, align 1, !tbaa !5
  %2184 = zext i8 %2183 to i64
  %2185 = getelementptr inbounds nuw i64, ptr %9, i64 %2184
  %2186 = load i64, ptr %2185, align 8, !tbaa !14
  %2187 = extractvalue { i32, i1 } %2141, 0, !nosanitize !47
  %2188 = sext i32 %2187 to i64
  %2189 = getelementptr inbounds i8, ptr %2, i64 %2188
  %2190 = load i8, ptr %2189, align 1, !tbaa !5
  %2191 = zext i8 %2190 to i64
  %2192 = getelementptr inbounds nuw i64, ptr %9, i64 %2191
  %2193 = load i64, ptr %2192, align 8, !tbaa !14
  %2194 = extractvalue { i32, i1 } %2138, 0, !nosanitize !47
  %2195 = sext i32 %2194 to i64
  %2196 = getelementptr inbounds i8, ptr %2, i64 %2195
  %2197 = load i8, ptr %2196, align 1, !tbaa !5
  %2198 = zext i8 %2197 to i64
  %2199 = getelementptr inbounds nuw i64, ptr %9, i64 %2198
  %2200 = load i64, ptr %2199, align 8, !tbaa !14
  %2201 = extractvalue { i32, i1 } %2135, 0, !nosanitize !47
  %2202 = sext i32 %2201 to i64
  %2203 = getelementptr inbounds i8, ptr %2, i64 %2202
  %2204 = load i8, ptr %2203, align 1, !tbaa !5
  %2205 = zext i8 %2204 to i64
  %2206 = getelementptr inbounds nuw i64, ptr %9, i64 %2205
  %2207 = load i64, ptr %2206, align 8, !tbaa !14
  %2208 = extractvalue { i32, i1 } %2132, 0, !nosanitize !47
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds i8, ptr %2, i64 %2209
  %2211 = load i8, ptr %2210, align 1, !tbaa !5
  %2212 = zext i8 %2211 to i64
  %2213 = getelementptr inbounds nuw i64, ptr %9, i64 %2212
  %2214 = load i64, ptr %2213, align 8, !tbaa !14
  %2215 = add i64 %2214, %2125
  %2216 = add i64 %2207, %2215
  %2217 = add i64 %2200, %2216
  %2218 = add i64 %2193, %2217
  %2219 = add i64 %2186, %2218
  %2220 = add i64 %2179, %2219
  %2221 = add i64 %2172, %2220
  %2222 = add i64 %2165, %2221
  %2223 = and i64 %2214, 255
  %2224 = lshr i64 %2127, %2223
  %2225 = or i64 %2224, %2214
  %2226 = and i64 %2207, 255
  %2227 = lshr i64 %2225, %2226
  %2228 = or i64 %2227, %2207
  %2229 = and i64 %2200, 255
  %2230 = lshr i64 %2228, %2229
  %2231 = or i64 %2230, %2200
  %2232 = and i64 %2193, 255
  %2233 = lshr i64 %2231, %2232
  %2234 = or i64 %2233, %2193
  %2235 = and i64 %2186, 255
  %2236 = lshr i64 %2234, %2235
  %2237 = or i64 %2236, %2186
  %2238 = and i64 %2179, 255
  %2239 = lshr i64 %2237, %2238
  %2240 = or i64 %2239, %2179
  %2241 = and i64 %2172, 255
  %2242 = lshr i64 %2240, %2241
  %2243 = or i64 %2242, %2172
  %2244 = and i64 %2165, 255
  %2245 = lshr i64 %2243, %2244
  %2246 = or i64 %2245, %2165
  %2247 = extractvalue { i32, i1 } %2156, 0, !nosanitize !47
  %2248 = sext i32 %2247 to i64
  %2249 = getelementptr inbounds i8, ptr %2, i64 %2248
  %2250 = load i8, ptr %2249, align 1, !tbaa !5
  %2251 = zext i8 %2250 to i64
  %2252 = getelementptr inbounds nuw i64, ptr %9, i64 %2251
  %2253 = load i64, ptr %2252, align 8, !tbaa !14
  %2254 = and i64 %2253, 255
  %2255 = lshr i64 %2246, %2254
  %2256 = or i64 %2255, %2253
  %2257 = add i64 %2253, %2222
  %2258 = and i64 %2257, 255
  %2259 = lshr i64 %2258, 3
  %2260 = sub nsw i64 64, %2258
  %2261 = lshr i64 %2256, %2260
  %2262 = and i64 %2257, 7
  store i64 %2261, ptr %2126, align 1, !tbaa !14
  %2263 = getelementptr inbounds nuw i8, ptr %2126, i64 %2259
  br label %2264

2264:                                             ; preds = %2158, %2124
  %2265 = phi i64 [ %2125, %2124 ], [ %2262, %2158 ]
  %2266 = phi ptr [ %2126, %2124 ], [ %2263, %2158 ]
  %2267 = phi i64 [ %2127, %2124 ], [ %2256, %2158 ]
  %2268 = phi i32 [ %2128, %2124 ], [ %2247, %2158 ]
  %2269 = getelementptr i8, ptr %2, i64 -18
  %2270 = icmp sgt i32 %2268, 0
  br i1 %2270, label %2271, label %2504

2271:                                             ; preds = %2264
  %2272 = zext nneg i32 %2268 to i64
  %2273 = getelementptr i8, ptr %2, i64 -1
  %2274 = getelementptr i8, ptr %2, i64 -2
  %2275 = getelementptr i8, ptr %2, i64 -3
  %2276 = getelementptr i8, ptr %2, i64 -4
  %2277 = getelementptr i8, ptr %2, i64 -5
  %2278 = getelementptr i8, ptr %2, i64 -6
  %2279 = getelementptr i8, ptr %2, i64 -7
  %2280 = getelementptr i8, ptr %2, i64 -8
  br label %2281

2281:                                             ; preds = %2271, %2398
  %2282 = phi i64 [ %2272, %2271 ], [ %2502, %2398 ]
  %2283 = phi i64 [ %2267, %2271 ], [ %2494, %2398 ]
  %2284 = phi ptr [ %2266, %2271 ], [ %2501, %2398 ]
  %2285 = phi i64 [ %2265, %2271 ], [ %2500, %2398 ]
  %2286 = getelementptr i8, ptr %2273, i64 %2282
  %2287 = load i8, ptr %2286, align 1, !tbaa !5
  %2288 = zext i8 %2287 to i64
  %2289 = getelementptr inbounds nuw i64, ptr %9, i64 %2288
  %2290 = load i64, ptr %2289, align 8, !tbaa !14
  %2291 = and i64 %2290, 255
  %2292 = lshr i64 %2283, %2291
  %2293 = or i64 %2292, %2290
  %2294 = add i64 %2290, %2285
  %2295 = getelementptr i8, ptr %2274, i64 %2282
  %2296 = load i8, ptr %2295, align 1, !tbaa !5
  %2297 = zext i8 %2296 to i64
  %2298 = getelementptr inbounds nuw i64, ptr %9, i64 %2297
  %2299 = load i64, ptr %2298, align 8, !tbaa !14
  %2300 = and i64 %2299, 255
  %2301 = lshr i64 %2293, %2300
  %2302 = or i64 %2301, %2299
  %2303 = add i64 %2299, %2294
  %2304 = getelementptr i8, ptr %2275, i64 %2282
  %2305 = load i8, ptr %2304, align 1, !tbaa !5
  %2306 = zext i8 %2305 to i64
  %2307 = getelementptr inbounds nuw i64, ptr %9, i64 %2306
  %2308 = load i64, ptr %2307, align 8, !tbaa !14
  %2309 = and i64 %2308, 255
  %2310 = lshr i64 %2302, %2309
  %2311 = or i64 %2310, %2308
  %2312 = add i64 %2308, %2303
  %2313 = getelementptr i8, ptr %2276, i64 %2282
  %2314 = load i8, ptr %2313, align 1, !tbaa !5
  %2315 = zext i8 %2314 to i64
  %2316 = getelementptr inbounds nuw i64, ptr %9, i64 %2315
  %2317 = load i64, ptr %2316, align 8, !tbaa !14
  %2318 = and i64 %2317, 255
  %2319 = lshr i64 %2311, %2318
  %2320 = or i64 %2319, %2317
  %2321 = add i64 %2317, %2312
  %2322 = getelementptr i8, ptr %2277, i64 %2282
  %2323 = load i8, ptr %2322, align 1, !tbaa !5
  %2324 = zext i8 %2323 to i64
  %2325 = getelementptr inbounds nuw i64, ptr %9, i64 %2324
  %2326 = load i64, ptr %2325, align 8, !tbaa !14
  %2327 = and i64 %2326, 255
  %2328 = lshr i64 %2320, %2327
  %2329 = or i64 %2328, %2326
  %2330 = add i64 %2326, %2321
  %2331 = getelementptr i8, ptr %2278, i64 %2282
  %2332 = load i8, ptr %2331, align 1, !tbaa !5
  %2333 = zext i8 %2332 to i64
  %2334 = getelementptr inbounds nuw i64, ptr %9, i64 %2333
  %2335 = load i64, ptr %2334, align 8, !tbaa !14
  %2336 = and i64 %2335, 255
  %2337 = lshr i64 %2329, %2336
  %2338 = or i64 %2337, %2335
  %2339 = add i64 %2335, %2330
  %2340 = getelementptr i8, ptr %2279, i64 %2282
  %2341 = load i8, ptr %2340, align 1, !tbaa !5
  %2342 = zext i8 %2341 to i64
  %2343 = getelementptr inbounds nuw i64, ptr %9, i64 %2342
  %2344 = load i64, ptr %2343, align 8, !tbaa !14
  %2345 = and i64 %2344, 255
  %2346 = lshr i64 %2338, %2345
  %2347 = or i64 %2346, %2344
  %2348 = add i64 %2344, %2339
  %2349 = getelementptr i8, ptr %2280, i64 %2282
  %2350 = load i8, ptr %2349, align 1, !tbaa !5
  %2351 = zext i8 %2350 to i64
  %2352 = getelementptr inbounds nuw i64, ptr %9, i64 %2351
  %2353 = load i64, ptr %2352, align 8, !tbaa !14
  %2354 = and i64 %2353, 255
  %2355 = lshr i64 %2347, %2354
  %2356 = or i64 %2355, %2353
  %2357 = add i64 %2353, %2348
  %2358 = add nsw i64 %2282, -9
  %2359 = getelementptr inbounds i8, ptr %2, i64 %2358
  %2360 = load i8, ptr %2359, align 1, !tbaa !5
  %2361 = zext i8 %2360 to i64
  %2362 = getelementptr inbounds nuw i64, ptr %9, i64 %2361
  %2363 = load i64, ptr %2362, align 8, !tbaa !14
  %2364 = and i64 %2363, 255
  %2365 = lshr i64 %2356, %2364
  %2366 = or i64 %2365, %2363
  %2367 = add i64 %2363, %2357
  %2368 = and i64 %2367, 255
  %2369 = lshr i64 %2368, 3
  %2370 = sub nsw i64 64, %2368
  %2371 = lshr i64 %2366, %2370
  %2372 = and i64 %2367, 7
  store i64 %2371, ptr %2284, align 1, !tbaa !14
  %2373 = getelementptr inbounds nuw i8, ptr %2284, i64 %2369
  %2374 = trunc nsw i64 %2358 to i32
  %2375 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -1)
  %2376 = extractvalue { i32, i1 } %2375, 1, !nosanitize !47
  br i1 %2376, label %2093, label %2377, !prof !48, !nosanitize !47

2377:                                             ; preds = %2281
  %2378 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -2)
  %2379 = extractvalue { i32, i1 } %2378, 1, !nosanitize !47
  br i1 %2379, label %2093, label %2380, !prof !48, !nosanitize !47

2380:                                             ; preds = %2377
  %2381 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -3)
  %2382 = extractvalue { i32, i1 } %2381, 1, !nosanitize !47
  br i1 %2382, label %2093, label %2383, !prof !48, !nosanitize !47

2383:                                             ; preds = %2380
  %2384 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -4)
  %2385 = extractvalue { i32, i1 } %2384, 1, !nosanitize !47
  br i1 %2385, label %2093, label %2386, !prof !48, !nosanitize !47

2386:                                             ; preds = %2383
  %2387 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -5)
  %2388 = extractvalue { i32, i1 } %2387, 1, !nosanitize !47
  br i1 %2388, label %2093, label %2389, !prof !48, !nosanitize !47

2389:                                             ; preds = %2386
  %2390 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -6)
  %2391 = extractvalue { i32, i1 } %2390, 1, !nosanitize !47
  br i1 %2391, label %2093, label %2392, !prof !48, !nosanitize !47

2392:                                             ; preds = %2389
  %2393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -7)
  %2394 = extractvalue { i32, i1 } %2393, 1, !nosanitize !47
  br i1 %2394, label %2093, label %2395, !prof !48, !nosanitize !47

2395:                                             ; preds = %2392
  %2396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2374, i32 -8)
  %2397 = extractvalue { i32, i1 } %2396, 1, !nosanitize !47
  br i1 %2397, label %2093, label %2398, !prof !48, !nosanitize !47

2398:                                             ; preds = %2395
  %2399 = extractvalue { i32, i1 } %2393, 0, !nosanitize !47
  %2400 = sext i32 %2399 to i64
  %2401 = getelementptr inbounds i8, ptr %2, i64 %2400
  %2402 = load i8, ptr %2401, align 1, !tbaa !5
  %2403 = zext i8 %2402 to i64
  %2404 = getelementptr inbounds nuw i64, ptr %9, i64 %2403
  %2405 = load i64, ptr %2404, align 8, !tbaa !14
  %2406 = extractvalue { i32, i1 } %2390, 0, !nosanitize !47
  %2407 = sext i32 %2406 to i64
  %2408 = getelementptr inbounds i8, ptr %2, i64 %2407
  %2409 = load i8, ptr %2408, align 1, !tbaa !5
  %2410 = zext i8 %2409 to i64
  %2411 = getelementptr inbounds nuw i64, ptr %9, i64 %2410
  %2412 = load i64, ptr %2411, align 8, !tbaa !14
  %2413 = extractvalue { i32, i1 } %2387, 0, !nosanitize !47
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds i8, ptr %2, i64 %2414
  %2416 = load i8, ptr %2415, align 1, !tbaa !5
  %2417 = zext i8 %2416 to i64
  %2418 = getelementptr inbounds nuw i64, ptr %9, i64 %2417
  %2419 = load i64, ptr %2418, align 8, !tbaa !14
  %2420 = extractvalue { i32, i1 } %2384, 0, !nosanitize !47
  %2421 = sext i32 %2420 to i64
  %2422 = getelementptr inbounds i8, ptr %2, i64 %2421
  %2423 = load i8, ptr %2422, align 1, !tbaa !5
  %2424 = zext i8 %2423 to i64
  %2425 = getelementptr inbounds nuw i64, ptr %9, i64 %2424
  %2426 = load i64, ptr %2425, align 8, !tbaa !14
  %2427 = extractvalue { i32, i1 } %2381, 0, !nosanitize !47
  %2428 = sext i32 %2427 to i64
  %2429 = getelementptr inbounds i8, ptr %2, i64 %2428
  %2430 = load i8, ptr %2429, align 1, !tbaa !5
  %2431 = zext i8 %2430 to i64
  %2432 = getelementptr inbounds nuw i64, ptr %9, i64 %2431
  %2433 = load i64, ptr %2432, align 8, !tbaa !14
  %2434 = extractvalue { i32, i1 } %2378, 0, !nosanitize !47
  %2435 = sext i32 %2434 to i64
  %2436 = getelementptr inbounds i8, ptr %2, i64 %2435
  %2437 = load i8, ptr %2436, align 1, !tbaa !5
  %2438 = zext i8 %2437 to i64
  %2439 = getelementptr inbounds nuw i64, ptr %9, i64 %2438
  %2440 = load i64, ptr %2439, align 8, !tbaa !14
  %2441 = extractvalue { i32, i1 } %2375, 0, !nosanitize !47
  %2442 = sext i32 %2441 to i64
  %2443 = getelementptr inbounds i8, ptr %2, i64 %2442
  %2444 = load i8, ptr %2443, align 1, !tbaa !5
  %2445 = zext i8 %2444 to i64
  %2446 = getelementptr inbounds nuw i64, ptr %9, i64 %2445
  %2447 = load i64, ptr %2446, align 8, !tbaa !14
  %2448 = add i64 %2440, %2447
  %2449 = add i64 %2433, %2448
  %2450 = add i64 %2426, %2449
  %2451 = add i64 %2419, %2450
  %2452 = add i64 %2412, %2451
  %2453 = add i64 %2405, %2452
  %2454 = and i64 %2440, 255
  %2455 = lshr i64 %2447, %2454
  %2456 = or i64 %2455, %2440
  %2457 = and i64 %2433, 255
  %2458 = lshr i64 %2456, %2457
  %2459 = or i64 %2458, %2433
  %2460 = and i64 %2426, 255
  %2461 = lshr i64 %2459, %2460
  %2462 = or i64 %2461, %2426
  %2463 = and i64 %2419, 255
  %2464 = lshr i64 %2462, %2463
  %2465 = or i64 %2464, %2419
  %2466 = and i64 %2412, 255
  %2467 = lshr i64 %2465, %2466
  %2468 = or i64 %2467, %2412
  %2469 = and i64 %2405, 255
  %2470 = lshr i64 %2468, %2469
  %2471 = or i64 %2470, %2405
  %2472 = extractvalue { i32, i1 } %2396, 0, !nosanitize !47
  %2473 = sext i32 %2472 to i64
  %2474 = getelementptr inbounds i8, ptr %2, i64 %2473
  %2475 = load i8, ptr %2474, align 1, !tbaa !5
  %2476 = zext i8 %2475 to i64
  %2477 = getelementptr inbounds nuw i64, ptr %9, i64 %2476
  %2478 = load i64, ptr %2477, align 8, !tbaa !14
  %2479 = and i64 %2478, 255
  %2480 = lshr i64 %2471, %2479
  %2481 = or i64 %2480, %2478
  %2482 = add i64 %2478, %2453
  %2483 = getelementptr i8, ptr %2269, i64 %2282
  %2484 = load i8, ptr %2483, align 1, !tbaa !5
  %2485 = zext i8 %2484 to i64
  %2486 = getelementptr inbounds nuw i64, ptr %9, i64 %2485
  %2487 = load i64, ptr %2486, align 8, !tbaa !14
  %2488 = and i64 %2487, 255
  %2489 = lshr i64 %2481, %2488
  %2490 = add i64 %2487, %2482
  %2491 = and i64 %2490, 255
  %2492 = lshr i64 %2366, %2491
  %2493 = or i64 %2489, %2492
  %2494 = or i64 %2493, %2487
  %2495 = add i64 %2490, %2372
  %2496 = and i64 %2495, 255
  %2497 = lshr i64 %2496, 3
  %2498 = sub nsw i64 64, %2496
  %2499 = lshr i64 %2494, %2498
  %2500 = and i64 %2495, 7
  store i64 %2499, ptr %2373, align 1, !tbaa !14
  %2501 = getelementptr inbounds nuw i8, ptr %2373, i64 %2497
  %2502 = add nsw i64 %2282, -18
  %2503 = icmp sgt i64 %2282, 18
  br i1 %2503, label %2281, label %2504, !llvm.loop !77

2504:                                             ; preds = %1954, %1546, %1176, %845, %542, %2398, %245, %1832, %1437, %1080, %763, %459, %2264, %173
  %2505 = phi i64 [ %174, %173 ], [ %2265, %2264 ], [ %460, %459 ], [ %764, %763 ], [ %1081, %1080 ], [ %1438, %1437 ], [ %1833, %1832 ], [ %293, %245 ], [ %2500, %2398 ], [ %601, %542 ], [ %903, %845 ], [ %1246, %1176 ], [ %1627, %1546 ], [ %2046, %1954 ]
  %2506 = phi ptr [ %175, %173 ], [ %2266, %2264 ], [ %461, %459 ], [ %765, %763 ], [ %1082, %1080 ], [ %1439, %1437 ], [ %1834, %1832 ], [ %296, %245 ], [ %2501, %2398 ], [ %602, %542 ], [ %904, %845 ], [ %1247, %1176 ], [ %1628, %1546 ], [ %2047, %1954 ]
  %2507 = phi i64 [ %176, %173 ], [ %2267, %2264 ], [ %462, %459 ], [ %766, %763 ], [ %1083, %1080 ], [ %1440, %1437 ], [ %1835, %1832 ], [ %287, %245 ], [ %2494, %2398 ], [ %595, %542 ], [ %897, %845 ], [ %1240, %1176 ], [ %1621, %1546 ], [ %2040, %1954 ]
  %2508 = lshr i64 %2507, 1
  %2509 = or disjoint i64 %2508, -9223372036854775808
  %2510 = add nuw nsw i64 %2505, -9223372036854775807
  %2511 = and i64 %2510, 255
  %2512 = lshr i64 %2511, 3
  %2513 = sub nuw nsw i64 64, %2511
  %2514 = lshr i64 %2509, %2513
  store i64 %2514, ptr %2506, align 1, !tbaa !14
  %2515 = getelementptr inbounds nuw i8, ptr %2506, i64 %2512
  %2516 = icmp ugt ptr %2515, %13
  %2517 = select i1 %2516, ptr %13, ptr %2515
  %2518 = icmp ult ptr %2517, %13
  br i1 %2518, label %2519, label %2527

2519:                                             ; preds = %2504
  %2520 = and i64 %2510, 7
  %2521 = ptrtoint ptr %2517 to i64
  %2522 = ptrtoint ptr %0 to i64
  %2523 = icmp ne i64 %2520, 0
  %2524 = zext i1 %2523 to i64
  %2525 = sub i64 %2524, %2522
  %2526 = add i64 %2525, %2521
  br label %2527

2527:                                             ; preds = %2519, %2504, %5, %11
  %2528 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %2526, %2519 ], [ 0, %2504 ]
  ret i64 %2528
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i32 noundef %7) unnamed_addr #2 {
  %9 = icmp eq i32 %5, 0
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  br i1 %9, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

15:                                               ; preds = %8
  %16 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = icmp ult i64 %18, -119
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = add nsw i64 %4, -1
  %28 = icmp ult i64 %26, %27
  %29 = select i1 %28, i64 %26, i64 0
  br label %30

30:                                               ; preds = %22, %20, %17
  %31 = phi i64 [ %18, %17 ], [ 0, %20 ], [ %29, %22 ]
  ret i64 %31
}

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !10, !11}
!13 = distinct !{!13, !9, !11, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9, !10, !11}
!27 = distinct !{!27, !9, !10, !11}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10, !11}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9, !11, !10}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = !{!38, !33, i64 0}
!38 = !{!"", !33, i64 0, !33, i64 2}
!39 = distinct !{!39, !9}
!40 = !{!38, !33, i64 2}
!41 = distinct !{!41, !9}
!42 = !{!43, !20, i64 0}
!43 = !{!"nodeElt_s", !20, i64 0, !33, i64 4, !6, i64 6, !6, i64 7}
!44 = !{!43, !6, i64 6}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = distinct !{!49, !9}
!50 = !{!43, !33, i64 4}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !9}
!54 = !{!43, !6, i64 7}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9, !10, !11}
!72 = distinct !{!72, !9, !10}
!73 = distinct !{!73, !9, !10, !11}
!74 = distinct !{!74, !9, !11, !10}
!75 = !{!"branch_weights", i32 1048575, i32 1}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9, !10, !11}
!79 = distinct !{!79, !9, !11, !10}
!80 = distinct !{!80, !9, !10, !11}
!81 = distinct !{!81, !9, !11, !10}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9, !10, !11}
!84 = distinct !{!84, !9, !10}
!85 = distinct !{!85, !9, !10, !11}
!86 = distinct !{!86, !9, !10}
!87 = distinct !{!87, !9, !10, !11}
!88 = distinct !{!88, !9, !10}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
!92 = distinct !{!92, !9}
