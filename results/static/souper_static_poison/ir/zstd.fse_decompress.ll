; ModuleID = '/mydata/zstd/lib/common/fse_decompress.c'
source_filename = "/mydata/zstd/lib/common/fse_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSE_decode_t = type { i16, i8, i8 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.FSE_DState_t = type { i64, ptr }

@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @FSE_buildDTable_wksp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5), !range !5
  ret i64 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @FSE_buildDTable_internal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i64 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i16, ptr %4, i64 %8
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = add i32 %2, 1
  %12 = shl nuw i32 1, %3
  %13 = add i32 %12, -1
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = zext nneg i32 %3 to i64
  %17 = shl nuw i64 1, %16
  %18 = add nuw i64 %17, 8
  %19 = add i64 %18, %15
  %20 = icmp ugt i64 %19, %5
  %21 = icmp ugt i32 %2, 255
  %22 = or i1 %21, %20
  br i1 %22, label %258, label %23

23:                                               ; preds = %6
  %24 = icmp ugt i32 %3, 12
  br i1 %24, label %258, label %25

25:                                               ; preds = %23
  %26 = trunc i32 %3 to i16
  %27 = shl nuw nsw i32 32768, %3
  %28 = lshr exact i32 %27, 16
  %29 = and i64 %14, 1
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %25
  %32 = and i64 %14, 4294967294
  br label %33

33:                                               ; preds = %68, %31
  %34 = phi i64 [ 0, %31 ], [ %73, %68 ]
  %35 = phi i32 [ %13, %31 ], [ %71, %68 ]
  %36 = phi i16 [ 1, %31 ], [ %70, %68 ]
  %37 = phi i64 [ 0, %31 ], [ %74, %68 ]
  %38 = getelementptr inbounds i16, ptr %1, i64 %34
  %39 = load i16, ptr %38, align 2, !tbaa !6
  %40 = icmp eq i16 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = trunc i64 %34 to i8
  %43 = add i32 %35, -1
  %44 = zext i32 %35 to i64
  %45 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %44, i32 1
  store i8 %42, ptr %45, align 2, !tbaa !10
  br label %50

46:                                               ; preds = %33
  %47 = sext i16 %39 to i32
  %48 = icmp sgt i32 %28, %47
  %49 = select i1 %48, i16 %36, i16 0
  br label %50

50:                                               ; preds = %41, %46
  %51 = phi i16 [ 1, %41 ], [ %39, %46 ]
  %52 = phi i16 [ %36, %41 ], [ %49, %46 ]
  %53 = phi i32 [ %43, %41 ], [ %35, %46 ]
  %54 = getelementptr inbounds i16, ptr %4, i64 %34
  store i16 %51, ptr %54, align 2
  %55 = or disjoint i64 %34, 1
  %56 = getelementptr inbounds i16, ptr %1, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !6
  %58 = icmp eq i16 %57, -1
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = sext i16 %57 to i32
  %61 = icmp sgt i32 %28, %60
  %62 = select i1 %61, i16 %52, i16 0
  br label %68

63:                                               ; preds = %50
  %64 = trunc i64 %55 to i8
  %65 = add i32 %53, -1
  %66 = zext i32 %53 to i64
  %67 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %66, i32 1
  store i8 %64, ptr %67, align 2, !tbaa !10
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i16 [ 1, %63 ], [ %57, %59 ]
  %70 = phi i16 [ %52, %63 ], [ %62, %59 ]
  %71 = phi i32 [ %65, %63 ], [ %53, %59 ]
  %72 = getelementptr inbounds i16, ptr %4, i64 %55
  store i16 %69, ptr %72, align 2
  %73 = add nuw nsw i64 %34, 2
  %74 = add i64 %37, 2
  %75 = icmp eq i64 %74, %32
  br i1 %75, label %76, label %33, !llvm.loop !12

76:                                               ; preds = %68, %25
  %77 = phi i16 [ undef, %25 ], [ %70, %68 ]
  %78 = phi i32 [ undef, %25 ], [ %71, %68 ]
  %79 = phi i64 [ 0, %25 ], [ %73, %68 ]
  %80 = phi i32 [ %13, %25 ], [ %71, %68 ]
  %81 = phi i16 [ 1, %25 ], [ %70, %68 ]
  %82 = icmp eq i64 %29, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds i16, ptr %1, i64 %79
  %85 = load i16, ptr %84, align 2, !tbaa !6
  %86 = icmp eq i16 %85, -1
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = sext i16 %85 to i32
  %89 = icmp sgt i32 %28, %88
  %90 = select i1 %89, i16 %81, i16 0
  br label %96

91:                                               ; preds = %83
  %92 = trunc i64 %79 to i8
  %93 = add i32 %80, -1
  %94 = zext i32 %80 to i64
  %95 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %94, i32 1
  store i8 %92, ptr %95, align 2, !tbaa !10
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i16 [ 1, %91 ], [ %85, %87 ]
  %98 = phi i16 [ %81, %91 ], [ %90, %87 ]
  %99 = phi i32 [ %93, %91 ], [ %80, %87 ]
  %100 = getelementptr inbounds i16, ptr %4, i64 %79
  store i16 %97, ptr %100, align 2
  br label %101

101:                                              ; preds = %76, %96
  %102 = phi i16 [ %77, %76 ], [ %98, %96 ]
  %103 = phi i32 [ %78, %76 ], [ %99, %96 ]
  store i16 %26, ptr %0, align 4
  %104 = getelementptr inbounds i8, ptr %0, i64 2
  store i16 %102, ptr %104, align 2
  %105 = icmp eq i32 %103, %13
  %106 = lshr i32 %12, 1
  br i1 %105, label %107, label %177

107:                                              ; preds = %101
  %108 = zext i32 %13 to i64
  %109 = lshr i32 %12, 3
  %110 = add nuw nsw i32 %109, 3
  %111 = add nuw nsw i32 %110, %106
  %112 = zext nneg i32 %111 to i64
  br label %116

113:                                              ; preds = %154
  %114 = zext nneg i32 %12 to i64
  %115 = shl nuw nsw i64 %112, 1
  br label %160

116:                                              ; preds = %107, %154
  %117 = phi i64 [ 0, %107 ], [ %157, %154 ]
  %118 = phi i64 [ 0, %107 ], [ %156, %154 ]
  %119 = phi i64 [ 0, %107 ], [ %158, %154 ]
  %120 = getelementptr inbounds i16, ptr %1, i64 %117
  %121 = load i16, ptr %120, align 2, !tbaa !6
  %122 = getelementptr inbounds i8, ptr %10, i64 %118
  store i64 %119, ptr %122, align 1, !tbaa !14
  %123 = icmp sgt i16 %121, 8
  br i1 %123, label %124, label %154

124:                                              ; preds = %116
  %125 = zext nneg i16 %121 to i64
  %126 = tail call i64 @llvm.umax.i64(i64 %125, i64 16)
  %127 = add nsw i64 %126, -9
  %128 = lshr i64 %127, 3
  %129 = add nuw nsw i64 %128, 1
  %130 = icmp ult i64 %127, 24
  br i1 %130, label %147, label %131

131:                                              ; preds = %124
  %132 = and i64 %129, 4611686018427387900
  %133 = shl i64 %132, 3
  %134 = or disjoint i64 %133, 8
  %135 = insertelement <2 x i64> poison, i64 %119, i64 0
  %136 = shufflevector <2 x i64> %135, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %137

137:                                              ; preds = %137, %131
  %138 = phi i64 [ 0, %131 ], [ %143, %137 ]
  %139 = shl i64 %138, 3
  %140 = or disjoint i64 %139, 8
  %141 = getelementptr inbounds i8, ptr %122, i64 %140
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store <2 x i64> %136, ptr %141, align 1, !tbaa !14
  store <2 x i64> %136, ptr %142, align 1, !tbaa !14
  %143 = add nuw i64 %138, 4
  %144 = icmp eq i64 %143, %132
  br i1 %144, label %145, label %137, !llvm.loop !16

145:                                              ; preds = %137
  %146 = icmp eq i64 %129, %132
  br i1 %146, label %154, label %147

147:                                              ; preds = %124, %145
  %148 = phi i64 [ 8, %124 ], [ %134, %145 ]
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i64 [ %152, %149 ], [ %148, %147 ]
  %151 = getelementptr inbounds i8, ptr %122, i64 %150
  store i64 %119, ptr %151, align 1, !tbaa !14
  %152 = add nuw nsw i64 %150, 8
  %153 = icmp ult i64 %152, %125
  br i1 %153, label %149, label %154, !llvm.loop !19

154:                                              ; preds = %149, %145, %116
  %155 = sext i16 %121 to i64
  %156 = add i64 %118, %155
  %157 = add nuw nsw i64 %117, 1
  %158 = add i64 %119, 72340172838076673
  %159 = icmp eq i64 %157, %14
  br i1 %159, label %113, label %116, !llvm.loop !20

160:                                              ; preds = %113, %160
  %161 = phi i64 [ 0, %113 ], [ %175, %160 ]
  %162 = phi i64 [ 0, %113 ], [ %174, %160 ]
  %163 = and i64 %162, %108
  %164 = getelementptr inbounds i8, ptr %10, i64 %161
  %165 = load i8, ptr %164, align 1, !tbaa !21
  %166 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %163, i32 1
  store i8 %165, ptr %166, align 2, !tbaa !10
  %167 = add nuw nsw i64 %162, %112
  %168 = and i64 %167, %108
  %169 = or disjoint i64 %161, 1
  %170 = getelementptr inbounds i8, ptr %10, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !21
  %172 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %168, i32 1
  store i8 %171, ptr %172, align 2, !tbaa !10
  %173 = add nuw nsw i64 %162, %115
  %174 = and i64 %173, %108
  %175 = add nuw nsw i64 %161, 2
  %176 = icmp ult i64 %175, %114
  br i1 %176, label %160, label %235, !llvm.loop !22

177:                                              ; preds = %101
  %178 = lshr i32 %12, 3
  %179 = add nuw nsw i32 %178, 3
  %180 = add nuw nsw i32 %179, %106
  br label %181

181:                                              ; preds = %177, %227
  %182 = phi i64 [ 0, %177 ], [ %229, %227 ]
  %183 = phi i32 [ 0, %177 ], [ %228, %227 ]
  %184 = getelementptr inbounds i16, ptr %1, i64 %182
  %185 = load i16, ptr %184, align 2, !tbaa !6
  %186 = sext i16 %185 to i32
  %187 = icmp sgt i16 %185, 0
  br i1 %187, label %188, label %227

188:                                              ; preds = %181
  %189 = trunc i64 %182 to i8
  %190 = and i32 %186, 1
  %191 = icmp eq i16 %185, 1
  br i1 %191, label %215, label %192

192:                                              ; preds = %188
  %193 = and i32 %186, 32766
  br label %194

194:                                              ; preds = %212, %192
  %195 = phi i32 [ %183, %192 ], [ %210, %212 ]
  %196 = phi i32 [ 0, %192 ], [ %213, %212 ]
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %197, i32 1
  store i8 %189, ptr %198, align 2, !tbaa !10
  br label %199

199:                                              ; preds = %199, %194
  %200 = phi i32 [ %195, %194 ], [ %202, %199 ]
  %201 = add i32 %180, %200
  %202 = and i32 %201, %13
  %203 = icmp ugt i32 %202, %103
  br i1 %203, label %199, label %204, !llvm.loop !23

204:                                              ; preds = %199
  %205 = zext i32 %202 to i64
  %206 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %205, i32 1
  store i8 %189, ptr %206, align 2, !tbaa !10
  br label %207

207:                                              ; preds = %207, %204
  %208 = phi i32 [ %202, %204 ], [ %210, %207 ]
  %209 = add i32 %180, %208
  %210 = and i32 %209, %13
  %211 = icmp ugt i32 %210, %103
  br i1 %211, label %207, label %212, !llvm.loop !23

212:                                              ; preds = %207
  %213 = add i32 %196, 2
  %214 = icmp eq i32 %213, %193
  br i1 %214, label %215, label %194, !llvm.loop !24

215:                                              ; preds = %212, %188
  %216 = phi i32 [ undef, %188 ], [ %210, %212 ]
  %217 = phi i32 [ %183, %188 ], [ %210, %212 ]
  %218 = icmp eq i32 %190, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %215
  %220 = zext i32 %217 to i64
  %221 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %220, i32 1
  store i8 %189, ptr %221, align 2, !tbaa !10
  br label %222

222:                                              ; preds = %222, %219
  %223 = phi i32 [ %217, %219 ], [ %225, %222 ]
  %224 = add i32 %180, %223
  %225 = and i32 %224, %13
  %226 = icmp ugt i32 %225, %103
  br i1 %226, label %222, label %227, !llvm.loop !23

227:                                              ; preds = %215, %222, %181
  %228 = phi i32 [ %183, %181 ], [ %216, %215 ], [ %225, %222 ]
  %229 = add nuw nsw i64 %182, 1
  %230 = icmp eq i64 %229, %14
  br i1 %230, label %231, label %181, !llvm.loop !25

231:                                              ; preds = %227
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %233, label %258

233:                                              ; preds = %231
  %234 = zext nneg i32 %12 to i64
  br label %235

235:                                              ; preds = %160, %233
  %236 = phi i64 [ %234, %233 ], [ %114, %160 ]
  br label %237

