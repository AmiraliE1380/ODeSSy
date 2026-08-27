; ModuleID = '/mydata/zstd/lib/compress/zstd_preSplit.c'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %221

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
  %13 = load i32, ptr %3, align 4, !tbaa !12
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %8, align 4, !tbaa !12
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
  %28 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !12
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !12
  %32 = zext <2 x i32> %30 to <2 x i64>
  %33 = zext <2 x i32> %31 to <2 x i64>
  %34 = getelementptr inbounds nuw [1024 x i32], ptr %8, i64 0, i64 %27
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
  %52 = add nuw i64 %24, 4
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
  %80 = add i64 %79, %68
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
  %92 = add i64 %91, %80
  %93 = icmp ult i64 %92, 229376
  br i1 %93, label %346, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #7
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %99, align 8, !tbaa !19
  %100 = load i32, ptr %95, align 4, !tbaa !12
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr %12, align 8, !tbaa !19
  %103 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %102), !nosanitize !20
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !20
  br i1 %104, label %129, label %105, !prof !21, !nosanitize !20

105:                                              ; preds = %94
  %106 = load i32, ptr %3, align 4, !tbaa !12
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 9
  %109 = extractvalue { i64, i1 } %103, 0, !nosanitize !20
  %110 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109), !nosanitize !20
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !20
  br i1 %111, label %138, label %112, !prof !21, !nosanitize !20

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %110, 0, !nosanitize !20
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %113), !nosanitize !20
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !20
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !20
  br i1 %118, label %146, label %119, !prof !21, !nosanitize !20

119:                                              ; preds = %115, %112
  %120 = phi i64 [ %113, %112 ], [ %117, %115 ]
  br label %121

121:                                              ; preds = %119, %147
  %122 = phi i64 [ %150, %147 ], [ 1, %119 ]
  %123 = phi i64 [ %149, %147 ], [ %120, %119 ]
  %124 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %122
  %125 = load i32, ptr %124, align 4, !tbaa !12
  %126 = zext i32 %125 to i64
  %127 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 %102), !nosanitize !20
  %128 = extractvalue { i64, i1 } %127, 1, !nosanitize !20
  br i1 %128, label %129, label %130, !prof !22, !nosanitize !20

129:                                              ; preds = %121, %94
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

130:                                              ; preds = %121
  %131 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %122
  %132 = load i32, ptr %131, align 4, !tbaa !12
  %133 = zext i32 %132 to i64
  %134 = shl nuw nsw i64 %133, 9
  %135 = extractvalue { i64, i1 } %127, 0, !nosanitize !20
  %136 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %134, i64 %135), !nosanitize !20
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !20
  br i1 %137, label %138, label %139, !prof !22, !nosanitize !20

138:                                              ; preds = %130, %105
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

139:                                              ; preds = %130
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !20
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %140), !nosanitize !20
  %144 = extractvalue { i64, i1 } %143, 0, !nosanitize !20
  %145 = extractvalue { i64, i1 } %143, 1, !nosanitize !20
  br i1 %145, label %146, label %147, !prof !22, !nosanitize !20

146:                                              ; preds = %142, %115
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

147:                                              ; preds = %142, %139
  %148 = phi i64 [ %144, %142 ], [ %140, %139 ]
  %149 = add i64 %148, %123
  %150 = add nuw nsw i64 %122, 1
  %151 = icmp eq i64 %150, 256
  br i1 %151, label %152, label %121, !llvm.loop !23

152:                                              ; preds = %147
  %153 = load i64, ptr %11, align 8, !tbaa !19
  %154 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %153), !nosanitize !20
  %155 = extractvalue { i64, i1 } %154, 1, !nosanitize !20
  br i1 %155, label %180, label %156, !prof !21, !nosanitize !20

156:                                              ; preds = %152
  %157 = load i32, ptr %8, align 4, !tbaa !12
  %158 = zext i32 %157 to i64
  %159 = shl nuw nsw i64 %158, 9
  %160 = extractvalue { i64, i1 } %154, 0, !nosanitize !20
  %161 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %159, i64 %160), !nosanitize !20
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !20
  br i1 %162, label %189, label %163, !prof !21, !nosanitize !20

163:                                              ; preds = %156
  %164 = extractvalue { i64, i1 } %161, 0, !nosanitize !20
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %164), !nosanitize !20
  %168 = extractvalue { i64, i1 } %167, 0, !nosanitize !20
  %169 = extractvalue { i64, i1 } %167, 1, !nosanitize !20
  br i1 %169, label %197, label %170, !prof !21, !nosanitize !20

