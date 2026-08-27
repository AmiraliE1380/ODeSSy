; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/fse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -44, 1) i64 @FSE_buildCTable_wksp(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = shl nuw i32 1, %3
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = icmp eq i32 %3, 0
  %11 = lshr i32 %7, 1
  %12 = select i1 %10, i32 1, i32 %11
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %13
  %15 = lshr i32 %7, 3
  %16 = add nuw nsw i32 %15, 3
  %17 = add nuw nsw i32 %16, %11
  %18 = add i32 %2, 1
  %19 = add i32 %2, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %20
  %22 = zext nneg i32 %3 to i64
  %23 = shl nuw i64 1, %22
  %24 = add nuw i64 %23, %20
  %25 = shl i64 %24, 1
  %26 = and i64 %25, -4
  %27 = add i64 %26, 8
  %28 = icmp ugt i64 %27, %5
  br i1 %28, label %.loopexit, label %29

29:                                               ; preds = %6
  %30 = trunc i32 %3 to i16
  store i16 %30, ptr %0, align 2, !tbaa !5
  %31 = trunc i32 %2 to i16
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %31, ptr %32, align 2, !tbaa !5
  store i16 0, ptr %4, align 2, !tbaa !5
  %33 = icmp eq i32 %18, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = trunc i32 %7 to i16
  %36 = add i16 %35, 1
  store i16 %36, ptr %4, align 2, !tbaa !5
  %37 = zext i32 %7 to i64
  br label %.loopexit17

38:                                               ; preds = %29
  %39 = tail call i32 @llvm.umax.i32(i32 %19, i32 2)
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %59, %38
  %42 = phi i64 [ 1, %38 ], [ %61, %59 ]
  %43 = phi i32 [ %8, %38 ], [ %60, %59 ]
  %44 = add nsw i64 %42, -1
  %45 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = icmp eq i16 %46, -1
  %48 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %44
  %49 = load i16, ptr %48, align 2, !tbaa !5
  %50 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %42
  br i1 %47, label %51, label %57

51:                                               ; preds = %41
  %52 = add i16 %49, 1
  store i16 %52, ptr %50, align 2, !tbaa !5
  %53 = trunc i64 %44 to i8
  %54 = add i32 %43, -1
  %55 = zext i32 %43 to i64
  %56 = getelementptr inbounds nuw i8, ptr %21, i64 %55
  store i8 %53, ptr %56, align 1, !tbaa !9
  br label %59

57:                                               ; preds = %41
  %58 = add i16 %49, %46
  store i16 %58, ptr %50, align 2, !tbaa !5
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %54, %51 ], [ %43, %57 ]
  %61 = add nuw nsw i64 %42, 1
  %62 = icmp eq i64 %61, %40
  br i1 %62, label %63, label %41, !llvm.loop !10

63:                                               ; preds = %59
  %64 = trunc i32 %7 to i16
  %65 = add i16 %64, 1
  %66 = zext i32 %18 to i64
  %67 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %66
  store i16 %65, ptr %67, align 2, !tbaa !5
  %68 = icmp eq i32 %60, %8
  br i1 %68, label %69, label %.preheader

69:                                               ; preds = %63
  %70 = zext i32 %7 to i64
  %71 = getelementptr inbounds nuw i8, ptr %21, i64 %70
  br label %78

.loopexit17:                                      ; preds = %.loopexit16, %34
  %72 = phi i64 [ %37, %34 ], [ %70, %.loopexit16 ]
  %73 = zext nneg i32 %17 to i64
  %74 = zext nneg i32 %8 to i64
  %75 = shl nuw i32 %17, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw i8, ptr %21, i64 %72
  br label %118

78:                                               ; preds = %.loopexit16, %69
  %79 = phi i64 [ %115, %.loopexit16 ], [ 0, %69 ]
  %80 = phi i64 [ %114, %.loopexit16 ], [ 0, %69 ]
  %81 = phi i64 [ %116, %.loopexit16 ], [ 0, %69 ]
  %82 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %79
  %83 = load i16, ptr %82, align 2, !tbaa !5
  %84 = getelementptr inbounds nuw i8, ptr %71, i64 %80
  store i64 %81, ptr %84, align 1, !tbaa !12
  %85 = icmp sgt i16 %83, 8
  br i1 %85, label %86, label %.loopexit16

86:                                               ; preds = %78
  %87 = zext nneg i16 %83 to i64
  %88 = tail call i64 @llvm.umax.i64(i64 %87, i64 16)
  %89 = add nsw i64 %88, -9
  %90 = lshr i64 %89, 3
  %91 = add nuw nsw i64 %90, 1
  %92 = icmp samesign ult i16 %83, 33
  br i1 %92, label %.preheader52.preheader, label %93

93:                                               ; preds = %86
  %94 = and i64 %91, 4611686018427387900
  %95 = insertelement <2 x i64> poison, i64 %81, i64 0
  %96 = shufflevector <2 x i64> %95, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %97, %93
  %98 = phi i64 [ 0, %93 ], [ %103, %97 ]
  %99 = shl i64 %98, 3
  %100 = getelementptr inbounds nuw i8, ptr %84, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 24
  store <2 x i64> %96, ptr %101, align 1, !tbaa !12
  store <2 x i64> %96, ptr %102, align 1, !tbaa !12
  %103 = add nuw nsw i64 %98, 4
  %104 = icmp eq i64 %103, %94
  br i1 %104, label %105, label %97, !llvm.loop !14

105:                                              ; preds = %97
  %106 = shl nuw nsw i64 %94, 3
  %107 = or disjoint i64 %106, 8
  %108 = icmp eq i64 %91, %94
  br i1 %108, label %.loopexit16, label %.preheader52.preheader

.preheader52.preheader:                           ; preds = %105, %86
  %.ph = phi i64 [ 8, %86 ], [ %107, %105 ]
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %.preheader52
  %109 = phi i64 [ %111, %.preheader52 ], [ %.ph, %.preheader52.preheader ]
  %110 = getelementptr inbounds nuw i8, ptr %84, i64 %109
  store i64 %81, ptr %110, align 1, !tbaa !12
  %111 = add nuw nsw i64 %109, 8
  %112 = icmp samesign ult i64 %111, %87
  br i1 %112, label %.preheader52, label %.loopexit16, !llvm.loop !17

.loopexit16:                                      ; preds = %.preheader52, %105, %78
  %113 = sext i16 %83 to i64
  %114 = add i64 %80, %113
  %115 = add nuw nsw i64 %79, 1
  %116 = add i64 %81, 72340172838076673
  %117 = icmp eq i64 %115, %66
  br i1 %117, label %.loopexit17, label %78, !llvm.loop !18

118:                                              ; preds = %118, %.loopexit17
  %119 = phi i64 [ 0, %.loopexit17 ], [ %132, %118 ]
  %120 = phi i64 [ 0, %.loopexit17 ], [ %131, %118 ]
  %121 = getelementptr inbounds nuw i8, ptr %77, i64 %119
  %122 = and i64 %120, %74
  %123 = load i8, ptr %121, align 1, !tbaa !9
  %124 = getelementptr inbounds nuw i8, ptr %21, i64 %122
  store i8 %123, ptr %124, align 1, !tbaa !9
  %125 = add nuw nsw i64 %120, %73
  %126 = and i64 %125, %74
  %127 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !9
  %129 = getelementptr inbounds nuw i8, ptr %21, i64 %126
  store i8 %128, ptr %129, align 1, !tbaa !9
  %130 = add nuw nsw i64 %120, %76
  %131 = and i64 %130, %74
  %132 = add nuw nsw i64 %119, 2
  %133 = icmp samesign ult i64 %132, %72
  br i1 %133, label %118, label %.loopexit15, !llvm.loop !19

.preheader:                                       ; preds = %63, %.loopexit18
  %134 = phi i64 [ %178, %.loopexit18 ], [ 0, %63 ]
  %135 = phi i32 [ %177, %.loopexit18 ], [ 0, %63 ]
  %136 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %134
  %137 = load i16, ptr %136, align 2, !tbaa !5
  %138 = icmp sgt i16 %137, 0
  br i1 %138, label %139, label %.loopexit18

139:                                              ; preds = %.preheader
  %140 = trunc i64 %134 to i8
  %141 = icmp eq i16 %137, 1
  br i1 %141, label %.thread, label %142

142:                                              ; preds = %139
  %143 = and i16 %137, 32766
  %144 = zext nneg i16 %143 to i32
  br label %145