237:                                              ; preds = %235, %237
  %238 = phi i64 [ 0, %235 ], [ %256, %237 ]
  %239 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %238
  %240 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %238, i32 1
  %241 = load i8, ptr %240, align 2, !tbaa !10
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds i16, ptr %4, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !6
  %245 = add i16 %244, 1
  store i16 %245, ptr %243, align 2, !tbaa !6
  %246 = zext i16 %244 to i32
  %247 = tail call i32 @llvm.ctlz.i32(i32 %246, i1 true), !range !26
  %248 = xor i32 %247, 31
  %249 = sub nsw i32 %3, %248
  %250 = trunc i32 %249 to i8
  %251 = getelementptr inbounds %struct.FSE_decode_t, ptr %7, i64 %238, i32 2
  store i8 %250, ptr %251, align 1, !tbaa !27
  %252 = and i32 %249, 255
  %253 = shl i32 %246, %252
  %254 = sub i32 %253, %12
  %255 = trunc i32 %254 to i16
  store i16 %255, ptr %239, align 2, !tbaa !28
  %256 = add nuw nsw i64 %238, 1
  %257 = icmp eq i64 %256, %236
  br i1 %257, label %258, label %237, !llvm.loop !29

258:                                              ; preds = %237, %23, %6, %231
  %259 = phi i64 [ -1, %231 ], [ -46, %6 ], [ -44, %23 ], [ 0, %237 ]
  ret i64 %259
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.BIT_DStream_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.FSE_DState_t, align 8
  %12 = alloca %struct.BIT_DStream_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca %struct.FSE_DState_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = icmp eq i32 %7, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %797

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  store i32 255, ptr %16, align 4, !tbaa !30
  %21 = getelementptr inbounds i32, ptr %5, i64 128
  %22 = icmp ult i64 %6, 512
  br i1 %22, label %795, label %23

23:                                               ; preds = %20
  %24 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef 0) #11
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %795

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !30
  %28 = icmp ugt i32 %27, %4
  br i1 %28, label %795, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %2, i64 %24
  %31 = sub i64 %3, %24
  %32 = shl nuw i32 1, %27
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1), !nosanitize !32
  %34 = extractvalue { i32, i1 } %33, 0, !nosanitize !32
  %35 = extractvalue { i32, i1 } %33, 1, !nosanitize !32
  br i1 %35, label %36, label %37, !nosanitize !32

36:                                               ; preds = %37, %29
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !32
  unreachable, !nosanitize !32

37:                                               ; preds = %29
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !32
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !32
  br i1 %39, label %36, label %40, !nosanitize !32

40:                                               ; preds = %37
  %41 = extractvalue { i32, i1 } %38, 0, !nosanitize !32
  %42 = sext i32 %41 to i64
  %43 = load i32, ptr %16, align 4, !tbaa !30
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 1
  %47 = zext nneg i32 %27 to i64
  %48 = shl nuw i64 1, %47
  %49 = shl nsw i64 %42, 2
  %50 = add nuw i64 %48, 11
  %51 = add i64 %50, %49
  %52 = add i64 %51, %46
  %53 = and i64 %52, -4
  %54 = add i64 %53, 516
  %55 = icmp ugt i64 %54, %6
  br i1 %55, label %795, label %56

56:                                               ; preds = %40
  %57 = sext i32 %34 to i64
  %58 = shl nsw i64 %57, 2
  %59 = getelementptr inbounds i8, ptr %21, i64 %58
  %60 = add i64 %6, -512
  %61 = sub i64 %60, %58
  %62 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %21, ptr noundef %5, i32 noundef %43, i32 noundef %27, ptr noundef nonnull %59, i64 noundef %61), !range !5
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %795

64:                                               ; preds = %56
  %65 = getelementptr inbounds i8, ptr %5, i64 514
  %66 = load i16, ptr %65, align 2, !tbaa !33
  %67 = icmp eq i16 %66, 0
  %68 = getelementptr inbounds i8, ptr %0, i64 %1
  %69 = getelementptr inbounds i8, ptr %68, i64 -3
  br i1 %67, label %467, label %70

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  %71 = icmp eq i64 %31, 0
  br i1 %71, label %465, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 3
  store ptr %30, ptr %73, align 8, !tbaa !35
  %74 = getelementptr inbounds i8, ptr %30, i64 8
  %75 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 4
  store ptr %74, ptr %75, align 8, !tbaa !38
  %76 = icmp ugt i64 %31, 7
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, ptr %2, i64 %3
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !39
  %81 = load i64, ptr %79, align 1
  store i64 %81, ptr %9, align 8, !tbaa !40
  %82 = icmp ult i64 %81, 72057594037927936
  br i1 %82, label %465, label %141

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %30, ptr %84, align 8, !tbaa !39
  %85 = load i8, ptr %30, align 1, !tbaa !21
  %86 = zext i8 %85 to i64
  store i64 %86, ptr %9, align 8, !tbaa !40
  switch i64 %31, label %128 [
    i64 7, label %87
    i64 6, label %93
    i64 5, label %100
    i64 4, label %107
    i64 3, label %114
    i64 2, label %121
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %30, i64 6
  %89 = load i8, ptr %88, align 1, !tbaa !21
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 48
  %92 = or disjoint i64 %91, %86
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i64 [ %86, %83 ], [ %92, %87 ]
  %95 = getelementptr inbounds i8, ptr %30, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !21
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 40
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %83
  %101 = phi i64 [ %86, %83 ], [ %99, %93 ]
  %102 = getelementptr inbounds i8, ptr %30, i64 4
  %103 = load i8, ptr %102, align 1, !tbaa !21
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 32
  %106 = add nuw nsw i64 %105, %101
  br label %107

107:                                              ; preds = %100, %83
  %108 = phi i64 [ %86, %83 ], [ %106, %100 ]
  %109 = getelementptr inbounds i8, ptr %30, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !21
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 24
  %113 = add nuw nsw i64 %112, %108
  br label %114

114:                                              ; preds = %107, %83
  %115 = phi i64 [ %86, %83 ], [ %113, %107 ]
  %116 = getelementptr inbounds i8, ptr %30, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !21
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 16
  %120 = add nuw nsw i64 %119, %115
  br label %121

121:                                              ; preds = %114, %83
  %122 = phi i64 [ %86, %83 ], [ %120, %114 ]
  %123 = getelementptr inbounds i8, ptr %30, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !21
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = add nuw nsw i64 %126, %122
  store i64 %127, ptr %9, align 8, !tbaa !40
  br label %128

128:                                              ; preds = %121, %83
  %129 = getelementptr i8, ptr %2, i64 %3
  %130 = getelementptr i8, ptr %129, i64 -1
  %131 = load i8, ptr %130, align 1, !tbaa !21
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %465, label %133

133:                                              ; preds = %128
  %134 = zext i8 %131 to i32
  %135 = call i32 @llvm.ctlz.i32(i32 %134, i1 true), !range !26
  %136 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %137 = trunc i64 %31 to i32
  %138 = shl nuw nsw i32 %137, 3
  %139 = sub nsw i32 %135, %138
  %140 = add nsw i32 %139, 41
  store i32 %140, ptr %136, align 8, !tbaa !41
  br label %149

141:                                              ; preds = %77
  %142 = lshr i64 %81, 56
  %143 = trunc i64 %142 to i32
  %144 = call i32 @llvm.ctlz.i32(i32 %143, i1 true), !range !26
  %145 = xor i32 %144, 31
  %146 = sub nuw nsw i32 8, %145
  %147 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  store i32 %146, ptr %147, align 8, !tbaa !41
  %148 = icmp ult i64 %31, -119
  br i1 %148, label %149, label %465

149:                                              ; preds = %141, %133
  call fastcc void @FSE_initDState(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %21)
  %150 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !41
  %152 = icmp ugt i32 %151, 64
  br i1 %152, label %465, label %153, !prof !42

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !39
  %156 = load ptr, ptr %75, align 8
  %157 = icmp ult ptr %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = lshr i32 %151, 3
  %160 = zext nneg i32 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %155, i64 %161
  %163 = and i32 %151, 7
  %164 = load i64, ptr %162, align 1, !tbaa !14
  store i64 %164, ptr %9, align 8, !tbaa !40
  %165 = load ptr, ptr %73, align 8
  br label %171

166:                                              ; preds = %153
  %167 = load ptr, ptr %73, align 8
  %168 = icmp eq ptr %155, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load i64, ptr %9, align 8, !tbaa !40
  br label %171

171:                                              ; preds = %169, %158
  %172 = phi ptr [ %162, %158 ], [ %155, %169 ]
  %173 = phi ptr [ %165, %158 ], [ %155, %169 ]
  %174 = phi i64 [ %164, %158 ], [ %170, %169 ]
  %175 = phi i32 [ %163, %158 ], [ %151, %169 ]
  %176 = load i64, ptr %10, align 8, !tbaa !43
  %177 = load i64, ptr %11, align 8, !tbaa !43
  %178 = ptrtoint ptr %173 to i64
  %179 = getelementptr inbounds %struct.FSE_DState_t, ptr %10, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.FSE_DState_t, ptr %11, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8
  br label %208

183:                                              ; preds = %166
  %184 = lshr i32 %151, 3
  %185 = zext nneg i32 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %155, i64 %186
  %188 = icmp ult ptr %187, %167
  %189 = ptrtoint ptr %155 to i64
  %190 = ptrtoint ptr %167 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = select i1 %188, i32 %192, i32 %184
  %194 = zext i32 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %155, i64 %195
  %197 = shl i32 %193, 3
  %198 = sub i32 %151, %197
  %199 = load i64, ptr %196, align 1, !tbaa !14
  store i64 %199, ptr %9, align 8, !tbaa !40
  %200 = load i64, ptr %10, align 8, !tbaa !43
  %201 = load i64, ptr %11, align 8, !tbaa !43
  %202 = ptrtoint ptr %167 to i64
  %203 = getelementptr inbounds %struct.FSE_DState_t, ptr %10, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.FSE_DState_t, ptr %11, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8
  %207 = icmp ugt i32 %198, 64
  br i1 %207, label %255, label %208, !prof !45

208:                                              ; preds = %171, %183
  %209 = phi ptr [ %182, %171 ], [ %206, %183 ]
  %210 = phi ptr [ %180, %171 ], [ %204, %183 ]
  %211 = phi i64 [ %178, %171 ], [ %202, %183 ]
  %212 = phi i64 [ %177, %171 ], [ %201, %183 ]
  %213 = phi i64 [ %176, %171 ], [ %200, %183 ]
  %214 = phi i32 [ %175, %171 ], [ %198, %183 ]
  %215 = phi i64 [ %174, %171 ], [ %199, %183 ]
  %216 = phi ptr [ %173, %171 ], [ %167, %183 ]
  %217 = phi ptr [ %172, %171 ], [ %196, %183 ]
  br label %218

218:                                              ; preds = %208, %268
  %219 = phi ptr [ %340, %268 ], [ %0, %208 ]
  %220 = phi i32 [ %336, %268 ], [ %214, %208 ]
  %221 = phi i64 [ %251, %268 ], [ %215, %208 ]
  %222 = phi i64 [ %319, %268 ], [ %213, %208 ]
  %223 = phi i64 [ %338, %268 ], [ %212, %208 ]
  %224 = phi ptr [ %250, %268 ], [ %217, %208 ]
  %225 = icmp ult ptr %224, %156
  br i1 %225, label %229, label %226

226:                                              ; preds = %218
  %227 = lshr i32 %220, 3
  %228 = and i32 %220, 7
  br label %244

229:                                              ; preds = %218
  %230 = icmp eq ptr %224, %216
  br i1 %230, label %255, label %231

231:                                              ; preds = %229
  %232 = lshr i32 %220, 3
  %233 = zext nneg i32 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %224, i64 %234
  %236 = icmp ult ptr %235, %216
  %237 = ptrtoint ptr %224 to i64
  %238 = sub i64 %237, %211
  %239 = trunc i64 %238 to i32
  %240 = select i1 %236, i32 %239, i32 %232
  %241 = zext i1 %236 to i32
  %242 = shl i32 %240, 3
  %243 = sub i32 %220, %242
  br label %244

244:                                              ; preds = %231, %226
  %245 = phi i32 [ %227, %226 ], [ %240, %231 ]
  %246 = phi i32 [ %228, %226 ], [ %243, %231 ]
  %247 = phi i32 [ 0, %226 ], [ %241, %231 ]
  %248 = zext i32 %245 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, ptr %224, i64 %249
  %251 = load i64, ptr %250, align 1, !tbaa !14
  %252 = icmp eq i32 %247, 0
  %253 = icmp ult ptr %219, %69
  %254 = and i1 %253, %252
  br i1 %254, label %268, label %255

255:                                              ; preds = %268, %229, %244, %183
  %256 = phi ptr [ %206, %183 ], [ %209, %244 ], [ %209, %229 ], [ %209, %268 ]
  %257 = phi ptr [ %204, %183 ], [ %210, %244 ], [ %210, %229 ], [ %210, %268 ]
  %258 = phi i64 [ %202, %183 ], [ %211, %244 ], [ %211, %229 ], [ %211, %268 ]
  %259 = phi ptr [ %167, %183 ], [ %216, %244 ], [ %216, %229 ], [ %216, %268 ]
  %260 = phi i64 [ %199, %183 ], [ %251, %268 ], [ %221, %229 ], [ %251, %244 ]
  %261 = phi i64 [ %201, %183 ], [ %338, %268 ], [ %223, %229 ], [ %223, %244 ]
  %262 = phi i64 [ %200, %183 ], [ %319, %268 ], [ %222, %229 ], [ %222, %244 ]
  %263 = phi ptr [ %0, %183 ], [ %340, %268 ], [ %219, %229 ], [ %219, %244 ]
  %264 = phi i32 [ %198, %183 ], [ %336, %268 ], [ %220, %229 ], [ %246, %244 ]
  %265 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ @BIT_reloadDStream.zeroFilled, %268 ], [ %216, %229 ], [ %250, %244 ]
  store i64 %260, ptr %9, align 8, !tbaa !40
  store i64 %262, ptr %10, align 8, !tbaa !43
  store i64 %261, ptr %11, align 8, !tbaa !43
  %266 = getelementptr inbounds i8, ptr %68, i64 -2
  %267 = icmp ugt ptr %263, %266
  br i1 %267, label %465, label %342

