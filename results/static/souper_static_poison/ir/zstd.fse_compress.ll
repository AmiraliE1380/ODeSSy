; ModuleID = '/mydata/zstd/lib/compress/fse_compress.c'
source_filename = "/mydata/zstd/lib/compress/fse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @FSE_buildCTable_wksp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = shl nuw i32 1, %3
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  %10 = icmp eq i32 %3, 0
  %11 = lshr i32 %7, 1
  %12 = select i1 %10, i32 1, i32 %11
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %9, i64 %13
  %15 = lshr i32 %7, 3
  %16 = add nuw nsw i32 %15, 3
  %17 = add nuw i32 %16, %11
  %18 = add i32 %2, 1
  %19 = add i32 %2, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %4, i64 %20
  %22 = zext nneg i32 %3 to i64
  %23 = shl nuw i64 1, %22
  %24 = add nuw i64 %23, %20
  %25 = shl i64 %24, 1
  %26 = and i64 %25, -4
  %27 = add i64 %26, 8
  %28 = icmp ugt i64 %27, %5
  br i1 %28, label %279, label %29

29:                                               ; preds = %6
  %30 = trunc i32 %3 to i16
  store i16 %30, ptr %0, align 2, !tbaa !5
  %31 = trunc i32 %2 to i16
  %32 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %31, ptr %32, align 2, !tbaa !5
  store i16 0, ptr %4, align 2, !tbaa !5
  %33 = icmp eq i32 %18, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = trunc i32 %7 to i16
  %36 = add i16 %35, 1
  %37 = zext nneg i32 %18 to i64
  %38 = getelementptr inbounds i16, ptr %4, i64 %37
  store i16 %36, ptr %38, align 2, !tbaa !5
  %39 = zext i32 %7 to i64
  %40 = getelementptr inbounds i8, ptr %21, i64 %39
  br label %76

41:                                               ; preds = %29
  %42 = tail call i32 @llvm.umax.i32(i32 %19, i32 2)
  %43 = zext i32 %42 to i64
  br label %44

44:                                               ; preds = %41, %62
  %45 = phi i64 [ 1, %41 ], [ %64, %62 ]
  %46 = phi i32 [ %8, %41 ], [ %63, %62 ]
  %47 = add nsw i64 %45, -1
  %48 = getelementptr inbounds i16, ptr %1, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !5
  %50 = icmp eq i16 %49, -1
  %51 = getelementptr inbounds i16, ptr %4, i64 %47
  %52 = load i16, ptr %51, align 2, !tbaa !5
  %53 = getelementptr inbounds i16, ptr %4, i64 %45
  br i1 %50, label %54, label %60

54:                                               ; preds = %44
  %55 = add i16 %52, 1
  store i16 %55, ptr %53, align 2, !tbaa !5
  %56 = trunc i64 %47 to i8
  %57 = add i32 %46, -1
  %58 = zext i32 %46 to i64
  %59 = getelementptr inbounds i8, ptr %21, i64 %58
  store i8 %56, ptr %59, align 1, !tbaa !9
  br label %62

60:                                               ; preds = %44
  %61 = add i16 %52, %49
  store i16 %61, ptr %53, align 2, !tbaa !5
  br label %62

62:                                               ; preds = %54, %60
  %63 = phi i32 [ %57, %54 ], [ %46, %60 ]
  %64 = add nuw nsw i64 %45, 1
  %65 = icmp eq i64 %64, %43
  br i1 %65, label %66, label %44, !llvm.loop !10

66:                                               ; preds = %62
  %67 = trunc i32 %7 to i16
  %68 = add i16 %67, 1
  %69 = zext i32 %18 to i64
  %70 = getelementptr inbounds i16, ptr %4, i64 %69
  store i16 %68, ptr %70, align 2, !tbaa !5
  %71 = icmp eq i32 %63, %8
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br i1 %33, label %193, label %143

73:                                               ; preds = %66
  %74 = zext i32 %7 to i64
  %75 = getelementptr inbounds i8, ptr %21, i64 %74
  br i1 %33, label %76, label %82

76:                                               ; preds = %120, %34, %73
  %77 = phi ptr [ %40, %34 ], [ %75, %73 ], [ %75, %120 ]
  %78 = phi i64 [ %39, %34 ], [ %74, %73 ], [ %74, %120 ]
  %79 = zext i32 %17 to i64
  %80 = zext i32 %8 to i64
  %81 = shl nuw nsw i64 %79, 1
  br label %126

82:                                               ; preds = %73, %120
  %83 = phi i64 [ %123, %120 ], [ 0, %73 ]
  %84 = phi i64 [ %122, %120 ], [ 0, %73 ]
  %85 = phi i64 [ %124, %120 ], [ 0, %73 ]
  %86 = getelementptr inbounds i16, ptr %1, i64 %83
  %87 = load i16, ptr %86, align 2, !tbaa !5
  %88 = getelementptr inbounds i8, ptr %75, i64 %84
  store i64 %85, ptr %88, align 1, !tbaa !12
  %89 = icmp sgt i16 %87, 8
  br i1 %89, label %90, label %120

90:                                               ; preds = %82
  %91 = zext nneg i16 %87 to i64
  %92 = tail call i64 @llvm.umax.i64(i64 %91, i64 16)
  %93 = add nsw i64 %92, -9
  %94 = lshr i64 %93, 3
  %95 = add nuw nsw i64 %94, 1
  %96 = icmp ult i64 %93, 24
  br i1 %96, label %113, label %97

97:                                               ; preds = %90
  %98 = and i64 %95, 4611686018427387900
  %99 = shl i64 %98, 3
  %100 = or disjoint i64 %99, 8
  %101 = insertelement <2 x i64> poison, i64 %85, i64 0
  %102 = shufflevector <2 x i64> %101, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %103

103:                                              ; preds = %103, %97
  %104 = phi i64 [ 0, %97 ], [ %109, %103 ]
  %105 = shl i64 %104, 3
  %106 = or disjoint i64 %105, 8
  %107 = getelementptr inbounds i8, ptr %88, i64 %106
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store <2 x i64> %102, ptr %107, align 1, !tbaa !12
  store <2 x i64> %102, ptr %108, align 1, !tbaa !12
  %109 = add nuw i64 %104, 4
  %110 = icmp eq i64 %109, %98
  br i1 %110, label %111, label %103, !llvm.loop !14

111:                                              ; preds = %103
  %112 = icmp eq i64 %95, %98
  br i1 %112, label %120, label %113

113:                                              ; preds = %90, %111
  %114 = phi i64 [ 8, %90 ], [ %100, %111 ]
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ %118, %115 ], [ %114, %113 ]
  %117 = getelementptr inbounds i8, ptr %88, i64 %116
  store i64 %85, ptr %117, align 1, !tbaa !12
  %118 = add nuw nsw i64 %116, 8
  %119 = icmp ult i64 %118, %91
  br i1 %119, label %115, label %120, !llvm.loop !17

