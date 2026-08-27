; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/zstd_preSplit.ll'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %211

7:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #6
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 512) #6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  store i64 512, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 512, ptr %12, align 8, !tbaa !11
  %13 = load i32, ptr %3, align 8, !tbaa !12
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %8, align 8, !tbaa !12
  %16 = zext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = icmp slt i64 %17, 0
  %19 = shl nsw i64 %17, 9
  %20 = sub nsw i64 0, %19
  %21 = select i1 %18, i64 %20, i64 %19
  %22 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %21, i64 0
  br label %23

23:                                               ; preds = %23, %7
  %24 = phi i64 [ 0, %7 ], [ %52, %23 ]
  %25 = phi <2 x i64> [ %22, %7 ], [ %50, %23 ]
  %26 = phi <2 x i64> [ zeroinitializer, %7 ], [ %51, %23 ]
  %27 = or disjoint i64 %24, 1
  %28 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !12
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !12
  %32 = zext <2 x i32> %30 to <2 x i64>
  %33 = zext <2 x i32> %31 to <2 x i64>
  %34 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %27
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %36 = load <2 x i32>, ptr %34, align 4, !tbaa !12
  %37 = load <2 x i32>, ptr %35, align 4, !tbaa !12
  %38 = zext <2 x i32> %36 to <2 x i64>
  %39 = zext <2 x i32> %37 to <2 x i64>
  %40 = sub nsw <2 x i64> %32, %38
  %41 = sub nsw <2 x i64> %33, %39
  %42 = shl nsw <2 x i64> %40, splat (i64 9)
  %43 = shl nsw <2 x i64> %41, splat (i64 9)
  %44 = icmp slt <2 x i64> %40, zeroinitializer
  %45 = icmp slt <2 x i64> %41, zeroinitializer
  %46 = sub nsw <2 x i64> zeroinitializer, %42
  %47 = sub nsw <2 x i64> zeroinitializer, %43
  %48 = select <2 x i1> %44, <2 x i64> %46, <2 x i64> %42
  %49 = select <2 x i1> %45, <2 x i64> %47, <2 x i64> %43
  %50 = add <2 x i64> %48, %25
  %51 = add <2 x i64> %49, %26
  %52 = add nuw nsw i64 %24, 4
  %53 = icmp eq i64 %52, 252
  br i1 %53, label %54, label %23, !llvm.loop !14

54:                                               ; preds = %23
  %55 = add <2 x i64> %51, %50
  %56 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %55)
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 5116
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = zext i32 %61 to i64
  %63 = sub nsw i64 %59, %62
  %64 = shl nsw i64 %63, 9
  %65 = icmp slt i64 %63, 0
  %66 = sub nsw i64 0, %64
  %67 = select i1 %65, i64 %66, i64 %64
  %68 = add i64 %67, %56
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 1016
  %70 = load i32, ptr %69, align 4, !tbaa !12
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 5120
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = zext i32 %73 to i64
  %75 = sub nsw i64 %71, %74
  %76 = shl nsw i64 %75, 9
  %77 = icmp slt i64 %75, 0
  %78 = sub nsw i64 0, %76
  %79 = select i1 %77, i64 %78, i64 %76
  %80 = add i64 %68, %79
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 1020
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 5124
  %85 = load i32, ptr %84, align 4, !tbaa !12
  %86 = zext i32 %85 to i64
  %87 = sub nsw i64 %83, %86
  %88 = shl nsw i64 %87, 9
  %89 = icmp slt i64 %87, 0
  %90 = sub nsw i64 0, %88
  %91 = select i1 %89, i64 %90, i64 %88
  %92 = add i64 %80, %91
  %93 = icmp ult i64 %92, 229376
  br i1 %93, label %.loopexit29, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #6
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %99, align 8, !tbaa !19
  %100 = load i32, ptr %95, align 8, !tbaa !12
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr %12, align 8, !tbaa !19
  %103 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %102), !nosanitize !20
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !20
  br i1 %104, label %.loopexit20, label %105, !prof !21, !nosanitize !20

105:                                              ; preds = %94
  %106 = load i32, ptr %3, align 4, !tbaa !12
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 9
  %109 = extractvalue { i64, i1 } %103, 0, !nosanitize !20
  %110 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109), !nosanitize !20
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !20
  br i1 %111, label %.loopexit21, label %112, !prof !21, !nosanitize !20

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %110, 0, !nosanitize !20
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %.preheader73

