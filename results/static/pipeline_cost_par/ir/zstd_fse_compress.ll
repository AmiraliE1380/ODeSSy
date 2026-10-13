; ModuleID = '/mydata/zstd/lib/compress/fse_compress.c'
source_filename = "/mydata/zstd/lib/compress/fse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i64 -44, 1) i64 @FSE_buildCTable_wksp(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = shl nuw i32 1, %3
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = icmp eq i32 %3, 0
  %11 = lshr i32 %7, 1
  %12 = select i1 %10, i32 1, i32 %11
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw i32, ptr %9, i64 %13
  %15 = lshr i32 %7, 3
  %16 = add nuw nsw i32 %15, 3
  %17 = add nuw nsw i32 %16, %11
  %18 = add i32 %2, 1
  %19 = add i32 %2, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i16, ptr %4, i64 %20
  %22 = zext nneg i32 %3 to i64
  %23 = shl nuw i64 1, %22
  %24 = add nuw i64 %23, %20
  %25 = shl i64 %24, 1
  %26 = and i64 %25, -4
  %27 = add i64 %26, 8
  %28 = icmp ugt i64 %27, %5
  br i1 %28, label %277, label %29

29:                                               ; preds = %6
  %30 = trunc i32 %3 to i16
  store i16 %30, ptr %0, align 2, !tbaa !5
  %31 = trunc i32 %2 to i16
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %31, ptr %32, align 2, !tbaa !5
  store i16 0, ptr %4, align 2, !tbaa !5
  %33 = icmp eq i32 %18, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = trunc i32 %7 to i16
  %36 = add i16 %35, 1
  %37 = zext nneg i32 %18 to i64
  %38 = getelementptr inbounds nuw i16, ptr %4, i64 %37
  store i16 %36, ptr %38, align 2, !tbaa !5
  %39 = zext i32 %7 to i64
  br label %74

40:                                               ; preds = %29
  %41 = tail call i32 @llvm.umax.i32(i32 %19, i32 2)
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %40, %61
  %44 = phi i64 [ 1, %40 ], [ %63, %61 ]
  %45 = phi i32 [ %8, %40 ], [ %62, %61 ]
  %46 = add nsw i64 %44, -1
  %47 = getelementptr inbounds nuw i16, ptr %1, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !5
  %49 = icmp eq i16 %48, -1
  %50 = getelementptr inbounds nuw i16, ptr %4, i64 %46
  %51 = load i16, ptr %50, align 2, !tbaa !5
  %52 = getelementptr inbounds nuw i16, ptr %4, i64 %44
  br i1 %49, label %53, label %59

53:                                               ; preds = %43
  %54 = add i16 %51, 1
  store i16 %54, ptr %52, align 2, !tbaa !5
  %55 = trunc i64 %46 to i8
  %56 = add i32 %45, -1
  %57 = zext i32 %45 to i64
  %58 = getelementptr inbounds nuw i8, ptr %21, i64 %57
  store i8 %55, ptr %58, align 1, !tbaa !9
  br label %61

59:                                               ; preds = %43
  %60 = add i16 %51, %48
  store i16 %60, ptr %52, align 2, !tbaa !5
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi i32 [ %56, %53 ], [ %45, %59 ]
  %63 = add nuw nsw i64 %44, 1
  %64 = icmp eq i64 %63, %42
  br i1 %64, label %65, label %43, !llvm.loop !10

65:                                               ; preds = %61
  %66 = trunc i32 %7 to i16
  %67 = add i16 %66, 1
  %68 = zext i32 %18 to i64
  %69 = getelementptr inbounds nuw i16, ptr %4, i64 %68
  store i16 %67, ptr %69, align 2, !tbaa !5
  %70 = icmp eq i32 %62, %8
  br i1 %70, label %71, label %141

71:                                               ; preds = %65
  %72 = zext i32 %7 to i64
  %73 = getelementptr inbounds nuw i8, ptr %21, i64 %72
  br label %81

74:                                               ; preds = %119, %34
  %75 = phi i64 [ %39, %34 ], [ %72, %119 ]
  %76 = zext nneg i32 %17 to i64
  %77 = zext nneg i32 %8 to i64
  %78 = shl nuw i32 %17, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %21, i64 %75
  br label %125

81:                                               ; preds = %71, %119
  %82 = phi i64 [ %122, %119 ], [ 0, %71 ]
  %83 = phi i64 [ %121, %119 ], [ 0, %71 ]
  %84 = phi i64 [ %123, %119 ], [ 0, %71 ]
  %85 = getelementptr inbounds nuw i16, ptr %1, i64 %82
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = getelementptr inbounds nuw i8, ptr %73, i64 %83
  store i64 %84, ptr %87, align 1, !tbaa !12
  %88 = icmp sgt i16 %86, 8
  br i1 %88, label %89, label %119

89:                                               ; preds = %81
  %90 = zext nneg i16 %86 to i64
  %91 = tail call i64 @llvm.umax.i64(i64 %90, i64 16)
  %92 = add nsw i64 %91, -9
  %93 = lshr i64 %92, 3
  %94 = add nuw nsw i64 %93, 1
  %95 = icmp ult i64 %92, 24
  br i1 %95, label %112, label %96

96:                                               ; preds = %89
  %97 = and i64 %94, 4611686018427387900
  %98 = shl i64 %97, 3
  %99 = or disjoint i64 %98, 8
  %100 = insertelement <2 x i64> poison, i64 %84, i64 0
  %101 = shufflevector <2 x i64> %100, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %102

102:                                              ; preds = %102, %96
  %103 = phi i64 [ 0, %96 ], [ %108, %102 ]
  %104 = shl i64 %103, 3
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 8
  %107 = getelementptr inbounds nuw i8, ptr %105, i64 24
  store <2 x i64> %101, ptr %106, align 1, !tbaa !12
  store <2 x i64> %101, ptr %107, align 1, !tbaa !12
  %108 = add nuw i64 %103, 4
  %109 = icmp eq i64 %108, %97
  br i1 %109, label %110, label %102, !llvm.loop !14

110:                                              ; preds = %102
  %111 = icmp eq i64 %94, %97
  br i1 %111, label %119, label %112

112:                                              ; preds = %89, %110
  %113 = phi i64 [ 8, %89 ], [ %99, %110 ]
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ %117, %114 ], [ %113, %112 ]
  %116 = getelementptr inbounds nuw i8, ptr %87, i64 %115
  store i64 %84, ptr %116, align 1, !tbaa !12
  %117 = add nuw nsw i64 %115, 8
  %118 = icmp samesign ult i64 %117, %90
  br i1 %118, label %114, label %119, !llvm.loop !17

119:                                              ; preds = %114, %110, %81
  %120 = sext i16 %86 to i64
  %121 = add i64 %83, %120
  %122 = add nuw nsw i64 %82, 1
  %123 = add i64 %84, 72340172838076673
  %124 = icmp eq i64 %122, %68
  br i1 %124, label %74, label %81, !llvm.loop !18

125:                                              ; preds = %74, %125
  %126 = phi i64 [ 0, %74 ], [ %139, %125 ]
  %127 = phi i64 [ 0, %74 ], [ %138, %125 ]
  %128 = getelementptr inbounds nuw i8, ptr %80, i64 %126
  %129 = and i64 %127, %77
  %130 = load i8, ptr %128, align 1, !tbaa !9
  %131 = getelementptr inbounds nuw i8, ptr %21, i64 %129
  store i8 %130, ptr %131, align 1, !tbaa !9
  %132 = add nuw nsw i64 %127, %76
  %133 = and i64 %132, %77
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !9
  %136 = getelementptr inbounds nuw i8, ptr %21, i64 %133
  store i8 %135, ptr %136, align 1, !tbaa !9
  %137 = add nuw nsw i64 %127, %79
  %138 = and i64 %137, %77
  %139 = add nuw nsw i64 %126, 2
  %140 = icmp samesign ult i64 %139, %75
  br i1 %140, label %125, label %191, !llvm.loop !19

141:                                              ; preds = %65, %187
  %142 = phi i64 [ %189, %187 ], [ 0, %65 ]
  %143 = phi i32 [ %188, %187 ], [ 0, %65 ]
  %144 = getelementptr inbounds nuw i16, ptr %1, i64 %142
  %145 = load i16, ptr %144, align 2, !tbaa !5
  %146 = icmp sgt i16 %145, 0
  br i1 %146, label %147, label %187

147:                                              ; preds = %141
  %148 = trunc i64 %142 to i8
  %149 = icmp eq i16 %145, 1
  br i1 %149, label %174, label %150

150:                                              ; preds = %147
  %151 = and i16 %145, 32766
  %152 = zext nneg i16 %151 to i32
  br label %153