120:                                              ; preds = %115, %111, %82
  %121 = sext i16 %87 to i64
  %122 = add i64 %84, %121
  %123 = add nuw nsw i64 %83, 1
  %124 = add i64 %85, 72340172838076673
  %125 = icmp eq i64 %123, %69
  br i1 %125, label %76, label %82, !llvm.loop !18

126:                                              ; preds = %76, %126
  %127 = phi i64 [ 0, %76 ], [ %141, %126 ]
  %128 = phi i64 [ 0, %76 ], [ %140, %126 ]
  %129 = and i64 %128, %80
  %130 = getelementptr inbounds i8, ptr %77, i64 %127
  %131 = load i8, ptr %130, align 1, !tbaa !9
  %132 = getelementptr inbounds i8, ptr %21, i64 %129
  store i8 %131, ptr %132, align 1, !tbaa !9
  %133 = add nuw nsw i64 %128, %79
  %134 = and i64 %133, %80
  %135 = or disjoint i64 %127, 1
  %136 = getelementptr inbounds i8, ptr %77, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = getelementptr inbounds i8, ptr %21, i64 %134
  store i8 %137, ptr %138, align 1, !tbaa !9
  %139 = add nuw nsw i64 %128, %81
  %140 = and i64 %139, %80
  %141 = add nuw nsw i64 %127, 2
  %142 = icmp ult i64 %141, %78
  br i1 %142, label %126, label %193, !llvm.loop !19

143:                                              ; preds = %72, %189
  %144 = phi i64 [ %191, %189 ], [ 0, %72 ]
  %145 = phi i32 [ %190, %189 ], [ 0, %72 ]
  %146 = getelementptr inbounds i16, ptr %1, i64 %144
  %147 = load i16, ptr %146, align 2, !tbaa !5
  %148 = sext i16 %147 to i32
  %149 = icmp sgt i16 %147, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %143
  %151 = trunc i64 %144 to i8
  %152 = and i32 %148, 1
  %153 = icmp eq i16 %147, 1
  br i1 %153, label %177, label %154

154:                                              ; preds = %150
  %155 = and i32 %148, 32766
  br label %156

156:                                              ; preds = %174, %154
  %157 = phi i32 [ %145, %154 ], [ %172, %174 ]
  %158 = phi i32 [ 0, %154 ], [ %175, %174 ]
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds i8, ptr %21, i64 %159
  store i8 %151, ptr %160, align 1, !tbaa !9
  br label %161

161:                                              ; preds = %161, %156
  %162 = phi i32 [ %157, %156 ], [ %164, %161 ]
  %163 = add i32 %162, %17
  %164 = and i32 %163, %8
  %165 = icmp ugt i32 %164, %63
  br i1 %165, label %161, label %166, !llvm.loop !20

166:                                              ; preds = %161
  %167 = zext i32 %164 to i64
  %168 = getelementptr inbounds i8, ptr %21, i64 %167
  store i8 %151, ptr %168, align 1, !tbaa !9
  br label %169

169:                                              ; preds = %169, %166
  %170 = phi i32 [ %164, %166 ], [ %172, %169 ]
  %171 = add i32 %170, %17
  %172 = and i32 %171, %8
  %173 = icmp ugt i32 %172, %63
  br i1 %173, label %169, label %174, !llvm.loop !20

174:                                              ; preds = %169
  %175 = add i32 %158, 2
  %176 = icmp eq i32 %175, %155
  br i1 %176, label %177, label %156, !llvm.loop !21

177:                                              ; preds = %174, %150
  %178 = phi i32 [ undef, %150 ], [ %172, %174 ]
  %179 = phi i32 [ %145, %150 ], [ %172, %174 ]
  %180 = icmp eq i32 %152, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = zext i32 %179 to i64
  %183 = getelementptr inbounds i8, ptr %21, i64 %182
  store i8 %151, ptr %183, align 1, !tbaa !9
  br label %184

184:                                              ; preds = %184, %181
  %185 = phi i32 [ %179, %181 ], [ %187, %184 ]
  %186 = add i32 %185, %17
  %187 = and i32 %186, %8
  %188 = icmp ugt i32 %187, %63
  br i1 %188, label %184, label %189, !llvm.loop !20

189:                                              ; preds = %177, %184, %143
  %190 = phi i32 [ %145, %143 ], [ %178, %177 ], [ %187, %184 ]
  %191 = add nuw nsw i64 %144, 1
  %192 = icmp eq i64 %191, %69
  br i1 %192, label %193, label %143, !llvm.loop !22

193:                                              ; preds = %189, %126, %72
  %194 = zext i32 %7 to i64
  %195 = and i64 %194, 1
  %196 = icmp eq i32 %3, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = and i64 %194, 4294967294
  br label %221

199:                                              ; preds = %221, %193
  %200 = phi i64 [ 0, %193 ], [ %247, %221 ]
  %201 = icmp eq i64 %195, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds i8, ptr %21, i64 %200
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = trunc i64 %200 to i32
  %206 = add i32 %7, %205
  %207 = trunc i32 %206 to i16
  %208 = zext i8 %204 to i64
  %209 = getelementptr inbounds i16, ptr %4, i64 %208
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = add i16 %210, 1
  store i16 %211, ptr %209, align 2, !tbaa !5
  %212 = zext i16 %210 to i64
  %213 = getelementptr inbounds i16, ptr %9, i64 %212
  store i16 %207, ptr %213, align 2, !tbaa !5
  br label %214

214:                                              ; preds = %199, %202
  %215 = shl i32 %3, 16
  %216 = sub i32 %215, %7
  %217 = add i32 %215, 65536
  %218 = sub i32 %217, %7
  %219 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  %220 = zext i32 %219 to i64
  br label %250

221:                                              ; preds = %221, %197
  %222 = phi i64 [ 0, %197 ], [ %247, %221 ]
  %223 = phi i64 [ 0, %197 ], [ %248, %221 ]
  %224 = getelementptr inbounds i8, ptr %21, i64 %222
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = trunc i64 %222 to i32
  %227 = add i32 %7, %226
  %228 = trunc i32 %227 to i16
  %229 = zext i8 %225 to i64
  %230 = getelementptr inbounds i16, ptr %4, i64 %229
  %231 = load i16, ptr %230, align 2, !tbaa !5
  %232 = add i16 %231, 1
  store i16 %232, ptr %230, align 2, !tbaa !5
  %233 = zext i16 %231 to i64
  %234 = getelementptr inbounds i16, ptr %9, i64 %233
  store i16 %228, ptr %234, align 2, !tbaa !5
  %235 = or disjoint i64 %222, 1
  %236 = getelementptr inbounds i8, ptr %21, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !9
  %238 = trunc i64 %235 to i32
  %239 = add i32 %7, %238
  %240 = trunc i32 %239 to i16
  %241 = zext i8 %237 to i64
  %242 = getelementptr inbounds i16, ptr %4, i64 %241
  %243 = load i16, ptr %242, align 2, !tbaa !5
  %244 = add i16 %243, 1
  store i16 %244, ptr %242, align 2, !tbaa !5
  %245 = zext i16 %243 to i64
  %246 = getelementptr inbounds i16, ptr %9, i64 %245
  store i16 %240, ptr %246, align 2, !tbaa !5
  %247 = add nuw nsw i64 %222, 2
  %248 = add i64 %223, 2
  %249 = icmp eq i64 %248, %198
  br i1 %249, label %199, label %221, !llvm.loop !23

