; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/zstd_preSplit.ll.mid'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %207

7:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #7
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 512) #7
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
  br i1 %93, label %.loopexit28, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #7
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
  %spec.select = tail call i64 @llvm.abs.i64(i64 %113, i1 false)
  br label %114

114:                                              ; preds = %138, %112
  %115 = phi i64 [ %141, %138 ], [ 1, %112 ]
  %116 = phi i64 [ %140, %138 ], [ %spec.select, %112 ]
  %117 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %115
  %118 = load i32, ptr %117, align 4, !tbaa !12
  %119 = zext i32 %118 to i64
  %120 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %119, i64 %102), !nosanitize !20
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !20
  br i1 %121, label %.loopexit20, label %122, !prof !22, !nosanitize !20

.loopexit20:                                      ; preds = %114, %94
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %115
  %124 = load i32, ptr %123, align 4, !tbaa !12
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 9
  %127 = extractvalue { i64, i1 } %120, 0, !nosanitize !20
  %128 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %126, i64 %127), !nosanitize !20
  %129 = extractvalue { i64, i1 } %128, 1, !nosanitize !20
  br i1 %129, label %.loopexit21, label %130, !prof !22, !nosanitize !20

.loopexit21:                                      ; preds = %122, %105
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

130:                                              ; preds = %122
  %131 = extractvalue { i64, i1 } %128, 0, !nosanitize !20
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %131), !nosanitize !20
  %135 = extractvalue { i64, i1 } %134, 0, !nosanitize !20
  %136 = extractvalue { i64, i1 } %134, 1, !nosanitize !20
  br i1 %136, label %137, label %138, !prof !22, !nosanitize !20

137:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

138:                                              ; preds = %133, %130
  %139 = phi i64 [ %135, %133 ], [ %131, %130 ]
  %140 = add i64 %139, %116
  %141 = add nuw nsw i64 %115, 1
  %142 = icmp eq i64 %141, 256
  br i1 %142, label %143, label %114, !llvm.loop !23

143:                                              ; preds = %138
  %144 = load i64, ptr %11, align 8, !tbaa !19
  %145 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %144), !nosanitize !20
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !20
  br i1 %146, label %.loopexit, label %147, !prof !21, !nosanitize !20

147:                                              ; preds = %143
  %148 = load i32, ptr %8, align 4, !tbaa !12
  %149 = zext i32 %148 to i64
  %150 = shl nuw nsw i64 %149, 9
  %151 = extractvalue { i64, i1 } %145, 0, !nosanitize !20
  %152 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %150, i64 %151), !nosanitize !20
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !20
  br i1 %153, label %.loopexit18, label %154, !prof !21, !nosanitize !20

154:                                              ; preds = %147
  %155 = extractvalue { i64, i1 } %152, 0, !nosanitize !20
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %.preheader69

157:                                              ; preds = %154
  %158 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %155), !nosanitize !20
  %159 = extractvalue { i64, i1 } %158, 0, !nosanitize !20
  %160 = extractvalue { i64, i1 } %158, 1, !nosanitize !20
  br i1 %160, label %.loopexit19, label %.preheader69, !prof !21, !nosanitize !20

.preheader69:                                     ; preds = %157, %154
  %.ph = phi i64 [ %155, %154 ], [ %159, %157 ]
  br label %161

161:                                              ; preds = %.preheader69, %184
  %162 = phi i64 [ %187, %184 ], [ 1, %.preheader69 ]
  %163 = phi i64 [ %186, %184 ], [ %.ph, %.preheader69 ]
  %164 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %162
  %165 = load i32, ptr %164, align 4, !tbaa !12
  %166 = zext i32 %165 to i64
  %167 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %166, i64 %144), !nosanitize !20
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !20
  br i1 %168, label %.loopexit, label %169, !prof !22, !nosanitize !20

.loopexit:                                        ; preds = %161, %143
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

169:                                              ; preds = %161
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %162
  %171 = load i32, ptr %170, align 4, !tbaa !12
  %172 = zext i32 %171 to i64
  %173 = shl nuw nsw i64 %172, 9
  %174 = extractvalue { i64, i1 } %167, 0, !nosanitize !20
  %175 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %173, i64 %174), !nosanitize !20
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !20
  br i1 %176, label %.loopexit18, label %177, !prof !22, !nosanitize !20

.loopexit18:                                      ; preds = %169, %147
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

177:                                              ; preds = %169
  %178 = extractvalue { i64, i1 } %175, 0, !nosanitize !20
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %178), !nosanitize !20
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !20
  %183 = extractvalue { i64, i1 } %181, 1, !nosanitize !20
  br i1 %183, label %.loopexit19, label %184, !prof !22, !nosanitize !20