268:                                              ; preds = %244
  %269 = getelementptr inbounds %struct.FSE_decode_t, ptr %210, i64 %222
  %270 = load i16, ptr %269, align 2, !tbaa.struct !46
  %271 = getelementptr inbounds i8, ptr %269, i64 2
  %272 = load i8, ptr %271, align 2, !tbaa.struct !47
  %273 = getelementptr inbounds i8, ptr %269, i64 3
  %274 = load i8, ptr %273, align 1, !tbaa.struct !48
  %275 = zext i8 %274 to i32
  %276 = and i32 %246, 63
  %277 = zext nneg i32 %276 to i64
  %278 = shl i64 %251, %277
  %279 = sub nsw i32 0, %275
  %280 = and i32 %279, 63
  %281 = zext nneg i32 %280 to i64
  %282 = lshr i64 %278, %281
  %283 = add i32 %246, %275
  %284 = zext i16 %270 to i64
  store i8 %272, ptr %219, align 1, !tbaa !21
  %285 = getelementptr inbounds %struct.FSE_decode_t, ptr %209, i64 %223
  %286 = load i16, ptr %285, align 2, !tbaa.struct !46
  %287 = getelementptr inbounds i8, ptr %285, i64 2
  %288 = load i8, ptr %287, align 2, !tbaa.struct !47
  %289 = getelementptr inbounds i8, ptr %285, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa.struct !48
  %291 = zext i8 %290 to i32
  %292 = and i32 %283, 63
  %293 = zext nneg i32 %292 to i64
  %294 = shl i64 %251, %293
  %295 = sub nsw i32 0, %291
  %296 = and i32 %295, 63
  %297 = zext nneg i32 %296 to i64
  %298 = lshr i64 %294, %297
  %299 = add i32 %283, %291
  %300 = zext i16 %286 to i64
  %301 = getelementptr inbounds i8, ptr %219, i64 1
  store i8 %288, ptr %301, align 1, !tbaa !21
  %302 = getelementptr %struct.FSE_decode_t, ptr %210, i64 %282
  %303 = getelementptr %struct.FSE_decode_t, ptr %302, i64 %284
  %304 = load i16, ptr %303, align 2, !tbaa.struct !46
  %305 = getelementptr inbounds i8, ptr %303, i64 2
  %306 = load i8, ptr %305, align 2, !tbaa.struct !47
  %307 = getelementptr inbounds i8, ptr %303, i64 3
  %308 = load i8, ptr %307, align 1, !tbaa.struct !48
  %309 = zext i8 %308 to i32
  %310 = and i32 %299, 63
  %311 = zext nneg i32 %310 to i64
  %312 = shl i64 %251, %311
  %313 = sub nsw i32 0, %309
  %314 = and i32 %313, 63
  %315 = zext nneg i32 %314 to i64
  %316 = lshr i64 %312, %315
  %317 = add i32 %299, %309
  %318 = zext i16 %304 to i64
  %319 = add i64 %316, %318
  %320 = getelementptr inbounds i8, ptr %219, i64 2
  store i8 %306, ptr %320, align 1, !tbaa !21
  %321 = getelementptr %struct.FSE_decode_t, ptr %209, i64 %298
  %322 = getelementptr %struct.FSE_decode_t, ptr %321, i64 %300
  %323 = load i16, ptr %322, align 2, !tbaa.struct !46
  %324 = getelementptr inbounds i8, ptr %322, i64 2
  %325 = load i8, ptr %324, align 2, !tbaa.struct !47
  %326 = getelementptr inbounds i8, ptr %322, i64 3
  %327 = load i8, ptr %326, align 1, !tbaa.struct !48
  %328 = zext i8 %327 to i32
  %329 = and i32 %317, 63
  %330 = zext nneg i32 %329 to i64
  %331 = shl i64 %251, %330
  %332 = sub nsw i32 0, %328
  %333 = and i32 %332, 63
  %334 = zext nneg i32 %333 to i64
  %335 = lshr i64 %331, %334
  %336 = add i32 %317, %328
  %337 = zext i16 %323 to i64
  %338 = add i64 %335, %337
  %339 = getelementptr inbounds i8, ptr %219, i64 3
  store i8 %325, ptr %339, align 1, !tbaa !21
  %340 = getelementptr inbounds i8, ptr %219, i64 4
  %341 = icmp ugt i32 %336, 64
  br i1 %341, label %255, label %218, !prof !49, !llvm.loop !50

342:                                              ; preds = %255, %449
  %343 = phi ptr [ %450, %449 ], [ %265, %255 ]
  %344 = phi ptr [ %420, %449 ], [ %263, %255 ]
  %345 = phi i64 [ %365, %449 ], [ %262, %255 ]
  %346 = phi i64 [ %452, %449 ], [ %260, %255 ]
  %347 = phi i32 [ %451, %449 ], [ %264, %255 ]
  %348 = phi i64 [ %419, %449 ], [ %261, %255 ]
  %349 = getelementptr inbounds %struct.FSE_decode_t, ptr %257, i64 %345
  %350 = load i16, ptr %349, align 2, !tbaa.struct !46
  %351 = getelementptr inbounds i8, ptr %349, i64 2
  %352 = load i8, ptr %351, align 2, !tbaa.struct !47
  %353 = getelementptr inbounds i8, ptr %349, i64 3
  %354 = load i8, ptr %353, align 1, !tbaa.struct !48
  %355 = zext i8 %354 to i32
  %356 = and i32 %347, 63
  %357 = zext nneg i32 %356 to i64
  %358 = shl i64 %346, %357
  %359 = sub nsw i32 0, %355
  %360 = and i32 %359, 63
  %361 = zext nneg i32 %360 to i64
  %362 = lshr i64 %358, %361
  %363 = add i32 %347, %355
  %364 = zext i16 %350 to i64
  %365 = add i64 %362, %364
  %366 = getelementptr inbounds i8, ptr %344, i64 1
  store i8 %352, ptr %344, align 1, !tbaa !21
  %367 = icmp ugt i32 %363, 64
  br i1 %367, label %395, label %368, !prof !42

368:                                              ; preds = %342
  %369 = icmp ult ptr %343, %156
  br i1 %369, label %377, label %370

370:                                              ; preds = %368
  %371 = lshr i32 %363, 3
  %372 = zext nneg i32 %371 to i64
  %373 = sub nsw i64 0, %372
  %374 = getelementptr inbounds i8, ptr %343, i64 %373
  %375 = and i32 %363, 7
  %376 = load i64, ptr %374, align 1, !tbaa !14
  store i64 %376, ptr %9, align 8, !tbaa !40
  br label %397

377:                                              ; preds = %368
  %378 = icmp eq ptr %343, %259
  br i1 %378, label %397, label %379

379:                                              ; preds = %377
  %380 = lshr i32 %363, 3
  %381 = zext nneg i32 %380 to i64
  %382 = sub nsw i64 0, %381
  %383 = getelementptr inbounds i8, ptr %343, i64 %382
  %384 = icmp ult ptr %383, %259
  %385 = ptrtoint ptr %343 to i64
  %386 = sub i64 %385, %258
  %387 = trunc i64 %386 to i32
  %388 = select i1 %384, i32 %387, i32 %380
  %389 = zext i32 %388 to i64
  %390 = sub nsw i64 0, %389
  %391 = getelementptr inbounds i8, ptr %343, i64 %390
  %392 = shl i32 %388, 3
  %393 = sub i32 %363, %392
  %394 = load i64, ptr %391, align 1, !tbaa !14
  store i64 %394, ptr %9, align 8, !tbaa !40
  br label %397

395:                                              ; preds = %342
  %396 = getelementptr inbounds %struct.FSE_decode_t, ptr %256, i64 %348, i32 1
  br label %456

397:                                              ; preds = %379, %377, %370
  %398 = phi ptr [ %259, %377 ], [ %374, %370 ], [ %391, %379 ]
  %399 = phi i32 [ %363, %377 ], [ %375, %370 ], [ %393, %379 ]
  %400 = phi i64 [ %346, %377 ], [ %376, %370 ], [ %394, %379 ]
  %401 = icmp ugt ptr %366, %266
  br i1 %401, label %465, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.FSE_decode_t, ptr %256, i64 %348
  %404 = load i16, ptr %403, align 2, !tbaa.struct !46
  %405 = getelementptr inbounds i8, ptr %403, i64 2
  %406 = load i8, ptr %405, align 2, !tbaa.struct !47
  %407 = getelementptr inbounds i8, ptr %403, i64 3
  %408 = load i8, ptr %407, align 1, !tbaa.struct !48
  %409 = zext i8 %408 to i32
  %410 = and i32 %399, 63
  %411 = zext nneg i32 %410 to i64
  %412 = shl i64 %400, %411
  %413 = sub nsw i32 0, %409
  %414 = and i32 %413, 63
  %415 = zext nneg i32 %414 to i64
  %416 = lshr i64 %412, %415
  %417 = add i32 %399, %409
  %418 = zext i16 %404 to i64
  %419 = add i64 %416, %418
  %420 = getelementptr inbounds i8, ptr %344, i64 2
  store i8 %406, ptr %366, align 1, !tbaa !21
  %421 = icmp ugt i32 %417, 64
  br i1 %421, label %454, label %422, !prof !42

422:                                              ; preds = %402
  %423 = icmp ult ptr %398, %156
  br i1 %423, label %431, label %424

424:                                              ; preds = %422
  %425 = lshr i32 %417, 3
  %426 = zext nneg i32 %425 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %398, i64 %427
  %429 = and i32 %417, 7
  %430 = load i64, ptr %428, align 1, !tbaa !14
  store i64 %430, ptr %9, align 8, !tbaa !40
  br label %449

431:                                              ; preds = %422
  %432 = icmp eq ptr %398, %259
  br i1 %432, label %449, label %433

433:                                              ; preds = %431
  %434 = lshr i32 %417, 3
  %435 = zext nneg i32 %434 to i64
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %398, i64 %436
  %438 = icmp ult ptr %437, %259
  %439 = ptrtoint ptr %398 to i64
  %440 = sub i64 %439, %258
  %441 = trunc i64 %440 to i32
  %442 = select i1 %438, i32 %441, i32 %434
  %443 = zext i32 %442 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, ptr %398, i64 %444
  %446 = shl i32 %442, 3
  %447 = sub i32 %417, %446
  %448 = load i64, ptr %445, align 1, !tbaa !14
  store i64 %448, ptr %9, align 8, !tbaa !40
  br label %449

449:                                              ; preds = %433, %431, %424
  %450 = phi ptr [ %259, %431 ], [ %428, %424 ], [ %445, %433 ]
  %451 = phi i32 [ %417, %431 ], [ %429, %424 ], [ %447, %433 ]
  %452 = phi i64 [ %400, %431 ], [ %430, %424 ], [ %448, %433 ]
  %453 = icmp ugt ptr %420, %266
  br i1 %453, label %465, label %342

454:                                              ; preds = %402
  %455 = getelementptr inbounds %struct.FSE_decode_t, ptr %257, i64 %365, i32 1
  br label %456

456:                                              ; preds = %454, %395
  %457 = phi ptr [ %455, %454 ], [ %396, %395 ]
  %458 = phi i64 [ 3, %454 ], [ 2, %395 ]
  %459 = phi ptr [ %420, %454 ], [ %366, %395 ]
  %460 = load i8, ptr %457, align 2
  %461 = getelementptr inbounds i8, ptr %344, i64 %458
  store i8 %460, ptr %459, align 1, !tbaa !21
  %462 = ptrtoint ptr %461 to i64
  %463 = ptrtoint ptr %0 to i64
  %464 = sub i64 %462, %463
  br label %465

465:                                              ; preds = %449, %397, %456, %255, %149, %141, %128, %77, %70
  %466 = phi i64 [ %464, %456 ], [ %31, %141 ], [ -72, %70 ], [ -1, %77 ], [ -20, %128 ], [ -20, %149 ], [ -70, %255 ], [ -70, %397 ], [ -70, %449 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #11
  br label %795

467:                                              ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #11
  %468 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %12, ptr noundef %30, i64 noundef %31), !range !51
  %469 = icmp ult i64 %468, -119
  br i1 %469, label %470, label %793

470:                                              ; preds = %467
  call fastcc void @FSE_initDState(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %21)
  %471 = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i64 0, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !41
  %473 = icmp ugt i32 %472, 64
  br i1 %473, label %793, label %474, !prof !42

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !39
  %477 = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i64 0, i32 4
  %478 = load ptr, ptr %477, align 8
  %479 = icmp ult ptr %476, %478
  br i1 %479, label %489, label %480

480:                                              ; preds = %474
  %481 = lshr i32 %472, 3
  %482 = zext nneg i32 %481 to i64
  %483 = sub nsw i64 0, %482
  %484 = getelementptr inbounds i8, ptr %476, i64 %483
  %485 = and i32 %472, 7
  %486 = load i64, ptr %484, align 1, !tbaa !14
  store i64 %486, ptr %12, align 8, !tbaa !40
  %487 = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i64 0, i32 3
  %488 = load ptr, ptr %487, align 8
  br label %495