115:                                              ; preds = %112
  %116 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %113), !nosanitize !20
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !20
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !20
  br i1 %118, label %.loopexit22, label %.preheader73, !prof !21, !nosanitize !20

.preheader73:                                     ; preds = %115, %112
  %.ph74 = phi i64 [ %113, %112 ], [ %117, %115 ]
  br label %119

119:                                              ; preds = %.preheader73, %142
  %120 = phi i64 [ %145, %142 ], [ 1, %.preheader73 ]
  %121 = phi i64 [ %144, %142 ], [ %.ph74, %.preheader73 ]
  %122 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %120
  %123 = load i32, ptr %122, align 4, !tbaa !12
  %124 = zext i32 %123 to i64
  %125 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %124, i64 %102), !nosanitize !20
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !20
  br i1 %126, label %.loopexit20, label %127, !prof !22, !nosanitize !20

.loopexit20:                                      ; preds = %119, %94
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

127:                                              ; preds = %119
  %128 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %120
  %129 = load i32, ptr %128, align 4, !tbaa !12
  %130 = zext i32 %129 to i64
  %131 = shl nuw nsw i64 %130, 9
  %132 = extractvalue { i64, i1 } %125, 0, !nosanitize !20
  %133 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %131, i64 %132), !nosanitize !20
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !20
  br i1 %134, label %.loopexit21, label %135, !prof !22, !nosanitize !20

.loopexit21:                                      ; preds = %127, %105
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

135:                                              ; preds = %127
  %136 = extractvalue { i64, i1 } %133, 0, !nosanitize !20
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %136), !nosanitize !20
  %140 = extractvalue { i64, i1 } %139, 0, !nosanitize !20
  %141 = extractvalue { i64, i1 } %139, 1, !nosanitize !20
  br i1 %141, label %.loopexit22, label %142, !prof !22, !nosanitize !20

.loopexit22:                                      ; preds = %138, %115
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

142:                                              ; preds = %138, %135
  %143 = phi i64 [ %140, %138 ], [ %136, %135 ]
  %144 = add i64 %143, %121
  %145 = add nuw nsw i64 %120, 1
  %146 = icmp eq i64 %145, 256
  br i1 %146, label %147, label %119, !llvm.loop !23

147:                                              ; preds = %142
  %148 = load i64, ptr %11, align 8, !tbaa !19
  %149 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %148), !nosanitize !20
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !20
  br i1 %150, label %.loopexit, label %151, !prof !21, !nosanitize !20

151:                                              ; preds = %147
  %152 = load i32, ptr %8, align 4, !tbaa !12
  %153 = zext i32 %152 to i64
  %154 = shl nuw nsw i64 %153, 9
  %155 = extractvalue { i64, i1 } %149, 0, !nosanitize !20
  %156 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %154, i64 %155), !nosanitize !20
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !20
  br i1 %157, label %.loopexit18, label %158, !prof !21, !nosanitize !20

158:                                              ; preds = %151
  %159 = extractvalue { i64, i1 } %156, 0, !nosanitize !20
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %.preheader72

161:                                              ; preds = %158
  %162 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %159), !nosanitize !20
  %163 = extractvalue { i64, i1 } %162, 0, !nosanitize !20
  %164 = extractvalue { i64, i1 } %162, 1, !nosanitize !20
  br i1 %164, label %.loopexit19, label %.preheader72, !prof !21, !nosanitize !20

.preheader72:                                     ; preds = %161, %158
  %.ph = phi i64 [ %159, %158 ], [ %163, %161 ]
  br label %165

165:                                              ; preds = %.preheader72, %188
  %166 = phi i64 [ %191, %188 ], [ 1, %.preheader72 ]
  %167 = phi i64 [ %190, %188 ], [ %.ph, %.preheader72 ]
  %168 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %166
  %169 = load i32, ptr %168, align 4, !tbaa !12
  %170 = zext i32 %169 to i64
  %171 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %170, i64 %148), !nosanitize !20
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !20
  br i1 %172, label %.loopexit, label %173, !prof !22, !nosanitize !20

.loopexit:                                        ; preds = %165, %147
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %166
  %175 = load i32, ptr %174, align 4, !tbaa !12
  %176 = zext i32 %175 to i64
  %177 = shl nuw nsw i64 %176, 9
  %178 = extractvalue { i64, i1 } %171, 0, !nosanitize !20
  %179 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %177, i64 %178), !nosanitize !20
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !20
  br i1 %180, label %.loopexit18, label %181, !prof !22, !nosanitize !20