250:                                              ; preds = %214, %275
  %251 = phi i64 [ 0, %214 ], [ %277, %275 ]
  %252 = phi i32 [ 0, %214 ], [ %276, %275 ]
  %253 = getelementptr inbounds i16, ptr %1, i64 %251
  %254 = load i16, ptr %253, align 2, !tbaa !5
  switch i16 %254, label %262 [
    i16 0, label %255
    i16 -1, label %257
    i16 1, label %257
  ]

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %14, i64 %251, i32 1
  store i32 %218, ptr %256, align 4, !tbaa !24
  br label %275

257:                                              ; preds = %250, %250
  %258 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %14, i64 %251
  %259 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %14, i64 %251, i32 1
  store i32 %216, ptr %259, align 4, !tbaa !24
  %260 = add i32 %252, -1
  store i32 %260, ptr %258, align 4, !tbaa !27
  %261 = add i32 %252, 1
  br label %275

262:                                              ; preds = %250
  %263 = sext i16 %254 to i32
  %264 = add nsw i32 %263, -1
  %265 = tail call i32 @llvm.ctlz.i32(i32 %264, i1 true), !range !28
  %266 = xor i32 %265, 31
  %267 = sub i32 %3, %266
  %268 = shl i32 %263, %267
  %269 = shl i32 %267, 16
  %270 = sub i32 %269, %268
  %271 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %14, i64 %251
  %272 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %14, i64 %251, i32 1
  store i32 %270, ptr %272, align 4, !tbaa !24
  %273 = sub i32 %252, %263
  store i32 %273, ptr %271, align 4, !tbaa !27
  %274 = add i32 %252, %263
  br label %275

275:                                              ; preds = %255, %257, %262
  %276 = phi i32 [ %274, %262 ], [ %261, %257 ], [ %252, %255 ]
  %277 = add nuw nsw i64 %251, 1
  %278 = icmp eq i64 %277, %220
  br i1 %278, label %279, label %250, !llvm.loop !29

279:                                              ; preds = %275, %6
  %280 = phi i64 [ -44, %6 ], [ 0, %275 ]
  ret i64 %280
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @FSE_NCountWriteBound(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
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
define dso_local i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp ugt i32 %4, 12
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %4, 5
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
  %18 = icmp ule i64 %17, %1
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %19)
  br label %21

21:                                               ; preds = %9, %7, %5
  %22 = phi i64 [ -44, %5 ], [ -1, %7 ], [ %20, %9 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = getelementptr inbounds i8, ptr %0, i64 %1
  %8 = shl nuw nsw i32 1, %4
  %9 = add i32 %3, 1
  %10 = add nuw i32 %8, 1
  %11 = icmp ne i32 %9, 0
  %12 = icmp sgt i32 %10, 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %231

14:                                               ; preds = %6
  %15 = add nsw i32 %4, -5
  %16 = add i32 %4, 1
  %17 = icmp eq i32 %5, 0
  %18 = getelementptr inbounds i8, ptr %7, i64 -2
  %19 = zext i32 %9 to i64
  br label %21

20:                                               ; preds = %155, %150, %99, %87, %216
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

21:                                               ; preds = %14, %198
  %22 = phi i32 [ 0, %14 ], [ %170, %198 ]
  %23 = phi ptr [ %0, %14 ], [ %201, %198 ]
  %24 = phi i32 [ 0, %14 ], [ %128, %198 ]
  %25 = phi i32 [ 4, %14 ], [ %200, %198 ]
  %26 = phi i32 [ %15, %14 ], [ %199, %198 ]
  %27 = phi i32 [ %8, %14 ], [ %185, %198 ]
  %28 = phi i32 [ %10, %14 ], [ %147, %198 ]
  %29 = phi i32 [ %16, %14 ], [ %184, %198 ]
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %21
  %32 = icmp ult i32 %24, %9
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = zext i32 %24 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i64 [ %34, %33 ], [ %41, %40 ]
  %37 = getelementptr inbounds i16, ptr %2, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !5
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %19
  br i1 %42, label %205, label %35, !llvm.loop !31

43:                                               ; preds = %35
  %44 = trunc i64 %36 to i32
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i32 [ %24, %31 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, %9
  br i1 %47, label %205, label %48

48:                                               ; preds = %45
  %49 = add i32 %24, 24
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %66, label %51

51:                                               ; preds = %48
  %52 = shl i32 65535, %25
  br i1 %17, label %72, label %53

53:                                               ; preds = %51, %53
  %54 = phi i32 [ %64, %53 ], [ %49, %51 ]
  %55 = phi ptr [ %62, %53 ], [ %23, %51 ]
  %56 = phi i32 [ %63, %53 ], [ %26, %51 ]
  %57 = add i32 %56, %52
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %55, align 1, !tbaa !9
  %59 = lshr i32 %57, 8
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %60, ptr %61, align 1, !tbaa !9
  %62 = getelementptr inbounds i8, ptr %55, i64 2
  %63 = lshr i32 %57, 16
  %64 = add i32 %54, 24
  %65 = icmp ult i32 %46, %64
  br i1 %65, label %66, label %53, !llvm.loop !32

66:                                               ; preds = %53, %77, %48
  %67 = phi i32 [ %26, %48 ], [ %84, %77 ], [ %63, %53 ]
  %68 = phi ptr [ %23, %48 ], [ %83, %77 ], [ %62, %53 ]
  %69 = phi i32 [ %24, %48 ], [ %73, %77 ], [ %54, %53 ]
  %70 = add i32 %69, 3
  %71 = icmp ult i32 %46, %70
  br i1 %71, label %99, label %87

72:                                               ; preds = %51, %77
  %73 = phi i32 [ %85, %77 ], [ %49, %51 ]
  %74 = phi ptr [ %83, %77 ], [ %23, %51 ]
  %75 = phi i32 [ %84, %77 ], [ %26, %51 ]
  %76 = icmp ugt ptr %74, %18
  br i1 %76, label %231, label %77

77:                                               ; preds = %72
  %78 = add i32 %75, %52
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %74, align 1, !tbaa !9
  %80 = lshr i32 %78, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %81, ptr %82, align 1, !tbaa !9
  %83 = getelementptr inbounds i8, ptr %74, i64 2
  %84 = lshr i32 %78, 16
  %85 = add i32 %73, 24
  %86 = icmp ult i32 %46, %85
  br i1 %86, label %66, label %72, !llvm.loop !32

87:                                               ; preds = %66, %93
  %88 = phi i32 [ %97, %93 ], [ %70, %66 ]
  %89 = phi i32 [ %94, %93 ], [ %25, %66 ]
  %90 = phi i32 [ %96, %93 ], [ %67, %66 ]
  %91 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %89, i32 2), !nosanitize !30
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !30
  br i1 %92, label %20, label %93, !nosanitize !30

93:                                               ; preds = %87
  %94 = extractvalue { i32, i1 } %91, 0, !nosanitize !30
  %95 = shl i32 3, %89
  %96 = add i32 %95, %90
  %97 = add i32 %88, 3
  %98 = icmp ult i32 %46, %97
  br i1 %98, label %99, label %87, !llvm.loop !33

99:                                               ; preds = %93, %66
  %100 = phi i32 [ %67, %66 ], [ %96, %93 ]
  %101 = phi i32 [ %25, %66 ], [ %94, %93 ]
  %102 = phi i32 [ %69, %66 ], [ %88, %93 ]
  %103 = sub i32 %46, %102
  %104 = shl i32 %103, %101
  %105 = add i32 %104, %100
  %106 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 2), !nosanitize !30
  %107 = extractvalue { i32, i1 } %106, 0, !nosanitize !30
  %108 = extractvalue { i32, i1 } %106, 1, !nosanitize !30
  br i1 %108, label %20, label %109, !nosanitize !30