489:                                              ; preds = %474
  %490 = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i64 0, i32 3
  %491 = load ptr, ptr %490, align 8
  %492 = icmp eq ptr %476, %491
  br i1 %492, label %493, label %507

493:                                              ; preds = %489
  %494 = load i64, ptr %12, align 8, !tbaa !40
  br label %495

495:                                              ; preds = %493, %480
  %496 = phi ptr [ %484, %480 ], [ %476, %493 ]
  %497 = phi ptr [ %488, %480 ], [ %476, %493 ]
  %498 = phi i64 [ %486, %480 ], [ %494, %493 ]
  %499 = phi i32 [ %485, %480 ], [ %472, %493 ]
  %500 = load i64, ptr %13, align 8, !tbaa !43
  %501 = load i64, ptr %14, align 8, !tbaa !43
  %502 = ptrtoint ptr %497 to i64
  %503 = getelementptr inbounds %struct.FSE_DState_t, ptr %13, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8
  %505 = getelementptr inbounds %struct.FSE_DState_t, ptr %14, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8
  br label %532

507:                                              ; preds = %489
  %508 = lshr i32 %472, 3
  %509 = zext nneg i32 %508 to i64
  %510 = sub nsw i64 0, %509
  %511 = getelementptr inbounds i8, ptr %476, i64 %510
  %512 = icmp ult ptr %511, %491
  %513 = ptrtoint ptr %476 to i64
  %514 = ptrtoint ptr %491 to i64
  %515 = sub i64 %513, %514
  %516 = trunc i64 %515 to i32
  %517 = select i1 %512, i32 %516, i32 %508
  %518 = zext i32 %517 to i64
  %519 = sub nsw i64 0, %518
  %520 = getelementptr inbounds i8, ptr %476, i64 %519
  %521 = shl i32 %517, 3
  %522 = sub i32 %472, %521
  %523 = load i64, ptr %520, align 1, !tbaa !14
  store i64 %523, ptr %12, align 8, !tbaa !40
  %524 = load i64, ptr %13, align 8, !tbaa !43
  %525 = load i64, ptr %14, align 8, !tbaa !43
  %526 = ptrtoint ptr %491 to i64
  %527 = getelementptr inbounds %struct.FSE_DState_t, ptr %13, i64 0, i32 1
  %528 = load ptr, ptr %527, align 8
  %529 = getelementptr inbounds %struct.FSE_DState_t, ptr %14, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8
  %531 = icmp ugt i32 %522, 64
  br i1 %531, label %579, label %532, !prof !45

532:                                              ; preds = %495, %507
  %533 = phi ptr [ %506, %495 ], [ %530, %507 ]
  %534 = phi ptr [ %504, %495 ], [ %528, %507 ]
  %535 = phi i64 [ %502, %495 ], [ %526, %507 ]
  %536 = phi i64 [ %501, %495 ], [ %525, %507 ]
  %537 = phi i64 [ %500, %495 ], [ %524, %507 ]
  %538 = phi i32 [ %499, %495 ], [ %522, %507 ]
  %539 = phi i64 [ %498, %495 ], [ %523, %507 ]
  %540 = phi ptr [ %497, %495 ], [ %491, %507 ]
  %541 = phi ptr [ %496, %495 ], [ %520, %507 ]
  br label %542

542:                                              ; preds = %532, %592
  %543 = phi ptr [ %668, %592 ], [ %0, %532 ]
  %544 = phi i32 [ %656, %592 ], [ %538, %532 ]
  %545 = phi i64 [ %575, %592 ], [ %539, %532 ]
  %546 = phi i64 [ %646, %592 ], [ %537, %532 ]
  %547 = phi i64 [ %666, %592 ], [ %536, %532 ]
  %548 = phi ptr [ %574, %592 ], [ %541, %532 ]
  %549 = icmp ult ptr %548, %478
  br i1 %549, label %553, label %550

550:                                              ; preds = %542
  %551 = lshr i32 %544, 3
  %552 = and i32 %544, 7
  br label %568

553:                                              ; preds = %542
  %554 = icmp eq ptr %548, %540
  br i1 %554, label %579, label %555

555:                                              ; preds = %553
  %556 = lshr i32 %544, 3
  %557 = zext nneg i32 %556 to i64
  %558 = sub nsw i64 0, %557
  %559 = getelementptr inbounds i8, ptr %548, i64 %558
  %560 = icmp ult ptr %559, %540
  %561 = ptrtoint ptr %548 to i64
  %562 = sub i64 %561, %535
  %563 = trunc i64 %562 to i32
  %564 = select i1 %560, i32 %563, i32 %556
  %565 = zext i1 %560 to i32
  %566 = shl i32 %564, 3
  %567 = sub i32 %544, %566
  br label %568

568:                                              ; preds = %555, %550
  %569 = phi i32 [ %551, %550 ], [ %564, %555 ]
  %570 = phi i32 [ %552, %550 ], [ %567, %555 ]
  %571 = phi i32 [ 0, %550 ], [ %565, %555 ]
  %572 = zext i32 %569 to i64
  %573 = sub nsw i64 0, %572
  %574 = getelementptr inbounds i8, ptr %548, i64 %573
  %575 = load i64, ptr %574, align 1, !tbaa !14
  %576 = icmp eq i32 %571, 0
  %577 = icmp ult ptr %543, %69
  %578 = and i1 %577, %576
  br i1 %578, label %592, label %579

579:                                              ; preds = %592, %553, %568, %507
  %580 = phi ptr [ %530, %507 ], [ %533, %568 ], [ %533, %553 ], [ %533, %592 ]
  %581 = phi ptr [ %528, %507 ], [ %534, %568 ], [ %534, %553 ], [ %534, %592 ]
  %582 = phi i64 [ %526, %507 ], [ %535, %568 ], [ %535, %553 ], [ %535, %592 ]
  %583 = phi ptr [ %491, %507 ], [ %540, %568 ], [ %540, %553 ], [ %540, %592 ]
  %584 = phi i64 [ %525, %507 ], [ %666, %592 ], [ %547, %553 ], [ %547, %568 ]
  %585 = phi i64 [ %524, %507 ], [ %646, %592 ], [ %546, %553 ], [ %546, %568 ]
  %586 = phi ptr [ %0, %507 ], [ %668, %592 ], [ %543, %553 ], [ %543, %568 ]
  %587 = phi i32 [ %522, %507 ], [ %656, %592 ], [ %544, %553 ], [ %570, %568 ]
  %588 = phi i64 [ %523, %507 ], [ %575, %592 ], [ %545, %553 ], [ %575, %568 ]
  %589 = phi ptr [ @BIT_reloadDStream.zeroFilled, %507 ], [ @BIT_reloadDStream.zeroFilled, %592 ], [ %540, %553 ], [ %574, %568 ]
  store i64 %588, ptr %12, align 8, !tbaa !40
  store i64 %585, ptr %13, align 8, !tbaa !43
  store i64 %584, ptr %14, align 8, !tbaa !43
  %590 = getelementptr inbounds i8, ptr %68, i64 -2
  %591 = icmp ugt ptr %586, %590
  br i1 %591, label %793, label %670

592:                                              ; preds = %568
  %593 = getelementptr inbounds %struct.FSE_decode_t, ptr %534, i64 %546
  %594 = load i16, ptr %593, align 2, !tbaa.struct !46
  %595 = getelementptr inbounds i8, ptr %593, i64 2
  %596 = load i8, ptr %595, align 2, !tbaa.struct !47
  %597 = getelementptr inbounds i8, ptr %593, i64 3
  %598 = load i8, ptr %597, align 1, !tbaa.struct !48
  %599 = zext i8 %598 to i32
  %600 = add i32 %570, %599
  %601 = sub i32 0, %600
  %602 = and i32 %601, 63
  %603 = zext nneg i32 %602 to i64
  %604 = lshr i64 %575, %603
  %605 = zext nneg i8 %598 to i64
  %606 = shl nsw i64 -1, %605
  %607 = xor i64 %606, -1
  %608 = and i64 %604, %607
  %609 = zext i16 %594 to i64
  store i8 %596, ptr %543, align 1, !tbaa !21
  %610 = getelementptr inbounds %struct.FSE_decode_t, ptr %533, i64 %547
  %611 = load i16, ptr %610, align 2, !tbaa.struct !46
  %612 = getelementptr inbounds i8, ptr %610, i64 2
  %613 = load i8, ptr %612, align 2, !tbaa.struct !47
  %614 = getelementptr inbounds i8, ptr %610, i64 3
  %615 = load i8, ptr %614, align 1, !tbaa.struct !48
  %616 = zext i8 %615 to i32
  %617 = add i32 %600, %616
  %618 = sub i32 0, %617
  %619 = and i32 %618, 63
  %620 = zext nneg i32 %619 to i64
  %621 = lshr i64 %575, %620
  %622 = zext nneg i8 %615 to i64
  %623 = shl nsw i64 -1, %622
  %624 = xor i64 %623, -1
  %625 = and i64 %621, %624
  %626 = zext i16 %611 to i64
  %627 = getelementptr inbounds i8, ptr %543, i64 1
  store i8 %613, ptr %627, align 1, !tbaa !21
  %628 = getelementptr %struct.FSE_decode_t, ptr %534, i64 %608
  %629 = getelementptr %struct.FSE_decode_t, ptr %628, i64 %609
  %630 = load i16, ptr %629, align 2, !tbaa.struct !46
  %631 = getelementptr inbounds i8, ptr %629, i64 2
  %632 = load i8, ptr %631, align 2, !tbaa.struct !47
  %633 = getelementptr inbounds i8, ptr %629, i64 3
  %634 = load i8, ptr %633, align 1, !tbaa.struct !48
  %635 = zext i8 %634 to i32
  %636 = add i32 %617, %635
  %637 = sub i32 0, %636
  %638 = and i32 %637, 63
  %639 = zext nneg i32 %638 to i64
  %640 = lshr i64 %575, %639
  %641 = zext nneg i8 %634 to i64
  %642 = shl nsw i64 -1, %641
  %643 = xor i64 %642, -1
  %644 = and i64 %640, %643
  %645 = zext i16 %630 to i64
  %646 = add nuw i64 %644, %645
  %647 = getelementptr inbounds i8, ptr %543, i64 2
  store i8 %632, ptr %647, align 1, !tbaa !21
  %648 = getelementptr %struct.FSE_decode_t, ptr %533, i64 %625
  %649 = getelementptr %struct.FSE_decode_t, ptr %648, i64 %626
  %650 = load i16, ptr %649, align 2, !tbaa.struct !46
  %651 = getelementptr inbounds i8, ptr %649, i64 2
  %652 = load i8, ptr %651, align 2, !tbaa.struct !47
  %653 = getelementptr inbounds i8, ptr %649, i64 3
  %654 = load i8, ptr %653, align 1, !tbaa.struct !48
  %655 = zext i8 %654 to i32
  %656 = add i32 %636, %655
  %657 = sub i32 0, %656
  %658 = and i32 %657, 63
  %659 = zext nneg i32 %658 to i64
  %660 = lshr i64 %575, %659
  %661 = zext nneg i8 %654 to i64
  %662 = shl nsw i64 -1, %661
  %663 = xor i64 %662, -1
  %664 = and i64 %660, %663
  %665 = zext i16 %650 to i64
  %666 = add nuw i64 %664, %665
  %667 = getelementptr inbounds i8, ptr %543, i64 3
  store i8 %652, ptr %667, align 1, !tbaa !21
  %668 = getelementptr inbounds i8, ptr %543, i64 4
  %669 = icmp ugt i32 %656, 64
  br i1 %669, label %579, label %542, !prof !49, !llvm.loop !50

670:                                              ; preds = %579, %777
  %671 = phi ptr [ %778, %777 ], [ %589, %579 ]
  %672 = phi ptr [ %749, %777 ], [ %586, %579 ]
  %673 = phi i64 [ %694, %777 ], [ %585, %579 ]
  %674 = phi i64 [ %780, %777 ], [ %588, %579 ]
  %675 = phi i32 [ %779, %777 ], [ %587, %579 ]
  %676 = phi i64 [ %748, %777 ], [ %584, %579 ]
  %677 = getelementptr inbounds %struct.FSE_decode_t, ptr %581, i64 %673
  %678 = load i16, ptr %677, align 2, !tbaa.struct !46
  %679 = getelementptr inbounds i8, ptr %677, i64 2
  %680 = load i8, ptr %679, align 2, !tbaa.struct !47
  %681 = getelementptr inbounds i8, ptr %677, i64 3
  %682 = load i8, ptr %681, align 1, !tbaa.struct !48
  %683 = zext i8 %682 to i32
  %684 = add i32 %675, %683
  %685 = sub i32 0, %684
  %686 = and i32 %685, 63
  %687 = zext nneg i32 %686 to i64
  %688 = lshr i64 %674, %687
  %689 = zext nneg i8 %682 to i64
  %690 = shl nsw i64 -1, %689
  %691 = xor i64 %690, -1
  %692 = and i64 %688, %691
  %693 = zext i16 %678 to i64
  %694 = add nuw i64 %692, %693
  %695 = getelementptr inbounds i8, ptr %672, i64 1
  store i8 %680, ptr %672, align 1, !tbaa !21
  %696 = icmp ugt i32 %684, 64
  br i1 %696, label %716, label %697, !prof !42