145:                                              ; preds = %163, %142
  %146 = phi i32 [ %135, %142 ], [ %161, %163 ]
  %147 = phi i32 [ 0, %142 ], [ %164, %163 ]
  %148 = zext nneg i32 %146 to i64
  %149 = getelementptr inbounds nuw i8, ptr %21, i64 %148
  store i8 %140, ptr %149, align 1, !tbaa !9
  br label %150

150:                                              ; preds = %150, %145
  %151 = phi i32 [ %146, %145 ], [ %153, %150 ]
  %152 = add nuw i32 %151, %17
  %153 = and i32 %152, %8
  %154 = icmp ugt i32 %153, %60
  br i1 %154, label %150, label %155, !llvm.loop !20

155:                                              ; preds = %150
  %156 = zext nneg i32 %153 to i64
  %157 = getelementptr inbounds nuw i8, ptr %21, i64 %156
  store i8 %140, ptr %157, align 1, !tbaa !9
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i32 [ %153, %155 ], [ %161, %158 ]
  %160 = add nuw i32 %159, %17
  %161 = and i32 %160, %8
  %162 = icmp ugt i32 %161, %60
  br i1 %162, label %158, label %163, !llvm.loop !20

163:                                              ; preds = %158
  %164 = add i32 %147, 2
  %165 = icmp eq i32 %164, %144
  br i1 %165, label %166, label %145, !llvm.loop !21

166:                                              ; preds = %163
  %167 = and i16 %137, 1
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %.loopexit18, label %.thread

.thread:                                          ; preds = %166, %139
  %169 = phi i32 [ %161, %166 ], [ %135, %139 ]
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds nuw i8, ptr %21, i64 %170
  store i8 %140, ptr %171, align 1, !tbaa !9
  br label %172

172:                                              ; preds = %172, %.thread
  %173 = phi i32 [ %169, %.thread ], [ %175, %172 ]
  %174 = add nuw i32 %173, %17
  %175 = and i32 %174, %8
  %176 = icmp ugt i32 %175, %60
  br i1 %176, label %172, label %.loopexit18, !llvm.loop !20

.loopexit18:                                      ; preds = %172, %166, %.preheader
  %177 = phi i32 [ %135, %.preheader ], [ %161, %166 ], [ %175, %172 ]
  %178 = add nuw nsw i64 %134, 1
  %179 = icmp eq i64 %178, %66
  br i1 %179, label %.loopexit15, label %.preheader, !llvm.loop !22

.loopexit15:                                      ; preds = %.loopexit18, %118
  %180 = zext i32 %7 to i64
  %181 = and i64 %180, 1
  br i1 %10, label %.loopexit14, label %182

182:                                              ; preds = %.loopexit15
  %183 = and i64 %180, 4294967294
  br label %205

.loopexit14:                                      ; preds = %205, %.loopexit15
  %184 = phi i64 [ 0, %.loopexit15 ], [ %183, %205 ]
  %185 = icmp eq i64 %181, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %.loopexit14
  %187 = getelementptr inbounds nuw i8, ptr %21, i64 %184
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = trunc nuw i64 %184 to i32
  %190 = add i32 %7, %189
  %191 = trunc i32 %190 to i16
  %192 = zext i8 %188 to i64
  %193 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !5
  %195 = add i16 %194, 1
  store i16 %195, ptr %193, align 2, !tbaa !5
  %196 = zext i16 %194 to i64
  %197 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %196
  store i16 %191, ptr %197, align 2, !tbaa !5
  br label %198

198:                                              ; preds = %186, %.loopexit14
  %199 = shl i32 %3, 16
  %200 = sub i32 %199, %7
  %201 = add i32 %199, 65536
  %202 = sub i32 %201, %7
  %203 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  %204 = zext i32 %203 to i64
  br label %232

205:                                              ; preds = %205, %182
  %206 = phi i64 [ 0, %182 ], [ %230, %205 ]
  %207 = getelementptr inbounds nuw i8, ptr %21, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !9
  %209 = trunc nuw i64 %206 to i32
  %210 = add i32 %7, %209
  %211 = trunc i32 %210 to i16
  %212 = zext i8 %208 to i64
  %213 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !5
  %215 = add i16 %214, 1
  store i16 %215, ptr %213, align 2, !tbaa !5
  %216 = zext i16 %214 to i64
  %217 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %216
  store i16 %211, ptr %217, align 2, !tbaa !5
  %218 = or disjoint i64 %206, 1
  %219 = getelementptr inbounds nuw i8, ptr %21, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !9
  %221 = trunc nuw i64 %218 to i32
  %222 = add i32 %7, %221
  %223 = trunc i32 %222 to i16
  %224 = zext i8 %220 to i64
  %225 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !5
  %227 = add i16 %226, 1
  store i16 %227, ptr %225, align 2, !tbaa !5
  %228 = zext i16 %226 to i64
  %229 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %228
  store i16 %223, ptr %229, align 2, !tbaa !5
  %230 = add nuw i64 %206, 2
  %231 = icmp eq i64 %230, %183
  br i1 %231, label %.loopexit14, label %205, !llvm.loop !23

232:                                              ; preds = %257, %198
  %233 = phi i64 [ 0, %198 ], [ %259, %257 ]
  %234 = phi i32 [ 0, %198 ], [ %258, %257 ]
  %235 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %233
  %236 = load i16, ptr %235, align 2, !tbaa !5
  switch i16 %236, label %244 [
    i16 0, label %237
    i16 -1, label %239
    i16 1, label %239
  ]

237:                                              ; preds = %232
  %.split = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %233
  %238 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  store i32 %202, ptr %238, align 4, !tbaa !24
  br label %257

239:                                              ; preds = %232, %232
  %240 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %233
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 4
  store i32 %200, ptr %241, align 4, !tbaa !24
  %242 = add i32 %234, -1
  store i32 %242, ptr %240, align 4, !tbaa !27
  %243 = add i32 %234, 1
  br label %257

244:                                              ; preds = %232
  %245 = sext i16 %236 to i32
  %246 = add nsw i32 %245, -1
  %247 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %246, i1 true)
  %248 = xor i32 %247, 31
  %249 = sub i32 %3, %248
  %250 = shl i32 %245, %249
  %251 = shl i32 %249, 16
  %252 = sub i32 %251, %250
  %253 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %233
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 4
  store i32 %252, ptr %254, align 4, !tbaa !24
  %255 = sub i32 %234, %245
  store i32 %255, ptr %253, align 4, !tbaa !27
  %256 = add i32 %234, %245
  br label %257

257:                                              ; preds = %244, %239, %237
  %258 = phi i32 [ %256, %244 ], [ %234, %237 ], [ %243, %239 ]
  %259 = add nuw nsw i64 %233, 1
  %260 = icmp eq i64 %259, %204
  br i1 %260, label %.loopexit, label %232, !llvm.loop !28

.loopexit:                                        ; preds = %257, %6
  %261 = phi i64 [ -44, %6 ], [ 0, %257 ]
  ret i64 %261
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
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

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp ugt i32 %4, 12
  br i1 %6, label %FSE_writeNCount_generic.exit, label %7

7:                                                ; preds = %5
  %8 = icmp samesign ult i32 %4, 5
  br i1 %8, label %FSE_writeNCount_generic.exit, label %9

9:                                                ; preds = %7
  %10 = add i32 %3, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %FSE_writeNCount_generic.exit, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %3, 0
  %14 = mul i32 %10, %4
  %15 = add i32 %14, 6
  %16 = lshr i32 %15, 3
  %17 = add nuw nsw i32 %16, 3
  %18 = select i1 %13, i32 512, i32 %17
  %19 = zext nneg i32 %18 to i64
  %.not = icmp ult i64 %1, %19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %21 = add nsw i32 %4, -5
  %22 = shl nuw nsw i32 1, %4
  %23 = or disjoint i32 %22, 1
  %24 = add nuw nsw i32 %4, 1
  %25 = getelementptr inbounds i8, ptr %20, i64 -2
  %26 = zext i32 %10 to i64
  br label %27

.loopexit23.i:                                    ; preds = %143, %138, %.loopexit24.i, %.preheader22.i.preheader, %.preheader22.i, %196
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !29
  unreachable, !nosanitize !29