170:                                              ; preds = %166, %163
  %171 = phi i64 [ %164, %163 ], [ %168, %166 ]
  br label %172

172:                                              ; preds = %170, %198
  %173 = phi i64 [ %201, %198 ], [ 1, %170 ]
  %174 = phi i64 [ %200, %198 ], [ %171, %170 ]
  %175 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %173
  %176 = load i32, ptr %175, align 4, !tbaa !12
  %177 = zext i32 %176 to i64
  %178 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %177, i64 %153), !nosanitize !20
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !20
  br i1 %179, label %180, label %181, !prof !22, !nosanitize !20

180:                                              ; preds = %172, %152
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

181:                                              ; preds = %172
  %182 = getelementptr inbounds nuw [1024 x i32], ptr %8, i64 0, i64 %173
  %183 = load i32, ptr %182, align 4, !tbaa !12
  %184 = zext i32 %183 to i64
  %185 = shl nuw nsw i64 %184, 9
  %186 = extractvalue { i64, i1 } %178, 0, !nosanitize !20
  %187 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %185, i64 %186), !nosanitize !20
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !20
  br i1 %188, label %189, label %190, !prof !22, !nosanitize !20

189:                                              ; preds = %181, %156
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

190:                                              ; preds = %181
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !20
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %191), !nosanitize !20
  %195 = extractvalue { i64, i1 } %194, 0, !nosanitize !20
  %196 = extractvalue { i64, i1 } %194, 1, !nosanitize !20
  br i1 %196, label %197, label %198, !prof !22, !nosanitize !20

197:                                              ; preds = %193, %166
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

198:                                              ; preds = %193, %190
  %199 = phi i64 [ %195, %193 ], [ %191, %190 ]
  %200 = add i64 %199, %174
  %201 = add nuw nsw i64 %173, 1
  %202 = icmp eq i64 %201, 256
  br i1 %202, label %203, label %172, !llvm.loop !23

203:                                              ; preds = %198
  %204 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %149, i64 %200), !nosanitize !20
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !20
  br i1 %205, label %206, label %207, !prof !21, !nosanitize !20

206:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

207:                                              ; preds = %203
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !20
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %208), !nosanitize !20
  %212 = extractvalue { i64, i1 } %211, 0, !nosanitize !20
  %213 = extractvalue { i64, i1 } %211, 1, !nosanitize !20
  br i1 %213, label %214, label %215, !prof !21, !nosanitize !20

214:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

215:                                              ; preds = %210, %207
  %216 = phi i64 [ %212, %210 ], [ %208, %207 ]
  %217 = icmp ult i64 %216, 87381
  %218 = icmp ugt i64 %149, %200
  %219 = select i1 %218, i64 32768, i64 98304
  %220 = select i1 %217, i64 65536, i64 %219
  br label %346

221:                                              ; preds = %5
  %222 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !20
  br i1 %223, label %224, label %225, !prof !21, !nosanitize !20

224:                                              ; preds = %221
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

225:                                              ; preds = %221
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !20
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x ptr], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %229(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #7
  %230 = add i64 %1, -8192
  %231 = icmp ult i64 %230, 8192
  br i1 %231, label %346, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %234 = getelementptr inbounds [4 x i32], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 0, i64 %227
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %237

237:                                              ; preds = %339, %232
  %238 = phi i64 [ 8192, %232 ], [ %344, %339 ]
  %239 = phi i32 [ 3, %232 ], [ %343, %339 ]
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 %238
  tail call void %229(ptr noundef nonnull %233, ptr noundef %240, i64 noundef 8192) #7
  %241 = load i32, ptr %234, align 4, !tbaa !12
  %242 = load i64, ptr %235, align 8, !tbaa !19
  %243 = load i64, ptr %236, align 8, !tbaa !19
  %244 = zext nneg i32 %241 to i64
  %245 = load i32, ptr %3, align 4, !tbaa !12
  %246 = zext i32 %245 to i64
  %247 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %243), !nosanitize !20
  %248 = extractvalue { i64, i1 } %247, 0, !nosanitize !20
  %249 = extractvalue { i64, i1 } %247, 1, !nosanitize !20
  br i1 %249, label %277, label %250, !prof !21, !nosanitize !20

250:                                              ; preds = %237
  %251 = load i32, ptr %233, align 4, !tbaa !12
  %252 = zext i32 %251 to i64
  %253 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %252, i64 %242), !nosanitize !20
  %254 = extractvalue { i64, i1 } %253, 1, !nosanitize !20
  br i1 %254, label %277, label %255, !prof !21, !nosanitize !20