.loopexit18:                                      ; preds = %173, %151
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

181:                                              ; preds = %173
  %182 = extractvalue { i64, i1 } %179, 0, !nosanitize !20
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %182), !nosanitize !20
  %186 = extractvalue { i64, i1 } %185, 0, !nosanitize !20
  %187 = extractvalue { i64, i1 } %185, 1, !nosanitize !20
  br i1 %187, label %.loopexit19, label %188, !prof !22, !nosanitize !20

.loopexit19:                                      ; preds = %184, %161
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

188:                                              ; preds = %184, %181
  %189 = phi i64 [ %186, %184 ], [ %182, %181 ]
  %190 = add i64 %189, %167
  %191 = add nuw nsw i64 %166, 1
  %192 = icmp eq i64 %191, 256
  br i1 %192, label %193, label %165, !llvm.loop !23

193:                                              ; preds = %188
  %194 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %144, i64 %190), !nosanitize !20
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !20
  br i1 %195, label %196, label %197, !prof !21, !nosanitize !20

196:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

197:                                              ; preds = %193
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !20
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %198), !nosanitize !20
  %202 = extractvalue { i64, i1 } %201, 0, !nosanitize !20
  %203 = extractvalue { i64, i1 } %201, 1, !nosanitize !20
  br i1 %203, label %204, label %205, !prof !21, !nosanitize !20

204:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

205:                                              ; preds = %200, %197
  %206 = phi i64 [ %202, %200 ], [ %198, %197 ]
  %207 = icmp ult i64 %206, 87381
  %208 = icmp ugt i64 %144, %190
  %209 = select i1 %208, i64 32768, i64 98304
  %210 = select i1 %207, i64 65536, i64 %209
  br label %.loopexit29

211:                                              ; preds = %5
  %212 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %213 = extractvalue { i32, i1 } %212, 1, !nosanitize !20
  br i1 %213, label %214, label %215, !prof !21, !nosanitize !20

214:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

215:                                              ; preds = %211
  %216 = extractvalue { i32, i1 } %212, 0, !nosanitize !20
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [8 x i8], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %219(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #6
  %220 = add i64 %1, -8192
  %221 = icmp ult i64 %220, 8192
  br i1 %221, label %.loopexit29, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %224 = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %217
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %227

227:                                              ; preds = %323, %222
  %228 = phi i64 [ 8192, %222 ], [ %328, %323 ]
  %229 = phi i32 [ 3, %222 ], [ %327, %323 ]
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 %228
  tail call void %219(ptr noundef nonnull %223, ptr noundef %230, i64 noundef 8192) #6
  %231 = load i32, ptr %224, align 4, !tbaa !12
  %232 = load i64, ptr %225, align 8, !tbaa !19
  %233 = load i64, ptr %226, align 8, !tbaa !19
  %234 = zext nneg i32 %231 to i64
  %235 = load i32, ptr %3, align 8, !tbaa !12
  %236 = zext i32 %235 to i64
  %237 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %236, i64 %233), !nosanitize !20
  %238 = extractvalue { i64, i1 } %237, 0, !nosanitize !20
  %239 = extractvalue { i64, i1 } %237, 1, !nosanitize !20
  br i1 %239, label %.loopexit23, label %240, !prof !21, !nosanitize !20

240:                                              ; preds = %227
  %241 = load i32, ptr %223, align 4, !tbaa !12
  %242 = zext i32 %241 to i64
  %243 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %242, i64 %232), !nosanitize !20
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !20
  br i1 %244, label %.loopexit23, label %245, !prof !21, !nosanitize !20

245:                                              ; preds = %240
  %246 = extractvalue { i64, i1 } %243, 0, !nosanitize !20
  %247 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %238, i64 %246), !nosanitize !20
  %248 = extractvalue { i64, i1 } %247, 1, !nosanitize !20
  br i1 %248, label %.loopexit24, label %249, !prof !21, !nosanitize !20

249:                                              ; preds = %245
  %250 = extractvalue { i64, i1 } %247, 0, !nosanitize !20
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %.preheader78