27:                                               ; preds = %181, %12
  %28 = phi i1 [ true, %12 ], [ %157, %181 ]
  %29 = phi ptr [ %0, %12 ], [ %184, %181 ]
  %30 = phi i32 [ 0, %12 ], [ %120, %181 ]
  %31 = phi i32 [ 4, %12 ], [ %183, %181 ]
  %32 = phi i32 [ %21, %12 ], [ %182, %181 ]
  %33 = phi i32 [ %22, %12 ], [ %171, %181 ]
  %34 = phi i32 [ %23, %12 ], [ %135, %181 ]
  %35 = phi i32 [ %24, %12 ], [ %170, %181 ]
  br i1 %28, label %115, label %36

36:                                               ; preds = %27
  %37 = icmp ult i32 %30, %10
  br i1 %37, label %38, label %50

38:                                               ; preds = %36
  %39 = zext i32 %30 to i64
  br label %40

40:                                               ; preds = %45, %38
  %41 = phi i64 [ %39, %38 ], [ %46, %45 ]
  %42 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %26
  br i1 %47, label %.loopexit30.i, label %40, !llvm.loop !30

48:                                               ; preds = %40
  %49 = trunc nuw i64 %41 to i32
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi i32 [ %30, %36 ], [ %49, %48 ]
  %52 = icmp eq i32 %51, %10
  br i1 %52, label %.loopexit30.i, label %53

53:                                               ; preds = %50
  %54 = add i32 %30, 24
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %.loopexit27.i, label %56

56:                                               ; preds = %53
  %57 = shl i32 65535, %31
  br i1 %.not, label %.preheader25.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %56, %.preheader28.i
  %58 = phi i32 [ %65, %.preheader28.i ], [ %54, %56 ]
  %59 = phi ptr [ %63, %.preheader28.i ], [ %29, %56 ]
  %60 = phi i32 [ %64, %.preheader28.i ], [ %32, %56 ]
  %61 = add i32 %60, %57
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %59, align 1
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %64 = lshr i32 %61, 16
  %65 = add i32 %58, 24
  %66 = icmp ult i32 %51, %65
  br i1 %66, label %.loopexit27.i, label %.preheader28.i, !llvm.loop !31

.loopexit27.i:                                    ; preds = %.preheader28.i, %78, %53
  %67 = phi i32 [ %32, %53 ], [ %82, %78 ], [ %64, %.preheader28.i ]
  %68 = phi ptr [ %29, %53 ], [ %81, %78 ], [ %63, %.preheader28.i ]
  %69 = phi i32 [ %30, %53 ], [ %74, %78 ], [ %58, %.preheader28.i ]
  %70 = add i32 %69, 3
  %71 = icmp ult i32 %51, %70
  br i1 %71, label %.loopexit24.i, label %.preheader22.i.preheader

.preheader22.i.preheader:                         ; preds = %.loopexit27.i
  %72 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %31, i32 2), !nosanitize !29
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !29
  br i1 %73, label %.loopexit23.i, label %.lr.ph, !prof !32, !nosanitize !29

.preheader25.i:                                   ; preds = %56, %78
  %74 = phi i32 [ %83, %78 ], [ %54, %56 ]
  %75 = phi ptr [ %81, %78 ], [ %29, %56 ]
  %76 = phi i32 [ %82, %78 ], [ %32, %56 ]
  %77 = icmp ugt ptr %75, %25
  br i1 %77, label %FSE_writeNCount_generic.exit, label %78

78:                                               ; preds = %.preheader25.i
  %79 = add i32 %76, %57
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %75, align 1
  %81 = getelementptr inbounds nuw i8, ptr %75, i64 2
  %82 = lshr i32 %79, 16
  %83 = add i32 %74, 24
  %84 = icmp ult i32 %51, %83
  br i1 %84, label %.loopexit27.i, label %.preheader25.i, !llvm.loop !31

.preheader22.i:                                   ; preds = %.lr.ph
  %85 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 2), !nosanitize !29
  %86 = extractvalue { i32, i1 } %85, 1, !nosanitize !29
  br i1 %86, label %.loopexit23.i, label %.lr.ph, !prof !33, !llvm.loop !34, !nosanitize !29

.lr.ph:                                           ; preds = %.preheader22.i.preheader, %.preheader22.i
  %87 = phi { i32, i1 } [ %85, %.preheader22.i ], [ %72, %.preheader22.i.preheader ]
  %88 = phi i32 [ %93, %.preheader22.i ], [ %67, %.preheader22.i.preheader ]
  %89 = phi i32 [ %91, %.preheader22.i ], [ %31, %.preheader22.i.preheader ]
  %90 = phi i32 [ %94, %.preheader22.i ], [ %70, %.preheader22.i.preheader ]
  %91 = extractvalue { i32, i1 } %87, 0, !nosanitize !29
  %92 = shl i32 3, %89
  %93 = add i32 %92, %88
  %94 = add i32 %90, 3
  %95 = icmp ult i32 %51, %94
  br i1 %95, label %.loopexit24.i, label %.preheader22.i, !llvm.loop !34

.loopexit24.i:                                    ; preds = %.lr.ph, %.loopexit27.i
  %96 = phi i32 [ %67, %.loopexit27.i ], [ %93, %.lr.ph ]
  %97 = phi i32 [ %31, %.loopexit27.i ], [ %91, %.lr.ph ]
  %98 = phi i32 [ %69, %.loopexit27.i ], [ %90, %.lr.ph ]
  %99 = sub i32 %51, %98
  %100 = shl i32 %99, %97
  %101 = add i32 %100, %96
  %102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !29
  %103 = extractvalue { i32, i1 } %102, 0, !nosanitize !29
  %104 = extractvalue { i32, i1 } %102, 1, !nosanitize !29
  br i1 %104, label %.loopexit23.i, label %105, !prof !35, !nosanitize !29

105:                                              ; preds = %.loopexit24.i
  %106 = icmp sgt i32 %103, 16
  br i1 %106, label %107, label %115

107:                                              ; preds = %105
  %108 = icmp ugt ptr %68, %25
  %109 = select i1 %.not, i1 %108, i1 false
  br i1 %109, label %FSE_writeNCount_generic.exit, label %110

110:                                              ; preds = %107
  %111 = trunc i32 %101 to i16
  store i16 %111, ptr %68, align 1
  %112 = add nsw i32 %103, -16
  %113 = lshr i32 %101, 16
  %114 = getelementptr inbounds nuw i8, ptr %68, i64 2
  br label %115

.loopexit.i:                                      ; preds = %.preheader.i.preheader, %149, %128, %115, %.preheader.i
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !29
  unreachable, !nosanitize !29

115:                                              ; preds = %110, %105, %27
  %116 = phi i32 [ %30, %27 ], [ %51, %110 ], [ %51, %105 ]
  %117 = phi ptr [ %29, %27 ], [ %114, %110 ], [ %68, %105 ]
  %118 = phi i32 [ %31, %27 ], [ %112, %110 ], [ %103, %105 ]
  %119 = phi i32 [ %32, %27 ], [ %113, %110 ], [ %101, %105 ]
  %120 = add nuw i32 %116, 1
  %121 = zext i32 %116 to i64
  %122 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !5
  %124 = sext i16 %123 to i32
  %125 = shl nsw i32 %33, 1
  %126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %125, i32 -1)
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !29
  br i1 %127, label %.loopexit.i, label %128, !prof !35, !nosanitize !29

128:                                              ; preds = %115
  %129 = extractvalue { i32, i1 } %126, 0, !nosanitize !29
  %130 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %129, i32 %34), !nosanitize !29
  %131 = extractvalue { i32, i1 } %130, 0, !nosanitize !29
  %132 = extractvalue { i32, i1 } %130, 1, !nosanitize !29
  br i1 %132, label %.loopexit.i, label %133, !prof !35, !nosanitize !29

133:                                              ; preds = %128
  %134 = tail call i32 @llvm.abs.i32(i32 %124, i1 true)
  %135 = sub nsw i32 %34, %134
  %136 = add nsw i32 %124, 1
  %137 = icmp slt i32 %136, %33
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %136, i32 %131), !nosanitize !29
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !29
  br i1 %140, label %.loopexit23.i, label %141, !prof !35, !nosanitize !29

141:                                              ; preds = %138
  %142 = extractvalue { i32, i1 } %139, 0, !nosanitize !29
  br label %143

143:                                              ; preds = %141, %133
  %144 = phi i32 [ %142, %141 ], [ %136, %133 ]
  %145 = shl i32 %144, %118
  %146 = add i32 %145, %119
  %147 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 %35), !nosanitize !29
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !29
  br i1 %148, label %.loopexit23.i, label %149, !prof !35, !nosanitize !29

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %147, 0, !nosanitize !29
  %151 = icmp slt i32 %144, %131
  %152 = zext i1 %151 to i32
  %153 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %150, i32 %152), !nosanitize !29
  %154 = extractvalue { i32, i1 } %153, 0, !nosanitize !29
  %155 = extractvalue { i32, i1 } %153, 1, !nosanitize !29
  br i1 %155, label %.loopexit.i, label %156, !prof !35, !nosanitize !29