109:                                              ; preds = %99
  %110 = icmp sgt i32 %107, 16
  br i1 %110, label %111, label %123

111:                                              ; preds = %109
  %112 = icmp ugt ptr %68, %18
  %113 = select i1 %17, i1 %112, i1 false
  br i1 %113, label %231, label %114

114:                                              ; preds = %111
  %115 = trunc i32 %105 to i8
  store i8 %115, ptr %68, align 1, !tbaa !9
  %116 = lshr i32 %105, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 %117, ptr %118, align 1, !tbaa !9
  %119 = add nsw i32 %107, -16
  %120 = lshr i32 %105, 16
  %121 = getelementptr inbounds i8, ptr %68, i64 2
  br label %123

122:                                              ; preds = %161, %140, %136, %174
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

123:                                              ; preds = %109, %114, %21
  %124 = phi i32 [ %26, %21 ], [ %105, %109 ], [ %120, %114 ]
  %125 = phi i32 [ %25, %21 ], [ %107, %109 ], [ %119, %114 ]
  %126 = phi i32 [ %24, %21 ], [ %46, %109 ], [ %46, %114 ]
  %127 = phi ptr [ %23, %21 ], [ %68, %109 ], [ %121, %114 ]
  %128 = add nuw i32 %126, 1
  %129 = zext i32 %126 to i64
  %130 = getelementptr inbounds i16, ptr %2, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !5
  %132 = sext i16 %131 to i32
  %133 = add i32 %27, 1073741824
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %136, label %135, !nosanitize !30

135:                                              ; preds = %123
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !30
  unreachable, !nosanitize !30

136:                                              ; preds = %123
  %137 = shl nsw i32 %27, 1
  %138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %137, i32 -1)
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !30
  br i1 %139, label %122, label %140, !nosanitize !30

140:                                              ; preds = %136
  %141 = extractvalue { i32, i1 } %138, 0, !nosanitize !30
  %142 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %141, i32 %28), !nosanitize !30
  %143 = extractvalue { i32, i1 } %142, 0, !nosanitize !30
  %144 = extractvalue { i32, i1 } %142, 1, !nosanitize !30
  br i1 %144, label %122, label %145, !nosanitize !30

145:                                              ; preds = %140
  %146 = tail call i32 @llvm.abs.i32(i32 %132, i1 true)
  %147 = sub i32 %28, %146
  %148 = add nsw i32 %132, 1
  %149 = icmp slt i32 %148, %27
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %148, i32 %143), !nosanitize !30
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !30
  br i1 %152, label %20, label %153, !nosanitize !30

153:                                              ; preds = %150
  %154 = extractvalue { i32, i1 } %151, 0, !nosanitize !30
  br label %155

155:                                              ; preds = %153, %145
  %156 = phi i32 [ %154, %153 ], [ %148, %145 ]
  %157 = shl i32 %156, %125
  %158 = add i32 %157, %124
  %159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %125, i32 %29), !nosanitize !30
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !30
  br i1 %160, label %20, label %161, !nosanitize !30

161:                                              ; preds = %155
  %162 = extractvalue { i32, i1 } %159, 0, !nosanitize !30
  %163 = icmp slt i32 %156, %143
  %164 = zext i1 %163 to i32
  %165 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %162, i32 %164), !nosanitize !30
  %166 = extractvalue { i32, i1 } %165, 0, !nosanitize !30
  %167 = extractvalue { i32, i1 } %165, 1, !nosanitize !30
  br i1 %167, label %122, label %168, !nosanitize !30

168:                                              ; preds = %161
  %169 = icmp eq i32 %156, 1
  %170 = zext i1 %169 to i32
  %171 = icmp sgt i32 %147, 0
  br i1 %171, label %172, label %231

172:                                              ; preds = %168
  %173 = icmp slt i32 %147, %27
  br i1 %173, label %174, label %183

174:                                              ; preds = %172, %179
  %175 = phi i32 [ %181, %179 ], [ %27, %172 ]
  %176 = phi i32 [ %180, %179 ], [ %29, %172 ]
  %177 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %176, i32 -1)
  %178 = extractvalue { i32, i1 } %177, 1, !nosanitize !30
  br i1 %178, label %122, label %179, !nosanitize !30

179:                                              ; preds = %174
  %180 = extractvalue { i32, i1 } %177, 0, !nosanitize !30
  %181 = ashr i32 %175, 1
  %182 = icmp slt i32 %147, %181
  br i1 %182, label %174, label %183, !llvm.loop !34

183:                                              ; preds = %179, %172
  %184 = phi i32 [ %29, %172 ], [ %180, %179 ]
  %185 = phi i32 [ %27, %172 ], [ %181, %179 ]
  %186 = icmp sgt i32 %166, 16
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = icmp ugt ptr %127, %18
  %189 = select i1 %17, i1 %188, i1 false
  br i1 %189, label %231, label %190