252:                                              ; preds = %249
  %253 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %250), !nosanitize !20
  %254 = extractvalue { i64, i1 } %253, 0, !nosanitize !20
  %255 = extractvalue { i64, i1 } %253, 1, !nosanitize !20
  br i1 %255, label %.loopexit25, label %.preheader78, !prof !21, !nosanitize !20

.preheader78:                                     ; preds = %252, %249
  %.ph79 = phi i64 [ %250, %249 ], [ %254, %252 ]
  br label %256

256:                                              ; preds = %.preheader78, %282
  %257 = phi i64 [ %285, %282 ], [ 1, %.preheader78 ]
  %258 = phi i64 [ %284, %282 ], [ %.ph79, %.preheader78 ]
  %259 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %257
  %260 = load i32, ptr %259, align 4, !tbaa !12
  %261 = zext i32 %260 to i64
  %262 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %261, i64 %233), !nosanitize !20
  %263 = extractvalue { i64, i1 } %262, 0, !nosanitize !20
  %264 = extractvalue { i64, i1 } %262, 1, !nosanitize !20
  br i1 %264, label %.loopexit23, label %265, !prof !22, !nosanitize !20

.loopexit23:                                      ; preds = %240, %227, %265, %256
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

265:                                              ; preds = %256
  %266 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %257
  %267 = load i32, ptr %266, align 4, !tbaa !12
  %268 = zext i32 %267 to i64
  %269 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %268, i64 %232), !nosanitize !20
  %270 = extractvalue { i64, i1 } %269, 1, !nosanitize !20
  br i1 %270, label %.loopexit23, label %271, !prof !22, !nosanitize !20

271:                                              ; preds = %265
  %272 = extractvalue { i64, i1 } %269, 0, !nosanitize !20
  %273 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %263, i64 %272), !nosanitize !20
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !20
  br i1 %274, label %.loopexit24, label %275, !prof !22, !nosanitize !20

.loopexit24:                                      ; preds = %245, %271
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

275:                                              ; preds = %271
  %276 = extractvalue { i64, i1 } %273, 0, !nosanitize !20
  %277 = icmp slt i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %276), !nosanitize !20
  %280 = extractvalue { i64, i1 } %279, 0, !nosanitize !20
  %281 = extractvalue { i64, i1 } %279, 1, !nosanitize !20
  br i1 %281, label %.loopexit25, label %282, !prof !22, !nosanitize !20

.loopexit25:                                      ; preds = %252, %278
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

282:                                              ; preds = %278, %275
  %283 = phi i64 [ %280, %278 ], [ %276, %275 ]
  %284 = add i64 %283, %258
  %285 = add i64 %257, 1
  %286 = lshr i64 %285, %234
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %256, label %288, !llvm.loop !23

288:                                              ; preds = %282
  %289 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %229, i32 14), !nosanitize !20
  %290 = extractvalue { i32, i1 } %289, 1, !nosanitize !20
  br i1 %290, label %291, label %292, !prof !21, !nosanitize !20

291:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

292:                                              ; preds = %288
  %293 = extractvalue { i32, i1 } %289, 0, !nosanitize !20
  %294 = sext i32 %293 to i64
  %295 = mul i64 %232, %294
  %296 = mul i64 %295, %233
  %297 = lshr i64 %296, 4
  %298 = icmp ult i64 %284, %297
  br i1 %298, label %.preheader, label %.loopexit29

.preheader:                                       ; preds = %292, %.preheader
  %299 = phi i64 [ %321, %.preheader ], [ 0, %292 ]
  %300 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %299
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %302 = load <4 x i32>, ptr %300, align 4, !tbaa !12
  %303 = load <4 x i32>, ptr %301, align 4, !tbaa !12
  %304 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %299
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 16
  %306 = load <4 x i32>, ptr %304, align 4, !tbaa !12
  %307 = load <4 x i32>, ptr %305, align 4, !tbaa !12
  %308 = add <4 x i32> %306, %302
  %309 = add <4 x i32> %307, %303
  store <4 x i32> %308, ptr %304, align 4, !tbaa !12
  store <4 x i32> %309, ptr %305, align 4, !tbaa !12
  %310 = or disjoint i64 %299, 8
  %311 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %310
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %313 = load <4 x i32>, ptr %311, align 4, !tbaa !12
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !12
  %315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %310
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 16
  %317 = load <4 x i32>, ptr %315, align 4, !tbaa !12
  %318 = load <4 x i32>, ptr %316, align 4, !tbaa !12
  %319 = add <4 x i32> %317, %313
  %320 = add <4 x i32> %318, %314
  store <4 x i32> %319, ptr %315, align 4, !tbaa !12
  store <4 x i32> %320, ptr %316, align 4, !tbaa !12
  %321 = add nuw nsw i64 %299, 16
  %322 = icmp eq i64 %321, 1024
  br i1 %322, label %323, label %.preheader, !llvm.loop !26