156:                                              ; preds = %149
  %157 = icmp ne i32 %144, 1
  %158 = icmp sgt i32 %135, 0
  br i1 %158, label %159, label %FSE_writeNCount_generic.exit

159:                                              ; preds = %156
  %160 = icmp slt i32 %135, %33
  br i1 %160, label %.preheader.i.preheader, label %.loopexit21.i

.preheader.i.preheader:                           ; preds = %159
  %161 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 -1)
  %162 = extractvalue { i32, i1 } %161, 1, !nosanitize !29
  br i1 %162, label %.loopexit.i, label %.lr.ph242, !prof !32, !nosanitize !29

.preheader.i:                                     ; preds = %.lr.ph242
  %163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %167, i32 -1)
  %164 = extractvalue { i32, i1 } %163, 1, !nosanitize !29
  br i1 %164, label %.loopexit.i, label %.lr.ph242, !prof !33, !llvm.loop !36, !nosanitize !29

.lr.ph242:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %165 = phi { i32, i1 } [ %163, %.preheader.i ], [ %161, %.preheader.i.preheader ]
  %166 = phi i32 [ %168, %.preheader.i ], [ %33, %.preheader.i.preheader ]
  %167 = extractvalue { i32, i1 } %165, 0, !nosanitize !29
  %168 = ashr i32 %166, 1
  %169 = icmp slt i32 %135, %168
  br i1 %169, label %.preheader.i, label %.loopexit21.i, !llvm.loop !36

.loopexit21.i:                                    ; preds = %.lr.ph242, %159
  %170 = phi i32 [ %35, %159 ], [ %167, %.lr.ph242 ]
  %171 = phi i32 [ %33, %159 ], [ %168, %.lr.ph242 ]
  %172 = icmp sgt i32 %154, 16
  br i1 %172, label %173, label %181

173:                                              ; preds = %.loopexit21.i
  %174 = icmp ugt ptr %117, %25
  %175 = select i1 %.not, i1 %174, i1 false
  br i1 %175, label %FSE_writeNCount_generic.exit, label %176

176:                                              ; preds = %173
  %177 = trunc i32 %146 to i16
  store i16 %177, ptr %117, align 1
  %178 = add nsw i32 %154, -16
  %179 = lshr i32 %146, 16
  %180 = getelementptr inbounds nuw i8, ptr %117, i64 2
  br label %181

181:                                              ; preds = %176, %.loopexit21.i
  %182 = phi i32 [ %179, %176 ], [ %146, %.loopexit21.i ]
  %183 = phi i32 [ %178, %176 ], [ %154, %.loopexit21.i ]
  %184 = phi ptr [ %180, %176 ], [ %117, %.loopexit21.i ]
  %185 = icmp ult i32 %120, %10
  %186 = icmp ne i32 %135, 1
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %27, label %.loopexit30.i, !llvm.loop !37

.loopexit30.i:                                    ; preds = %181, %50, %45
  %188 = phi i32 [ %34, %45 ], [ %34, %50 ], [ %135, %181 ]
  %189 = phi i32 [ %32, %45 ], [ %32, %50 ], [ %182, %181 ]
  %190 = phi i32 [ %31, %45 ], [ %31, %50 ], [ %183, %181 ]
  %191 = phi ptr [ %29, %45 ], [ %29, %50 ], [ %184, %181 ]
  %192 = icmp eq i32 %188, 1
  br i1 %192, label %193, label %FSE_writeNCount_generic.exit

193:                                              ; preds = %.loopexit30.i
  %194 = icmp ugt ptr %191, %25
  %195 = select i1 %.not, i1 %194, i1 false
  br i1 %195, label %FSE_writeNCount_generic.exit, label %196

196:                                              ; preds = %193
  %197 = trunc i32 %189 to i16
  store i16 %197, ptr %191, align 1
  %198 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %190, i32 7), !nosanitize !29
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !29
  br i1 %199, label %.loopexit23.i, label %200, !prof !35, !nosanitize !29

200:                                              ; preds = %196
  %201 = extractvalue { i32, i1 } %198, 0, !nosanitize !29
  %202 = sdiv i32 %201, 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %191, i64 %203
  %205 = ptrtoint ptr %204 to i64
  %206 = ptrtoint ptr %0 to i64
  %207 = sub i64 %205, %206
  br label %FSE_writeNCount_generic.exit

FSE_writeNCount_generic.exit:                     ; preds = %173, %156, %107, %.preheader25.i, %200, %193, %.loopexit30.i, %9, %7, %5
  %208 = phi i64 [ -44, %5 ], [ -1, %7 ], [ %207, %200 ], [ -1, %.loopexit30.i ], [ -70, %193 ], [ -1, %9 ], [ -70, %.preheader25.i ], [ -70, %107 ], [ -1, %156 ], [ -70, %173 ]
  ret i64 %208
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

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local range(i64 -44, 13) i64 @FSE_normalizeCount(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 11, i32 %1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %.loopexit23, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 12
  br i1 %11, label %.loopexit23, label %12

12:                                               ; preds = %10
  %13 = trunc i64 %3 to i32
  %14 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %13, i1 true)
  %15 = sub nuw nsw i32 32, %14
  %16 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %17 = sub nuw nsw i32 33, %16
  %18 = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = icmp samesign ult i32 %8, %18
  br i1 %19, label %.loopexit23, label %20

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

32:                                               ; preds = %84, %20
  %33 = phi i32 [ %28, %20 ], [ %87, %84 ]
  %34 = phi i16 [ 0, %20 ], [ %86, %84 ]
  %35 = phi i32 [ 0, %20 ], [ %85, %84 ]
  %36 = phi i32 [ 0, %20 ], [ %88, %84 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !38
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %3, %40
  br i1 %41, label %.loopexit23, label %42

42:                                               ; preds = %32
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %37
  store i16 0, ptr %45, align 2, !tbaa !5
  br label %84

46:                                               ; preds = %42
  %47 = icmp ugt i32 %39, %31
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %37
  store i16 %22, ptr %49, align 2, !tbaa !5
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !29
  br i1 %51, label %52, label %53, !prof !35, !nosanitize !29

52:                                               ; preds = %73, %48
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !29
  unreachable, !nosanitize !29

53:                                               ; preds = %48
  %54 = extractvalue { i32, i1 } %50, 0, !nosanitize !29
  br label %84

55:                                               ; preds = %46
  %56 = mul i64 %26, %40
  %57 = lshr i64 %56, %24
  %58 = trunc nuw nsw i64 %57 to i16
  %59 = trunc nuw nsw i64 %57 to i32
  %60 = and i32 %59, 65528
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = shl i64 %57, %24
  %64 = sub i64 %56, %63
  %65 = getelementptr inbounds nuw [4 x i8], ptr @FSE_normalizeCount.rtbTable, i64 %57
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = zext i32 %66 to i64
  %68 = shl i64 %67, %27
  %69 = icmp ugt i64 %64, %68
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %70, %59
  %72 = trunc nuw nsw i32 %71 to i16
  br label %73

73:                                               ; preds = %62, %55
  %74 = phi i16 [ %72, %62 ], [ %58, %55 ]
  %75 = zext nneg i16 %74 to i32
  %76 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %37
  store i16 %74, ptr %76, align 2, !tbaa !5
  %77 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %33, i32 %75), !nosanitize !29
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !29
  br i1 %78, label %52, label %79, !prof !35, !nosanitize !29

79:                                               ; preds = %73
  %80 = icmp ugt i16 %74, %34
  %81 = tail call i16 @llvm.umax.i16(i16 %74, i16 %34)
  %82 = select i1 %80, i32 %36, i32 %35
  %83 = extractvalue { i32, i1 } %77, 0, !nosanitize !29
  br label %84

84:                                               ; preds = %79, %53, %44
  %85 = phi i32 [ %35, %44 ], [ %35, %53 ], [ %82, %79 ]
  %86 = phi i16 [ %34, %44 ], [ %34, %53 ], [ %81, %79 ]
  %87 = phi i32 [ %33, %44 ], [ %54, %53 ], [ %83, %79 ]
  %88 = add i32 %36, 1
  %89 = icmp ugt i32 %88, %4
  br i1 %89, label %90, label %32, !llvm.loop !39