190:                                              ; preds = %187
  %191 = trunc i32 %158 to i8
  store i8 %191, ptr %127, align 1, !tbaa !9
  %192 = lshr i32 %158, 8
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds i8, ptr %127, i64 1
  store i8 %193, ptr %194, align 1, !tbaa !9
  %195 = add nsw i32 %166, -16
  %196 = lshr i32 %158, 16
  %197 = getelementptr inbounds i8, ptr %127, i64 2
  br label %198

198:                                              ; preds = %190, %183
  %199 = phi i32 [ %196, %190 ], [ %158, %183 ]
  %200 = phi i32 [ %195, %190 ], [ %166, %183 ]
  %201 = phi ptr [ %197, %190 ], [ %127, %183 ]
  %202 = icmp ult i32 %128, %9
  %203 = icmp ne i32 %147, 1
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %21, label %205, !llvm.loop !35

205:                                              ; preds = %198, %45, %40
  %206 = phi i32 [ %28, %40 ], [ %28, %45 ], [ %147, %198 ]
  %207 = phi i32 [ %26, %40 ], [ %26, %45 ], [ %199, %198 ]
  %208 = phi i32 [ %25, %40 ], [ %25, %45 ], [ %200, %198 ]
  %209 = phi ptr [ %23, %40 ], [ %23, %45 ], [ %201, %198 ]
  %210 = icmp eq i32 %206, 1
  br i1 %210, label %211, label %231

211:                                              ; preds = %205
  %212 = icmp eq i32 %5, 0
  %213 = getelementptr inbounds i8, ptr %7, i64 -2
  %214 = icmp ugt ptr %209, %213
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %231, label %216

216:                                              ; preds = %211
  %217 = trunc i32 %207 to i8
  store i8 %217, ptr %209, align 1, !tbaa !9
  %218 = lshr i32 %207, 8
  %219 = trunc i32 %218 to i8
  %220 = getelementptr inbounds i8, ptr %209, i64 1
  store i8 %219, ptr %220, align 1, !tbaa !9
  %221 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %208, i32 7), !nosanitize !30
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !30
  br i1 %222, label %20, label %223, !nosanitize !30

223:                                              ; preds = %216
  %224 = extractvalue { i32, i1 } %221, 0, !nosanitize !30
  %225 = sdiv i32 %224, 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, ptr %209, i64 %226
  %228 = ptrtoint ptr %227 to i64
  %229 = ptrtoint ptr %0 to i64
  %230 = sub i64 %228, %229
  br label %231

231:                                              ; preds = %168, %111, %187, %72, %6, %211, %205, %223
  %232 = phi i64 [ %230, %223 ], [ -1, %205 ], [ -70, %211 ], [ -1, %6 ], [ -70, %72 ], [ -1, %168 ], [ -70, %111 ], [ -70, %187 ]
  ret i64 %232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = trunc i64 %1 to i32
  %6 = add i32 %5, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true), !range !28
  %8 = xor i32 %7, 31
  %9 = sub i32 %8, %3
  %10 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true), !range !28
  %11 = sub nuw nsw i32 32, %10
  %12 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 true), !range !28
  %13 = sub nuw nsw i32 33, %12
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = icmp eq i32 %0, 0
  %16 = select i1 %15, i32 11, i32 %0
  %17 = tail call i32 @llvm.umin.i32(i32 %9, i32 %16)
  %18 = tail call i32 @llvm.umax.i32(i32 %14, i32 %17)
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 5)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 12)
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @FSE_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true), !range !28
  %7 = sub nsw i32 29, %6
  %8 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true), !range !28
  %9 = sub nuw nsw i32 32, %8
  %10 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 true), !range !28
  %11 = sub nuw nsw i32 33, %10
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %13 = icmp eq i32 %0, 0
  %14 = select i1 %13, i32 11, i32 %0
  %15 = tail call i32 @llvm.umin.i32(i32 %7, i32 %14)
  %16 = tail call i32 @llvm.umax.i32(i32 %12, i32 %15)
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 5)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 12)
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_normalizeCount(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 11, i32 %1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %347, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 12
  br i1 %11, label %347, label %12

12:                                               ; preds = %10
  %13 = trunc i64 %3 to i32
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 true), !range !28
  %15 = sub nuw nsw i32 32, %14
  %16 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true), !range !28
  %17 = sub nuw nsw i32 33, %16
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = icmp ult i32 %8, %18
  br i1 %19, label %347, label %20

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
  %38 = getelementptr inbounds i32, ptr %2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !36
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %40, %3
  br i1 %41, label %347, label %42

42:                                               ; preds = %32
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %0, i64 %37
  store i16 0, ptr %45, align 2, !tbaa !5
  br label %85

46:                                               ; preds = %42
  %47 = icmp ugt i32 %39, %31
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds i16, ptr %0, i64 %37
  store i16 %22, ptr %49, align 2, !tbaa !5
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !30
  br i1 %51, label %52, label %53, !nosanitize !30

52:                                               ; preds = %74, %48
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

53:                                               ; preds = %48
  %54 = extractvalue { i32, i1 } %50, 0, !nosanitize !30
  br label %85

55:                                               ; preds = %46
  %56 = mul i64 %26, %40
  %57 = lshr i64 %56, %24
  %58 = trunc i64 %57 to i16
  %59 = trunc i64 %57 to i32
  %60 = and i32 %59, 65528
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = and i64 %57, 65535
  %64 = shl i64 %63, %24
  %65 = sub i64 %56, %64
  %66 = getelementptr inbounds [8 x i32], ptr @FSE_normalizeCount.rtbTable, i64 0, i64 %63
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
  %77 = getelementptr inbounds i16, ptr %0, i64 %37
  store i16 %75, ptr %77, align 2, !tbaa !5
  %78 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %33, i32 %76), !nosanitize !30
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !30
  br i1 %79, label %52, label %80, !nosanitize !30

80:                                               ; preds = %74
  %81 = icmp ugt i16 %75, %34
  %82 = tail call i16 @llvm.umax.i16(i16 %75, i16 %34)
  %83 = select i1 %81, i32 %36, i32 %35
  %84 = extractvalue { i32, i1 } %78, 0, !nosanitize !30
  br label %85

85:                                               ; preds = %53, %80, %44
  %86 = phi i32 [ %35, %44 ], [ %35, %53 ], [ %83, %80 ]
  %87 = phi i16 [ %34, %44 ], [ %34, %53 ], [ %82, %80 ]
  %88 = phi i32 [ %33, %44 ], [ %54, %53 ], [ %84, %80 ]
  %89 = add i32 %36, 1
  %90 = icmp ugt i32 %89, %4
  br i1 %90, label %91, label %32, !llvm.loop !37

91:                                               ; preds = %85
  %92 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %88), !nosanitize !30
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !30
  br i1 %93, label %94, label %95, !nosanitize !30

94:                                               ; preds = %91
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !30
  unreachable, !nosanitize !30