153:                                              ; preds = %171, %150
  %154 = phi i32 [ %143, %150 ], [ %169, %171 ]
  %155 = phi i32 [ 0, %150 ], [ %172, %171 ]
  %156 = zext nneg i32 %154 to i64
  %157 = getelementptr inbounds nuw i8, ptr %21, i64 %156
  store i8 %148, ptr %157, align 1, !tbaa !9
  br label %158

158:                                              ; preds = %158, %153
  %159 = phi i32 [ %154, %153 ], [ %161, %158 ]
  %160 = add nuw i32 %159, %17
  %161 = and i32 %160, %8
  %162 = icmp ugt i32 %161, %62
  br i1 %162, label %158, label %163, !llvm.loop !20

163:                                              ; preds = %158
  %164 = zext nneg i32 %161 to i64
  %165 = getelementptr inbounds nuw i8, ptr %21, i64 %164
  store i8 %148, ptr %165, align 1, !tbaa !9
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i32 [ %161, %163 ], [ %169, %166 ]
  %168 = add nuw i32 %167, %17
  %169 = and i32 %168, %8
  %170 = icmp ugt i32 %169, %62
  br i1 %170, label %166, label %171, !llvm.loop !20

171:                                              ; preds = %166
  %172 = add i32 %155, 2
  %173 = icmp eq i32 %172, %152
  br i1 %173, label %174, label %153, !llvm.loop !21

174:                                              ; preds = %171, %147
  %175 = phi i32 [ poison, %147 ], [ %169, %171 ]
  %176 = phi i32 [ %143, %147 ], [ %169, %171 ]
  %177 = and i16 %145, 1
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = zext nneg i32 %176 to i64
  %181 = getelementptr inbounds nuw i8, ptr %21, i64 %180
  store i8 %148, ptr %181, align 1, !tbaa !9
  br label %182

182:                                              ; preds = %182, %179
  %183 = phi i32 [ %176, %179 ], [ %185, %182 ]
  %184 = add nuw i32 %183, %17
  %185 = and i32 %184, %8
  %186 = icmp ugt i32 %185, %62
  br i1 %186, label %182, label %187, !llvm.loop !20

187:                                              ; preds = %174, %182, %141
  %188 = phi i32 [ %143, %141 ], [ %175, %174 ], [ %185, %182 ]
  %189 = add nuw nsw i64 %142, 1
  %190 = icmp eq i64 %189, %68
  br i1 %190, label %191, label %141, !llvm.loop !22

191:                                              ; preds = %187, %125
  %192 = zext i32 %7 to i64
  %193 = and i64 %192, 1
  %194 = icmp eq i32 %3, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = and i64 %192, 4294967294
  br label %219

197:                                              ; preds = %219, %191
  %198 = phi i64 [ 0, %191 ], [ %245, %219 ]
  %199 = icmp eq i64 %193, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds nuw i8, ptr %21, i64 %198
  %202 = load i8, ptr %201, align 1, !tbaa !9
  %203 = trunc nuw i64 %198 to i32
  %204 = add i32 %7, %203
  %205 = trunc i32 %204 to i16
  %206 = zext i8 %202 to i64
  %207 = getelementptr inbounds nuw i16, ptr %4, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !5
  %209 = add i16 %208, 1
  store i16 %209, ptr %207, align 2, !tbaa !5
  %210 = zext i16 %208 to i64
  %211 = getelementptr inbounds nuw i16, ptr %9, i64 %210
  store i16 %205, ptr %211, align 2, !tbaa !5
  br label %212

212:                                              ; preds = %197, %200
  %213 = shl i32 %3, 16
  %214 = sub i32 %213, %7
  %215 = add i32 %213, 65536
  %216 = sub i32 %215, %7
  %217 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  %218 = zext i32 %217 to i64
  br label %248

219:                                              ; preds = %219, %195
  %220 = phi i64 [ 0, %195 ], [ %245, %219 ]
  %221 = phi i64 [ 0, %195 ], [ %246, %219 ]
  %222 = getelementptr inbounds nuw i8, ptr %21, i64 %220
  %223 = load i8, ptr %222, align 1, !tbaa !9
  %224 = trunc nuw i64 %220 to i32
  %225 = add i32 %7, %224
  %226 = trunc i32 %225 to i16
  %227 = zext i8 %223 to i64
  %228 = getelementptr inbounds nuw i16, ptr %4, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !5
  %230 = add i16 %229, 1
  store i16 %230, ptr %228, align 2, !tbaa !5
  %231 = zext i16 %229 to i64
  %232 = getelementptr inbounds nuw i16, ptr %9, i64 %231
  store i16 %226, ptr %232, align 2, !tbaa !5
  %233 = or disjoint i64 %220, 1
  %234 = getelementptr inbounds nuw i8, ptr %21, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !9
  %236 = trunc nuw i64 %233 to i32
  %237 = add i32 %7, %236
  %238 = trunc i32 %237 to i16
  %239 = zext i8 %235 to i64
  %240 = getelementptr inbounds nuw i16, ptr %4, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !5
  %242 = add i16 %241, 1
  store i16 %242, ptr %240, align 2, !tbaa !5
  %243 = zext i16 %241 to i64
  %244 = getelementptr inbounds nuw i16, ptr %9, i64 %243
  store i16 %238, ptr %244, align 2, !tbaa !5
  %245 = add nuw nsw i64 %220, 2
  %246 = add i64 %221, 2
  %247 = icmp eq i64 %246, %196
  br i1 %247, label %197, label %219, !llvm.loop !23

248:                                              ; preds = %212, %273
  %249 = phi i64 [ 0, %212 ], [ %275, %273 ]
  %250 = phi i32 [ 0, %212 ], [ %274, %273 ]
  %251 = getelementptr inbounds nuw i16, ptr %1, i64 %249
  %252 = load i16, ptr %251, align 2, !tbaa !5
  switch i16 %252, label %260 [
    i16 0, label %253
    i16 -1, label %255
    i16 1, label %255
  ]

253:                                              ; preds = %248
  %254 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %14, i64 %249, i32 1
  store i32 %216, ptr %254, align 4, !tbaa !24
  br label %273

255:                                              ; preds = %248, %248
  %256 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %14, i64 %249
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 4
  store i32 %214, ptr %257, align 4, !tbaa !24
  %258 = add i32 %250, -1
  store i32 %258, ptr %256, align 4, !tbaa !27
  %259 = add i32 %250, 1
  br label %273

260:                                              ; preds = %248
  %261 = sext i16 %252 to i32
  %262 = add nsw i32 %261, -1
  %263 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %262, i1 true)
  %264 = xor i32 %263, 31
  %265 = sub i32 %3, %264
  %266 = shl i32 %261, %265
  %267 = shl i32 %265, 16
  %268 = sub i32 %267, %266
  %269 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %14, i64 %249
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 4
  store i32 %268, ptr %270, align 4, !tbaa !24
  %271 = sub i32 %250, %261
  store i32 %271, ptr %269, align 4, !tbaa !27
  %272 = add i32 %250, %261
  br label %273

273:                                              ; preds = %253, %255, %260
  %274 = phi i32 [ %272, %260 ], [ %250, %253 ], [ %259, %255 ]
  %275 = add nuw nsw i64 %249, 1
  %276 = icmp eq i64 %275, %218
  br i1 %276, label %277, label %248, !llvm.loop !28

277:                                              ; preds = %273, %6
  %278 = phi i64 [ -44, %6 ], [ 0, %273 ]
  ret i64 %278
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 3, 536870915) i64 @FSE_NCountWriteBound(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %0, 1
  %4 = mul i32 %3, %1
  %5 = add i32 %4, 6
  %6 = lshr i32 %5, 3
  %7 = add nuw nsw i32 %6, 3
  %8 = icmp eq i32 %0, 0
  %9 = select i1 %8, i32 512, i32 %7
  %10 = zext nneg i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp ugt i32 %4, 12
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = icmp samesign ult i32 %4, 5
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = add i32 %3, 1
  %11 = mul i32 %10, %4
  %12 = add i32 %11, 6
  %13 = lshr i32 %12, 3
  %14 = add nuw nsw i32 %13, 3
  %15 = icmp eq i32 %3, 0
  %16 = select i1 %15, i32 512, i32 %14
  %17 = zext nneg i32 %16 to i64
  %18 = icmp uge i64 %1, %17
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %19)
  br label %21

21:                                               ; preds = %9, %7, %5
  %22 = phi i64 [ -44, %5 ], [ -1, %7 ], [ %20, %9 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 5, 13) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = add i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %223, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %4, -5
  %12 = shl nuw nsw i32 1, %4
  %13 = or disjoint i32 %12, 1
  %14 = add nuw nsw i32 %4, 1
  %15 = icmp eq i32 %5, 0
  %16 = getelementptr inbounds i8, ptr %7, i64 -2
  %17 = zext i32 %8 to i64
  br label %19