323:                                              ; preds = %.preheader
  %324 = add i64 %233, %232
  store i64 %324, ptr %225, align 8, !tbaa !19
  %325 = icmp sgt i32 %229, 0
  %326 = sext i1 %325 to i32
  %327 = add nsw i32 %229, %326
  %328 = add i64 %228, 8192
  %329 = icmp ugt i64 %328, %220
  br i1 %329, label %.loopexit29, label %227, !llvm.loop !27

.loopexit29:                                      ; preds = %323, %292, %215, %205, %54
  %330 = phi i64 [ %210, %205 ], [ %1, %54 ], [ %1, %215 ], [ %1, %323 ], [ %228, %292 ]
  ret i64 %330
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

declare void @HIST_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_43(ptr noundef captures(none) initializes((0, 1024), (4096, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 0, ptr %4, align 8, !tbaa !19
  %5 = add i64 %2, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %7 = phi i64 [ %14, %.preheader ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !28
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !12
  %14 = add i64 %7, 43
  %15 = icmp ult i64 %14, %5
  br i1 %15, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %16 = udiv i64 %5, 43
  store i64 %16, ptr %4, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_11(ptr noundef captures(none) initializes((0, 2048)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %6 = phi i64 [ %16, %.preheader ], [ 0, %3 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 1, !tbaa !30
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 2654435769
  %11 = lshr i64 %10, 23
  %12 = and i64 %11, 511
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !12
  %16 = add i64 %6, 11
  %17 = icmp ult i64 %16, %4
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %19 = udiv i64 %4, 11
  store i64 %19, ptr %18, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_5(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %6 = phi i64 [ %16, %.preheader ], [ 0, %3 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 1, !tbaa !30
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 2654435769
  %11 = lshr i64 %10, 22
  %12 = and i64 %11, 1023
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !12
  %16 = add i64 %6, 5
  %17 = icmp ult i64 %16, %4
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %19 = udiv i64 %4, 5
  store i64 %19, ptr %18, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_1(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %2, 2
  br i1 %8, label %.thread, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  %11 = getelementptr i8, ptr %1, i64 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %32, %12 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 1, !tbaa !30
  %16 = zext i16 %15 to i64
  %17 = mul nuw nsw i64 %16, 2654435769
  %18 = lshr i64 %17, 22
  %19 = and i64 %18, 1023
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !12
  %23 = getelementptr i8, ptr %11, i64 %13
  %24 = load i16, ptr %23, align 1, !tbaa !30
  %25 = zext i16 %24 to i64
  %26 = mul nuw nsw i64 %25, 2654435769
  %27 = lshr i64 %26, 22
  %28 = and i64 %27, 1023
  %29 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !12
  %32 = add i64 %13, 2
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %34, label %12, !llvm.loop !29

34:                                               ; preds = %12
  %35 = icmp eq i64 %7, 0
  br i1 %35, label %46, label %.thread

.thread:                                          ; preds = %6, %34
  %36 = phi i64 [ %10, %34 ], [ 0, %6 ]
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 1, !tbaa !30
  %39 = zext i16 %38 to i64
  %40 = mul nuw nsw i64 %39, 2654435769
  %41 = lshr i64 %40, 22
  %42 = and i64 %41, 1023
  %43 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !12
  br label %46

46:                                               ; preds = %.thread, %34, %3
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 %4, ptr %47, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !10, i64 8200}
!6 = !{!"", !7, i64 0, !7, i64 4104}
!7 = !{!"", !8, i64 0, !10, i64 4096}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 4096}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !15, !16, !17, !18}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!7, !10, i64 4096}
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!"branch_weights", i32 1, i32 1048574}
!23 = distinct !{!23, !15, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !8, i64 0}
!26 = distinct !{!26, !15, !17, !18}
!27 = distinct !{!27, !15}
!28 = !{!8, !8, i64 0}
!29 = distinct !{!29, !15}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !8, i64 0}