95:                                               ; preds = %91
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !30
  %97 = zext i32 %86 to i64
  %98 = getelementptr inbounds i16, ptr %0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !5
  %100 = ashr i16 %99, 1
  %101 = sext i16 %100 to i32
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %341, label %103

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
  %115 = getelementptr inbounds i32, ptr %2, i64 %112
  %116 = load i32, ptr %115, align 4, !tbaa !36
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = getelementptr inbounds i16, ptr %0, i64 %112
  store i16 0, ptr %119, align 2, !tbaa !5
  br label %135

120:                                              ; preds = %111
  %121 = icmp ugt i32 %116, %31
  br i1 %121, label %127, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds i16, ptr %0, i64 %112
  store i16 %22, ptr %123, align 2, !tbaa !5
  %124 = add i32 %114, 1
  %125 = zext i32 %116 to i64
  %126 = sub i64 %113, %125
  br label %135

127:                                              ; preds = %120
  %128 = icmp ugt i32 %116, %108
  %129 = getelementptr inbounds i16, ptr %0, i64 %112
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
  br i1 %142, label %347, label %143

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
  %163 = getelementptr inbounds i16, ptr %0, i64 %159
  %164 = load i16, ptr %163, align 2, !tbaa !5
  %165 = icmp eq i16 %164, -2
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = getelementptr inbounds i32, ptr %2, i64 %159
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
  %178 = getelementptr inbounds i16, ptr %0, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = icmp eq i16 %179, -2
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = getelementptr inbounds i32, ptr %2, i64 %177
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
  %196 = phi i32 [ undef, %148 ], [ %190, %189 ]
  %197 = phi i64 [ undef, %148 ], [ %191, %189 ]
  %198 = phi i64 [ 0, %148 ], [ %192, %189 ]
  %199 = phi i64 [ %137, %148 ], [ %191, %189 ]
  %200 = phi i32 [ %136, %148 ], [ %190, %189 ]
  %201 = icmp eq i64 %154, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds i16, ptr %0, i64 %198
  %204 = load i16, ptr %203, align 2, !tbaa !5
  %205 = icmp eq i16 %204, -2
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = getelementptr inbounds i32, ptr %2, i64 %198
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
  br i1 %222, label %223, label %288

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
  %233 = getelementptr inbounds i32, ptr %2, i64 %229
  %234 = load i32, ptr %233, align 4, !tbaa !36
  %235 = icmp ugt i32 %234, %230
  %236 = trunc i64 %229 to i32
  %237 = select i1 %235, i32 %236, i32 %231
  %238 = tail call i32 @llvm.umax.i32(i32 %234, i32 %230)
  %239 = or disjoint i64 %229, 1
  %240 = getelementptr inbounds i32, ptr %2, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !36
  %242 = icmp ugt i32 %241, %238
  %243 = trunc i64 %239 to i32
  %244 = select i1 %242, i32 %243, i32 %237
  %245 = tail call i32 @llvm.umax.i32(i32 %241, i32 %238)
  %246 = or disjoint i64 %229, 2
  %247 = getelementptr inbounds i32, ptr %2, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !36
  %249 = icmp ugt i32 %248, %245
  %250 = trunc i64 %246 to i32
  %251 = select i1 %249, i32 %250, i32 %244
  %252 = tail call i32 @llvm.umax.i32(i32 %248, i32 %245)
  %253 = or disjoint i64 %229, 3
  %254 = getelementptr inbounds i32, ptr %2, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !36
  %256 = icmp ugt i32 %255, %252
  %257 = trunc i64 %253 to i32
  %258 = select i1 %256, i32 %257, i32 %251
  %259 = tail call i32 @llvm.umax.i32(i32 %255, i32 %252)
  %260 = add nuw nsw i64 %229, 4
  %261 = add i64 %232, 4
  %262 = icmp eq i64 %261, %227
  br i1 %262, label %263, label %228, !llvm.loop !40

263:                                              ; preds = %228, %223
  %264 = phi i32 [ undef, %223 ], [ %258, %228 ]
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
  %274 = getelementptr inbounds i32, ptr %2, i64 %270
  %275 = load i32, ptr %274, align 4, !tbaa !36
  %276 = icmp ugt i32 %275, %271
  %277 = trunc i64 %270 to i32
  %278 = select i1 %276, i32 %277, i32 %272
  %279 = tail call i32 @llvm.umax.i32(i32 %275, i32 %271)
  %280 = add nuw nsw i64 %270, 1
  %281 = add i64 %273, 1
  %282 = icmp eq i64 %281, %224
  br i1 %282, label %283, label %269, !llvm.loop !41