18:                                               ; preds = %148, %143, %96, %84, %208
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !29
  unreachable, !nosanitize !29

19:                                               ; preds = %10, %190
  %20 = phi i1 [ true, %10 ], [ %162, %190 ]
  %21 = phi ptr [ %0, %10 ], [ %193, %190 ]
  %22 = phi i32 [ 0, %10 ], [ %125, %190 ]
  %23 = phi i32 [ 4, %10 ], [ %192, %190 ]
  %24 = phi i32 [ %11, %10 ], [ %191, %190 ]
  %25 = phi i32 [ %12, %10 ], [ %177, %190 ]
  %26 = phi i32 [ %13, %10 ], [ %140, %190 ]
  %27 = phi i32 [ %14, %10 ], [ %176, %190 ]
  br i1 %20, label %120, label %28

28:                                               ; preds = %19
  %29 = icmp ult i32 %22, %8
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = zext i32 %22 to i64
  br label %32

32:                                               ; preds = %30, %37
  %33 = phi i64 [ %31, %30 ], [ %38, %37 ]
  %34 = getelementptr inbounds nuw i16, ptr %2, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %17
  br i1 %39, label %197, label %32, !llvm.loop !30

40:                                               ; preds = %32
  %41 = trunc nuw i64 %33 to i32
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi i32 [ %22, %28 ], [ %41, %40 ]
  %44 = icmp eq i32 %43, %8
  br i1 %44, label %197, label %45

45:                                               ; preds = %42
  %46 = add i32 %22, 24
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = shl i32 65535, %23
  br i1 %15, label %69, label %50

50:                                               ; preds = %48, %50
  %51 = phi i32 [ %61, %50 ], [ %46, %48 ]
  %52 = phi ptr [ %59, %50 ], [ %21, %48 ]
  %53 = phi i32 [ %60, %50 ], [ %24, %48 ]
  %54 = add i32 %53, %49
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %52, align 1, !tbaa !9
  %56 = lshr i32 %54, 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !9
  %59 = getelementptr inbounds nuw i8, ptr %52, i64 2
  %60 = lshr i32 %54, 16
  %61 = add i32 %51, 24
  %62 = icmp ult i32 %43, %61
  br i1 %62, label %63, label %50, !llvm.loop !31

63:                                               ; preds = %50, %74, %45
  %64 = phi i32 [ %24, %45 ], [ %81, %74 ], [ %60, %50 ]
  %65 = phi ptr [ %21, %45 ], [ %80, %74 ], [ %59, %50 ]
  %66 = phi i32 [ %22, %45 ], [ %70, %74 ], [ %51, %50 ]
  %67 = add i32 %66, 3
  %68 = icmp ult i32 %43, %67
  br i1 %68, label %96, label %84

69:                                               ; preds = %48, %74
  %70 = phi i32 [ %82, %74 ], [ %46, %48 ]
  %71 = phi ptr [ %80, %74 ], [ %21, %48 ]
  %72 = phi i32 [ %81, %74 ], [ %24, %48 ]
  %73 = icmp ugt ptr %71, %16
  br i1 %73, label %223, label %74

74:                                               ; preds = %69
  %75 = add i32 %72, %49
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %71, align 1, !tbaa !9
  %77 = lshr i32 %75, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds nuw i8, ptr %71, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !9
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 2
  %81 = lshr i32 %75, 16
  %82 = add i32 %70, 24
  %83 = icmp ult i32 %43, %82
  br i1 %83, label %63, label %69, !llvm.loop !31

84:                                               ; preds = %63, %90
  %85 = phi i32 [ %94, %90 ], [ %67, %63 ]
  %86 = phi i32 [ %91, %90 ], [ %23, %63 ]
  %87 = phi i32 [ %93, %90 ], [ %64, %63 ]
  %88 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 2), !nosanitize !29
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !29
  br i1 %89, label %18, label %90, !prof !32, !nosanitize !29

90:                                               ; preds = %84
  %91 = extractvalue { i32, i1 } %88, 0, !nosanitize !29
  %92 = shl i32 3, %86
  %93 = add i32 %92, %87
  %94 = add i32 %85, 3
  %95 = icmp ult i32 %43, %94
  br i1 %95, label %96, label %84, !llvm.loop !33

96:                                               ; preds = %90, %63
  %97 = phi i32 [ %64, %63 ], [ %93, %90 ]
  %98 = phi i32 [ %23, %63 ], [ %91, %90 ]
  %99 = phi i32 [ %66, %63 ], [ %85, %90 ]
  %100 = sub i32 %43, %99
  %101 = shl i32 %100, %98
  %102 = add i32 %101, %97
  %103 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %98, i32 2), !nosanitize !29
  %104 = extractvalue { i32, i1 } %103, 0, !nosanitize !29
  %105 = extractvalue { i32, i1 } %103, 1, !nosanitize !29
  br i1 %105, label %18, label %106, !prof !32, !nosanitize !29

106:                                              ; preds = %96
  %107 = icmp sgt i32 %104, 16
  br i1 %107, label %108, label %120

108:                                              ; preds = %106
  %109 = icmp ugt ptr %65, %16
  %110 = select i1 %15, i1 %109, i1 false
  br i1 %110, label %223, label %111

111:                                              ; preds = %108
  %112 = trunc i32 %102 to i8
  store i8 %112, ptr %65, align 1, !tbaa !9
  %113 = lshr i32 %102, 8
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds nuw i8, ptr %65, i64 1
  store i8 %114, ptr %115, align 1, !tbaa !9
  %116 = add nsw i32 %104, -16
  %117 = lshr i32 %102, 16
  %118 = getelementptr inbounds nuw i8, ptr %65, i64 2
  br label %120

119:                                              ; preds = %154, %133, %120, %166
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !29
  unreachable, !nosanitize !29

120:                                              ; preds = %106, %111, %19
  %121 = phi i32 [ %22, %19 ], [ %43, %111 ], [ %43, %106 ]
  %122 = phi ptr [ %21, %19 ], [ %118, %111 ], [ %65, %106 ]
  %123 = phi i32 [ %23, %19 ], [ %116, %111 ], [ %104, %106 ]
  %124 = phi i32 [ %24, %19 ], [ %117, %111 ], [ %102, %106 ]
  %125 = add nuw i32 %121, 1
  %126 = zext i32 %121 to i64
  %127 = getelementptr inbounds nuw i16, ptr %2, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !5
  %129 = sext i16 %128 to i32
  %130 = shl nsw i32 %25, 1
  %131 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %130, i32 -1)
  %132 = extractvalue { i32, i1 } %131, 1, !nosanitize !29
  br i1 %132, label %119, label %133, !prof !32, !nosanitize !29

133:                                              ; preds = %120
  %134 = extractvalue { i32, i1 } %131, 0, !nosanitize !29
  %135 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %134, i32 %26), !nosanitize !29
  %136 = extractvalue { i32, i1 } %135, 0, !nosanitize !29
  %137 = extractvalue { i32, i1 } %135, 1, !nosanitize !29
  br i1 %137, label %119, label %138, !prof !32, !nosanitize !29

138:                                              ; preds = %133
  %139 = tail call i32 @llvm.abs.i32(i32 %129, i1 true)
  %140 = sub i32 %26, %139
  %141 = add nsw i32 %129, 1
  %142 = icmp slt i32 %141, %25
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %141, i32 %136), !nosanitize !29
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !29
  br i1 %145, label %18, label %146, !prof !32, !nosanitize !29

146:                                              ; preds = %143
  %147 = extractvalue { i32, i1 } %144, 0, !nosanitize !29
  br label %148

148:                                              ; preds = %146, %138
  %149 = phi i32 [ %147, %146 ], [ %141, %138 ]
  %150 = shl i32 %149, %123
  %151 = add i32 %150, %124
  %152 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %123, i32 %27), !nosanitize !29
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !29
  br i1 %153, label %18, label %154, !prof !32, !nosanitize !29

154:                                              ; preds = %148
  %155 = extractvalue { i32, i1 } %152, 0, !nosanitize !29
  %156 = icmp slt i32 %149, %136
  %157 = zext i1 %156 to i32
  %158 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %155, i32 %157), !nosanitize !29
  %159 = extractvalue { i32, i1 } %158, 0, !nosanitize !29
  %160 = extractvalue { i32, i1 } %158, 1, !nosanitize !29
  br i1 %160, label %119, label %161, !prof !32, !nosanitize !29

161:                                              ; preds = %154
  %162 = icmp ne i32 %149, 1
  %163 = icmp sgt i32 %140, 0
  br i1 %163, label %164, label %223

164:                                              ; preds = %161
  %165 = icmp slt i32 %140, %25
  br i1 %165, label %166, label %175