90:                                               ; preds = %84
  %91 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %87), !nosanitize !29
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !29
  br i1 %92, label %93, label %94, !prof !35, !nosanitize !29

93:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 13) #9, !nosanitize !29
  unreachable, !nosanitize !29

94:                                               ; preds = %90
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !29
  %96 = zext i32 %85 to i64
  %97 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !5
  %99 = ashr i16 %98, 1
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %333, label %102

102:                                              ; preds = %94
  %103 = mul i64 %3, 3
  %104 = add nuw nsw i32 %8, 1
  %105 = zext nneg i32 %104 to i64
  %106 = lshr i64 %103, %105
  %107 = trunc i64 %106 to i32
  %108 = add nuw i32 %4, 1
  %109 = zext i32 %108 to i64
  br label %110

110:                                              ; preds = %134, %102
  %111 = phi i64 [ 0, %102 ], [ %137, %134 ]
  %112 = phi i64 [ %3, %102 ], [ %136, %134 ]
  %113 = phi i32 [ 0, %102 ], [ %135, %134 ]
  %114 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %111
  %115 = load i32, ptr %114, align 4, !tbaa !38
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %111
  store i16 0, ptr %118, align 2, !tbaa !5
  br label %134

119:                                              ; preds = %110
  %120 = icmp ugt i32 %115, %31
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %111
  store i16 %22, ptr %122, align 2, !tbaa !5
  %123 = add i32 %113, 1
  %124 = zext i32 %115 to i64
  %125 = sub i64 %112, %124
  br label %134

126:                                              ; preds = %119
  %127 = icmp ugt i32 %115, %107
  %128 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %111
  br i1 %127, label %133, label %129

129:                                              ; preds = %126
  store i16 1, ptr %128, align 2, !tbaa !5
  %130 = add i32 %113, 1
  %131 = zext i32 %115 to i64
  %132 = sub i64 %112, %131
  br label %134

133:                                              ; preds = %126
  store i16 -2, ptr %128, align 2, !tbaa !5
  br label %134

134:                                              ; preds = %133, %129, %121, %117
  %135 = phi i32 [ %113, %117 ], [ %123, %121 ], [ %130, %129 ], [ %113, %133 ]
  %136 = phi i64 [ %112, %117 ], [ %125, %121 ], [ %132, %129 ], [ %112, %133 ]
  %137 = add nuw nsw i64 %111, 1
  %138 = icmp eq i64 %137, %109
  br i1 %138, label %139, label %110, !llvm.loop !40

139:                                              ; preds = %134
  %140 = sub i32 %28, %135
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %.loopexit23, label %142

142:                                              ; preds = %139
  %143 = zext i32 %140 to i64
  %144 = udiv i64 %136, %143
  %145 = and i64 %106, 4294967295
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %214

147:                                              ; preds = %142
  %148 = mul i64 %136, 3
  %149 = shl i32 %140, 1
  %150 = zext i32 %149 to i64
  %151 = udiv i64 %148, %150
  %152 = trunc i64 %151 to i32
  %153 = and i64 %109, 1
  %154 = icmp eq i32 %4, 0
  br i1 %154, label %.loopexit25, label %155

155:                                              ; preds = %147
  %156 = and i64 %109, 4294967294
  br label %157

157:                                              ; preds = %187, %155
  %158 = phi i64 [ 0, %155 ], [ %190, %187 ]
  %159 = phi i64 [ %136, %155 ], [ %189, %187 ]
  %160 = phi i32 [ %135, %155 ], [ %188, %187 ]
  %161 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %158
  %162 = load i16, ptr %161, align 2, !tbaa !5
  %163 = icmp eq i16 %162, -2
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %158
  %166 = load i32, ptr %165, align 4, !tbaa !38
  %167 = icmp ugt i32 %166, %152
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  store i16 1, ptr %161, align 2, !tbaa !5
  %169 = add i32 %160, 1
  %170 = zext i32 %166 to i64
  %171 = sub i64 %159, %170
  br label %172

172:                                              ; preds = %168, %164, %157
  %173 = phi i32 [ %169, %168 ], [ %160, %164 ], [ %160, %157 ]
  %174 = phi i64 [ %171, %168 ], [ %159, %164 ], [ %159, %157 ]
  %175 = or disjoint i64 %158, 1
  %176 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !5
  %178 = icmp eq i16 %177, -2
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %175
  %181 = load i32, ptr %180, align 4, !tbaa !38
  %182 = icmp ugt i32 %181, %152
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  store i16 1, ptr %176, align 2, !tbaa !5
  %184 = add i32 %173, 1
  %185 = zext i32 %181 to i64
  %186 = sub i64 %174, %185
  br label %187

187:                                              ; preds = %183, %179, %172
  %188 = phi i32 [ %184, %183 ], [ %173, %179 ], [ %173, %172 ]
  %189 = phi i64 [ %186, %183 ], [ %174, %179 ], [ %174, %172 ]
  %190 = add nuw nsw i64 %158, 2
  %191 = icmp eq i64 %190, %156
  br i1 %191, label %.loopexit25, label %157, !llvm.loop !41

.loopexit25:                                      ; preds = %187, %147
  %192 = phi i32 [ poison, %147 ], [ %188, %187 ]
  %193 = phi i64 [ poison, %147 ], [ %189, %187 ]
  %194 = phi i64 [ 0, %147 ], [ %156, %187 ]
  %195 = phi i64 [ %136, %147 ], [ %189, %187 ]
  %196 = phi i32 [ %135, %147 ], [ %188, %187 ]
  %197 = icmp eq i64 %153, 0
  br i1 %197, label %210, label %198

198:                                              ; preds = %.loopexit25
  %199 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %194
  %200 = load i16, ptr %199, align 2, !tbaa !5
  %201 = icmp eq i16 %200, -2
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %194
  %204 = load i32, ptr %203, align 4, !tbaa !38
  %205 = icmp ugt i32 %204, %152
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  store i16 1, ptr %199, align 2, !tbaa !5
  %207 = add i32 %196, 1
  %208 = zext i32 %204 to i64
  %209 = sub i64 %195, %208
  br label %210

210:                                              ; preds = %206, %202, %198, %.loopexit25
  %211 = phi i32 [ %192, %.loopexit25 ], [ %207, %206 ], [ %196, %202 ], [ %196, %198 ]
  %212 = phi i64 [ %193, %.loopexit25 ], [ %209, %206 ], [ %195, %202 ], [ %195, %198 ]
  %213 = sub i32 %28, %211
  br label %214

214:                                              ; preds = %210, %142
  %215 = phi i32 [ %213, %210 ], [ %140, %142 ]
  %216 = phi i32 [ %211, %210 ], [ %135, %142 ]
  %217 = phi i64 [ %212, %210 ], [ %136, %142 ]
  %218 = icmp eq i32 %216, %108
  br i1 %218, label %219, label %281

219:                                              ; preds = %214
  %220 = and i64 %109, 3
  %221 = icmp ult i32 %4, 3
  br i1 %221, label %.loopexit21, label %222

222:                                              ; preds = %219
  %223 = and i64 %109, 4294967292
  br label %224

224:                                              ; preds = %224, %222
  %225 = phi i64 [ 0, %222 ], [ %255, %224 ]
  %226 = phi i32 [ 0, %222 ], [ %254, %224 ]
  %227 = phi i32 [ 0, %222 ], [ %253, %224 ]
  %228 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %225
  %229 = load i32, ptr %228, align 4, !tbaa !38
  %230 = icmp ugt i32 %229, %226
  %231 = trunc nuw i64 %225 to i32
  %232 = select i1 %230, i32 %231, i32 %227
  %233 = tail call i32 @llvm.umax.i32(i32 %229, i32 %226)
  %234 = or disjoint i64 %225, 1
  %235 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !38
  %237 = icmp ugt i32 %236, %233
  %238 = trunc nuw i64 %234 to i32
  %239 = select i1 %237, i32 %238, i32 %232
  %240 = tail call i32 @llvm.umax.i32(i32 %236, i32 %233)
  %241 = or disjoint i64 %225, 2
  %242 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !38
  %244 = icmp ugt i32 %243, %240
  %245 = trunc nuw i64 %241 to i32
  %246 = select i1 %244, i32 %245, i32 %239
  %247 = tail call i32 @llvm.umax.i32(i32 %243, i32 %240)
  %248 = or disjoint i64 %225, 3
  %249 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !38
  %251 = icmp ugt i32 %250, %247
  %252 = trunc nuw i64 %248 to i32
  %253 = select i1 %251, i32 %252, i32 %246
  %254 = tail call i32 @llvm.umax.i32(i32 %250, i32 %247)
  %255 = add nuw i64 %225, 4
  %256 = icmp eq i64 %255, %223
  br i1 %256, label %.loopexit21, label %224, !llvm.loop !42