697:                                              ; preds = %670
  %698 = icmp ult ptr %671, %478
  br i1 %698, label %702, label %699

699:                                              ; preds = %697
  %700 = lshr i32 %684, 3
  %701 = and i32 %684, 7
  br label %718

702:                                              ; preds = %697
  %703 = icmp eq ptr %671, %583
  br i1 %703, label %725, label %704

704:                                              ; preds = %702
  %705 = lshr i32 %684, 3
  %706 = zext nneg i32 %705 to i64
  %707 = sub nsw i64 0, %706
  %708 = getelementptr inbounds i8, ptr %671, i64 %707
  %709 = icmp ult ptr %708, %583
  %710 = ptrtoint ptr %671 to i64
  %711 = sub i64 %710, %582
  %712 = trunc i64 %711 to i32
  %713 = select i1 %709, i32 %712, i32 %705
  %714 = shl i32 %713, 3
  %715 = sub i32 %684, %714
  br label %718

716:                                              ; preds = %670
  %717 = getelementptr inbounds %struct.FSE_decode_t, ptr %580, i64 %676, i32 1
  br label %784

718:                                              ; preds = %704, %699
  %719 = phi i32 [ %700, %699 ], [ %713, %704 ]
  %720 = phi i32 [ %701, %699 ], [ %715, %704 ]
  %721 = zext i32 %719 to i64
  %722 = sub nsw i64 0, %721
  %723 = getelementptr inbounds i8, ptr %671, i64 %722
  %724 = load i64, ptr %723, align 1, !tbaa !14
  br label %725

725:                                              ; preds = %718, %702
  %726 = phi ptr [ %583, %702 ], [ %723, %718 ]
  %727 = phi i32 [ %684, %702 ], [ %720, %718 ]
  %728 = phi i64 [ %674, %702 ], [ %724, %718 ]
  %729 = icmp ugt ptr %695, %590
  br i1 %729, label %793, label %730

730:                                              ; preds = %725
  %731 = getelementptr inbounds %struct.FSE_decode_t, ptr %580, i64 %676
  %732 = load i16, ptr %731, align 2, !tbaa.struct !46
  %733 = getelementptr inbounds i8, ptr %731, i64 2
  %734 = load i8, ptr %733, align 2, !tbaa.struct !47
  %735 = getelementptr inbounds i8, ptr %731, i64 3
  %736 = load i8, ptr %735, align 1, !tbaa.struct !48
  %737 = zext i8 %736 to i32
  %738 = add i32 %727, %737
  %739 = sub i32 0, %738
  %740 = and i32 %739, 63
  %741 = zext nneg i32 %740 to i64
  %742 = lshr i64 %728, %741
  %743 = zext nneg i8 %736 to i64
  %744 = shl nsw i64 -1, %743
  %745 = xor i64 %744, -1
  %746 = and i64 %742, %745
  %747 = zext i16 %732 to i64
  %748 = add nuw i64 %746, %747
  %749 = getelementptr inbounds i8, ptr %672, i64 2
  store i8 %734, ptr %695, align 1, !tbaa !21
  %750 = icmp ugt i32 %738, 64
  br i1 %750, label %782, label %751, !prof !42

751:                                              ; preds = %730
  %752 = icmp ult ptr %726, %478
  br i1 %752, label %756, label %753

753:                                              ; preds = %751
  %754 = lshr i32 %738, 3
  %755 = and i32 %738, 7
  br label %770

756:                                              ; preds = %751
  %757 = icmp eq ptr %726, %583
  br i1 %757, label %777, label %758

758:                                              ; preds = %756
  %759 = lshr i32 %738, 3
  %760 = zext nneg i32 %759 to i64
  %761 = sub nsw i64 0, %760
  %762 = getelementptr inbounds i8, ptr %726, i64 %761
  %763 = icmp ult ptr %762, %583
  %764 = ptrtoint ptr %726 to i64
  %765 = sub i64 %764, %582
  %766 = trunc i64 %765 to i32
  %767 = select i1 %763, i32 %766, i32 %759
  %768 = shl i32 %767, 3
  %769 = sub i32 %738, %768
  br label %770

770:                                              ; preds = %758, %753
  %771 = phi i32 [ %754, %753 ], [ %767, %758 ]
  %772 = phi i32 [ %755, %753 ], [ %769, %758 ]
  %773 = zext i32 %771 to i64
  %774 = sub nsw i64 0, %773
  %775 = getelementptr inbounds i8, ptr %726, i64 %774
  %776 = load i64, ptr %775, align 1, !tbaa !14
  br label %777

777:                                              ; preds = %770, %756
  %778 = phi ptr [ %583, %756 ], [ %775, %770 ]
  %779 = phi i32 [ %738, %756 ], [ %772, %770 ]
  %780 = phi i64 [ %728, %756 ], [ %776, %770 ]
  %781 = icmp ugt ptr %749, %590
  br i1 %781, label %793, label %670

782:                                              ; preds = %730
  %783 = getelementptr inbounds %struct.FSE_decode_t, ptr %581, i64 %694, i32 1
  br label %784

784:                                              ; preds = %782, %716
  %785 = phi ptr [ %783, %782 ], [ %717, %716 ]
  %786 = phi i64 [ 3, %782 ], [ 2, %716 ]
  %787 = phi ptr [ %749, %782 ], [ %695, %716 ]
  %788 = load i8, ptr %785, align 2
  %789 = getelementptr inbounds i8, ptr %672, i64 %786
  store i8 %788, ptr %787, align 1, !tbaa !21
  %790 = ptrtoint ptr %789 to i64
  %791 = ptrtoint ptr %0 to i64
  %792 = sub i64 %790, %791
  br label %793

793:                                              ; preds = %777, %725, %784, %579, %470, %467
  %794 = phi i64 [ %792, %784 ], [ %468, %467 ], [ -20, %470 ], [ -70, %579 ], [ -70, %725 ], [ -70, %777 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  br label %795

795:                                              ; preds = %20, %23, %26, %40, %56, %465, %793
  %796 = phi i64 [ %62, %56 ], [ -1, %20 ], [ -44, %40 ], [ %466, %465 ], [ %794, %793 ], [ -44, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  br label %797

797:                                              ; preds = %795, %18
  %798 = phi i64 [ %19, %18 ], [ %796, %795 ]
  ret i64 %798
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.BIT_DStream_t, align 8
  %9 = alloca %struct.FSE_DState_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.BIT_DStream_t, align 8
  %12 = alloca %struct.FSE_DState_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 255, ptr %15, align 4, !tbaa !30
  %16 = getelementptr inbounds i32, ptr %5, i64 128
  %17 = icmp ult i64 %6, 512
  br i1 %17, label %759, label %18

18:                                               ; preds = %7
  %19 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3, i32 noundef 1) #11
  %20 = icmp ult i64 %19, -119
  br i1 %20, label %21, label %759

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4, !tbaa !30
  %23 = icmp ugt i32 %22, %4
  br i1 %23, label %759, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %2, i64 %19
  %26 = sub i64 %3, %19
  %27 = shl nuw i32 1, %22
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !32
  %29 = extractvalue { i32, i1 } %28, 0, !nosanitize !32
  %30 = extractvalue { i32, i1 } %28, 1, !nosanitize !32
  br i1 %30, label %31, label %32, !nosanitize !32

31:                                               ; preds = %32, %24
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !32
  unreachable, !nosanitize !32

32:                                               ; preds = %24
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1), !nosanitize !32
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !32
  br i1 %34, label %31, label %35, !nosanitize !32

35:                                               ; preds = %32
  %36 = extractvalue { i32, i1 } %33, 0, !nosanitize !32
  %37 = sext i32 %36 to i64
  %38 = load i32, ptr %15, align 4, !tbaa !30
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 1
  %42 = zext nneg i32 %22 to i64
  %43 = shl nuw i64 1, %42
  %44 = shl nsw i64 %37, 2
  %45 = add nuw i64 %43, 11
  %46 = add i64 %45, %44
  %47 = add i64 %46, %41
  %48 = and i64 %47, -4
  %49 = add i64 %48, 516
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %759, label %51

51:                                               ; preds = %35
  %52 = sext i32 %29 to i64
  %53 = shl nsw i64 %52, 2
  %54 = getelementptr inbounds i8, ptr %16, i64 %53
  %55 = add i64 %6, -512
  %56 = sub i64 %55, %53
  %57 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %16, ptr noundef %5, i32 noundef %38, i32 noundef %22, ptr noundef nonnull %54, i64 noundef %56), !range !5
  %58 = icmp ult i64 %57, -119
  br i1 %58, label %59, label %759