166:                                              ; preds = %164, %171
  %167 = phi i32 [ %173, %171 ], [ %25, %164 ]
  %168 = phi i32 [ %172, %171 ], [ %27, %164 ]
  %169 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %168, i32 -1)
  %170 = extractvalue { i32, i1 } %169, 1, !nosanitize !29
  br i1 %170, label %119, label %171, !prof !32, !nosanitize !29

171:                                              ; preds = %166
  %172 = extractvalue { i32, i1 } %169, 0, !nosanitize !29
  %173 = ashr i32 %167, 1
  %174 = icmp slt i32 %140, %173
  br i1 %174, label %166, label %175, !llvm.loop !34

175:                                              ; preds = %171, %164
  %176 = phi i32 [ %27, %164 ], [ %172, %171 ]
  %177 = phi i32 [ %25, %164 ], [ %173, %171 ]
  %178 = icmp sgt i32 %159, 16
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = icmp ugt ptr %122, %16
  %181 = select i1 %15, i1 %180, i1 false
  br i1 %181, label %223, label %182

182:                                              ; preds = %179
  %183 = trunc i32 %151 to i8
  store i8 %183, ptr %122, align 1, !tbaa !9
  %184 = lshr i32 %151, 8
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds nuw i8, ptr %122, i64 1
  store i8 %185, ptr %186, align 1, !tbaa !9
  %187 = add nsw i32 %159, -16
  %188 = lshr i32 %151, 16
  %189 = getelementptr inbounds nuw i8, ptr %122, i64 2
  br label %190

190:                                              ; preds = %182, %175
  %191 = phi i32 [ %188, %182 ], [ %151, %175 ]
  %192 = phi i32 [ %187, %182 ], [ %159, %175 ]
  %193 = phi ptr [ %189, %182 ], [ %122, %175 ]
  %194 = icmp ult i32 %125, %8
  %195 = icmp ne i32 %140, 1
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %19, label %197, !llvm.loop !35

197:                                              ; preds = %190, %42, %37
  %198 = phi i32 [ %26, %37 ], [ %26, %42 ], [ %140, %190 ]
  %199 = phi i32 [ %24, %37 ], [ %24, %42 ], [ %191, %190 ]
  %200 = phi i32 [ %23, %37 ], [ %23, %42 ], [ %192, %190 ]
  %201 = phi ptr [ %21, %37 ], [ %21, %42 ], [ %193, %190 ]
  %202 = icmp eq i32 %198, 1
  br i1 %202, label %203, label %223

203:                                              ; preds = %197
  %204 = icmp eq i32 %5, 0
  %205 = getelementptr inbounds i8, ptr %7, i64 -2
  %206 = icmp ugt ptr %201, %205
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %223, label %208

208:                                              ; preds = %203
  %209 = trunc i32 %199 to i8
  store i8 %209, ptr %201, align 1, !tbaa !9
  %210 = lshr i32 %199, 8
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds nuw i8, ptr %201, i64 1
  store i8 %211, ptr %212, align 1, !tbaa !9
  %213 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %200, i32 7), !nosanitize !29
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !29
  br i1 %214, label %18, label %215, !prof !32, !nosanitize !29

215:                                              ; preds = %208
  %216 = extractvalue { i32, i1 } %213, 0, !nosanitize !29
  %217 = sdiv i32 %216, 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %201, i64 %218
  %220 = ptrtoint ptr %219 to i64
  %221 = ptrtoint ptr %0 to i64
  %222 = sub i64 %220, %221
  br label %223

223:                                              ; preds = %161, %108, %179, %69, %6, %203, %197, %215
  %224 = phi i64 [ %222, %215 ], [ -1, %197 ], [ -70, %203 ], [ -1, %6 ], [ -70, %69 ], [ -1, %161 ], [ -70, %108 ], [ -70, %179 ]
  ret i64 %224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 5, 13) i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = trunc i64 %1 to i32
  %6 = add i32 %5, -1
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = sub i32 %8, %3
  %10 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %11 = sub nuw nsw i32 32, %10
  %12 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %13 = sub nuw nsw i32 33, %12
  %14 = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = icmp eq i32 %0, 0
  %16 = select i1 %15, i32 11, i32 %0
  %17 = tail call i32 @llvm.umin.i32(i32 %9, i32 %16)
  %18 = tail call i32 @llvm.umax.i32(i32 %14, i32 %17)
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 5)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 12)
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 5, 13) i32 @FSE_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, -1
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %7 = sub nsw i32 29, %6
  %8 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %9 = sub nuw nsw i32 32, %8
  %10 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %11 = sub nuw nsw i32 33, %10
  %12 = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %9, i32 %11)
  %13 = icmp eq i32 %0, 0
  %14 = select i1 %13, i32 11, i32 %0
  %15 = tail call i32 @llvm.umin.i32(i32 %7, i32 %14)
  %16 = tail call i32 @llvm.umax.i32(i32 %12, i32 %15)
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 5)
  %18 = tail call range(i32 5, 13) i32 @llvm.umin.i32(i32 %17, i32 12)
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -44, 4294967296) i64 @FSE_normalizeCount(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 11, i32 %1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %346, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 12
  br i1 %11, label %346, label %12

12:                                               ; preds = %10
  %13 = trunc i64 %3 to i32
  %14 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %13, i1 true)
  %15 = sub nuw nsw i32 32, %14
  %16 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %17 = sub nuw nsw i32 33, %16
  %18 = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = icmp samesign ult i32 %8, %18
  br i1 %19, label %346, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %5, 0
  %22 = select i1 %21, i16 1, i16 -1
  %23 = sub nuw nsw i32 62, %8
  %24 = zext nneg i32 %23 to i64
  %25 = and i64 %3, 4294967295
  %26 = udiv i64 4611686018427387904, %25
  %27 = add nsw i64 %24, -20
  %28 = shl nuw nsw i32 1, %8
  %29 = zext nneg i32 %8 to i64
  %30 = lshr i64 %3, %29
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %20, %85
  %33 = phi i32 [ %28, %20 ], [ %88, %85 ]
  %34 = phi i16 [ 0, %20 ], [ %87, %85 ]
  %35 = phi i32 [ 0, %20 ], [ %86, %85 ]
  %36 = phi i32 [ 0, %20 ], [ %89, %85 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw i32, ptr %2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !36
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %3, %40
  br i1 %41, label %346, label %42

42:                                               ; preds = %32
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = getelementptr inbounds nuw i16, ptr %0, i64 %37
  store i16 0, ptr %45, align 2, !tbaa !5
  br label %85

46:                                               ; preds = %42
  %47 = icmp ugt i32 %39, %31
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds nuw i16, ptr %0, i64 %37
  store i16 %22, ptr %49, align 2, !tbaa !5
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !29
  br i1 %51, label %52, label %53, !prof !32, !nosanitize !29

52:                                               ; preds = %74, %48
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !29
  unreachable, !nosanitize !29

53:                                               ; preds = %48
  %54 = extractvalue { i32, i1 } %50, 0, !nosanitize !29
  br label %85

55:                                               ; preds = %46
  %56 = mul i64 %26, %40
  %57 = lshr i64 %56, %24
  %58 = trunc nuw nsw i64 %57 to i16
  %59 = trunc nuw i64 %57 to i32
  %60 = and i32 %59, 65528
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = and i64 %57, 65535
  %64 = shl i64 %63, %24
  %65 = sub i64 %56, %64
  %66 = getelementptr inbounds nuw [8 x i32], ptr @FSE_normalizeCount.rtbTable, i64 0, i64 %63
  %67 = load i32, ptr %66, align 4, !tbaa !36
  %68 = zext i32 %67 to i64
  %69 = shl i64 %68, %27
  %70 = icmp ugt i64 %65, %69
  %71 = zext i1 %70 to i32
  %72 = add nuw nsw i32 %71, %59
  %73 = trunc i32 %72 to i16
  br label %74

74:                                               ; preds = %62, %55
  %75 = phi i16 [ %73, %62 ], [ %58, %55 ]
  %76 = zext nneg i16 %75 to i32
  %77 = getelementptr inbounds nuw i16, ptr %0, i64 %37
  store i16 %75, ptr %77, align 2, !tbaa !5
  %78 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %33, i32 %76), !nosanitize !29
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !29
  br i1 %79, label %52, label %80, !prof !32, !nosanitize !29

80:                                               ; preds = %74
  %81 = icmp ugt i16 %75, %34
  %82 = tail call i16 @llvm.umax.i16(i16 %75, i16 %34)
  %83 = select i1 %81, i32 %36, i32 %35
  %84 = extractvalue { i32, i1 } %78, 0, !nosanitize !29
  br label %85