.loopexit21:                                      ; preds = %224, %219
  %257 = phi i32 [ poison, %219 ], [ %253, %224 ]
  %258 = phi i64 [ 0, %219 ], [ %223, %224 ]
  %259 = phi i32 [ 0, %219 ], [ %254, %224 ]
  %260 = phi i32 [ 0, %219 ], [ %253, %224 ]
  %261 = icmp eq i64 %220, 0
  br i1 %261, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit21, %.preheader
  %262 = phi i64 [ %272, %.preheader ], [ %258, %.loopexit21 ]
  %263 = phi i32 [ %271, %.preheader ], [ %259, %.loopexit21 ]
  %264 = phi i32 [ %270, %.preheader ], [ %260, %.loopexit21 ]
  %265 = phi i64 [ %273, %.preheader ], [ 0, %.loopexit21 ]
  %266 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %262
  %267 = load i32, ptr %266, align 4, !tbaa !38
  %268 = icmp ugt i32 %267, %263
  %269 = trunc nuw i64 %262 to i32
  %270 = select i1 %268, i32 %269, i32 %264
  %271 = tail call i32 @llvm.umax.i32(i32 %267, i32 %263)
  %272 = add nuw nsw i64 %262, 1
  %273 = add nuw nsw i64 %265, 1
  %274 = icmp eq i64 %273, %220
  br i1 %274, label %.loopexit, label %.preheader, !llvm.loop !43

.loopexit:                                        ; preds = %.preheader, %.loopexit21
  %275 = phi i32 [ %257, %.loopexit21 ], [ %270, %.preheader ]
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !5
  %279 = trunc i32 %215 to i16
  %280 = add i16 %278, %279
  store i16 %280, ptr %277, align 2, !tbaa !5
  br label %.loopexit23

281:                                              ; preds = %214
  %282 = icmp eq i64 %217, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %281
  %284 = icmp eq i32 %215, 0
  br i1 %284, label %.loopexit23, label %.preheader22

.preheader22:                                     ; preds = %283, %294
  %285 = phi i32 [ %298, %294 ], [ 0, %283 ]
  %286 = phi i32 [ %295, %294 ], [ %215, %283 ]
  %287 = zext i32 %285 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !5
  %290 = icmp sgt i16 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %.preheader22
  %292 = add i32 %286, -1
  %293 = add nuw i16 %289, 1
  store i16 %293, ptr %288, align 2, !tbaa !5
  br label %294

294:                                              ; preds = %291, %.preheader22
  %295 = phi i32 [ %292, %291 ], [ %286, %.preheader22 ]
  %296 = add i32 %285, 1
  %297 = icmp eq i32 %285, %4
  %298 = select i1 %297, i32 0, i32 %296
  %299 = icmp eq i32 %295, 0
  br i1 %299, label %.loopexit23, label %.preheader22, !llvm.loop !45

300:                                              ; preds = %281
  %301 = add nsw i64 %24, -1
  %302 = shl nsw i64 -1, %301
  %303 = xor i64 %302, -1
  %304 = zext i32 %215 to i64
  %305 = shl i64 %304, %24
  %306 = add i64 %305, %303
  %307 = and i64 %217, 4294967295
  %308 = udiv i64 %306, %307
  br label %309

309:                                              ; preds = %329, %300
  %310 = phi i32 [ 0, %300 ], [ %331, %329 ]
  %311 = phi i64 [ %303, %300 ], [ %330, %329 ]
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %312
  %314 = load i16, ptr %313, align 2, !tbaa !5
  %315 = icmp eq i16 %314, -2
  br i1 %315, label %316, label %329

316:                                              ; preds = %309
  %317 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %312
  %318 = load i32, ptr %317, align 4, !tbaa !38
  %319 = zext i32 %318 to i64
  %320 = mul i64 %308, %319
  %321 = add i64 %320, %311
  %322 = lshr i64 %311, %24
  %323 = lshr i64 %321, %24
  %324 = icmp eq i64 %323, %322
  br i1 %324, label %.loopexit23, label %325

325:                                              ; preds = %316
  %326 = trunc nuw nsw i64 %322 to i16
  %327 = trunc nuw nsw i64 %323 to i16
  %328 = sub nsw i16 %327, %326
  store i16 %328, ptr %313, align 2, !tbaa !5
  br label %329

329:                                              ; preds = %325, %309
  %330 = phi i64 [ %321, %325 ], [ %311, %309 ]
  %331 = add i32 %310, 1
  %332 = icmp ugt i32 %331, %4
  br i1 %332, label %.loopexit23, label %309, !llvm.loop !46

333:                                              ; preds = %94
  %334 = trunc i32 %87 to i16
  %335 = add i16 %98, %334
  store i16 %335, ptr %97, align 2, !tbaa !5
  br label %.loopexit23