59:                                               ; preds = %51
  %60 = getelementptr inbounds i8, ptr %5, i64 514
  %61 = load i16, ptr %60, align 2, !tbaa !33
  %62 = icmp eq i16 %61, 0
  %63 = getelementptr inbounds i8, ptr %0, i64 %1
  %64 = getelementptr inbounds i8, ptr %63, i64 -3
  br i1 %62, label %452, label %65

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  %66 = icmp eq i64 %26, 0
  br i1 %66, label %450, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 3
  store ptr %25, ptr %68, align 8, !tbaa !35
  %69 = getelementptr inbounds i8, ptr %25, i64 8
  %70 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 4
  store ptr %69, ptr %70, align 8, !tbaa !38
  %71 = icmp ugt i64 %26, 7
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %2, i64 %3
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !39
  %76 = load i64, ptr %74, align 1
  store i64 %76, ptr %8, align 8, !tbaa !40
  %77 = icmp ult i64 %76, 72057594037927936
  br i1 %77, label %450, label %136

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  store ptr %25, ptr %79, align 8, !tbaa !39
  %80 = load i8, ptr %25, align 1, !tbaa !21
  %81 = zext i8 %80 to i64
  store i64 %81, ptr %8, align 8, !tbaa !40
  switch i64 %26, label %123 [
    i64 7, label %82
    i64 6, label %88
    i64 5, label %95
    i64 4, label %102
    i64 3, label %109
    i64 2, label %116
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %25, i64 6
  %84 = load i8, ptr %83, align 1, !tbaa !21
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 48
  %87 = or disjoint i64 %86, %81
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi i64 [ %81, %78 ], [ %87, %82 ]
  %90 = getelementptr inbounds i8, ptr %25, i64 5
  %91 = load i8, ptr %90, align 1, !tbaa !21
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 40
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %78
  %96 = phi i64 [ %81, %78 ], [ %94, %88 ]
  %97 = getelementptr inbounds i8, ptr %25, i64 4
  %98 = load i8, ptr %97, align 1, !tbaa !21
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 32
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %78
  %103 = phi i64 [ %81, %78 ], [ %101, %95 ]
  %104 = getelementptr inbounds i8, ptr %25, i64 3
  %105 = load i8, ptr %104, align 1, !tbaa !21
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 24
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %78
  %110 = phi i64 [ %81, %78 ], [ %108, %102 ]
  %111 = getelementptr inbounds i8, ptr %25, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !21
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 16
  %115 = add nuw nsw i64 %114, %110
  br label %116

116:                                              ; preds = %109, %78
  %117 = phi i64 [ %81, %78 ], [ %115, %109 ]
  %118 = getelementptr inbounds i8, ptr %25, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !21
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 8
  %122 = add nuw nsw i64 %121, %117
  store i64 %122, ptr %8, align 8, !tbaa !40
  br label %123

123:                                              ; preds = %116, %78
  %124 = getelementptr i8, ptr %2, i64 %3
  %125 = getelementptr i8, ptr %124, i64 -1
  %126 = load i8, ptr %125, align 1, !tbaa !21
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %450, label %128

128:                                              ; preds = %123
  %129 = zext i8 %126 to i32
  %130 = call i32 @llvm.ctlz.i32(i32 %129, i1 true), !range !26
  %131 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 1
  %132 = trunc i64 %26 to i32
  %133 = shl nuw nsw i32 %132, 3
  %134 = sub nsw i32 %130, %133
  %135 = add nsw i32 %134, 41
  store i32 %135, ptr %131, align 8, !tbaa !41
  br label %144

136:                                              ; preds = %72
  %137 = lshr i64 %76, 56
  %138 = trunc i64 %137 to i32
  %139 = call i32 @llvm.ctlz.i32(i32 %138, i1 true), !range !26
  %140 = xor i32 %139, 31
  %141 = sub nuw nsw i32 8, %140
  %142 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 1
  store i32 %141, ptr %142, align 8, !tbaa !41
  %143 = icmp ult i64 %26, -119
  br i1 %143, label %144, label %450

144:                                              ; preds = %128, %136
  call fastcc void @FSE_initDState(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %16)
  %145 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !41
  %147 = icmp ugt i32 %146, 64
  br i1 %147, label %450, label %148, !prof !42

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !39
  %151 = load ptr, ptr %70, align 8
  %152 = icmp ult ptr %150, %151
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = lshr i32 %146, 3
  %155 = zext nneg i32 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %150, i64 %156
  %158 = and i32 %146, 7
  %159 = load i64, ptr %157, align 1, !tbaa !14
  store i64 %159, ptr %8, align 8, !tbaa !40
  %160 = load ptr, ptr %68, align 8
  br label %183

161:                                              ; preds = %148
  %162 = load ptr, ptr %68, align 8
  %163 = icmp eq ptr %150, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i64, ptr %8, align 8, !tbaa !40
  br label %183

166:                                              ; preds = %161
  %167 = lshr i32 %146, 3
  %168 = zext nneg i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %150, i64 %169
  %171 = icmp ult ptr %170, %162
  %172 = ptrtoint ptr %150 to i64
  %173 = ptrtoint ptr %162 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = select i1 %171, i32 %175, i32 %167
  %177 = zext i32 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %150, i64 %178
  %180 = shl i32 %176, 3
  %181 = sub i32 %146, %180
  %182 = load i64, ptr %179, align 1, !tbaa !14
  store i64 %182, ptr %8, align 8, !tbaa !40
  br label %183

183:                                              ; preds = %164, %153, %166
  %184 = phi ptr [ %150, %164 ], [ %157, %153 ], [ %179, %166 ]
  %185 = phi ptr [ %150, %164 ], [ %160, %153 ], [ %162, %166 ]
  %186 = phi i64 [ %165, %164 ], [ %159, %153 ], [ %182, %166 ]
  %187 = phi i32 [ %146, %164 ], [ %158, %153 ], [ %181, %166 ]
  %188 = load i64, ptr %9, align 8, !tbaa !43
  %189 = load i64, ptr %10, align 8, !tbaa !43
  %190 = ptrtoint ptr %185 to i64
  %191 = getelementptr inbounds %struct.FSE_DState_t, ptr %9, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds %struct.FSE_DState_t, ptr %10, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8
  %195 = icmp ugt i32 %187, 64
  br i1 %195, label %244, label %196, !prof !52

196:                                              ; preds = %183
  %197 = load i64, ptr %8, align 1, !tbaa !40
  br label %198

198:                                              ; preds = %196, %253
  %199 = phi i64 [ %232, %253 ], [ %197, %196 ]
  %200 = phi ptr [ %325, %253 ], [ %0, %196 ]
  %201 = phi i32 [ %321, %253 ], [ %187, %196 ]
  %202 = phi i64 [ %232, %253 ], [ %186, %196 ]
  %203 = phi i64 [ %304, %253 ], [ %188, %196 ]
  %204 = phi i64 [ %323, %253 ], [ %189, %196 ]
  %205 = phi ptr [ %231, %253 ], [ %184, %196 ]
  %206 = icmp ult ptr %205, %151
  br i1 %206, label %210, label %207

207:                                              ; preds = %198
  %208 = lshr i32 %201, 3
  %209 = and i32 %201, 7
  br label %225

210:                                              ; preds = %198
  %211 = icmp eq ptr %205, %185
  br i1 %211, label %236, label %212

212:                                              ; preds = %210
  %213 = lshr i32 %201, 3
  %214 = zext nneg i32 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %205, i64 %215
  %217 = icmp ult ptr %216, %185
  %218 = ptrtoint ptr %205 to i64
  %219 = sub i64 %218, %190
  %220 = trunc i64 %219 to i32
  %221 = select i1 %217, i32 %220, i32 %213
  %222 = zext i1 %217 to i32
  %223 = shl i32 %221, 3
  %224 = sub i32 %201, %223
  br label %225

225:                                              ; preds = %207, %212
  %226 = phi i32 [ %208, %207 ], [ %221, %212 ]
  %227 = phi i32 [ %209, %207 ], [ %224, %212 ]
  %228 = phi i32 [ 0, %207 ], [ %222, %212 ]
  %229 = zext i32 %226 to i64
  %230 = sub nsw i64 0, %229
  %231 = getelementptr inbounds i8, ptr %205, i64 %230
  %232 = load i64, ptr %231, align 1, !tbaa !14
  %233 = icmp eq i32 %228, 0
  %234 = icmp ult ptr %200, %64
  %235 = and i1 %234, %233
  br i1 %235, label %253, label %236

236:                                              ; preds = %210, %225, %253
  %237 = phi i64 [ %232, %253 ], [ %232, %225 ], [ %199, %210 ]
  %238 = phi i64 [ %323, %253 ], [ %204, %225 ], [ %204, %210 ]
  %239 = phi i64 [ %304, %253 ], [ %203, %225 ], [ %203, %210 ]
  %240 = phi ptr [ %325, %253 ], [ %200, %225 ], [ %200, %210 ]
  %241 = phi i32 [ %321, %253 ], [ %227, %225 ], [ %201, %210 ]
  %242 = phi i64 [ %232, %253 ], [ %232, %225 ], [ %202, %210 ]
  %243 = phi ptr [ @BIT_reloadDStream.zeroFilled, %253 ], [ %231, %225 ], [ %205, %210 ]
  store i64 %237, ptr %8, align 1, !tbaa !40
  br label %244

244:                                              ; preds = %236, %183
  %245 = phi i64 [ %189, %183 ], [ %238, %236 ]
  %246 = phi i64 [ %188, %183 ], [ %239, %236 ]
  %247 = phi ptr [ %0, %183 ], [ %240, %236 ]
  %248 = phi i32 [ %187, %183 ], [ %241, %236 ]
  %249 = phi i64 [ %186, %183 ], [ %242, %236 ]
  %250 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ %243, %236 ]
  store i64 %246, ptr %9, align 8, !tbaa !43
  store i64 %245, ptr %10, align 8, !tbaa !43
  %251 = getelementptr inbounds i8, ptr %63, i64 -2
  %252 = icmp ugt ptr %247, %251
  br i1 %252, label %450, label %327

253:                                              ; preds = %225
  %254 = getelementptr inbounds %struct.FSE_decode_t, ptr %192, i64 %203
  %255 = load i16, ptr %254, align 2, !tbaa.struct !46
  %256 = getelementptr inbounds i8, ptr %254, i64 2
  %257 = load i8, ptr %256, align 2, !tbaa.struct !47
  %258 = getelementptr inbounds i8, ptr %254, i64 3
  %259 = load i8, ptr %258, align 1, !tbaa.struct !48
  %260 = zext i8 %259 to i32
  %261 = and i32 %227, 63
  %262 = zext nneg i32 %261 to i64
  %263 = shl i64 %232, %262
  %264 = sub nsw i32 0, %260
  %265 = and i32 %264, 63
  %266 = zext nneg i32 %265 to i64
  %267 = lshr i64 %263, %266
  %268 = add i32 %227, %260
  %269 = zext i16 %255 to i64
  store i8 %257, ptr %200, align 1, !tbaa !21
  %270 = getelementptr inbounds %struct.FSE_decode_t, ptr %194, i64 %204
  %271 = load i16, ptr %270, align 2, !tbaa.struct !46
  %272 = getelementptr inbounds i8, ptr %270, i64 2
  %273 = load i8, ptr %272, align 2, !tbaa.struct !47
  %274 = getelementptr inbounds i8, ptr %270, i64 3
  %275 = load i8, ptr %274, align 1, !tbaa.struct !48
  %276 = zext i8 %275 to i32
  %277 = and i32 %268, 63
  %278 = zext nneg i32 %277 to i64
  %279 = shl i64 %232, %278
  %280 = sub nsw i32 0, %276
  %281 = and i32 %280, 63
  %282 = zext nneg i32 %281 to i64
  %283 = lshr i64 %279, %282
  %284 = add i32 %268, %276
  %285 = zext i16 %271 to i64
  %286 = getelementptr inbounds i8, ptr %200, i64 1
  store i8 %273, ptr %286, align 1, !tbaa !21
  %287 = getelementptr %struct.FSE_decode_t, ptr %192, i64 %267
  %288 = getelementptr %struct.FSE_decode_t, ptr %287, i64 %269
  %289 = load i16, ptr %288, align 2, !tbaa.struct !46
  %290 = getelementptr inbounds i8, ptr %288, i64 2
  %291 = load i8, ptr %290, align 2, !tbaa.struct !47
  %292 = getelementptr inbounds i8, ptr %288, i64 3
  %293 = load i8, ptr %292, align 1, !tbaa.struct !48
  %294 = zext i8 %293 to i32
  %295 = and i32 %284, 63
  %296 = zext nneg i32 %295 to i64
  %297 = shl i64 %232, %296
  %298 = sub nsw i32 0, %294
  %299 = and i32 %298, 63
  %300 = zext nneg i32 %299 to i64
  %301 = lshr i64 %297, %300
  %302 = add i32 %284, %294
  %303 = zext i16 %289 to i64
  %304 = add i64 %301, %303
  %305 = getelementptr inbounds i8, ptr %200, i64 2
  store i8 %291, ptr %305, align 1, !tbaa !21
  %306 = getelementptr %struct.FSE_decode_t, ptr %194, i64 %283
  %307 = getelementptr %struct.FSE_decode_t, ptr %306, i64 %285
  %308 = load i16, ptr %307, align 2, !tbaa.struct !46
  %309 = getelementptr inbounds i8, ptr %307, i64 2
  %310 = load i8, ptr %309, align 2, !tbaa.struct !47
  %311 = getelementptr inbounds i8, ptr %307, i64 3
  %312 = load i8, ptr %311, align 1, !tbaa.struct !48
  %313 = zext i8 %312 to i32
  %314 = and i32 %302, 63
  %315 = zext nneg i32 %314 to i64
  %316 = shl i64 %232, %315
  %317 = sub nsw i32 0, %313
  %318 = and i32 %317, 63
  %319 = zext nneg i32 %318 to i64
  %320 = lshr i64 %316, %319
  %321 = add i32 %302, %313
  %322 = zext i16 %308 to i64
  %323 = add i64 %320, %322
  %324 = getelementptr inbounds i8, ptr %200, i64 3
  store i8 %310, ptr %324, align 1, !tbaa !21
  %325 = getelementptr inbounds i8, ptr %200, i64 4
  %326 = icmp ugt i32 %321, 64
  br i1 %326, label %236, label %198, !prof !49, !llvm.loop !50

327:                                              ; preds = %244, %434
  %328 = phi ptr [ %435, %434 ], [ %250, %244 ]
  %329 = phi ptr [ %405, %434 ], [ %247, %244 ]
  %330 = phi i64 [ %350, %434 ], [ %246, %244 ]
  %331 = phi i64 [ %437, %434 ], [ %249, %244 ]
  %332 = phi i32 [ %436, %434 ], [ %248, %244 ]
  %333 = phi i64 [ %404, %434 ], [ %245, %244 ]
  %334 = getelementptr inbounds %struct.FSE_decode_t, ptr %192, i64 %330
  %335 = load i16, ptr %334, align 2, !tbaa.struct !46
  %336 = getelementptr inbounds i8, ptr %334, i64 2
  %337 = load i8, ptr %336, align 2, !tbaa.struct !47
  %338 = getelementptr inbounds i8, ptr %334, i64 3
  %339 = load i8, ptr %338, align 1, !tbaa.struct !48
  %340 = zext i8 %339 to i32
  %341 = and i32 %332, 63
  %342 = zext nneg i32 %341 to i64
  %343 = shl i64 %331, %342
  %344 = sub nsw i32 0, %340
  %345 = and i32 %344, 63
  %346 = zext nneg i32 %345 to i64
  %347 = lshr i64 %343, %346
  %348 = add i32 %332, %340
  %349 = zext i16 %335 to i64
  %350 = add i64 %347, %349
  %351 = getelementptr inbounds i8, ptr %329, i64 1
  store i8 %337, ptr %329, align 1, !tbaa !21
  %352 = icmp ugt i32 %348, 64
  br i1 %352, label %380, label %353, !prof !42

353:                                              ; preds = %327
  %354 = icmp ult ptr %328, %151
  br i1 %354, label %362, label %355

355:                                              ; preds = %353
  %356 = lshr i32 %348, 3
  %357 = zext nneg i32 %356 to i64
  %358 = sub nsw i64 0, %357
  %359 = getelementptr inbounds i8, ptr %328, i64 %358
  %360 = and i32 %348, 7
  %361 = load i64, ptr %359, align 1, !tbaa !14
  store i64 %361, ptr %8, align 8, !tbaa !40
  br label %382

362:                                              ; preds = %353
  %363 = icmp eq ptr %328, %185
  br i1 %363, label %382, label %364

364:                                              ; preds = %362
  %365 = lshr i32 %348, 3
  %366 = zext nneg i32 %365 to i64
  %367 = sub nsw i64 0, %366
  %368 = getelementptr inbounds i8, ptr %328, i64 %367
  %369 = icmp ult ptr %368, %185
  %370 = ptrtoint ptr %328 to i64
  %371 = sub i64 %370, %190
  %372 = trunc i64 %371 to i32
  %373 = select i1 %369, i32 %372, i32 %365
  %374 = zext i32 %373 to i64
  %375 = sub nsw i64 0, %374
  %376 = getelementptr inbounds i8, ptr %328, i64 %375
  %377 = shl i32 %373, 3
  %378 = sub i32 %348, %377
  %379 = load i64, ptr %376, align 1, !tbaa !14
  store i64 %379, ptr %8, align 8, !tbaa !40
  br label %382

380:                                              ; preds = %327
  %381 = getelementptr inbounds %struct.FSE_decode_t, ptr %194, i64 %333, i32 1
  br label %441