85:                                               ; preds = %53, %80, %44
  %86 = phi i32 [ %35, %44 ], [ %35, %53 ], [ %83, %80 ]
  %87 = phi i16 [ %34, %44 ], [ %34, %53 ], [ %82, %80 ]
  %88 = phi i32 [ %33, %44 ], [ %54, %53 ], [ %84, %80 ]
  %89 = add i32 %36, 1
  %90 = icmp ugt i32 %89, %4
  br i1 %90, label %91, label %32, !llvm.loop !37

91:                                               ; preds = %85
  %92 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %88), !nosanitize !29
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !29
  br i1 %93, label %94, label %95, !prof !32, !nosanitize !29

94:                                               ; preds = %91
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !29
  unreachable, !nosanitize !29

95:                                               ; preds = %91
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !29
  %97 = zext i32 %86 to i64
  %98 = getelementptr inbounds nuw i16, ptr %0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !5
  %100 = ashr i16 %99, 1
  %101 = sext i16 %100 to i32
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %343, label %103

103:                                              ; preds = %95
  %104 = mul i64 %3, 3
  %105 = add nuw nsw i32 %8, 1
  %106 = zext nneg i32 %105 to i64
  %107 = lshr i64 %104, %106
  %108 = trunc i64 %107 to i32
  %109 = add nuw i32 %4, 1
  %110 = zext i32 %109 to i64
  br label %111

111:                                              ; preds = %135, %103
  %112 = phi i64 [ 0, %103 ], [ %138, %135 ]
  %113 = phi i64 [ %3, %103 ], [ %137, %135 ]
  %114 = phi i32 [ 0, %103 ], [ %136, %135 ]
  %115 = getelementptr inbounds nuw i32, ptr %2, i64 %112
  %116 = load i32, ptr %115, align 4, !tbaa !36
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = getelementptr inbounds nuw i16, ptr %0, i64 %112
  store i16 0, ptr %119, align 2, !tbaa !5
  br label %135

120:                                              ; preds = %111
  %121 = icmp ugt i32 %116, %31
  br i1 %121, label %127, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i16, ptr %0, i64 %112
  store i16 %22, ptr %123, align 2, !tbaa !5
  %124 = add i32 %114, 1
  %125 = zext i32 %116 to i64
  %126 = sub i64 %113, %125
  br label %135

127:                                              ; preds = %120
  %128 = icmp ugt i32 %116, %108
  %129 = getelementptr inbounds nuw i16, ptr %0, i64 %112
  br i1 %128, label %134, label %130

130:                                              ; preds = %127
  store i16 1, ptr %129, align 2, !tbaa !5
  %131 = add i32 %114, 1
  %132 = zext i32 %116 to i64
  %133 = sub i64 %113, %132
  br label %135

134:                                              ; preds = %127
  store i16 -2, ptr %129, align 2, !tbaa !5
  br label %135

135:                                              ; preds = %134, %130, %122, %118
  %136 = phi i32 [ %114, %118 ], [ %124, %122 ], [ %131, %130 ], [ %114, %134 ]
  %137 = phi i64 [ %113, %118 ], [ %126, %122 ], [ %133, %130 ], [ %113, %134 ]
  %138 = add nuw nsw i64 %112, 1
  %139 = icmp eq i64 %138, %110
  br i1 %139, label %140, label %111, !llvm.loop !38

140:                                              ; preds = %135
  %141 = sub i32 %28, %136
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %346, label %143

143:                                              ; preds = %140
  %144 = zext i32 %141 to i64
  %145 = udiv i64 %137, %144
  %146 = and i64 %107, 4294967295
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %218

148:                                              ; preds = %143
  %149 = mul i64 %137, 3
  %150 = shl i32 %141, 1
  %151 = zext i32 %150 to i64
  %152 = udiv i64 %149, %151
  %153 = trunc i64 %152 to i32
  %154 = and i64 %110, 1
  %155 = icmp eq i32 %4, 0
  br i1 %155, label %195, label %156

156:                                              ; preds = %148
  %157 = and i64 %110, 4294967294
  br label %158

158:                                              ; preds = %189, %156
  %159 = phi i64 [ 0, %156 ], [ %192, %189 ]
  %160 = phi i64 [ %137, %156 ], [ %191, %189 ]
  %161 = phi i32 [ %136, %156 ], [ %190, %189 ]
  %162 = phi i64 [ 0, %156 ], [ %193, %189 ]
  %163 = getelementptr inbounds nuw i16, ptr %0, i64 %159
  %164 = load i16, ptr %163, align 2, !tbaa !5
  %165 = icmp eq i16 %164, -2
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i32, ptr %2, i64 %159
  %168 = load i32, ptr %167, align 4, !tbaa !36
  %169 = icmp ugt i32 %168, %153
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  store i16 1, ptr %163, align 2, !tbaa !5
  %171 = add i32 %161, 1
  %172 = zext i32 %168 to i64
  %173 = sub i64 %160, %172
  br label %174

174:                                              ; preds = %170, %166, %158
  %175 = phi i32 [ %171, %170 ], [ %161, %166 ], [ %161, %158 ]
  %176 = phi i64 [ %173, %170 ], [ %160, %166 ], [ %160, %158 ]
  %177 = or disjoint i64 %159, 1
  %178 = getelementptr inbounds nuw i16, ptr %0, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = icmp eq i16 %179, -2
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = getelementptr inbounds nuw i32, ptr %2, i64 %177
  %183 = load i32, ptr %182, align 4, !tbaa !36
  %184 = icmp ugt i32 %183, %153
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  store i16 1, ptr %178, align 2, !tbaa !5
  %186 = add i32 %175, 1
  %187 = zext i32 %183 to i64
  %188 = sub i64 %176, %187
  br label %189

189:                                              ; preds = %185, %181, %174
  %190 = phi i32 [ %186, %185 ], [ %175, %181 ], [ %175, %174 ]
  %191 = phi i64 [ %188, %185 ], [ %176, %181 ], [ %176, %174 ]
  %192 = add nuw nsw i64 %159, 2
  %193 = add i64 %162, 2
  %194 = icmp eq i64 %193, %157
  br i1 %194, label %195, label %158, !llvm.loop !39

195:                                              ; preds = %189, %148
  %196 = phi i32 [ poison, %148 ], [ %190, %189 ]
  %197 = phi i64 [ poison, %148 ], [ %191, %189 ]
  %198 = phi i64 [ 0, %148 ], [ %192, %189 ]
  %199 = phi i64 [ %137, %148 ], [ %191, %189 ]
  %200 = phi i32 [ %136, %148 ], [ %190, %189 ]
  %201 = icmp eq i64 %154, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds nuw i16, ptr %0, i64 %198
  %204 = load i16, ptr %203, align 2, !tbaa !5
  %205 = icmp eq i16 %204, -2
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = getelementptr inbounds nuw i32, ptr %2, i64 %198
  %208 = load i32, ptr %207, align 4, !tbaa !36
  %209 = icmp ugt i32 %208, %153
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  store i16 1, ptr %203, align 2, !tbaa !5
  %211 = add i32 %200, 1
  %212 = zext i32 %208 to i64
  %213 = sub i64 %199, %212
  br label %214

214:                                              ; preds = %202, %206, %210, %195
  %215 = phi i32 [ %196, %195 ], [ %211, %210 ], [ %200, %206 ], [ %200, %202 ]
  %216 = phi i64 [ %197, %195 ], [ %213, %210 ], [ %199, %206 ], [ %199, %202 ]
  %217 = sub i32 %28, %215
  br label %218

218:                                              ; preds = %214, %143
  %219 = phi i32 [ %217, %214 ], [ %141, %143 ]
  %220 = phi i32 [ %215, %214 ], [ %136, %143 ]
  %221 = phi i64 [ %216, %214 ], [ %137, %143 ]
  %222 = icmp eq i32 %220, %109
  br i1 %222, label %223, label %290

223:                                              ; preds = %218
  %224 = and i64 %110, 3
  %225 = icmp ult i32 %4, 3
  br i1 %225, label %263, label %226

226:                                              ; preds = %223
  %227 = and i64 %110, 4294967292
  br label %228