.loopexit19:                                      ; preds = %180, %157
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

184:                                              ; preds = %180, %177
  %185 = phi i64 [ %182, %180 ], [ %178, %177 ]
  %186 = add i64 %185, %163
  %187 = add nuw nsw i64 %162, 1
  %188 = icmp eq i64 %187, 256
  br i1 %188, label %189, label %161, !llvm.loop !23

189:                                              ; preds = %184
  %190 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %140, i64 %186), !nosanitize !20
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !20
  br i1 %191, label %192, label %193, !prof !21, !nosanitize !20

192:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

193:                                              ; preds = %189
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !20
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %194), !nosanitize !20
  %198 = extractvalue { i64, i1 } %197, 0, !nosanitize !20
  %199 = extractvalue { i64, i1 } %197, 1, !nosanitize !20
  br i1 %199, label %200, label %201, !prof !21, !nosanitize !20

200:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

201:                                              ; preds = %196, %193
  %202 = phi i64 [ %198, %196 ], [ %194, %193 ]
  %203 = icmp ult i64 %202, 87381
  %204 = icmp ugt i64 %140, %186
  %205 = select i1 %204, i64 32768, i64 98304
  %206 = select i1 %203, i64 65536, i64 %205
  br label %.loopexit28

207:                                              ; preds = %5
  %208 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %209 = extractvalue { i32, i1 } %208, 1, !nosanitize !20
  br i1 %209, label %210, label %211, !prof !21, !nosanitize !20

210:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

211:                                              ; preds = %207
  %212 = extractvalue { i32, i1 } %208, 0, !nosanitize !20
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [8 x i8], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %215(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #7
  %216 = add i64 %1, -8192
  %217 = icmp ult i64 %216, 8192
  br i1 %217, label %.loopexit28, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %220 = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %213
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %223

223:                                              ; preds = %319, %218
  %224 = phi i64 [ 8192, %218 ], [ %324, %319 ]
  %225 = phi i32 [ 3, %218 ], [ %323, %319 ]
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 %224
  tail call void %215(ptr noundef nonnull %219, ptr noundef %226, i64 noundef 8192) #7
  %227 = load i32, ptr %220, align 4, !tbaa !12
  %228 = load i64, ptr %221, align 8, !tbaa !19
  %229 = load i64, ptr %222, align 8, !tbaa !19
  %230 = zext nneg i32 %227 to i64
  %231 = load i32, ptr %3, align 8, !tbaa !12
  %232 = zext i32 %231 to i64
  %233 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %232, i64 %229), !nosanitize !20
  %234 = extractvalue { i64, i1 } %233, 0, !nosanitize !20
  %235 = extractvalue { i64, i1 } %233, 1, !nosanitize !20
  br i1 %235, label %.loopexit22, label %236, !prof !21, !nosanitize !20

236:                                              ; preds = %223
  %237 = load i32, ptr %219, align 4, !tbaa !12
  %238 = zext i32 %237 to i64
  %239 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %238, i64 %228), !nosanitize !20
  %240 = extractvalue { i64, i1 } %239, 1, !nosanitize !20
  br i1 %240, label %.loopexit22, label %241, !prof !21, !nosanitize !20

241:                                              ; preds = %236
  %242 = extractvalue { i64, i1 } %239, 0, !nosanitize !20
  %243 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %234, i64 %242), !nosanitize !20
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !20
  br i1 %244, label %.loopexit23, label %245, !prof !21, !nosanitize !20

245:                                              ; preds = %241
  %246 = extractvalue { i64, i1 } %243, 0, !nosanitize !20
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %248, label %.preheader73

248:                                              ; preds = %245
  %249 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %246), !nosanitize !20
  %250 = extractvalue { i64, i1 } %249, 0, !nosanitize !20
  %251 = extractvalue { i64, i1 } %249, 1, !nosanitize !20
  br i1 %251, label %.loopexit24, label %.preheader73, !prof !21, !nosanitize !20

.preheader73:                                     ; preds = %248, %245
  %.ph74 = phi i64 [ %246, %245 ], [ %250, %248 ]
  br label %252

252:                                              ; preds = %.preheader73, %278
  %253 = phi i64 [ %281, %278 ], [ 1, %.preheader73 ]
  %254 = phi i64 [ %280, %278 ], [ %.ph74, %.preheader73 ]
  %255 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %253
  %256 = load i32, ptr %255, align 4, !tbaa !12
  %257 = zext i32 %256 to i64
  %258 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %257, i64 %229), !nosanitize !20
  %259 = extractvalue { i64, i1 } %258, 0, !nosanitize !20
  %260 = extractvalue { i64, i1 } %258, 1, !nosanitize !20
  br i1 %260, label %.loopexit22, label %261, !prof !22, !nosanitize !20