382:                                              ; preds = %362, %355, %364
  %383 = phi ptr [ %185, %362 ], [ %359, %355 ], [ %376, %364 ]
  %384 = phi i32 [ %348, %362 ], [ %360, %355 ], [ %378, %364 ]
  %385 = phi i64 [ %331, %362 ], [ %361, %355 ], [ %379, %364 ]
  %386 = icmp ugt ptr %351, %251
  br i1 %386, label %450, label %387

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.FSE_decode_t, ptr %194, i64 %333
  %389 = load i16, ptr %388, align 2, !tbaa.struct !46
  %390 = getelementptr inbounds i8, ptr %388, i64 2
  %391 = load i8, ptr %390, align 2, !tbaa.struct !47
  %392 = getelementptr inbounds i8, ptr %388, i64 3
  %393 = load i8, ptr %392, align 1, !tbaa.struct !48
  %394 = zext i8 %393 to i32
  %395 = and i32 %384, 63
  %396 = zext nneg i32 %395 to i64
  %397 = shl i64 %385, %396
  %398 = sub nsw i32 0, %394
  %399 = and i32 %398, 63
  %400 = zext nneg i32 %399 to i64
  %401 = lshr i64 %397, %400
  %402 = add i32 %384, %394
  %403 = zext i16 %389 to i64
  %404 = add i64 %401, %403
  %405 = getelementptr inbounds i8, ptr %329, i64 2
  store i8 %391, ptr %351, align 1, !tbaa !21
  %406 = icmp ugt i32 %402, 64
  br i1 %406, label %439, label %407, !prof !42

407:                                              ; preds = %387
  %408 = icmp ult ptr %383, %151
  br i1 %408, label %416, label %409

409:                                              ; preds = %407
  %410 = lshr i32 %402, 3
  %411 = zext nneg i32 %410 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %383, i64 %412
  %414 = and i32 %402, 7
  %415 = load i64, ptr %413, align 1, !tbaa !14
  store i64 %415, ptr %8, align 8, !tbaa !40
  br label %434

416:                                              ; preds = %407
  %417 = icmp eq ptr %383, %185
  br i1 %417, label %434, label %418

418:                                              ; preds = %416
  %419 = lshr i32 %402, 3
  %420 = zext nneg i32 %419 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %383, i64 %421
  %423 = icmp ult ptr %422, %185
  %424 = ptrtoint ptr %383 to i64
  %425 = sub i64 %424, %190
  %426 = trunc i64 %425 to i32
  %427 = select i1 %423, i32 %426, i32 %419
  %428 = zext i32 %427 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %383, i64 %429
  %431 = shl i32 %427, 3
  %432 = sub i32 %402, %431
  %433 = load i64, ptr %430, align 1, !tbaa !14
  store i64 %433, ptr %8, align 8, !tbaa !40
  br label %434

434:                                              ; preds = %416, %409, %418
  %435 = phi ptr [ %185, %416 ], [ %413, %409 ], [ %430, %418 ]
  %436 = phi i32 [ %402, %416 ], [ %414, %409 ], [ %432, %418 ]
  %437 = phi i64 [ %385, %416 ], [ %415, %409 ], [ %433, %418 ]
  %438 = icmp ugt ptr %405, %251
  br i1 %438, label %450, label %327

439:                                              ; preds = %387
  %440 = getelementptr inbounds %struct.FSE_decode_t, ptr %192, i64 %350, i32 1
  br label %441

441:                                              ; preds = %439, %380
  %442 = phi ptr [ %440, %439 ], [ %381, %380 ]
  %443 = phi i64 [ 3, %439 ], [ 2, %380 ]
  %444 = phi ptr [ %405, %439 ], [ %351, %380 ]
  %445 = load i8, ptr %442, align 2
  %446 = getelementptr inbounds i8, ptr %329, i64 %443
  store i8 %445, ptr %444, align 1, !tbaa !21
  %447 = ptrtoint ptr %446 to i64
  %448 = ptrtoint ptr %0 to i64
  %449 = sub i64 %447, %448
  br label %450

450:                                              ; preds = %382, %434, %244, %144, %123, %72, %65, %136, %441
  %451 = phi i64 [ %449, %441 ], [ %26, %136 ], [ -72, %65 ], [ -1, %72 ], [ -20, %123 ], [ -20, %144 ], [ -70, %244 ], [ -70, %434 ], [ -70, %382 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  br label %759

452:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  %453 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %11, ptr noundef %25, i64 noundef %26), !range !51
  %454 = icmp ult i64 %453, -119
  br i1 %454, label %455, label %757

455:                                              ; preds = %452
  call fastcc void @FSE_initDState(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %16)
  %456 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !41
  %458 = icmp ugt i32 %457, 64
  br i1 %458, label %757, label %459, !prof !42

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !39
  %462 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 4
  %463 = load ptr, ptr %462, align 8
  %464 = icmp ult ptr %461, %463
  br i1 %464, label %474, label %465

465:                                              ; preds = %459
  %466 = lshr i32 %457, 3
  %467 = zext nneg i32 %466 to i64
  %468 = sub nsw i64 0, %467
  %469 = getelementptr inbounds i8, ptr %461, i64 %468
  %470 = and i32 %457, 7
  %471 = load i64, ptr %469, align 1, !tbaa !14
  store i64 %471, ptr %11, align 8, !tbaa !40
  %472 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8
  br label %497

474:                                              ; preds = %459
  %475 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 3
  %476 = load ptr, ptr %475, align 8
  %477 = icmp eq ptr %461, %476
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = load i64, ptr %11, align 8, !tbaa !40
  br label %497

480:                                              ; preds = %474
  %481 = lshr i32 %457, 3
  %482 = zext nneg i32 %481 to i64
  %483 = sub nsw i64 0, %482
  %484 = getelementptr inbounds i8, ptr %461, i64 %483
  %485 = icmp ult ptr %484, %476
  %486 = ptrtoint ptr %461 to i64
  %487 = ptrtoint ptr %476 to i64
  %488 = sub i64 %486, %487
  %489 = trunc i64 %488 to i32
  %490 = select i1 %485, i32 %489, i32 %481
  %491 = zext i32 %490 to i64
  %492 = sub nsw i64 0, %491
  %493 = getelementptr inbounds i8, ptr %461, i64 %492
  %494 = shl i32 %490, 3
  %495 = sub i32 %457, %494
  %496 = load i64, ptr %493, align 1, !tbaa !14
  store i64 %496, ptr %11, align 8, !tbaa !40
  br label %497

497:                                              ; preds = %478, %465, %480
  %498 = phi ptr [ %461, %478 ], [ %469, %465 ], [ %493, %480 ]
  %499 = phi ptr [ %461, %478 ], [ %473, %465 ], [ %476, %480 ]
  %500 = phi i64 [ %479, %478 ], [ %471, %465 ], [ %496, %480 ]
  %501 = phi i32 [ %457, %478 ], [ %470, %465 ], [ %495, %480 ]
  %502 = load i64, ptr %12, align 8, !tbaa !43
  %503 = load i64, ptr %13, align 8, !tbaa !43
  %504 = ptrtoint ptr %499 to i64
  %505 = getelementptr inbounds %struct.FSE_DState_t, ptr %12, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8
  %507 = getelementptr inbounds %struct.FSE_DState_t, ptr %13, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8
  %509 = icmp ugt i32 %501, 64
  br i1 %509, label %547, label %510, !prof !52

510:                                              ; preds = %497, %556
  %511 = phi ptr [ %632, %556 ], [ %0, %497 ]
  %512 = phi i32 [ %620, %556 ], [ %501, %497 ]
  %513 = phi i64 [ %543, %556 ], [ %500, %497 ]
  %514 = phi i64 [ %610, %556 ], [ %502, %497 ]
  %515 = phi i64 [ %630, %556 ], [ %503, %497 ]
  %516 = phi ptr [ %542, %556 ], [ %498, %497 ]
  %517 = icmp ult ptr %516, %463
  br i1 %517, label %521, label %518

518:                                              ; preds = %510
  %519 = lshr i32 %512, 3
  %520 = and i32 %512, 7
  br label %536

521:                                              ; preds = %510
  %522 = icmp eq ptr %516, %499
  br i1 %522, label %547, label %523

523:                                              ; preds = %521
  %524 = lshr i32 %512, 3
  %525 = zext nneg i32 %524 to i64
  %526 = sub nsw i64 0, %525
  %527 = getelementptr inbounds i8, ptr %516, i64 %526
  %528 = icmp ult ptr %527, %499
  %529 = ptrtoint ptr %516 to i64
  %530 = sub i64 %529, %504
  %531 = trunc i64 %530 to i32
  %532 = select i1 %528, i32 %531, i32 %524
  %533 = zext i1 %528 to i32
  %534 = shl i32 %532, 3
  %535 = sub i32 %512, %534
  br label %536

536:                                              ; preds = %518, %523
  %537 = phi i32 [ %519, %518 ], [ %532, %523 ]
  %538 = phi i32 [ %520, %518 ], [ %535, %523 ]
  %539 = phi i32 [ 0, %518 ], [ %533, %523 ]
  %540 = zext i32 %537 to i64
  %541 = sub nsw i64 0, %540
  %542 = getelementptr inbounds i8, ptr %516, i64 %541
  %543 = load i64, ptr %542, align 1, !tbaa !14
  %544 = icmp eq i32 %539, 0
  %545 = icmp ult ptr %511, %64
  %546 = and i1 %545, %544
  br i1 %546, label %556, label %547

547:                                              ; preds = %536, %521, %556, %497
  %548 = phi i64 [ %503, %497 ], [ %515, %536 ], [ %515, %521 ], [ %630, %556 ]
  %549 = phi i64 [ %502, %497 ], [ %514, %536 ], [ %514, %521 ], [ %610, %556 ]
  %550 = phi ptr [ %0, %497 ], [ %511, %536 ], [ %511, %521 ], [ %632, %556 ]
  %551 = phi i32 [ %501, %497 ], [ %538, %536 ], [ %512, %521 ], [ %620, %556 ]
  %552 = phi i64 [ %500, %497 ], [ %543, %536 ], [ %513, %521 ], [ %543, %556 ]
  %553 = phi ptr [ @BIT_reloadDStream.zeroFilled, %497 ], [ %542, %536 ], [ %499, %521 ], [ @BIT_reloadDStream.zeroFilled, %556 ]
  store i64 %552, ptr %11, align 8, !tbaa !40
  store i64 %549, ptr %12, align 8, !tbaa !43
  store i64 %548, ptr %13, align 8, !tbaa !43
  %554 = getelementptr inbounds i8, ptr %63, i64 -2
  %555 = icmp ugt ptr %550, %554
  br i1 %555, label %757, label %634

556:                                              ; preds = %536
  %557 = getelementptr inbounds %struct.FSE_decode_t, ptr %506, i64 %514
  %558 = load i16, ptr %557, align 2, !tbaa.struct !46
  %559 = getelementptr inbounds i8, ptr %557, i64 2
  %560 = load i8, ptr %559, align 2, !tbaa.struct !47
  %561 = getelementptr inbounds i8, ptr %557, i64 3
  %562 = load i8, ptr %561, align 1, !tbaa.struct !48
  %563 = zext i8 %562 to i32
  %564 = add i32 %538, %563
  %565 = sub i32 0, %564
  %566 = and i32 %565, 63
  %567 = zext nneg i32 %566 to i64
  %568 = lshr i64 %543, %567
  %569 = zext nneg i8 %562 to i64
  %570 = shl nsw i64 -1, %569
  %571 = xor i64 %570, -1
  %572 = and i64 %568, %571
  %573 = zext i16 %558 to i64
  store i8 %560, ptr %511, align 1, !tbaa !21
  %574 = getelementptr inbounds %struct.FSE_decode_t, ptr %508, i64 %515
  %575 = load i16, ptr %574, align 2, !tbaa.struct !46
  %576 = getelementptr inbounds i8, ptr %574, i64 2
  %577 = load i8, ptr %576, align 2, !tbaa.struct !47
  %578 = getelementptr inbounds i8, ptr %574, i64 3
  %579 = load i8, ptr %578, align 1, !tbaa.struct !48
  %580 = zext i8 %579 to i32
  %581 = add i32 %564, %580
  %582 = sub i32 0, %581
  %583 = and i32 %582, 63
  %584 = zext nneg i32 %583 to i64
  %585 = lshr i64 %543, %584
  %586 = zext nneg i8 %579 to i64
  %587 = shl nsw i64 -1, %586
  %588 = xor i64 %587, -1
  %589 = and i64 %585, %588
  %590 = zext i16 %575 to i64
  %591 = getelementptr inbounds i8, ptr %511, i64 1
  store i8 %577, ptr %591, align 1, !tbaa !21
  %592 = getelementptr %struct.FSE_decode_t, ptr %506, i64 %572
  %593 = getelementptr %struct.FSE_decode_t, ptr %592, i64 %573
  %594 = load i16, ptr %593, align 2, !tbaa.struct !46
  %595 = getelementptr inbounds i8, ptr %593, i64 2
  %596 = load i8, ptr %595, align 2, !tbaa.struct !47
  %597 = getelementptr inbounds i8, ptr %593, i64 3
  %598 = load i8, ptr %597, align 1, !tbaa.struct !48
  %599 = zext i8 %598 to i32
  %600 = add i32 %581, %599
  %601 = sub i32 0, %600
  %602 = and i32 %601, 63
  %603 = zext nneg i32 %602 to i64
  %604 = lshr i64 %543, %603
  %605 = zext nneg i8 %598 to i64
  %606 = shl nsw i64 -1, %605
  %607 = xor i64 %606, -1
  %608 = and i64 %604, %607
  %609 = zext i16 %594 to i64
  %610 = add nuw i64 %608, %609
  %611 = getelementptr inbounds i8, ptr %511, i64 2
  store i8 %596, ptr %611, align 1, !tbaa !21
  %612 = getelementptr %struct.FSE_decode_t, ptr %508, i64 %589
  %613 = getelementptr %struct.FSE_decode_t, ptr %612, i64 %590
  %614 = load i16, ptr %613, align 2, !tbaa.struct !46
  %615 = getelementptr inbounds i8, ptr %613, i64 2
  %616 = load i8, ptr %615, align 2, !tbaa.struct !47
  %617 = getelementptr inbounds i8, ptr %613, i64 3
  %618 = load i8, ptr %617, align 1, !tbaa.struct !48
  %619 = zext i8 %618 to i32
  %620 = add i32 %600, %619
  %621 = sub i32 0, %620
  %622 = and i32 %621, 63
  %623 = zext nneg i32 %622 to i64
  %624 = lshr i64 %543, %623
  %625 = zext nneg i8 %618 to i64
  %626 = shl nsw i64 -1, %625
  %627 = xor i64 %626, -1
  %628 = and i64 %624, %627
  %629 = zext i16 %614 to i64
  %630 = add nuw i64 %628, %629
  %631 = getelementptr inbounds i8, ptr %511, i64 3
  store i8 %616, ptr %631, align 1, !tbaa !21
  %632 = getelementptr inbounds i8, ptr %511, i64 4
  %633 = icmp ugt i32 %620, 64
  br i1 %633, label %547, label %510, !prof !49, !llvm.loop !50