228:                                              ; preds = %228, %226
  %229 = phi i64 [ 0, %226 ], [ %260, %228 ]
  %230 = phi i32 [ 0, %226 ], [ %259, %228 ]
  %231 = phi i32 [ 0, %226 ], [ %258, %228 ]
  %232 = phi i64 [ 0, %226 ], [ %261, %228 ]
  %233 = getelementptr inbounds nuw i32, ptr %2, i64 %229
  %234 = load i32, ptr %233, align 4, !tbaa !36
  %235 = icmp ugt i32 %234, %230
  %236 = trunc nuw i64 %229 to i32
  %237 = select i1 %235, i32 %236, i32 %231
  %238 = tail call i32 @llvm.umax.i32(i32 %234, i32 %230)
  %239 = or disjoint i64 %229, 1
  %240 = getelementptr inbounds nuw i32, ptr %2, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !36
  %242 = icmp ugt i32 %241, %238
  %243 = trunc nuw i64 %239 to i32
  %244 = select i1 %242, i32 %243, i32 %237
  %245 = tail call i32 @llvm.umax.i32(i32 %241, i32 %238)
  %246 = or disjoint i64 %229, 2
  %247 = getelementptr inbounds nuw i32, ptr %2, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !36
  %249 = icmp ugt i32 %248, %245
  %250 = trunc nuw i64 %246 to i32
  %251 = select i1 %249, i32 %250, i32 %244
  %252 = tail call i32 @llvm.umax.i32(i32 %248, i32 %245)
  %253 = or disjoint i64 %229, 3
  %254 = getelementptr inbounds nuw i32, ptr %2, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !36
  %256 = icmp ugt i32 %255, %252
  %257 = trunc nuw i64 %253 to i32
  %258 = select i1 %256, i32 %257, i32 %251
  %259 = tail call i32 @llvm.umax.i32(i32 %255, i32 %252)
  %260 = add nuw nsw i64 %229, 4
  %261 = add i64 %232, 4
  %262 = icmp eq i64 %261, %227
  br i1 %262, label %263, label %228, !llvm.loop !40

263:                                              ; preds = %228, %223
  %264 = phi i32 [ poison, %223 ], [ %258, %228 ]
  %265 = phi i64 [ 0, %223 ], [ %260, %228 ]
  %266 = phi i32 [ 0, %223 ], [ %259, %228 ]
  %267 = phi i32 [ 0, %223 ], [ %258, %228 ]
  %268 = icmp eq i64 %224, 0
  br i1 %268, label %283, label %269

269:                                              ; preds = %263, %269
  %270 = phi i64 [ %280, %269 ], [ %265, %263 ]
  %271 = phi i32 [ %279, %269 ], [ %266, %263 ]
  %272 = phi i32 [ %278, %269 ], [ %267, %263 ]
  %273 = phi i64 [ %281, %269 ], [ 0, %263 ]
  %274 = getelementptr inbounds nuw i32, ptr %2, i64 %270
  %275 = load i32, ptr %274, align 4, !tbaa !36
  %276 = icmp ugt i32 %275, %271
  %277 = trunc nuw i64 %270 to i32
  %278 = select i1 %276, i32 %277, i32 %272
  %279 = tail call i32 @llvm.umax.i32(i32 %275, i32 %271)
  %280 = add nuw nsw i64 %270, 1
  %281 = add i64 %273, 1
  %282 = icmp eq i64 %281, %224
  br i1 %282, label %283, label %269, !llvm.loop !41