255:                                              ; preds = %250
  %256 = extractvalue { i64, i1 } %253, 0, !nosanitize !20
  %257 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %248, i64 %256), !nosanitize !20
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !20
  br i1 %258, label %288, label %259, !prof !21, !nosanitize !20

259:                                              ; preds = %255
  %260 = extractvalue { i64, i1 } %257, 0, !nosanitize !20
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %260), !nosanitize !20
  %264 = extractvalue { i64, i1 } %263, 0, !nosanitize !20
  %265 = extractvalue { i64, i1 } %263, 1, !nosanitize !20
  br i1 %265, label %296, label %266, !prof !21, !nosanitize !20

266:                                              ; preds = %262, %259
  %267 = phi i64 [ %260, %259 ], [ %264, %262 ]
  br label %268

268:                                              ; preds = %266, %297
  %269 = phi i64 [ %300, %297 ], [ 1, %266 ]
  %270 = phi i64 [ %299, %297 ], [ %267, %266 ]
  %271 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %269
  %272 = load i32, ptr %271, align 4, !tbaa !12
  %273 = zext i32 %272 to i64
  %274 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %273, i64 %243), !nosanitize !20
  %275 = extractvalue { i64, i1 } %274, 0, !nosanitize !20
  %276 = extractvalue { i64, i1 } %274, 1, !nosanitize !20
  br i1 %276, label %277, label %278, !prof !22, !nosanitize !20

277:                                              ; preds = %250, %237, %278, %268
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

278:                                              ; preds = %268
  %279 = getelementptr inbounds nuw [1024 x i32], ptr %233, i64 0, i64 %269
  %280 = load i32, ptr %279, align 4, !tbaa !12
  %281 = zext i32 %280 to i64
  %282 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %242), !nosanitize !20
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !20
  br i1 %283, label %277, label %284, !prof !22, !nosanitize !20

284:                                              ; preds = %278
  %285 = extractvalue { i64, i1 } %282, 0, !nosanitize !20
  %286 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %275, i64 %285), !nosanitize !20
  %287 = extractvalue { i64, i1 } %286, 1, !nosanitize !20
  br i1 %287, label %288, label %289, !prof !22, !nosanitize !20

288:                                              ; preds = %255, %284
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

289:                                              ; preds = %284
  %290 = extractvalue { i64, i1 } %286, 0, !nosanitize !20
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %290), !nosanitize !20
  %294 = extractvalue { i64, i1 } %293, 0, !nosanitize !20
  %295 = extractvalue { i64, i1 } %293, 1, !nosanitize !20
  br i1 %295, label %296, label %297, !prof !22, !nosanitize !20

296:                                              ; preds = %262, %292
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

297:                                              ; preds = %292, %289
  %298 = phi i64 [ %294, %292 ], [ %290, %289 ]
  %299 = add i64 %298, %270
  %300 = add i64 %269, 1
  %301 = lshr i64 %300, %244
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %268, label %303, !llvm.loop !23

303:                                              ; preds = %297
  %304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %239, i32 14), !nosanitize !20
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !20
  br i1 %305, label %306, label %307, !prof !21, !nosanitize !20

306:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

307:                                              ; preds = %303
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !20
  %309 = sext i32 %308 to i64
  %310 = mul i64 %242, %309
  %311 = mul i64 %310, %243
  %312 = lshr i64 %311, 4
  %313 = icmp ult i64 %299, %312
  br i1 %313, label %314, label %346

314:                                              ; preds = %307, %314
  %315 = phi i64 [ %337, %314 ], [ 0, %307 ]
  %316 = getelementptr inbounds nuw [1024 x i32], ptr %233, i64 0, i64 %315
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 16
  %318 = load <4 x i32>, ptr %316, align 4, !tbaa !12
  %319 = load <4 x i32>, ptr %317, align 4, !tbaa !12
  %320 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %315
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %322 = load <4 x i32>, ptr %320, align 4, !tbaa !12
  %323 = load <4 x i32>, ptr %321, align 4, !tbaa !12
  %324 = add <4 x i32> %322, %318
  %325 = add <4 x i32> %323, %319
  store <4 x i32> %324, ptr %320, align 4, !tbaa !12
  store <4 x i32> %325, ptr %321, align 4, !tbaa !12
  %326 = or disjoint i64 %315, 8
  %327 = getelementptr inbounds nuw [1024 x i32], ptr %233, i64 0, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 16
  %329 = load <4 x i32>, ptr %327, align 4, !tbaa !12
  %330 = load <4 x i32>, ptr %328, align 4, !tbaa !12
  %331 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %326
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 16
  %333 = load <4 x i32>, ptr %331, align 4, !tbaa !12
  %334 = load <4 x i32>, ptr %332, align 4, !tbaa !12
  %335 = add <4 x i32> %333, %329
  %336 = add <4 x i32> %334, %330
  store <4 x i32> %335, ptr %331, align 4, !tbaa !12
  store <4 x i32> %336, ptr %332, align 4, !tbaa !12
  %337 = add nuw nsw i64 %315, 16
  %338 = icmp eq i64 %337, 1024
  br i1 %338, label %339, label %314, !llvm.loop !26