.loopexit23:                                      ; preds = %32, %329, %316, %294, %333, %283, %.loopexit, %139, %12, %10, %6
  %336 = phi i64 [ -1, %6 ], [ -44, %10 ], [ -1, %12 ], [ %29, %333 ], [ %29, %.loopexit ], [ %29, %139 ], [ %29, %283 ], [ %29, %294 ], [ -1, %316 ], [ %29, %329 ], [ 0, %32 ]
  ret i64 %336
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @FSE_buildCTable_rle(ptr noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
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
  %9 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %10, align 4, !tbaa !24
  store i32 0, ptr %9, align 4, !tbaa !27
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @FSE_compress_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #7 {
  %6 = lshr i64 %3, 7
  %7 = add i64 %3, 12
  %8 = add i64 %7, %6
  %.not = icmp ult i64 %1, %8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %10 = icmp ult i64 %3, 3
  br i1 %10, label %FSE_compress_usingCTable_generic.exit, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp ugt i64 %1, 8
  br i1 %14, label %15, label %FSE_compress_usingCTable_generic.exit

15:                                               ; preds = %11
  %16 = and i64 %3, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %97, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %4, align 1, !tbaa !5
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %22 = icmp eq i16 %19, 0
  %23 = add nsw i32 %20, -1
  %24 = shl nuw i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = select i1 %22, i64 1, i64 %25
  %27 = getelementptr inbounds [4 x i8], ptr %21, i64 %26
  %28 = getelementptr inbounds i8, ptr %9, i64 -2
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !38
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = add i32 %34, 32768
  %36 = and i32 %35, -65536
  %37 = sub i32 %36, %34
  %38 = zext i32 %37 to i64
  %39 = lshr i32 %35, 16
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %38, %40
  %42 = sext i32 %32 to i64
  %43 = getelementptr [2 x i8], ptr %21, i64 %41
  %44 = getelementptr [2 x i8], ptr %43, i64 %42
  %45 = load i16, ptr %44, align 2, !tbaa !5
  %46 = getelementptr inbounds i8, ptr %9, i64 -3
  %47 = getelementptr inbounds i8, ptr %9, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = add i32 %52, 32768
  %54 = and i32 %53, -65536
  %55 = sub i32 %54, %52
  %56 = zext i32 %55 to i64
  %57 = lshr i32 %53, 16
  %58 = zext nneg i32 %57 to i64
  %59 = lshr i64 %56, %58
  %60 = getelementptr [2 x i8], ptr %21, i64 %59
  %61 = load i32, ptr %50, align 4, !tbaa !38
  %62 = sext i32 %61 to i64
  %63 = getelementptr [2 x i8], ptr %60, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !5
  %65 = zext i16 %64 to i64
  %66 = load i8, ptr %46, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %70 = load i32, ptr %69, align 4, !tbaa !38
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %71, %65
  %73 = lshr i64 %72, 16
  %74 = trunc nuw nsw i64 %73 to i32
  %75 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %73
  %76 = load i32, ptr %75, align 4, !tbaa !38
  %77 = zext i32 %76 to i64
  %78 = and i64 %77, %65
  %79 = lshr i64 %65, %73
  %80 = load i32, ptr %68, align 4, !tbaa !38
  %81 = sext i32 %80 to i64
  %82 = getelementptr [2 x i8], ptr %21, i64 %79
  %83 = getelementptr [2 x i8], ptr %82, i64 %81
  %84 = load i16, ptr %83, align 2, !tbaa !5
  %85 = lshr i64 %72, 19
  store i64 %78, ptr %0, align 1, !tbaa !12
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 %85
  br i1 %.not, label %91, label %87

87:                                               ; preds = %18
  %88 = and i32 %74, 7
  %89 = shl nuw nsw i64 %85, 3
  %90 = lshr i64 %78, %89
  br label %143

91:                                               ; preds = %18
  %92 = icmp ugt ptr %86, %13
  %93 = select i1 %92, ptr %13, ptr %86
  %94 = and i32 %74, 7
  %95 = shl nuw nsw i64 %85, 3
  %96 = lshr i64 %78, %95
  br label %143

97:                                               ; preds = %15
  %98 = getelementptr inbounds i8, ptr %9, i64 -1
  %99 = load i8, ptr %98, align 1, !tbaa !9
  %100 = load i16, ptr %4, align 1, !tbaa !5
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %103 = icmp eq i16 %100, 0
  %104 = add nsw i32 %101, -1
  %105 = shl nuw i32 1, %104
  %106 = sext i32 %105 to i64
  %107 = select i1 %103, i64 1, i64 %106
  %108 = getelementptr inbounds [4 x i8], ptr %102, i64 %107
  %109 = zext i8 %99 to i64
  %110 = getelementptr inbounds nuw [8 x i8], ptr %108, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !38
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %113 = load i32, ptr %112, align 4, !tbaa !38
  %114 = add i32 %113, 32768
  %115 = and i32 %114, -65536
  %116 = sub i32 %115, %113
  %117 = zext i32 %116 to i64
  %118 = lshr i32 %114, 16
  %119 = zext nneg i32 %118 to i64
  %120 = lshr i64 %117, %119
  %121 = sext i32 %111 to i64
  %122 = getelementptr [2 x i8], ptr %102, i64 %120
  %123 = getelementptr [2 x i8], ptr %122, i64 %121
  %124 = load i16, ptr %123, align 2, !tbaa !5
  %125 = getelementptr inbounds i8, ptr %9, i64 -2
  %126 = load i8, ptr %125, align 1, !tbaa !9
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [8 x i8], ptr %108, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !38
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !38
  %132 = add i32 %131, 32768
  %133 = and i32 %132, -65536
  %134 = sub i32 %133, %131
  %135 = zext i32 %134 to i64
  %136 = lshr i32 %132, 16
  %137 = zext nneg i32 %136 to i64
  %138 = lshr i64 %135, %137
  %139 = sext i32 %129 to i64
  %140 = getelementptr [2 x i8], ptr %102, i64 %138
  %141 = getelementptr [2 x i8], ptr %140, i64 %139
  %142 = load i16, ptr %141, align 2, !tbaa !5
  br label %143

143:                                              ; preds = %97, %91, %87
  %144 = phi i64 [ 0, %97 ], [ %96, %91 ], [ %90, %87 ]
  %145 = phi i32 [ 0, %97 ], [ %94, %91 ], [ %88, %87 ]
  %146 = phi i32 [ %101, %97 ], [ %20, %91 ], [ %20, %87 ]
  %147 = phi ptr [ %108, %97 ], [ %27, %91 ], [ %27, %87 ]
  %148 = phi i16 [ %142, %97 ], [ %84, %91 ], [ %84, %87 ]
  %149 = phi ptr [ %0, %97 ], [ %93, %91 ], [ %86, %87 ]
  %150 = phi i16 [ %124, %97 ], [ %45, %91 ], [ %45, %87 ]
  %151 = phi ptr [ %125, %97 ], [ %46, %91 ], [ %46, %87 ]
  %152 = zext i16 %150 to i64
  %153 = zext i16 %148 to i64
  %154 = and i64 %3, 2
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %221

156:                                              ; preds = %143
  %157 = getelementptr inbounds i8, ptr %151, i64 -1
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %162 = load i32, ptr %161, align 4, !tbaa !38
  %163 = zext i32 %162 to i64
  %164 = add nuw nsw i64 %163, %152
  %165 = lshr i64 %164, 16
  %166 = trunc nuw nsw i64 %165 to i32
  %167 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %165
  %168 = load i32, ptr %167, align 4, !tbaa !38
  %169 = zext i32 %168 to i64
  %170 = and i64 %169, %152
  %171 = zext nneg i32 %145 to i64
  %172 = shl nuw nsw i64 %170, %171
  %173 = add nuw nsw i32 %145, %166
  %174 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %175 = lshr i64 %152, %165
  %176 = load i32, ptr %160, align 4, !tbaa !38
  %177 = sext i32 %176 to i64
  %178 = getelementptr [2 x i8], ptr %174, i64 %175
  %179 = getelementptr [2 x i8], ptr %178, i64 %177
  %180 = load i16, ptr %179, align 2, !tbaa !5
  %181 = zext i16 %180 to i64
  %182 = getelementptr inbounds i8, ptr %151, i64 -2
  %183 = load i8, ptr %182, align 1, !tbaa !9
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %187 = load i32, ptr %186, align 4, !tbaa !38
  %188 = zext i32 %187 to i64
  %189 = add nuw nsw i64 %188, %153
  %190 = lshr i64 %189, 16
  %191 = trunc nuw nsw i64 %190 to i32
  %192 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %190
  %193 = load i32, ptr %192, align 4, !tbaa !38
  %194 = zext i32 %193 to i64
  %195 = and i64 %194, %153
  %196 = zext nneg i32 %173 to i64
  %197 = shl i64 %195, %196
  %198 = or i64 %172, %197
  %199 = or i64 %198, %144
  %200 = add nuw nsw i32 %173, %191
  %201 = lshr i64 %153, %190
  %202 = load i32, ptr %185, align 4, !tbaa !38
  %203 = sext i32 %202 to i64
  %204 = getelementptr [2 x i8], ptr %174, i64 %201
  %205 = getelementptr [2 x i8], ptr %204, i64 %203
  %206 = load i16, ptr %205, align 2, !tbaa !5
  %207 = zext i16 %206 to i64
  %208 = lshr i32 %200, 3
  %209 = zext nneg i32 %208 to i64
  store i64 %199, ptr %149, align 1, !tbaa !12
  %210 = getelementptr inbounds nuw i8, ptr %149, i64 %209
  br i1 %.not, label %215, label %211

211:                                              ; preds = %156
  %212 = and i32 %200, 7
  %213 = shl nuw nsw i64 %209, 3
  %214 = lshr i64 %199, %213
  br label %221

215:                                              ; preds = %156
  %216 = icmp ugt ptr %210, %13
  %217 = select i1 %216, ptr %13, ptr %210
  %218 = and i32 %200, 7
  %219 = shl nuw nsw i64 %209, 3
  %220 = lshr i64 %199, %219
  br label %221

221:                                              ; preds = %215, %211, %143
  %222 = phi i64 [ %220, %215 ], [ %214, %211 ], [ %144, %143 ]
  %223 = phi i32 [ %218, %215 ], [ %212, %211 ], [ %145, %143 ]
  %224 = phi i64 [ %207, %215 ], [ %207, %211 ], [ %153, %143 ]
  %225 = phi ptr [ %217, %215 ], [ %210, %211 ], [ %149, %143 ]
  %226 = phi i64 [ %181, %215 ], [ %181, %211 ], [ %152, %143 ]
  %227 = phi ptr [ %182, %215 ], [ %182, %211 ], [ %151, %143 ]
  %228 = icmp ugt ptr %227, %2
  br i1 %228, label %229, label %.loopexit.i

229:                                              ; preds = %221
  %230 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %231

231:                                              ; preds = %231, %229
  %232 = phi ptr [ %227, %229 ], [ %310, %231 ]
  %233 = phi i64 [ %226, %229 ], [ %309, %231 ]
  %234 = phi ptr [ %225, %229 ], [ %343, %231 ]
  %235 = phi i64 [ %224, %229 ], [ %337, %231 ]
  %236 = phi i32 [ %223, %229 ], [ %344, %231 ]
  %237 = phi i64 [ %222, %229 ], [ %346, %231 ]
  %238 = getelementptr inbounds i8, ptr %232, i64 -1
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %240
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 4
  %243 = load i32, ptr %242, align 4, !tbaa !38
  %244 = zext i32 %243 to i64
  %245 = add nuw nsw i64 %233, %244
  %246 = lshr i64 %245, 16
  %247 = trunc nuw nsw i64 %246 to i32
  %248 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %246
  %249 = load i32, ptr %248, align 4, !tbaa !38
  %250 = zext i32 %249 to i64
  %251 = and i64 %233, %250
  %252 = zext nneg i32 %236 to i64
  %253 = shl nuw nsw i64 %251, %252
  %254 = add nuw nsw i32 %236, %247
  %255 = lshr i64 %233, %246
  %256 = load i32, ptr %241, align 4, !tbaa !38
  %257 = sext i32 %256 to i64
  %258 = getelementptr [2 x i8], ptr %230, i64 %255
  %259 = getelementptr [2 x i8], ptr %258, i64 %257
  %260 = load i16, ptr %259, align 2, !tbaa !5
  %261 = zext i16 %260 to i64
  %262 = getelementptr inbounds i8, ptr %232, i64 -2
  %263 = load i8, ptr %262, align 1, !tbaa !9
  %264 = zext i8 %263 to i64
  %265 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 4
  %267 = load i32, ptr %266, align 4, !tbaa !38
  %268 = zext i32 %267 to i64
  %269 = add nuw nsw i64 %235, %268
  %270 = lshr i64 %269, 16
  %271 = trunc nuw nsw i64 %270 to i32
  %272 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %270
  %273 = load i32, ptr %272, align 4, !tbaa !38
  %274 = zext i32 %273 to i64
  %275 = and i64 %235, %274
  %276 = zext nneg i32 %254 to i64
  %277 = shl i64 %275, %276
  %278 = add nuw nsw i32 %254, %271
  %279 = lshr i64 %235, %270
  %280 = load i32, ptr %265, align 4, !tbaa !38
  %281 = sext i32 %280 to i64
  %282 = getelementptr [2 x i8], ptr %230, i64 %279
  %283 = getelementptr [2 x i8], ptr %282, i64 %281
  %284 = load i16, ptr %283, align 2, !tbaa !5
  %285 = zext i16 %284 to i64
  %286 = getelementptr inbounds i8, ptr %232, i64 -3
  %287 = load i8, ptr %286, align 1, !tbaa !9
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %288
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %291 = load i32, ptr %290, align 4, !tbaa !38
  %292 = zext i32 %291 to i64
  %293 = add nuw nsw i64 %292, %261
  %294 = lshr i64 %293, 16
  %295 = trunc nuw nsw i64 %294 to i32
  %296 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %294
  %297 = load i32, ptr %296, align 4, !tbaa !38
  %298 = zext i32 %297 to i64
  %299 = and i64 %298, %261
  %300 = zext nneg i32 %278 to i64
  %301 = shl i64 %299, %300
  %302 = add nuw nsw i32 %278, %295
  %303 = lshr i64 %261, %294
  %304 = load i32, ptr %289, align 4, !tbaa !38
  %305 = sext i32 %304 to i64
  %306 = getelementptr [2 x i8], ptr %230, i64 %303
  %307 = getelementptr [2 x i8], ptr %306, i64 %305
  %308 = load i16, ptr %307, align 2, !tbaa !5
  %309 = zext i16 %308 to i64
  %310 = getelementptr inbounds i8, ptr %232, i64 -4
  %311 = load i8, ptr %310, align 1, !tbaa !9
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %312
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 4
  %315 = load i32, ptr %314, align 4, !tbaa !38
  %316 = zext i32 %315 to i64
  %317 = add nuw nsw i64 %316, %285
  %318 = lshr i64 %317, 16
  %319 = trunc nuw nsw i64 %318 to i32
  %320 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %318
  %321 = load i32, ptr %320, align 4, !tbaa !38
  %322 = zext i32 %321 to i64
  %323 = and i64 %322, %285
  %324 = zext nneg i32 %302 to i64
  %325 = shl i64 %323, %324
  %326 = or i64 %253, %237
  %327 = or i64 %326, %277
  %328 = or i64 %327, %301
  %329 = or i64 %328, %325
  %330 = add nuw nsw i32 %302, %319
  %331 = lshr i64 %285, %318
  %332 = load i32, ptr %313, align 4, !tbaa !38
  %333 = sext i32 %332 to i64
  %334 = getelementptr [2 x i8], ptr %230, i64 %331
  %335 = getelementptr [2 x i8], ptr %334, i64 %333
  %336 = load i16, ptr %335, align 2, !tbaa !5
  %337 = zext i16 %336 to i64
  %338 = lshr i32 %330, 3
  %339 = zext nneg i32 %338 to i64
  %340 = getelementptr inbounds nuw i8, ptr %234, i64 %339
  %341 = icmp ugt ptr %340, %13
  %342 = select i1 %.not, i1 %341, i1 false
  %343 = select i1 %342, ptr %13, ptr %340
  store i64 %329, ptr %234, align 1, !tbaa !12
  %344 = and i32 %330, 7
  %345 = shl nuw nsw i64 %339, 3
  %346 = lshr i64 %329, %345
  %347 = icmp ugt ptr %310, %2
  br i1 %347, label %231, label %.loopexit.i, !llvm.loop !47

.loopexit.i:                                      ; preds = %231, %221
  %348 = phi i64 [ %222, %221 ], [ %346, %231 ]
  %349 = phi i32 [ %223, %221 ], [ %344, %231 ]
  %350 = phi i64 [ %224, %221 ], [ %337, %231 ]
  %351 = phi ptr [ %225, %221 ], [ %343, %231 ]
  %352 = phi i64 [ %226, %221 ], [ %309, %231 ]
  %353 = zext nneg i32 %146 to i64
  %354 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !38
  %356 = zext i32 %355 to i64
  %357 = and i64 %352, %356
  %358 = zext nneg i32 %349 to i64
  %359 = shl nuw nsw i64 %357, %358
  %360 = or i64 %359, %348
  %361 = add nuw nsw i32 %349, %146
  %362 = lshr i32 %361, 3
  %363 = zext nneg i32 %362 to i64
  store i64 %360, ptr %351, align 1, !tbaa !12
  %364 = getelementptr inbounds nuw i8, ptr %351, i64 %363
  %365 = icmp ugt ptr %364, %13
  %366 = select i1 %365, ptr %13, ptr %364
  %367 = and i32 %361, 7
  %368 = shl nuw nsw i64 %363, 3
  %369 = lshr i64 %360, %368
  %370 = and i64 %350, %356
  %371 = zext nneg i32 %367 to i64
  %372 = shl nuw nsw i64 %370, %371
  %373 = or i64 %369, %372
  %374 = add nuw nsw i32 %367, %146
  %375 = lshr i32 %374, 3
  %376 = zext nneg i32 %375 to i64
  store i64 %373, ptr %366, align 1, !tbaa !12
  %377 = getelementptr inbounds nuw i8, ptr %366, i64 %376
  %378 = icmp ugt ptr %377, %13
  %379 = select i1 %378, ptr %13, ptr %377
  %380 = and i32 %374, 7
  %381 = shl nuw nsw i64 %376, 3
  %382 = lshr i64 %373, %381
  %383 = zext nneg i32 %380 to i64
  %384 = shl nuw nsw i64 1, %383
  %385 = or i64 %382, %384
  %386 = add nuw nsw i32 %380, 1
  %387 = lshr i32 %386, 3
  %388 = zext nneg i32 %387 to i64
  store i64 %385, ptr %379, align 1, !tbaa !12
  %389 = getelementptr inbounds nuw i8, ptr %379, i64 %388
  %390 = icmp ugt ptr %389, %13
  %391 = select i1 %390, ptr %13, ptr %389
  %392 = icmp ult ptr %391, %13
  br i1 %392, label %393, label %FSE_compress_usingCTable_generic.exit

393:                                              ; preds = %.loopexit.i
  %394 = and i32 %386, 7
  %395 = ptrtoint ptr %391 to i64
  %396 = ptrtoint ptr %0 to i64
  %397 = icmp ne i32 %394, 0
  %398 = zext i1 %397 to i64
  %399 = sub i64 %398, %396
  %400 = add i64 %399, %395
  br label %FSE_compress_usingCTable_generic.exit

FSE_compress_usingCTable_generic.exit:            ; preds = %393, %.loopexit.i, %11, %5
  %401 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %400, %393 ], [ 0, %.loopexit.i ]
  ret i64 %401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @FSE_compressBound(i64 noundef %0) local_unnamed_addr #3 {
  %2 = lshr i64 %0, 7
  %3 = add i64 %0, 524
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }

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
!32 = !{!"branch_weights", i32 1, i32 127}
!33 = !{!"branch_weights", i32 127, i32 134217473}
!34 = distinct !{!34, !11}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = !{!26, !26, i64 0}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