283:                                              ; preds = %269, %263
  %284 = phi i32 [ %264, %263 ], [ %278, %269 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i16, ptr %0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !5
  br label %341

288:                                              ; preds = %218
  %289 = icmp eq i64 %221, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %288
  %291 = icmp eq i32 %219, 0
  br i1 %291, label %347, label %292

292:                                              ; preds = %290, %302
  %293 = phi i32 [ %306, %302 ], [ 0, %290 ]
  %294 = phi i32 [ %303, %302 ], [ %219, %290 ]
  %295 = zext i32 %293 to i64
  %296 = getelementptr inbounds i16, ptr %0, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !5
  %298 = icmp sgt i16 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = add i32 %294, -1
  %301 = add nuw i16 %297, 1
  store i16 %301, ptr %296, align 2, !tbaa !5
  br label %302

302:                                              ; preds = %299, %292
  %303 = phi i32 [ %300, %299 ], [ %294, %292 ]
  %304 = add i32 %293, 1
  %305 = icmp eq i32 %293, %4
  %306 = select i1 %305, i32 0, i32 %304
  %307 = icmp eq i32 %303, 0
  br i1 %307, label %347, label %292, !llvm.loop !43

308:                                              ; preds = %288
  %309 = add nsw i64 %24, -1
  %310 = shl nsw i64 -1, %309
  %311 = xor i64 %310, -1
  %312 = zext i32 %219 to i64
  %313 = shl i64 %312, %24
  %314 = add i64 %313, %311
  %315 = and i64 %221, 4294967295
  %316 = udiv i64 %314, %315
  br label %317

317:                                              ; preds = %337, %308
  %318 = phi i32 [ 0, %308 ], [ %339, %337 ]
  %319 = phi i64 [ %311, %308 ], [ %338, %337 ]
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds i16, ptr %0, i64 %320
  %322 = load i16, ptr %321, align 2, !tbaa !5
  %323 = icmp eq i16 %322, -2
  br i1 %323, label %324, label %337

324:                                              ; preds = %317
  %325 = getelementptr inbounds i32, ptr %2, i64 %320
  %326 = load i32, ptr %325, align 4, !tbaa !36
  %327 = zext i32 %326 to i64
  %328 = mul i64 %316, %327
  %329 = add i64 %328, %319
  %330 = lshr i64 %319, %24
  %331 = lshr i64 %329, %24
  %332 = icmp eq i64 %331, %330
  br i1 %332, label %347, label %333

333:                                              ; preds = %324
  %334 = trunc i64 %330 to i16
  %335 = trunc i64 %331 to i16
  %336 = sub i16 %335, %334
  store i16 %336, ptr %321, align 2, !tbaa !5
  br label %337

337:                                              ; preds = %333, %317
  %338 = phi i64 [ %329, %333 ], [ %319, %317 ]
  %339 = add i32 %318, 1
  %340 = icmp ugt i32 %339, %4
  br i1 %340, label %347, label %317, !llvm.loop !44

341:                                              ; preds = %95, %283
  %342 = phi i32 [ %219, %283 ], [ %88, %95 ]
  %343 = phi i16 [ %287, %283 ], [ %99, %95 ]
  %344 = phi ptr [ %286, %283 ], [ %98, %95 ]
  %345 = trunc i32 %342 to i16
  %346 = add i16 %343, %345
  store i16 %346, ptr %344, align 2, !tbaa !5
  br label %347

347:                                              ; preds = %32, %324, %337, %302, %341, %290, %140, %12, %10, %6
  %348 = phi i64 [ -1, %6 ], [ -44, %10 ], [ -1, %12 ], [ %29, %140 ], [ %29, %290 ], [ %29, %341 ], [ %29, %302 ], [ -1, %324 ], [ %29, %337 ], [ 0, %32 ]
  ret i64 %348
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @FSE_buildCTable_rle(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds i16, ptr %0, i64 2
  %4 = getelementptr inbounds i32, ptr %0, i64 2
  store i16 0, ptr %0, align 2, !tbaa !5
  %5 = zext i8 %1 to i16
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !5
  store i16 0, ptr %3, align 2, !tbaa !5
  %7 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 0, ptr %7, align 2, !tbaa !5
  %8 = zext i8 %1 to i64
  %9 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %4, i64 %8, i32 1
  store i32 0, ptr %10, align 4, !tbaa !24
  store i32 0, ptr %9, align 4, !tbaa !27
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @FSE_compress_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #6 {
  %6 = lshr i64 %3, 7
  %7 = add i64 %3, 12
  %8 = add i64 %7, %6
  %9 = icmp ule i64 %8, %1
  %10 = zext i1 %9 to i32
  %11 = tail call fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %10)
  ret i64 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #6 {
  %7 = getelementptr inbounds i8, ptr %2, i64 %3
  %8 = icmp ult i64 %3, 3
  br i1 %8, label %403, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 %1
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
  %19 = getelementptr inbounds i16, ptr %4, i64 2
  %20 = icmp eq i16 %17, 0
  %21 = add nsw i32 %18, -1
  %22 = shl nuw i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = select i1 %20, i64 1, i64 %23
  %25 = getelementptr inbounds i32, ptr %19, i64 %24
  %26 = getelementptr inbounds i8, ptr %7, i64 -2
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %25, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa.struct !45
  %31 = getelementptr inbounds i8, ptr %29, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa.struct !46
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
  %48 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %25, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa.struct !46
  %51 = add i32 %50, 32768
  %52 = and i32 %51, -65536
  %53 = sub i32 %52, %50
  %54 = zext i32 %53 to i64
  %55 = lshr i32 %51, 16
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = getelementptr i16, ptr %19, i64 %57
  %59 = load i32, ptr %48, align 4, !tbaa.struct !45
  %60 = sext i32 %59 to i64
  %61 = getelementptr i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = zext i16 %62 to i64
  %64 = load i8, ptr %44, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %25, i64 %65
  %67 = getelementptr inbounds i8, ptr %66, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa.struct !46
  %69 = zext i32 %68 to i64
  %70 = add nuw nsw i64 %69, %63
  %71 = lshr i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %71
  %74 = load i32, ptr %73, align 4, !tbaa !36
  %75 = zext i32 %74 to i64
  %76 = and i64 %75, %63
  %77 = lshr i64 %63, %71
  %78 = load i32, ptr %66, align 4, !tbaa.struct !45
  %79 = sext i32 %78 to i64
  %80 = getelementptr i16, ptr %19, i64 %77
  %81 = getelementptr i16, ptr %80, i64 %79
  %82 = load i16, ptr %81, align 2, !tbaa !5
  %83 = icmp eq i32 %5, 0
  %84 = lshr i64 %70, 19
  store i64 %76, ptr %0, align 1, !tbaa !12
  %85 = getelementptr inbounds i8, ptr %0, i64 %84
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
  %101 = getelementptr inbounds i16, ptr %4, i64 2
  %102 = icmp eq i16 %99, 0
  %103 = add nsw i32 %100, -1
  %104 = shl nuw i32 1, %103
  %105 = sext i32 %104 to i64
  %106 = select i1 %102, i64 1, i64 %105
  %107 = getelementptr inbounds i32, ptr %101, i64 %106
  %108 = zext i8 %98 to i64
  %109 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %107, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa.struct !45
  %111 = getelementptr inbounds i8, ptr %109, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa.struct !46
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
  %127 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %107, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa.struct !45
  %129 = getelementptr inbounds i8, ptr %127, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa.struct !46
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
  %159 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 4
  %161 = load i32, ptr %160, align 4, !tbaa.struct !46
  %162 = zext i32 %161 to i64
  %163 = add nuw nsw i64 %162, %151
  %164 = lshr i64 %163, 16
  %165 = trunc i64 %164 to i32
  %166 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !36
  %168 = zext i32 %167 to i64
  %169 = and i64 %168, %151
  %170 = zext nneg i32 %144 to i64
  %171 = shl nuw nsw i64 %169, %170
  %172 = add nuw nsw i32 %144, %165
  %173 = getelementptr inbounds i16, ptr %4, i64 2
  %174 = lshr i64 %151, %164
  %175 = load i32, ptr %159, align 4, !tbaa.struct !45
  %176 = sext i32 %175 to i64
  %177 = getelementptr i16, ptr %173, i64 %174
  %178 = getelementptr i16, ptr %177, i64 %176
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = zext i16 %179 to i64
  %181 = getelementptr inbounds i8, ptr %150, i64 -2
  %182 = load i8, ptr %181, align 1, !tbaa !9
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %183
  %185 = getelementptr inbounds i8, ptr %184, i64 4
  %186 = load i32, ptr %185, align 4, !tbaa.struct !46
  %187 = zext i32 %186 to i64
  %188 = add nuw nsw i64 %187, %152
  %189 = lshr i64 %188, 16
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %189
  %192 = load i32, ptr %191, align 4, !tbaa !36
  %193 = zext i32 %192 to i64
  %194 = and i64 %193, %152
  %195 = zext nneg i32 %172 to i64
  %196 = shl i64 %194, %195
  %197 = or i64 %171, %196
  %198 = or i64 %197, %143
  %199 = add nuw nsw i32 %172, %190
  %200 = lshr i64 %152, %189
  %201 = load i32, ptr %184, align 4, !tbaa.struct !45
  %202 = sext i32 %201 to i64
  %203 = getelementptr i16, ptr %173, i64 %200
  %204 = getelementptr i16, ptr %203, i64 %202
  %205 = load i16, ptr %204, align 2, !tbaa !5
  %206 = zext i16 %205 to i64
  %207 = icmp eq i32 %5, 0
  %208 = lshr i32 %199, 3
  %209 = zext nneg i32 %208 to i64
  store i64 %198, ptr %148, align 1, !tbaa !12
  %210 = getelementptr inbounds i8, ptr %148, i64 %209
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
  %230 = getelementptr inbounds i16, ptr %4, i64 2
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
  %242 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %241
  %243 = getelementptr inbounds i8, ptr %242, i64 4
  %244 = load i32, ptr %243, align 4, !tbaa.struct !46
  %245 = zext i32 %244 to i64
  %246 = add nuw nsw i64 %234, %245
  %247 = lshr i64 %246, 16
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %247
  %250 = load i32, ptr %249, align 4, !tbaa !36
  %251 = zext i32 %250 to i64
  %252 = and i64 %234, %251
  %253 = zext nneg i32 %237 to i64
  %254 = shl nuw nsw i64 %252, %253
  %255 = add nuw nsw i32 %237, %248
  %256 = lshr i64 %234, %247
  %257 = load i32, ptr %242, align 4, !tbaa.struct !45
  %258 = sext i32 %257 to i64
  %259 = getelementptr i16, ptr %230, i64 %256
  %260 = getelementptr i16, ptr %259, i64 %258
  %261 = load i16, ptr %260, align 2, !tbaa !5
  %262 = zext i16 %261 to i64
  %263 = getelementptr inbounds i8, ptr %233, i64 -2
  %264 = load i8, ptr %263, align 1, !tbaa !9
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %265
  %267 = getelementptr inbounds i8, ptr %266, i64 4
  %268 = load i32, ptr %267, align 4, !tbaa.struct !46
  %269 = zext i32 %268 to i64
  %270 = add nuw nsw i64 %236, %269
  %271 = lshr i64 %270, 16
  %272 = trunc i64 %271 to i32
  %273 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %271
  %274 = load i32, ptr %273, align 4, !tbaa !36
  %275 = zext i32 %274 to i64
  %276 = and i64 %236, %275
  %277 = zext nneg i32 %255 to i64
  %278 = shl i64 %276, %277
  %279 = add nuw nsw i32 %255, %272
  %280 = lshr i64 %236, %271
  %281 = load i32, ptr %266, align 4, !tbaa.struct !45
  %282 = sext i32 %281 to i64
  %283 = getelementptr i16, ptr %230, i64 %280
  %284 = getelementptr i16, ptr %283, i64 %282
  %285 = load i16, ptr %284, align 2, !tbaa !5
  %286 = zext i16 %285 to i64
  %287 = getelementptr inbounds i8, ptr %233, i64 -3
  %288 = load i8, ptr %287, align 1, !tbaa !9
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %289
  %291 = getelementptr inbounds i8, ptr %290, i64 4
  %292 = load i32, ptr %291, align 4, !tbaa.struct !46
  %293 = zext i32 %292 to i64
  %294 = add nuw nsw i64 %293, %262
  %295 = lshr i64 %294, 16
  %296 = trunc i64 %295 to i32
  %297 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %295
  %298 = load i32, ptr %297, align 4, !tbaa !36
  %299 = zext i32 %298 to i64
  %300 = and i64 %299, %262
  %301 = zext nneg i32 %279 to i64
  %302 = shl i64 %300, %301
  %303 = add nuw nsw i32 %279, %296
  %304 = lshr i64 %262, %295
  %305 = load i32, ptr %290, align 4, !tbaa.struct !45
  %306 = sext i32 %305 to i64
  %307 = getelementptr i16, ptr %230, i64 %304
  %308 = getelementptr i16, ptr %307, i64 %306
  %309 = load i16, ptr %308, align 2, !tbaa !5
  %310 = zext i16 %309 to i64
  %311 = getelementptr inbounds i8, ptr %233, i64 -4
  %312 = load i8, ptr %311, align 1, !tbaa !9
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %146, i64 %313
  %315 = getelementptr inbounds i8, ptr %314, i64 4
  %316 = load i32, ptr %315, align 4, !tbaa.struct !46
  %317 = zext i32 %316 to i64
  %318 = add nuw nsw i64 %317, %286
  %319 = lshr i64 %318, 16
  %320 = trunc i64 %319 to i32
  %321 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %319
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
  %333 = load i32, ptr %314, align 4, !tbaa.struct !45
  %334 = sext i32 %333 to i64
  %335 = getelementptr i16, ptr %230, i64 %332
  %336 = getelementptr i16, ptr %335, i64 %334
  %337 = load i16, ptr %336, align 2, !tbaa !5
  %338 = zext i16 %337 to i64
  %339 = lshr i32 %331, 3
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr inbounds i8, ptr %235, i64 %340
  %342 = icmp ugt ptr %341, %11
  %343 = select i1 %231, i1 %342, i1 false
  %344 = select i1 %343, ptr %11, ptr %341
  store i64 %330, ptr %235, align 1
  %345 = and i32 %331, 7
  %346 = shl nuw nsw i64 %340, 3
  %347 = lshr i64 %330, %346
  %348 = icmp ugt ptr %311, %2
  br i1 %348, label %232, label %349, !llvm.loop !47

349:                                              ; preds = %232, %221
  %350 = phi i64 [ %222, %221 ], [ %347, %232 ]
  %351 = phi i32 [ %223, %221 ], [ %345, %232 ]
  %352 = phi i64 [ %224, %221 ], [ %338, %232 ]
  %353 = phi ptr [ %225, %221 ], [ %344, %232 ]
  %354 = phi i64 [ %226, %221 ], [ %310, %232 ]
  %355 = zext nneg i32 %145 to i64
  %356 = getelementptr inbounds [32 x i32], ptr @BIT_mask, i64 0, i64 %355
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
  %366 = getelementptr inbounds i8, ptr %353, i64 %365
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
  %379 = getelementptr inbounds i8, ptr %368, i64 %378
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
  %391 = getelementptr inbounds i8, ptr %381, i64 %390
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
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
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
!28 = !{i32 0, i32 33}
!29 = distinct !{!29, !11}
!30 = !{}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
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
!45 = !{i64 0, i64 4, !36, i64 4, i64 4, !36}
!46 = !{i64 0, i64 4, !36}
!47 = distinct !{!47, !11}