339:                                              ; preds = %314
  %340 = add i64 %243, %242
  store i64 %340, ptr %235, align 8, !tbaa !19
  %341 = icmp sgt i32 %239, 0
  %342 = sext i1 %341 to i32
  %343 = add nsw i32 %239, %342
  %344 = add i64 %238, 8192
  %345 = icmp ugt i64 %344, %230
  br i1 %345, label %346, label %237, !llvm.loop !27

346:                                              ; preds = %339, %307, %225, %215, %54
  %347 = phi i64 [ %220, %215 ], [ %1, %54 ], [ %1, %225 ], [ %238, %307 ], [ %1, %339 ]
  ret i64 %347
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #1

declare void @HIST_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_43(ptr noundef captures(none) initializes((0, 1024), (4096, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 0, ptr %4, align 8, !tbaa !19
  %5 = add i64 %2, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %15, %7 ], [ 0, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !28
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !12
  %15 = add i64 %8, 43
  %16 = icmp ult i64 %15, %5
  br i1 %16, label %7, label %17, !llvm.loop !29

17:                                               ; preds = %7, %3
  %18 = udiv i64 %5, 43
  store i64 %18, ptr %4, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_11(ptr noundef captures(none) initializes((0, 2048)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %17, %6 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i16, ptr %8, align 1, !tbaa !30
  %10 = zext i16 %9 to i64
  %11 = mul nuw nsw i64 %10, 2654435769
  %12 = lshr i64 %11, 23
  %13 = and i64 %12, 511
  %14 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !12
  %17 = add i64 %7, 11
  %18 = icmp ult i64 %17, %4
  br i1 %18, label %6, label %19, !llvm.loop !29

19:                                               ; preds = %6, %3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %21 = udiv i64 %4, 11
  store i64 %21, ptr %20, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_5(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %17, %6 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i16, ptr %8, align 1, !tbaa !30
  %10 = zext i16 %9 to i64
  %11 = mul nuw nsw i64 %10, 2654435769
  %12 = lshr i64 %11, 22
  %13 = and i64 %12, 1023
  %14 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !12
  %17 = add i64 %7, 5
  %18 = icmp ult i64 %17, %4
  br i1 %18, label %6, label %19, !llvm.loop !29

19:                                               ; preds = %6, %3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %21 = udiv i64 %4, 5
  store i64 %21, ptr %20, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_1(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %2, 2
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  %11 = getelementptr i8, ptr %1, i64 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %33, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %34, %12 ]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %16 = load i16, ptr %15, align 1, !tbaa !30
  %17 = zext i16 %16 to i64
  %18 = mul nuw nsw i64 %17, 2654435769
  %19 = lshr i64 %18, 22
  %20 = and i64 %19, 1023
  %21 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !12
  %24 = getelementptr i8, ptr %11, i64 %13
  %25 = load i16, ptr %24, align 1, !tbaa !30
  %26 = zext i16 %25 to i64
  %27 = mul nuw nsw i64 %26, 2654435769
  %28 = lshr i64 %27, 22
  %29 = and i64 %28, 1023
  %30 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !12
  %33 = add nuw i64 %13, 2
  %34 = add i64 %14, 2
  %35 = icmp eq i64 %34, %10
  br i1 %35, label %36, label %12, !llvm.loop !29

36:                                               ; preds = %12, %6
  %37 = phi i64 [ 0, %6 ], [ %33, %12 ]
  %38 = icmp eq i64 %7, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %37
  %41 = load i16, ptr %40, align 1, !tbaa !30
  %42 = zext i16 %41 to i64
  %43 = mul nuw nsw i64 %42, 2654435769
  %44 = lshr i64 %43, 22
  %45 = and i64 %44, 1023
  %46 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !12
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !12
  br label %49

49:                                               ; preds = %39, %36, %3
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 %4, ptr %50, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