634:                                              ; preds = %547, %741
  %635 = phi ptr [ %742, %741 ], [ %553, %547 ]
  %636 = phi ptr [ %713, %741 ], [ %550, %547 ]
  %637 = phi i64 [ %658, %741 ], [ %549, %547 ]
  %638 = phi i64 [ %744, %741 ], [ %552, %547 ]
  %639 = phi i32 [ %743, %741 ], [ %551, %547 ]
  %640 = phi i64 [ %712, %741 ], [ %548, %547 ]
  %641 = getelementptr inbounds %struct.FSE_decode_t, ptr %506, i64 %637
  %642 = load i16, ptr %641, align 2, !tbaa.struct !46
  %643 = getelementptr inbounds i8, ptr %641, i64 2
  %644 = load i8, ptr %643, align 2, !tbaa.struct !47
  %645 = getelementptr inbounds i8, ptr %641, i64 3
  %646 = load i8, ptr %645, align 1, !tbaa.struct !48
  %647 = zext i8 %646 to i32
  %648 = add i32 %639, %647
  %649 = sub i32 0, %648
  %650 = and i32 %649, 63
  %651 = zext nneg i32 %650 to i64
  %652 = lshr i64 %638, %651
  %653 = zext nneg i8 %646 to i64
  %654 = shl nsw i64 -1, %653
  %655 = xor i64 %654, -1
  %656 = and i64 %652, %655
  %657 = zext i16 %642 to i64
  %658 = add nuw i64 %656, %657
  %659 = getelementptr inbounds i8, ptr %636, i64 1
  store i8 %644, ptr %636, align 1, !tbaa !21
  %660 = icmp ugt i32 %648, 64
  br i1 %660, label %680, label %661, !prof !42

661:                                              ; preds = %634
  %662 = icmp ult ptr %635, %463
  br i1 %662, label %666, label %663

663:                                              ; preds = %661
  %664 = lshr i32 %648, 3
  %665 = and i32 %648, 7
  br label %682

666:                                              ; preds = %661
  %667 = icmp eq ptr %635, %499
  br i1 %667, label %689, label %668

668:                                              ; preds = %666
  %669 = lshr i32 %648, 3
  %670 = zext nneg i32 %669 to i64
  %671 = sub nsw i64 0, %670
  %672 = getelementptr inbounds i8, ptr %635, i64 %671
  %673 = icmp ult ptr %672, %499
  %674 = ptrtoint ptr %635 to i64
  %675 = sub i64 %674, %504
  %676 = trunc i64 %675 to i32
  %677 = select i1 %673, i32 %676, i32 %669
  %678 = shl i32 %677, 3
  %679 = sub i32 %648, %678
  br label %682

680:                                              ; preds = %634
  %681 = getelementptr inbounds %struct.FSE_decode_t, ptr %508, i64 %640, i32 1
  br label %748

682:                                              ; preds = %668, %663
  %683 = phi i32 [ %664, %663 ], [ %677, %668 ]
  %684 = phi i32 [ %665, %663 ], [ %679, %668 ]
  %685 = zext i32 %683 to i64
  %686 = sub nsw i64 0, %685
  %687 = getelementptr inbounds i8, ptr %635, i64 %686
  %688 = load i64, ptr %687, align 1, !tbaa !14
  br label %689

689:                                              ; preds = %682, %666
  %690 = phi ptr [ %499, %666 ], [ %687, %682 ]
  %691 = phi i32 [ %648, %666 ], [ %684, %682 ]
  %692 = phi i64 [ %638, %666 ], [ %688, %682 ]
  %693 = icmp ugt ptr %659, %554
  br i1 %693, label %757, label %694

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.FSE_decode_t, ptr %508, i64 %640
  %696 = load i16, ptr %695, align 2, !tbaa.struct !46
  %697 = getelementptr inbounds i8, ptr %695, i64 2
  %698 = load i8, ptr %697, align 2, !tbaa.struct !47
  %699 = getelementptr inbounds i8, ptr %695, i64 3
  %700 = load i8, ptr %699, align 1, !tbaa.struct !48
  %701 = zext i8 %700 to i32
  %702 = add i32 %691, %701
  %703 = sub i32 0, %702
  %704 = and i32 %703, 63
  %705 = zext nneg i32 %704 to i64
  %706 = lshr i64 %692, %705
  %707 = zext nneg i8 %700 to i64
  %708 = shl nsw i64 -1, %707
  %709 = xor i64 %708, -1
  %710 = and i64 %706, %709
  %711 = zext i16 %696 to i64
  %712 = add nuw i64 %710, %711
  %713 = getelementptr inbounds i8, ptr %636, i64 2
  store i8 %698, ptr %659, align 1, !tbaa !21
  %714 = icmp ugt i32 %702, 64
  br i1 %714, label %746, label %715, !prof !42

715:                                              ; preds = %694
  %716 = icmp ult ptr %690, %463
  br i1 %716, label %720, label %717

717:                                              ; preds = %715
  %718 = lshr i32 %702, 3
  %719 = and i32 %702, 7
  br label %734

720:                                              ; preds = %715
  %721 = icmp eq ptr %690, %499
  br i1 %721, label %741, label %722

722:                                              ; preds = %720
  %723 = lshr i32 %702, 3
  %724 = zext nneg i32 %723 to i64
  %725 = sub nsw i64 0, %724
  %726 = getelementptr inbounds i8, ptr %690, i64 %725
  %727 = icmp ult ptr %726, %499
  %728 = ptrtoint ptr %690 to i64
  %729 = sub i64 %728, %504
  %730 = trunc i64 %729 to i32
  %731 = select i1 %727, i32 %730, i32 %723
  %732 = shl i32 %731, 3
  %733 = sub i32 %702, %732
  br label %734

734:                                              ; preds = %722, %717
  %735 = phi i32 [ %718, %717 ], [ %731, %722 ]
  %736 = phi i32 [ %719, %717 ], [ %733, %722 ]
  %737 = zext i32 %735 to i64
  %738 = sub nsw i64 0, %737
  %739 = getelementptr inbounds i8, ptr %690, i64 %738
  %740 = load i64, ptr %739, align 1, !tbaa !14
  br label %741

741:                                              ; preds = %734, %720
  %742 = phi ptr [ %499, %720 ], [ %739, %734 ]
  %743 = phi i32 [ %702, %720 ], [ %736, %734 ]
  %744 = phi i64 [ %692, %720 ], [ %740, %734 ]
  %745 = icmp ugt ptr %713, %554
  br i1 %745, label %757, label %634

746:                                              ; preds = %694
  %747 = getelementptr inbounds %struct.FSE_decode_t, ptr %506, i64 %658, i32 1
  br label %748

748:                                              ; preds = %746, %680
  %749 = phi ptr [ %747, %746 ], [ %681, %680 ]
  %750 = phi i64 [ 3, %746 ], [ 2, %680 ]
  %751 = phi ptr [ %713, %746 ], [ %659, %680 ]
  %752 = load i8, ptr %749, align 2
  %753 = getelementptr inbounds i8, ptr %636, i64 %750
  store i8 %752, ptr %751, align 1, !tbaa !21
  %754 = ptrtoint ptr %753 to i64
  %755 = ptrtoint ptr %0 to i64
  %756 = sub i64 %754, %755
  br label %757

757:                                              ; preds = %689, %741, %547, %455, %452, %748
  %758 = phi i64 [ %756, %748 ], [ %453, %452 ], [ -20, %455 ], [ -70, %547 ], [ -70, %741 ], [ -70, %689 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11
  br label %759

759:                                              ; preds = %21, %18, %7, %35, %51, %450, %757
  %760 = phi i64 [ %57, %51 ], [ -1, %7 ], [ -44, %35 ], [ %451, %450 ], [ %758, %757 ], [ -44, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  ret i64 %760
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @BIT_initDStream(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %87

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !39
  %15 = load i64, ptr %13, align 1, !tbaa !14
  store i64 %15, ptr %0, align 8, !tbaa !40
  %16 = getelementptr i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  %21 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true), !range !26
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 8, %22
  %24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !41
  br label %87

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %26, align 8, !tbaa !41
  br label %87

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !39
  %29 = load i8, ptr %1, align 1, !tbaa !21
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !40
  switch i64 %2, label %72 [
    i64 7, label %31
    i64 6, label %37
    i64 5, label %44
    i64 4, label %51
    i64 3, label %58
    i64 2, label %65
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !21
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %30
  store i64 %36, ptr %0, align 8, !tbaa !40
  br label %37

37:                                               ; preds = %27, %31
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !21
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !40
  br label %44

44:                                               ; preds = %27, %37
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !21
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %27, %44
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !21
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %27, %51
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !21
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !40
  br label %65

65:                                               ; preds = %27, %58
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !21
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !40
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !21
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %78, align 8, !tbaa !41
  br label %87

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true), !range !26
  %82 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  %83 = trunc i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = sub nsw i32 %81, %84
  %86 = add nsw i32 %85, 41
  store i32 %86, ptr %82, align 8, !tbaa !41
  br label %87

87:                                               ; preds = %79, %19, %77, %25, %5
  %88 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %88
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FSE_initDState(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = load i16, ptr %2, align 2, !tbaa !53
  %5 = zext i16 %4 to i32
  %6 = load i64, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = add i32 %8, %5
  %10 = sub i32 0, %9
  %11 = and i32 %10, 63
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %6, %12
  %14 = zext nneg i16 %4 to i64
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %13, %16
  store i32 %9, ptr %7, align 8, !tbaa !41
  store i64 %17, ptr %0, align 8, !tbaa !43
  %18 = icmp ugt i32 %9, 64
  %19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i64 0, i32 2
  br i1 %18, label %20, label %21, !prof !42

20:                                               ; preds = %3
  store ptr @BIT_reloadDStream.zeroFilled, ptr %19, align 8, !tbaa !39
  br label %54

21:                                               ; preds = %3
  %22 = load ptr, ptr %19, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp ult ptr %22, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %9, 3
  %28 = zext nneg i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  store ptr %30, ptr %19, align 8, !tbaa !39
  %31 = and i32 %9, 7
  store i32 %31, ptr %7, align 8, !tbaa !41
  %32 = load i64, ptr %30, align 1, !tbaa !14
  store i64 %32, ptr %1, align 8, !tbaa !40
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = icmp eq ptr %22, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %9, 3
  %39 = zext nneg i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = icmp ult ptr %41, %35
  %43 = ptrtoint ptr %22 to i64
  %44 = ptrtoint ptr %35 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = select i1 %42, i32 %46, i32 %38
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %22, i64 %49
  store ptr %50, ptr %19, align 8, !tbaa !39
  %51 = shl i32 %47, 3
  %52 = sub i32 %9, %51
  store i32 %52, ptr %7, align 8, !tbaa !41
  %53 = load i64, ptr %50, align 1, !tbaa !14
  store i64 %53, ptr %1, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %33, %20, %26, %37
  %55 = getelementptr inbounds i32, ptr %2, i64 1
  %56 = getelementptr inbounds %struct.FSE_DState_t, ptr %0, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{i64 -46, i64 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !8, i64 2}
!11 = !{!"", !7, i64 0, !8, i64 2, !8, i64 3}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = distinct !{!16, !13, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !13, !18, !17}
!20 = distinct !{!20, !13}
!21 = !{!8, !8, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{i32 0, i32 33}
!27 = !{!11, !8, i64 3}
!28 = !{!11, !7, i64 0}
!29 = distinct !{!29, !13}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !8, i64 0}
!32 = !{}
!33 = !{!34, !7, i64 2}
!34 = !{!"", !7, i64 0, !7, i64 2}
!35 = !{!36, !37, i64 24}
!36 = !{!"", !15, i64 0, !31, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!37 = !{!"any pointer", !8, i64 0}
!38 = !{!36, !37, i64 32}
!39 = !{!36, !37, i64 16}
!40 = !{!36, !15, i64 0}
!41 = !{!36, !31, i64 8}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!44, !15, i64 0}
!44 = !{!"", !15, i64 0, !37, i64 8}
!45 = !{!"branch_weights", i32 53687091, i32 2093796557}
!46 = !{i64 0, i64 2, !6, i64 2, i64 1, !21, i64 3, i64 1, !21}
!47 = !{i64 0, i64 1, !21, i64 1, i64 1, !21}
!48 = !{i64 0, i64 1, !21}
!49 = !{!"branch_weights", i32 127, i32 255873}
!50 = distinct !{!50, !13}
!51 = !{i64 1, i64 0}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = !{!34, !7, i64 0}
!54 = !{!44, !37, i64 8}