283:                                              ; preds = %269, %263
  %284 = phi i32 [ %264, %263 ], [ %278, %269 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds nuw i16, ptr %0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !5
  %288 = trunc i32 %219 to i16
  %289 = add i16 %287, %288
  store i16 %289, ptr %286, align 2, !tbaa !5
  br label %346

290:                                              ; preds = %218
  %291 = icmp eq i64 %221, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %290
  %293 = icmp eq i32 %219, 0
  br i1 %293, label %346, label %294

294:                                              ; preds = %292, %304
  %295 = phi i32 [ %308, %304 ], [ 0, %292 ]
  %296 = phi i32 [ %305, %304 ], [ %219, %292 ]
  %297 = zext i32 %295 to i64
  %298 = getelementptr inbounds nuw i16, ptr %0, i64 %297
  %299 = load i16, ptr %298, align 2, !tbaa !5
  %300 = icmp sgt i16 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %294
  %302 = add i32 %296, -1
  %303 = add nuw i16 %299, 1
  store i16 %303, ptr %298, align 2, !tbaa !5
  br label %304

304:                                              ; preds = %301, %294
  %305 = phi i32 [ %302, %301 ], [ %296, %294 ]
  %306 = add i32 %295, 1
  %307 = icmp eq i32 %295, %4
  %308 = select i1 %307, i32 0, i32 %306
  %309 = icmp eq i32 %305, 0
  br i1 %309, label %346, label %294, !llvm.loop !43

310:                                              ; preds = %290
  %311 = add nsw i64 %24, -1
  %312 = shl nsw i64 -1, %311
  %313 = xor i64 %312, -1
  %314 = zext i32 %219 to i64
  %315 = shl i64 %314, %24
  %316 = add i64 %315, %313
  %317 = and i64 %221, 4294967295
  %318 = udiv i64 %316, %317
  br label %319

319:                                              ; preds = %339, %310
  %320 = phi i32 [ 0, %310 ], [ %341, %339 ]
  %321 = phi i64 [ %313, %310 ], [ %340, %339 ]
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds nuw i16, ptr %0, i64 %322
  %324 = load i16, ptr %323, align 2, !tbaa !5
  %325 = icmp eq i16 %324, -2
  br i1 %325, label %326, label %339

326:                                              ; preds = %319
  %327 = getelementptr inbounds nuw i32, ptr %2, i64 %322
  %328 = load i32, ptr %327, align 4, !tbaa !36
  %329 = zext i32 %328 to i64
  %330 = mul i64 %318, %329
  %331 = add i64 %330, %321
  %332 = lshr i64 %321, %24
  %333 = lshr i64 %331, %24
  %334 = icmp eq i64 %333, %332
  br i1 %334, label %346, label %335

335:                                              ; preds = %326
  %336 = trunc nuw nsw i64 %332 to i16
  %337 = trunc nuw nsw i64 %333 to i16
  %338 = sub nsw i16 %337, %336
  store i16 %338, ptr %323, align 2, !tbaa !5
  br label %339

339:                                              ; preds = %335, %319
  %340 = phi i64 [ %331, %335 ], [ %321, %319 ]
  %341 = add i32 %320, 1
  %342 = icmp ugt i32 %341, %4
  br i1 %342, label %346, label %319, !llvm.loop !44

343:                                              ; preds = %95
  %344 = trunc i32 %88 to i16
  %345 = add i16 %99, %344
  store i16 %345, ptr %98, align 2, !tbaa !5
  br label %346

346:                                              ; preds = %32, %326, %339, %304, %292, %140, %283, %343, %12, %10, %6
  %347 = phi i64 [ -1, %6 ], [ -44, %10 ], [ -1, %12 ], [ %29, %343 ], [ %29, %283 ], [ %29, %140 ], [ %29, %292 ], [ %29, %304 ], [ -1, %326 ], [ %29, %339 ], [ 0, %32 ]
  ret i64 %347
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @FSE_buildCTable_rle(ptr noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %0, align 2, !tbaa !5
  %5 = zext i8 %1 to i16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %5, ptr %6, align 2, !tbaa !5
  store i16 0, ptr %3, align 2, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %7, align 2, !tbaa !5
  %8 = zext i8 %1 to i64
  %9 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %4, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %10, align 4, !tbaa !24
  store i32 0, ptr %9, align 4, !tbaa !27
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @FSE_compress_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #6 {
  %6 = lshr i64 %3, 7
  %7 = add i64 %3, 12
  %8 = add i64 %7, %6
  %9 = icmp uge i64 %1, %8
  %10 = zext i1 %9 to i32
  %11 = tail call fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %10)
  ret i64 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #6 {
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %8 = icmp ult i64 %3, 3
  br i1 %8, label %403, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = icmp ugt i64 %1, 8
  br i1 %12, label %13, label %403

13:                                               ; preds = %9
  %14 = and i64 %3, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %96, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %4, align 1, !tbaa !5
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %20 = icmp eq i16 %17, 0
  %21 = add nsw i32 %18, -1
  %22 = shl nuw i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = select i1 %20, i64 1, i64 %23
  %25 = getelementptr inbounds i32, ptr %19, i64 %24
  %26 = getelementptr inbounds i8, ptr %7, i64 -2
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %25, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !36
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !36
  %33 = add i32 %32, 32768
  %34 = and i32 %33, -65536
  %35 = sub i32 %34, %32
  %36 = zext i32 %35 to i64
  %37 = lshr i32 %33, 16
  %38 = zext nneg i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = sext i32 %30 to i64
  %41 = getelementptr i16, ptr %19, i64 %39
  %42 = getelementptr i16, ptr %41, i64 %40
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = getelementptr inbounds i8, ptr %7, i64 -3
  %45 = getelementptr inbounds i8, ptr %7, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %25, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !36
  %51 = add i32 %50, 32768
  %52 = and i32 %51, -65536
  %53 = sub i32 %52, %50
  %54 = zext i32 %53 to i64
  %55 = lshr i32 %51, 16
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = getelementptr i16, ptr %19, i64 %57
  %59 = load i32, ptr %48, align 4, !tbaa !36
  %60 = sext i32 %59 to i64
  %61 = getelementptr i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = zext i16 %62 to i64
  %64 = load i8, ptr %44, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %25, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !36
  %69 = zext i32 %68 to i64
  %70 = add nuw nsw i64 %69, %63
  %71 = lshr i64 %70, 16
  %72 = trunc nuw nsw i64 %71 to i32
  %73 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %71
  %74 = load i32, ptr %73, align 4, !tbaa !36
  %75 = zext i32 %74 to i64
  %76 = and i64 %75, %63
  %77 = lshr i64 %63, %71
  %78 = load i32, ptr %66, align 4, !tbaa !36
  %79 = sext i32 %78 to i64
  %80 = getelementptr i16, ptr %19, i64 %77
  %81 = getelementptr i16, ptr %80, i64 %79
  %82 = load i16, ptr %81, align 2, !tbaa !5
  %83 = icmp eq i32 %5, 0
  %84 = lshr i64 %70, 19
  store i64 %76, ptr %0, align 1, !tbaa !12
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 %84
  br i1 %83, label %90, label %86

86:                                               ; preds = %16
  %87 = and i32 %72, 7
  %88 = shl nuw nsw i64 %84, 3
  %89 = lshr i64 %76, %88
  br label %142

90:                                               ; preds = %16
  %91 = icmp ugt ptr %85, %11
  %92 = select i1 %91, ptr %11, ptr %85
  %93 = and i32 %72, 7
  %94 = shl nuw nsw i64 %84, 3
  %95 = lshr i64 %76, %94
  br label %142

96:                                               ; preds = %13
  %97 = getelementptr inbounds i8, ptr %7, i64 -1
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = load i16, ptr %4, align 1, !tbaa !5
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %102 = icmp eq i16 %99, 0
  %103 = add nsw i32 %100, -1
  %104 = shl nuw i32 1, %103
  %105 = sext i32 %104 to i64
  %106 = select i1 %102, i64 1, i64 %105
  %107 = getelementptr inbounds i32, ptr %101, i64 %106
  %108 = zext i8 %98 to i64
  %109 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %107, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !36
  %111 = getelementptr inbounds nuw i8, ptr %109, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !36
  %113 = add i32 %112, 32768
  %114 = and i32 %113, -65536
  %115 = sub i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = lshr i32 %113, 16
  %118 = zext nneg i32 %117 to i64
  %119 = lshr i64 %116, %118
  %120 = sext i32 %110 to i64
  %121 = getelementptr i16, ptr %101, i64 %119
  %122 = getelementptr i16, ptr %121, i64 %120
  %123 = load i16, ptr %122, align 2, !tbaa !5
  %124 = getelementptr inbounds i8, ptr %7, i64 -2
  %125 = load i8, ptr %124, align 1, !tbaa !9
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %107, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !36
  %129 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa !36
  %131 = add i32 %130, 32768
  %132 = and i32 %131, -65536
  %133 = sub i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = lshr i32 %131, 16
  %136 = zext nneg i32 %135 to i64
  %137 = lshr i64 %134, %136
  %138 = sext i32 %128 to i64
  %139 = getelementptr i16, ptr %101, i64 %137
  %140 = getelementptr i16, ptr %139, i64 %138
  %141 = load i16, ptr %140, align 2, !tbaa !5
  br label %142

142:                                              ; preds = %86, %90, %96
  %143 = phi i64 [ 0, %96 ], [ %95, %90 ], [ %89, %86 ]
  %144 = phi i32 [ 0, %96 ], [ %93, %90 ], [ %87, %86 ]
  %145 = phi i32 [ %100, %96 ], [ %18, %90 ], [ %18, %86 ]
  %146 = phi ptr [ %107, %96 ], [ %25, %90 ], [ %25, %86 ]
  %147 = phi i16 [ %141, %96 ], [ %82, %90 ], [ %82, %86 ]
  %148 = phi ptr [ %0, %96 ], [ %92, %90 ], [ %85, %86 ]
  %149 = phi i16 [ %123, %96 ], [ %43, %90 ], [ %43, %86 ]
  %150 = phi ptr [ %124, %96 ], [ %44, %90 ], [ %44, %86 ]
  %151 = zext i16 %149 to i64
  %152 = zext i16 %147 to i64
  %153 = and i64 %3, 2
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %221

155:                                              ; preds = %142
  %156 = getelementptr inbounds i8, ptr %150, i64 -1
  %157 = load i8, ptr %156, align 1, !tbaa !9
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %158
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %161 = load i32, ptr %160, align 4, !tbaa !36
  %162 = zext i32 %161 to i64
  %163 = add nuw nsw i64 %162, %151
  %164 = lshr i64 %163, 16
  %165 = trunc nuw nsw i64 %164 to i32
  %166 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !36
  %168 = zext i32 %167 to i64
  %169 = and i64 %168, %151
  %170 = zext nneg i32 %144 to i64
  %171 = shl nuw nsw i64 %169, %170
  %172 = add nuw nsw i32 %144, %165
  %173 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %174 = lshr i64 %151, %164
  %175 = load i32, ptr %159, align 4, !tbaa !36
  %176 = sext i32 %175 to i64
  %177 = getelementptr i16, ptr %173, i64 %174
  %178 = getelementptr i16, ptr %177, i64 %176
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = zext i16 %179 to i64
  %181 = getelementptr inbounds i8, ptr %150, i64 -2
  %182 = load i8, ptr %181, align 1, !tbaa !9
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %183
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %186 = load i32, ptr %185, align 4, !tbaa !36
  %187 = zext i32 %186 to i64
  %188 = add nuw nsw i64 %187, %152
  %189 = lshr i64 %188, 16
  %190 = trunc nuw nsw i64 %189 to i32
  %191 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %189
  %192 = load i32, ptr %191, align 4, !tbaa !36
  %193 = zext i32 %192 to i64
  %194 = and i64 %193, %152
  %195 = zext nneg i32 %172 to i64
  %196 = shl i64 %194, %195
  %197 = or i64 %171, %196
  %198 = or i64 %197, %143
  %199 = add nuw nsw i32 %172, %190
  %200 = lshr i64 %152, %189
  %201 = load i32, ptr %184, align 4, !tbaa !36
  %202 = sext i32 %201 to i64
  %203 = getelementptr i16, ptr %173, i64 %200
  %204 = getelementptr i16, ptr %203, i64 %202
  %205 = load i16, ptr %204, align 2, !tbaa !5
  %206 = zext i16 %205 to i64
  %207 = icmp eq i32 %5, 0
  %208 = lshr i32 %199, 3
  %209 = zext nneg i32 %208 to i64
  store i64 %198, ptr %148, align 1, !tbaa !12
  %210 = getelementptr inbounds nuw i8, ptr %148, i64 %209
  br i1 %207, label %215, label %211

211:                                              ; preds = %155
  %212 = and i32 %199, 7
  %213 = shl nuw nsw i64 %209, 3
  %214 = lshr i64 %198, %213
  br label %221

215:                                              ; preds = %155
  %216 = icmp ugt ptr %210, %11
  %217 = select i1 %216, ptr %11, ptr %210
  %218 = and i32 %199, 7
  %219 = shl nuw nsw i64 %209, 3
  %220 = lshr i64 %198, %219
  br label %221

221:                                              ; preds = %211, %215, %142
  %222 = phi i64 [ %220, %215 ], [ %214, %211 ], [ %143, %142 ]
  %223 = phi i32 [ %218, %215 ], [ %212, %211 ], [ %144, %142 ]
  %224 = phi i64 [ %206, %215 ], [ %206, %211 ], [ %152, %142 ]
  %225 = phi ptr [ %217, %215 ], [ %210, %211 ], [ %148, %142 ]
  %226 = phi i64 [ %180, %215 ], [ %180, %211 ], [ %151, %142 ]
  %227 = phi ptr [ %181, %215 ], [ %181, %211 ], [ %150, %142 ]
  %228 = icmp ugt ptr %227, %2
  br i1 %228, label %229, label %349

229:                                              ; preds = %221
  %230 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %231 = icmp eq i32 %5, 0
  br label %232

232:                                              ; preds = %229, %232
  %233 = phi ptr [ %227, %229 ], [ %311, %232 ]
  %234 = phi i64 [ %226, %229 ], [ %310, %232 ]
  %235 = phi ptr [ %225, %229 ], [ %344, %232 ]
  %236 = phi i64 [ %224, %229 ], [ %338, %232 ]
  %237 = phi i32 [ %223, %229 ], [ %345, %232 ]
  %238 = phi i64 [ %222, %229 ], [ %347, %232 ]
  %239 = getelementptr inbounds i8, ptr %233, i64 -1
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %241
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 4
  %244 = load i32, ptr %243, align 4, !tbaa !36
  %245 = zext i32 %244 to i64
  %246 = add nuw nsw i64 %234, %245
  %247 = lshr i64 %246, 16
  %248 = trunc nuw nsw i64 %247 to i32
  %249 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %247
  %250 = load i32, ptr %249, align 4, !tbaa !36
  %251 = zext i32 %250 to i64
  %252 = and i64 %234, %251
  %253 = zext nneg i32 %237 to i64
  %254 = shl nuw nsw i64 %252, %253
  %255 = add nuw nsw i32 %237, %248
  %256 = lshr i64 %234, %247
  %257 = load i32, ptr %242, align 4, !tbaa !36
  %258 = sext i32 %257 to i64
  %259 = getelementptr i16, ptr %230, i64 %256
  %260 = getelementptr i16, ptr %259, i64 %258
  %261 = load i16, ptr %260, align 2, !tbaa !5
  %262 = zext i16 %261 to i64
  %263 = getelementptr inbounds i8, ptr %233, i64 -2
  %264 = load i8, ptr %263, align 1, !tbaa !9
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %265
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 4
  %268 = load i32, ptr %267, align 4, !tbaa !36
  %269 = zext i32 %268 to i64
  %270 = add nuw nsw i64 %236, %269
  %271 = lshr i64 %270, 16
  %272 = trunc nuw nsw i64 %271 to i32
  %273 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %271
  %274 = load i32, ptr %273, align 4, !tbaa !36
  %275 = zext i32 %274 to i64
  %276 = and i64 %236, %275
  %277 = zext nneg i32 %255 to i64
  %278 = shl i64 %276, %277
  %279 = add nuw nsw i32 %255, %272
  %280 = lshr i64 %236, %271
  %281 = load i32, ptr %266, align 4, !tbaa !36
  %282 = sext i32 %281 to i64
  %283 = getelementptr i16, ptr %230, i64 %280
  %284 = getelementptr i16, ptr %283, i64 %282
  %285 = load i16, ptr %284, align 2, !tbaa !5
  %286 = zext i16 %285 to i64
  %287 = getelementptr inbounds i8, ptr %233, i64 -3
  %288 = load i8, ptr %287, align 1, !tbaa !9
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %289
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %292 = load i32, ptr %291, align 4, !tbaa !36
  %293 = zext i32 %292 to i64
  %294 = add nuw nsw i64 %293, %262
  %295 = lshr i64 %294, 16
  %296 = trunc nuw nsw i64 %295 to i32
  %297 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %295
  %298 = load i32, ptr %297, align 4, !tbaa !36
  %299 = zext i32 %298 to i64
  %300 = and i64 %299, %262
  %301 = zext nneg i32 %279 to i64
  %302 = shl i64 %300, %301
  %303 = add nuw nsw i32 %279, %296
  %304 = lshr i64 %262, %295
  %305 = load i32, ptr %290, align 4, !tbaa !36
  %306 = sext i32 %305 to i64
  %307 = getelementptr i16, ptr %230, i64 %304
  %308 = getelementptr i16, ptr %307, i64 %306
  %309 = load i16, ptr %308, align 2, !tbaa !5
  %310 = zext i16 %309 to i64
  %311 = getelementptr inbounds i8, ptr %233, i64 -4
  %312 = load i8, ptr %311, align 1, !tbaa !9
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %146, i64 %313
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 4
  %316 = load i32, ptr %315, align 4, !tbaa !36
  %317 = zext i32 %316 to i64
  %318 = add nuw nsw i64 %317, %286
  %319 = lshr i64 %318, 16
  %320 = trunc nuw nsw i64 %319 to i32
  %321 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %319
  %322 = load i32, ptr %321, align 4, !tbaa !36
  %323 = zext i32 %322 to i64
  %324 = and i64 %323, %286
  %325 = zext nneg i32 %303 to i64
  %326 = shl i64 %324, %325
  %327 = or i64 %254, %238
  %328 = or i64 %327, %278
  %329 = or i64 %328, %302
  %330 = or i64 %329, %326
  %331 = add nuw nsw i32 %303, %320
  %332 = lshr i64 %286, %319
  %333 = load i32, ptr %314, align 4, !tbaa !36
  %334 = sext i32 %333 to i64
  %335 = getelementptr i16, ptr %230, i64 %332
  %336 = getelementptr i16, ptr %335, i64 %334
  %337 = load i16, ptr %336, align 2, !tbaa !5
  %338 = zext i16 %337 to i64
  %339 = lshr i32 %331, 3
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr inbounds nuw i8, ptr %235, i64 %340
  %342 = icmp ugt ptr %341, %11
  %343 = select i1 %231, i1 %342, i1 false
  %344 = select i1 %343, ptr %11, ptr %341
  store i64 %330, ptr %235, align 1, !tbaa !12
  %345 = and i32 %331, 7
  %346 = shl nuw nsw i64 %340, 3
  %347 = lshr i64 %330, %346
  %348 = icmp ugt ptr %311, %2
  br i1 %348, label %232, label %349, !llvm.loop !45

349:                                              ; preds = %232, %221
  %350 = phi i64 [ %222, %221 ], [ %347, %232 ]
  %351 = phi i32 [ %223, %221 ], [ %345, %232 ]
  %352 = phi i64 [ %224, %221 ], [ %338, %232 ]
  %353 = phi ptr [ %225, %221 ], [ %344, %232 ]
  %354 = phi i64 [ %226, %221 ], [ %310, %232 ]
  %355 = zext nneg i32 %145 to i64
  %356 = getelementptr inbounds nuw [32 x i32], ptr @BIT_mask, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !36
  %358 = zext i32 %357 to i64
  %359 = and i64 %354, %358
  %360 = zext nneg i32 %351 to i64
  %361 = shl nuw nsw i64 %359, %360
  %362 = or i64 %361, %350
  %363 = add nuw nsw i32 %351, %145
  %364 = lshr i32 %363, 3
  %365 = zext nneg i32 %364 to i64
  store i64 %362, ptr %353, align 1, !tbaa !12
  %366 = getelementptr inbounds nuw i8, ptr %353, i64 %365
  %367 = icmp ugt ptr %366, %11
  %368 = select i1 %367, ptr %11, ptr %366
  %369 = and i32 %363, 7
  %370 = shl nuw nsw i64 %365, 3
  %371 = lshr i64 %362, %370
  %372 = and i64 %352, %358
  %373 = zext nneg i32 %369 to i64
  %374 = shl nuw nsw i64 %372, %373
  %375 = or i64 %374, %371
  %376 = add nuw nsw i32 %369, %145
  %377 = lshr i32 %376, 3
  %378 = zext nneg i32 %377 to i64
  store i64 %375, ptr %368, align 1, !tbaa !12
  %379 = getelementptr inbounds nuw i8, ptr %368, i64 %378
  %380 = icmp ugt ptr %379, %11
  %381 = select i1 %380, ptr %11, ptr %379
  %382 = and i32 %376, 7
  %383 = shl nuw nsw i64 %378, 3
  %384 = lshr i64 %375, %383
  %385 = zext nneg i32 %382 to i64
  %386 = shl nuw nsw i64 1, %385
  %387 = or i64 %384, %386
  %388 = add nuw nsw i32 %382, 1
  %389 = lshr i32 %388, 3
  %390 = zext nneg i32 %389 to i64
  store i64 %387, ptr %381, align 1, !tbaa !12
  %391 = getelementptr inbounds nuw i8, ptr %381, i64 %390
  %392 = icmp ugt ptr %391, %11
  %393 = select i1 %392, ptr %11, ptr %391
  %394 = icmp ult ptr %393, %11
  br i1 %394, label %395, label %403

395:                                              ; preds = %349
  %396 = and i32 %388, 7
  %397 = ptrtoint ptr %393 to i64
  %398 = ptrtoint ptr %0 to i64
  %399 = icmp ne i32 %396, 0
  %400 = zext i1 %399 to i64
  %401 = sub i64 %400, %398
  %402 = add i64 %401, %397
  br label %403

403:                                              ; preds = %395, %349, %6, %9
  %404 = phi i64 [ 0, %9 ], [ 0, %6 ], [ %402, %395 ], [ 0, %349 ]
  ret i64 %404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @FSE_compressBound(i64 noundef %0) local_unnamed_addr #3 {
  %2 = lshr i64 %0, 7
  %3 = add i64 %0, 524
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11, !16, !15}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{!25, !26, i64 4}
!25 = !{!"", !26, i64 0, !26, i64 4}
!26 = !{!"int", !7, i64 0}
!27 = !{!25, !26, i64 0}
!28 = distinct !{!28, !11}
!29 = !{}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!"branch_weights", i32 1, i32 1048575}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = !{!26, !26, i64 0}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