.loopexit22:                                      ; preds = %236, %223, %261, %252
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

261:                                              ; preds = %252
  %262 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %253
  %263 = load i32, ptr %262, align 4, !tbaa !12
  %264 = zext i32 %263 to i64
  %265 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %264, i64 %228), !nosanitize !20
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !20
  br i1 %266, label %.loopexit22, label %267, !prof !22, !nosanitize !20

267:                                              ; preds = %261
  %268 = extractvalue { i64, i1 } %265, 0, !nosanitize !20
  %269 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %259, i64 %268), !nosanitize !20
  %270 = extractvalue { i64, i1 } %269, 1, !nosanitize !20
  br i1 %270, label %.loopexit23, label %271, !prof !22, !nosanitize !20

.loopexit23:                                      ; preds = %241, %267
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %267
  %272 = extractvalue { i64, i1 } %269, 0, !nosanitize !20
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %272), !nosanitize !20
  %276 = extractvalue { i64, i1 } %275, 0, !nosanitize !20
  %277 = extractvalue { i64, i1 } %275, 1, !nosanitize !20
  br i1 %277, label %.loopexit24, label %278, !prof !22, !nosanitize !20

.loopexit24:                                      ; preds = %248, %274
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

278:                                              ; preds = %274, %271
  %279 = phi i64 [ %276, %274 ], [ %272, %271 ]
  %280 = add i64 %279, %254
  %281 = add i64 %253, 1
  %282 = lshr i64 %281, %230
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %252, label %284, !llvm.loop !23

284:                                              ; preds = %278
  %285 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %225, i32 14), !nosanitize !20
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !20
  br i1 %286, label %287, label %288, !prof !21, !nosanitize !20

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

288:                                              ; preds = %284
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !20
  %290 = sext i32 %289 to i64
  %291 = mul i64 %228, %290
  %292 = mul i64 %291, %229
  %293 = lshr i64 %292, 4
  %294 = icmp ult i64 %280, %293
  br i1 %294, label %.preheader, label %.loopexit28

.preheader:                                       ; preds = %288, %.preheader
  %295 = phi i64 [ %317, %.preheader ], [ 0, %288 ]
  %296 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %295
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 16
  %298 = load <4 x i32>, ptr %296, align 4, !tbaa !12
  %299 = load <4 x i32>, ptr %297, align 4, !tbaa !12
  %300 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %295
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %302 = load <4 x i32>, ptr %300, align 4, !tbaa !12
  %303 = load <4 x i32>, ptr %301, align 4, !tbaa !12
  %304 = add <4 x i32> %302, %298
  %305 = add <4 x i32> %303, %299
  store <4 x i32> %304, ptr %300, align 4, !tbaa !12
  store <4 x i32> %305, ptr %301, align 4, !tbaa !12
  %306 = or disjoint i64 %295, 8
  %307 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %306
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %309 = load <4 x i32>, ptr %307, align 4, !tbaa !12
  %310 = load <4 x i32>, ptr %308, align 4, !tbaa !12
  %311 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %306
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %313 = load <4 x i32>, ptr %311, align 4, !tbaa !12
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !12
  %315 = add <4 x i32> %313, %309
  %316 = add <4 x i32> %314, %310
  store <4 x i32> %315, ptr %311, align 4, !tbaa !12
  store <4 x i32> %316, ptr %312, align 4, !tbaa !12
  %317 = add nuw nsw i64 %295, 16
  %318 = icmp eq i64 %317, 1024
  br i1 %318, label %319, label %.preheader, !llvm.loop !26

319:                                              ; preds = %.preheader
  %320 = add i64 %229, %228
  store i64 %320, ptr %221, align 8, !tbaa !19
  %321 = icmp sgt i32 %225, 0
  %322 = sext i1 %321 to i32
  %323 = add nsw i32 %225, %322
  %324 = add i64 %224, 8192
  %325 = icmp ugt i64 %324, %216
  br i1 %325, label %.loopexit28, label %223, !llvm.loop !27

.loopexit28:                                      ; preds = %319, %288, %211, %201, %54
  %326 = phi i64 [ %206, %201 ], [ %1, %54 ], [ %1, %211 ], [ %1, %319 ], [ %224, %288 ]
  ret i64 %326
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
