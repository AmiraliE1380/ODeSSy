; ModuleID = '/mydata/zstd/lib/decompress/huf_decompress.c'
source_filename = "/mydata/zstd/lib/decompress/huf_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.HUF_ReadDTableX1_Workspace = type { [13 x i32], [13 x i32], [219 x i32], [256 x i8], [256 x i8] }
%struct.HUF_DEltX1 = type { i8, i8 }
%struct.HUF_ReadDTableX2_Workspace = type { [12 x [13 x i32]], [13 x i32], [15 x i32], [256 x %struct.sortedSymbol_t], [256 x i8], [219 x i32] }
%struct.sortedSymbol_t = type { i8 }
%struct.HUF_DEltX2 = type { i16, i8, i8 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.HUF_DecompressFastArgs = type { [4 x ptr], [4 x ptr], [4 x i64], ptr, ptr, ptr, [4 x ptr] }

@algoTime = internal unnamed_addr constant [16 x [2 x %struct.algo_time_t]] [[2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 150, i32 216 }, %struct.algo_time_t { i32 381, i32 119 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 170, i32 205 }, %struct.algo_time_t { i32 514, i32 112 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 177, i32 199 }, %struct.algo_time_t { i32 539, i32 110 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 197, i32 194 }, %struct.algo_time_t { i32 644, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 221, i32 192 }, %struct.algo_time_t { i32 735, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 256, i32 189 }, %struct.algo_time_t { i32 881, i32 106 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 359, i32 188 }, %struct.algo_time_t { i32 1167, i32 109 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 582, i32 187 }, %struct.algo_time_t { i32 1570, i32 114 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 688, i32 187 }, %struct.algo_time_t { i32 1712, i32 122 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 825, i32 186 }, %struct.algo_time_t { i32 1965, i32 136 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 976, i32 185 }, %struct.algo_time_t { i32 2131, i32 150 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1180, i32 186 }, %struct.algo_time_t { i32 2070, i32 175 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1377, i32 185 }, %struct.algo_time_t { i32 1731, i32 202 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1412, i32 185 }, %struct.algo_time_t { i32 1695, i32 202 }]], align 16
@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readDTableX1_wksp(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %0, i64 1
  %10 = icmp ult i64 %4, 1492
  br i1 %10, label %487, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4
  %13 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 2
  %14 = call i64 @HUF_readStats_wksp(ptr noundef nonnull %12, i64 noundef 256, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %13, i64 noundef 876, i32 noundef %5) #16
  %15 = icmp ult i64 %14, -119
  br i1 %15, label %16, label %487

16:                                               ; preds = %11
  %17 = load i32, ptr %0, align 4
  %18 = trunc i32 %17 to i8
  %19 = lshr i32 %17, 24
  %20 = trunc i32 %19 to i8
  %21 = and i32 %17, 255
  %22 = add nuw nsw i32 %21, 1
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 11)
  %24 = load i32, ptr %8, align 4, !tbaa !5
  %25 = load i32, ptr %7, align 4, !tbaa !5
  %26 = icmp ugt i32 %25, %23
  br i1 %26, label %114, label %27

27:                                               ; preds = %16
  %28 = icmp ult i32 %25, %23
  br i1 %28, label %29, label %113

29:                                               ; preds = %27
  %30 = sub nsw i32 %23, %25
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  %33 = trunc i32 %30 to i8
  %34 = zext i32 %24 to i64
  %35 = icmp ult i32 %24, 8
  br i1 %35, label %77, label %36

36:                                               ; preds = %32
  %37 = icmp ult i32 %24, 32
  br i1 %37, label %61, label %38

38:                                               ; preds = %36
  %39 = and i64 %34, 4294967264
  %40 = insertelement <16 x i8> poison, i8 %33, i64 0
  %41 = shufflevector <16 x i8> %40, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 0, %38 ], [ %54, %42 ]
  %44 = getelementptr inbounds i8, ptr %12, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 16
  %46 = load <16 x i8>, ptr %44, align 1, !tbaa !9
  %47 = load <16 x i8>, ptr %45, align 1, !tbaa !9
  %48 = icmp eq <16 x i8> %46, zeroinitializer
  %49 = icmp eq <16 x i8> %47, zeroinitializer
  %50 = select <16 x i1> %48, <16 x i8> zeroinitializer, <16 x i8> %41
  %51 = select <16 x i1> %49, <16 x i8> zeroinitializer, <16 x i8> %41
  %52 = add <16 x i8> %50, %46
  %53 = add <16 x i8> %51, %47
  store <16 x i8> %52, ptr %44, align 1, !tbaa !9
  store <16 x i8> %53, ptr %45, align 1, !tbaa !9
  %54 = add nuw i64 %43, 32
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %42, !llvm.loop !10

56:                                               ; preds = %42
  %57 = icmp eq i64 %39, %34
  br i1 %57, label %79, label %58

58:                                               ; preds = %56
  %59 = and i64 %34, 24
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %36, %58
  %62 = phi i64 [ %39, %58 ], [ 0, %36 ]
  %63 = and i64 %34, 4294967288
  %64 = insertelement <8 x i8> poison, i8 %33, i64 0
  %65 = shufflevector <8 x i8> %64, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi i64 [ %62, %61 ], [ %73, %66 ]
  %68 = getelementptr inbounds i8, ptr %12, i64 %67
  %69 = load <8 x i8>, ptr %68, align 1, !tbaa !9
  %70 = icmp eq <8 x i8> %69, zeroinitializer
  %71 = select <8 x i1> %70, <8 x i8> zeroinitializer, <8 x i8> %65
  %72 = add <8 x i8> %71, %69
  store <8 x i8> %72, ptr %68, align 1, !tbaa !9
  %73 = add nuw i64 %67, 8
  %74 = icmp eq i64 %73, %63
  br i1 %74, label %75, label %66, !llvm.loop !14

75:                                               ; preds = %66
  %76 = icmp eq i64 %63, %34
  br i1 %76, label %79, label %77

77:                                               ; preds = %32, %58, %75
  %78 = phi i64 [ 0, %32 ], [ %39, %58 ], [ %63, %75 ]
  br label %83

79:                                               ; preds = %83, %56, %75, %29
  %80 = icmp ult i32 %30, %23
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = zext nneg i32 %23 to i64
  br label %102

83:                                               ; preds = %77, %83
  %84 = phi i64 [ %90, %83 ], [ %78, %77 ]
  %85 = getelementptr inbounds i8, ptr %12, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i8 0, i8 %33
  %89 = add i8 %88, %86
  store i8 %89, ptr %85, align 1, !tbaa !9
  %90 = add nuw nsw i64 %84, 1
  %91 = icmp eq i64 %90, %34
  br i1 %91, label %79, label %83, !llvm.loop !15

92:                                               ; preds = %102, %79
  %93 = zext i32 %30 to i64
  %94 = xor i32 %25, -1
  %95 = add i32 %23, %94
  %96 = zext i32 %95 to i64
  %97 = shl nuw nsw i64 %96, 2
  %98 = sub nsw i64 %93, %96
  %99 = shl nsw i64 %98, 2
  %100 = getelementptr i8, ptr %3, i64 %99
  %101 = add nuw nsw i64 %97, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %100, i8 0, i64 %101, i1 false), !tbaa !5
  br label %113

102:                                              ; preds = %102, %81
  %103 = phi i64 [ %82, %81 ], [ %110, %102 ]
  %104 = trunc i64 %103 to i32
  %105 = sub nsw i32 %104, %30
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %3, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !5
  %109 = getelementptr inbounds i32, ptr %3, i64 %103
  store i32 %108, ptr %109, align 4, !tbaa !5
  %110 = add nsw i64 %103, -1
  %111 = trunc i64 %110 to i32
  %112 = icmp ult i32 %30, %111
  br i1 %112, label %102, label %92, !llvm.loop !16

113:                                              ; preds = %27, %92
  store i32 %23, ptr %7, align 4, !tbaa !5
  br label %117

114:                                              ; preds = %16
  %115 = icmp ugt i32 %25, %22
  br i1 %115, label %487, label %117

116:                                              ; preds = %206, %479, %471, %397, %392, %376, %371, %361, %351, %346, %334, %329, %463, %410, %126
  call void @llvm.ubsantrap(i8 0) #17, !nosanitize !17
  unreachable, !nosanitize !17

117:                                              ; preds = %113, %114
  %118 = phi i32 [ %23, %113 ], [ %25, %114 ]
  %119 = trunc i32 %118 to i8
  store i8 %18, ptr %0, align 4
  %120 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %119, ptr %121, align 2
  %122 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %20, ptr %122, align 1
  %123 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 -4)
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !17
  br i1 %124, label %125, label %126, !nosanitize !17

125:                                              ; preds = %117
  call void @llvm.ubsantrap(i8 21) #17, !nosanitize !17
  unreachable, !nosanitize !17

126:                                              ; preds = %117
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !17
  %128 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 1), !nosanitize !17
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !17
  br i1 %129, label %116, label %130, !nosanitize !17

130:                                              ; preds = %126
  %131 = extractvalue { i32, i1 } %128, 0, !nosanitize !17
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = zext nneg i32 %131 to i64
  %135 = and i64 %134, 3
  %136 = icmp ult i32 %131, 4
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = and i64 %134, 2147483644
  br label %156

139:                                              ; preds = %156, %133
  %140 = phi i64 [ 0, %133 ], [ %178, %156 ]
  %141 = phi i32 [ 0, %133 ], [ %179, %156 ]
  %142 = icmp eq i64 %135, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139, %143
  %144 = phi i64 [ %150, %143 ], [ %140, %139 ]
  %145 = phi i32 [ %151, %143 ], [ %141, %139 ]
  %146 = phi i64 [ %152, %143 ], [ 0, %139 ]
  %147 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %144
  %148 = load i32, ptr %147, align 4, !tbaa !5
  %149 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %144
  store i32 %145, ptr %149, align 4, !tbaa !5
  %150 = add nuw nsw i64 %144, 1
  %151 = add i32 %148, %145
  %152 = add i64 %146, 1
  %153 = icmp eq i64 %152, %135
  br i1 %153, label %154, label %143, !llvm.loop !18

154:                                              ; preds = %139, %143, %130
  %155 = icmp slt i32 %127, 0
  br i1 %155, label %182, label %206

156:                                              ; preds = %156, %137
  %157 = phi i64 [ 0, %137 ], [ %178, %156 ]
  %158 = phi i32 [ 0, %137 ], [ %179, %156 ]
  %159 = phi i64 [ 0, %137 ], [ %180, %156 ]
  %160 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %157
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %157
  store i32 %158, ptr %162, align 4, !tbaa !5
  %163 = or disjoint i64 %157, 1
  %164 = add i32 %161, %158
  %165 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %163
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %163
  store i32 %164, ptr %167, align 4, !tbaa !5
  %168 = or disjoint i64 %157, 2
  %169 = add i32 %166, %164
  %170 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %168
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %168
  store i32 %169, ptr %172, align 4, !tbaa !5
  %173 = or disjoint i64 %157, 3
  %174 = add i32 %171, %169
  %175 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %173
  %176 = load i32, ptr %175, align 4, !tbaa !5
  %177 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %173
  store i32 %174, ptr %177, align 4, !tbaa !5
  %178 = add nuw nsw i64 %157, 4
  %179 = add i32 %176, %174
  %180 = add i64 %159, 4
  %181 = icmp eq i64 %180, %138
  br i1 %181, label %139, label %156

182:                                              ; preds = %249, %154
  %183 = phi i32 [ 0, %154 ], [ %251, %249 ]
  %184 = icmp slt i32 %183, %24
  br i1 %184, label %185, label %276

185:                                              ; preds = %182
  %186 = sext i32 %183 to i64
  %187 = sext i32 %24 to i64
  %188 = sub nsw i64 %187, %186
  %189 = and i64 %188, 1
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %186
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = zext i8 %193 to i64
  %195 = trunc i32 %183 to i8
  %196 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4, !tbaa !5
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %199
  store i8 %195, ptr %200, align 1, !tbaa !9
  %201 = add nsw i64 %186, 1
  br label %202

202:                                              ; preds = %191, %185
  %203 = phi i64 [ %186, %185 ], [ %201, %191 ]
  %204 = add nsw i64 %187, -1
  %205 = icmp eq i64 %204, %186
  br i1 %205, label %276, label %253

206:                                              ; preds = %154, %249
  %207 = phi i64 [ %250, %249 ], [ 0, %154 ]
  %208 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !9
  %210 = zext i8 %209 to i64
  %211 = trunc i64 %207 to i8
  %212 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %210
  %213 = load i32, ptr %212, align 4, !tbaa !5
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 4, !tbaa !5
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %215
  store i8 %211, ptr %216, align 1, !tbaa !9
  %217 = or disjoint i64 %207, 1
  %218 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = trunc i64 %217 to i8
  %222 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %220
  %223 = load i32, ptr %222, align 4, !tbaa !5
  %224 = add i32 %223, 1
  store i32 %224, ptr %222, align 4, !tbaa !5
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %225
  store i8 %221, ptr %226, align 1, !tbaa !9
  %227 = or disjoint i64 %207, 2
  %228 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = zext i8 %229 to i64
  %231 = trunc i64 %227 to i8
  %232 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %230
  %233 = load i32, ptr %232, align 4, !tbaa !5
  %234 = add i32 %233, 1
  store i32 %234, ptr %232, align 4, !tbaa !5
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %235
  store i8 %231, ptr %236, align 1, !tbaa !9
  %237 = or disjoint i64 %207, 3
  %238 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = trunc i64 %237 to i8
  %242 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %240
  %243 = load i32, ptr %242, align 4, !tbaa !5
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 4, !tbaa !5
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %245
  store i8 %241, ptr %246, align 1, !tbaa !9
  %247 = and i64 %207, 4294967292
  %248 = icmp eq i64 %247, 2147483644
  br i1 %248, label %116, label %249, !nosanitize !17

249:                                              ; preds = %206
  %250 = add nuw nsw i64 %207, 4
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %127, %251
  br i1 %252, label %182, label %206, !llvm.loop !20

253:                                              ; preds = %202, %253
  %254 = phi i64 [ %274, %253 ], [ %203, %202 ]
  %255 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !9
  %257 = zext i8 %256 to i64
  %258 = trunc i64 %254 to i8
  %259 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %257
  %260 = load i32, ptr %259, align 4, !tbaa !5
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 4, !tbaa !5
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %262
  store i8 %258, ptr %263, align 1, !tbaa !9
  %264 = add nsw i64 %254, 1
  %265 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 4, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !9
  %267 = zext i8 %266 to i64
  %268 = trunc i64 %264 to i8
  %269 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 1, i64 %267
  %270 = load i32, ptr %269, align 4, !tbaa !5
  %271 = add i32 %270, 1
  store i32 %271, ptr %269, align 4, !tbaa !5
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %272
  store i8 %268, ptr %273, align 1, !tbaa !9
  %274 = add nsw i64 %254, 2
  %275 = icmp eq i64 %274, %187
  br i1 %275, label %276, label %253, !llvm.loop !21

276:                                              ; preds = %202, %253, %182
  %277 = add i32 %118, 1
  %278 = icmp ugt i32 %277, 1
  br i1 %278, label %279, label %487

279:                                              ; preds = %276
  %280 = load i32, ptr %3, align 4, !tbaa !5
  %281 = zext i32 %131 to i64
  br label %282

282:                                              ; preds = %279, %483
  %283 = phi i64 [ 1, %279 ], [ %485, %483 ]
  %284 = phi i32 [ %280, %279 ], [ %473, %483 ]
  %285 = phi i32 [ 0, %279 ], [ %484, %483 ]
  %286 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %283
  %287 = load i32, ptr %286, align 4, !tbaa !5
  %288 = trunc i64 %283 to i32
  %289 = shl nuw i32 1, %288
  %290 = ashr exact i32 %289, 1
  %291 = sub i32 %277, %288
  %292 = trunc i32 %291 to i8
  %293 = icmp sgt i32 %287, 0
  switch i32 %290, label %311 [
    i32 1, label %307
    i32 2, label %304
    i32 4, label %299
    i32 8, label %294
  ]

294:                                              ; preds = %282
  br i1 %293, label %295, label %471

295:                                              ; preds = %294
  %296 = and i32 %291, 255
  %297 = zext nneg i32 %296 to i64
  %298 = sext i32 %285 to i64
  br label %392

299:                                              ; preds = %282
  br i1 %293, label %300, label %471

300:                                              ; preds = %299
  %301 = and i32 %291, 255
  %302 = zext nneg i32 %301 to i64
  %303 = sext i32 %285 to i64
  br label %371

304:                                              ; preds = %282
  br i1 %293, label %305, label %471

305:                                              ; preds = %304
  %306 = sext i32 %285 to i64
  br label %346

307:                                              ; preds = %282
  br i1 %293, label %308, label %471

308:                                              ; preds = %307
  %309 = sext i32 %285 to i64
  %310 = sub i32 2147483647, %285
  br label %329

311:                                              ; preds = %282
  br i1 %293, label %312, label %471

312:                                              ; preds = %311
  %313 = and i32 %291, 255
  %314 = zext nneg i32 %313 to i64
  %315 = icmp sgt i32 %290, 0
  %316 = sext i32 %290 to i64
  %317 = sext i32 %285 to i64
  %318 = add nsw i64 %316, -1
  %319 = lshr i64 %318, 4
  %320 = add nuw nsw i64 %319, 1
  %321 = and i64 %320, 3
  %322 = icmp ult i32 %290, 49
  %323 = and i64 %320, 2305843009213693948
  %324 = icmp eq i64 %321, 0
  br label %410

325:                                              ; preds = %334
  %326 = add nuw nsw i32 %331, 1
  %327 = add nsw i64 %330, 1
  %328 = icmp eq i32 %326, %287
  br i1 %328, label %471, label %329, !llvm.loop !22

329:                                              ; preds = %308, %325
  %330 = phi i64 [ %309, %308 ], [ %327, %325 ]
  %331 = phi i32 [ 0, %308 ], [ %326, %325 ]
  %332 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %331), !nosanitize !17
  %333 = extractvalue { i32, i1 } %332, 1, !nosanitize !17
  br i1 %333, label %116, label %334, !nosanitize !17

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %332, 0, !nosanitize !17
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !9
  %339 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %330
  store i8 %292, ptr %339, align 1, !tbaa.struct !23
  %340 = getelementptr inbounds i8, ptr %339, i64 1
  store i8 %338, ptr %340, align 1, !tbaa.struct !24
  %341 = icmp eq i32 %331, %310
  br i1 %341, label %116, label %325, !nosanitize !17

342:                                              ; preds = %361
  %343 = add nuw nsw i32 %348, 1
  %344 = add nsw i64 %347, 2
  %345 = icmp eq i32 %343, %287
  br i1 %345, label %471, label %346, !llvm.loop !25

346:                                              ; preds = %305, %342
  %347 = phi i64 [ %306, %305 ], [ %344, %342 ]
  %348 = phi i32 [ 0, %305 ], [ %343, %342 ]
  %349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %348), !nosanitize !17
  %350 = extractvalue { i32, i1 } %349, 1, !nosanitize !17
  br i1 %350, label %116, label %351, !nosanitize !17

351:                                              ; preds = %346
  %352 = extractvalue { i32, i1 } %349, 0, !nosanitize !17
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !9
  %356 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %347
  store i8 %292, ptr %356, align 1, !tbaa.struct !23
  %357 = getelementptr inbounds i8, ptr %356, i64 1
  store i8 %355, ptr %357, align 1, !tbaa.struct !24
  %358 = trunc i64 %347 to i32
  %359 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 1), !nosanitize !17
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !17
  br i1 %360, label %116, label %361, !nosanitize !17

361:                                              ; preds = %351
  %362 = extractvalue { i32, i1 } %359, 0, !nosanitize !17
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %363
  store i8 %292, ptr %364, align 1, !tbaa.struct !23
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  store i8 %355, ptr %365, align 1, !tbaa.struct !24
  %366 = icmp sgt i32 %358, 2147483645
  br i1 %366, label %116, label %342, !nosanitize !17

367:                                              ; preds = %376
  %368 = add nuw nsw i32 %373, 1
  %369 = add nsw i64 %372, 4
  %370 = icmp eq i32 %368, %287
  br i1 %370, label %471, label %371, !llvm.loop !26

371:                                              ; preds = %300, %367
  %372 = phi i64 [ %303, %300 ], [ %369, %367 ]
  %373 = phi i32 [ 0, %300 ], [ %368, %367 ]
  %374 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %373), !nosanitize !17
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !17
  br i1 %375, label %116, label %376, !nosanitize !17

376:                                              ; preds = %371
  %377 = extractvalue { i32, i1 } %374, 0, !nosanitize !17
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !9
  %381 = zext i8 %380 to i64
  %382 = shl nuw nsw i64 %381, 8
  %383 = or disjoint i64 %382, %302
  %384 = mul nuw i64 %383, 281479271743489
  %385 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %372
  store i64 %384, ptr %385, align 1, !tbaa !27
  %386 = trunc i64 %372 to i32
  %387 = icmp sgt i32 %386, 2147483643
  br i1 %387, label %116, label %367, !nosanitize !17

388:                                              ; preds = %397
  %389 = add nuw nsw i32 %394, 1
  %390 = add nsw i64 %393, 8
  %391 = icmp eq i32 %389, %287
  br i1 %391, label %471, label %392, !llvm.loop !29

392:                                              ; preds = %295, %388
  %393 = phi i64 [ %298, %295 ], [ %390, %388 ]
  %394 = phi i32 [ 0, %295 ], [ %389, %388 ]
  %395 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %394), !nosanitize !17
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !17
  br i1 %396, label %116, label %397, !nosanitize !17

397:                                              ; preds = %392
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !17
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !9
  %402 = zext i8 %401 to i64
  %403 = shl nuw nsw i64 %402, 8
  %404 = or disjoint i64 %403, %297
  %405 = mul nuw i64 %404, 281479271743489
  %406 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %393
  store i64 %405, ptr %406, align 1, !tbaa !27
  %407 = getelementptr inbounds %struct.HUF_DEltX1, ptr %406, i64 4
  store i64 %405, ptr %407, align 1, !tbaa !27
  %408 = trunc i64 %393 to i32
  %409 = icmp sgt i32 %408, 2147483639
  br i1 %409, label %116, label %388, !nosanitize !17

410:                                              ; preds = %312, %467
  %411 = phi i64 [ %317, %312 ], [ %468, %467 ]
  %412 = phi i32 [ 0, %312 ], [ %469, %467 ]
  %413 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %412), !nosanitize !17
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !17
  br i1 %414, label %116, label %415, !nosanitize !17

415:                                              ; preds = %410
  %416 = extractvalue { i32, i1 } %413, 0, !nosanitize !17
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i64 0, i32 3, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !9
  %420 = zext i8 %419 to i64
  %421 = shl nuw nsw i64 %420, 8
  %422 = or disjoint i64 %421, %314
  %423 = mul nuw i64 %422, 281479271743489
  br i1 %315, label %424, label %463

424:                                              ; preds = %415
  %425 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %411
  br i1 %322, label %451, label %426

426:                                              ; preds = %424, %426
  %427 = phi i64 [ %448, %426 ], [ 0, %424 ]
  %428 = phi i64 [ %449, %426 ], [ 0, %424 ]
  %429 = getelementptr inbounds %struct.HUF_DEltX1, ptr %425, i64 %427
  store i64 %423, ptr %429, align 1, !tbaa !27
  %430 = getelementptr inbounds %struct.HUF_DEltX1, ptr %429, i64 4
  store i64 %423, ptr %430, align 1, !tbaa !27
  %431 = getelementptr inbounds %struct.HUF_DEltX1, ptr %429, i64 8
  store i64 %423, ptr %431, align 1, !tbaa !27
  %432 = getelementptr inbounds %struct.HUF_DEltX1, ptr %429, i64 12
  store i64 %423, ptr %432, align 1, !tbaa !27
  %433 = or disjoint i64 %427, 16
  %434 = getelementptr inbounds %struct.HUF_DEltX1, ptr %425, i64 %433
  store i64 %423, ptr %434, align 1, !tbaa !27
  %435 = getelementptr inbounds %struct.HUF_DEltX1, ptr %434, i64 4
  store i64 %423, ptr %435, align 1, !tbaa !27
  %436 = getelementptr inbounds %struct.HUF_DEltX1, ptr %434, i64 8
  store i64 %423, ptr %436, align 1, !tbaa !27
  %437 = getelementptr inbounds %struct.HUF_DEltX1, ptr %434, i64 12
  store i64 %423, ptr %437, align 1, !tbaa !27
  %438 = or disjoint i64 %427, 32
  %439 = getelementptr inbounds %struct.HUF_DEltX1, ptr %425, i64 %438
  store i64 %423, ptr %439, align 1, !tbaa !27
  %440 = getelementptr inbounds %struct.HUF_DEltX1, ptr %439, i64 4
  store i64 %423, ptr %440, align 1, !tbaa !27
  %441 = getelementptr inbounds %struct.HUF_DEltX1, ptr %439, i64 8
  store i64 %423, ptr %441, align 1, !tbaa !27
  %442 = getelementptr inbounds %struct.HUF_DEltX1, ptr %439, i64 12
  store i64 %423, ptr %442, align 1, !tbaa !27
  %443 = or disjoint i64 %427, 48
  %444 = getelementptr inbounds %struct.HUF_DEltX1, ptr %425, i64 %443
  store i64 %423, ptr %444, align 1, !tbaa !27
  %445 = getelementptr inbounds %struct.HUF_DEltX1, ptr %444, i64 4
  store i64 %423, ptr %445, align 1, !tbaa !27
  %446 = getelementptr inbounds %struct.HUF_DEltX1, ptr %444, i64 8
  store i64 %423, ptr %446, align 1, !tbaa !27
  %447 = getelementptr inbounds %struct.HUF_DEltX1, ptr %444, i64 12
  store i64 %423, ptr %447, align 1, !tbaa !27
  %448 = add nuw nsw i64 %427, 64
  %449 = add i64 %428, 4
  %450 = icmp eq i64 %449, %323
  br i1 %450, label %451, label %426, !llvm.loop !30

451:                                              ; preds = %426, %424
  %452 = phi i64 [ 0, %424 ], [ %448, %426 ]
  br i1 %324, label %463, label %453

453:                                              ; preds = %451, %453
  %454 = phi i64 [ %460, %453 ], [ %452, %451 ]
  %455 = phi i64 [ %461, %453 ], [ 0, %451 ]
  %456 = getelementptr inbounds %struct.HUF_DEltX1, ptr %425, i64 %454
  store i64 %423, ptr %456, align 1, !tbaa !27
  %457 = getelementptr inbounds %struct.HUF_DEltX1, ptr %456, i64 4
  store i64 %423, ptr %457, align 1, !tbaa !27
  %458 = getelementptr inbounds %struct.HUF_DEltX1, ptr %456, i64 8
  store i64 %423, ptr %458, align 1, !tbaa !27
  %459 = getelementptr inbounds %struct.HUF_DEltX1, ptr %456, i64 12
  store i64 %423, ptr %459, align 1, !tbaa !27
  %460 = add nuw nsw i64 %454, 16
  %461 = add i64 %455, 1
  %462 = icmp eq i64 %461, %321
  br i1 %462, label %463, label %453, !llvm.loop !31

463:                                              ; preds = %451, %453, %415
  %464 = trunc i64 %411 to i32
  %465 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %464, i32 %290), !nosanitize !17
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !17
  br i1 %466, label %116, label %467, !nosanitize !17

467:                                              ; preds = %463
  %468 = add i64 %411, %316
  %469 = add nuw nsw i32 %412, 1
  %470 = icmp eq i32 %469, %287
  br i1 %470, label %471, label %410, !llvm.loop !32

471:                                              ; preds = %388, %367, %342, %325, %467, %294, %299, %304, %307, %311
  %472 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 %287), !nosanitize !17
  %473 = extractvalue { i32, i1 } %472, 0, !nosanitize !17
  %474 = extractvalue { i32, i1 } %472, 1, !nosanitize !17
  br i1 %474, label %116, label %475, !nosanitize !17

475:                                              ; preds = %471
  %476 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %287, i32 %290), !nosanitize !17
  %477 = extractvalue { i32, i1 } %476, 1, !nosanitize !17
  br i1 %477, label %478, label %479, !nosanitize !17

478:                                              ; preds = %475
  call void @llvm.ubsantrap(i8 12) #17, !nosanitize !17
  unreachable, !nosanitize !17

479:                                              ; preds = %475
  %480 = extractvalue { i32, i1 } %476, 0, !nosanitize !17
  %481 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %285, i32 %480), !nosanitize !17
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !17
  br i1 %482, label %116, label %483, !nosanitize !17

483:                                              ; preds = %479
  %484 = extractvalue { i32, i1 } %481, 0, !nosanitize !17
  %485 = add nuw nsw i64 %283, 1
  %486 = icmp eq i64 %485, %281
  br i1 %486, label %487, label %282, !llvm.loop !33

487:                                              ; preds = %483, %276, %114, %11, %6
  %488 = phi i64 [ -44, %6 ], [ %14, %11 ], [ -44, %114 ], [ %14, %276 ], [ %14, %483 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i64 %488
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %9 = load i32, ptr %0, align 4
  %10 = trunc i32 %9 to i8
  %11 = lshr i32 %9, 24
  %12 = trunc i32 %11 to i8
  %13 = and i32 %9, 255
  %14 = getelementptr i32, ptr %0, i64 1
  %15 = icmp ult i64 %4, 2124
  br i1 %15, label %1033, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 2, i64 1
  %19 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1
  %20 = icmp ugt i32 %13, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %19, i8 0, i64 112, i1 false)
  br i1 %20, label %1033, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 4
  %23 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 5
  %24 = call i64 @HUF_readStats_wksp(ptr noundef nonnull %22, i64 noundef 256, ptr noundef nonnull %19, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %23, i64 noundef 876, i32 noundef %5) #16
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %1033

26:                                               ; preds = %21
  %27 = load i32, ptr %7, align 4, !tbaa !5
  %28 = icmp ugt i32 %27, %13
  br i1 %28, label %1033, label %29

29:                                               ; preds = %26
  %30 = icmp ult i32 %27, 12
  %31 = icmp eq i32 %13, 12
  %32 = select i1 %30, i1 %31, i1 false
  %33 = add nuw nsw i32 %27, 1
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i32 [ %46, %34 ], [ 0, %29 ]
  %36 = phi i32 [ %45, %34 ], [ 1, %29 ]
  %37 = phi i32 [ %44, %34 ], [ %33, %29 ]
  %38 = phi i32 [ %43, %34 ], [ %27, %29 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = icmp eq i32 %41, 0
  %43 = add i32 %38, -1
  %44 = add i32 %37, -1
  %45 = add i32 %36, 1
  %46 = add i32 %35, -1
  br i1 %42, label %34, label %47, !llvm.loop !34

47:                                               ; preds = %34
  %48 = select i1 %32, i32 11, i32 %13
  %49 = add i32 %38, 1
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %101, label %51

51:                                               ; preds = %47
  %52 = zext i32 %37 to i64
  %53 = add nsw i64 %52, -1
  %54 = add nsw i64 %52, -2
  %55 = and i64 %53, 3
  %56 = icmp ult i64 %54, 3
  br i1 %56, label %85, label %57

57:                                               ; preds = %51
  %58 = and i64 %53, -4
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 1, %57 ], [ %82, %59 ]
  %61 = phi i32 [ 0, %57 ], [ %80, %59 ]
  %62 = phi i64 [ 0, %57 ], [ %83, %59 ]
  %63 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %60
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = add i32 %64, %61
  %66 = getelementptr inbounds i32, ptr %18, i64 %60
  store i32 %61, ptr %66, align 4, !tbaa !5
  %67 = add nuw nsw i64 %60, 1
  %68 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = add i32 %69, %65
  %71 = getelementptr inbounds i32, ptr %18, i64 %67
  store i32 %65, ptr %71, align 4, !tbaa !5
  %72 = add nuw nsw i64 %60, 2
  %73 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !5
  %75 = add i32 %74, %70
  %76 = getelementptr inbounds i32, ptr %18, i64 %72
  store i32 %70, ptr %76, align 4, !tbaa !5
  %77 = add nuw nsw i64 %60, 3
  %78 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = add i32 %79, %75
  %81 = getelementptr inbounds i32, ptr %18, i64 %77
  store i32 %75, ptr %81, align 4, !tbaa !5
  %82 = add nuw nsw i64 %60, 4
  %83 = add i64 %62, 4
  %84 = icmp eq i64 %83, %58
  br i1 %84, label %85, label %59, !llvm.loop !35

85:                                               ; preds = %59, %51
  %86 = phi i32 [ undef, %51 ], [ %80, %59 ]
  %87 = phi i64 [ 1, %51 ], [ %82, %59 ]
  %88 = phi i32 [ 0, %51 ], [ %80, %59 ]
  %89 = icmp eq i64 %55, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85, %90
  %91 = phi i64 [ %98, %90 ], [ %87, %85 ]
  %92 = phi i32 [ %96, %90 ], [ %88, %85 ]
  %93 = phi i64 [ %99, %90 ], [ 0, %85 ]
  %94 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %91
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = add i32 %95, %92
  %97 = getelementptr inbounds i32, ptr %18, i64 %91
  store i32 %92, ptr %97, align 4, !tbaa !5
  %98 = add nuw nsw i64 %91, 1
  %99 = add i64 %93, 1
  %100 = icmp eq i64 %99, %55
  br i1 %100, label %101, label %90, !llvm.loop !36

101:                                              ; preds = %85, %90, %47
  %102 = phi i32 [ 0, %47 ], [ %86, %85 ], [ %96, %90 ]
  store i32 %102, ptr %18, align 4, !tbaa !5
  %103 = zext i32 %49 to i64
  %104 = getelementptr inbounds i32, ptr %18, i64 %103
  store i32 %102, ptr %104, align 4, !tbaa !5
  %105 = load i32, ptr %8, align 4, !tbaa !5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %151, label %107

107:                                              ; preds = %101
  %108 = zext i32 %105 to i64
  %109 = and i64 %108, 1
  %110 = icmp eq i32 %105, 1
  br i1 %110, label %138, label %111

111:                                              ; preds = %107
  %112 = and i64 %108, 4294967294
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %135, %113 ]
  %115 = phi i64 [ 0, %111 ], [ %136, %113 ]
  %116 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 4, i64 %114
  %117 = load i8, ptr %116, align 1, !tbaa !9
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds i32, ptr %18, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 4, !tbaa !5
  %122 = trunc i64 %114 to i8
  %123 = zext i32 %120 to i64
  %124 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 3, i64 %123
  store i8 %122, ptr %124, align 1, !tbaa !37
  %125 = or disjoint i64 %114, 1
  %126 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 4, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !9
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i32, ptr %18, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !5
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4, !tbaa !5
  %132 = trunc i64 %125 to i8
  %133 = zext i32 %130 to i64
  %134 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 3, i64 %133
  store i8 %132, ptr %134, align 1, !tbaa !37
  %135 = add nuw nsw i64 %114, 2
  %136 = add i64 %115, 2
  %137 = icmp eq i64 %136, %112
  br i1 %137, label %138, label %113, !llvm.loop !39

138:                                              ; preds = %113, %107
  %139 = phi i64 [ 0, %107 ], [ %135, %113 ]
  %140 = icmp eq i64 %109, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 4, i64 %139
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i32, ptr %18, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !5
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4, !tbaa !5
  %148 = trunc i64 %139 to i8
  %149 = zext i32 %146 to i64
  %150 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 3, i64 %149
  store i8 %148, ptr %150, align 1, !tbaa !37
  br label %151

151:                                              ; preds = %141, %138, %101
  store i32 0, ptr %18, align 4, !tbaa !5
  %152 = xor i32 %27, -1
  %153 = add i32 %48, %152
  br i1 %50, label %195, label %154

154:                                              ; preds = %151
  %155 = zext i32 %37 to i64
  %156 = add nsw i64 %103, -1
  %157 = and i64 %156, 1
  %158 = icmp eq i32 %49, 2
  br i1 %158, label %183, label %159

159:                                              ; preds = %154
  %160 = and i64 %156, -2
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 1, %159 ], [ %180, %161 ]
  %163 = phi i32 [ 0, %159 ], [ %178, %161 ]
  %164 = phi i64 [ 0, %159 ], [ %181, %161 ]
  %165 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %162
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = trunc i64 %162 to i32
  %168 = add i32 %153, %167
  %169 = shl i32 %166, %168
  %170 = add i32 %169, %163
  %171 = getelementptr inbounds i32, ptr %3, i64 %162
  store i32 %163, ptr %171, align 4, !tbaa !5
  %172 = add nuw nsw i64 %162, 1
  %173 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = trunc i64 %172 to i32
  %176 = add i32 %153, %175
  %177 = shl i32 %174, %176
  %178 = add i32 %177, %170
  %179 = getelementptr inbounds i32, ptr %3, i64 %172
  store i32 %170, ptr %179, align 4, !tbaa !5
  %180 = add nuw nsw i64 %162, 2
  %181 = add i64 %164, 2
  %182 = icmp eq i64 %181, %160
  br i1 %182, label %183, label %161, !llvm.loop !40

183:                                              ; preds = %161, %154
  %184 = phi i64 [ 1, %154 ], [ %180, %161 ]
  %185 = phi i32 [ 0, %154 ], [ %178, %161 ]
  %186 = icmp eq i64 %157, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds i32, ptr %3, i64 %184
  store i32 %185, ptr %188, align 4, !tbaa !5
  br label %189

189:                                              ; preds = %183, %187
  %190 = sub i32 %33, %38
  %191 = add nuw nsw i32 %48, 1
  %192 = sub i32 %191, %190
  %193 = icmp uge i32 %190, %192
  %194 = or i1 %193, %50
  br i1 %194, label %279, label %197

195:                                              ; preds = %151
  %196 = sub i32 %33, %38
  br label %279

197:                                              ; preds = %189
  %198 = zext i32 %36 to i64
  %199 = add i32 %48, %35
  %200 = zext i32 %37 to i64
  %201 = add nsw i64 %155, -1
  %202 = icmp ult i64 %201, 8
  %203 = and i64 %201, -8
  %204 = or disjoint i64 %203, 1
  %205 = icmp eq i64 %201, %203
  br label %206

206:                                              ; preds = %197, %274
  %207 = phi i64 [ 0, %197 ], [ %278, %274 ]
  %208 = phi i64 [ %198, %197 ], [ %275, %274 ]
  %209 = getelementptr inbounds [12 x [13 x i32]], ptr %3, i64 0, i64 %208
  %210 = trunc i64 %208 to i32
  br i1 %202, label %232, label %211

211:                                              ; preds = %206
  %212 = add i64 %207, %198
  %213 = mul i64 %212, 52
  %214 = icmp ult i64 %213, 32
  br i1 %214, label %232, label %215

215:                                              ; preds = %211
  %216 = insertelement <4 x i32> poison, i32 %210, i64 0
  %217 = shufflevector <4 x i32> %216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %218

218:                                              ; preds = %218, %215
  %219 = phi i64 [ 0, %215 ], [ %229, %218 ]
  %220 = or disjoint i64 %219, 1
  %221 = getelementptr inbounds i32, ptr %3, i64 %220
  %222 = getelementptr inbounds i32, ptr %221, i64 4
  %223 = load <4 x i32>, ptr %221, align 4, !tbaa !5
  %224 = load <4 x i32>, ptr %222, align 4, !tbaa !5
  %225 = lshr <4 x i32> %223, %217
  %226 = lshr <4 x i32> %224, %217
  %227 = getelementptr inbounds i32, ptr %209, i64 %220
  %228 = getelementptr inbounds i32, ptr %227, i64 4
  store <4 x i32> %225, ptr %227, align 4, !tbaa !5
  store <4 x i32> %226, ptr %228, align 4, !tbaa !5
  %229 = add nuw i64 %219, 8
  %230 = icmp eq i64 %229, %203
  br i1 %230, label %231, label %218, !llvm.loop !41

231:                                              ; preds = %218
  br i1 %205, label %274, label %232

232:                                              ; preds = %211, %206, %231
  %233 = phi i64 [ 1, %211 ], [ 1, %206 ], [ %204, %231 ]
  %234 = sub nsw i64 %103, %233
  %235 = and i64 %234, 3
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %232, %237
  %238 = phi i64 [ %244, %237 ], [ %233, %232 ]
  %239 = phi i64 [ %245, %237 ], [ 0, %232 ]
  %240 = getelementptr inbounds i32, ptr %3, i64 %238
  %241 = load i32, ptr %240, align 4, !tbaa !5
  %242 = lshr i32 %241, %210
  %243 = getelementptr inbounds i32, ptr %209, i64 %238
  store i32 %242, ptr %243, align 4, !tbaa !5
  %244 = add nuw nsw i64 %238, 1
  %245 = add i64 %239, 1
  %246 = icmp eq i64 %245, %235
  br i1 %246, label %247, label %237, !llvm.loop !42

247:                                              ; preds = %237, %232
  %248 = phi i64 [ %233, %232 ], [ %244, %237 ]
  %249 = sub nsw i64 %233, %103
  %250 = icmp ugt i64 %249, -4
  br i1 %250, label %274, label %251

251:                                              ; preds = %247, %251
  %252 = phi i64 [ %272, %251 ], [ %248, %247 ]
  %253 = getelementptr inbounds i32, ptr %3, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !5
  %255 = lshr i32 %254, %210
  %256 = getelementptr inbounds i32, ptr %209, i64 %252
  store i32 %255, ptr %256, align 4, !tbaa !5
  %257 = add nuw nsw i64 %252, 1
  %258 = getelementptr inbounds i32, ptr %3, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !5
  %260 = lshr i32 %259, %210
  %261 = getelementptr inbounds i32, ptr %209, i64 %257
  store i32 %260, ptr %261, align 4, !tbaa !5
  %262 = add nuw nsw i64 %252, 2
  %263 = getelementptr inbounds i32, ptr %3, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !5
  %265 = lshr i32 %264, %210
  %266 = getelementptr inbounds i32, ptr %209, i64 %262
  store i32 %265, ptr %266, align 4, !tbaa !5
  %267 = add nuw nsw i64 %252, 3
  %268 = getelementptr inbounds i32, ptr %3, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !5
  %270 = lshr i32 %269, %210
  %271 = getelementptr inbounds i32, ptr %209, i64 %267
  store i32 %270, ptr %271, align 4, !tbaa !5
  %272 = add nuw nsw i64 %252, 4
  %273 = icmp eq i64 %272, %200
  br i1 %273, label %274, label %251, !llvm.loop !43

274:                                              ; preds = %247, %251, %231
  %275 = add nuw nsw i64 %208, 1
  %276 = trunc i64 %275 to i32
  %277 = icmp eq i32 %199, %276
  %278 = add i64 %207, 1
  br i1 %277, label %279, label %206, !llvm.loop !44

279:                                              ; preds = %274, %189, %195
  %280 = phi i32 [ %190, %189 ], [ %196, %195 ], [ %190, %274 ]
  %281 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i64 0, i32 3
  %282 = sub i32 %33, %48
  %283 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 1), !nosanitize !17
  %284 = extractvalue { i32, i1 } %283, 0, !nosanitize !17
  %285 = extractvalue { i32, i1 } %283, 1, !nosanitize !17
  br i1 %285, label %294, label %286, !nosanitize !17

286:                                              ; preds = %279
  %287 = icmp sgt i32 %284, 1
  br i1 %287, label %288, label %1028

288:                                              ; preds = %286
  %289 = zext nneg i32 %284 to i64
  %290 = getelementptr i8, ptr %0, i64 4
  %291 = getelementptr i8, ptr %0, i64 4
  %292 = getelementptr i8, ptr %0, i64 4
  %293 = getelementptr i8, ptr %0, i64 4
  br label %295

294:                                              ; preds = %728, %720, %684, %279
  call void @llvm.ubsantrap(i8 0) #17, !nosanitize !17
  unreachable, !nosanitize !17

295:                                              ; preds = %1026, %288
  %296 = phi i64 [ 1, %288 ], [ %299, %1026 ]
  %297 = getelementptr inbounds i32, ptr %17, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !5
  %299 = add nuw nsw i64 %296, 1
  %300 = getelementptr inbounds i32, ptr %17, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !5
  %302 = trunc i64 %296 to i32
  %303 = sub i32 %33, %302
  %304 = sub i32 %48, %303
  %305 = icmp ult i32 %304, %280
  %306 = getelementptr inbounds i32, ptr %3, i64 %296
  %307 = load i32, ptr %306, align 4, !tbaa !5
  br i1 %305, label %735, label %308

308:                                              ; preds = %295
  %309 = and i32 %304, 31
  %310 = shl nuw i32 1, %309
  %311 = icmp eq i32 %298, %301
  br i1 %311, label %1026, label %312

312:                                              ; preds = %308
  %313 = add i32 %303, %282
  %314 = call i32 @llvm.smax.i32(i32 %313, i32 1)
  %315 = zext i32 %303 to i64
  %316 = getelementptr inbounds [13 x i32], ptr %3, i64 %315
  %317 = icmp sgt i32 %313, 1
  %318 = shl i32 %303, 16
  %319 = add i32 %318, 16777216
  %320 = zext nneg i32 %314 to i64
  %321 = getelementptr inbounds i32, ptr %316, i64 %320
  %322 = icmp slt i32 %314, %284
  %323 = add i32 %303, %33
  br i1 %322, label %324, label %687

324:                                              ; preds = %312
  %325 = sext i32 %298 to i64
  br label %326

326:                                              ; preds = %679, %324
  %327 = phi i64 [ %325, %324 ], [ %680, %679 ]
  %328 = phi i32 [ %307, %324 ], [ %682, %679 ]
  %329 = sext i32 %328 to i64
  %330 = sext i32 %328 to i64
  %331 = sext i32 %328 to i64
  %332 = getelementptr %struct.HUF_DEltX2, ptr %14, i64 %331
  %333 = getelementptr inbounds %struct.sortedSymbol_t, ptr %281, i64 %327
  %334 = load i8, ptr %333, align 1, !tbaa !37
  %335 = zext i8 %334 to i32
  br i1 %317, label %336, label %359

336:                                              ; preds = %326
  %337 = or disjoint i32 %319, %335
  %338 = zext i32 %337 to i64
  %339 = mul nuw i64 %338, 4294967297
  %340 = load i32, ptr %321, align 4, !tbaa !5
  switch i32 %310, label %345 [
    i32 2, label %343
    i32 4, label %341
  ]

341:                                              ; preds = %336
  store i64 %339, ptr %332, align 2
  %342 = getelementptr inbounds %struct.HUF_DEltX2, ptr %332, i64 2
  br label %343

343:                                              ; preds = %341, %336
  %344 = phi ptr [ %342, %341 ], [ %332, %336 ]
  store i64 %339, ptr %344, align 2
  br label %359

345:                                              ; preds = %336
  %346 = icmp sgt i32 %340, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %345, %355
  %348 = phi i64 [ %356, %355 ], [ 0, %345 ]
  %349 = getelementptr inbounds %struct.HUF_DEltX2, ptr %332, i64 %348
  store i64 %339, ptr %349, align 2
  %350 = getelementptr inbounds %struct.HUF_DEltX2, ptr %349, i64 2
  store i64 %339, ptr %350, align 2
  %351 = getelementptr inbounds %struct.HUF_DEltX2, ptr %349, i64 4
  store i64 %339, ptr %351, align 2
  %352 = getelementptr inbounds %struct.HUF_DEltX2, ptr %349, i64 6
  store i64 %339, ptr %352, align 2
  %353 = and i64 %348, 4294967288
  %354 = icmp eq i64 %353, 2147483640
  br i1 %354, label %734, label %355, !nosanitize !17

355:                                              ; preds = %347
  %356 = add nuw nsw i64 %348, 8
  %357 = trunc i64 %356 to i32
  %358 = icmp sgt i32 %340, %357
  br i1 %358, label %347, label %359, !llvm.loop !45

359:                                              ; preds = %355, %345, %343, %326
  %360 = insertelement <2 x i32> poison, i32 %335, i64 0
  %361 = shufflevector <2 x i32> %360, <2 x i32> poison, <2 x i32> zeroinitializer
  %362 = insertelement <4 x i32> poison, i32 %335, i64 0
  %363 = shufflevector <4 x i32> %362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %364

364:                                              ; preds = %359, %677
  %365 = phi i64 [ %366, %677 ], [ %320, %359 ]
  %366 = add nuw nsw i64 %365, 1
  %367 = getelementptr inbounds i32, ptr %17, i64 %365
  %368 = load i32, ptr %367, align 4, !tbaa !5
  %369 = getelementptr inbounds i32, ptr %17, i64 %366
  %370 = load i32, ptr %369, align 4, !tbaa !5
  %371 = trunc i64 %365 to i32
  %372 = sub i32 %323, %371
  %373 = getelementptr inbounds i32, ptr %316, i64 %365
  %374 = load i32, ptr %373, align 4, !tbaa !5
  %375 = zext i32 %374 to i64
  %376 = getelementptr %struct.HUF_DEltX2, ptr %332, i64 %375
  %377 = sext i32 %368 to i64
  %378 = getelementptr %struct.sortedSymbol_t, ptr %281, i64 %377
  %379 = sext i32 %370 to i64
  %380 = getelementptr %struct.sortedSymbol_t, ptr %281, i64 %379
  %381 = sub i32 %48, %372
  %382 = and i32 %381, 31
  %383 = shl nuw i32 1, %382
  %384 = icmp eq i32 %368, %370
  switch i32 %383, label %608 [
    i32 1, label %551
    i32 2, label %485
    i32 4, label %438
    i32 8, label %385
  ]

385:                                              ; preds = %364
  br i1 %384, label %677, label %386

386:                                              ; preds = %385
  %387 = shl i32 %372, 16
  %388 = add i32 %387, 33554432
  %389 = sub nsw i64 %379, %377
  %390 = and i64 %389, 1
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %405, label %392

392:                                              ; preds = %386
  %393 = load i8, ptr %378, align 1, !tbaa !37
  %394 = zext i8 %393 to i32
  %395 = shl nuw nsw i32 %394, 8
  %396 = or disjoint i32 %395, %388
  %397 = or disjoint i32 %396, %335
  %398 = zext i32 %397 to i64
  %399 = mul nuw i64 %398, 4294967297
  store i64 %399, ptr %376, align 2
  %400 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 2
  store i64 %399, ptr %400, align 2
  %401 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 4
  store i64 %399, ptr %401, align 2
  %402 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 6
  store i64 %399, ptr %402, align 2
  %403 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 8
  %404 = getelementptr inbounds %struct.sortedSymbol_t, ptr %378, i64 1
  br label %405

405:                                              ; preds = %392, %386
  %406 = phi ptr [ %376, %386 ], [ %403, %392 ]
  %407 = phi ptr [ %378, %386 ], [ %404, %392 ]
  %408 = add nsw i64 %379, -1
  %409 = icmp eq i64 %408, %377
  br i1 %409, label %677, label %410

410:                                              ; preds = %405, %410
  %411 = phi ptr [ %435, %410 ], [ %406, %405 ]
  %412 = phi ptr [ %436, %410 ], [ %407, %405 ]
  %413 = load i8, ptr %412, align 1, !tbaa !37
  %414 = zext i8 %413 to i32
  %415 = shl nuw nsw i32 %414, 8
  %416 = or disjoint i32 %415, %388
  %417 = or disjoint i32 %416, %335
  %418 = zext i32 %417 to i64
  %419 = mul nuw i64 %418, 4294967297
  store i64 %419, ptr %411, align 2
  %420 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 2
  store i64 %419, ptr %420, align 2
  %421 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 4
  store i64 %419, ptr %421, align 2
  %422 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 6
  store i64 %419, ptr %422, align 2
  %423 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 8
  %424 = getelementptr inbounds %struct.sortedSymbol_t, ptr %412, i64 1
  %425 = load i8, ptr %424, align 1, !tbaa !37
  %426 = zext i8 %425 to i32
  %427 = shl nuw nsw i32 %426, 8
  %428 = or disjoint i32 %427, %388
  %429 = or disjoint i32 %428, %335
  %430 = zext i32 %429 to i64
  %431 = mul nuw i64 %430, 4294967297
  store i64 %431, ptr %423, align 2
  %432 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 10
  store i64 %431, ptr %432, align 2
  %433 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 12
  store i64 %431, ptr %433, align 2
  %434 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 14
  store i64 %431, ptr %434, align 2
  %435 = getelementptr inbounds %struct.HUF_DEltX2, ptr %411, i64 16
  %436 = getelementptr inbounds %struct.sortedSymbol_t, ptr %412, i64 2
  %437 = icmp eq ptr %436, %380
  br i1 %437, label %677, label %410, !llvm.loop !46

438:                                              ; preds = %364
  br i1 %384, label %677, label %439

439:                                              ; preds = %438
  %440 = shl i32 %372, 16
  %441 = add i32 %440, 33554432
  %442 = sub nsw i64 %379, %377
  %443 = and i64 %442, 1
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %456, label %445

445:                                              ; preds = %439
  %446 = load i8, ptr %378, align 1, !tbaa !37
  %447 = zext i8 %446 to i32
  %448 = shl nuw nsw i32 %447, 8
  %449 = or disjoint i32 %448, %441
  %450 = or disjoint i32 %449, %335
  %451 = zext i32 %450 to i64
  %452 = mul nuw i64 %451, 4294967297
  store i64 %452, ptr %376, align 2
  %453 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 2
  store i64 %452, ptr %453, align 2
  %454 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 4
  %455 = getelementptr inbounds %struct.sortedSymbol_t, ptr %378, i64 1
  br label %456

456:                                              ; preds = %445, %439
  %457 = phi ptr [ %376, %439 ], [ %454, %445 ]
  %458 = phi ptr [ %378, %439 ], [ %455, %445 ]
  %459 = add nsw i64 %379, -1
  %460 = icmp eq i64 %459, %377
  br i1 %460, label %677, label %461

461:                                              ; preds = %456, %461
  %462 = phi ptr [ %482, %461 ], [ %457, %456 ]
  %463 = phi ptr [ %483, %461 ], [ %458, %456 ]
  %464 = load i8, ptr %463, align 1, !tbaa !37
  %465 = zext i8 %464 to i32
  %466 = shl nuw nsw i32 %465, 8
  %467 = or disjoint i32 %466, %441
  %468 = or disjoint i32 %467, %335
  %469 = zext i32 %468 to i64
  %470 = mul nuw i64 %469, 4294967297
  store i64 %470, ptr %462, align 2
  %471 = getelementptr inbounds %struct.HUF_DEltX2, ptr %462, i64 2
  store i64 %470, ptr %471, align 2
  %472 = getelementptr inbounds %struct.HUF_DEltX2, ptr %462, i64 4
  %473 = getelementptr inbounds %struct.sortedSymbol_t, ptr %463, i64 1
  %474 = load i8, ptr %473, align 1, !tbaa !37
  %475 = zext i8 %474 to i32
  %476 = shl nuw nsw i32 %475, 8
  %477 = or disjoint i32 %476, %441
  %478 = or disjoint i32 %477, %335
  %479 = zext i32 %478 to i64
  %480 = mul nuw i64 %479, 4294967297
  store i64 %480, ptr %472, align 2
  %481 = getelementptr inbounds %struct.HUF_DEltX2, ptr %462, i64 6
  store i64 %480, ptr %481, align 2
  %482 = getelementptr inbounds %struct.HUF_DEltX2, ptr %462, i64 8
  %483 = getelementptr inbounds %struct.sortedSymbol_t, ptr %463, i64 2
  %484 = icmp eq ptr %483, %380
  br i1 %484, label %677, label %461, !llvm.loop !47

485:                                              ; preds = %364
  br i1 %384, label %677, label %486

486:                                              ; preds = %485
  %487 = shl i32 %372, 16
  %488 = add i32 %487, 33554432
  %489 = sub nsw i64 %379, %377
  %490 = icmp ult i64 %489, 6
  br i1 %490, label %536, label %491

491:                                              ; preds = %486
  %492 = shl nsw i64 %379, 3
  %493 = add nsw i64 %329, %375
  %494 = shl nsw i64 %493, 2
  %495 = add nsw i64 %492, %494
  %496 = shl nsw i64 %377, 3
  %497 = sub nsw i64 %495, %496
  %498 = getelementptr i8, ptr %293, i64 %497
  %499 = icmp ult ptr %376, %380
  %500 = icmp ult ptr %378, %498
  %501 = and i1 %499, %500
  br i1 %501, label %536, label %502

502:                                              ; preds = %491
  %503 = and i64 %489, -4
  %504 = shl nsw i64 %503, 3
  %505 = getelementptr i8, ptr %376, i64 %504
  %506 = getelementptr i8, ptr %378, i64 %503
  %507 = insertelement <2 x i32> poison, i32 %488, i64 0
  %508 = shufflevector <2 x i32> %507, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %509

509:                                              ; preds = %509, %502
  %510 = phi i64 [ 0, %502 ], [ %532, %509 ]
  %511 = shl i64 %510, 3
  %512 = getelementptr i8, ptr %376, i64 %511
  %513 = shl i64 %510, 3
  %514 = or disjoint i64 %513, 16
  %515 = getelementptr i8, ptr %376, i64 %514
  %516 = getelementptr i8, ptr %378, i64 %510
  %517 = getelementptr i8, ptr %516, i64 2
  %518 = load <2 x i8>, ptr %516, align 1, !tbaa !37, !alias.scope !48
  %519 = load <2 x i8>, ptr %517, align 1, !tbaa !37, !alias.scope !48
  %520 = zext <2 x i8> %518 to <2 x i32>
  %521 = zext <2 x i8> %519 to <2 x i32>
  %522 = shl nuw nsw <2 x i32> %520, <i32 8, i32 8>
  %523 = shl nuw nsw <2 x i32> %521, <i32 8, i32 8>
  %524 = or disjoint <2 x i32> %522, %508
  %525 = or disjoint <2 x i32> %523, %508
  %526 = or disjoint <2 x i32> %524, %361
  %527 = or disjoint <2 x i32> %525, %361
  %528 = shufflevector <2 x i32> %526, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %529 = shufflevector <4 x i32> %528, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %529, ptr %512, align 2
  %530 = shufflevector <2 x i32> %527, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %531 = shufflevector <4 x i32> %530, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %531, ptr %515, align 2
  %532 = add nuw i64 %510, 4
  %533 = icmp eq i64 %532, %503
  br i1 %533, label %534, label %509, !llvm.loop !51

534:                                              ; preds = %509
  %535 = icmp eq i64 %489, %503
  br i1 %535, label %677, label %536

536:                                              ; preds = %491, %486, %534
  %537 = phi ptr [ %376, %491 ], [ %376, %486 ], [ %505, %534 ]
  %538 = phi ptr [ %378, %491 ], [ %378, %486 ], [ %506, %534 ]
  br label %539

539:                                              ; preds = %536, %539
  %540 = phi ptr [ %548, %539 ], [ %537, %536 ]
  %541 = phi ptr [ %549, %539 ], [ %538, %536 ]
  %542 = load i8, ptr %541, align 1, !tbaa !37
  %543 = zext i8 %542 to i32
  %544 = shl nuw nsw i32 %543, 8
  %545 = or disjoint i32 %544, %488
  %546 = or disjoint i32 %545, %335
  store i32 %546, ptr %540, align 2, !tbaa.struct !52
  %547 = getelementptr inbounds %struct.HUF_DEltX2, ptr %540, i64 1
  store i32 %546, ptr %547, align 2, !tbaa.struct !52
  %548 = getelementptr inbounds %struct.HUF_DEltX2, ptr %540, i64 2
  %549 = getelementptr inbounds %struct.sortedSymbol_t, ptr %541, i64 1
  %550 = icmp eq ptr %549, %380
  br i1 %550, label %677, label %539, !llvm.loop !55

551:                                              ; preds = %364
  br i1 %384, label %677, label %552

552:                                              ; preds = %551
  %553 = shl i32 %372, 16
  %554 = add i32 %553, 33554432
  %555 = sub nsw i64 %379, %377
  %556 = icmp ult i64 %555, 8
  br i1 %556, label %594, label %557

557:                                              ; preds = %552
  %558 = add nsw i64 %330, %379
  %559 = add nsw i64 %558, %375
  %560 = sub nsw i64 %559, %377
  %561 = shl nsw i64 %560, 2
  %562 = getelementptr i8, ptr %292, i64 %561
  %563 = icmp ult ptr %376, %380
  %564 = icmp ult ptr %378, %562
  %565 = and i1 %563, %564
  br i1 %565, label %594, label %566

566:                                              ; preds = %557
  %567 = and i64 %555, -8
  %568 = shl nsw i64 %567, 2
  %569 = getelementptr i8, ptr %376, i64 %568
  %570 = getelementptr i8, ptr %378, i64 %567
  %571 = insertelement <4 x i32> poison, i32 %554, i64 0
  %572 = shufflevector <4 x i32> %571, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %573

573:                                              ; preds = %573, %566
  %574 = phi i64 [ 0, %566 ], [ %590, %573 ]
  %575 = shl i64 %574, 2
  %576 = getelementptr i8, ptr %376, i64 %575
  %577 = getelementptr i8, ptr %378, i64 %574
  %578 = getelementptr i8, ptr %577, i64 4
  %579 = load <4 x i8>, ptr %577, align 1, !tbaa !37, !alias.scope !56
  %580 = load <4 x i8>, ptr %578, align 1, !tbaa !37, !alias.scope !56
  %581 = zext <4 x i8> %579 to <4 x i32>
  %582 = zext <4 x i8> %580 to <4 x i32>
  %583 = shl nuw nsw <4 x i32> %581, <i32 8, i32 8, i32 8, i32 8>
  %584 = shl nuw nsw <4 x i32> %582, <i32 8, i32 8, i32 8, i32 8>
  %585 = or disjoint <4 x i32> %583, %572
  %586 = or disjoint <4 x i32> %584, %572
  %587 = or disjoint <4 x i32> %585, %363
  %588 = or disjoint <4 x i32> %586, %363
  %589 = getelementptr i32, ptr %576, i64 4
  store <4 x i32> %587, ptr %576, align 2, !alias.scope !59, !noalias !56
  store <4 x i32> %588, ptr %589, align 2, !alias.scope !59, !noalias !56
  %590 = add nuw i64 %574, 8
  %591 = icmp eq i64 %590, %567
  br i1 %591, label %592, label %573, !llvm.loop !61

592:                                              ; preds = %573
  %593 = icmp eq i64 %555, %567
  br i1 %593, label %677, label %594

594:                                              ; preds = %557, %552, %592
  %595 = phi ptr [ %376, %557 ], [ %376, %552 ], [ %569, %592 ]
  %596 = phi ptr [ %378, %557 ], [ %378, %552 ], [ %570, %592 ]
  br label %597

597:                                              ; preds = %594, %597
  %598 = phi ptr [ %605, %597 ], [ %595, %594 ]
  %599 = phi ptr [ %606, %597 ], [ %596, %594 ]
  %600 = load i8, ptr %599, align 1, !tbaa !37
  %601 = zext i8 %600 to i32
  %602 = shl nuw nsw i32 %601, 8
  %603 = or disjoint i32 %602, %554
  %604 = or disjoint i32 %603, %335
  %605 = getelementptr inbounds %struct.HUF_DEltX2, ptr %598, i64 1
  store i32 %604, ptr %598, align 2, !tbaa.struct !52
  %606 = getelementptr inbounds %struct.sortedSymbol_t, ptr %599, i64 1
  %607 = icmp eq ptr %606, %380
  br i1 %607, label %677, label %597, !llvm.loop !62

608:                                              ; preds = %364
  br i1 %384, label %677, label %609

609:                                              ; preds = %608
  %610 = shl i32 %372, 16
  %611 = add i32 %610, 33554432
  %612 = zext i32 %383 to i64
  %613 = sub nsw i64 %379, %377
  %614 = and i64 %613, 1
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %634, label %616

616:                                              ; preds = %609
  %617 = load i8, ptr %378, align 1, !tbaa !37
  %618 = zext i8 %617 to i32
  %619 = shl nuw nsw i32 %618, 8
  %620 = or disjoint i32 %619, %611
  %621 = or disjoint i32 %620, %335
  %622 = zext i32 %621 to i64
  %623 = mul nuw i64 %622, 4294967297
  %624 = getelementptr inbounds %struct.HUF_DEltX2, ptr %376, i64 %612
  br label %625

625:                                              ; preds = %625, %616
  %626 = phi ptr [ %630, %625 ], [ %376, %616 ]
  store i64 %623, ptr %626, align 2
  %627 = getelementptr inbounds %struct.HUF_DEltX2, ptr %626, i64 2
  store i64 %623, ptr %627, align 2
  %628 = getelementptr inbounds %struct.HUF_DEltX2, ptr %626, i64 4
  store i64 %623, ptr %628, align 2
  %629 = getelementptr inbounds %struct.HUF_DEltX2, ptr %626, i64 6
  store i64 %623, ptr %629, align 2
  %630 = getelementptr inbounds %struct.HUF_DEltX2, ptr %626, i64 8
  %631 = icmp eq ptr %630, %624
  br i1 %631, label %632, label %625, !llvm.loop !63

632:                                              ; preds = %625
  %633 = getelementptr inbounds %struct.sortedSymbol_t, ptr %378, i64 1
  br label %634

634:                                              ; preds = %632, %609
  %635 = phi ptr [ %376, %609 ], [ %624, %632 ]
  %636 = phi ptr [ %378, %609 ], [ %633, %632 ]
  %637 = add nsw i64 %379, -1
  %638 = icmp eq i64 %637, %377
  br i1 %638, label %677, label %639

639:                                              ; preds = %634, %674
  %640 = phi ptr [ %666, %674 ], [ %635, %634 ]
  %641 = phi ptr [ %675, %674 ], [ %636, %634 ]
  %642 = load i8, ptr %641, align 1, !tbaa !37
  %643 = zext i8 %642 to i32
  %644 = shl nuw nsw i32 %643, 8
  %645 = or disjoint i32 %644, %611
  %646 = or disjoint i32 %645, %335
  %647 = zext i32 %646 to i64
  %648 = mul nuw i64 %647, 4294967297
  %649 = getelementptr inbounds %struct.HUF_DEltX2, ptr %640, i64 %612
  br label %650

650:                                              ; preds = %650, %639
  %651 = phi ptr [ %655, %650 ], [ %640, %639 ]
  store i64 %648, ptr %651, align 2
  %652 = getelementptr inbounds %struct.HUF_DEltX2, ptr %651, i64 2
  store i64 %648, ptr %652, align 2
  %653 = getelementptr inbounds %struct.HUF_DEltX2, ptr %651, i64 4
  store i64 %648, ptr %653, align 2
  %654 = getelementptr inbounds %struct.HUF_DEltX2, ptr %651, i64 6
  store i64 %648, ptr %654, align 2
  %655 = getelementptr inbounds %struct.HUF_DEltX2, ptr %651, i64 8
  %656 = icmp eq ptr %655, %649
  br i1 %656, label %657, label %650, !llvm.loop !63

657:                                              ; preds = %650
  %658 = getelementptr inbounds %struct.sortedSymbol_t, ptr %641, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa !37
  %660 = zext i8 %659 to i32
  %661 = shl nuw nsw i32 %660, 8
  %662 = or disjoint i32 %661, %611
  %663 = or disjoint i32 %662, %335
  %664 = zext i32 %663 to i64
  %665 = mul nuw i64 %664, 4294967297
  %666 = getelementptr inbounds %struct.HUF_DEltX2, ptr %649, i64 %612
  br label %667

667:                                              ; preds = %667, %657
  %668 = phi ptr [ %672, %667 ], [ %649, %657 ]
  store i64 %665, ptr %668, align 2
  %669 = getelementptr inbounds %struct.HUF_DEltX2, ptr %668, i64 2
  store i64 %665, ptr %669, align 2
  %670 = getelementptr inbounds %struct.HUF_DEltX2, ptr %668, i64 4
  store i64 %665, ptr %670, align 2
  %671 = getelementptr inbounds %struct.HUF_DEltX2, ptr %668, i64 6
  store i64 %665, ptr %671, align 2
  %672 = getelementptr inbounds %struct.HUF_DEltX2, ptr %668, i64 8
  %673 = icmp eq ptr %672, %666
  br i1 %673, label %674, label %667, !llvm.loop !63

674:                                              ; preds = %667
  %675 = getelementptr inbounds %struct.sortedSymbol_t, ptr %641, i64 2
  %676 = icmp eq ptr %675, %380
  br i1 %676, label %677, label %639, !llvm.loop !64

677:                                              ; preds = %405, %410, %456, %461, %539, %597, %634, %674, %534, %592, %608, %551, %485, %438, %385
  %678 = icmp eq i64 %366, %289
  br i1 %678, label %684, label %364, !llvm.loop !65

679:                                              ; preds = %684
  %680 = add nsw i64 %327, 1
  %681 = trunc i64 %680 to i32
  %682 = add i32 %328, %310
  %683 = icmp eq i32 %301, %681
  br i1 %683, label %1026, label %326, !llvm.loop !66

684:                                              ; preds = %677
  %685 = and i64 %327, 4294967295
  %686 = icmp eq i64 %685, 2147483647
  br i1 %686, label %294, label %679, !nosanitize !17

687:                                              ; preds = %312
  br i1 %317, label %688, label %728

688:                                              ; preds = %687
  %689 = sext i32 %298 to i64
  br label %690

690:                                              ; preds = %723, %688
  %691 = phi i64 [ %689, %688 ], [ %724, %723 ]
  %692 = phi i32 [ %307, %688 ], [ %726, %723 ]
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.HUF_DEltX2, ptr %14, i64 %693
  %695 = getelementptr inbounds %struct.sortedSymbol_t, ptr %281, i64 %691
  %696 = load i8, ptr %695, align 1, !tbaa !37
  %697 = zext i8 %696 to i32
  %698 = or disjoint i32 %319, %697
  %699 = zext i32 %698 to i64
  %700 = mul nuw i64 %699, 4294967297
  %701 = load i32, ptr %321, align 4, !tbaa !5
  switch i32 %310, label %706 [
    i32 2, label %704
    i32 4, label %702
  ]

702:                                              ; preds = %690
  store i64 %700, ptr %694, align 2
  %703 = getelementptr inbounds %struct.HUF_DEltX2, ptr %694, i64 2
  br label %704

704:                                              ; preds = %702, %690
  %705 = phi ptr [ %703, %702 ], [ %694, %690 ]
  store i64 %700, ptr %705, align 2
  br label %720

706:                                              ; preds = %690
  %707 = icmp sgt i32 %701, 0
  br i1 %707, label %708, label %720

708:                                              ; preds = %706, %716
  %709 = phi i64 [ %717, %716 ], [ 0, %706 ]
  %710 = getelementptr inbounds %struct.HUF_DEltX2, ptr %694, i64 %709
  store i64 %700, ptr %710, align 2
  %711 = getelementptr inbounds %struct.HUF_DEltX2, ptr %710, i64 2
  store i64 %700, ptr %711, align 2
  %712 = getelementptr inbounds %struct.HUF_DEltX2, ptr %710, i64 4
  store i64 %700, ptr %712, align 2
  %713 = getelementptr inbounds %struct.HUF_DEltX2, ptr %710, i64 6
  store i64 %700, ptr %713, align 2
  %714 = and i64 %709, 4294967288
  %715 = icmp eq i64 %714, 2147483640
  br i1 %715, label %734, label %716, !nosanitize !17

716:                                              ; preds = %708
  %717 = add nuw nsw i64 %709, 8
  %718 = trunc i64 %717 to i32
  %719 = icmp sgt i32 %701, %718
  br i1 %719, label %708, label %720, !llvm.loop !45

720:                                              ; preds = %716, %706, %704
  %721 = and i64 %691, 4294967295
  %722 = icmp eq i64 %721, 2147483647
  br i1 %722, label %294, label %723, !nosanitize !17

723:                                              ; preds = %720
  %724 = add nsw i64 %691, 1
  %725 = trunc i64 %724 to i32
  %726 = add i32 %692, %310
  %727 = icmp eq i32 %301, %725
  br i1 %727, label %1026, label %690, !llvm.loop !66

728:                                              ; preds = %687
  %729 = sub i32 2147483647, %298
  %730 = xor i32 %298, -1
  %731 = add i32 %301, %730
  %732 = freeze i32 %731
  %733 = icmp ugt i32 %729, %732
  br i1 %733, label %1026, label %294, !nosanitize !17

734:                                              ; preds = %708, %347
  call void @llvm.ubsantrap(i8 0) #17, !nosanitize !17
  unreachable, !nosanitize !17

735:                                              ; preds = %295
  %736 = zext i32 %307 to i64
  %737 = getelementptr %struct.HUF_DEltX2, ptr %14, i64 %736
  %738 = sext i32 %298 to i64
  %739 = getelementptr %struct.sortedSymbol_t, ptr %281, i64 %738
  %740 = sext i32 %301 to i64
  %741 = getelementptr %struct.sortedSymbol_t, ptr %281, i64 %740
  %742 = and i32 %304, 31
  %743 = shl nuw i32 1, %742
  %744 = icmp eq i32 %298, %301
  switch i32 %743, label %963 [
    i32 1, label %913
    i32 2, label %854
    i32 4, label %792
    i32 8, label %745
  ]

745:                                              ; preds = %735
  br i1 %744, label %1026, label %746

746:                                              ; preds = %745
  %747 = shl i32 %303, 16
  %748 = add i32 %747, 16777216
  %749 = sub nsw i64 %740, %738
  %750 = and i64 %749, 1
  %751 = icmp eq i64 %750, 0
  br i1 %751, label %763, label %752

752:                                              ; preds = %746
  %753 = load i8, ptr %739, align 1, !tbaa !37
  %754 = zext i8 %753 to i32
  %755 = or disjoint i32 %748, %754
  %756 = zext i32 %755 to i64
  %757 = mul nuw i64 %756, 4294967297
  store i64 %757, ptr %737, align 2
  %758 = getelementptr inbounds %struct.HUF_DEltX2, ptr %737, i64 2
  store i64 %757, ptr %758, align 2
  %759 = getelementptr inbounds %struct.HUF_DEltX2, ptr %737, i64 4
  store i64 %757, ptr %759, align 2
  %760 = getelementptr inbounds %struct.HUF_DEltX2, ptr %737, i64 6
  store i64 %757, ptr %760, align 2
  %761 = getelementptr inbounds %struct.HUF_DEltX2, ptr %737, i64 8
  %762 = getelementptr inbounds %struct.sortedSymbol_t, ptr %739, i64 1
  br label %763

763:                                              ; preds = %752, %746
  %764 = phi ptr [ %737, %746 ], [ %761, %752 ]
  %765 = phi ptr [ %739, %746 ], [ %762, %752 ]
  %766 = add nsw i64 %740, -1
  %767 = icmp eq i64 %766, %738
  br i1 %767, label %1026, label %768

768:                                              ; preds = %763, %768
  %769 = phi ptr [ %789, %768 ], [ %764, %763 ]
  %770 = phi ptr [ %790, %768 ], [ %765, %763 ]
  %771 = load i8, ptr %770, align 1, !tbaa !37
  %772 = zext i8 %771 to i32
  %773 = or disjoint i32 %748, %772
  %774 = zext i32 %773 to i64
  %775 = mul nuw i64 %774, 4294967297
  store i64 %775, ptr %769, align 2
  %776 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 2
  store i64 %775, ptr %776, align 2
  %777 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 4
  store i64 %775, ptr %777, align 2
  %778 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 6
  store i64 %775, ptr %778, align 2
  %779 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 8
  %780 = getelementptr inbounds %struct.sortedSymbol_t, ptr %770, i64 1
  %781 = load i8, ptr %780, align 1, !tbaa !37
  %782 = zext i8 %781 to i32
  %783 = or disjoint i32 %748, %782
  %784 = zext i32 %783 to i64
  %785 = mul nuw i64 %784, 4294967297
  store i64 %785, ptr %779, align 2
  %786 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 10
  store i64 %785, ptr %786, align 2
  %787 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 12
  store i64 %785, ptr %787, align 2
  %788 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 14
  store i64 %785, ptr %788, align 2
  %789 = getelementptr inbounds %struct.HUF_DEltX2, ptr %769, i64 16
  %790 = getelementptr inbounds %struct.sortedSymbol_t, ptr %770, i64 2
  %791 = icmp eq ptr %790, %741
  br i1 %791, label %1026, label %768, !llvm.loop !46

792:                                              ; preds = %735
  br i1 %744, label %1026, label %793

793:                                              ; preds = %792
  %794 = shl i32 %303, 16
  %795 = add i32 %794, 16777216
  %796 = sub nsw i64 %740, %738
  %797 = and i64 %796, 3
  %798 = icmp eq i64 %797, 0
  br i1 %798, label %813, label %799

799:                                              ; preds = %793, %799
  %800 = phi ptr [ %809, %799 ], [ %737, %793 ]
  %801 = phi ptr [ %810, %799 ], [ %739, %793 ]
  %802 = phi i64 [ %811, %799 ], [ 0, %793 ]
  %803 = load i8, ptr %801, align 1, !tbaa !37
  %804 = zext i8 %803 to i32
  %805 = or disjoint i32 %795, %804
  %806 = zext i32 %805 to i64
  %807 = mul nuw i64 %806, 4294967297
  store i64 %807, ptr %800, align 2
  %808 = getelementptr inbounds %struct.HUF_DEltX2, ptr %800, i64 2
  store i64 %807, ptr %808, align 2
  %809 = getelementptr inbounds %struct.HUF_DEltX2, ptr %800, i64 4
  %810 = getelementptr inbounds %struct.sortedSymbol_t, ptr %801, i64 1
  %811 = add i64 %802, 1
  %812 = icmp eq i64 %811, %797
  br i1 %812, label %813, label %799, !llvm.loop !67

813:                                              ; preds = %799, %793
  %814 = phi ptr [ %737, %793 ], [ %809, %799 ]
  %815 = phi ptr [ %739, %793 ], [ %810, %799 ]
  %816 = sub nsw i64 %738, %740
  %817 = icmp ugt i64 %816, -4
  br i1 %817, label %1026, label %818

818:                                              ; preds = %813, %818
  %819 = phi ptr [ %851, %818 ], [ %814, %813 ]
  %820 = phi ptr [ %852, %818 ], [ %815, %813 ]
  %821 = load i8, ptr %820, align 1, !tbaa !37
  %822 = zext i8 %821 to i32
  %823 = or disjoint i32 %795, %822
  %824 = zext i32 %823 to i64
  %825 = mul nuw i64 %824, 4294967297
  store i64 %825, ptr %819, align 2
  %826 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 2
  store i64 %825, ptr %826, align 2
  %827 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 4
  %828 = getelementptr inbounds %struct.sortedSymbol_t, ptr %820, i64 1
  %829 = load i8, ptr %828, align 1, !tbaa !37
  %830 = zext i8 %829 to i32
  %831 = or disjoint i32 %795, %830
  %832 = zext i32 %831 to i64
  %833 = mul nuw i64 %832, 4294967297
  store i64 %833, ptr %827, align 2
  %834 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 6
  store i64 %833, ptr %834, align 2
  %835 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 8
  %836 = getelementptr inbounds %struct.sortedSymbol_t, ptr %820, i64 2
  %837 = load i8, ptr %836, align 1, !tbaa !37
  %838 = zext i8 %837 to i32
  %839 = or disjoint i32 %795, %838
  %840 = zext i32 %839 to i64
  %841 = mul nuw i64 %840, 4294967297
  store i64 %841, ptr %835, align 2
  %842 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 10
  store i64 %841, ptr %842, align 2
  %843 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 12
  %844 = getelementptr inbounds %struct.sortedSymbol_t, ptr %820, i64 3
  %845 = load i8, ptr %844, align 1, !tbaa !37
  %846 = zext i8 %845 to i32
  %847 = or disjoint i32 %795, %846
  %848 = zext i32 %847 to i64
  %849 = mul nuw i64 %848, 4294967297
  store i64 %849, ptr %843, align 2
  %850 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 14
  store i64 %849, ptr %850, align 2
  %851 = getelementptr inbounds %struct.HUF_DEltX2, ptr %819, i64 16
  %852 = getelementptr inbounds %struct.sortedSymbol_t, ptr %820, i64 4
  %853 = icmp eq ptr %852, %741
  br i1 %853, label %1026, label %818, !llvm.loop !47

854:                                              ; preds = %735
  br i1 %744, label %1026, label %855

855:                                              ; preds = %854
  %856 = shl i32 %303, 16
  %857 = add i32 %856, 16777216
  %858 = sub nsw i64 %740, %738
  %859 = icmp ult i64 %858, 8
  br i1 %859, label %900, label %860

860:                                              ; preds = %855
  %861 = shl nsw i64 %740, 3
  %862 = shl nuw nsw i64 %736, 2
  %863 = add nsw i64 %861, %862
  %864 = shl nsw i64 %738, 3
  %865 = sub nsw i64 %863, %864
  %866 = getelementptr i8, ptr %291, i64 %865
  %867 = icmp ult ptr %737, %741
  %868 = icmp ult ptr %739, %866
  %869 = and i1 %867, %868
  br i1 %869, label %900, label %870

870:                                              ; preds = %860
  %871 = and i64 %858, -4
  %872 = shl nsw i64 %871, 3
  %873 = getelementptr i8, ptr %737, i64 %872
  %874 = getelementptr i8, ptr %739, i64 %871
  %875 = insertelement <2 x i32> poison, i32 %857, i64 0
  %876 = shufflevector <2 x i32> %875, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %877

877:                                              ; preds = %877, %870
  %878 = phi i64 [ 0, %870 ], [ %896, %877 ]
  %879 = shl i64 %878, 3
  %880 = getelementptr i8, ptr %737, i64 %879
  %881 = shl i64 %878, 3
  %882 = or disjoint i64 %881, 16
  %883 = getelementptr i8, ptr %737, i64 %882
  %884 = getelementptr i8, ptr %739, i64 %878
  %885 = getelementptr i8, ptr %884, i64 2
  %886 = load <2 x i8>, ptr %884, align 1, !tbaa !37, !alias.scope !68
  %887 = load <2 x i8>, ptr %885, align 1, !tbaa !37, !alias.scope !68
  %888 = zext <2 x i8> %886 to <2 x i32>
  %889 = zext <2 x i8> %887 to <2 x i32>
  %890 = or disjoint <2 x i32> %876, %888
  %891 = or disjoint <2 x i32> %876, %889
  %892 = shufflevector <2 x i32> %890, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %893 = shufflevector <4 x i32> %892, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %893, ptr %880, align 2
  %894 = shufflevector <2 x i32> %891, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %895 = shufflevector <4 x i32> %894, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %895, ptr %883, align 2
  %896 = add nuw i64 %878, 4
  %897 = icmp eq i64 %896, %871
  br i1 %897, label %898, label %877, !llvm.loop !71

898:                                              ; preds = %877
  %899 = icmp eq i64 %858, %871
  br i1 %899, label %1026, label %900

900:                                              ; preds = %860, %855, %898
  %901 = phi ptr [ %737, %860 ], [ %737, %855 ], [ %873, %898 ]
  %902 = phi ptr [ %739, %860 ], [ %739, %855 ], [ %874, %898 ]
  br label %903

903:                                              ; preds = %900, %903
  %904 = phi ptr [ %910, %903 ], [ %901, %900 ]
  %905 = phi ptr [ %911, %903 ], [ %902, %900 ]
  %906 = load i8, ptr %905, align 1, !tbaa !37
  %907 = zext i8 %906 to i32
  %908 = or disjoint i32 %857, %907
  store i32 %908, ptr %904, align 2, !tbaa.struct !52
  %909 = getelementptr inbounds %struct.HUF_DEltX2, ptr %904, i64 1
  store i32 %908, ptr %909, align 2, !tbaa.struct !52
  %910 = getelementptr inbounds %struct.HUF_DEltX2, ptr %904, i64 2
  %911 = getelementptr inbounds %struct.sortedSymbol_t, ptr %905, i64 1
  %912 = icmp eq ptr %911, %741
  br i1 %912, label %1026, label %903, !llvm.loop !72

913:                                              ; preds = %735
  br i1 %744, label %1026, label %914

914:                                              ; preds = %913
  %915 = shl i32 %303, 16
  %916 = add i32 %915, 16777216
  %917 = sub nsw i64 %740, %738
  %918 = icmp ult i64 %917, 8
  br i1 %918, label %951, label %919

919:                                              ; preds = %914
  %920 = add nsw i64 %740, %736
  %921 = sub nsw i64 %920, %738
  %922 = shl nsw i64 %921, 2
  %923 = getelementptr i8, ptr %290, i64 %922
  %924 = icmp ult ptr %737, %741
  %925 = icmp ult ptr %739, %923
  %926 = and i1 %924, %925
  br i1 %926, label %951, label %927

927:                                              ; preds = %919
  %928 = and i64 %917, -8
  %929 = shl nsw i64 %928, 2
  %930 = getelementptr i8, ptr %737, i64 %929
  %931 = getelementptr i8, ptr %739, i64 %928
  %932 = insertelement <4 x i32> poison, i32 %916, i64 0
  %933 = shufflevector <4 x i32> %932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %934

934:                                              ; preds = %934, %927
  %935 = phi i64 [ 0, %927 ], [ %947, %934 ]
  %936 = shl i64 %935, 2
  %937 = getelementptr i8, ptr %737, i64 %936
  %938 = getelementptr i8, ptr %739, i64 %935
  %939 = getelementptr i8, ptr %938, i64 4
  %940 = load <4 x i8>, ptr %938, align 1, !tbaa !37, !alias.scope !73
  %941 = load <4 x i8>, ptr %939, align 1, !tbaa !37, !alias.scope !73
  %942 = zext <4 x i8> %940 to <4 x i32>
  %943 = zext <4 x i8> %941 to <4 x i32>
  %944 = or disjoint <4 x i32> %933, %942
  %945 = or disjoint <4 x i32> %933, %943
  %946 = getelementptr i32, ptr %937, i64 4
  store <4 x i32> %944, ptr %937, align 2, !alias.scope !76, !noalias !73
  store <4 x i32> %945, ptr %946, align 2, !alias.scope !76, !noalias !73
  %947 = add nuw i64 %935, 8
  %948 = icmp eq i64 %947, %928
  br i1 %948, label %949, label %934, !llvm.loop !78

949:                                              ; preds = %934
  %950 = icmp eq i64 %917, %928
  br i1 %950, label %1026, label %951

951:                                              ; preds = %919, %914, %949
  %952 = phi ptr [ %737, %919 ], [ %737, %914 ], [ %930, %949 ]
  %953 = phi ptr [ %739, %919 ], [ %739, %914 ], [ %931, %949 ]
  br label %954

954:                                              ; preds = %951, %954
  %955 = phi ptr [ %960, %954 ], [ %952, %951 ]
  %956 = phi ptr [ %961, %954 ], [ %953, %951 ]
  %957 = load i8, ptr %956, align 1, !tbaa !37
  %958 = zext i8 %957 to i32
  %959 = or disjoint i32 %916, %958
  %960 = getelementptr inbounds %struct.HUF_DEltX2, ptr %955, i64 1
  store i32 %959, ptr %955, align 2, !tbaa.struct !52
  %961 = getelementptr inbounds %struct.sortedSymbol_t, ptr %956, i64 1
  %962 = icmp eq ptr %961, %741
  br i1 %962, label %1026, label %954, !llvm.loop !79

963:                                              ; preds = %735
  br i1 %744, label %1026, label %964

964:                                              ; preds = %963
  %965 = shl i32 %303, 16
  %966 = add i32 %965, 16777216
  %967 = zext i32 %743 to i64
  %968 = sub nsw i64 %740, %738
  %969 = and i64 %968, 1
  %970 = icmp eq i64 %969, 0
  br i1 %970, label %987, label %971

971:                                              ; preds = %964
  %972 = load i8, ptr %739, align 1, !tbaa !37
  %973 = zext i8 %972 to i32
  %974 = or disjoint i32 %966, %973
  %975 = zext i32 %974 to i64
  %976 = mul nuw i64 %975, 4294967297
  %977 = getelementptr inbounds %struct.HUF_DEltX2, ptr %737, i64 %967
  br label %978

978:                                              ; preds = %978, %971
  %979 = phi ptr [ %983, %978 ], [ %737, %971 ]
  store i64 %976, ptr %979, align 2
  %980 = getelementptr inbounds %struct.HUF_DEltX2, ptr %979, i64 2
  store i64 %976, ptr %980, align 2
  %981 = getelementptr inbounds %struct.HUF_DEltX2, ptr %979, i64 4
  store i64 %976, ptr %981, align 2
  %982 = getelementptr inbounds %struct.HUF_DEltX2, ptr %979, i64 6
  store i64 %976, ptr %982, align 2
  %983 = getelementptr inbounds %struct.HUF_DEltX2, ptr %979, i64 8
  %984 = icmp eq ptr %983, %977
  br i1 %984, label %985, label %978, !llvm.loop !63

985:                                              ; preds = %978
  %986 = getelementptr inbounds %struct.sortedSymbol_t, ptr %739, i64 1
  br label %987

987:                                              ; preds = %985, %964
  %988 = phi ptr [ %737, %964 ], [ %977, %985 ]
  %989 = phi ptr [ %739, %964 ], [ %986, %985 ]
  %990 = add nsw i64 %740, -1
  %991 = icmp eq i64 %990, %738
  br i1 %991, label %1026, label %992

992:                                              ; preds = %987, %1023
  %993 = phi ptr [ %1015, %1023 ], [ %988, %987 ]
  %994 = phi ptr [ %1024, %1023 ], [ %989, %987 ]
  %995 = load i8, ptr %994, align 1, !tbaa !37
  %996 = zext i8 %995 to i32
  %997 = or disjoint i32 %966, %996
  %998 = zext i32 %997 to i64
  %999 = mul nuw i64 %998, 4294967297
  %1000 = getelementptr inbounds %struct.HUF_DEltX2, ptr %993, i64 %967
  br label %1001

1001:                                             ; preds = %1001, %992
  %1002 = phi ptr [ %1006, %1001 ], [ %993, %992 ]
  store i64 %999, ptr %1002, align 2
  %1003 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1002, i64 2
  store i64 %999, ptr %1003, align 2
  %1004 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1002, i64 4
  store i64 %999, ptr %1004, align 2
  %1005 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1002, i64 6
  store i64 %999, ptr %1005, align 2
  %1006 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1002, i64 8
  %1007 = icmp eq ptr %1006, %1000
  br i1 %1007, label %1008, label %1001, !llvm.loop !63

1008:                                             ; preds = %1001
  %1009 = getelementptr inbounds %struct.sortedSymbol_t, ptr %994, i64 1
  %1010 = load i8, ptr %1009, align 1, !tbaa !37
  %1011 = zext i8 %1010 to i32
  %1012 = or disjoint i32 %966, %1011
  %1013 = zext i32 %1012 to i64
  %1014 = mul nuw i64 %1013, 4294967297
  %1015 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1000, i64 %967
  br label %1016

1016:                                             ; preds = %1016, %1008
  %1017 = phi ptr [ %1021, %1016 ], [ %1000, %1008 ]
  store i64 %1014, ptr %1017, align 2
  %1018 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1017, i64 2
  store i64 %1014, ptr %1018, align 2
  %1019 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1017, i64 4
  store i64 %1014, ptr %1019, align 2
  %1020 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1017, i64 6
  store i64 %1014, ptr %1020, align 2
  %1021 = getelementptr inbounds %struct.HUF_DEltX2, ptr %1017, i64 8
  %1022 = icmp eq ptr %1021, %1015
  br i1 %1022, label %1023, label %1016, !llvm.loop !63

1023:                                             ; preds = %1016
  %1024 = getelementptr inbounds %struct.sortedSymbol_t, ptr %994, i64 2
  %1025 = icmp eq ptr %1024, %741
  br i1 %1025, label %1026, label %992, !llvm.loop !64

1026:                                             ; preds = %723, %679, %763, %768, %813, %818, %903, %954, %987, %1023, %898, %949, %963, %913, %854, %792, %745, %728, %308
  %1027 = icmp eq i64 %299, %289
  br i1 %1027, label %1028, label %295, !llvm.loop !80

1028:                                             ; preds = %1026, %286
  %1029 = trunc i32 %48 to i8
  store i8 %10, ptr %0, align 4
  %1030 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 1, ptr %1030, align 1
  %1031 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %1029, ptr %1031, align 2
  %1032 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %12, ptr %1032, align 1
  br label %1033

1033:                                             ; preds = %26, %21, %16, %6, %1028
  %1034 = phi i64 [ %24, %1028 ], [ -1, %6 ], [ -44, %16 ], [ %24, %21 ], [ -44, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i64 %1034
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ult i64 %9, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %3, i64 %9
  %15 = sub i64 %4, %9
  %16 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %14, i64 noundef %15, ptr noundef %0, i32 noundef %7)
  br label %17

17:                                               ; preds = %11, %8, %13
  %18 = phi i64 [ %16, %13 ], [ %9, %8 ], [ -72, %11 ]
  ret i64 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #7 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %481

11:                                               ; preds = %6
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %481, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = icmp ugt i64 %3, 7
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %2, i64 %3
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %481, label %71

21:                                               ; preds = %13
  %22 = load i8, ptr %2, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  switch i64 %3, label %65 [
    i64 7, label %24
    i64 6, label %30
    i64 5, label %37
    i64 4, label %44
    i64 3, label %51
    i64 2, label %58
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %2, i64 6
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 48
  %29 = or disjoint i64 %28, %23
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i64 [ %23, %21 ], [ %29, %24 ]
  %32 = getelementptr inbounds i8, ptr %2, i64 5
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 40
  %36 = add nuw nsw i64 %35, %31
  br label %37

37:                                               ; preds = %30, %21
  %38 = phi i64 [ %23, %21 ], [ %36, %30 ]
  %39 = getelementptr inbounds i8, ptr %2, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 32
  %43 = add nuw nsw i64 %42, %38
  br label %44

44:                                               ; preds = %37, %21
  %45 = phi i64 [ %23, %21 ], [ %43, %37 ]
  %46 = getelementptr inbounds i8, ptr %2, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 24
  %50 = add nuw nsw i64 %49, %45
  br label %51

51:                                               ; preds = %44, %21
  %52 = phi i64 [ %23, %21 ], [ %50, %44 ]
  %53 = getelementptr inbounds i8, ptr %2, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 16
  %57 = add nuw nsw i64 %56, %52
  br label %58

58:                                               ; preds = %51, %21
  %59 = phi i64 [ %23, %21 ], [ %57, %51 ]
  %60 = getelementptr inbounds i8, ptr %2, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = add nuw nsw i64 %63, %59
  br label %65

65:                                               ; preds = %58, %21
  %66 = phi i64 [ %23, %21 ], [ %64, %58 ]
  %67 = getelementptr i8, ptr %2, i64 %3
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %481, label %88

71:                                               ; preds = %16
  %72 = add nsw i64 %3, -8
  %73 = getelementptr inbounds i8, ptr %2, i64 %72
  %74 = load i64, ptr %73, align 1, !tbaa !27
  %75 = zext i8 %19 to i32
  %76 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 true), !range !81
  %77 = xor i32 %76, 31
  %78 = sub nuw nsw i32 8, %77
  %79 = icmp ult i64 %3, -119
  br i1 %79, label %80, label %481

80:                                               ; preds = %71
  %81 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  %83 = getelementptr inbounds i32, ptr %4, i64 1
  %84 = load i32, ptr %4, align 4
  %85 = lshr i32 %84, 16
  %86 = ptrtoint ptr %82 to i64
  %87 = icmp sgt i64 %1, 7
  br i1 %87, label %102, label %319

88:                                               ; preds = %65
  %89 = zext i8 %69 to i32
  %90 = tail call i32 @llvm.ctlz.i32(i32 %89, i1 true), !range !81
  %91 = trunc i64 %3 to i32
  %92 = shl nuw nsw i32 %91, 3
  %93 = sub nsw i32 %90, %92
  %94 = add nsw i32 %93, 41
  %95 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  %97 = getelementptr inbounds i32, ptr %4, i64 1
  %98 = load i32, ptr %4, align 4
  %99 = lshr i32 %98, 16
  %100 = ptrtoint ptr %96 to i64
  %101 = icmp sgt i64 %1, 7
  br i1 %101, label %102, label %348

102:                                              ; preds = %88, %80
  %103 = phi i64 [ %100, %88 ], [ %86, %80 ]
  %104 = phi i32 [ %99, %88 ], [ %85, %80 ]
  %105 = phi i32 [ %98, %88 ], [ %84, %80 ]
  %106 = phi ptr [ %97, %88 ], [ %83, %80 ]
  %107 = phi ptr [ %96, %88 ], [ %82, %80 ]
  %108 = phi i32 [ %94, %88 ], [ %78, %80 ]
  %109 = phi i64 [ %66, %88 ], [ %74, %80 ]
  %110 = phi i64 [ 0, %88 ], [ %72, %80 ]
  %111 = and i32 %105, 16515072
  %112 = icmp ult i32 %111, 786432
  %113 = sub nsw i32 0, %104
  %114 = and i32 %113, 63
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %4, i64 1
  br i1 %112, label %119, label %117

117:                                              ; preds = %102
  %118 = getelementptr inbounds i8, ptr %107, i64 -7
  br label %227

119:                                              ; preds = %102
  %120 = getelementptr inbounds i8, ptr %107, i64 -9
  br label %121

121:                                              ; preds = %155, %119
  %122 = phi ptr [ %0, %119 ], [ %225, %155 ]
  %123 = phi i64 [ %110, %119 ], [ %149, %155 ]
  %124 = phi i64 [ %109, %119 ], [ %151, %155 ]
  %125 = phi i32 [ %108, %119 ], [ %221, %155 ]
  %126 = getelementptr inbounds i8, ptr %2, i64 %123
  %127 = icmp slt i64 %123, 8
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = lshr i32 %125, 3
  %130 = and i32 %125, 7
  br label %144

131:                                              ; preds = %121
  %132 = icmp eq i64 %123, 0
  br i1 %132, label %348, label %133

133:                                              ; preds = %131
  %134 = lshr i32 %125, 3
  %135 = zext nneg i32 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i8, ptr %126, i64 %136
  %138 = icmp ult ptr %137, %2
  %139 = trunc i64 %123 to i32
  %140 = select i1 %138, i32 %139, i32 %134
  %141 = zext i1 %138 to i32
  %142 = shl i32 %140, 3
  %143 = sub i32 %125, %142
  br label %144

144:                                              ; preds = %133, %128
  %145 = phi i32 [ %143, %133 ], [ %130, %128 ]
  %146 = phi i32 [ %140, %133 ], [ %129, %128 ]
  %147 = phi i32 [ %141, %133 ], [ 0, %128 ]
  %148 = zext i32 %146 to i64
  %149 = sub i64 %123, %148
  %150 = getelementptr inbounds i8, ptr %2, i64 %149
  %151 = load i64, ptr %150, align 1, !tbaa !27
  %152 = icmp eq i32 %147, 0
  %153 = icmp ult ptr %122, %120
  %154 = and i1 %153, %152
  br i1 %154, label %155, label %344

155:                                              ; preds = %144
  %156 = and i32 %145, 63
  %157 = zext nneg i32 %156 to i64
  %158 = shl i64 %151, %157
  %159 = lshr i64 %158, %115
  %160 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %159
  %161 = load i16, ptr %160, align 2
  store i16 %161, ptr %122, align 1
  %162 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %159, i32 1
  %163 = load i8, ptr %162, align 2, !tbaa !82
  %164 = zext i8 %163 to i32
  %165 = add i32 %145, %164
  %166 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %159, i32 2
  %167 = load i8, ptr %166, align 1, !tbaa !84
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds i8, ptr %122, i64 %168
  %170 = and i32 %165, 63
  %171 = zext nneg i32 %170 to i64
  %172 = shl i64 %151, %171
  %173 = lshr i64 %172, %115
  %174 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %173
  %175 = load i16, ptr %174, align 2
  store i16 %175, ptr %169, align 1
  %176 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %173, i32 1
  %177 = load i8, ptr %176, align 2, !tbaa !82
  %178 = zext i8 %177 to i32
  %179 = add i32 %165, %178
  %180 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %173, i32 2
  %181 = load i8, ptr %180, align 1, !tbaa !84
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i8, ptr %169, i64 %182
  %184 = and i32 %179, 63
  %185 = zext nneg i32 %184 to i64
  %186 = shl i64 %151, %185
  %187 = lshr i64 %186, %115
  %188 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %187
  %189 = load i16, ptr %188, align 2
  store i16 %189, ptr %183, align 1
  %190 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %187, i32 1
  %191 = load i8, ptr %190, align 2, !tbaa !82
  %192 = zext i8 %191 to i32
  %193 = add i32 %179, %192
  %194 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %187, i32 2
  %195 = load i8, ptr %194, align 1, !tbaa !84
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds i8, ptr %183, i64 %196
  %198 = and i32 %193, 63
  %199 = zext nneg i32 %198 to i64
  %200 = shl i64 %151, %199
  %201 = lshr i64 %200, %115
  %202 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %201
  %203 = load i16, ptr %202, align 2
  store i16 %203, ptr %197, align 1
  %204 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %201, i32 1
  %205 = load i8, ptr %204, align 2, !tbaa !82
  %206 = zext i8 %205 to i32
  %207 = add i32 %193, %206
  %208 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %201, i32 2
  %209 = load i8, ptr %208, align 1, !tbaa !84
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds i8, ptr %197, i64 %210
  %212 = and i32 %207, 63
  %213 = zext nneg i32 %212 to i64
  %214 = shl i64 %151, %213
  %215 = lshr i64 %214, %115
  %216 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %215
  %217 = load i16, ptr %216, align 2
  store i16 %217, ptr %211, align 1
  %218 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %215, i32 1
  %219 = load i8, ptr %218, align 2, !tbaa !82
  %220 = zext i8 %219 to i32
  %221 = add i32 %207, %220
  %222 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %215, i32 2
  %223 = load i8, ptr %222, align 1, !tbaa !84
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds i8, ptr %211, i64 %224
  %226 = icmp ugt i32 %221, 64
  br i1 %226, label %348, label %121, !prof !85, !llvm.loop !86

227:                                              ; preds = %261, %117
  %228 = phi ptr [ %0, %117 ], [ %317, %261 ]
  %229 = phi i64 [ %110, %117 ], [ %255, %261 ]
  %230 = phi i64 [ %109, %117 ], [ %257, %261 ]
  %231 = phi i32 [ %108, %117 ], [ %313, %261 ]
  %232 = getelementptr inbounds i8, ptr %2, i64 %229
  %233 = icmp slt i64 %229, 8
  br i1 %233, label %237, label %234

234:                                              ; preds = %227
  %235 = lshr i32 %231, 3
  %236 = and i32 %231, 7
  br label %250

237:                                              ; preds = %227
  %238 = icmp eq i64 %229, 0
  br i1 %238, label %348, label %239

239:                                              ; preds = %237
  %240 = lshr i32 %231, 3
  %241 = zext nneg i32 %240 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i8, ptr %232, i64 %242
  %244 = icmp ult ptr %243, %2
  %245 = trunc i64 %229 to i32
  %246 = select i1 %244, i32 %245, i32 %240
  %247 = zext i1 %244 to i32
  %248 = shl i32 %246, 3
  %249 = sub i32 %231, %248
  br label %250

250:                                              ; preds = %239, %234
  %251 = phi i32 [ %249, %239 ], [ %236, %234 ]
  %252 = phi i32 [ %246, %239 ], [ %235, %234 ]
  %253 = phi i32 [ %247, %239 ], [ 0, %234 ]
  %254 = zext i32 %252 to i64
  %255 = sub i64 %229, %254
  %256 = getelementptr inbounds i8, ptr %2, i64 %255
  %257 = load i64, ptr %256, align 1, !tbaa !27
  %258 = icmp eq i32 %253, 0
  %259 = icmp ult ptr %228, %118
  %260 = and i1 %259, %258
  br i1 %260, label %261, label %346

261:                                              ; preds = %250
  %262 = and i32 %251, 63
  %263 = zext nneg i32 %262 to i64
  %264 = shl i64 %257, %263
  %265 = lshr i64 %264, %115
  %266 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %265
  %267 = load i16, ptr %266, align 2
  store i16 %267, ptr %228, align 1
  %268 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %265, i32 1
  %269 = load i8, ptr %268, align 2, !tbaa !82
  %270 = zext i8 %269 to i32
  %271 = add i32 %251, %270
  %272 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %265, i32 2
  %273 = load i8, ptr %272, align 1, !tbaa !84
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds i8, ptr %228, i64 %274
  %276 = and i32 %271, 63
  %277 = zext nneg i32 %276 to i64
  %278 = shl i64 %257, %277
  %279 = lshr i64 %278, %115
  %280 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %279
  %281 = load i16, ptr %280, align 2
  store i16 %281, ptr %275, align 1
  %282 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %279, i32 1
  %283 = load i8, ptr %282, align 2, !tbaa !82
  %284 = zext i8 %283 to i32
  %285 = add i32 %271, %284
  %286 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %279, i32 2
  %287 = load i8, ptr %286, align 1, !tbaa !84
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds i8, ptr %275, i64 %288
  %290 = and i32 %285, 63
  %291 = zext nneg i32 %290 to i64
  %292 = shl i64 %257, %291
  %293 = lshr i64 %292, %115
  %294 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %293
  %295 = load i16, ptr %294, align 2
  store i16 %295, ptr %289, align 1
  %296 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %293, i32 1
  %297 = load i8, ptr %296, align 2, !tbaa !82
  %298 = zext i8 %297 to i32
  %299 = add i32 %285, %298
  %300 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %293, i32 2
  %301 = load i8, ptr %300, align 1, !tbaa !84
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds i8, ptr %289, i64 %302
  %304 = and i32 %299, 63
  %305 = zext nneg i32 %304 to i64
  %306 = shl i64 %257, %305
  %307 = lshr i64 %306, %115
  %308 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %307
  %309 = load i16, ptr %308, align 2
  store i16 %309, ptr %303, align 1
  %310 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %307, i32 1
  %311 = load i8, ptr %310, align 2, !tbaa !82
  %312 = zext i8 %311 to i32
  %313 = add i32 %299, %312
  %314 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %307, i32 2
  %315 = load i8, ptr %314, align 1, !tbaa !84
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds i8, ptr %303, i64 %316
  %318 = icmp ugt i32 %313, 64
  br i1 %318, label %348, label %227, !prof !85, !llvm.loop !87

319:                                              ; preds = %80
  %320 = icmp slt i64 %3, 16
  br i1 %320, label %328, label %321

321:                                              ; preds = %319
  %322 = lshr i32 %78, 3
  %323 = zext nneg i32 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, ptr %73, i64 %324
  %326 = and i32 %78, 7
  %327 = load i64, ptr %325, align 1, !tbaa !27
  br label %348

328:                                              ; preds = %319
  %329 = icmp eq i64 %72, 0
  br i1 %329, label %348, label %330

330:                                              ; preds = %328
  %331 = lshr i32 %78, 3
  %332 = zext nneg i32 %331 to i64
  %333 = sub nsw i64 0, %332
  %334 = getelementptr inbounds i8, ptr %73, i64 %333
  %335 = icmp ult ptr %334, %2
  %336 = trunc i64 %72 to i32
  %337 = select i1 %335, i32 %336, i32 %331
  %338 = zext i32 %337 to i64
  %339 = sub nsw i64 0, %338
  %340 = getelementptr inbounds i8, ptr %73, i64 %339
  %341 = shl i32 %337, 3
  %342 = sub i32 %78, %341
  %343 = load i64, ptr %340, align 1, !tbaa !27
  br label %348

344:                                              ; preds = %144
  %345 = getelementptr inbounds i8, ptr %2, i64 %149
  br label %348

346:                                              ; preds = %250
  %347 = getelementptr inbounds i8, ptr %2, i64 %255
  br label %348

348:                                              ; preds = %261, %237, %155, %131, %346, %344, %330, %328, %321, %88
  %349 = phi i64 [ %86, %330 ], [ %86, %321 ], [ %86, %328 ], [ %100, %88 ], [ %103, %344 ], [ %103, %346 ], [ %103, %131 ], [ %103, %155 ], [ %103, %237 ], [ %103, %261 ]
  %350 = phi i32 [ %85, %330 ], [ %85, %321 ], [ %85, %328 ], [ %99, %88 ], [ %104, %344 ], [ %104, %346 ], [ %104, %131 ], [ %104, %155 ], [ %104, %237 ], [ %104, %261 ]
  %351 = phi ptr [ %83, %330 ], [ %83, %321 ], [ %83, %328 ], [ %97, %88 ], [ %106, %344 ], [ %106, %346 ], [ %106, %131 ], [ %106, %155 ], [ %106, %237 ], [ %106, %261 ]
  %352 = phi ptr [ %82, %330 ], [ %82, %321 ], [ %82, %328 ], [ %96, %88 ], [ %107, %344 ], [ %107, %346 ], [ %107, %131 ], [ %107, %155 ], [ %107, %237 ], [ %107, %261 ]
  %353 = phi i32 [ %342, %330 ], [ %326, %321 ], [ %78, %328 ], [ %94, %88 ], [ %145, %344 ], [ %251, %346 ], [ %221, %155 ], [ %125, %131 ], [ %313, %261 ], [ %231, %237 ]
  %354 = phi i64 [ %343, %330 ], [ %327, %321 ], [ %74, %328 ], [ %66, %88 ], [ %151, %344 ], [ %257, %346 ], [ %151, %155 ], [ %124, %131 ], [ %257, %261 ], [ %230, %237 ]
  %355 = phi ptr [ %340, %330 ], [ %325, %321 ], [ %73, %328 ], [ %2, %88 ], [ %345, %344 ], [ %347, %346 ], [ @BIT_reloadDStream.zeroFilled, %155 ], [ %126, %131 ], [ @BIT_reloadDStream.zeroFilled, %261 ], [ %232, %237 ]
  %356 = phi ptr [ %0, %330 ], [ %0, %321 ], [ %0, %328 ], [ %0, %88 ], [ %122, %344 ], [ %228, %346 ], [ %225, %155 ], [ %122, %131 ], [ %317, %261 ], [ %228, %237 ]
  %357 = ptrtoint ptr %356 to i64
  %358 = sub i64 %349, %357
  %359 = icmp ugt i64 %358, 1
  br i1 %359, label %360, label %442

360:                                              ; preds = %348
  %361 = getelementptr inbounds i8, ptr %352, i64 -2
  %362 = ptrtoint ptr %2 to i64
  %363 = sub nsw i32 0, %350
  %364 = and i32 %363, 63
  %365 = zext nneg i32 %364 to i64
  %366 = icmp ugt i32 %353, 64
  br i1 %366, label %402, label %367, !prof !88

367:                                              ; preds = %360, %408
  %368 = phi ptr [ %422, %408 ], [ %356, %360 ]
  %369 = phi ptr [ %397, %408 ], [ %355, %360 ]
  %370 = phi i64 [ %398, %408 ], [ %354, %360 ]
  %371 = phi i32 [ %418, %408 ], [ %353, %360 ]
  %372 = icmp ult ptr %369, %14
  br i1 %372, label %376, label %373

373:                                              ; preds = %367
  %374 = lshr i32 %371, 3
  %375 = and i32 %371, 7
  br label %391

376:                                              ; preds = %367
  %377 = icmp eq ptr %369, %2
  br i1 %377, label %402, label %378

378:                                              ; preds = %376
  %379 = lshr i32 %371, 3
  %380 = zext nneg i32 %379 to i64
  %381 = sub nsw i64 0, %380
  %382 = getelementptr inbounds i8, ptr %369, i64 %381
  %383 = icmp ult ptr %382, %2
  %384 = ptrtoint ptr %369 to i64
  %385 = sub i64 %384, %362
  %386 = trunc i64 %385 to i32
  %387 = select i1 %383, i32 %386, i32 %379
  %388 = zext i1 %383 to i32
  %389 = shl i32 %387, 3
  %390 = sub i32 %371, %389
  br label %391

391:                                              ; preds = %378, %373
  %392 = phi i32 [ %374, %373 ], [ %387, %378 ]
  %393 = phi i32 [ %375, %373 ], [ %390, %378 ]
  %394 = phi i32 [ 0, %373 ], [ %388, %378 ]
  %395 = zext i32 %392 to i64
  %396 = sub nsw i64 0, %395
  %397 = getelementptr inbounds i8, ptr %369, i64 %396
  %398 = load i64, ptr %397, align 1, !tbaa !27
  %399 = icmp eq i32 %394, 0
  %400 = icmp ule ptr %368, %361
  %401 = and i1 %400, %399
  br i1 %401, label %408, label %402

402:                                              ; preds = %408, %376, %391, %360
  %403 = phi ptr [ %356, %360 ], [ %368, %391 ], [ %368, %376 ], [ %422, %408 ]
  %404 = phi ptr [ @BIT_reloadDStream.zeroFilled, %360 ], [ %397, %391 ], [ %2, %376 ], [ @BIT_reloadDStream.zeroFilled, %408 ]
  %405 = phi i64 [ %354, %360 ], [ %398, %391 ], [ %370, %376 ], [ %398, %408 ]
  %406 = phi i32 [ %353, %360 ], [ %393, %391 ], [ %371, %376 ], [ %418, %408 ]
  %407 = icmp ugt ptr %403, %361
  br i1 %407, label %442, label %424

408:                                              ; preds = %391
  %409 = and i32 %393, 63
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %398, %410
  %412 = lshr i64 %411, %365
  %413 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %412
  %414 = load i16, ptr %413, align 2
  store i16 %414, ptr %368, align 1
  %415 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %412, i32 1
  %416 = load i8, ptr %415, align 2, !tbaa !82
  %417 = zext i8 %416 to i32
  %418 = add i32 %393, %417
  %419 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %412, i32 2
  %420 = load i8, ptr %419, align 1, !tbaa !84
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds i8, ptr %368, i64 %421
  %423 = icmp ugt i32 %418, 64
  br i1 %423, label %402, label %367, !prof !85, !llvm.loop !89

424:                                              ; preds = %402, %424
  %425 = phi ptr [ %440, %424 ], [ %403, %402 ]
  %426 = phi i32 [ %436, %424 ], [ %406, %402 ]
  %427 = and i32 %426, 63
  %428 = zext nneg i32 %427 to i64
  %429 = shl i64 %405, %428
  %430 = lshr i64 %429, %365
  %431 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %430
  %432 = load i16, ptr %431, align 2
  store i16 %432, ptr %425, align 1
  %433 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %430, i32 1
  %434 = load i8, ptr %433, align 2, !tbaa !82
  %435 = zext i8 %434 to i32
  %436 = add i32 %426, %435
  %437 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %430, i32 2
  %438 = load i8, ptr %437, align 1, !tbaa !84
  %439 = zext i8 %438 to i64
  %440 = getelementptr inbounds i8, ptr %425, i64 %439
  %441 = icmp ugt ptr %440, %361
  br i1 %441, label %442, label %424, !llvm.loop !90

442:                                              ; preds = %424, %402, %348
  %443 = phi i32 [ %353, %348 ], [ %406, %402 ], [ %436, %424 ]
  %444 = phi i64 [ %354, %348 ], [ %405, %402 ], [ %405, %424 ]
  %445 = phi ptr [ %355, %348 ], [ %404, %402 ], [ %404, %424 ]
  %446 = phi ptr [ %356, %348 ], [ %403, %402 ], [ %440, %424 ]
  %447 = icmp ult ptr %446, %352
  br i1 %447, label %448, label %474

448:                                              ; preds = %442
  %449 = and i32 %443, 63
  %450 = zext nneg i32 %449 to i64
  %451 = shl i64 %444, %450
  %452 = sub nsw i32 0, %350
  %453 = and i32 %452, 63
  %454 = zext nneg i32 %453 to i64
  %455 = lshr i64 %451, %454
  %456 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %455
  %457 = load i8, ptr %456, align 2
  store i8 %457, ptr %446, align 1
  %458 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %455, i32 2
  %459 = load i8, ptr %458, align 1, !tbaa !84
  %460 = icmp eq i8 %459, 1
  br i1 %460, label %461, label %466

461:                                              ; preds = %448
  %462 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %455, i32 1
  %463 = load i8, ptr %462, align 2, !tbaa !82
  %464 = zext i8 %463 to i32
  %465 = add i32 %443, %464
  br label %474

466:                                              ; preds = %448
  %467 = icmp ult i32 %443, 64
  br i1 %467, label %468, label %474

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.HUF_DEltX2, ptr %351, i64 %455, i32 1
  %470 = load i8, ptr %469, align 2, !tbaa !82
  %471 = zext i8 %470 to i32
  %472 = add nuw nsw i32 %443, %471
  %473 = tail call i32 @llvm.umin.i32(i32 %472, i32 64)
  br label %474

474:                                              ; preds = %468, %466, %461, %442
  %475 = phi i32 [ %443, %442 ], [ %465, %461 ], [ %443, %466 ], [ %473, %468 ]
  %476 = icmp eq ptr %445, %2
  %477 = freeze i32 %475
  %478 = icmp eq i32 %477, 64
  %479 = and i1 %476, %478
  %480 = select i1 %479, i64 %1, i64 -20
  br label %481

481:                                              ; preds = %474, %71, %65, %16, %11, %9
  %482 = phi i64 [ %10, %9 ], [ %3, %71 ], [ -20, %65 ], [ -1, %16 ], [ -72, %11 ], [ %480, %474 ]
  ret i64 %482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @HUF_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = shl i64 %1, 4
  %6 = udiv i64 %5, %0
  %7 = and i64 %6, 4294967295
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i64 [ %7, %4 ], [ 15, %2 ]
  %10 = lshr i64 %0, 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %9
  %13 = load i32, ptr %12, align 16, !tbaa !91
  %14 = getelementptr inbounds %struct.algo_time_t, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !93
  %16 = mul i32 %15, %11
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %9, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %9, i64 1, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !93
  %22 = mul i32 %21, %11
  %23 = add i32 %22, %19
  %24 = lshr i32 %23, 5
  %25 = add i32 %24, %23
  %26 = icmp ult i32 %25, %17
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i64 %4, %2
  br i1 %11, label %62, label %12

12:                                               ; preds = %10
  %13 = icmp eq i64 %4, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %2, i1 false)
  br label %62

15:                                               ; preds = %12
  %16 = icmp eq i64 %4, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load i8, ptr %3, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %18, i64 %2, i1 false)
  br label %62

19:                                               ; preds = %15
  %20 = icmp ult i64 %4, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = shl i64 %4, 4
  %23 = udiv i64 %22, %2
  %24 = and i64 %23, 4294967295
  br label %25

25:                                               ; preds = %19, %21
  %26 = phi i64 [ %24, %21 ], [ 15, %19 ]
  %27 = lshr i64 %2, 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %26
  %30 = load i32, ptr %29, align 16, !tbaa !91
  %31 = getelementptr inbounds %struct.algo_time_t, ptr %29, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !93
  %33 = mul i32 %32, %28
  %34 = add i32 %33, %30
  %35 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %26, i64 1
  %36 = load i32, ptr %35, align 8, !tbaa !91
  %37 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %26, i64 1, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !93
  %39 = mul i32 %38, %28
  %40 = add i32 %39, %36
  %41 = lshr i32 %40, 5
  %42 = add i32 %41, %40
  %43 = icmp ult i32 %42, %34
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = icmp ult i64 %45, %4
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, ptr %3, i64 %45
  %51 = sub i64 %4, %45
  %52 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %50, i64 noundef %51, ptr noundef %0, i32 noundef %7)
  br label %62

53:                                               ; preds = %25
  %54 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %55 = icmp ult i64 %54, -119
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = icmp ult i64 %54, %4
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, ptr %3, i64 %54
  %60 = sub i64 %4, %54
  %61 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %59, i64 noundef %60, ptr noundef %0, i32 noundef %7)
  br label %62

62:                                               ; preds = %58, %56, %53, %49, %47, %44, %10, %8, %17, %14
  %63 = phi i64 [ %2, %14 ], [ %2, %17 ], [ -70, %8 ], [ -20, %10 ], [ %52, %49 ], [ %45, %44 ], [ -72, %47 ], [ %61, %58 ], [ %54, %53 ], [ -72, %56 ]
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X1_DCtx_wksp(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ult i64 %9, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %3, i64 %9
  %15 = sub i64 %4, %9
  %16 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %14, i64 noundef %15, ptr noundef %0, i32 noundef %7)
  br label %17

17:                                               ; preds = %11, %8, %13
  %18 = phi i64 [ %16, %13 ], [ %9, %8 ], [ -72, %11 ]
  ret i64 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @HUF_decompress1X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #7 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  ret i64 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #9 {
  %7 = ptrtoint ptr %0 to i64
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %279

12:                                               ; preds = %6
  %13 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = getelementptr inbounds i32, ptr %4, i64 1
  %16 = load i32, ptr %4, align 4
  %17 = lshr i32 %16, 16
  %18 = icmp eq i64 %3, 0
  br i1 %18, label %279, label %19

19:                                               ; preds = %12
  %20 = icmp ugt i64 %3, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %2, i64 %3
  %23 = getelementptr i8, ptr %22, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %279, label %76

26:                                               ; preds = %19
  %27 = load i8, ptr %2, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  switch i64 %3, label %70 [
    i64 7, label %29
    i64 6, label %35
    i64 5, label %42
    i64 4, label %49
    i64 3, label %56
    i64 2, label %63
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %2, i64 6
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 48
  %34 = or disjoint i64 %33, %28
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i64 [ %28, %26 ], [ %34, %29 ]
  %37 = getelementptr inbounds i8, ptr %2, i64 5
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 40
  %41 = add nuw nsw i64 %40, %36
  br label %42

42:                                               ; preds = %35, %26
  %43 = phi i64 [ %28, %26 ], [ %41, %35 ]
  %44 = getelementptr inbounds i8, ptr %2, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 32
  %48 = add nuw nsw i64 %47, %43
  br label %49

49:                                               ; preds = %42, %26
  %50 = phi i64 [ %28, %26 ], [ %48, %42 ]
  %51 = getelementptr inbounds i8, ptr %2, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = add nuw nsw i64 %54, %50
  br label %56

56:                                               ; preds = %49, %26
  %57 = phi i64 [ %28, %26 ], [ %55, %49 ]
  %58 = getelementptr inbounds i8, ptr %2, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 16
  %62 = add nuw nsw i64 %61, %57
  br label %63

63:                                               ; preds = %56, %26
  %64 = phi i64 [ %28, %26 ], [ %62, %56 ]
  %65 = getelementptr inbounds i8, ptr %2, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 8
  %69 = add nuw nsw i64 %68, %64
  br label %70

70:                                               ; preds = %63, %26
  %71 = phi i64 [ %28, %26 ], [ %69, %63 ]
  %72 = getelementptr i8, ptr %2, i64 %3
  %73 = getelementptr i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %279, label %87

76:                                               ; preds = %21
  %77 = add nsw i64 %3, -8
  %78 = getelementptr inbounds i8, ptr %2, i64 %77
  %79 = load i64, ptr %78, align 1, !tbaa !27
  %80 = zext i8 %24 to i32
  %81 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true), !range !81
  %82 = xor i32 %81, 31
  %83 = sub nuw nsw i32 8, %82
  %84 = icmp ult i64 %3, -119
  br i1 %84, label %85, label %279

85:                                               ; preds = %76
  %86 = icmp sgt i64 %1, 3
  br i1 %86, label %95, label %183

87:                                               ; preds = %70
  %88 = zext i8 %74 to i32
  %89 = tail call i32 @llvm.ctlz.i32(i32 %88, i1 true), !range !81
  %90 = trunc i64 %3 to i32
  %91 = shl nuw nsw i32 %90, 3
  %92 = sub nsw i32 %89, %91
  %93 = add nsw i32 %92, 41
  %94 = icmp sgt i64 %1, 3
  br i1 %94, label %95, label %210

95:                                               ; preds = %87, %85
  %96 = phi i32 [ %93, %87 ], [ %83, %85 ]
  %97 = phi i64 [ %71, %87 ], [ %79, %85 ]
  %98 = phi i64 [ 0, %87 ], [ %77, %85 ]
  %99 = getelementptr inbounds i8, ptr %14, i64 -3
  %100 = sub nsw i32 0, %17
  %101 = and i32 %100, 63
  %102 = zext nneg i32 %101 to i64
  br label %103

103:                                              ; preds = %137, %95
  %104 = phi ptr [ %0, %95 ], [ %181, %137 ]
  %105 = phi i64 [ %98, %95 ], [ %131, %137 ]
  %106 = phi i64 [ %97, %95 ], [ %133, %137 ]
  %107 = phi i32 [ %96, %95 ], [ %180, %137 ]
  %108 = getelementptr inbounds i8, ptr %2, i64 %105
  %109 = icmp slt i64 %105, 8
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = lshr i32 %107, 3
  %112 = and i32 %107, 7
  br label %126

113:                                              ; preds = %103
  %114 = icmp eq i64 %105, 0
  br i1 %114, label %210, label %115

115:                                              ; preds = %113
  %116 = lshr i32 %107, 3
  %117 = zext nneg i32 %116 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %108, i64 %118
  %120 = icmp ult ptr %119, %2
  %121 = trunc i64 %105 to i32
  %122 = select i1 %120, i32 %121, i32 %116
  %123 = zext i1 %120 to i32
  %124 = shl i32 %122, 3
  %125 = sub i32 %107, %124
  br label %126

126:                                              ; preds = %115, %110
  %127 = phi i32 [ %125, %115 ], [ %112, %110 ]
  %128 = phi i32 [ %122, %115 ], [ %111, %110 ]
  %129 = phi i32 [ %123, %115 ], [ 0, %110 ]
  %130 = zext i32 %128 to i64
  %131 = sub i64 %105, %130
  %132 = getelementptr inbounds i8, ptr %2, i64 %131
  %133 = load i64, ptr %132, align 1, !tbaa !27
  %134 = icmp eq i32 %129, 0
  %135 = icmp ult ptr %104, %99
  %136 = and i1 %135, %134
  br i1 %136, label %137, label %208

137:                                              ; preds = %126
  %138 = and i32 %127, 63
  %139 = zext nneg i32 %138 to i64
  %140 = shl i64 %133, %139
  %141 = lshr i64 %140, %102
  %142 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %141
  %143 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %141, i32 1
  %144 = load i8, ptr %143, align 1, !tbaa !94
  %145 = load i8, ptr %142, align 1, !tbaa !96
  %146 = zext i8 %145 to i32
  %147 = add i32 %127, %146
  store i8 %144, ptr %104, align 1, !tbaa !9
  %148 = getelementptr inbounds i8, ptr %104, i64 1
  %149 = and i32 %147, 63
  %150 = zext nneg i32 %149 to i64
  %151 = shl i64 %133, %150
  %152 = lshr i64 %151, %102
  %153 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %152
  %154 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %152, i32 1
  %155 = load i8, ptr %154, align 1, !tbaa !94
  %156 = load i8, ptr %153, align 1, !tbaa !96
  %157 = zext i8 %156 to i32
  %158 = add i32 %147, %157
  store i8 %155, ptr %148, align 1, !tbaa !9
  %159 = getelementptr inbounds i8, ptr %104, i64 2
  %160 = and i32 %158, 63
  %161 = zext nneg i32 %160 to i64
  %162 = shl i64 %133, %161
  %163 = lshr i64 %162, %102
  %164 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %163
  %165 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %163, i32 1
  %166 = load i8, ptr %165, align 1, !tbaa !94
  %167 = load i8, ptr %164, align 1, !tbaa !96
  %168 = zext i8 %167 to i32
  %169 = add i32 %158, %168
  store i8 %166, ptr %159, align 1, !tbaa !9
  %170 = getelementptr inbounds i8, ptr %104, i64 3
  %171 = and i32 %169, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl i64 %133, %172
  %174 = lshr i64 %173, %102
  %175 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %174
  %176 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %174, i32 1
  %177 = load i8, ptr %176, align 1, !tbaa !94
  %178 = load i8, ptr %175, align 1, !tbaa !96
  %179 = zext i8 %178 to i32
  %180 = add i32 %169, %179
  %181 = getelementptr inbounds i8, ptr %104, i64 4
  store i8 %177, ptr %170, align 1, !tbaa !9
  %182 = icmp ugt i32 %180, 64
  br i1 %182, label %210, label %103, !prof !85, !llvm.loop !97

183:                                              ; preds = %85
  %184 = icmp slt i64 %3, 16
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  %186 = lshr i32 %83, 3
  %187 = zext nneg i32 %186 to i64
  %188 = sub nsw i64 0, %187
  %189 = getelementptr inbounds i8, ptr %78, i64 %188
  %190 = and i32 %83, 7
  %191 = load i64, ptr %189, align 1, !tbaa !27
  br label %210

192:                                              ; preds = %183
  %193 = icmp eq i64 %77, 0
  br i1 %193, label %210, label %194

194:                                              ; preds = %192
  %195 = lshr i32 %83, 3
  %196 = zext nneg i32 %195 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, ptr %78, i64 %197
  %199 = icmp ult ptr %198, %2
  %200 = trunc i64 %77 to i32
  %201 = select i1 %199, i32 %200, i32 %195
  %202 = zext i32 %201 to i64
  %203 = sub nsw i64 0, %202
  %204 = getelementptr inbounds i8, ptr %78, i64 %203
  %205 = shl i32 %201, 3
  %206 = sub i32 %83, %205
  %207 = load i64, ptr %204, align 1, !tbaa !27
  br label %210

208:                                              ; preds = %126
  %209 = getelementptr inbounds i8, ptr %2, i64 %131
  br label %210

210:                                              ; preds = %137, %113, %208, %194, %192, %185, %87
  %211 = phi i32 [ %206, %194 ], [ %190, %185 ], [ %83, %192 ], [ %93, %87 ], [ %127, %208 ], [ %180, %137 ], [ %107, %113 ]
  %212 = phi i64 [ %207, %194 ], [ %191, %185 ], [ %79, %192 ], [ %71, %87 ], [ %133, %208 ], [ %133, %137 ], [ %106, %113 ]
  %213 = phi ptr [ %204, %194 ], [ %189, %185 ], [ %78, %192 ], [ %2, %87 ], [ %209, %208 ], [ @BIT_reloadDStream.zeroFilled, %137 ], [ %108, %113 ]
  %214 = phi ptr [ %0, %194 ], [ %0, %185 ], [ %0, %192 ], [ %0, %87 ], [ %104, %208 ], [ %181, %137 ], [ %104, %113 ]
  %215 = freeze i32 %211
  %216 = icmp ult ptr %214, %14
  br i1 %216, label %217, label %273

217:                                              ; preds = %210
  %218 = ptrtoint ptr %214 to i64
  %219 = sub nsw i32 0, %17
  %220 = and i32 %219, 63
  %221 = zext nneg i32 %220 to i64
  %222 = add i64 %13, %7
  %223 = sub i64 %222, %218
  %224 = add i64 %218, 1
  %225 = and i64 %223, 1
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %240, label %227

227:                                              ; preds = %217
  %228 = and i32 %215, 63
  %229 = zext nneg i32 %228 to i64
  %230 = shl i64 %212, %229
  %231 = lshr i64 %230, %221
  %232 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %231
  %233 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %231, i32 1
  %234 = load i8, ptr %233, align 1, !tbaa !94
  %235 = load i8, ptr %232, align 1, !tbaa !96
  %236 = freeze i8 %235
  %237 = zext i8 %236 to i32
  %238 = add i32 %215, %237
  %239 = getelementptr inbounds i8, ptr %214, i64 1
  store i8 %234, ptr %214, align 1, !tbaa !9
  br label %240

240:                                              ; preds = %227, %217
  %241 = phi i32 [ %215, %217 ], [ %238, %227 ]
  %242 = phi ptr [ %214, %217 ], [ %239, %227 ]
  %243 = phi i32 [ undef, %217 ], [ %238, %227 ]
  %244 = icmp eq i64 %222, %224
  br i1 %244, label %273, label %245

245:                                              ; preds = %240, %245
  %246 = phi i32 [ %270, %245 ], [ %241, %240 ]
  %247 = phi ptr [ %271, %245 ], [ %242, %240 ]
  %248 = and i32 %246, 63
  %249 = zext nneg i32 %248 to i64
  %250 = shl i64 %212, %249
  %251 = lshr i64 %250, %221
  %252 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %251
  %253 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %251, i32 1
  %254 = load i8, ptr %253, align 1, !tbaa !94
  %255 = load i8, ptr %252, align 1, !tbaa !96
  %256 = freeze i8 %255
  %257 = zext i8 %256 to i32
  %258 = add i32 %246, %257
  %259 = getelementptr inbounds i8, ptr %247, i64 1
  store i8 %254, ptr %247, align 1, !tbaa !9
  %260 = and i32 %258, 63
  %261 = zext nneg i32 %260 to i64
  %262 = shl i64 %212, %261
  %263 = lshr i64 %262, %221
  %264 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %263
  %265 = getelementptr inbounds %struct.HUF_DEltX1, ptr %15, i64 %263, i32 1
  %266 = load i8, ptr %265, align 1, !tbaa !94
  %267 = load i8, ptr %264, align 1, !tbaa !96
  %268 = freeze i8 %267
  %269 = zext i8 %268 to i32
  %270 = add i32 %258, %269
  %271 = getelementptr inbounds i8, ptr %247, i64 2
  store i8 %266, ptr %259, align 1, !tbaa !9
  %272 = icmp ult ptr %271, %14
  br i1 %272, label %245, label %273, !llvm.loop !98

273:                                              ; preds = %240, %245, %210
  %274 = phi i32 [ %215, %210 ], [ %243, %240 ], [ %270, %245 ]
  %275 = icmp eq ptr %213, %2
  %276 = icmp eq i32 %274, 64
  %277 = and i1 %275, %276
  %278 = select i1 %277, i64 %1, i64 -20
  br label %279

279:                                              ; preds = %273, %76, %70, %21, %12, %10
  %280 = phi i64 [ %11, %10 ], [ %3, %76 ], [ -20, %70 ], [ -1, %21 ], [ -72, %12 ], [ %278, %273 ]
  ret i64 %280
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress4X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.BIT_DStream_t, align 8
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = and i32 %5, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %2180, label %2186

13:                                               ; preds = %6
  %14 = icmp ult i64 %3, 10
  %15 = icmp ult i64 %1, 6
  %16 = or i1 %15, %14
  br i1 %16, label %2188, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -7
  %20 = getelementptr inbounds i32, ptr %4, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  %21 = load i16, ptr %2, align 1, !tbaa !53
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds i8, ptr %2, i64 2
  %24 = load i16, ptr %23, align 1, !tbaa !53
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds i8, ptr %2, i64 4
  %27 = load i16, ptr %26, align 1, !tbaa !53
  %28 = zext i16 %27 to i64
  %29 = add nuw nsw i64 %22, 6
  %30 = add nuw nsw i64 %29, %25
  %31 = add nuw nsw i64 %30, %28
  %32 = sub i64 %3, %31
  %33 = getelementptr inbounds i8, ptr %2, i64 6
  %34 = getelementptr i8, ptr %33, i64 %22
  %35 = getelementptr i8, ptr %34, i64 %25
  %36 = getelementptr i8, ptr %35, i64 %28
  %37 = add i64 %1, 3
  %38 = lshr i64 %37, 2
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  %41 = getelementptr inbounds i8, ptr %40, i64 %38
  %42 = load i32, ptr %4, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp ugt i64 %31, %3
  %46 = icmp ugt ptr %41, %18
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %2178, label %48

48:                                               ; preds = %17
  %49 = icmp eq i16 %21, 0
  br i1 %49, label %2178, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, ptr %2, i64 14
  %52 = icmp ugt i16 %21, 7
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %34, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %2178, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %34, i64 -8
  %59 = load i64, ptr %58, align 1, !tbaa !27
  %60 = zext i8 %55 to i32
  %61 = tail call i32 @llvm.ctlz.i32(i32 %60, i1 true), !range !81
  %62 = xor i32 %61, 31
  %63 = sub nuw nsw i32 8, %62
  br label %120

64:                                               ; preds = %50
  %65 = load i8, ptr %33, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  switch i16 %21, label %108 [
    i16 7, label %67
    i16 6, label %73
    i16 5, label %80
    i16 4, label %87
    i16 3, label %94
    i16 2, label %101
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %2, i64 12
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 48
  %72 = or disjoint i64 %71, %66
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i64 [ %66, %64 ], [ %72, %67 ]
  %75 = getelementptr inbounds i8, ptr %2, i64 11
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 40
  %79 = add nuw nsw i64 %78, %74
  br label %80

80:                                               ; preds = %73, %64
  %81 = phi i64 [ %66, %64 ], [ %79, %73 ]
  %82 = getelementptr inbounds i8, ptr %2, i64 10
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 32
  %86 = add nuw nsw i64 %85, %81
  br label %87

87:                                               ; preds = %80, %64
  %88 = phi i64 [ %66, %64 ], [ %86, %80 ]
  %89 = getelementptr inbounds i8, ptr %2, i64 9
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 24
  %93 = add nuw nsw i64 %92, %88
  br label %94

94:                                               ; preds = %87, %64
  %95 = phi i64 [ %66, %64 ], [ %93, %87 ]
  %96 = getelementptr inbounds i8, ptr %2, i64 8
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = add nuw nsw i64 %99, %95
  br label %101

101:                                              ; preds = %94, %64
  %102 = phi i64 [ %66, %64 ], [ %100, %94 ]
  %103 = getelementptr inbounds i8, ptr %2, i64 7
  %104 = load i8, ptr %103, align 1, !tbaa !9
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 8
  %107 = add nuw nsw i64 %106, %102
  br label %108

108:                                              ; preds = %101, %64
  %109 = phi i64 [ %66, %64 ], [ %107, %101 ]
  %110 = getelementptr i8, ptr %34, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %2178, label %113

113:                                              ; preds = %108
  %114 = zext i8 %111 to i32
  %115 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 true), !range !81
  %116 = shl nuw nsw i16 %21, 3
  %117 = zext nneg i16 %116 to i32
  %118 = sub nsw i32 %115, %117
  %119 = add nsw i32 %118, 41
  br label %120

120:                                              ; preds = %113, %57
  %121 = phi ptr [ %58, %57 ], [ %33, %113 ]
  %122 = phi i32 [ %63, %57 ], [ %119, %113 ]
  %123 = phi i64 [ %59, %57 ], [ %109, %113 ]
  %124 = icmp eq i16 %24, 0
  br i1 %124, label %2178, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %34, i64 8
  %127 = icmp ugt i16 %24, 7
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %35, i64 -1
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %2178, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %35, i64 -8
  %134 = load i64, ptr %133, align 1, !tbaa !27
  %135 = zext i8 %130 to i32
  %136 = tail call i32 @llvm.ctlz.i32(i32 %135, i1 true), !range !81
  %137 = xor i32 %136, 31
  %138 = sub nuw nsw i32 8, %137
  br label %195

139:                                              ; preds = %125
  %140 = load i8, ptr %34, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  switch i16 %24, label %183 [
    i16 7, label %142
    i16 6, label %148
    i16 5, label %155
    i16 4, label %162
    i16 3, label %169
    i16 2, label %176
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, ptr %34, i64 6
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 48
  %147 = or disjoint i64 %146, %141
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi i64 [ %141, %139 ], [ %147, %142 ]
  %150 = getelementptr inbounds i8, ptr %34, i64 5
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 40
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %139
  %156 = phi i64 [ %141, %139 ], [ %154, %148 ]
  %157 = getelementptr inbounds i8, ptr %34, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 32
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %139
  %163 = phi i64 [ %141, %139 ], [ %161, %155 ]
  %164 = getelementptr inbounds i8, ptr %34, i64 3
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %139
  %170 = phi i64 [ %141, %139 ], [ %168, %162 ]
  %171 = getelementptr inbounds i8, ptr %34, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 16
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %139
  %177 = phi i64 [ %141, %139 ], [ %175, %169 ]
  %178 = getelementptr inbounds i8, ptr %34, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 8
  %182 = add nuw nsw i64 %181, %177
  br label %183

183:                                              ; preds = %176, %139
  %184 = phi i64 [ %141, %139 ], [ %182, %176 ]
  %185 = getelementptr i8, ptr %35, i64 -1
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %2178, label %188

188:                                              ; preds = %183
  %189 = zext i8 %186 to i32
  %190 = tail call i32 @llvm.ctlz.i32(i32 %189, i1 true), !range !81
  %191 = shl nuw nsw i16 %24, 3
  %192 = zext nneg i16 %191 to i32
  %193 = sub nsw i32 %190, %192
  %194 = add nsw i32 %193, 41
  br label %195

195:                                              ; preds = %188, %132
  %196 = phi i64 [ %134, %132 ], [ %184, %188 ]
  %197 = phi i32 [ %138, %132 ], [ %194, %188 ]
  %198 = phi ptr [ %133, %132 ], [ %34, %188 ]
  %199 = icmp eq i16 %27, 0
  br i1 %199, label %2178, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, ptr %35, i64 8
  %202 = icmp ugt i16 %27, 7
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = getelementptr i8, ptr %36, i64 -1
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %2178, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds i8, ptr %36, i64 -8
  %209 = load i64, ptr %208, align 1, !tbaa !27
  %210 = zext i8 %205 to i32
  %211 = tail call i32 @llvm.ctlz.i32(i32 %210, i1 true), !range !81
  %212 = xor i32 %211, 31
  %213 = sub nuw nsw i32 8, %212
  br label %270

214:                                              ; preds = %200
  %215 = load i8, ptr %35, align 1, !tbaa !9
  %216 = zext i8 %215 to i64
  switch i16 %27, label %258 [
    i16 7, label %217
    i16 6, label %223
    i16 5, label %230
    i16 4, label %237
    i16 3, label %244
    i16 2, label %251
  ]

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %35, i64 6
  %219 = load i8, ptr %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 48
  %222 = or disjoint i64 %221, %216
  br label %223

223:                                              ; preds = %217, %214
  %224 = phi i64 [ %216, %214 ], [ %222, %217 ]
  %225 = getelementptr inbounds i8, ptr %35, i64 5
  %226 = load i8, ptr %225, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 40
  %229 = add nuw nsw i64 %228, %224
  br label %230

230:                                              ; preds = %223, %214
  %231 = phi i64 [ %216, %214 ], [ %229, %223 ]
  %232 = getelementptr inbounds i8, ptr %35, i64 4
  %233 = load i8, ptr %232, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 32
  %236 = add nuw nsw i64 %235, %231
  br label %237

237:                                              ; preds = %230, %214
  %238 = phi i64 [ %216, %214 ], [ %236, %230 ]
  %239 = getelementptr inbounds i8, ptr %35, i64 3
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = shl nuw nsw i64 %241, 24
  %243 = add nuw nsw i64 %242, %238
  br label %244

244:                                              ; preds = %237, %214
  %245 = phi i64 [ %216, %214 ], [ %243, %237 ]
  %246 = getelementptr inbounds i8, ptr %35, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 16
  %250 = add nuw nsw i64 %249, %245
  br label %251

251:                                              ; preds = %244, %214
  %252 = phi i64 [ %216, %214 ], [ %250, %244 ]
  %253 = getelementptr inbounds i8, ptr %35, i64 1
  %254 = load i8, ptr %253, align 1, !tbaa !9
  %255 = zext i8 %254 to i64
  %256 = shl nuw nsw i64 %255, 8
  %257 = add nuw nsw i64 %256, %252
  br label %258

258:                                              ; preds = %251, %214
  %259 = phi i64 [ %216, %214 ], [ %257, %251 ]
  %260 = getelementptr i8, ptr %36, i64 -1
  %261 = load i8, ptr %260, align 1, !tbaa !9
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %2178, label %263

263:                                              ; preds = %258
  %264 = zext i8 %261 to i32
  %265 = tail call i32 @llvm.ctlz.i32(i32 %264, i1 true), !range !81
  %266 = shl nuw nsw i16 %27, 3
  %267 = zext nneg i16 %266 to i32
  %268 = sub nsw i32 %265, %267
  %269 = add nsw i32 %268, 41
  br label %270

270:                                              ; preds = %263, %207
  %271 = phi i64 [ %209, %207 ], [ %259, %263 ]
  %272 = phi i32 [ %213, %207 ], [ %269, %263 ]
  %273 = phi ptr [ %208, %207 ], [ %35, %263 ]
  %274 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %7, ptr noundef nonnull %36, i64 noundef %32), !range !99
  %275 = icmp ult i64 %274, -119
  br i1 %275, label %276, label %2178

276:                                              ; preds = %270
  %277 = ptrtoint ptr %18 to i64
  %278 = ptrtoint ptr %41 to i64
  %279 = sub i64 %277, %278
  %280 = icmp ugt i64 %279, 7
  %281 = icmp ult ptr %41, %19
  %282 = select i1 %280, i1 %281, i1 false
  br i1 %282, label %283, label %585

283:                                              ; preds = %276
  %284 = load i64, ptr %7, align 8, !tbaa !100
  %285 = sub nsw i32 0, %43
  %286 = and i32 %285, 63
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %289 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %290 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !103
  %292 = load i32, ptr %288, align 8, !tbaa !104
  %293 = load ptr, ptr %289, align 8, !tbaa !105
  br label %294

294:                                              ; preds = %572, %283
  %295 = phi ptr [ %293, %283 ], [ %576, %572 ]
  %296 = phi i32 [ %292, %283 ], [ %577, %572 ]
  %297 = phi ptr [ %0, %283 ], [ %366, %572 ]
  %298 = phi ptr [ %39, %283 ], [ %422, %572 ]
  %299 = phi ptr [ %40, %283 ], [ %502, %572 ]
  %300 = phi ptr [ %41, %283 ], [ %558, %572 ]
  %301 = phi ptr [ %273, %283 ], [ %570, %572 ]
  %302 = phi i64 [ %123, %283 ], [ %434, %572 ]
  %303 = phi i32 [ %272, %283 ], [ %569, %572 ]
  %304 = phi i64 [ %271, %283 ], [ %568, %572 ]
  %305 = phi ptr [ %198, %283 ], [ %446, %572 ]
  %306 = phi i32 [ %122, %283 ], [ %433, %572 ]
  %307 = phi i32 [ %197, %283 ], [ %445, %572 ]
  %308 = phi i64 [ %196, %283 ], [ %444, %572 ]
  %309 = phi ptr [ %121, %283 ], [ %432, %572 ]
  %310 = phi i64 [ %284, %283 ], [ %578, %572 ]
  %311 = and i32 %306, 63
  %312 = zext nneg i32 %311 to i64
  %313 = shl i64 %302, %312
  %314 = lshr i64 %313, %287
  %315 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %314
  %316 = load i16, ptr %315, align 2
  store i16 %316, ptr %297, align 1
  %317 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %314, i32 1
  %318 = load i8, ptr %317, align 2, !tbaa !82
  %319 = zext i8 %318 to i32
  %320 = add i32 %306, %319
  %321 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %314, i32 2
  %322 = load i8, ptr %321, align 1, !tbaa !84
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds i8, ptr %297, i64 %323
  %325 = and i32 %320, 63
  %326 = zext nneg i32 %325 to i64
  %327 = shl i64 %302, %326
  %328 = lshr i64 %327, %287
  %329 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %328
  %330 = load i16, ptr %329, align 2
  store i16 %330, ptr %324, align 1
  %331 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %328, i32 1
  %332 = load i8, ptr %331, align 2, !tbaa !82
  %333 = zext i8 %332 to i32
  %334 = add i32 %320, %333
  %335 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %328, i32 2
  %336 = load i8, ptr %335, align 1, !tbaa !84
  %337 = zext i8 %336 to i64
  %338 = getelementptr inbounds i8, ptr %324, i64 %337
  %339 = and i32 %334, 63
  %340 = zext nneg i32 %339 to i64
  %341 = shl i64 %302, %340
  %342 = lshr i64 %341, %287
  %343 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %342
  %344 = load i16, ptr %343, align 2
  store i16 %344, ptr %338, align 1
  %345 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %342, i32 1
  %346 = load i8, ptr %345, align 2, !tbaa !82
  %347 = zext i8 %346 to i32
  %348 = add i32 %334, %347
  %349 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %342, i32 2
  %350 = load i8, ptr %349, align 1, !tbaa !84
  %351 = zext i8 %350 to i64
  %352 = getelementptr inbounds i8, ptr %338, i64 %351
  %353 = and i32 %348, 63
  %354 = zext nneg i32 %353 to i64
  %355 = shl i64 %302, %354
  %356 = lshr i64 %355, %287
  %357 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %356
  %358 = load i16, ptr %357, align 2
  store i16 %358, ptr %352, align 1
  %359 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %356, i32 1
  %360 = load i8, ptr %359, align 2, !tbaa !82
  %361 = zext i8 %360 to i32
  %362 = add i32 %348, %361
  %363 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %356, i32 2
  %364 = load i8, ptr %363, align 1, !tbaa !84
  %365 = zext i8 %364 to i64
  %366 = getelementptr inbounds i8, ptr %352, i64 %365
  %367 = and i32 %307, 63
  %368 = zext nneg i32 %367 to i64
  %369 = shl i64 %308, %368
  %370 = lshr i64 %369, %287
  %371 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %370
  %372 = load i16, ptr %371, align 2
  store i16 %372, ptr %298, align 1
  %373 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %370, i32 1
  %374 = load i8, ptr %373, align 2, !tbaa !82
  %375 = zext i8 %374 to i32
  %376 = add i32 %307, %375
  %377 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %370, i32 2
  %378 = load i8, ptr %377, align 1, !tbaa !84
  %379 = zext i8 %378 to i64
  %380 = getelementptr inbounds i8, ptr %298, i64 %379
  %381 = and i32 %376, 63
  %382 = zext nneg i32 %381 to i64
  %383 = shl i64 %308, %382
  %384 = lshr i64 %383, %287
  %385 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %384
  %386 = load i16, ptr %385, align 2
  store i16 %386, ptr %380, align 1
  %387 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %384, i32 1
  %388 = load i8, ptr %387, align 2, !tbaa !82
  %389 = zext i8 %388 to i32
  %390 = add i32 %376, %389
  %391 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %384, i32 2
  %392 = load i8, ptr %391, align 1, !tbaa !84
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds i8, ptr %380, i64 %393
  %395 = and i32 %390, 63
  %396 = zext nneg i32 %395 to i64
  %397 = shl i64 %308, %396
  %398 = lshr i64 %397, %287
  %399 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %398
  %400 = load i16, ptr %399, align 2
  store i16 %400, ptr %394, align 1
  %401 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %398, i32 1
  %402 = load i8, ptr %401, align 2, !tbaa !82
  %403 = zext i8 %402 to i32
  %404 = add i32 %390, %403
  %405 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %398, i32 2
  %406 = load i8, ptr %405, align 1, !tbaa !84
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds i8, ptr %394, i64 %407
  %409 = and i32 %404, 63
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %308, %410
  %412 = lshr i64 %411, %287
  %413 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %412
  %414 = load i16, ptr %413, align 2
  store i16 %414, ptr %408, align 1
  %415 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %412, i32 1
  %416 = load i8, ptr %415, align 2, !tbaa !82
  %417 = zext i8 %416 to i32
  %418 = add i32 %404, %417
  %419 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %412, i32 2
  %420 = load i8, ptr %419, align 1, !tbaa !84
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds i8, ptr %408, i64 %421
  %423 = icmp uge ptr %309, %51
  br i1 %423, label %424, label %431, !prof !106

424:                                              ; preds = %294
  %425 = lshr i32 %362, 3
  %426 = zext nneg i32 %425 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %309, i64 %427
  %429 = and i32 %362, 7
  %430 = load i64, ptr %428, align 1, !tbaa !27
  br label %431

431:                                              ; preds = %424, %294
  %432 = phi ptr [ %309, %294 ], [ %428, %424 ]
  %433 = phi i32 [ %362, %294 ], [ %429, %424 ]
  %434 = phi i64 [ %302, %294 ], [ %430, %424 ]
  %435 = icmp uge ptr %305, %126
  br i1 %435, label %436, label %443, !prof !106

436:                                              ; preds = %431
  %437 = lshr i32 %418, 3
  %438 = zext nneg i32 %437 to i64
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, ptr %305, i64 %439
  %441 = and i32 %418, 7
  %442 = load i64, ptr %440, align 1, !tbaa !27
  br label %443

443:                                              ; preds = %436, %431
  %444 = phi i64 [ %308, %431 ], [ %442, %436 ]
  %445 = phi i32 [ %418, %431 ], [ %441, %436 ]
  %446 = phi ptr [ %305, %431 ], [ %440, %436 ]
  %447 = and i32 %303, 63
  %448 = zext nneg i32 %447 to i64
  %449 = shl i64 %304, %448
  %450 = lshr i64 %449, %287
  %451 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %450
  %452 = load i16, ptr %451, align 2
  store i16 %452, ptr %299, align 1
  %453 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %450, i32 1
  %454 = load i8, ptr %453, align 2, !tbaa !82
  %455 = zext i8 %454 to i32
  %456 = add i32 %303, %455
  %457 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %450, i32 2
  %458 = load i8, ptr %457, align 1, !tbaa !84
  %459 = zext i8 %458 to i64
  %460 = getelementptr inbounds i8, ptr %299, i64 %459
  %461 = and i32 %456, 63
  %462 = zext nneg i32 %461 to i64
  %463 = shl i64 %304, %462
  %464 = lshr i64 %463, %287
  %465 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %464
  %466 = load i16, ptr %465, align 2
  store i16 %466, ptr %460, align 1
  %467 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %464, i32 1
  %468 = load i8, ptr %467, align 2, !tbaa !82
  %469 = zext i8 %468 to i32
  %470 = add i32 %456, %469
  %471 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %464, i32 2
  %472 = load i8, ptr %471, align 1, !tbaa !84
  %473 = zext i8 %472 to i64
  %474 = getelementptr inbounds i8, ptr %460, i64 %473
  %475 = and i32 %470, 63
  %476 = zext nneg i32 %475 to i64
  %477 = shl i64 %304, %476
  %478 = lshr i64 %477, %287
  %479 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %478
  %480 = load i16, ptr %479, align 2
  store i16 %480, ptr %474, align 1
  %481 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %478, i32 1
  %482 = load i8, ptr %481, align 2, !tbaa !82
  %483 = zext i8 %482 to i32
  %484 = add i32 %470, %483
  %485 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %478, i32 2
  %486 = load i8, ptr %485, align 1, !tbaa !84
  %487 = zext i8 %486 to i64
  %488 = getelementptr inbounds i8, ptr %474, i64 %487
  %489 = and i32 %484, 63
  %490 = zext nneg i32 %489 to i64
  %491 = shl i64 %304, %490
  %492 = lshr i64 %491, %287
  %493 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %492
  %494 = load i16, ptr %493, align 2
  store i16 %494, ptr %488, align 1
  %495 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %492, i32 1
  %496 = load i8, ptr %495, align 2, !tbaa !82
  %497 = zext i8 %496 to i32
  %498 = add i32 %484, %497
  %499 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %492, i32 2
  %500 = load i8, ptr %499, align 1, !tbaa !84
  %501 = zext i8 %500 to i64
  %502 = getelementptr inbounds i8, ptr %488, i64 %501
  %503 = and i32 %296, 63
  %504 = zext nneg i32 %503 to i64
  %505 = shl i64 %310, %504
  %506 = lshr i64 %505, %287
  %507 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %506
  %508 = load i16, ptr %507, align 2
  store i16 %508, ptr %300, align 1
  %509 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %506, i32 1
  %510 = load i8, ptr %509, align 2, !tbaa !82
  %511 = zext i8 %510 to i32
  %512 = add i32 %296, %511
  %513 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %506, i32 2
  %514 = load i8, ptr %513, align 1, !tbaa !84
  %515 = zext i8 %514 to i64
  %516 = getelementptr inbounds i8, ptr %300, i64 %515
  %517 = and i32 %512, 63
  %518 = zext nneg i32 %517 to i64
  %519 = shl i64 %310, %518
  %520 = lshr i64 %519, %287
  %521 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %520
  %522 = load i16, ptr %521, align 2
  store i16 %522, ptr %516, align 1
  %523 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %520, i32 1
  %524 = load i8, ptr %523, align 2, !tbaa !82
  %525 = zext i8 %524 to i32
  %526 = add i32 %512, %525
  %527 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %520, i32 2
  %528 = load i8, ptr %527, align 1, !tbaa !84
  %529 = zext i8 %528 to i64
  %530 = getelementptr inbounds i8, ptr %516, i64 %529
  %531 = and i32 %526, 63
  %532 = zext nneg i32 %531 to i64
  %533 = shl i64 %310, %532
  %534 = lshr i64 %533, %287
  %535 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %534
  %536 = load i16, ptr %535, align 2
  store i16 %536, ptr %530, align 1
  %537 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %534, i32 1
  %538 = load i8, ptr %537, align 2, !tbaa !82
  %539 = zext i8 %538 to i32
  %540 = add i32 %526, %539
  %541 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %534, i32 2
  %542 = load i8, ptr %541, align 1, !tbaa !84
  %543 = zext i8 %542 to i64
  %544 = getelementptr inbounds i8, ptr %530, i64 %543
  %545 = and i32 %540, 63
  %546 = zext nneg i32 %545 to i64
  %547 = shl i64 %310, %546
  %548 = lshr i64 %547, %287
  %549 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %548
  %550 = load i16, ptr %549, align 2
  store i16 %550, ptr %544, align 1
  %551 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %548, i32 1
  %552 = load i8, ptr %551, align 2, !tbaa !82
  %553 = zext i8 %552 to i32
  %554 = add i32 %540, %553
  %555 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %548, i32 2
  %556 = load i8, ptr %555, align 1, !tbaa !84
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds i8, ptr %544, i64 %557
  %559 = icmp uge ptr %301, %201
  br i1 %559, label %560, label %567, !prof !106

560:                                              ; preds = %443
  %561 = lshr i32 %498, 3
  %562 = zext nneg i32 %561 to i64
  %563 = sub nsw i64 0, %562
  %564 = getelementptr inbounds i8, ptr %301, i64 %563
  %565 = and i32 %498, 7
  %566 = load i64, ptr %564, align 1, !tbaa !27
  br label %567

567:                                              ; preds = %560, %443
  %568 = phi i64 [ %304, %443 ], [ %566, %560 ]
  %569 = phi i32 [ %498, %443 ], [ %565, %560 ]
  %570 = phi ptr [ %301, %443 ], [ %564, %560 ]
  %571 = icmp ult ptr %295, %291
  br i1 %571, label %583, label %572, !prof !107

572:                                              ; preds = %567
  %573 = lshr i32 %554, 3
  %574 = zext nneg i32 %573 to i64
  %575 = sub nsw i64 0, %574
  %576 = getelementptr inbounds i8, ptr %295, i64 %575
  store ptr %576, ptr %289, align 8, !tbaa !105
  %577 = and i32 %554, 7
  %578 = load i64, ptr %576, align 1, !tbaa !27
  store i64 %578, ptr %7, align 8, !tbaa !100
  %579 = icmp ult ptr %558, %19
  %580 = and i1 %559, %579
  %581 = and i1 %435, %580
  %582 = and i1 %423, %581
  br i1 %582, label %294, label %583, !llvm.loop !108

583:                                              ; preds = %567, %572
  %584 = phi i32 [ %577, %572 ], [ %554, %567 ]
  store i32 %584, ptr %288, align 8, !tbaa !104
  br label %585

585:                                              ; preds = %583, %276
  %586 = phi ptr [ %121, %276 ], [ %432, %583 ]
  %587 = phi i64 [ %196, %276 ], [ %444, %583 ]
  %588 = phi i32 [ %197, %276 ], [ %445, %583 ]
  %589 = phi i32 [ %122, %276 ], [ %433, %583 ]
  %590 = phi ptr [ %198, %276 ], [ %446, %583 ]
  %591 = phi i64 [ %271, %276 ], [ %568, %583 ]
  %592 = phi i32 [ %272, %276 ], [ %569, %583 ]
  %593 = phi i64 [ %123, %276 ], [ %434, %583 ]
  %594 = phi ptr [ %273, %276 ], [ %570, %583 ]
  %595 = phi ptr [ %41, %276 ], [ %558, %583 ]
  %596 = phi ptr [ %40, %276 ], [ %502, %583 ]
  %597 = phi ptr [ %39, %276 ], [ %422, %583 ]
  %598 = phi ptr [ %0, %276 ], [ %366, %583 ]
  %599 = icmp ugt ptr %598, %39
  %600 = icmp ugt ptr %597, %40
  %601 = select i1 %599, i1 true, i1 %600
  %602 = icmp ugt ptr %596, %41
  %603 = select i1 %601, i1 true, i1 %602
  br i1 %603, label %2178, label %604

604:                                              ; preds = %585
  %605 = ptrtoint ptr %39 to i64
  %606 = ptrtoint ptr %598 to i64
  %607 = sub i64 %605, %606
  %608 = icmp ugt i64 %607, 7
  br i1 %608, label %609, label %826

609:                                              ; preds = %604
  %610 = icmp ult i32 %44, 12
  %611 = icmp ugt i32 %589, 64
  br i1 %610, label %619, label %612

612:                                              ; preds = %609
  br i1 %611, label %855, label %613, !prof !88

613:                                              ; preds = %612
  %614 = ptrtoint ptr %33 to i64
  %615 = getelementptr inbounds i8, ptr %39, i64 -7
  %616 = sub nsw i32 0, %43
  %617 = and i32 %616, 63
  %618 = zext nneg i32 %617 to i64
  br label %733

619:                                              ; preds = %609
  br i1 %611, label %855, label %620, !prof !88

620:                                              ; preds = %619
  %621 = ptrtoint ptr %33 to i64
  %622 = getelementptr inbounds i8, ptr %39, i64 -9
  %623 = sub nsw i32 0, %43
  %624 = and i32 %623, 63
  %625 = zext nneg i32 %624 to i64
  br label %626

626:                                              ; preds = %661, %620
  %627 = phi ptr [ %598, %620 ], [ %731, %661 ]
  %628 = phi i64 [ %593, %620 ], [ %657, %661 ]
  %629 = phi i32 [ %589, %620 ], [ %727, %661 ]
  %630 = phi ptr [ %586, %620 ], [ %656, %661 ]
  %631 = icmp ult ptr %630, %51
  br i1 %631, label %635, label %632

632:                                              ; preds = %626
  %633 = lshr i32 %629, 3
  %634 = and i32 %629, 7
  br label %650

635:                                              ; preds = %626
  %636 = icmp eq ptr %630, %33
  br i1 %636, label %855, label %637

637:                                              ; preds = %635
  %638 = lshr i32 %629, 3
  %639 = zext nneg i32 %638 to i64
  %640 = sub nsw i64 0, %639
  %641 = getelementptr inbounds i8, ptr %630, i64 %640
  %642 = icmp ult ptr %641, %33
  %643 = ptrtoint ptr %630 to i64
  %644 = sub i64 %643, %621
  %645 = trunc i64 %644 to i32
  %646 = select i1 %642, i32 %645, i32 %638
  %647 = zext i1 %642 to i32
  %648 = shl i32 %646, 3
  %649 = sub i32 %629, %648
  br label %650

650:                                              ; preds = %637, %632
  %651 = phi i32 [ %646, %637 ], [ %633, %632 ]
  %652 = phi i32 [ %649, %637 ], [ %634, %632 ]
  %653 = phi i32 [ %647, %637 ], [ 0, %632 ]
  %654 = zext i32 %651 to i64
  %655 = sub nsw i64 0, %654
  %656 = getelementptr inbounds i8, ptr %630, i64 %655
  %657 = load i64, ptr %656, align 1, !tbaa !27
  %658 = icmp eq i32 %653, 0
  %659 = icmp ult ptr %627, %622
  %660 = and i1 %659, %658
  br i1 %660, label %661, label %855

661:                                              ; preds = %650
  %662 = and i32 %652, 63
  %663 = zext nneg i32 %662 to i64
  %664 = shl i64 %657, %663
  %665 = lshr i64 %664, %625
  %666 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %665
  %667 = load i16, ptr %666, align 2
  store i16 %667, ptr %627, align 1
  %668 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %665, i32 1
  %669 = load i8, ptr %668, align 2, !tbaa !82
  %670 = zext i8 %669 to i32
  %671 = add i32 %652, %670
  %672 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %665, i32 2
  %673 = load i8, ptr %672, align 1, !tbaa !84
  %674 = zext i8 %673 to i64
  %675 = getelementptr inbounds i8, ptr %627, i64 %674
  %676 = and i32 %671, 63
  %677 = zext nneg i32 %676 to i64
  %678 = shl i64 %657, %677
  %679 = lshr i64 %678, %625
  %680 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %679
  %681 = load i16, ptr %680, align 2
  store i16 %681, ptr %675, align 1
  %682 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %679, i32 1
  %683 = load i8, ptr %682, align 2, !tbaa !82
  %684 = zext i8 %683 to i32
  %685 = add i32 %671, %684
  %686 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %679, i32 2
  %687 = load i8, ptr %686, align 1, !tbaa !84
  %688 = zext i8 %687 to i64
  %689 = getelementptr inbounds i8, ptr %675, i64 %688
  %690 = and i32 %685, 63
  %691 = zext nneg i32 %690 to i64
  %692 = shl i64 %657, %691
  %693 = lshr i64 %692, %625
  %694 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %693
  %695 = load i16, ptr %694, align 2
  store i16 %695, ptr %689, align 1
  %696 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %693, i32 1
  %697 = load i8, ptr %696, align 2, !tbaa !82
  %698 = zext i8 %697 to i32
  %699 = add i32 %685, %698
  %700 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %693, i32 2
  %701 = load i8, ptr %700, align 1, !tbaa !84
  %702 = zext i8 %701 to i64
  %703 = getelementptr inbounds i8, ptr %689, i64 %702
  %704 = and i32 %699, 63
  %705 = zext nneg i32 %704 to i64
  %706 = shl i64 %657, %705
  %707 = lshr i64 %706, %625
  %708 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %707
  %709 = load i16, ptr %708, align 2
  store i16 %709, ptr %703, align 1
  %710 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %707, i32 1
  %711 = load i8, ptr %710, align 2, !tbaa !82
  %712 = zext i8 %711 to i32
  %713 = add i32 %699, %712
  %714 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %707, i32 2
  %715 = load i8, ptr %714, align 1, !tbaa !84
  %716 = zext i8 %715 to i64
  %717 = getelementptr inbounds i8, ptr %703, i64 %716
  %718 = and i32 %713, 63
  %719 = zext nneg i32 %718 to i64
  %720 = shl i64 %657, %719
  %721 = lshr i64 %720, %625
  %722 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %721
  %723 = load i16, ptr %722, align 2
  store i16 %723, ptr %717, align 1
  %724 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %721, i32 1
  %725 = load i8, ptr %724, align 2, !tbaa !82
  %726 = zext i8 %725 to i32
  %727 = add i32 %713, %726
  %728 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %721, i32 2
  %729 = load i8, ptr %728, align 1, !tbaa !84
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds i8, ptr %717, i64 %730
  %732 = icmp ugt i32 %727, 64
  br i1 %732, label %855, label %626, !prof !85, !llvm.loop !86

733:                                              ; preds = %768, %613
  %734 = phi ptr [ %598, %613 ], [ %824, %768 ]
  %735 = phi i64 [ %593, %613 ], [ %764, %768 ]
  %736 = phi i32 [ %589, %613 ], [ %820, %768 ]
  %737 = phi ptr [ %586, %613 ], [ %763, %768 ]
  %738 = icmp ult ptr %737, %51
  br i1 %738, label %742, label %739

739:                                              ; preds = %733
  %740 = lshr i32 %736, 3
  %741 = and i32 %736, 7
  br label %757

742:                                              ; preds = %733
  %743 = icmp eq ptr %737, %33
  br i1 %743, label %855, label %744

744:                                              ; preds = %742
  %745 = lshr i32 %736, 3
  %746 = zext nneg i32 %745 to i64
  %747 = sub nsw i64 0, %746
  %748 = getelementptr inbounds i8, ptr %737, i64 %747
  %749 = icmp ult ptr %748, %33
  %750 = ptrtoint ptr %737 to i64
  %751 = sub i64 %750, %614
  %752 = trunc i64 %751 to i32
  %753 = select i1 %749, i32 %752, i32 %745
  %754 = zext i1 %749 to i32
  %755 = shl i32 %753, 3
  %756 = sub i32 %736, %755
  br label %757

757:                                              ; preds = %744, %739
  %758 = phi i32 [ %753, %744 ], [ %740, %739 ]
  %759 = phi i32 [ %756, %744 ], [ %741, %739 ]
  %760 = phi i32 [ %754, %744 ], [ 0, %739 ]
  %761 = zext i32 %758 to i64
  %762 = sub nsw i64 0, %761
  %763 = getelementptr inbounds i8, ptr %737, i64 %762
  %764 = load i64, ptr %763, align 1, !tbaa !27
  %765 = icmp eq i32 %760, 0
  %766 = icmp ult ptr %734, %615
  %767 = and i1 %766, %765
  br i1 %767, label %768, label %855

768:                                              ; preds = %757
  %769 = and i32 %759, 63
  %770 = zext nneg i32 %769 to i64
  %771 = shl i64 %764, %770
  %772 = lshr i64 %771, %618
  %773 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %772
  %774 = load i16, ptr %773, align 2
  store i16 %774, ptr %734, align 1
  %775 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %772, i32 1
  %776 = load i8, ptr %775, align 2, !tbaa !82
  %777 = zext i8 %776 to i32
  %778 = add i32 %759, %777
  %779 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %772, i32 2
  %780 = load i8, ptr %779, align 1, !tbaa !84
  %781 = zext i8 %780 to i64
  %782 = getelementptr inbounds i8, ptr %734, i64 %781
  %783 = and i32 %778, 63
  %784 = zext nneg i32 %783 to i64
  %785 = shl i64 %764, %784
  %786 = lshr i64 %785, %618
  %787 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %786
  %788 = load i16, ptr %787, align 2
  store i16 %788, ptr %782, align 1
  %789 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %786, i32 1
  %790 = load i8, ptr %789, align 2, !tbaa !82
  %791 = zext i8 %790 to i32
  %792 = add i32 %778, %791
  %793 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %786, i32 2
  %794 = load i8, ptr %793, align 1, !tbaa !84
  %795 = zext i8 %794 to i64
  %796 = getelementptr inbounds i8, ptr %782, i64 %795
  %797 = and i32 %792, 63
  %798 = zext nneg i32 %797 to i64
  %799 = shl i64 %764, %798
  %800 = lshr i64 %799, %618
  %801 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %800
  %802 = load i16, ptr %801, align 2
  store i16 %802, ptr %796, align 1
  %803 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %800, i32 1
  %804 = load i8, ptr %803, align 2, !tbaa !82
  %805 = zext i8 %804 to i32
  %806 = add i32 %792, %805
  %807 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %800, i32 2
  %808 = load i8, ptr %807, align 1, !tbaa !84
  %809 = zext i8 %808 to i64
  %810 = getelementptr inbounds i8, ptr %796, i64 %809
  %811 = and i32 %806, 63
  %812 = zext nneg i32 %811 to i64
  %813 = shl i64 %764, %812
  %814 = lshr i64 %813, %618
  %815 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %814
  %816 = load i16, ptr %815, align 2
  store i16 %816, ptr %810, align 1
  %817 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %814, i32 1
  %818 = load i8, ptr %817, align 2, !tbaa !82
  %819 = zext i8 %818 to i32
  %820 = add i32 %806, %819
  %821 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %814, i32 2
  %822 = load i8, ptr %821, align 1, !tbaa !84
  %823 = zext i8 %822 to i64
  %824 = getelementptr inbounds i8, ptr %810, i64 %823
  %825 = icmp ugt i32 %820, 64
  br i1 %825, label %855, label %733, !prof !85, !llvm.loop !87

826:                                              ; preds = %604
  %827 = icmp ugt i32 %589, 64
  br i1 %827, label %855, label %828, !prof !107

828:                                              ; preds = %826
  %829 = icmp ult ptr %586, %51
  br i1 %829, label %833, label %830

830:                                              ; preds = %828
  %831 = lshr i32 %589, 3
  %832 = and i32 %589, 7
  br label %848

833:                                              ; preds = %828
  %834 = icmp eq ptr %586, %33
  br i1 %834, label %855, label %835

835:                                              ; preds = %833
  %836 = lshr i32 %589, 3
  %837 = zext nneg i32 %836 to i64
  %838 = sub nsw i64 0, %837
  %839 = getelementptr inbounds i8, ptr %586, i64 %838
  %840 = icmp ult ptr %839, %33
  %841 = ptrtoint ptr %586 to i64
  %842 = ptrtoint ptr %33 to i64
  %843 = sub i64 %841, %842
  %844 = trunc i64 %843 to i32
  %845 = select i1 %840, i32 %844, i32 %836
  %846 = shl i32 %845, 3
  %847 = sub i32 %589, %846
  br label %848

848:                                              ; preds = %835, %830
  %849 = phi i32 [ %831, %830 ], [ %845, %835 ]
  %850 = phi i32 [ %832, %830 ], [ %847, %835 ]
  %851 = zext i32 %849 to i64
  %852 = sub nsw i64 0, %851
  %853 = getelementptr inbounds i8, ptr %586, i64 %852
  %854 = load i64, ptr %853, align 1, !tbaa !27
  br label %855

855:                                              ; preds = %768, %757, %742, %661, %650, %635, %848, %833, %826, %619, %612
  %856 = phi ptr [ @BIT_reloadDStream.zeroFilled, %826 ], [ %33, %833 ], [ @BIT_reloadDStream.zeroFilled, %619 ], [ @BIT_reloadDStream.zeroFilled, %612 ], [ %853, %848 ], [ %33, %635 ], [ @BIT_reloadDStream.zeroFilled, %661 ], [ %656, %650 ], [ %33, %742 ], [ @BIT_reloadDStream.zeroFilled, %768 ], [ %763, %757 ]
  %857 = phi i32 [ %589, %826 ], [ %589, %833 ], [ %589, %619 ], [ %589, %612 ], [ %850, %848 ], [ %629, %635 ], [ %727, %661 ], [ %652, %650 ], [ %736, %742 ], [ %820, %768 ], [ %759, %757 ]
  %858 = phi i64 [ %593, %826 ], [ %593, %833 ], [ %593, %619 ], [ %593, %612 ], [ %854, %848 ], [ %628, %635 ], [ %657, %661 ], [ %657, %650 ], [ %735, %742 ], [ %764, %768 ], [ %764, %757 ]
  %859 = phi ptr [ %598, %826 ], [ %598, %833 ], [ %598, %619 ], [ %598, %612 ], [ %598, %848 ], [ %627, %635 ], [ %731, %661 ], [ %627, %650 ], [ %734, %742 ], [ %824, %768 ], [ %734, %757 ]
  %860 = ptrtoint ptr %859 to i64
  %861 = sub i64 %605, %860
  %862 = icmp ugt i64 %861, 1
  br i1 %862, label %863, label %945

863:                                              ; preds = %855
  %864 = getelementptr inbounds i8, ptr %39, i64 -2
  %865 = ptrtoint ptr %33 to i64
  %866 = sub nsw i32 0, %43
  %867 = and i32 %866, 63
  %868 = zext nneg i32 %867 to i64
  %869 = icmp ugt i32 %857, 64
  br i1 %869, label %905, label %870, !prof !88

870:                                              ; preds = %863, %911
  %871 = phi ptr [ %925, %911 ], [ %859, %863 ]
  %872 = phi i64 [ %901, %911 ], [ %858, %863 ]
  %873 = phi i32 [ %921, %911 ], [ %857, %863 ]
  %874 = phi ptr [ %900, %911 ], [ %856, %863 ]
  %875 = icmp ult ptr %874, %51
  br i1 %875, label %879, label %876

876:                                              ; preds = %870
  %877 = lshr i32 %873, 3
  %878 = and i32 %873, 7
  br label %894

879:                                              ; preds = %870
  %880 = icmp eq ptr %874, %33
  br i1 %880, label %905, label %881

881:                                              ; preds = %879
  %882 = lshr i32 %873, 3
  %883 = zext nneg i32 %882 to i64
  %884 = sub nsw i64 0, %883
  %885 = getelementptr inbounds i8, ptr %874, i64 %884
  %886 = icmp ult ptr %885, %33
  %887 = ptrtoint ptr %874 to i64
  %888 = sub i64 %887, %865
  %889 = trunc i64 %888 to i32
  %890 = select i1 %886, i32 %889, i32 %882
  %891 = zext i1 %886 to i32
  %892 = shl i32 %890, 3
  %893 = sub i32 %873, %892
  br label %894

894:                                              ; preds = %881, %876
  %895 = phi i32 [ %890, %881 ], [ %877, %876 ]
  %896 = phi i32 [ %893, %881 ], [ %878, %876 ]
  %897 = phi i32 [ %891, %881 ], [ 0, %876 ]
  %898 = zext i32 %895 to i64
  %899 = sub nsw i64 0, %898
  %900 = getelementptr inbounds i8, ptr %874, i64 %899
  %901 = load i64, ptr %900, align 1, !tbaa !27
  %902 = icmp eq i32 %897, 0
  %903 = icmp ule ptr %871, %864
  %904 = and i1 %903, %902
  br i1 %904, label %911, label %905

905:                                              ; preds = %911, %879, %894, %863
  %906 = phi ptr [ %859, %863 ], [ %871, %894 ], [ %871, %879 ], [ %925, %911 ]
  %907 = phi i64 [ %858, %863 ], [ %901, %894 ], [ %872, %879 ], [ %901, %911 ]
  %908 = phi i32 [ %857, %863 ], [ %896, %894 ], [ %873, %879 ], [ %921, %911 ]
  %909 = phi ptr [ @BIT_reloadDStream.zeroFilled, %863 ], [ %900, %894 ], [ %33, %879 ], [ @BIT_reloadDStream.zeroFilled, %911 ]
  %910 = icmp ugt ptr %906, %864
  br i1 %910, label %945, label %927

911:                                              ; preds = %894
  %912 = and i32 %896, 63
  %913 = zext nneg i32 %912 to i64
  %914 = shl i64 %901, %913
  %915 = lshr i64 %914, %868
  %916 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %915
  %917 = load i16, ptr %916, align 2
  store i16 %917, ptr %871, align 1
  %918 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %915, i32 1
  %919 = load i8, ptr %918, align 2, !tbaa !82
  %920 = zext i8 %919 to i32
  %921 = add i32 %896, %920
  %922 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %915, i32 2
  %923 = load i8, ptr %922, align 1, !tbaa !84
  %924 = zext i8 %923 to i64
  %925 = getelementptr inbounds i8, ptr %871, i64 %924
  %926 = icmp ugt i32 %921, 64
  br i1 %926, label %905, label %870, !prof !85, !llvm.loop !89

927:                                              ; preds = %905, %927
  %928 = phi ptr [ %943, %927 ], [ %906, %905 ]
  %929 = phi i32 [ %939, %927 ], [ %908, %905 ]
  %930 = and i32 %929, 63
  %931 = zext nneg i32 %930 to i64
  %932 = shl i64 %907, %931
  %933 = lshr i64 %932, %868
  %934 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %933
  %935 = load i16, ptr %934, align 2
  store i16 %935, ptr %928, align 1
  %936 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %933, i32 1
  %937 = load i8, ptr %936, align 2, !tbaa !82
  %938 = zext i8 %937 to i32
  %939 = add i32 %929, %938
  %940 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %933, i32 2
  %941 = load i8, ptr %940, align 1, !tbaa !84
  %942 = zext i8 %941 to i64
  %943 = getelementptr inbounds i8, ptr %928, i64 %942
  %944 = icmp ugt ptr %943, %864
  br i1 %944, label %945, label %927, !llvm.loop !90

945:                                              ; preds = %927, %905, %855
  %946 = phi ptr [ %856, %855 ], [ %909, %905 ], [ %909, %927 ]
  %947 = phi i32 [ %857, %855 ], [ %908, %905 ], [ %939, %927 ]
  %948 = phi i64 [ %858, %855 ], [ %907, %905 ], [ %907, %927 ]
  %949 = phi ptr [ %859, %855 ], [ %906, %905 ], [ %943, %927 ]
  %950 = icmp ult ptr %949, %39
  br i1 %950, label %951, label %977

951:                                              ; preds = %945
  %952 = and i32 %947, 63
  %953 = zext nneg i32 %952 to i64
  %954 = shl i64 %948, %953
  %955 = sub nsw i32 0, %43
  %956 = and i32 %955, 63
  %957 = zext nneg i32 %956 to i64
  %958 = lshr i64 %954, %957
  %959 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %958
  %960 = load i8, ptr %959, align 2
  store i8 %960, ptr %949, align 1
  %961 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %958, i32 2
  %962 = load i8, ptr %961, align 1, !tbaa !84
  %963 = icmp eq i8 %962, 1
  br i1 %963, label %964, label %969

964:                                              ; preds = %951
  %965 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %958, i32 1
  %966 = load i8, ptr %965, align 2, !tbaa !82
  %967 = zext i8 %966 to i32
  %968 = add i32 %947, %967
  br label %977

969:                                              ; preds = %951
  %970 = icmp ult i32 %947, 64
  br i1 %970, label %971, label %977

971:                                              ; preds = %969
  %972 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %958, i32 1
  %973 = load i8, ptr %972, align 2, !tbaa !82
  %974 = zext i8 %973 to i32
  %975 = add nuw nsw i32 %947, %974
  %976 = tail call i32 @llvm.umin.i32(i32 %975, i32 64)
  br label %977

977:                                              ; preds = %971, %969, %964, %945
  %978 = phi i32 [ %947, %945 ], [ %968, %964 ], [ %947, %969 ], [ %976, %971 ]
  %979 = ptrtoint ptr %40 to i64
  %980 = ptrtoint ptr %597 to i64
  %981 = sub i64 %979, %980
  %982 = icmp ugt i64 %981, 7
  br i1 %982, label %983, label %1200

983:                                              ; preds = %977
  %984 = icmp ult i32 %44, 12
  %985 = icmp ugt i32 %588, 64
  br i1 %984, label %993, label %986

986:                                              ; preds = %983
  br i1 %985, label %1229, label %987, !prof !88

987:                                              ; preds = %986
  %988 = ptrtoint ptr %34 to i64
  %989 = getelementptr inbounds i8, ptr %40, i64 -7
  %990 = sub nsw i32 0, %43
  %991 = and i32 %990, 63
  %992 = zext nneg i32 %991 to i64
  br label %1107

993:                                              ; preds = %983
  br i1 %985, label %1229, label %994, !prof !88

994:                                              ; preds = %993
  %995 = ptrtoint ptr %34 to i64
  %996 = getelementptr inbounds i8, ptr %40, i64 -9
  %997 = sub nsw i32 0, %43
  %998 = and i32 %997, 63
  %999 = zext nneg i32 %998 to i64
  br label %1000

1000:                                             ; preds = %1035, %994
  %1001 = phi ptr [ %597, %994 ], [ %1105, %1035 ]
  %1002 = phi ptr [ %590, %994 ], [ %1030, %1035 ]
  %1003 = phi i32 [ %588, %994 ], [ %1101, %1035 ]
  %1004 = phi i64 [ %587, %994 ], [ %1031, %1035 ]
  %1005 = icmp ult ptr %1002, %126
  br i1 %1005, label %1009, label %1006

1006:                                             ; preds = %1000
  %1007 = lshr i32 %1003, 3
  %1008 = and i32 %1003, 7
  br label %1024

1009:                                             ; preds = %1000
  %1010 = icmp eq ptr %1002, %34
  br i1 %1010, label %1229, label %1011

1011:                                             ; preds = %1009
  %1012 = lshr i32 %1003, 3
  %1013 = zext nneg i32 %1012 to i64
  %1014 = sub nsw i64 0, %1013
  %1015 = getelementptr inbounds i8, ptr %1002, i64 %1014
  %1016 = icmp ult ptr %1015, %34
  %1017 = ptrtoint ptr %1002 to i64
  %1018 = sub i64 %1017, %995
  %1019 = trunc i64 %1018 to i32
  %1020 = select i1 %1016, i32 %1019, i32 %1012
  %1021 = zext i1 %1016 to i32
  %1022 = shl i32 %1020, 3
  %1023 = sub i32 %1003, %1022
  br label %1024

1024:                                             ; preds = %1011, %1006
  %1025 = phi i32 [ %1023, %1011 ], [ %1008, %1006 ]
  %1026 = phi i32 [ %1020, %1011 ], [ %1007, %1006 ]
  %1027 = phi i32 [ %1021, %1011 ], [ 0, %1006 ]
  %1028 = zext i32 %1026 to i64
  %1029 = sub nsw i64 0, %1028
  %1030 = getelementptr inbounds i8, ptr %1002, i64 %1029
  %1031 = load i64, ptr %1030, align 1, !tbaa !27
  %1032 = icmp eq i32 %1027, 0
  %1033 = icmp ult ptr %1001, %996
  %1034 = and i1 %1033, %1032
  br i1 %1034, label %1035, label %1229

1035:                                             ; preds = %1024
  %1036 = and i32 %1025, 63
  %1037 = zext nneg i32 %1036 to i64
  %1038 = shl i64 %1031, %1037
  %1039 = lshr i64 %1038, %999
  %1040 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1039
  %1041 = load i16, ptr %1040, align 2
  store i16 %1041, ptr %1001, align 1
  %1042 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1039, i32 1
  %1043 = load i8, ptr %1042, align 2, !tbaa !82
  %1044 = zext i8 %1043 to i32
  %1045 = add i32 %1025, %1044
  %1046 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1039, i32 2
  %1047 = load i8, ptr %1046, align 1, !tbaa !84
  %1048 = zext i8 %1047 to i64
  %1049 = getelementptr inbounds i8, ptr %1001, i64 %1048
  %1050 = and i32 %1045, 63
  %1051 = zext nneg i32 %1050 to i64
  %1052 = shl i64 %1031, %1051
  %1053 = lshr i64 %1052, %999
  %1054 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1053
  %1055 = load i16, ptr %1054, align 2
  store i16 %1055, ptr %1049, align 1
  %1056 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1053, i32 1
  %1057 = load i8, ptr %1056, align 2, !tbaa !82
  %1058 = zext i8 %1057 to i32
  %1059 = add i32 %1045, %1058
  %1060 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1053, i32 2
  %1061 = load i8, ptr %1060, align 1, !tbaa !84
  %1062 = zext i8 %1061 to i64
  %1063 = getelementptr inbounds i8, ptr %1049, i64 %1062
  %1064 = and i32 %1059, 63
  %1065 = zext nneg i32 %1064 to i64
  %1066 = shl i64 %1031, %1065
  %1067 = lshr i64 %1066, %999
  %1068 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1067
  %1069 = load i16, ptr %1068, align 2
  store i16 %1069, ptr %1063, align 1
  %1070 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1067, i32 1
  %1071 = load i8, ptr %1070, align 2, !tbaa !82
  %1072 = zext i8 %1071 to i32
  %1073 = add i32 %1059, %1072
  %1074 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1067, i32 2
  %1075 = load i8, ptr %1074, align 1, !tbaa !84
  %1076 = zext i8 %1075 to i64
  %1077 = getelementptr inbounds i8, ptr %1063, i64 %1076
  %1078 = and i32 %1073, 63
  %1079 = zext nneg i32 %1078 to i64
  %1080 = shl i64 %1031, %1079
  %1081 = lshr i64 %1080, %999
  %1082 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1081
  %1083 = load i16, ptr %1082, align 2
  store i16 %1083, ptr %1077, align 1
  %1084 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1081, i32 1
  %1085 = load i8, ptr %1084, align 2, !tbaa !82
  %1086 = zext i8 %1085 to i32
  %1087 = add i32 %1073, %1086
  %1088 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1081, i32 2
  %1089 = load i8, ptr %1088, align 1, !tbaa !84
  %1090 = zext i8 %1089 to i64
  %1091 = getelementptr inbounds i8, ptr %1077, i64 %1090
  %1092 = and i32 %1087, 63
  %1093 = zext nneg i32 %1092 to i64
  %1094 = shl i64 %1031, %1093
  %1095 = lshr i64 %1094, %999
  %1096 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1095
  %1097 = load i16, ptr %1096, align 2
  store i16 %1097, ptr %1091, align 1
  %1098 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1095, i32 1
  %1099 = load i8, ptr %1098, align 2, !tbaa !82
  %1100 = zext i8 %1099 to i32
  %1101 = add i32 %1087, %1100
  %1102 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1095, i32 2
  %1103 = load i8, ptr %1102, align 1, !tbaa !84
  %1104 = zext i8 %1103 to i64
  %1105 = getelementptr inbounds i8, ptr %1091, i64 %1104
  %1106 = icmp ugt i32 %1101, 64
  br i1 %1106, label %1229, label %1000, !prof !85, !llvm.loop !86

1107:                                             ; preds = %1142, %987
  %1108 = phi ptr [ %597, %987 ], [ %1198, %1142 ]
  %1109 = phi ptr [ %590, %987 ], [ %1137, %1142 ]
  %1110 = phi i32 [ %588, %987 ], [ %1194, %1142 ]
  %1111 = phi i64 [ %587, %987 ], [ %1138, %1142 ]
  %1112 = icmp ult ptr %1109, %126
  br i1 %1112, label %1116, label %1113

1113:                                             ; preds = %1107
  %1114 = lshr i32 %1110, 3
  %1115 = and i32 %1110, 7
  br label %1131

1116:                                             ; preds = %1107
  %1117 = icmp eq ptr %1109, %34
  br i1 %1117, label %1229, label %1118

1118:                                             ; preds = %1116
  %1119 = lshr i32 %1110, 3
  %1120 = zext nneg i32 %1119 to i64
  %1121 = sub nsw i64 0, %1120
  %1122 = getelementptr inbounds i8, ptr %1109, i64 %1121
  %1123 = icmp ult ptr %1122, %34
  %1124 = ptrtoint ptr %1109 to i64
  %1125 = sub i64 %1124, %988
  %1126 = trunc i64 %1125 to i32
  %1127 = select i1 %1123, i32 %1126, i32 %1119
  %1128 = zext i1 %1123 to i32
  %1129 = shl i32 %1127, 3
  %1130 = sub i32 %1110, %1129
  br label %1131

1131:                                             ; preds = %1118, %1113
  %1132 = phi i32 [ %1130, %1118 ], [ %1115, %1113 ]
  %1133 = phi i32 [ %1127, %1118 ], [ %1114, %1113 ]
  %1134 = phi i32 [ %1128, %1118 ], [ 0, %1113 ]
  %1135 = zext i32 %1133 to i64
  %1136 = sub nsw i64 0, %1135
  %1137 = getelementptr inbounds i8, ptr %1109, i64 %1136
  %1138 = load i64, ptr %1137, align 1, !tbaa !27
  %1139 = icmp eq i32 %1134, 0
  %1140 = icmp ult ptr %1108, %989
  %1141 = and i1 %1140, %1139
  br i1 %1141, label %1142, label %1229

1142:                                             ; preds = %1131
  %1143 = and i32 %1132, 63
  %1144 = zext nneg i32 %1143 to i64
  %1145 = shl i64 %1138, %1144
  %1146 = lshr i64 %1145, %992
  %1147 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1146
  %1148 = load i16, ptr %1147, align 2
  store i16 %1148, ptr %1108, align 1
  %1149 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1146, i32 1
  %1150 = load i8, ptr %1149, align 2, !tbaa !82
  %1151 = zext i8 %1150 to i32
  %1152 = add i32 %1132, %1151
  %1153 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1146, i32 2
  %1154 = load i8, ptr %1153, align 1, !tbaa !84
  %1155 = zext i8 %1154 to i64
  %1156 = getelementptr inbounds i8, ptr %1108, i64 %1155
  %1157 = and i32 %1152, 63
  %1158 = zext nneg i32 %1157 to i64
  %1159 = shl i64 %1138, %1158
  %1160 = lshr i64 %1159, %992
  %1161 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1160
  %1162 = load i16, ptr %1161, align 2
  store i16 %1162, ptr %1156, align 1
  %1163 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1160, i32 1
  %1164 = load i8, ptr %1163, align 2, !tbaa !82
  %1165 = zext i8 %1164 to i32
  %1166 = add i32 %1152, %1165
  %1167 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1160, i32 2
  %1168 = load i8, ptr %1167, align 1, !tbaa !84
  %1169 = zext i8 %1168 to i64
  %1170 = getelementptr inbounds i8, ptr %1156, i64 %1169
  %1171 = and i32 %1166, 63
  %1172 = zext nneg i32 %1171 to i64
  %1173 = shl i64 %1138, %1172
  %1174 = lshr i64 %1173, %992
  %1175 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1174
  %1176 = load i16, ptr %1175, align 2
  store i16 %1176, ptr %1170, align 1
  %1177 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1174, i32 1
  %1178 = load i8, ptr %1177, align 2, !tbaa !82
  %1179 = zext i8 %1178 to i32
  %1180 = add i32 %1166, %1179
  %1181 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1174, i32 2
  %1182 = load i8, ptr %1181, align 1, !tbaa !84
  %1183 = zext i8 %1182 to i64
  %1184 = getelementptr inbounds i8, ptr %1170, i64 %1183
  %1185 = and i32 %1180, 63
  %1186 = zext nneg i32 %1185 to i64
  %1187 = shl i64 %1138, %1186
  %1188 = lshr i64 %1187, %992
  %1189 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1188
  %1190 = load i16, ptr %1189, align 2
  store i16 %1190, ptr %1184, align 1
  %1191 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1188, i32 1
  %1192 = load i8, ptr %1191, align 2, !tbaa !82
  %1193 = zext i8 %1192 to i32
  %1194 = add i32 %1180, %1193
  %1195 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1188, i32 2
  %1196 = load i8, ptr %1195, align 1, !tbaa !84
  %1197 = zext i8 %1196 to i64
  %1198 = getelementptr inbounds i8, ptr %1184, i64 %1197
  %1199 = icmp ugt i32 %1194, 64
  br i1 %1199, label %1229, label %1107, !prof !85, !llvm.loop !87

1200:                                             ; preds = %977
  %1201 = icmp ugt i32 %588, 64
  br i1 %1201, label %1229, label %1202, !prof !107

1202:                                             ; preds = %1200
  %1203 = icmp ult ptr %590, %126
  br i1 %1203, label %1207, label %1204

1204:                                             ; preds = %1202
  %1205 = lshr i32 %588, 3
  %1206 = and i32 %588, 7
  br label %1222

1207:                                             ; preds = %1202
  %1208 = icmp eq ptr %590, %34
  br i1 %1208, label %1229, label %1209

1209:                                             ; preds = %1207
  %1210 = lshr i32 %588, 3
  %1211 = zext nneg i32 %1210 to i64
  %1212 = sub nsw i64 0, %1211
  %1213 = getelementptr inbounds i8, ptr %590, i64 %1212
  %1214 = icmp ult ptr %1213, %34
  %1215 = ptrtoint ptr %590 to i64
  %1216 = ptrtoint ptr %34 to i64
  %1217 = sub i64 %1215, %1216
  %1218 = trunc i64 %1217 to i32
  %1219 = select i1 %1214, i32 %1218, i32 %1210
  %1220 = shl i32 %1219, 3
  %1221 = sub i32 %588, %1220
  br label %1222

1222:                                             ; preds = %1209, %1204
  %1223 = phi i32 [ %1205, %1204 ], [ %1219, %1209 ]
  %1224 = phi i32 [ %1206, %1204 ], [ %1221, %1209 ]
  %1225 = zext i32 %1223 to i64
  %1226 = sub nsw i64 0, %1225
  %1227 = getelementptr inbounds i8, ptr %590, i64 %1226
  %1228 = load i64, ptr %1227, align 1, !tbaa !27
  br label %1229

1229:                                             ; preds = %1142, %1131, %1116, %1035, %1024, %1009, %1222, %1207, %1200, %993, %986
  %1230 = phi i64 [ %587, %1200 ], [ %587, %1207 ], [ %587, %993 ], [ %587, %986 ], [ %1228, %1222 ], [ %1004, %1009 ], [ %1031, %1035 ], [ %1031, %1024 ], [ %1111, %1116 ], [ %1138, %1142 ], [ %1138, %1131 ]
  %1231 = phi i32 [ %588, %1200 ], [ %588, %1207 ], [ %588, %993 ], [ %588, %986 ], [ %1224, %1222 ], [ %1003, %1009 ], [ %1101, %1035 ], [ %1025, %1024 ], [ %1110, %1116 ], [ %1194, %1142 ], [ %1132, %1131 ]
  %1232 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1200 ], [ %34, %1207 ], [ @BIT_reloadDStream.zeroFilled, %993 ], [ @BIT_reloadDStream.zeroFilled, %986 ], [ %1227, %1222 ], [ %34, %1009 ], [ @BIT_reloadDStream.zeroFilled, %1035 ], [ %1030, %1024 ], [ %34, %1116 ], [ @BIT_reloadDStream.zeroFilled, %1142 ], [ %1137, %1131 ]
  %1233 = phi ptr [ %597, %1200 ], [ %597, %1207 ], [ %597, %993 ], [ %597, %986 ], [ %597, %1222 ], [ %1001, %1009 ], [ %1105, %1035 ], [ %1001, %1024 ], [ %1108, %1116 ], [ %1198, %1142 ], [ %1108, %1131 ]
  %1234 = ptrtoint ptr %1233 to i64
  %1235 = sub i64 %979, %1234
  %1236 = icmp ugt i64 %1235, 1
  br i1 %1236, label %1237, label %1319

1237:                                             ; preds = %1229
  %1238 = getelementptr inbounds i8, ptr %40, i64 -2
  %1239 = ptrtoint ptr %34 to i64
  %1240 = sub nsw i32 0, %43
  %1241 = and i32 %1240, 63
  %1242 = zext nneg i32 %1241 to i64
  %1243 = icmp ugt i32 %1231, 64
  br i1 %1243, label %1279, label %1244, !prof !88

1244:                                             ; preds = %1237, %1285
  %1245 = phi ptr [ %1299, %1285 ], [ %1233, %1237 ]
  %1246 = phi ptr [ %1274, %1285 ], [ %1232, %1237 ]
  %1247 = phi i32 [ %1295, %1285 ], [ %1231, %1237 ]
  %1248 = phi i64 [ %1275, %1285 ], [ %1230, %1237 ]
  %1249 = icmp ult ptr %1246, %126
  br i1 %1249, label %1253, label %1250

1250:                                             ; preds = %1244
  %1251 = lshr i32 %1247, 3
  %1252 = and i32 %1247, 7
  br label %1268

1253:                                             ; preds = %1244
  %1254 = icmp eq ptr %1246, %34
  br i1 %1254, label %1279, label %1255

1255:                                             ; preds = %1253
  %1256 = lshr i32 %1247, 3
  %1257 = zext nneg i32 %1256 to i64
  %1258 = sub nsw i64 0, %1257
  %1259 = getelementptr inbounds i8, ptr %1246, i64 %1258
  %1260 = icmp ult ptr %1259, %34
  %1261 = ptrtoint ptr %1246 to i64
  %1262 = sub i64 %1261, %1239
  %1263 = trunc i64 %1262 to i32
  %1264 = select i1 %1260, i32 %1263, i32 %1256
  %1265 = zext i1 %1260 to i32
  %1266 = shl i32 %1264, 3
  %1267 = sub i32 %1247, %1266
  br label %1268

1268:                                             ; preds = %1255, %1250
  %1269 = phi i32 [ %1264, %1255 ], [ %1251, %1250 ]
  %1270 = phi i32 [ %1267, %1255 ], [ %1252, %1250 ]
  %1271 = phi i32 [ %1265, %1255 ], [ 0, %1250 ]
  %1272 = zext i32 %1269 to i64
  %1273 = sub nsw i64 0, %1272
  %1274 = getelementptr inbounds i8, ptr %1246, i64 %1273
  %1275 = load i64, ptr %1274, align 1, !tbaa !27
  %1276 = icmp eq i32 %1271, 0
  %1277 = icmp ule ptr %1245, %1238
  %1278 = and i1 %1277, %1276
  br i1 %1278, label %1285, label %1279

1279:                                             ; preds = %1285, %1253, %1268, %1237
  %1280 = phi ptr [ %1233, %1237 ], [ %1245, %1268 ], [ %1245, %1253 ], [ %1299, %1285 ]
  %1281 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1237 ], [ %1274, %1268 ], [ %34, %1253 ], [ @BIT_reloadDStream.zeroFilled, %1285 ]
  %1282 = phi i32 [ %1231, %1237 ], [ %1270, %1268 ], [ %1247, %1253 ], [ %1295, %1285 ]
  %1283 = phi i64 [ %1230, %1237 ], [ %1275, %1268 ], [ %1248, %1253 ], [ %1275, %1285 ]
  %1284 = icmp ugt ptr %1280, %1238
  br i1 %1284, label %1319, label %1301

1285:                                             ; preds = %1268
  %1286 = and i32 %1270, 63
  %1287 = zext nneg i32 %1286 to i64
  %1288 = shl i64 %1275, %1287
  %1289 = lshr i64 %1288, %1242
  %1290 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1289
  %1291 = load i16, ptr %1290, align 2
  store i16 %1291, ptr %1245, align 1
  %1292 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1289, i32 1
  %1293 = load i8, ptr %1292, align 2, !tbaa !82
  %1294 = zext i8 %1293 to i32
  %1295 = add i32 %1270, %1294
  %1296 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1289, i32 2
  %1297 = load i8, ptr %1296, align 1, !tbaa !84
  %1298 = zext i8 %1297 to i64
  %1299 = getelementptr inbounds i8, ptr %1245, i64 %1298
  %1300 = icmp ugt i32 %1295, 64
  br i1 %1300, label %1279, label %1244, !prof !85, !llvm.loop !89

1301:                                             ; preds = %1279, %1301
  %1302 = phi ptr [ %1317, %1301 ], [ %1280, %1279 ]
  %1303 = phi i32 [ %1313, %1301 ], [ %1282, %1279 ]
  %1304 = and i32 %1303, 63
  %1305 = zext nneg i32 %1304 to i64
  %1306 = shl i64 %1283, %1305
  %1307 = lshr i64 %1306, %1242
  %1308 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1307
  %1309 = load i16, ptr %1308, align 2
  store i16 %1309, ptr %1302, align 1
  %1310 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1307, i32 1
  %1311 = load i8, ptr %1310, align 2, !tbaa !82
  %1312 = zext i8 %1311 to i32
  %1313 = add i32 %1303, %1312
  %1314 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1307, i32 2
  %1315 = load i8, ptr %1314, align 1, !tbaa !84
  %1316 = zext i8 %1315 to i64
  %1317 = getelementptr inbounds i8, ptr %1302, i64 %1316
  %1318 = icmp ugt ptr %1317, %1238
  br i1 %1318, label %1319, label %1301, !llvm.loop !90

1319:                                             ; preds = %1301, %1279, %1229
  %1320 = phi i64 [ %1230, %1229 ], [ %1283, %1279 ], [ %1283, %1301 ]
  %1321 = phi i32 [ %1231, %1229 ], [ %1282, %1279 ], [ %1313, %1301 ]
  %1322 = phi ptr [ %1232, %1229 ], [ %1281, %1279 ], [ %1281, %1301 ]
  %1323 = phi ptr [ %1233, %1229 ], [ %1280, %1279 ], [ %1317, %1301 ]
  %1324 = icmp ult ptr %1323, %40
  br i1 %1324, label %1325, label %1351

1325:                                             ; preds = %1319
  %1326 = and i32 %1321, 63
  %1327 = zext nneg i32 %1326 to i64
  %1328 = shl i64 %1320, %1327
  %1329 = sub nsw i32 0, %43
  %1330 = and i32 %1329, 63
  %1331 = zext nneg i32 %1330 to i64
  %1332 = lshr i64 %1328, %1331
  %1333 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1332
  %1334 = load i8, ptr %1333, align 2
  store i8 %1334, ptr %1323, align 1
  %1335 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1332, i32 2
  %1336 = load i8, ptr %1335, align 1, !tbaa !84
  %1337 = icmp eq i8 %1336, 1
  br i1 %1337, label %1338, label %1343

1338:                                             ; preds = %1325
  %1339 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1332, i32 1
  %1340 = load i8, ptr %1339, align 2, !tbaa !82
  %1341 = zext i8 %1340 to i32
  %1342 = add i32 %1321, %1341
  br label %1351

1343:                                             ; preds = %1325
  %1344 = icmp ult i32 %1321, 64
  br i1 %1344, label %1345, label %1351

1345:                                             ; preds = %1343
  %1346 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1332, i32 1
  %1347 = load i8, ptr %1346, align 2, !tbaa !82
  %1348 = zext i8 %1347 to i32
  %1349 = add nuw nsw i32 %1321, %1348
  %1350 = tail call i32 @llvm.umin.i32(i32 %1349, i32 64)
  br label %1351

1351:                                             ; preds = %1345, %1343, %1338, %1319
  %1352 = phi i32 [ %1321, %1319 ], [ %1342, %1338 ], [ %1321, %1343 ], [ %1350, %1345 ]
  %1353 = ptrtoint ptr %596 to i64
  %1354 = sub i64 %278, %1353
  %1355 = icmp ugt i64 %1354, 7
  br i1 %1355, label %1356, label %1573

1356:                                             ; preds = %1351
  %1357 = icmp ult i32 %44, 12
  %1358 = icmp ugt i32 %592, 64
  br i1 %1357, label %1366, label %1359

1359:                                             ; preds = %1356
  br i1 %1358, label %1602, label %1360, !prof !88

1360:                                             ; preds = %1359
  %1361 = ptrtoint ptr %35 to i64
  %1362 = getelementptr inbounds i8, ptr %41, i64 -7
  %1363 = sub nsw i32 0, %43
  %1364 = and i32 %1363, 63
  %1365 = zext nneg i32 %1364 to i64
  br label %1480

1366:                                             ; preds = %1356
  br i1 %1358, label %1602, label %1367, !prof !88

1367:                                             ; preds = %1366
  %1368 = ptrtoint ptr %35 to i64
  %1369 = getelementptr inbounds i8, ptr %41, i64 -9
  %1370 = sub nsw i32 0, %43
  %1371 = and i32 %1370, 63
  %1372 = zext nneg i32 %1371 to i64
  br label %1373

1373:                                             ; preds = %1408, %1367
  %1374 = phi ptr [ %596, %1367 ], [ %1478, %1408 ]
  %1375 = phi ptr [ %594, %1367 ], [ %1403, %1408 ]
  %1376 = phi i32 [ %592, %1367 ], [ %1474, %1408 ]
  %1377 = phi i64 [ %591, %1367 ], [ %1404, %1408 ]
  %1378 = icmp ult ptr %1375, %201
  br i1 %1378, label %1382, label %1379

1379:                                             ; preds = %1373
  %1380 = lshr i32 %1376, 3
  %1381 = and i32 %1376, 7
  br label %1397

1382:                                             ; preds = %1373
  %1383 = icmp eq ptr %1375, %35
  br i1 %1383, label %1602, label %1384

1384:                                             ; preds = %1382
  %1385 = lshr i32 %1376, 3
  %1386 = zext nneg i32 %1385 to i64
  %1387 = sub nsw i64 0, %1386
  %1388 = getelementptr inbounds i8, ptr %1375, i64 %1387
  %1389 = icmp ult ptr %1388, %35
  %1390 = ptrtoint ptr %1375 to i64
  %1391 = sub i64 %1390, %1368
  %1392 = trunc i64 %1391 to i32
  %1393 = select i1 %1389, i32 %1392, i32 %1385
  %1394 = zext i1 %1389 to i32
  %1395 = shl i32 %1393, 3
  %1396 = sub i32 %1376, %1395
  br label %1397

1397:                                             ; preds = %1384, %1379
  %1398 = phi i32 [ %1396, %1384 ], [ %1381, %1379 ]
  %1399 = phi i32 [ %1393, %1384 ], [ %1380, %1379 ]
  %1400 = phi i32 [ %1394, %1384 ], [ 0, %1379 ]
  %1401 = zext i32 %1399 to i64
  %1402 = sub nsw i64 0, %1401
  %1403 = getelementptr inbounds i8, ptr %1375, i64 %1402
  %1404 = load i64, ptr %1403, align 1, !tbaa !27
  %1405 = icmp eq i32 %1400, 0
  %1406 = icmp ult ptr %1374, %1369
  %1407 = and i1 %1406, %1405
  br i1 %1407, label %1408, label %1602

1408:                                             ; preds = %1397
  %1409 = and i32 %1398, 63
  %1410 = zext nneg i32 %1409 to i64
  %1411 = shl i64 %1404, %1410
  %1412 = lshr i64 %1411, %1372
  %1413 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1412
  %1414 = load i16, ptr %1413, align 2
  store i16 %1414, ptr %1374, align 1
  %1415 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1412, i32 1
  %1416 = load i8, ptr %1415, align 2, !tbaa !82
  %1417 = zext i8 %1416 to i32
  %1418 = add i32 %1398, %1417
  %1419 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1412, i32 2
  %1420 = load i8, ptr %1419, align 1, !tbaa !84
  %1421 = zext i8 %1420 to i64
  %1422 = getelementptr inbounds i8, ptr %1374, i64 %1421
  %1423 = and i32 %1418, 63
  %1424 = zext nneg i32 %1423 to i64
  %1425 = shl i64 %1404, %1424
  %1426 = lshr i64 %1425, %1372
  %1427 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1426
  %1428 = load i16, ptr %1427, align 2
  store i16 %1428, ptr %1422, align 1
  %1429 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1426, i32 1
  %1430 = load i8, ptr %1429, align 2, !tbaa !82
  %1431 = zext i8 %1430 to i32
  %1432 = add i32 %1418, %1431
  %1433 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1426, i32 2
  %1434 = load i8, ptr %1433, align 1, !tbaa !84
  %1435 = zext i8 %1434 to i64
  %1436 = getelementptr inbounds i8, ptr %1422, i64 %1435
  %1437 = and i32 %1432, 63
  %1438 = zext nneg i32 %1437 to i64
  %1439 = shl i64 %1404, %1438
  %1440 = lshr i64 %1439, %1372
  %1441 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1440
  %1442 = load i16, ptr %1441, align 2
  store i16 %1442, ptr %1436, align 1
  %1443 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1440, i32 1
  %1444 = load i8, ptr %1443, align 2, !tbaa !82
  %1445 = zext i8 %1444 to i32
  %1446 = add i32 %1432, %1445
  %1447 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1440, i32 2
  %1448 = load i8, ptr %1447, align 1, !tbaa !84
  %1449 = zext i8 %1448 to i64
  %1450 = getelementptr inbounds i8, ptr %1436, i64 %1449
  %1451 = and i32 %1446, 63
  %1452 = zext nneg i32 %1451 to i64
  %1453 = shl i64 %1404, %1452
  %1454 = lshr i64 %1453, %1372
  %1455 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1454
  %1456 = load i16, ptr %1455, align 2
  store i16 %1456, ptr %1450, align 1
  %1457 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1454, i32 1
  %1458 = load i8, ptr %1457, align 2, !tbaa !82
  %1459 = zext i8 %1458 to i32
  %1460 = add i32 %1446, %1459
  %1461 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1454, i32 2
  %1462 = load i8, ptr %1461, align 1, !tbaa !84
  %1463 = zext i8 %1462 to i64
  %1464 = getelementptr inbounds i8, ptr %1450, i64 %1463
  %1465 = and i32 %1460, 63
  %1466 = zext nneg i32 %1465 to i64
  %1467 = shl i64 %1404, %1466
  %1468 = lshr i64 %1467, %1372
  %1469 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1468
  %1470 = load i16, ptr %1469, align 2
  store i16 %1470, ptr %1464, align 1
  %1471 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1468, i32 1
  %1472 = load i8, ptr %1471, align 2, !tbaa !82
  %1473 = zext i8 %1472 to i32
  %1474 = add i32 %1460, %1473
  %1475 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1468, i32 2
  %1476 = load i8, ptr %1475, align 1, !tbaa !84
  %1477 = zext i8 %1476 to i64
  %1478 = getelementptr inbounds i8, ptr %1464, i64 %1477
  %1479 = icmp ugt i32 %1474, 64
  br i1 %1479, label %1602, label %1373, !prof !85, !llvm.loop !86

1480:                                             ; preds = %1515, %1360
  %1481 = phi ptr [ %596, %1360 ], [ %1571, %1515 ]
  %1482 = phi ptr [ %594, %1360 ], [ %1510, %1515 ]
  %1483 = phi i32 [ %592, %1360 ], [ %1567, %1515 ]
  %1484 = phi i64 [ %591, %1360 ], [ %1511, %1515 ]
  %1485 = icmp ult ptr %1482, %201
  br i1 %1485, label %1489, label %1486

1486:                                             ; preds = %1480
  %1487 = lshr i32 %1483, 3
  %1488 = and i32 %1483, 7
  br label %1504

1489:                                             ; preds = %1480
  %1490 = icmp eq ptr %1482, %35
  br i1 %1490, label %1602, label %1491

1491:                                             ; preds = %1489
  %1492 = lshr i32 %1483, 3
  %1493 = zext nneg i32 %1492 to i64
  %1494 = sub nsw i64 0, %1493
  %1495 = getelementptr inbounds i8, ptr %1482, i64 %1494
  %1496 = icmp ult ptr %1495, %35
  %1497 = ptrtoint ptr %1482 to i64
  %1498 = sub i64 %1497, %1361
  %1499 = trunc i64 %1498 to i32
  %1500 = select i1 %1496, i32 %1499, i32 %1492
  %1501 = zext i1 %1496 to i32
  %1502 = shl i32 %1500, 3
  %1503 = sub i32 %1483, %1502
  br label %1504

1504:                                             ; preds = %1491, %1486
  %1505 = phi i32 [ %1503, %1491 ], [ %1488, %1486 ]
  %1506 = phi i32 [ %1500, %1491 ], [ %1487, %1486 ]
  %1507 = phi i32 [ %1501, %1491 ], [ 0, %1486 ]
  %1508 = zext i32 %1506 to i64
  %1509 = sub nsw i64 0, %1508
  %1510 = getelementptr inbounds i8, ptr %1482, i64 %1509
  %1511 = load i64, ptr %1510, align 1, !tbaa !27
  %1512 = icmp eq i32 %1507, 0
  %1513 = icmp ult ptr %1481, %1362
  %1514 = and i1 %1513, %1512
  br i1 %1514, label %1515, label %1602

1515:                                             ; preds = %1504
  %1516 = and i32 %1505, 63
  %1517 = zext nneg i32 %1516 to i64
  %1518 = shl i64 %1511, %1517
  %1519 = lshr i64 %1518, %1365
  %1520 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1519
  %1521 = load i16, ptr %1520, align 2
  store i16 %1521, ptr %1481, align 1
  %1522 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1519, i32 1
  %1523 = load i8, ptr %1522, align 2, !tbaa !82
  %1524 = zext i8 %1523 to i32
  %1525 = add i32 %1505, %1524
  %1526 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1519, i32 2
  %1527 = load i8, ptr %1526, align 1, !tbaa !84
  %1528 = zext i8 %1527 to i64
  %1529 = getelementptr inbounds i8, ptr %1481, i64 %1528
  %1530 = and i32 %1525, 63
  %1531 = zext nneg i32 %1530 to i64
  %1532 = shl i64 %1511, %1531
  %1533 = lshr i64 %1532, %1365
  %1534 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1533
  %1535 = load i16, ptr %1534, align 2
  store i16 %1535, ptr %1529, align 1
  %1536 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1533, i32 1
  %1537 = load i8, ptr %1536, align 2, !tbaa !82
  %1538 = zext i8 %1537 to i32
  %1539 = add i32 %1525, %1538
  %1540 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1533, i32 2
  %1541 = load i8, ptr %1540, align 1, !tbaa !84
  %1542 = zext i8 %1541 to i64
  %1543 = getelementptr inbounds i8, ptr %1529, i64 %1542
  %1544 = and i32 %1539, 63
  %1545 = zext nneg i32 %1544 to i64
  %1546 = shl i64 %1511, %1545
  %1547 = lshr i64 %1546, %1365
  %1548 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1547
  %1549 = load i16, ptr %1548, align 2
  store i16 %1549, ptr %1543, align 1
  %1550 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1547, i32 1
  %1551 = load i8, ptr %1550, align 2, !tbaa !82
  %1552 = zext i8 %1551 to i32
  %1553 = add i32 %1539, %1552
  %1554 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1547, i32 2
  %1555 = load i8, ptr %1554, align 1, !tbaa !84
  %1556 = zext i8 %1555 to i64
  %1557 = getelementptr inbounds i8, ptr %1543, i64 %1556
  %1558 = and i32 %1553, 63
  %1559 = zext nneg i32 %1558 to i64
  %1560 = shl i64 %1511, %1559
  %1561 = lshr i64 %1560, %1365
  %1562 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1561
  %1563 = load i16, ptr %1562, align 2
  store i16 %1563, ptr %1557, align 1
  %1564 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1561, i32 1
  %1565 = load i8, ptr %1564, align 2, !tbaa !82
  %1566 = zext i8 %1565 to i32
  %1567 = add i32 %1553, %1566
  %1568 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1561, i32 2
  %1569 = load i8, ptr %1568, align 1, !tbaa !84
  %1570 = zext i8 %1569 to i64
  %1571 = getelementptr inbounds i8, ptr %1557, i64 %1570
  %1572 = icmp ugt i32 %1567, 64
  br i1 %1572, label %1602, label %1480, !prof !85, !llvm.loop !87

1573:                                             ; preds = %1351
  %1574 = icmp ugt i32 %592, 64
  br i1 %1574, label %1602, label %1575, !prof !107

1575:                                             ; preds = %1573
  %1576 = icmp ult ptr %594, %201
  br i1 %1576, label %1580, label %1577

1577:                                             ; preds = %1575
  %1578 = lshr i32 %592, 3
  %1579 = and i32 %592, 7
  br label %1595

1580:                                             ; preds = %1575
  %1581 = icmp eq ptr %594, %35
  br i1 %1581, label %1602, label %1582

1582:                                             ; preds = %1580
  %1583 = lshr i32 %592, 3
  %1584 = zext nneg i32 %1583 to i64
  %1585 = sub nsw i64 0, %1584
  %1586 = getelementptr inbounds i8, ptr %594, i64 %1585
  %1587 = icmp ult ptr %1586, %35
  %1588 = ptrtoint ptr %594 to i64
  %1589 = ptrtoint ptr %35 to i64
  %1590 = sub i64 %1588, %1589
  %1591 = trunc i64 %1590 to i32
  %1592 = select i1 %1587, i32 %1591, i32 %1583
  %1593 = shl i32 %1592, 3
  %1594 = sub i32 %592, %1593
  br label %1595

1595:                                             ; preds = %1582, %1577
  %1596 = phi i32 [ %1578, %1577 ], [ %1592, %1582 ]
  %1597 = phi i32 [ %1579, %1577 ], [ %1594, %1582 ]
  %1598 = zext i32 %1596 to i64
  %1599 = sub nsw i64 0, %1598
  %1600 = getelementptr inbounds i8, ptr %594, i64 %1599
  %1601 = load i64, ptr %1600, align 1, !tbaa !27
  br label %1602

1602:                                             ; preds = %1515, %1504, %1489, %1408, %1397, %1382, %1595, %1580, %1573, %1366, %1359
  %1603 = phi i64 [ %591, %1573 ], [ %591, %1580 ], [ %591, %1366 ], [ %591, %1359 ], [ %1601, %1595 ], [ %1377, %1382 ], [ %1404, %1408 ], [ %1404, %1397 ], [ %1484, %1489 ], [ %1511, %1515 ], [ %1511, %1504 ]
  %1604 = phi i32 [ %592, %1573 ], [ %592, %1580 ], [ %592, %1366 ], [ %592, %1359 ], [ %1597, %1595 ], [ %1376, %1382 ], [ %1474, %1408 ], [ %1398, %1397 ], [ %1483, %1489 ], [ %1567, %1515 ], [ %1505, %1504 ]
  %1605 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1573 ], [ %35, %1580 ], [ @BIT_reloadDStream.zeroFilled, %1366 ], [ @BIT_reloadDStream.zeroFilled, %1359 ], [ %1600, %1595 ], [ %35, %1382 ], [ @BIT_reloadDStream.zeroFilled, %1408 ], [ %1403, %1397 ], [ %35, %1489 ], [ @BIT_reloadDStream.zeroFilled, %1515 ], [ %1510, %1504 ]
  %1606 = phi ptr [ %596, %1573 ], [ %596, %1580 ], [ %596, %1366 ], [ %596, %1359 ], [ %596, %1595 ], [ %1374, %1382 ], [ %1478, %1408 ], [ %1374, %1397 ], [ %1481, %1489 ], [ %1571, %1515 ], [ %1481, %1504 ]
  %1607 = ptrtoint ptr %1606 to i64
  %1608 = sub i64 %278, %1607
  %1609 = icmp ugt i64 %1608, 1
  br i1 %1609, label %1610, label %1692

1610:                                             ; preds = %1602
  %1611 = getelementptr inbounds i8, ptr %41, i64 -2
  %1612 = ptrtoint ptr %35 to i64
  %1613 = sub nsw i32 0, %43
  %1614 = and i32 %1613, 63
  %1615 = zext nneg i32 %1614 to i64
  %1616 = icmp ugt i32 %1604, 64
  br i1 %1616, label %1652, label %1617, !prof !88

1617:                                             ; preds = %1610, %1658
  %1618 = phi ptr [ %1672, %1658 ], [ %1606, %1610 ]
  %1619 = phi ptr [ %1647, %1658 ], [ %1605, %1610 ]
  %1620 = phi i32 [ %1668, %1658 ], [ %1604, %1610 ]
  %1621 = phi i64 [ %1648, %1658 ], [ %1603, %1610 ]
  %1622 = icmp ult ptr %1619, %201
  br i1 %1622, label %1626, label %1623

1623:                                             ; preds = %1617
  %1624 = lshr i32 %1620, 3
  %1625 = and i32 %1620, 7
  br label %1641

1626:                                             ; preds = %1617
  %1627 = icmp eq ptr %1619, %35
  br i1 %1627, label %1652, label %1628

1628:                                             ; preds = %1626
  %1629 = lshr i32 %1620, 3
  %1630 = zext nneg i32 %1629 to i64
  %1631 = sub nsw i64 0, %1630
  %1632 = getelementptr inbounds i8, ptr %1619, i64 %1631
  %1633 = icmp ult ptr %1632, %35
  %1634 = ptrtoint ptr %1619 to i64
  %1635 = sub i64 %1634, %1612
  %1636 = trunc i64 %1635 to i32
  %1637 = select i1 %1633, i32 %1636, i32 %1629
  %1638 = zext i1 %1633 to i32
  %1639 = shl i32 %1637, 3
  %1640 = sub i32 %1620, %1639
  br label %1641

1641:                                             ; preds = %1628, %1623
  %1642 = phi i32 [ %1637, %1628 ], [ %1624, %1623 ]
  %1643 = phi i32 [ %1640, %1628 ], [ %1625, %1623 ]
  %1644 = phi i32 [ %1638, %1628 ], [ 0, %1623 ]
  %1645 = zext i32 %1642 to i64
  %1646 = sub nsw i64 0, %1645
  %1647 = getelementptr inbounds i8, ptr %1619, i64 %1646
  %1648 = load i64, ptr %1647, align 1, !tbaa !27
  %1649 = icmp eq i32 %1644, 0
  %1650 = icmp ule ptr %1618, %1611
  %1651 = and i1 %1650, %1649
  br i1 %1651, label %1658, label %1652

1652:                                             ; preds = %1658, %1626, %1641, %1610
  %1653 = phi ptr [ %1606, %1610 ], [ %1618, %1641 ], [ %1618, %1626 ], [ %1672, %1658 ]
  %1654 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1610 ], [ %1647, %1641 ], [ %35, %1626 ], [ @BIT_reloadDStream.zeroFilled, %1658 ]
  %1655 = phi i32 [ %1604, %1610 ], [ %1643, %1641 ], [ %1620, %1626 ], [ %1668, %1658 ]
  %1656 = phi i64 [ %1603, %1610 ], [ %1648, %1641 ], [ %1621, %1626 ], [ %1648, %1658 ]
  %1657 = icmp ugt ptr %1653, %1611
  br i1 %1657, label %1692, label %1674

1658:                                             ; preds = %1641
  %1659 = and i32 %1643, 63
  %1660 = zext nneg i32 %1659 to i64
  %1661 = shl i64 %1648, %1660
  %1662 = lshr i64 %1661, %1615
  %1663 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1662
  %1664 = load i16, ptr %1663, align 2
  store i16 %1664, ptr %1618, align 1
  %1665 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1662, i32 1
  %1666 = load i8, ptr %1665, align 2, !tbaa !82
  %1667 = zext i8 %1666 to i32
  %1668 = add i32 %1643, %1667
  %1669 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1662, i32 2
  %1670 = load i8, ptr %1669, align 1, !tbaa !84
  %1671 = zext i8 %1670 to i64
  %1672 = getelementptr inbounds i8, ptr %1618, i64 %1671
  %1673 = icmp ugt i32 %1668, 64
  br i1 %1673, label %1652, label %1617, !prof !85, !llvm.loop !89

1674:                                             ; preds = %1652, %1674
  %1675 = phi ptr [ %1690, %1674 ], [ %1653, %1652 ]
  %1676 = phi i32 [ %1686, %1674 ], [ %1655, %1652 ]
  %1677 = and i32 %1676, 63
  %1678 = zext nneg i32 %1677 to i64
  %1679 = shl i64 %1656, %1678
  %1680 = lshr i64 %1679, %1615
  %1681 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1680
  %1682 = load i16, ptr %1681, align 2
  store i16 %1682, ptr %1675, align 1
  %1683 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1680, i32 1
  %1684 = load i8, ptr %1683, align 2, !tbaa !82
  %1685 = zext i8 %1684 to i32
  %1686 = add i32 %1676, %1685
  %1687 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1680, i32 2
  %1688 = load i8, ptr %1687, align 1, !tbaa !84
  %1689 = zext i8 %1688 to i64
  %1690 = getelementptr inbounds i8, ptr %1675, i64 %1689
  %1691 = icmp ugt ptr %1690, %1611
  br i1 %1691, label %1692, label %1674, !llvm.loop !90

1692:                                             ; preds = %1674, %1652, %1602
  %1693 = phi i64 [ %1603, %1602 ], [ %1656, %1652 ], [ %1656, %1674 ]
  %1694 = phi i32 [ %1604, %1602 ], [ %1655, %1652 ], [ %1686, %1674 ]
  %1695 = phi ptr [ %1605, %1602 ], [ %1654, %1652 ], [ %1654, %1674 ]
  %1696 = phi ptr [ %1606, %1602 ], [ %1653, %1652 ], [ %1690, %1674 ]
  %1697 = icmp ult ptr %1696, %41
  br i1 %1697, label %1698, label %1724

1698:                                             ; preds = %1692
  %1699 = and i32 %1694, 63
  %1700 = zext nneg i32 %1699 to i64
  %1701 = shl i64 %1693, %1700
  %1702 = sub nsw i32 0, %43
  %1703 = and i32 %1702, 63
  %1704 = zext nneg i32 %1703 to i64
  %1705 = lshr i64 %1701, %1704
  %1706 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1705
  %1707 = load i8, ptr %1706, align 2
  store i8 %1707, ptr %1696, align 1
  %1708 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1705, i32 2
  %1709 = load i8, ptr %1708, align 1, !tbaa !84
  %1710 = icmp eq i8 %1709, 1
  br i1 %1710, label %1711, label %1716

1711:                                             ; preds = %1698
  %1712 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1705, i32 1
  %1713 = load i8, ptr %1712, align 2, !tbaa !82
  %1714 = zext i8 %1713 to i32
  %1715 = add i32 %1694, %1714
  br label %1724

1716:                                             ; preds = %1698
  %1717 = icmp ult i32 %1694, 64
  br i1 %1717, label %1718, label %1724

1718:                                             ; preds = %1716
  %1719 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1705, i32 1
  %1720 = load i8, ptr %1719, align 2, !tbaa !82
  %1721 = zext i8 %1720 to i32
  %1722 = add nuw nsw i32 %1694, %1721
  %1723 = tail call i32 @llvm.umin.i32(i32 %1722, i32 64)
  br label %1724

1724:                                             ; preds = %1718, %1716, %1711, %1692
  %1725 = phi i32 [ %1694, %1692 ], [ %1715, %1711 ], [ %1694, %1716 ], [ %1723, %1718 ]
  %1726 = ptrtoint ptr %595 to i64
  %1727 = sub i64 %277, %1726
  %1728 = icmp ugt i64 %1727, 7
  br i1 %1728, label %1729, label %1983

1729:                                             ; preds = %1724
  %1730 = icmp ult i32 %44, 12
  %1731 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %1732 = load i32, ptr %1731, align 8
  %1733 = icmp ugt i32 %1732, 64
  br i1 %1730, label %1742, label %1734

1734:                                             ; preds = %1729
  br i1 %1733, label %1875, label %1735, !prof !88

1735:                                             ; preds = %1734
  %1736 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %1737 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %1738 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %1739 = sub nsw i32 0, %43
  %1740 = and i32 %1739, 63
  %1741 = zext nneg i32 %1740 to i64
  br label %1879

1742:                                             ; preds = %1729
  br i1 %1733, label %1751, label %1743, !prof !88

1743:                                             ; preds = %1742
  %1744 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %1745 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %1746 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %1747 = getelementptr inbounds i8, ptr %18, i64 -9
  %1748 = sub nsw i32 0, %43
  %1749 = and i32 %1748, 63
  %1750 = zext nneg i32 %1749 to i64
  br label %1755

1751:                                             ; preds = %1795, %1742
  %1752 = phi i32 [ %1732, %1742 ], [ %1869, %1795 ]
  %1753 = phi ptr [ %595, %1742 ], [ %1873, %1795 ]
  %1754 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1754, align 8, !tbaa !105
  br label %2022

1755:                                             ; preds = %1795, %1743
  %1756 = phi i32 [ %1732, %1743 ], [ %1869, %1795 ]
  %1757 = phi ptr [ %595, %1743 ], [ %1873, %1795 ]
  %1758 = load ptr, ptr %1744, align 8, !tbaa !105
  %1759 = load ptr, ptr %1745, align 8, !tbaa !103
  %1760 = icmp ult ptr %1758, %1759
  br i1 %1760, label %1767, label %1761

1761:                                             ; preds = %1755
  %1762 = lshr i32 %1756, 3
  %1763 = zext nneg i32 %1762 to i64
  %1764 = sub nsw i64 0, %1763
  %1765 = getelementptr inbounds i8, ptr %1758, i64 %1764
  store ptr %1765, ptr %1744, align 8, !tbaa !105
  %1766 = and i32 %1756, 7
  br label %1787

1767:                                             ; preds = %1755
  %1768 = load ptr, ptr %1746, align 8, !tbaa !109
  %1769 = icmp eq ptr %1758, %1768
  br i1 %1769, label %2022, label %1770

1770:                                             ; preds = %1767
  %1771 = lshr i32 %1756, 3
  %1772 = zext nneg i32 %1771 to i64
  %1773 = sub nsw i64 0, %1772
  %1774 = getelementptr inbounds i8, ptr %1758, i64 %1773
  %1775 = icmp ult ptr %1774, %1768
  %1776 = ptrtoint ptr %1758 to i64
  %1777 = ptrtoint ptr %1768 to i64
  %1778 = sub i64 %1776, %1777
  %1779 = trunc i64 %1778 to i32
  %1780 = select i1 %1775, i32 %1779, i32 %1771
  %1781 = zext i1 %1775 to i32
  %1782 = zext i32 %1780 to i64
  %1783 = sub nsw i64 0, %1782
  %1784 = getelementptr inbounds i8, ptr %1758, i64 %1783
  store ptr %1784, ptr %1744, align 8, !tbaa !105
  %1785 = shl i32 %1780, 3
  %1786 = sub i32 %1756, %1785
  br label %1787

1787:                                             ; preds = %1770, %1761
  %1788 = phi i32 [ %1766, %1761 ], [ %1786, %1770 ]
  %1789 = phi ptr [ %1765, %1761 ], [ %1784, %1770 ]
  %1790 = phi i32 [ 0, %1761 ], [ %1781, %1770 ]
  store i32 %1788, ptr %1731, align 8, !tbaa !104
  %1791 = load i64, ptr %1789, align 1, !tbaa !27
  store i64 %1791, ptr %7, align 8, !tbaa !100
  %1792 = icmp eq i32 %1790, 0
  %1793 = icmp ult ptr %1757, %1747
  %1794 = and i1 %1793, %1792
  br i1 %1794, label %1795, label %2022

1795:                                             ; preds = %1787
  %1796 = and i32 %1788, 63
  %1797 = zext nneg i32 %1796 to i64
  %1798 = shl i64 %1791, %1797
  %1799 = lshr i64 %1798, %1750
  %1800 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1799
  %1801 = load i16, ptr %1800, align 2
  store i16 %1801, ptr %1757, align 1
  %1802 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1799, i32 1
  %1803 = load i8, ptr %1802, align 2, !tbaa !82
  %1804 = zext i8 %1803 to i32
  %1805 = add i32 %1788, %1804
  store i32 %1805, ptr %1731, align 8, !tbaa !104
  %1806 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1799, i32 2
  %1807 = load i8, ptr %1806, align 1, !tbaa !84
  %1808 = zext i8 %1807 to i64
  %1809 = getelementptr inbounds i8, ptr %1757, i64 %1808
  %1810 = load i64, ptr %7, align 8, !tbaa !100
  %1811 = and i32 %1805, 63
  %1812 = zext nneg i32 %1811 to i64
  %1813 = shl i64 %1810, %1812
  %1814 = lshr i64 %1813, %1750
  %1815 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1814
  %1816 = load i16, ptr %1815, align 2
  store i16 %1816, ptr %1809, align 1
  %1817 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1814, i32 1
  %1818 = load i8, ptr %1817, align 2, !tbaa !82
  %1819 = zext i8 %1818 to i32
  %1820 = load i32, ptr %1731, align 8, !tbaa !104
  %1821 = add i32 %1820, %1819
  store i32 %1821, ptr %1731, align 8, !tbaa !104
  %1822 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1814, i32 2
  %1823 = load i8, ptr %1822, align 1, !tbaa !84
  %1824 = zext i8 %1823 to i64
  %1825 = getelementptr inbounds i8, ptr %1809, i64 %1824
  %1826 = load i64, ptr %7, align 8, !tbaa !100
  %1827 = and i32 %1821, 63
  %1828 = zext nneg i32 %1827 to i64
  %1829 = shl i64 %1826, %1828
  %1830 = lshr i64 %1829, %1750
  %1831 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1830
  %1832 = load i16, ptr %1831, align 2
  store i16 %1832, ptr %1825, align 1
  %1833 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1830, i32 1
  %1834 = load i8, ptr %1833, align 2, !tbaa !82
  %1835 = zext i8 %1834 to i32
  %1836 = load i32, ptr %1731, align 8, !tbaa !104
  %1837 = add i32 %1836, %1835
  store i32 %1837, ptr %1731, align 8, !tbaa !104
  %1838 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1830, i32 2
  %1839 = load i8, ptr %1838, align 1, !tbaa !84
  %1840 = zext i8 %1839 to i64
  %1841 = getelementptr inbounds i8, ptr %1825, i64 %1840
  %1842 = load i64, ptr %7, align 8, !tbaa !100
  %1843 = and i32 %1837, 63
  %1844 = zext nneg i32 %1843 to i64
  %1845 = shl i64 %1842, %1844
  %1846 = lshr i64 %1845, %1750
  %1847 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1846
  %1848 = load i16, ptr %1847, align 2
  store i16 %1848, ptr %1841, align 1
  %1849 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1846, i32 1
  %1850 = load i8, ptr %1849, align 2, !tbaa !82
  %1851 = zext i8 %1850 to i32
  %1852 = load i32, ptr %1731, align 8, !tbaa !104
  %1853 = add i32 %1852, %1851
  store i32 %1853, ptr %1731, align 8, !tbaa !104
  %1854 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1846, i32 2
  %1855 = load i8, ptr %1854, align 1, !tbaa !84
  %1856 = zext i8 %1855 to i64
  %1857 = getelementptr inbounds i8, ptr %1841, i64 %1856
  %1858 = load i64, ptr %7, align 8, !tbaa !100
  %1859 = and i32 %1853, 63
  %1860 = zext nneg i32 %1859 to i64
  %1861 = shl i64 %1858, %1860
  %1862 = lshr i64 %1861, %1750
  %1863 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1862
  %1864 = load i16, ptr %1863, align 2
  store i16 %1864, ptr %1857, align 1
  %1865 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1862, i32 1
  %1866 = load i8, ptr %1865, align 2, !tbaa !82
  %1867 = zext i8 %1866 to i32
  %1868 = load i32, ptr %1731, align 8, !tbaa !104
  %1869 = add i32 %1868, %1867
  store i32 %1869, ptr %1731, align 8, !tbaa !104
  %1870 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1862, i32 2
  %1871 = load i8, ptr %1870, align 1, !tbaa !84
  %1872 = zext i8 %1871 to i64
  %1873 = getelementptr inbounds i8, ptr %1857, i64 %1872
  %1874 = icmp ugt i32 %1869, 64
  br i1 %1874, label %1751, label %1755, !prof !85, !llvm.loop !86

1875:                                             ; preds = %1919, %1734
  %1876 = phi i32 [ %1732, %1734 ], [ %1977, %1919 ]
  %1877 = phi ptr [ %595, %1734 ], [ %1981, %1919 ]
  %1878 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1878, align 8, !tbaa !105
  br label %2022

1879:                                             ; preds = %1919, %1735
  %1880 = phi i32 [ %1732, %1735 ], [ %1977, %1919 ]
  %1881 = phi ptr [ %595, %1735 ], [ %1981, %1919 ]
  %1882 = load ptr, ptr %1736, align 8, !tbaa !105
  %1883 = load ptr, ptr %1737, align 8, !tbaa !103
  %1884 = icmp ult ptr %1882, %1883
  br i1 %1884, label %1891, label %1885

1885:                                             ; preds = %1879
  %1886 = lshr i32 %1880, 3
  %1887 = zext nneg i32 %1886 to i64
  %1888 = sub nsw i64 0, %1887
  %1889 = getelementptr inbounds i8, ptr %1882, i64 %1888
  store ptr %1889, ptr %1736, align 8, !tbaa !105
  %1890 = and i32 %1880, 7
  br label %1911

1891:                                             ; preds = %1879
  %1892 = load ptr, ptr %1738, align 8, !tbaa !109
  %1893 = icmp eq ptr %1882, %1892
  br i1 %1893, label %2022, label %1894

1894:                                             ; preds = %1891
  %1895 = lshr i32 %1880, 3
  %1896 = zext nneg i32 %1895 to i64
  %1897 = sub nsw i64 0, %1896
  %1898 = getelementptr inbounds i8, ptr %1882, i64 %1897
  %1899 = icmp ult ptr %1898, %1892
  %1900 = ptrtoint ptr %1882 to i64
  %1901 = ptrtoint ptr %1892 to i64
  %1902 = sub i64 %1900, %1901
  %1903 = trunc i64 %1902 to i32
  %1904 = select i1 %1899, i32 %1903, i32 %1895
  %1905 = zext i1 %1899 to i32
  %1906 = zext i32 %1904 to i64
  %1907 = sub nsw i64 0, %1906
  %1908 = getelementptr inbounds i8, ptr %1882, i64 %1907
  store ptr %1908, ptr %1736, align 8, !tbaa !105
  %1909 = shl i32 %1904, 3
  %1910 = sub i32 %1880, %1909
  br label %1911

1911:                                             ; preds = %1894, %1885
  %1912 = phi i32 [ %1890, %1885 ], [ %1910, %1894 ]
  %1913 = phi ptr [ %1889, %1885 ], [ %1908, %1894 ]
  %1914 = phi i32 [ 0, %1885 ], [ %1905, %1894 ]
  store i32 %1912, ptr %1731, align 8, !tbaa !104
  %1915 = load i64, ptr %1913, align 1, !tbaa !27
  store i64 %1915, ptr %7, align 8, !tbaa !100
  %1916 = icmp eq i32 %1914, 0
  %1917 = icmp ult ptr %1881, %19
  %1918 = and i1 %1917, %1916
  br i1 %1918, label %1919, label %2022

1919:                                             ; preds = %1911
  %1920 = and i32 %1912, 63
  %1921 = zext nneg i32 %1920 to i64
  %1922 = shl i64 %1915, %1921
  %1923 = lshr i64 %1922, %1741
  %1924 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1923
  %1925 = load i16, ptr %1924, align 2
  store i16 %1925, ptr %1881, align 1
  %1926 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1923, i32 1
  %1927 = load i8, ptr %1926, align 2, !tbaa !82
  %1928 = zext i8 %1927 to i32
  %1929 = add i32 %1912, %1928
  store i32 %1929, ptr %1731, align 8, !tbaa !104
  %1930 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1923, i32 2
  %1931 = load i8, ptr %1930, align 1, !tbaa !84
  %1932 = zext i8 %1931 to i64
  %1933 = getelementptr inbounds i8, ptr %1881, i64 %1932
  %1934 = load i64, ptr %7, align 8, !tbaa !100
  %1935 = and i32 %1929, 63
  %1936 = zext nneg i32 %1935 to i64
  %1937 = shl i64 %1934, %1936
  %1938 = lshr i64 %1937, %1741
  %1939 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1938
  %1940 = load i16, ptr %1939, align 2
  store i16 %1940, ptr %1933, align 1
  %1941 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1938, i32 1
  %1942 = load i8, ptr %1941, align 2, !tbaa !82
  %1943 = zext i8 %1942 to i32
  %1944 = load i32, ptr %1731, align 8, !tbaa !104
  %1945 = add i32 %1944, %1943
  store i32 %1945, ptr %1731, align 8, !tbaa !104
  %1946 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1938, i32 2
  %1947 = load i8, ptr %1946, align 1, !tbaa !84
  %1948 = zext i8 %1947 to i64
  %1949 = getelementptr inbounds i8, ptr %1933, i64 %1948
  %1950 = load i64, ptr %7, align 8, !tbaa !100
  %1951 = and i32 %1945, 63
  %1952 = zext nneg i32 %1951 to i64
  %1953 = shl i64 %1950, %1952
  %1954 = lshr i64 %1953, %1741
  %1955 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1954
  %1956 = load i16, ptr %1955, align 2
  store i16 %1956, ptr %1949, align 1
  %1957 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1954, i32 1
  %1958 = load i8, ptr %1957, align 2, !tbaa !82
  %1959 = zext i8 %1958 to i32
  %1960 = load i32, ptr %1731, align 8, !tbaa !104
  %1961 = add i32 %1960, %1959
  store i32 %1961, ptr %1731, align 8, !tbaa !104
  %1962 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1954, i32 2
  %1963 = load i8, ptr %1962, align 1, !tbaa !84
  %1964 = zext i8 %1963 to i64
  %1965 = getelementptr inbounds i8, ptr %1949, i64 %1964
  %1966 = load i64, ptr %7, align 8, !tbaa !100
  %1967 = and i32 %1961, 63
  %1968 = zext nneg i32 %1967 to i64
  %1969 = shl i64 %1966, %1968
  %1970 = lshr i64 %1969, %1741
  %1971 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1970
  %1972 = load i16, ptr %1971, align 2
  store i16 %1972, ptr %1965, align 1
  %1973 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1970, i32 1
  %1974 = load i8, ptr %1973, align 2, !tbaa !82
  %1975 = zext i8 %1974 to i32
  %1976 = load i32, ptr %1731, align 8, !tbaa !104
  %1977 = add i32 %1976, %1975
  store i32 %1977, ptr %1731, align 8, !tbaa !104
  %1978 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %1970, i32 2
  %1979 = load i8, ptr %1978, align 1, !tbaa !84
  %1980 = zext i8 %1979 to i64
  %1981 = getelementptr inbounds i8, ptr %1965, i64 %1980
  %1982 = icmp ugt i32 %1977, 64
  br i1 %1982, label %1875, label %1879, !prof !85, !llvm.loop !87

1983:                                             ; preds = %1724
  %1984 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %1985 = load i32, ptr %1984, align 8
  %1986 = icmp ugt i32 %1985, 64
  %1987 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  br i1 %1986, label %1988, label %1989, !prof !107

1988:                                             ; preds = %1983
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1987, align 8, !tbaa !105
  br label %2022

1989:                                             ; preds = %1983
  %1990 = load ptr, ptr %1987, align 8, !tbaa !105
  %1991 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %1992 = load ptr, ptr %1991, align 8, !tbaa !103
  %1993 = icmp ult ptr %1990, %1992
  br i1 %1993, label %2001, label %1994

1994:                                             ; preds = %1989
  %1995 = lshr i32 %1985, 3
  %1996 = zext nneg i32 %1995 to i64
  %1997 = sub nsw i64 0, %1996
  %1998 = getelementptr inbounds i8, ptr %1990, i64 %1997
  store ptr %1998, ptr %1987, align 8, !tbaa !105
  %1999 = and i32 %1985, 7
  store i32 %1999, ptr %1984, align 8, !tbaa !104
  %2000 = load i64, ptr %1998, align 1, !tbaa !27
  store i64 %2000, ptr %7, align 8, !tbaa !100
  br label %2022

2001:                                             ; preds = %1989
  %2002 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %2003 = load ptr, ptr %2002, align 8, !tbaa !109
  %2004 = icmp eq ptr %1990, %2003
  br i1 %2004, label %2022, label %2005

2005:                                             ; preds = %2001
  %2006 = lshr i32 %1985, 3
  %2007 = zext nneg i32 %2006 to i64
  %2008 = sub nsw i64 0, %2007
  %2009 = getelementptr inbounds i8, ptr %1990, i64 %2008
  %2010 = icmp ult ptr %2009, %2003
  %2011 = ptrtoint ptr %1990 to i64
  %2012 = ptrtoint ptr %2003 to i64
  %2013 = sub i64 %2011, %2012
  %2014 = trunc i64 %2013 to i32
  %2015 = select i1 %2010, i32 %2014, i32 %2006
  %2016 = zext i32 %2015 to i64
  %2017 = sub nsw i64 0, %2016
  %2018 = getelementptr inbounds i8, ptr %1990, i64 %2017
  store ptr %2018, ptr %1987, align 8, !tbaa !105
  %2019 = shl i32 %2015, 3
  %2020 = sub i32 %1985, %2019
  store i32 %2020, ptr %1984, align 8, !tbaa !104
  %2021 = load i64, ptr %2018, align 1, !tbaa !27
  store i64 %2021, ptr %7, align 8, !tbaa !100
  br label %2022

2022:                                             ; preds = %1911, %1891, %1787, %1767, %2005, %2001, %1994, %1988, %1875, %1751
  %2023 = phi i32 [ %2020, %2005 ], [ %1999, %1994 ], [ %1985, %1988 ], [ %1752, %1751 ], [ %1876, %1875 ], [ %1985, %2001 ], [ %1788, %1787 ], [ %1756, %1767 ], [ %1912, %1911 ], [ %1880, %1891 ]
  %2024 = phi ptr [ %595, %2005 ], [ %595, %1994 ], [ %595, %1988 ], [ %1753, %1751 ], [ %1877, %1875 ], [ %595, %2001 ], [ %1757, %1767 ], [ %1757, %1787 ], [ %1881, %1891 ], [ %1881, %1911 ]
  %2025 = ptrtoint ptr %2024 to i64
  %2026 = sub i64 %277, %2025
  %2027 = icmp ugt i64 %2026, 1
  br i1 %2027, label %2028, label %2122

2028:                                             ; preds = %2022
  %2029 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %2030 = getelementptr inbounds i8, ptr %18, i64 -2
  %2031 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %2032 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %2033 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %2034 = sub nsw i32 0, %43
  %2035 = and i32 %2034, 63
  %2036 = zext nneg i32 %2035 to i64
  %2037 = icmp ugt i32 %2023, 64
  br i1 %2037, label %2038, label %2041, !prof !88

2038:                                             ; preds = %2085, %2028
  %2039 = phi i32 [ %2023, %2028 ], [ %2096, %2085 ]
  %2040 = phi ptr [ %2024, %2028 ], [ %2100, %2085 ]
  store ptr @BIT_reloadDStream.zeroFilled, ptr %2031, align 8, !tbaa !105
  br label %2081

2041:                                             ; preds = %2028, %2085
  %2042 = phi ptr [ %2100, %2085 ], [ %2024, %2028 ]
  %2043 = phi i32 [ %2096, %2085 ], [ %2023, %2028 ]
  %2044 = load ptr, ptr %2031, align 8, !tbaa !105
  %2045 = load ptr, ptr %2032, align 8, !tbaa !103
  %2046 = icmp ult ptr %2044, %2045
  br i1 %2046, label %2053, label %2047

2047:                                             ; preds = %2041
  %2048 = lshr i32 %2043, 3
  %2049 = zext nneg i32 %2048 to i64
  %2050 = sub nsw i64 0, %2049
  %2051 = getelementptr inbounds i8, ptr %2044, i64 %2050
  store ptr %2051, ptr %2031, align 8, !tbaa !105
  %2052 = and i32 %2043, 7
  br label %2073

2053:                                             ; preds = %2041
  %2054 = load ptr, ptr %2033, align 8, !tbaa !109
  %2055 = icmp eq ptr %2044, %2054
  br i1 %2055, label %2081, label %2056

2056:                                             ; preds = %2053
  %2057 = lshr i32 %2043, 3
  %2058 = zext nneg i32 %2057 to i64
  %2059 = sub nsw i64 0, %2058
  %2060 = getelementptr inbounds i8, ptr %2044, i64 %2059
  %2061 = icmp ult ptr %2060, %2054
  %2062 = ptrtoint ptr %2044 to i64
  %2063 = ptrtoint ptr %2054 to i64
  %2064 = sub i64 %2062, %2063
  %2065 = trunc i64 %2064 to i32
  %2066 = select i1 %2061, i32 %2065, i32 %2057
  %2067 = zext i1 %2061 to i32
  %2068 = zext i32 %2066 to i64
  %2069 = sub nsw i64 0, %2068
  %2070 = getelementptr inbounds i8, ptr %2044, i64 %2069
  store ptr %2070, ptr %2031, align 8, !tbaa !105
  %2071 = shl i32 %2066, 3
  %2072 = sub i32 %2043, %2071
  br label %2073

2073:                                             ; preds = %2056, %2047
  %2074 = phi ptr [ %2051, %2047 ], [ %2070, %2056 ]
  %2075 = phi i32 [ %2052, %2047 ], [ %2072, %2056 ]
  %2076 = phi i32 [ 0, %2047 ], [ %2067, %2056 ]
  store i32 %2075, ptr %2029, align 8, !tbaa !104
  %2077 = load i64, ptr %2074, align 1, !tbaa !27
  store i64 %2077, ptr %7, align 8, !tbaa !100
  %2078 = icmp eq i32 %2076, 0
  %2079 = icmp ule ptr %2042, %2030
  %2080 = and i1 %2079, %2078
  br i1 %2080, label %2085, label %2081

2081:                                             ; preds = %2073, %2053, %2038
  %2082 = phi ptr [ %2040, %2038 ], [ %2042, %2053 ], [ %2042, %2073 ]
  %2083 = phi i32 [ %2039, %2038 ], [ %2075, %2073 ], [ %2043, %2053 ]
  %2084 = icmp ugt ptr %2082, %2030
  br i1 %2084, label %2122, label %2102

2085:                                             ; preds = %2073
  %2086 = and i32 %2075, 63
  %2087 = zext nneg i32 %2086 to i64
  %2088 = shl i64 %2077, %2087
  %2089 = lshr i64 %2088, %2036
  %2090 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2089
  %2091 = load i16, ptr %2090, align 2
  store i16 %2091, ptr %2042, align 1
  %2092 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2089, i32 1
  %2093 = load i8, ptr %2092, align 2, !tbaa !82
  %2094 = zext i8 %2093 to i32
  %2095 = load i32, ptr %2029, align 8, !tbaa !104
  %2096 = add i32 %2095, %2094
  store i32 %2096, ptr %2029, align 8, !tbaa !104
  %2097 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2089, i32 2
  %2098 = load i8, ptr %2097, align 1, !tbaa !84
  %2099 = zext i8 %2098 to i64
  %2100 = getelementptr inbounds i8, ptr %2042, i64 %2099
  %2101 = icmp ugt i32 %2096, 64
  br i1 %2101, label %2038, label %2041, !prof !85, !llvm.loop !89

2102:                                             ; preds = %2081, %2102
  %2103 = phi i32 [ %2116, %2102 ], [ %2083, %2081 ]
  %2104 = phi ptr [ %2120, %2102 ], [ %2082, %2081 ]
  %2105 = load i64, ptr %7, align 8, !tbaa !100
  %2106 = and i32 %2103, 63
  %2107 = zext nneg i32 %2106 to i64
  %2108 = shl i64 %2105, %2107
  %2109 = lshr i64 %2108, %2036
  %2110 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2109
  %2111 = load i16, ptr %2110, align 2
  store i16 %2111, ptr %2104, align 1
  %2112 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2109, i32 1
  %2113 = load i8, ptr %2112, align 2, !tbaa !82
  %2114 = zext i8 %2113 to i32
  %2115 = load i32, ptr %2029, align 8, !tbaa !104
  %2116 = add i32 %2115, %2114
  store i32 %2116, ptr %2029, align 8, !tbaa !104
  %2117 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2109, i32 2
  %2118 = load i8, ptr %2117, align 1, !tbaa !84
  %2119 = zext i8 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %2104, i64 %2119
  %2121 = icmp ugt ptr %2120, %2030
  br i1 %2121, label %2122, label %2102, !llvm.loop !90

2122:                                             ; preds = %2102, %2081, %2022
  %2123 = phi i32 [ %2023, %2022 ], [ %2083, %2081 ], [ %2116, %2102 ]
  %2124 = phi ptr [ %2024, %2022 ], [ %2082, %2081 ], [ %2120, %2102 ]
  %2125 = icmp ult ptr %2124, %18
  br i1 %2125, label %2126, label %2156

2126:                                             ; preds = %2122
  %2127 = load i64, ptr %7, align 8, !tbaa !100
  %2128 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %2129 = and i32 %2123, 63
  %2130 = zext nneg i32 %2129 to i64
  %2131 = shl i64 %2127, %2130
  %2132 = sub nsw i32 0, %43
  %2133 = and i32 %2132, 63
  %2134 = zext nneg i32 %2133 to i64
  %2135 = lshr i64 %2131, %2134
  %2136 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2135
  %2137 = load i8, ptr %2136, align 2
  store i8 %2137, ptr %2124, align 1
  %2138 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2135, i32 2
  %2139 = load i8, ptr %2138, align 1, !tbaa !84
  %2140 = icmp eq i8 %2139, 1
  br i1 %2140, label %2141, label %2147

2141:                                             ; preds = %2126
  %2142 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2135, i32 1
  %2143 = load i8, ptr %2142, align 2, !tbaa !82
  %2144 = zext i8 %2143 to i32
  %2145 = load i32, ptr %2128, align 8, !tbaa !104
  %2146 = add i32 %2145, %2144
  br label %2156

2147:                                             ; preds = %2126
  %2148 = load i32, ptr %2128, align 8
  %2149 = icmp ult i32 %2148, 64
  br i1 %2149, label %2150, label %2156

2150:                                             ; preds = %2147
  %2151 = getelementptr inbounds %struct.HUF_DEltX2, ptr %20, i64 %2135, i32 1
  %2152 = load i8, ptr %2151, align 2, !tbaa !82
  %2153 = zext i8 %2152 to i32
  %2154 = add nuw nsw i32 %2148, %2153
  %2155 = tail call i32 @llvm.umin.i32(i32 %2154, i32 64)
  br label %2156

2156:                                             ; preds = %2150, %2147, %2141, %2122
  %2157 = phi i32 [ %2146, %2141 ], [ %2148, %2147 ], [ %2155, %2150 ], [ %2123, %2122 ]
  %2158 = icmp eq ptr %946, %33
  %2159 = icmp eq i32 %978, 64
  %2160 = select i1 %2158, i1 %2159, i1 false
  %2161 = icmp eq ptr %1322, %34
  %2162 = icmp eq i32 %1352, 64
  %2163 = select i1 %2161, i1 %2162, i1 false
  %2164 = and i1 %2160, %2163
  %2165 = icmp eq ptr %1695, %35
  %2166 = icmp eq i32 %1725, 64
  %2167 = select i1 %2165, i1 %2166, i1 false
  %2168 = and i1 %2164, %2167
  %2169 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %2170 = load ptr, ptr %2169, align 8, !tbaa !105
  %2171 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %2172 = load ptr, ptr %2171, align 8, !tbaa !109
  %2173 = icmp eq ptr %2170, %2172
  %2174 = icmp eq i32 %2157, 64
  %2175 = select i1 %2173, i1 %2174, i1 false
  %2176 = and i1 %2168, %2175
  %2177 = select i1 %2176, i64 %1, i64 -20
  br label %2178

2178:                                             ; preds = %2156, %585, %270, %258, %203, %195, %183, %128, %120, %108, %53, %48, %17
  %2179 = phi i64 [ %274, %270 ], [ -20, %17 ], [ -20, %585 ], [ %2177, %2156 ], [ -20, %108 ], [ -1, %53 ], [ -72, %48 ], [ -20, %183 ], [ -1, %128 ], [ -72, %120 ], [ -20, %258 ], [ -1, %203 ], [ -72, %195 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  br label %2188

2180:                                             ; preds = %10
  %2181 = and i32 %5, 16
  %2182 = icmp eq i32 %2181, 0
  %2183 = select i1 %2182, ptr @HUF_decompress4X2_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X2_usingDTable_internal_fast_c_loop
  %2184 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %2183)
  %2185 = icmp eq i64 %2184, 0
  br i1 %2185, label %2186, label %2188

2186:                                             ; preds = %2180, %10
  %2187 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4), !range !99
  br label %2188

2188:                                             ; preds = %2178, %13, %2180, %2186
  %2189 = phi i64 [ %2187, %2186 ], [ %2184, %2180 ], [ %2179, %2178 ], [ -20, %13 ]
  ret i64 %2189
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = ptrtoint ptr %0 to i64
  %8 = alloca %struct.BIT_DStream_t, align 8
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = and i32 %5, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %1269, label %1275

14:                                               ; preds = %6
  %15 = icmp ult i64 %3, 10
  %16 = icmp ult i64 %1, 6
  %17 = or i1 %16, %15
  br i1 %17, label %1277, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 %1
  %20 = getelementptr inbounds i8, ptr %19, i64 -3
  %21 = getelementptr inbounds i32, ptr %4, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #16
  %22 = load i16, ptr %2, align 1, !tbaa !53
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds i8, ptr %2, i64 2
  %25 = load i16, ptr %24, align 1, !tbaa !53
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds i8, ptr %2, i64 4
  %28 = load i16, ptr %27, align 1, !tbaa !53
  %29 = zext i16 %28 to i64
  %30 = add nuw nsw i64 %23, 6
  %31 = add nuw nsw i64 %30, %26
  %32 = add nuw nsw i64 %31, %29
  %33 = sub i64 %3, %32
  %34 = getelementptr inbounds i8, ptr %2, i64 6
  %35 = getelementptr i8, ptr %34, i64 %23
  %36 = getelementptr i8, ptr %35, i64 %26
  %37 = getelementptr i8, ptr %36, i64 %29
  %38 = add i64 %1, 3
  %39 = lshr i64 %38, 2
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  %42 = getelementptr inbounds i8, ptr %41, i64 %39
  %43 = load i32, ptr %4, align 4
  %44 = lshr i32 %43, 16
  %45 = icmp ugt i64 %32, %3
  %46 = icmp ugt ptr %42, %19
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %1267, label %48

48:                                               ; preds = %18
  %49 = icmp eq i16 %22, 0
  br i1 %49, label %1267, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, ptr %2, i64 14
  %52 = icmp ugt i16 %22, 7
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %35, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %1267, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %35, i64 -8
  %59 = load i64, ptr %58, align 1, !tbaa !27
  %60 = zext i8 %55 to i32
  %61 = tail call i32 @llvm.ctlz.i32(i32 %60, i1 true), !range !81
  %62 = xor i32 %61, 31
  %63 = sub nuw nsw i32 8, %62
  br label %120

64:                                               ; preds = %50
  %65 = load i8, ptr %34, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  switch i16 %22, label %108 [
    i16 7, label %67
    i16 6, label %73
    i16 5, label %80
    i16 4, label %87
    i16 3, label %94
    i16 2, label %101
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %2, i64 12
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 48
  %72 = or disjoint i64 %71, %66
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i64 [ %66, %64 ], [ %72, %67 ]
  %75 = getelementptr inbounds i8, ptr %2, i64 11
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 40
  %79 = add nuw nsw i64 %78, %74
  br label %80

80:                                               ; preds = %73, %64
  %81 = phi i64 [ %66, %64 ], [ %79, %73 ]
  %82 = getelementptr inbounds i8, ptr %2, i64 10
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 32
  %86 = add nuw nsw i64 %85, %81
  br label %87

87:                                               ; preds = %80, %64
  %88 = phi i64 [ %66, %64 ], [ %86, %80 ]
  %89 = getelementptr inbounds i8, ptr %2, i64 9
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 24
  %93 = add nuw nsw i64 %92, %88
  br label %94

94:                                               ; preds = %87, %64
  %95 = phi i64 [ %66, %64 ], [ %93, %87 ]
  %96 = getelementptr inbounds i8, ptr %2, i64 8
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = add nuw nsw i64 %99, %95
  br label %101

101:                                              ; preds = %94, %64
  %102 = phi i64 [ %66, %64 ], [ %100, %94 ]
  %103 = getelementptr inbounds i8, ptr %2, i64 7
  %104 = load i8, ptr %103, align 1, !tbaa !9
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 8
  %107 = add nuw nsw i64 %106, %102
  br label %108

108:                                              ; preds = %101, %64
  %109 = phi i64 [ %66, %64 ], [ %107, %101 ]
  %110 = getelementptr i8, ptr %35, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %1267, label %113

113:                                              ; preds = %108
  %114 = zext i8 %111 to i32
  %115 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 true), !range !81
  %116 = shl nuw nsw i16 %22, 3
  %117 = zext nneg i16 %116 to i32
  %118 = sub nsw i32 %115, %117
  %119 = add nsw i32 %118, 41
  br label %120

120:                                              ; preds = %113, %57
  %121 = phi ptr [ %58, %57 ], [ %34, %113 ]
  %122 = phi i32 [ %63, %57 ], [ %119, %113 ]
  %123 = phi i64 [ %59, %57 ], [ %109, %113 ]
  %124 = icmp eq i16 %25, 0
  br i1 %124, label %1267, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %35, i64 8
  %127 = icmp ugt i16 %25, 7
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %36, i64 -1
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %1267, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %36, i64 -8
  %134 = load i64, ptr %133, align 1, !tbaa !27
  %135 = zext i8 %130 to i32
  %136 = tail call i32 @llvm.ctlz.i32(i32 %135, i1 true), !range !81
  %137 = xor i32 %136, 31
  %138 = sub nuw nsw i32 8, %137
  br label %195

139:                                              ; preds = %125
  %140 = load i8, ptr %35, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  switch i16 %25, label %183 [
    i16 7, label %142
    i16 6, label %148
    i16 5, label %155
    i16 4, label %162
    i16 3, label %169
    i16 2, label %176
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, ptr %35, i64 6
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 48
  %147 = or disjoint i64 %146, %141
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi i64 [ %141, %139 ], [ %147, %142 ]
  %150 = getelementptr inbounds i8, ptr %35, i64 5
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 40
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %139
  %156 = phi i64 [ %141, %139 ], [ %154, %148 ]
  %157 = getelementptr inbounds i8, ptr %35, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 32
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %139
  %163 = phi i64 [ %141, %139 ], [ %161, %155 ]
  %164 = getelementptr inbounds i8, ptr %35, i64 3
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %139
  %170 = phi i64 [ %141, %139 ], [ %168, %162 ]
  %171 = getelementptr inbounds i8, ptr %35, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 16
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %139
  %177 = phi i64 [ %141, %139 ], [ %175, %169 ]
  %178 = getelementptr inbounds i8, ptr %35, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 8
  %182 = add nuw nsw i64 %181, %177
  br label %183

183:                                              ; preds = %176, %139
  %184 = phi i64 [ %141, %139 ], [ %182, %176 ]
  %185 = getelementptr i8, ptr %36, i64 -1
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %1267, label %188

188:                                              ; preds = %183
  %189 = zext i8 %186 to i32
  %190 = tail call i32 @llvm.ctlz.i32(i32 %189, i1 true), !range !81
  %191 = shl nuw nsw i16 %25, 3
  %192 = zext nneg i16 %191 to i32
  %193 = sub nsw i32 %190, %192
  %194 = add nsw i32 %193, 41
  br label %195

195:                                              ; preds = %188, %132
  %196 = phi i64 [ %134, %132 ], [ %184, %188 ]
  %197 = phi i32 [ %138, %132 ], [ %194, %188 ]
  %198 = phi ptr [ %133, %132 ], [ %35, %188 ]
  %199 = icmp eq i16 %28, 0
  br i1 %199, label %1267, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, ptr %36, i64 8
  %202 = icmp ugt i16 %28, 7
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = getelementptr i8, ptr %37, i64 -1
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %1267, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds i8, ptr %37, i64 -8
  %209 = load i64, ptr %208, align 1, !tbaa !27
  %210 = zext i8 %205 to i32
  %211 = tail call i32 @llvm.ctlz.i32(i32 %210, i1 true), !range !81
  %212 = xor i32 %211, 31
  %213 = sub nuw nsw i32 8, %212
  br label %270

214:                                              ; preds = %200
  %215 = load i8, ptr %36, align 1, !tbaa !9
  %216 = zext i8 %215 to i64
  switch i16 %28, label %258 [
    i16 7, label %217
    i16 6, label %223
    i16 5, label %230
    i16 4, label %237
    i16 3, label %244
    i16 2, label %251
  ]

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %36, i64 6
  %219 = load i8, ptr %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 48
  %222 = or disjoint i64 %221, %216
  br label %223

223:                                              ; preds = %217, %214
  %224 = phi i64 [ %216, %214 ], [ %222, %217 ]
  %225 = getelementptr inbounds i8, ptr %36, i64 5
  %226 = load i8, ptr %225, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 40
  %229 = add nuw nsw i64 %228, %224
  br label %230

230:                                              ; preds = %223, %214
  %231 = phi i64 [ %216, %214 ], [ %229, %223 ]
  %232 = getelementptr inbounds i8, ptr %36, i64 4
  %233 = load i8, ptr %232, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 32
  %236 = add nuw nsw i64 %235, %231
  br label %237

237:                                              ; preds = %230, %214
  %238 = phi i64 [ %216, %214 ], [ %236, %230 ]
  %239 = getelementptr inbounds i8, ptr %36, i64 3
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = shl nuw nsw i64 %241, 24
  %243 = add nuw nsw i64 %242, %238
  br label %244

244:                                              ; preds = %237, %214
  %245 = phi i64 [ %216, %214 ], [ %243, %237 ]
  %246 = getelementptr inbounds i8, ptr %36, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 16
  %250 = add nuw nsw i64 %249, %245
  br label %251

251:                                              ; preds = %244, %214
  %252 = phi i64 [ %216, %214 ], [ %250, %244 ]
  %253 = getelementptr inbounds i8, ptr %36, i64 1
  %254 = load i8, ptr %253, align 1, !tbaa !9
  %255 = zext i8 %254 to i64
  %256 = shl nuw nsw i64 %255, 8
  %257 = add nuw nsw i64 %256, %252
  br label %258

258:                                              ; preds = %251, %214
  %259 = phi i64 [ %216, %214 ], [ %257, %251 ]
  %260 = getelementptr i8, ptr %37, i64 -1
  %261 = load i8, ptr %260, align 1, !tbaa !9
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %1267, label %263

263:                                              ; preds = %258
  %264 = zext i8 %261 to i32
  %265 = tail call i32 @llvm.ctlz.i32(i32 %264, i1 true), !range !81
  %266 = shl nuw nsw i16 %28, 3
  %267 = zext nneg i16 %266 to i32
  %268 = sub nsw i32 %265, %267
  %269 = add nsw i32 %268, 41
  br label %270

270:                                              ; preds = %263, %207
  %271 = phi i64 [ %209, %207 ], [ %259, %263 ]
  %272 = phi i32 [ %213, %207 ], [ %269, %263 ]
  %273 = phi ptr [ %208, %207 ], [ %36, %263 ]
  %274 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %8, ptr noundef nonnull %37, i64 noundef %33), !range !99
  %275 = icmp ult i64 %274, -119
  br i1 %275, label %276, label %1267

276:                                              ; preds = %270
  %277 = ptrtoint ptr %19 to i64
  %278 = ptrtoint ptr %42 to i64
  %279 = sub i64 %277, %278
  %280 = icmp ugt i64 %279, 7
  %281 = icmp ult ptr %42, %20
  %282 = select i1 %280, i1 %281, i1 false
  br i1 %282, label %283, label %538

283:                                              ; preds = %276
  %284 = load i64, ptr %8, align 8, !tbaa !100
  %285 = sub nsw i32 0, %44
  %286 = and i32 %285, 63
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 1
  %289 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  %290 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !103
  %292 = load i32, ptr %288, align 8, !tbaa !104
  %293 = load ptr, ptr %289, align 8, !tbaa !105
  br label %294

294:                                              ; preds = %524, %283
  %295 = phi ptr [ %293, %283 ], [ %528, %524 ]
  %296 = phi i32 [ %292, %283 ], [ %529, %524 ]
  %297 = phi ptr [ %0, %283 ], [ %453, %524 ]
  %298 = phi ptr [ %40, %283 ], [ %464, %524 ]
  %299 = phi ptr [ %41, %283 ], [ %475, %524 ]
  %300 = phi ptr [ %42, %283 ], [ %486, %524 ]
  %301 = phi ptr [ %273, %283 ], [ %522, %524 ]
  %302 = phi i64 [ %123, %283 ], [ %498, %524 ]
  %303 = phi i32 [ %272, %283 ], [ %521, %524 ]
  %304 = phi i64 [ %271, %283 ], [ %520, %524 ]
  %305 = phi ptr [ %198, %283 ], [ %510, %524 ]
  %306 = phi i32 [ %122, %283 ], [ %497, %524 ]
  %307 = phi i32 [ %197, %283 ], [ %509, %524 ]
  %308 = phi i64 [ %196, %283 ], [ %508, %524 ]
  %309 = phi ptr [ %121, %283 ], [ %496, %524 ]
  %310 = phi i64 [ %284, %283 ], [ %530, %524 ]
  %311 = and i32 %306, 63
  %312 = zext nneg i32 %311 to i64
  %313 = shl i64 %302, %312
  %314 = lshr i64 %313, %287
  %315 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %314
  %316 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %314, i32 1
  %317 = load i8, ptr %316, align 1, !tbaa !94
  %318 = load i8, ptr %315, align 1, !tbaa !96
  %319 = zext i8 %318 to i32
  %320 = add i32 %306, %319
  %321 = getelementptr inbounds i8, ptr %297, i64 1
  store i8 %317, ptr %297, align 1, !tbaa !9
  %322 = and i32 %307, 63
  %323 = zext nneg i32 %322 to i64
  %324 = shl i64 %308, %323
  %325 = lshr i64 %324, %287
  %326 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %325
  %327 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %325, i32 1
  %328 = load i8, ptr %327, align 1, !tbaa !94
  %329 = load i8, ptr %326, align 1, !tbaa !96
  %330 = zext i8 %329 to i32
  %331 = add i32 %307, %330
  %332 = getelementptr inbounds i8, ptr %298, i64 1
  store i8 %328, ptr %298, align 1, !tbaa !9
  %333 = and i32 %303, 63
  %334 = zext nneg i32 %333 to i64
  %335 = shl i64 %304, %334
  %336 = lshr i64 %335, %287
  %337 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %336
  %338 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %336, i32 1
  %339 = load i8, ptr %338, align 1, !tbaa !94
  %340 = load i8, ptr %337, align 1, !tbaa !96
  %341 = zext i8 %340 to i32
  %342 = add i32 %303, %341
  %343 = getelementptr inbounds i8, ptr %299, i64 1
  store i8 %339, ptr %299, align 1, !tbaa !9
  %344 = and i32 %296, 63
  %345 = zext nneg i32 %344 to i64
  %346 = shl i64 %310, %345
  %347 = lshr i64 %346, %287
  %348 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %347
  %349 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %347, i32 1
  %350 = load i8, ptr %349, align 1, !tbaa !94
  %351 = load i8, ptr %348, align 1, !tbaa !96
  %352 = zext i8 %351 to i32
  %353 = add i32 %296, %352
  store i8 %350, ptr %300, align 1, !tbaa !9
  %354 = getelementptr inbounds i8, ptr %300, i64 1
  %355 = and i32 %320, 63
  %356 = zext nneg i32 %355 to i64
  %357 = shl i64 %302, %356
  %358 = lshr i64 %357, %287
  %359 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %358
  %360 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %358, i32 1
  %361 = load i8, ptr %360, align 1, !tbaa !94
  %362 = load i8, ptr %359, align 1, !tbaa !96
  %363 = zext i8 %362 to i32
  %364 = add i32 %320, %363
  store i8 %361, ptr %321, align 1, !tbaa !9
  %365 = and i32 %331, 63
  %366 = zext nneg i32 %365 to i64
  %367 = shl i64 %308, %366
  %368 = lshr i64 %367, %287
  %369 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %368
  %370 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %368, i32 1
  %371 = load i8, ptr %370, align 1, !tbaa !94
  %372 = load i8, ptr %369, align 1, !tbaa !96
  %373 = zext i8 %372 to i32
  %374 = add i32 %331, %373
  %375 = getelementptr inbounds i8, ptr %298, i64 2
  store i8 %371, ptr %332, align 1, !tbaa !9
  %376 = and i32 %342, 63
  %377 = zext nneg i32 %376 to i64
  %378 = shl i64 %304, %377
  %379 = lshr i64 %378, %287
  %380 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %379
  %381 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %379, i32 1
  %382 = load i8, ptr %381, align 1, !tbaa !94
  %383 = load i8, ptr %380, align 1, !tbaa !96
  %384 = zext i8 %383 to i32
  %385 = add i32 %342, %384
  %386 = getelementptr inbounds i8, ptr %299, i64 2
  store i8 %382, ptr %343, align 1, !tbaa !9
  %387 = and i32 %353, 63
  %388 = zext nneg i32 %387 to i64
  %389 = shl i64 %310, %388
  %390 = lshr i64 %389, %287
  %391 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %390
  %392 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %390, i32 1
  %393 = load i8, ptr %392, align 1, !tbaa !94
  %394 = load i8, ptr %391, align 1, !tbaa !96
  %395 = zext i8 %394 to i32
  %396 = add i32 %353, %395
  %397 = getelementptr inbounds i8, ptr %300, i64 2
  store i8 %393, ptr %354, align 1, !tbaa !9
  %398 = getelementptr inbounds i8, ptr %297, i64 2
  %399 = and i32 %364, 63
  %400 = zext nneg i32 %399 to i64
  %401 = shl i64 %302, %400
  %402 = lshr i64 %401, %287
  %403 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %402
  %404 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %402, i32 1
  %405 = load i8, ptr %404, align 1, !tbaa !94
  %406 = load i8, ptr %403, align 1, !tbaa !96
  %407 = zext i8 %406 to i32
  %408 = add i32 %364, %407
  %409 = getelementptr inbounds i8, ptr %297, i64 3
  store i8 %405, ptr %398, align 1, !tbaa !9
  %410 = and i32 %374, 63
  %411 = zext nneg i32 %410 to i64
  %412 = shl i64 %308, %411
  %413 = lshr i64 %412, %287
  %414 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %413
  %415 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %413, i32 1
  %416 = load i8, ptr %415, align 1, !tbaa !94
  %417 = load i8, ptr %414, align 1, !tbaa !96
  %418 = zext i8 %417 to i32
  %419 = add i32 %374, %418
  %420 = getelementptr inbounds i8, ptr %298, i64 3
  store i8 %416, ptr %375, align 1, !tbaa !9
  %421 = and i32 %385, 63
  %422 = zext nneg i32 %421 to i64
  %423 = shl i64 %304, %422
  %424 = lshr i64 %423, %287
  %425 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %424
  %426 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %424, i32 1
  %427 = load i8, ptr %426, align 1, !tbaa !94
  %428 = load i8, ptr %425, align 1, !tbaa !96
  %429 = zext i8 %428 to i32
  %430 = add i32 %385, %429
  %431 = getelementptr inbounds i8, ptr %299, i64 3
  store i8 %427, ptr %386, align 1, !tbaa !9
  %432 = and i32 %396, 63
  %433 = zext nneg i32 %432 to i64
  %434 = shl i64 %310, %433
  %435 = lshr i64 %434, %287
  %436 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %435
  %437 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %435, i32 1
  %438 = load i8, ptr %437, align 1, !tbaa !94
  %439 = load i8, ptr %436, align 1, !tbaa !96
  %440 = zext i8 %439 to i32
  %441 = add i32 %396, %440
  store i8 %438, ptr %397, align 1, !tbaa !9
  %442 = getelementptr inbounds i8, ptr %300, i64 3
  %443 = and i32 %408, 63
  %444 = zext nneg i32 %443 to i64
  %445 = shl i64 %302, %444
  %446 = lshr i64 %445, %287
  %447 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %446
  %448 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %446, i32 1
  %449 = load i8, ptr %448, align 1, !tbaa !94
  %450 = load i8, ptr %447, align 1, !tbaa !96
  %451 = zext i8 %450 to i32
  %452 = add i32 %408, %451
  %453 = getelementptr inbounds i8, ptr %297, i64 4
  store i8 %449, ptr %409, align 1, !tbaa !9
  %454 = and i32 %419, 63
  %455 = zext nneg i32 %454 to i64
  %456 = shl i64 %308, %455
  %457 = lshr i64 %456, %287
  %458 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %457
  %459 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %457, i32 1
  %460 = load i8, ptr %459, align 1, !tbaa !94
  %461 = load i8, ptr %458, align 1, !tbaa !96
  %462 = zext i8 %461 to i32
  %463 = add i32 %419, %462
  %464 = getelementptr inbounds i8, ptr %298, i64 4
  store i8 %460, ptr %420, align 1, !tbaa !9
  %465 = and i32 %430, 63
  %466 = zext nneg i32 %465 to i64
  %467 = shl i64 %304, %466
  %468 = lshr i64 %467, %287
  %469 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %468
  %470 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %468, i32 1
  %471 = load i8, ptr %470, align 1, !tbaa !94
  %472 = load i8, ptr %469, align 1, !tbaa !96
  %473 = zext i8 %472 to i32
  %474 = add i32 %430, %473
  %475 = getelementptr inbounds i8, ptr %299, i64 4
  store i8 %471, ptr %431, align 1, !tbaa !9
  %476 = and i32 %441, 63
  %477 = zext nneg i32 %476 to i64
  %478 = shl i64 %310, %477
  %479 = lshr i64 %478, %287
  %480 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %479
  %481 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %479, i32 1
  %482 = load i8, ptr %481, align 1, !tbaa !94
  %483 = load i8, ptr %480, align 1, !tbaa !96
  %484 = zext i8 %483 to i32
  %485 = add i32 %441, %484
  %486 = getelementptr inbounds i8, ptr %300, i64 4
  store i8 %482, ptr %442, align 1, !tbaa !9
  %487 = icmp uge ptr %309, %51
  br i1 %487, label %488, label %495, !prof !106

488:                                              ; preds = %294
  %489 = lshr i32 %452, 3
  %490 = zext nneg i32 %489 to i64
  %491 = sub nsw i64 0, %490
  %492 = getelementptr inbounds i8, ptr %309, i64 %491
  %493 = and i32 %452, 7
  %494 = load i64, ptr %492, align 1, !tbaa !27
  br label %495

495:                                              ; preds = %488, %294
  %496 = phi ptr [ %309, %294 ], [ %492, %488 ]
  %497 = phi i32 [ %452, %294 ], [ %493, %488 ]
  %498 = phi i64 [ %302, %294 ], [ %494, %488 ]
  %499 = icmp uge ptr %305, %126
  br i1 %499, label %500, label %507, !prof !106

500:                                              ; preds = %495
  %501 = lshr i32 %463, 3
  %502 = zext nneg i32 %501 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %305, i64 %503
  %505 = and i32 %463, 7
  %506 = load i64, ptr %504, align 1, !tbaa !27
  br label %507

507:                                              ; preds = %500, %495
  %508 = phi i64 [ %308, %495 ], [ %506, %500 ]
  %509 = phi i32 [ %463, %495 ], [ %505, %500 ]
  %510 = phi ptr [ %305, %495 ], [ %504, %500 ]
  %511 = icmp uge ptr %301, %201
  br i1 %511, label %512, label %519, !prof !106

512:                                              ; preds = %507
  %513 = lshr i32 %474, 3
  %514 = zext nneg i32 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %301, i64 %515
  %517 = and i32 %474, 7
  %518 = load i64, ptr %516, align 1, !tbaa !27
  br label %519

519:                                              ; preds = %512, %507
  %520 = phi i64 [ %304, %507 ], [ %518, %512 ]
  %521 = phi i32 [ %474, %507 ], [ %517, %512 ]
  %522 = phi ptr [ %301, %507 ], [ %516, %512 ]
  %523 = icmp ult ptr %295, %291
  br i1 %523, label %535, label %524, !prof !107

524:                                              ; preds = %519
  %525 = lshr i32 %485, 3
  %526 = zext nneg i32 %525 to i64
  %527 = sub nsw i64 0, %526
  %528 = getelementptr inbounds i8, ptr %295, i64 %527
  %529 = and i32 %485, 7
  %530 = load i64, ptr %528, align 1, !tbaa !27
  store i64 %530, ptr %8, align 8, !tbaa !100
  %531 = icmp ult ptr %486, %20
  %532 = and i1 %511, %531
  %533 = and i1 %532, %499
  %534 = and i1 %533, %487
  br i1 %534, label %294, label %535, !llvm.loop !110

535:                                              ; preds = %519, %524
  %536 = phi i32 [ %529, %524 ], [ %485, %519 ]
  %537 = phi ptr [ %528, %524 ], [ %295, %519 ]
  store i32 %536, ptr %288, align 8, !tbaa !104
  store ptr %537, ptr %289, align 8, !tbaa !105
  br label %538

538:                                              ; preds = %535, %276
  %539 = phi ptr [ %121, %276 ], [ %496, %535 ]
  %540 = phi i64 [ %196, %276 ], [ %508, %535 ]
  %541 = phi i32 [ %197, %276 ], [ %509, %535 ]
  %542 = phi i32 [ %122, %276 ], [ %497, %535 ]
  %543 = phi ptr [ %198, %276 ], [ %510, %535 ]
  %544 = phi i64 [ %271, %276 ], [ %520, %535 ]
  %545 = phi i32 [ %272, %276 ], [ %521, %535 ]
  %546 = phi i64 [ %123, %276 ], [ %498, %535 ]
  %547 = phi ptr [ %273, %276 ], [ %522, %535 ]
  %548 = phi ptr [ %42, %276 ], [ %486, %535 ]
  %549 = phi ptr [ %41, %276 ], [ %475, %535 ]
  %550 = phi ptr [ %40, %276 ], [ %464, %535 ]
  %551 = phi ptr [ %0, %276 ], [ %453, %535 ]
  %552 = icmp ugt ptr %551, %40
  %553 = icmp ugt ptr %550, %41
  %554 = select i1 %552, i1 true, i1 %553
  %555 = icmp ugt ptr %549, %42
  %556 = select i1 %554, i1 true, i1 %555
  br i1 %556, label %1267, label %557

557:                                              ; preds = %538
  %558 = ptrtoint ptr %40 to i64
  %559 = ptrtoint ptr %551 to i64
  %560 = sub i64 %558, %559
  %561 = icmp sgt i64 %560, 3
  %562 = icmp ugt i32 %542, 64
  br i1 %561, label %563, label %651

563:                                              ; preds = %557
  br i1 %562, label %679, label %564, !prof !88

564:                                              ; preds = %563
  %565 = ptrtoint ptr %34 to i64
  %566 = getelementptr inbounds i8, ptr %40, i64 -3
  %567 = sub nsw i32 0, %44
  %568 = and i32 %567, 63
  %569 = zext nneg i32 %568 to i64
  br label %570

570:                                              ; preds = %605, %564
  %571 = phi ptr [ %551, %564 ], [ %649, %605 ]
  %572 = phi i64 [ %546, %564 ], [ %601, %605 ]
  %573 = phi i32 [ %542, %564 ], [ %648, %605 ]
  %574 = phi ptr [ %539, %564 ], [ %600, %605 ]
  %575 = icmp ult ptr %574, %51
  br i1 %575, label %579, label %576

576:                                              ; preds = %570
  %577 = lshr i32 %573, 3
  %578 = and i32 %573, 7
  br label %594

579:                                              ; preds = %570
  %580 = icmp eq ptr %574, %34
  br i1 %580, label %679, label %581

581:                                              ; preds = %579
  %582 = lshr i32 %573, 3
  %583 = zext nneg i32 %582 to i64
  %584 = sub nsw i64 0, %583
  %585 = getelementptr inbounds i8, ptr %574, i64 %584
  %586 = icmp ult ptr %585, %34
  %587 = ptrtoint ptr %574 to i64
  %588 = sub i64 %587, %565
  %589 = trunc i64 %588 to i32
  %590 = select i1 %586, i32 %589, i32 %582
  %591 = zext i1 %586 to i32
  %592 = shl i32 %590, 3
  %593 = sub i32 %573, %592
  br label %594

594:                                              ; preds = %581, %576
  %595 = phi i32 [ %590, %581 ], [ %577, %576 ]
  %596 = phi i32 [ %593, %581 ], [ %578, %576 ]
  %597 = phi i32 [ %591, %581 ], [ 0, %576 ]
  %598 = zext i32 %595 to i64
  %599 = sub nsw i64 0, %598
  %600 = getelementptr inbounds i8, ptr %574, i64 %599
  %601 = load i64, ptr %600, align 1, !tbaa !27
  %602 = icmp eq i32 %597, 0
  %603 = icmp ult ptr %571, %566
  %604 = and i1 %603, %602
  br i1 %604, label %605, label %679

605:                                              ; preds = %594
  %606 = and i32 %596, 63
  %607 = zext nneg i32 %606 to i64
  %608 = shl i64 %601, %607
  %609 = lshr i64 %608, %569
  %610 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %609
  %611 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %609, i32 1
  %612 = load i8, ptr %611, align 1, !tbaa !94
  %613 = load i8, ptr %610, align 1, !tbaa !96
  %614 = zext i8 %613 to i32
  %615 = add i32 %596, %614
  store i8 %612, ptr %571, align 1, !tbaa !9
  %616 = getelementptr inbounds i8, ptr %571, i64 1
  %617 = and i32 %615, 63
  %618 = zext nneg i32 %617 to i64
  %619 = shl i64 %601, %618
  %620 = lshr i64 %619, %569
  %621 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %620
  %622 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %620, i32 1
  %623 = load i8, ptr %622, align 1, !tbaa !94
  %624 = load i8, ptr %621, align 1, !tbaa !96
  %625 = zext i8 %624 to i32
  %626 = add i32 %615, %625
  store i8 %623, ptr %616, align 1, !tbaa !9
  %627 = getelementptr inbounds i8, ptr %571, i64 2
  %628 = and i32 %626, 63
  %629 = zext nneg i32 %628 to i64
  %630 = shl i64 %601, %629
  %631 = lshr i64 %630, %569
  %632 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %631
  %633 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %631, i32 1
  %634 = load i8, ptr %633, align 1, !tbaa !94
  %635 = load i8, ptr %632, align 1, !tbaa !96
  %636 = zext i8 %635 to i32
  %637 = add i32 %626, %636
  store i8 %634, ptr %627, align 1, !tbaa !9
  %638 = getelementptr inbounds i8, ptr %571, i64 3
  %639 = and i32 %637, 63
  %640 = zext nneg i32 %639 to i64
  %641 = shl i64 %601, %640
  %642 = lshr i64 %641, %569
  %643 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %642
  %644 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %642, i32 1
  %645 = load i8, ptr %644, align 1, !tbaa !94
  %646 = load i8, ptr %643, align 1, !tbaa !96
  %647 = zext i8 %646 to i32
  %648 = add i32 %637, %647
  %649 = getelementptr inbounds i8, ptr %571, i64 4
  store i8 %645, ptr %638, align 1, !tbaa !9
  %650 = icmp ugt i32 %648, 64
  br i1 %650, label %679, label %570, !prof !85, !llvm.loop !97

651:                                              ; preds = %557
  br i1 %562, label %679, label %652, !prof !107

652:                                              ; preds = %651
  %653 = icmp ult ptr %539, %51
  br i1 %653, label %657, label %654

654:                                              ; preds = %652
  %655 = lshr i32 %542, 3
  %656 = and i32 %542, 7
  br label %672

657:                                              ; preds = %652
  %658 = icmp eq ptr %539, %34
  br i1 %658, label %679, label %659

659:                                              ; preds = %657
  %660 = lshr i32 %542, 3
  %661 = zext nneg i32 %660 to i64
  %662 = sub nsw i64 0, %661
  %663 = getelementptr inbounds i8, ptr %539, i64 %662
  %664 = icmp ult ptr %663, %34
  %665 = ptrtoint ptr %539 to i64
  %666 = ptrtoint ptr %34 to i64
  %667 = sub i64 %665, %666
  %668 = trunc i64 %667 to i32
  %669 = select i1 %664, i32 %668, i32 %660
  %670 = shl i32 %669, 3
  %671 = sub i32 %542, %670
  br label %672

672:                                              ; preds = %659, %654
  %673 = phi i32 [ %655, %654 ], [ %669, %659 ]
  %674 = phi i32 [ %656, %654 ], [ %671, %659 ]
  %675 = zext i32 %673 to i64
  %676 = sub nsw i64 0, %675
  %677 = getelementptr inbounds i8, ptr %539, i64 %676
  %678 = load i64, ptr %677, align 1, !tbaa !27
  br label %679

679:                                              ; preds = %605, %594, %579, %672, %657, %651, %563
  %680 = phi ptr [ @BIT_reloadDStream.zeroFilled, %651 ], [ %34, %657 ], [ @BIT_reloadDStream.zeroFilled, %563 ], [ %677, %672 ], [ %34, %579 ], [ @BIT_reloadDStream.zeroFilled, %605 ], [ %600, %594 ]
  %681 = phi i32 [ %542, %651 ], [ %542, %657 ], [ %542, %563 ], [ %674, %672 ], [ %573, %579 ], [ %648, %605 ], [ %596, %594 ]
  %682 = phi i64 [ %546, %651 ], [ %546, %657 ], [ %546, %563 ], [ %678, %672 ], [ %572, %579 ], [ %601, %605 ], [ %601, %594 ]
  %683 = phi ptr [ %551, %651 ], [ %551, %657 ], [ %551, %563 ], [ %551, %672 ], [ %571, %579 ], [ %649, %605 ], [ %571, %594 ]
  %684 = icmp ult ptr %683, %40
  br i1 %684, label %685, label %738

685:                                              ; preds = %679
  %686 = ptrtoint ptr %683 to i64
  %687 = sub nsw i32 0, %44
  %688 = and i32 %687, 63
  %689 = zext nneg i32 %688 to i64
  %690 = add i64 %39, %7
  %691 = sub i64 %690, %686
  %692 = add i64 %686, 1
  %693 = and i64 %691, 1
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %707, label %695

695:                                              ; preds = %685
  %696 = and i32 %681, 63
  %697 = zext nneg i32 %696 to i64
  %698 = shl i64 %682, %697
  %699 = lshr i64 %698, %689
  %700 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %699
  %701 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %699, i32 1
  %702 = load i8, ptr %701, align 1, !tbaa !94
  %703 = load i8, ptr %700, align 1, !tbaa !96
  %704 = zext i8 %703 to i32
  %705 = add i32 %681, %704
  %706 = getelementptr inbounds i8, ptr %683, i64 1
  store i8 %702, ptr %683, align 1, !tbaa !9
  br label %707

707:                                              ; preds = %695, %685
  %708 = phi ptr [ %683, %685 ], [ %706, %695 ]
  %709 = phi i32 [ %681, %685 ], [ %705, %695 ]
  %710 = phi i32 [ undef, %685 ], [ %705, %695 ]
  %711 = icmp eq i64 %690, %692
  br i1 %711, label %738, label %712

712:                                              ; preds = %707, %712
  %713 = phi ptr [ %736, %712 ], [ %708, %707 ]
  %714 = phi i32 [ %735, %712 ], [ %709, %707 ]
  %715 = and i32 %714, 63
  %716 = zext nneg i32 %715 to i64
  %717 = shl i64 %682, %716
  %718 = lshr i64 %717, %689
  %719 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %718
  %720 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %718, i32 1
  %721 = load i8, ptr %720, align 1, !tbaa !94
  %722 = load i8, ptr %719, align 1, !tbaa !96
  %723 = zext i8 %722 to i32
  %724 = add i32 %714, %723
  %725 = getelementptr inbounds i8, ptr %713, i64 1
  store i8 %721, ptr %713, align 1, !tbaa !9
  %726 = and i32 %724, 63
  %727 = zext nneg i32 %726 to i64
  %728 = shl i64 %682, %727
  %729 = lshr i64 %728, %689
  %730 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %729
  %731 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %729, i32 1
  %732 = load i8, ptr %731, align 1, !tbaa !94
  %733 = load i8, ptr %730, align 1, !tbaa !96
  %734 = zext i8 %733 to i32
  %735 = add i32 %724, %734
  %736 = getelementptr inbounds i8, ptr %713, i64 2
  store i8 %732, ptr %725, align 1, !tbaa !9
  %737 = icmp ult ptr %736, %40
  br i1 %737, label %712, label %738, !llvm.loop !98

738:                                              ; preds = %707, %712, %679
  %739 = phi i32 [ %681, %679 ], [ %710, %707 ], [ %735, %712 ]
  %740 = ptrtoint ptr %41 to i64
  %741 = ptrtoint ptr %550 to i64
  %742 = sub i64 %740, %741
  %743 = icmp sgt i64 %742, 3
  %744 = icmp ugt i32 %541, 64
  br i1 %743, label %745, label %833

745:                                              ; preds = %738
  br i1 %744, label %861, label %746, !prof !88

746:                                              ; preds = %745
  %747 = ptrtoint ptr %35 to i64
  %748 = getelementptr inbounds i8, ptr %41, i64 -3
  %749 = sub nsw i32 0, %44
  %750 = and i32 %749, 63
  %751 = zext nneg i32 %750 to i64
  br label %752

752:                                              ; preds = %787, %746
  %753 = phi ptr [ %550, %746 ], [ %831, %787 ]
  %754 = phi ptr [ %543, %746 ], [ %782, %787 ]
  %755 = phi i32 [ %541, %746 ], [ %830, %787 ]
  %756 = phi i64 [ %540, %746 ], [ %783, %787 ]
  %757 = icmp ult ptr %754, %126
  br i1 %757, label %761, label %758

758:                                              ; preds = %752
  %759 = lshr i32 %755, 3
  %760 = and i32 %755, 7
  br label %776

761:                                              ; preds = %752
  %762 = icmp eq ptr %754, %35
  br i1 %762, label %861, label %763

763:                                              ; preds = %761
  %764 = lshr i32 %755, 3
  %765 = zext nneg i32 %764 to i64
  %766 = sub nsw i64 0, %765
  %767 = getelementptr inbounds i8, ptr %754, i64 %766
  %768 = icmp ult ptr %767, %35
  %769 = ptrtoint ptr %754 to i64
  %770 = sub i64 %769, %747
  %771 = trunc i64 %770 to i32
  %772 = select i1 %768, i32 %771, i32 %764
  %773 = zext i1 %768 to i32
  %774 = shl i32 %772, 3
  %775 = sub i32 %755, %774
  br label %776

776:                                              ; preds = %763, %758
  %777 = phi i32 [ %775, %763 ], [ %760, %758 ]
  %778 = phi i32 [ %772, %763 ], [ %759, %758 ]
  %779 = phi i32 [ %773, %763 ], [ 0, %758 ]
  %780 = zext i32 %778 to i64
  %781 = sub nsw i64 0, %780
  %782 = getelementptr inbounds i8, ptr %754, i64 %781
  %783 = load i64, ptr %782, align 1, !tbaa !27
  %784 = icmp eq i32 %779, 0
  %785 = icmp ult ptr %753, %748
  %786 = and i1 %785, %784
  br i1 %786, label %787, label %861

787:                                              ; preds = %776
  %788 = and i32 %777, 63
  %789 = zext nneg i32 %788 to i64
  %790 = shl i64 %783, %789
  %791 = lshr i64 %790, %751
  %792 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %791
  %793 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %791, i32 1
  %794 = load i8, ptr %793, align 1, !tbaa !94
  %795 = load i8, ptr %792, align 1, !tbaa !96
  %796 = zext i8 %795 to i32
  %797 = add i32 %777, %796
  store i8 %794, ptr %753, align 1, !tbaa !9
  %798 = getelementptr inbounds i8, ptr %753, i64 1
  %799 = and i32 %797, 63
  %800 = zext nneg i32 %799 to i64
  %801 = shl i64 %783, %800
  %802 = lshr i64 %801, %751
  %803 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %802
  %804 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %802, i32 1
  %805 = load i8, ptr %804, align 1, !tbaa !94
  %806 = load i8, ptr %803, align 1, !tbaa !96
  %807 = zext i8 %806 to i32
  %808 = add i32 %797, %807
  store i8 %805, ptr %798, align 1, !tbaa !9
  %809 = getelementptr inbounds i8, ptr %753, i64 2
  %810 = and i32 %808, 63
  %811 = zext nneg i32 %810 to i64
  %812 = shl i64 %783, %811
  %813 = lshr i64 %812, %751
  %814 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %813
  %815 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %813, i32 1
  %816 = load i8, ptr %815, align 1, !tbaa !94
  %817 = load i8, ptr %814, align 1, !tbaa !96
  %818 = zext i8 %817 to i32
  %819 = add i32 %808, %818
  store i8 %816, ptr %809, align 1, !tbaa !9
  %820 = getelementptr inbounds i8, ptr %753, i64 3
  %821 = and i32 %819, 63
  %822 = zext nneg i32 %821 to i64
  %823 = shl i64 %783, %822
  %824 = lshr i64 %823, %751
  %825 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %824
  %826 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %824, i32 1
  %827 = load i8, ptr %826, align 1, !tbaa !94
  %828 = load i8, ptr %825, align 1, !tbaa !96
  %829 = zext i8 %828 to i32
  %830 = add i32 %819, %829
  %831 = getelementptr inbounds i8, ptr %753, i64 4
  store i8 %827, ptr %820, align 1, !tbaa !9
  %832 = icmp ugt i32 %830, 64
  br i1 %832, label %861, label %752, !prof !85, !llvm.loop !97

833:                                              ; preds = %738
  br i1 %744, label %861, label %834, !prof !107

834:                                              ; preds = %833
  %835 = icmp ult ptr %543, %126
  br i1 %835, label %839, label %836

836:                                              ; preds = %834
  %837 = lshr i32 %541, 3
  %838 = and i32 %541, 7
  br label %854

839:                                              ; preds = %834
  %840 = icmp eq ptr %543, %35
  br i1 %840, label %861, label %841

841:                                              ; preds = %839
  %842 = lshr i32 %541, 3
  %843 = zext nneg i32 %842 to i64
  %844 = sub nsw i64 0, %843
  %845 = getelementptr inbounds i8, ptr %543, i64 %844
  %846 = icmp ult ptr %845, %35
  %847 = ptrtoint ptr %543 to i64
  %848 = ptrtoint ptr %35 to i64
  %849 = sub i64 %847, %848
  %850 = trunc i64 %849 to i32
  %851 = select i1 %846, i32 %850, i32 %842
  %852 = shl i32 %851, 3
  %853 = sub i32 %541, %852
  br label %854

854:                                              ; preds = %841, %836
  %855 = phi i32 [ %837, %836 ], [ %851, %841 ]
  %856 = phi i32 [ %838, %836 ], [ %853, %841 ]
  %857 = zext i32 %855 to i64
  %858 = sub nsw i64 0, %857
  %859 = getelementptr inbounds i8, ptr %543, i64 %858
  %860 = load i64, ptr %859, align 1, !tbaa !27
  br label %861

861:                                              ; preds = %787, %776, %761, %854, %839, %833, %745
  %862 = phi i64 [ %540, %833 ], [ %540, %839 ], [ %540, %745 ], [ %860, %854 ], [ %756, %761 ], [ %783, %787 ], [ %783, %776 ]
  %863 = phi i32 [ %541, %833 ], [ %541, %839 ], [ %541, %745 ], [ %856, %854 ], [ %755, %761 ], [ %830, %787 ], [ %777, %776 ]
  %864 = phi ptr [ @BIT_reloadDStream.zeroFilled, %833 ], [ %35, %839 ], [ @BIT_reloadDStream.zeroFilled, %745 ], [ %859, %854 ], [ %35, %761 ], [ @BIT_reloadDStream.zeroFilled, %787 ], [ %782, %776 ]
  %865 = phi ptr [ %550, %833 ], [ %550, %839 ], [ %550, %745 ], [ %550, %854 ], [ %753, %761 ], [ %831, %787 ], [ %753, %776 ]
  %866 = icmp ult ptr %865, %41
  br i1 %866, label %867, label %886

867:                                              ; preds = %861
  %868 = sub nsw i32 0, %44
  %869 = and i32 %868, 63
  %870 = zext nneg i32 %869 to i64
  br label %871

871:                                              ; preds = %871, %867
  %872 = phi ptr [ %865, %867 ], [ %884, %871 ]
  %873 = phi i32 [ %863, %867 ], [ %883, %871 ]
  %874 = and i32 %873, 63
  %875 = zext nneg i32 %874 to i64
  %876 = shl i64 %862, %875
  %877 = lshr i64 %876, %870
  %878 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %877
  %879 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %877, i32 1
  %880 = load i8, ptr %879, align 1, !tbaa !94
  %881 = load i8, ptr %878, align 1, !tbaa !96
  %882 = zext i8 %881 to i32
  %883 = add i32 %873, %882
  %884 = getelementptr inbounds i8, ptr %872, i64 1
  store i8 %880, ptr %872, align 1, !tbaa !9
  %885 = icmp ult ptr %884, %41
  br i1 %885, label %871, label %886, !llvm.loop !98

886:                                              ; preds = %871, %861
  %887 = phi i32 [ %863, %861 ], [ %883, %871 ]
  %888 = ptrtoint ptr %549 to i64
  %889 = sub i64 %278, %888
  %890 = icmp sgt i64 %889, 3
  %891 = icmp ugt i32 %545, 64
  br i1 %890, label %892, label %980

892:                                              ; preds = %886
  br i1 %891, label %1008, label %893, !prof !88

893:                                              ; preds = %892
  %894 = ptrtoint ptr %36 to i64
  %895 = getelementptr inbounds i8, ptr %42, i64 -3
  %896 = sub nsw i32 0, %44
  %897 = and i32 %896, 63
  %898 = zext nneg i32 %897 to i64
  br label %899

899:                                              ; preds = %934, %893
  %900 = phi ptr [ %549, %893 ], [ %978, %934 ]
  %901 = phi ptr [ %547, %893 ], [ %929, %934 ]
  %902 = phi i32 [ %545, %893 ], [ %977, %934 ]
  %903 = phi i64 [ %544, %893 ], [ %930, %934 ]
  %904 = icmp ult ptr %901, %201
  br i1 %904, label %908, label %905

905:                                              ; preds = %899
  %906 = lshr i32 %902, 3
  %907 = and i32 %902, 7
  br label %923

908:                                              ; preds = %899
  %909 = icmp eq ptr %901, %36
  br i1 %909, label %1008, label %910

910:                                              ; preds = %908
  %911 = lshr i32 %902, 3
  %912 = zext nneg i32 %911 to i64
  %913 = sub nsw i64 0, %912
  %914 = getelementptr inbounds i8, ptr %901, i64 %913
  %915 = icmp ult ptr %914, %36
  %916 = ptrtoint ptr %901 to i64
  %917 = sub i64 %916, %894
  %918 = trunc i64 %917 to i32
  %919 = select i1 %915, i32 %918, i32 %911
  %920 = zext i1 %915 to i32
  %921 = shl i32 %919, 3
  %922 = sub i32 %902, %921
  br label %923

923:                                              ; preds = %910, %905
  %924 = phi i32 [ %922, %910 ], [ %907, %905 ]
  %925 = phi i32 [ %919, %910 ], [ %906, %905 ]
  %926 = phi i32 [ %920, %910 ], [ 0, %905 ]
  %927 = zext i32 %925 to i64
  %928 = sub nsw i64 0, %927
  %929 = getelementptr inbounds i8, ptr %901, i64 %928
  %930 = load i64, ptr %929, align 1, !tbaa !27
  %931 = icmp eq i32 %926, 0
  %932 = icmp ult ptr %900, %895
  %933 = and i1 %932, %931
  br i1 %933, label %934, label %1008

934:                                              ; preds = %923
  %935 = and i32 %924, 63
  %936 = zext nneg i32 %935 to i64
  %937 = shl i64 %930, %936
  %938 = lshr i64 %937, %898
  %939 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %938
  %940 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %938, i32 1
  %941 = load i8, ptr %940, align 1, !tbaa !94
  %942 = load i8, ptr %939, align 1, !tbaa !96
  %943 = zext i8 %942 to i32
  %944 = add i32 %924, %943
  store i8 %941, ptr %900, align 1, !tbaa !9
  %945 = getelementptr inbounds i8, ptr %900, i64 1
  %946 = and i32 %944, 63
  %947 = zext nneg i32 %946 to i64
  %948 = shl i64 %930, %947
  %949 = lshr i64 %948, %898
  %950 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %949
  %951 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %949, i32 1
  %952 = load i8, ptr %951, align 1, !tbaa !94
  %953 = load i8, ptr %950, align 1, !tbaa !96
  %954 = zext i8 %953 to i32
  %955 = add i32 %944, %954
  store i8 %952, ptr %945, align 1, !tbaa !9
  %956 = getelementptr inbounds i8, ptr %900, i64 2
  %957 = and i32 %955, 63
  %958 = zext nneg i32 %957 to i64
  %959 = shl i64 %930, %958
  %960 = lshr i64 %959, %898
  %961 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %960
  %962 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %960, i32 1
  %963 = load i8, ptr %962, align 1, !tbaa !94
  %964 = load i8, ptr %961, align 1, !tbaa !96
  %965 = zext i8 %964 to i32
  %966 = add i32 %955, %965
  store i8 %963, ptr %956, align 1, !tbaa !9
  %967 = getelementptr inbounds i8, ptr %900, i64 3
  %968 = and i32 %966, 63
  %969 = zext nneg i32 %968 to i64
  %970 = shl i64 %930, %969
  %971 = lshr i64 %970, %898
  %972 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %971
  %973 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %971, i32 1
  %974 = load i8, ptr %973, align 1, !tbaa !94
  %975 = load i8, ptr %972, align 1, !tbaa !96
  %976 = zext i8 %975 to i32
  %977 = add i32 %966, %976
  %978 = getelementptr inbounds i8, ptr %900, i64 4
  store i8 %974, ptr %967, align 1, !tbaa !9
  %979 = icmp ugt i32 %977, 64
  br i1 %979, label %1008, label %899, !prof !85, !llvm.loop !97

980:                                              ; preds = %886
  br i1 %891, label %1008, label %981, !prof !107

981:                                              ; preds = %980
  %982 = icmp ult ptr %547, %201
  br i1 %982, label %986, label %983

983:                                              ; preds = %981
  %984 = lshr i32 %545, 3
  %985 = and i32 %545, 7
  br label %1001

986:                                              ; preds = %981
  %987 = icmp eq ptr %547, %36
  br i1 %987, label %1008, label %988

988:                                              ; preds = %986
  %989 = lshr i32 %545, 3
  %990 = zext nneg i32 %989 to i64
  %991 = sub nsw i64 0, %990
  %992 = getelementptr inbounds i8, ptr %547, i64 %991
  %993 = icmp ult ptr %992, %36
  %994 = ptrtoint ptr %547 to i64
  %995 = ptrtoint ptr %36 to i64
  %996 = sub i64 %994, %995
  %997 = trunc i64 %996 to i32
  %998 = select i1 %993, i32 %997, i32 %989
  %999 = shl i32 %998, 3
  %1000 = sub i32 %545, %999
  br label %1001

1001:                                             ; preds = %988, %983
  %1002 = phi i32 [ %984, %983 ], [ %998, %988 ]
  %1003 = phi i32 [ %985, %983 ], [ %1000, %988 ]
  %1004 = zext i32 %1002 to i64
  %1005 = sub nsw i64 0, %1004
  %1006 = getelementptr inbounds i8, ptr %547, i64 %1005
  %1007 = load i64, ptr %1006, align 1, !tbaa !27
  br label %1008

1008:                                             ; preds = %934, %923, %908, %1001, %986, %980, %892
  %1009 = phi i64 [ %544, %980 ], [ %544, %986 ], [ %544, %892 ], [ %1007, %1001 ], [ %903, %908 ], [ %930, %934 ], [ %930, %923 ]
  %1010 = phi i32 [ %545, %980 ], [ %545, %986 ], [ %545, %892 ], [ %1003, %1001 ], [ %902, %908 ], [ %977, %934 ], [ %924, %923 ]
  %1011 = phi ptr [ @BIT_reloadDStream.zeroFilled, %980 ], [ %36, %986 ], [ @BIT_reloadDStream.zeroFilled, %892 ], [ %1006, %1001 ], [ %36, %908 ], [ @BIT_reloadDStream.zeroFilled, %934 ], [ %929, %923 ]
  %1012 = phi ptr [ %549, %980 ], [ %549, %986 ], [ %549, %892 ], [ %549, %1001 ], [ %900, %908 ], [ %978, %934 ], [ %900, %923 ]
  %1013 = icmp ult ptr %1012, %42
  br i1 %1013, label %1014, label %1033

1014:                                             ; preds = %1008
  %1015 = sub nsw i32 0, %44
  %1016 = and i32 %1015, 63
  %1017 = zext nneg i32 %1016 to i64
  br label %1018

1018:                                             ; preds = %1018, %1014
  %1019 = phi ptr [ %1012, %1014 ], [ %1031, %1018 ]
  %1020 = phi i32 [ %1010, %1014 ], [ %1030, %1018 ]
  %1021 = and i32 %1020, 63
  %1022 = zext nneg i32 %1021 to i64
  %1023 = shl i64 %1009, %1022
  %1024 = lshr i64 %1023, %1017
  %1025 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1024
  %1026 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1024, i32 1
  %1027 = load i8, ptr %1026, align 1, !tbaa !94
  %1028 = load i8, ptr %1025, align 1, !tbaa !96
  %1029 = zext i8 %1028 to i32
  %1030 = add i32 %1020, %1029
  %1031 = getelementptr inbounds i8, ptr %1019, i64 1
  store i8 %1027, ptr %1019, align 1, !tbaa !9
  %1032 = icmp ult ptr %1031, %42
  br i1 %1032, label %1018, label %1033, !llvm.loop !98

1033:                                             ; preds = %1018, %1008
  %1034 = phi i32 [ %1010, %1008 ], [ %1030, %1018 ]
  %1035 = ptrtoint ptr %548 to i64
  %1036 = sub i64 %277, %1035
  %1037 = icmp sgt i64 %1036, 3
  %1038 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 1
  %1039 = load i32, ptr %1038, align 8
  %1040 = icmp ugt i32 %1039, 64
  br i1 %1037, label %1041, label %1145

1041:                                             ; preds = %1033
  br i1 %1040, label %1049, label %1042, !prof !88

1042:                                             ; preds = %1041
  %1043 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  %1044 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 4
  %1045 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 3
  %1046 = sub nsw i32 0, %44
  %1047 = and i32 %1046, 63
  %1048 = zext nneg i32 %1047 to i64
  br label %1053

1049:                                             ; preds = %1093, %1041
  %1050 = phi i32 [ %1039, %1041 ], [ %1143, %1093 ]
  %1051 = phi ptr [ %548, %1041 ], [ %1142, %1093 ]
  %1052 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1052, align 8, !tbaa !105
  br label %1181

1053:                                             ; preds = %1093, %1042
  %1054 = phi i32 [ %1039, %1042 ], [ %1143, %1093 ]
  %1055 = phi ptr [ %548, %1042 ], [ %1142, %1093 ]
  %1056 = load ptr, ptr %1043, align 8, !tbaa !105
  %1057 = load ptr, ptr %1044, align 8, !tbaa !103
  %1058 = icmp ult ptr %1056, %1057
  br i1 %1058, label %1065, label %1059

1059:                                             ; preds = %1053
  %1060 = lshr i32 %1054, 3
  %1061 = zext nneg i32 %1060 to i64
  %1062 = sub nsw i64 0, %1061
  %1063 = getelementptr inbounds i8, ptr %1056, i64 %1062
  store ptr %1063, ptr %1043, align 8, !tbaa !105
  %1064 = and i32 %1054, 7
  br label %1085

1065:                                             ; preds = %1053
  %1066 = load ptr, ptr %1045, align 8, !tbaa !109
  %1067 = icmp eq ptr %1056, %1066
  br i1 %1067, label %1181, label %1068

1068:                                             ; preds = %1065
  %1069 = lshr i32 %1054, 3
  %1070 = zext nneg i32 %1069 to i64
  %1071 = sub nsw i64 0, %1070
  %1072 = getelementptr inbounds i8, ptr %1056, i64 %1071
  %1073 = icmp ult ptr %1072, %1066
  %1074 = ptrtoint ptr %1056 to i64
  %1075 = ptrtoint ptr %1066 to i64
  %1076 = sub i64 %1074, %1075
  %1077 = trunc i64 %1076 to i32
  %1078 = select i1 %1073, i32 %1077, i32 %1069
  %1079 = zext i1 %1073 to i32
  %1080 = zext i32 %1078 to i64
  %1081 = sub nsw i64 0, %1080
  %1082 = getelementptr inbounds i8, ptr %1056, i64 %1081
  store ptr %1082, ptr %1043, align 8, !tbaa !105
  %1083 = shl i32 %1078, 3
  %1084 = sub i32 %1054, %1083
  br label %1085

1085:                                             ; preds = %1068, %1059
  %1086 = phi i32 [ %1064, %1059 ], [ %1084, %1068 ]
  %1087 = phi ptr [ %1063, %1059 ], [ %1082, %1068 ]
  %1088 = phi i32 [ 0, %1059 ], [ %1079, %1068 ]
  store i32 %1086, ptr %1038, align 8, !tbaa !104
  %1089 = load i64, ptr %1087, align 1, !tbaa !27
  store i64 %1089, ptr %8, align 8, !tbaa !100
  %1090 = icmp eq i32 %1088, 0
  %1091 = icmp ult ptr %1055, %20
  %1092 = and i1 %1091, %1090
  br i1 %1092, label %1093, label %1181

1093:                                             ; preds = %1085
  %1094 = and i32 %1086, 63
  %1095 = zext nneg i32 %1094 to i64
  %1096 = shl i64 %1089, %1095
  %1097 = lshr i64 %1096, %1048
  %1098 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1097
  %1099 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1097, i32 1
  %1100 = load i8, ptr %1099, align 1, !tbaa !94
  %1101 = load i8, ptr %1098, align 1, !tbaa !96
  %1102 = zext i8 %1101 to i32
  %1103 = add i32 %1086, %1102
  store i8 %1100, ptr %1055, align 1, !tbaa !9
  %1104 = getelementptr inbounds i8, ptr %1055, i64 1
  %1105 = load i64, ptr %8, align 8, !tbaa !100
  %1106 = and i32 %1103, 63
  %1107 = zext nneg i32 %1106 to i64
  %1108 = shl i64 %1105, %1107
  %1109 = lshr i64 %1108, %1048
  %1110 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1109
  %1111 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1109, i32 1
  %1112 = load i8, ptr %1111, align 1, !tbaa !94
  %1113 = load i8, ptr %1110, align 1, !tbaa !96
  %1114 = zext i8 %1113 to i32
  %1115 = add i32 %1103, %1114
  store i32 %1115, ptr %1038, align 8, !tbaa !104
  store i8 %1112, ptr %1104, align 1, !tbaa !9
  %1116 = getelementptr inbounds i8, ptr %1055, i64 2
  %1117 = load i64, ptr %8, align 8, !tbaa !100
  %1118 = load i32, ptr %1038, align 8, !tbaa !104
  %1119 = and i32 %1118, 63
  %1120 = zext nneg i32 %1119 to i64
  %1121 = shl i64 %1117, %1120
  %1122 = lshr i64 %1121, %1048
  %1123 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1122
  %1124 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1122, i32 1
  %1125 = load i8, ptr %1124, align 1, !tbaa !94
  %1126 = load i8, ptr %1123, align 1, !tbaa !96
  %1127 = zext i8 %1126 to i32
  %1128 = add i32 %1118, %1127
  store i32 %1128, ptr %1038, align 8, !tbaa !104
  store i8 %1125, ptr %1116, align 1, !tbaa !9
  %1129 = getelementptr inbounds i8, ptr %1055, i64 3
  %1130 = load i64, ptr %8, align 8, !tbaa !100
  %1131 = load i32, ptr %1038, align 8, !tbaa !104
  %1132 = and i32 %1131, 63
  %1133 = zext nneg i32 %1132 to i64
  %1134 = shl i64 %1130, %1133
  %1135 = lshr i64 %1134, %1048
  %1136 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1135
  %1137 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1135, i32 1
  %1138 = load i8, ptr %1137, align 1, !tbaa !94
  %1139 = load i8, ptr %1136, align 1, !tbaa !96
  %1140 = zext i8 %1139 to i32
  %1141 = add i32 %1131, %1140
  store i32 %1141, ptr %1038, align 8, !tbaa !104
  %1142 = getelementptr inbounds i8, ptr %1055, i64 4
  store i8 %1138, ptr %1129, align 1, !tbaa !9
  %1143 = load i32, ptr %1038, align 8
  %1144 = icmp ugt i32 %1143, 64
  br i1 %1144, label %1049, label %1053, !prof !85, !llvm.loop !97

1145:                                             ; preds = %1033
  %1146 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  br i1 %1040, label %1147, label %1148, !prof !107

1147:                                             ; preds = %1145
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1146, align 8, !tbaa !105
  br label %1181

1148:                                             ; preds = %1145
  %1149 = load ptr, ptr %1146, align 8, !tbaa !105
  %1150 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 4
  %1151 = load ptr, ptr %1150, align 8, !tbaa !103
  %1152 = icmp ult ptr %1149, %1151
  br i1 %1152, label %1160, label %1153

1153:                                             ; preds = %1148
  %1154 = lshr i32 %1039, 3
  %1155 = zext nneg i32 %1154 to i64
  %1156 = sub nsw i64 0, %1155
  %1157 = getelementptr inbounds i8, ptr %1149, i64 %1156
  store ptr %1157, ptr %1146, align 8, !tbaa !105
  %1158 = and i32 %1039, 7
  store i32 %1158, ptr %1038, align 8, !tbaa !104
  %1159 = load i64, ptr %1157, align 1, !tbaa !27
  store i64 %1159, ptr %8, align 8, !tbaa !100
  br label %1181

1160:                                             ; preds = %1148
  %1161 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 3
  %1162 = load ptr, ptr %1161, align 8, !tbaa !109
  %1163 = icmp eq ptr %1149, %1162
  br i1 %1163, label %1181, label %1164

1164:                                             ; preds = %1160
  %1165 = lshr i32 %1039, 3
  %1166 = zext nneg i32 %1165 to i64
  %1167 = sub nsw i64 0, %1166
  %1168 = getelementptr inbounds i8, ptr %1149, i64 %1167
  %1169 = icmp ult ptr %1168, %1162
  %1170 = ptrtoint ptr %1149 to i64
  %1171 = ptrtoint ptr %1162 to i64
  %1172 = sub i64 %1170, %1171
  %1173 = trunc i64 %1172 to i32
  %1174 = select i1 %1169, i32 %1173, i32 %1165
  %1175 = zext i32 %1174 to i64
  %1176 = sub nsw i64 0, %1175
  %1177 = getelementptr inbounds i8, ptr %1149, i64 %1176
  store ptr %1177, ptr %1146, align 8, !tbaa !105
  %1178 = shl i32 %1174, 3
  %1179 = sub i32 %1039, %1178
  store i32 %1179, ptr %1038, align 8, !tbaa !104
  %1180 = load i64, ptr %1177, align 1, !tbaa !27
  store i64 %1180, ptr %8, align 8, !tbaa !100
  br label %1181

1181:                                             ; preds = %1085, %1065, %1164, %1160, %1153, %1147, %1049
  %1182 = phi i32 [ %1179, %1164 ], [ %1158, %1153 ], [ %1039, %1147 ], [ %1050, %1049 ], [ %1039, %1160 ], [ %1086, %1085 ], [ %1054, %1065 ]
  %1183 = phi ptr [ %1177, %1164 ], [ %1157, %1153 ], [ @BIT_reloadDStream.zeroFilled, %1147 ], [ @BIT_reloadDStream.zeroFilled, %1049 ], [ %1149, %1160 ], [ %1087, %1085 ], [ %1056, %1065 ]
  %1184 = phi ptr [ %548, %1164 ], [ %548, %1153 ], [ %548, %1147 ], [ %1051, %1049 ], [ %548, %1160 ], [ %1055, %1065 ], [ %1055, %1085 ]
  %1185 = icmp ult ptr %1184, %19
  br i1 %1185, label %1186, label %1246

1186:                                             ; preds = %1181
  %1187 = ptrtoint ptr %1184 to i64
  %1188 = sub nsw i32 0, %44
  %1189 = and i32 %1188, 63
  %1190 = zext nneg i32 %1189 to i64
  %1191 = add i64 %7, %1
  %1192 = sub i64 %1191, %1187
  %1193 = add i64 %1187, 1
  %1194 = and i64 %1192, 1
  %1195 = icmp eq i64 %1194, 0
  br i1 %1195, label %1210, label %1196

1196:                                             ; preds = %1186
  %1197 = load i64, ptr %8, align 8, !tbaa !100
  %1198 = load i32, ptr %1038, align 8, !tbaa !104
  %1199 = and i32 %1198, 63
  %1200 = zext nneg i32 %1199 to i64
  %1201 = shl i64 %1197, %1200
  %1202 = lshr i64 %1201, %1190
  %1203 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1202
  %1204 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1202, i32 1
  %1205 = load i8, ptr %1204, align 1, !tbaa !94
  %1206 = load i8, ptr %1203, align 1, !tbaa !96
  %1207 = zext i8 %1206 to i32
  %1208 = add i32 %1198, %1207
  store i32 %1208, ptr %1038, align 8, !tbaa !104
  %1209 = getelementptr inbounds i8, ptr %1184, i64 1
  store i8 %1205, ptr %1184, align 1, !tbaa !9
  br label %1210

1210:                                             ; preds = %1196, %1186
  %1211 = phi ptr [ %1184, %1186 ], [ %1209, %1196 ]
  %1212 = icmp eq i64 %1191, %1193
  br i1 %1212, label %1242, label %1213

1213:                                             ; preds = %1210, %1213
  %1214 = phi ptr [ %1240, %1213 ], [ %1211, %1210 ]
  %1215 = load i64, ptr %8, align 8, !tbaa !100
  %1216 = load i32, ptr %1038, align 8, !tbaa !104
  %1217 = and i32 %1216, 63
  %1218 = zext nneg i32 %1217 to i64
  %1219 = shl i64 %1215, %1218
  %1220 = lshr i64 %1219, %1190
  %1221 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1220
  %1222 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1220, i32 1
  %1223 = load i8, ptr %1222, align 1, !tbaa !94
  %1224 = load i8, ptr %1221, align 1, !tbaa !96
  %1225 = zext i8 %1224 to i32
  %1226 = add i32 %1216, %1225
  store i32 %1226, ptr %1038, align 8, !tbaa !104
  %1227 = getelementptr inbounds i8, ptr %1214, i64 1
  store i8 %1223, ptr %1214, align 1, !tbaa !9
  %1228 = load i64, ptr %8, align 8, !tbaa !100
  %1229 = load i32, ptr %1038, align 8, !tbaa !104
  %1230 = and i32 %1229, 63
  %1231 = zext nneg i32 %1230 to i64
  %1232 = shl i64 %1228, %1231
  %1233 = lshr i64 %1232, %1190
  %1234 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1233
  %1235 = getelementptr inbounds %struct.HUF_DEltX1, ptr %21, i64 %1233, i32 1
  %1236 = load i8, ptr %1235, align 1, !tbaa !94
  %1237 = load i8, ptr %1234, align 1, !tbaa !96
  %1238 = zext i8 %1237 to i32
  %1239 = add i32 %1229, %1238
  store i32 %1239, ptr %1038, align 8, !tbaa !104
  %1240 = getelementptr inbounds i8, ptr %1214, i64 2
  store i8 %1236, ptr %1227, align 1, !tbaa !9
  %1241 = icmp ult ptr %1240, %19
  br i1 %1241, label %1213, label %1242, !llvm.loop !98

1242:                                             ; preds = %1213, %1210
  %1243 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 2
  %1244 = load ptr, ptr %1243, align 8, !tbaa !105
  %1245 = load i32, ptr %1038, align 8
  br label %1246

1246:                                             ; preds = %1242, %1181
  %1247 = phi i32 [ %1245, %1242 ], [ %1182, %1181 ]
  %1248 = phi ptr [ %1244, %1242 ], [ %1183, %1181 ]
  %1249 = icmp eq ptr %680, %34
  %1250 = icmp eq i32 %739, 64
  %1251 = select i1 %1249, i1 %1250, i1 false
  %1252 = icmp eq ptr %864, %35
  %1253 = icmp eq i32 %887, 64
  %1254 = select i1 %1252, i1 %1253, i1 false
  %1255 = and i1 %1251, %1254
  %1256 = icmp eq ptr %1011, %36
  %1257 = icmp eq i32 %1034, 64
  %1258 = select i1 %1256, i1 %1257, i1 false
  %1259 = and i1 %1255, %1258
  %1260 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i64 0, i32 3
  %1261 = load ptr, ptr %1260, align 8, !tbaa !109
  %1262 = icmp eq ptr %1248, %1261
  %1263 = icmp eq i32 %1247, 64
  %1264 = select i1 %1262, i1 %1263, i1 false
  %1265 = and i1 %1259, %1264
  %1266 = select i1 %1265, i64 %1, i64 -20
  br label %1267

1267:                                             ; preds = %1246, %538, %270, %258, %203, %195, %183, %128, %120, %108, %53, %48, %18
  %1268 = phi i64 [ %274, %270 ], [ -20, %18 ], [ -20, %538 ], [ %1266, %1246 ], [ -20, %108 ], [ -1, %53 ], [ -72, %48 ], [ -20, %183 ], [ -1, %128 ], [ -72, %120 ], [ -20, %258 ], [ -1, %203 ], [ -72, %195 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #16
  br label %1277

1269:                                             ; preds = %11
  %1270 = and i32 %5, 16
  %1271 = icmp eq i32 %1270, 0
  %1272 = select i1 %1271, ptr @HUF_decompress4X1_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X1_usingDTable_internal_fast_c_loop
  %1273 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %1272)
  %1274 = icmp eq i64 %1273, 0
  br i1 %1274, label %1275, label %1277

1275:                                             ; preds = %1269, %11
  %1276 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4), !range !99
  br label %1277

1277:                                             ; preds = %1267, %14, %1269, %1275
  %1278 = phi i64 [ %1276, %1275 ], [ %1273, %1269 ], [ %1268, %1267 ], [ -20, %14 ]
  ret i64 %1278
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %8
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %10
  %13 = icmp ult i64 %4, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = shl i64 %4, 4
  %16 = udiv i64 %15, %2
  %17 = and i64 %16, 4294967295
  br label %18

18:                                               ; preds = %12, %14
  %19 = phi i64 [ %17, %14 ], [ 15, %12 ]
  %20 = lshr i64 %2, 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %19
  %23 = load i32, ptr %22, align 16, !tbaa !91
  %24 = getelementptr inbounds %struct.algo_time_t, ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !93
  %26 = mul i32 %25, %21
  %27 = add i32 %26, %23
  %28 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %19, i64 1
  %29 = load i32, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %19, i64 1, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !93
  %32 = mul i32 %31, %21
  %33 = add i32 %32, %29
  %34 = lshr i32 %33, 5
  %35 = add i32 %34, %33
  %36 = icmp ult i32 %35, %27
  br i1 %36, label %37, label %46

37:                                               ; preds = %18
  %38 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %39 = icmp ult i64 %38, -119
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = icmp ult i64 %38, %4
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %3, i64 %38
  %44 = sub i64 %4, %38
  %45 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %43, i64 noundef %44, ptr noundef %0, i32 noundef %7)
  br label %55

46:                                               ; preds = %18
  %47 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = icmp ult i64 %47, %4
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %3, i64 %47
  %53 = sub i64 %4, %47
  %54 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %52, i64 noundef %53, ptr noundef %0, i32 noundef %7)
  br label %55

55:                                               ; preds = %51, %49, %46, %42, %40, %37, %10, %8
  %56 = phi i64 [ -70, %8 ], [ -20, %10 ], [ %45, %42 ], [ %38, %37 ], [ -72, %40 ], [ %54, %51 ], [ %47, %46 ], [ -72, %49 ]
  ret i64 %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %502, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  %9 = icmp ugt i64 %3, 7
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %2, i64 %3
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %502, label %65

15:                                               ; preds = %7
  %16 = load i8, ptr %2, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  switch i64 %3, label %59 [
    i64 7, label %18
    i64 6, label %24
    i64 5, label %31
    i64 4, label %38
    i64 3, label %45
    i64 2, label %52
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %2, i64 6
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 48
  %23 = or disjoint i64 %22, %17
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i64 [ %17, %15 ], [ %23, %18 ]
  %26 = getelementptr inbounds i8, ptr %2, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 40
  %30 = add nuw nsw i64 %29, %25
  br label %31

31:                                               ; preds = %24, %15
  %32 = phi i64 [ %17, %15 ], [ %30, %24 ]
  %33 = getelementptr inbounds i8, ptr %2, i64 4
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 32
  %37 = add nuw nsw i64 %36, %32
  br label %38

38:                                               ; preds = %31, %15
  %39 = phi i64 [ %17, %15 ], [ %37, %31 ]
  %40 = getelementptr inbounds i8, ptr %2, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 24
  %44 = add nuw nsw i64 %43, %39
  br label %45

45:                                               ; preds = %38, %15
  %46 = phi i64 [ %17, %15 ], [ %44, %38 ]
  %47 = getelementptr inbounds i8, ptr %2, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 16
  %51 = add nuw nsw i64 %50, %46
  br label %52

52:                                               ; preds = %45, %15
  %53 = phi i64 [ %17, %15 ], [ %51, %45 ]
  %54 = getelementptr inbounds i8, ptr %2, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 8
  %58 = add nuw nsw i64 %57, %53
  br label %59

59:                                               ; preds = %52, %15
  %60 = phi i64 [ %17, %15 ], [ %58, %52 ]
  %61 = getelementptr i8, ptr %2, i64 %3
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %502, label %83

65:                                               ; preds = %10
  %66 = add nsw i64 %3, -8
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = load i64, ptr %67, align 1, !tbaa !27
  %69 = zext i8 %13 to i32
  %70 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true), !range !81
  %71 = xor i32 %70, 31
  %72 = sub nuw nsw i32 8, %71
  %73 = icmp ult i64 %3, -119
  br i1 %73, label %74, label %502

74:                                               ; preds = %65
  %75 = getelementptr inbounds i8, ptr %2, i64 %66
  %76 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %77 = getelementptr inbounds i8, ptr %0, i64 %76
  %78 = getelementptr inbounds i32, ptr %4, i64 1
  %79 = load i32, ptr %4, align 4
  %80 = lshr i32 %79, 16
  %81 = ptrtoint ptr %77 to i64
  %82 = icmp sgt i64 %1, 7
  br i1 %82, label %97, label %340

83:                                               ; preds = %59
  %84 = zext i8 %63 to i32
  %85 = tail call i32 @llvm.ctlz.i32(i32 %84, i1 true), !range !81
  %86 = trunc i64 %3 to i32
  %87 = shl nuw nsw i32 %86, 3
  %88 = sub nsw i32 %85, %87
  %89 = add nsw i32 %88, 41
  %90 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %91 = getelementptr inbounds i8, ptr %0, i64 %90
  %92 = getelementptr inbounds i32, ptr %4, i64 1
  %93 = load i32, ptr %4, align 4
  %94 = lshr i32 %93, 16
  %95 = ptrtoint ptr %91 to i64
  %96 = icmp sgt i64 %1, 7
  br i1 %96, label %97, label %369

97:                                               ; preds = %83, %74
  %98 = phi i64 [ %95, %83 ], [ %81, %74 ]
  %99 = phi i32 [ %94, %83 ], [ %80, %74 ]
  %100 = phi i32 [ %93, %83 ], [ %79, %74 ]
  %101 = phi ptr [ %92, %83 ], [ %78, %74 ]
  %102 = phi ptr [ %91, %83 ], [ %77, %74 ]
  %103 = phi i32 [ %89, %83 ], [ %72, %74 ]
  %104 = phi i64 [ %60, %83 ], [ %68, %74 ]
  %105 = phi i64 [ 0, %83 ], [ %66, %74 ]
  %106 = and i32 %100, 16515072
  %107 = icmp ult i32 %106, 786432
  %108 = sub nsw i32 0, %99
  %109 = and i32 %108, 63
  %110 = zext nneg i32 %109 to i64
  br i1 %107, label %125, label %111

111:                                              ; preds = %97
  %112 = getelementptr inbounds i8, ptr %102, i64 -7
  %113 = getelementptr inbounds i32, ptr %4, i64 1
  %114 = getelementptr inbounds i32, ptr %4, i64 1
  %115 = getelementptr inbounds i32, ptr %4, i64 1
  %116 = getelementptr inbounds i32, ptr %4, i64 1
  %117 = getelementptr inbounds i32, ptr %4, i64 1
  %118 = getelementptr inbounds i32, ptr %4, i64 1
  %119 = getelementptr inbounds i32, ptr %4, i64 1
  %120 = getelementptr inbounds i32, ptr %4, i64 1
  %121 = getelementptr inbounds i32, ptr %4, i64 1
  %122 = getelementptr inbounds i32, ptr %4, i64 1
  %123 = getelementptr inbounds i32, ptr %4, i64 1
  %124 = getelementptr inbounds i32, ptr %4, i64 1
  br label %248

125:                                              ; preds = %97
  %126 = getelementptr inbounds i8, ptr %102, i64 -9
  %127 = getelementptr inbounds i32, ptr %4, i64 1
  %128 = getelementptr inbounds i32, ptr %4, i64 1
  %129 = getelementptr inbounds i32, ptr %4, i64 1
  %130 = getelementptr inbounds i32, ptr %4, i64 1
  %131 = getelementptr inbounds i32, ptr %4, i64 1
  %132 = getelementptr inbounds i32, ptr %4, i64 1
  %133 = getelementptr inbounds i32, ptr %4, i64 1
  %134 = getelementptr inbounds i32, ptr %4, i64 1
  %135 = getelementptr inbounds i32, ptr %4, i64 1
  %136 = getelementptr inbounds i32, ptr %4, i64 1
  %137 = getelementptr inbounds i32, ptr %4, i64 1
  %138 = getelementptr inbounds i32, ptr %4, i64 1
  %139 = getelementptr inbounds i32, ptr %4, i64 1
  %140 = getelementptr inbounds i32, ptr %4, i64 1
  %141 = getelementptr inbounds i32, ptr %4, i64 1
  br label %142

142:                                              ; preds = %125, %176
  %143 = phi ptr [ %0, %125 ], [ %246, %176 ]
  %144 = phi i64 [ %105, %125 ], [ %170, %176 ]
  %145 = phi i64 [ %104, %125 ], [ %172, %176 ]
  %146 = phi i32 [ %103, %125 ], [ %242, %176 ]
  %147 = getelementptr inbounds i8, ptr %2, i64 %144
  %148 = icmp slt i64 %144, 8
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = lshr i32 %146, 3
  %151 = and i32 %146, 7
  br label %165

152:                                              ; preds = %142
  %153 = icmp eq i64 %144, 0
  br i1 %153, label %369, label %154

154:                                              ; preds = %152
  %155 = lshr i32 %146, 3
  %156 = zext nneg i32 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %147, i64 %157
  %159 = icmp ult ptr %158, %2
  %160 = trunc i64 %144 to i32
  %161 = select i1 %159, i32 %160, i32 %155
  %162 = zext i1 %159 to i32
  %163 = shl i32 %161, 3
  %164 = sub i32 %146, %163
  br label %165

165:                                              ; preds = %149, %154
  %166 = phi i32 [ %164, %154 ], [ %151, %149 ]
  %167 = phi i32 [ %161, %154 ], [ %150, %149 ]
  %168 = phi i32 [ %162, %154 ], [ 0, %149 ]
  %169 = zext i32 %167 to i64
  %170 = sub i64 %144, %169
  %171 = getelementptr inbounds i8, ptr %2, i64 %170
  %172 = load i64, ptr %171, align 1, !tbaa !27
  %173 = icmp eq i32 %168, 0
  %174 = icmp ult ptr %143, %126
  %175 = and i1 %174, %173
  br i1 %175, label %176, label %365

176:                                              ; preds = %165
  %177 = and i32 %166, 63
  %178 = zext nneg i32 %177 to i64
  %179 = shl i64 %172, %178
  %180 = lshr i64 %179, %110
  %181 = getelementptr inbounds %struct.HUF_DEltX2, ptr %141, i64 %180
  %182 = load i16, ptr %181, align 2
  store i16 %182, ptr %143, align 1
  %183 = getelementptr inbounds %struct.HUF_DEltX2, ptr %140, i64 %180, i32 1
  %184 = load i8, ptr %183, align 2, !tbaa !82
  %185 = zext i8 %184 to i32
  %186 = add i32 %166, %185
  %187 = getelementptr inbounds %struct.HUF_DEltX2, ptr %139, i64 %180, i32 2
  %188 = load i8, ptr %187, align 1, !tbaa !84
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds i8, ptr %143, i64 %189
  %191 = and i32 %186, 63
  %192 = zext nneg i32 %191 to i64
  %193 = shl i64 %172, %192
  %194 = lshr i64 %193, %110
  %195 = getelementptr inbounds %struct.HUF_DEltX2, ptr %138, i64 %194
  %196 = load i16, ptr %195, align 2
  store i16 %196, ptr %190, align 1
  %197 = getelementptr inbounds %struct.HUF_DEltX2, ptr %137, i64 %194, i32 1
  %198 = load i8, ptr %197, align 2, !tbaa !82
  %199 = zext i8 %198 to i32
  %200 = add i32 %186, %199
  %201 = getelementptr inbounds %struct.HUF_DEltX2, ptr %136, i64 %194, i32 2
  %202 = load i8, ptr %201, align 1, !tbaa !84
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds i8, ptr %190, i64 %203
  %205 = and i32 %200, 63
  %206 = zext nneg i32 %205 to i64
  %207 = shl i64 %172, %206
  %208 = lshr i64 %207, %110
  %209 = getelementptr inbounds %struct.HUF_DEltX2, ptr %135, i64 %208
  %210 = load i16, ptr %209, align 2
  store i16 %210, ptr %204, align 1
  %211 = getelementptr inbounds %struct.HUF_DEltX2, ptr %134, i64 %208, i32 1
  %212 = load i8, ptr %211, align 2, !tbaa !82
  %213 = zext i8 %212 to i32
  %214 = add i32 %200, %213
  %215 = getelementptr inbounds %struct.HUF_DEltX2, ptr %133, i64 %208, i32 2
  %216 = load i8, ptr %215, align 1, !tbaa !84
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds i8, ptr %204, i64 %217
  %219 = and i32 %214, 63
  %220 = zext nneg i32 %219 to i64
  %221 = shl i64 %172, %220
  %222 = lshr i64 %221, %110
  %223 = getelementptr inbounds %struct.HUF_DEltX2, ptr %132, i64 %222
  %224 = load i16, ptr %223, align 2
  store i16 %224, ptr %218, align 1
  %225 = getelementptr inbounds %struct.HUF_DEltX2, ptr %131, i64 %222, i32 1
  %226 = load i8, ptr %225, align 2, !tbaa !82
  %227 = zext i8 %226 to i32
  %228 = add i32 %214, %227
  %229 = getelementptr inbounds %struct.HUF_DEltX2, ptr %130, i64 %222, i32 2
  %230 = load i8, ptr %229, align 1, !tbaa !84
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds i8, ptr %218, i64 %231
  %233 = and i32 %228, 63
  %234 = zext nneg i32 %233 to i64
  %235 = shl i64 %172, %234
  %236 = lshr i64 %235, %110
  %237 = getelementptr inbounds %struct.HUF_DEltX2, ptr %129, i64 %236
  %238 = load i16, ptr %237, align 2
  store i16 %238, ptr %232, align 1
  %239 = getelementptr inbounds %struct.HUF_DEltX2, ptr %128, i64 %236, i32 1
  %240 = load i8, ptr %239, align 2, !tbaa !82
  %241 = zext i8 %240 to i32
  %242 = add i32 %228, %241
  %243 = getelementptr inbounds %struct.HUF_DEltX2, ptr %127, i64 %236, i32 2
  %244 = load i8, ptr %243, align 1, !tbaa !84
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds i8, ptr %232, i64 %245
  %247 = icmp ugt i32 %242, 64
  br i1 %247, label %369, label %142, !prof !85, !llvm.loop !86

248:                                              ; preds = %111, %282
  %249 = phi ptr [ %0, %111 ], [ %338, %282 ]
  %250 = phi i64 [ %105, %111 ], [ %276, %282 ]
  %251 = phi i64 [ %104, %111 ], [ %278, %282 ]
  %252 = phi i32 [ %103, %111 ], [ %334, %282 ]
  %253 = getelementptr inbounds i8, ptr %2, i64 %250
  %254 = icmp slt i64 %250, 8
  br i1 %254, label %258, label %255

255:                                              ; preds = %248
  %256 = lshr i32 %252, 3
  %257 = and i32 %252, 7
  br label %271

258:                                              ; preds = %248
  %259 = icmp eq i64 %250, 0
  br i1 %259, label %369, label %260

260:                                              ; preds = %258
  %261 = lshr i32 %252, 3
  %262 = zext nneg i32 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %253, i64 %263
  %265 = icmp ult ptr %264, %2
  %266 = trunc i64 %250 to i32
  %267 = select i1 %265, i32 %266, i32 %261
  %268 = zext i1 %265 to i32
  %269 = shl i32 %267, 3
  %270 = sub i32 %252, %269
  br label %271

271:                                              ; preds = %255, %260
  %272 = phi i32 [ %270, %260 ], [ %257, %255 ]
  %273 = phi i32 [ %267, %260 ], [ %256, %255 ]
  %274 = phi i32 [ %268, %260 ], [ 0, %255 ]
  %275 = zext i32 %273 to i64
  %276 = sub i64 %250, %275
  %277 = getelementptr inbounds i8, ptr %2, i64 %276
  %278 = load i64, ptr %277, align 1, !tbaa !27
  %279 = icmp eq i32 %274, 0
  %280 = icmp ult ptr %249, %112
  %281 = and i1 %280, %279
  br i1 %281, label %282, label %367

282:                                              ; preds = %271
  %283 = and i32 %272, 63
  %284 = zext nneg i32 %283 to i64
  %285 = shl i64 %278, %284
  %286 = lshr i64 %285, %110
  %287 = getelementptr inbounds %struct.HUF_DEltX2, ptr %124, i64 %286
  %288 = load i16, ptr %287, align 2
  store i16 %288, ptr %249, align 1
  %289 = getelementptr inbounds %struct.HUF_DEltX2, ptr %123, i64 %286, i32 1
  %290 = load i8, ptr %289, align 2, !tbaa !82
  %291 = zext i8 %290 to i32
  %292 = add i32 %272, %291
  %293 = getelementptr inbounds %struct.HUF_DEltX2, ptr %122, i64 %286, i32 2
  %294 = load i8, ptr %293, align 1, !tbaa !84
  %295 = zext i8 %294 to i64
  %296 = getelementptr inbounds i8, ptr %249, i64 %295
  %297 = and i32 %292, 63
  %298 = zext nneg i32 %297 to i64
  %299 = shl i64 %278, %298
  %300 = lshr i64 %299, %110
  %301 = getelementptr inbounds %struct.HUF_DEltX2, ptr %121, i64 %300
  %302 = load i16, ptr %301, align 2
  store i16 %302, ptr %296, align 1
  %303 = getelementptr inbounds %struct.HUF_DEltX2, ptr %120, i64 %300, i32 1
  %304 = load i8, ptr %303, align 2, !tbaa !82
  %305 = zext i8 %304 to i32
  %306 = add i32 %292, %305
  %307 = getelementptr inbounds %struct.HUF_DEltX2, ptr %119, i64 %300, i32 2
  %308 = load i8, ptr %307, align 1, !tbaa !84
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds i8, ptr %296, i64 %309
  %311 = and i32 %306, 63
  %312 = zext nneg i32 %311 to i64
  %313 = shl i64 %278, %312
  %314 = lshr i64 %313, %110
  %315 = getelementptr inbounds %struct.HUF_DEltX2, ptr %118, i64 %314
  %316 = load i16, ptr %315, align 2
  store i16 %316, ptr %310, align 1
  %317 = getelementptr inbounds %struct.HUF_DEltX2, ptr %117, i64 %314, i32 1
  %318 = load i8, ptr %317, align 2, !tbaa !82
  %319 = zext i8 %318 to i32
  %320 = add i32 %306, %319
  %321 = getelementptr inbounds %struct.HUF_DEltX2, ptr %116, i64 %314, i32 2
  %322 = load i8, ptr %321, align 1, !tbaa !84
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds i8, ptr %310, i64 %323
  %325 = and i32 %320, 63
  %326 = zext nneg i32 %325 to i64
  %327 = shl i64 %278, %326
  %328 = lshr i64 %327, %110
  %329 = getelementptr inbounds %struct.HUF_DEltX2, ptr %115, i64 %328
  %330 = load i16, ptr %329, align 2
  store i16 %330, ptr %324, align 1
  %331 = getelementptr inbounds %struct.HUF_DEltX2, ptr %114, i64 %328, i32 1
  %332 = load i8, ptr %331, align 2, !tbaa !82
  %333 = zext i8 %332 to i32
  %334 = add i32 %320, %333
  %335 = getelementptr inbounds %struct.HUF_DEltX2, ptr %113, i64 %328, i32 2
  %336 = load i8, ptr %335, align 1, !tbaa !84
  %337 = zext i8 %336 to i64
  %338 = getelementptr inbounds i8, ptr %324, i64 %337
  %339 = icmp ugt i32 %334, 64
  br i1 %339, label %369, label %248, !prof !85, !llvm.loop !87

340:                                              ; preds = %74
  %341 = icmp slt i64 %3, 16
  br i1 %341, label %349, label %342

342:                                              ; preds = %340
  %343 = lshr i32 %72, 3
  %344 = zext nneg i32 %343 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i8, ptr %75, i64 %345
  %347 = and i32 %72, 7
  %348 = load i64, ptr %346, align 1, !tbaa !27
  br label %369

349:                                              ; preds = %340
  %350 = icmp eq i64 %66, 0
  br i1 %350, label %369, label %351

351:                                              ; preds = %349
  %352 = lshr i32 %72, 3
  %353 = zext nneg i32 %352 to i64
  %354 = sub nsw i64 0, %353
  %355 = getelementptr inbounds i8, ptr %75, i64 %354
  %356 = icmp ult ptr %355, %2
  %357 = trunc i64 %66 to i32
  %358 = select i1 %356, i32 %357, i32 %352
  %359 = zext i32 %358 to i64
  %360 = sub nsw i64 0, %359
  %361 = getelementptr inbounds i8, ptr %75, i64 %360
  %362 = shl i32 %358, 3
  %363 = sub i32 %72, %362
  %364 = load i64, ptr %361, align 1, !tbaa !27
  br label %369

365:                                              ; preds = %165
  %366 = getelementptr inbounds i8, ptr %2, i64 %170
  br label %369

367:                                              ; preds = %271
  %368 = getelementptr inbounds i8, ptr %2, i64 %276
  br label %369

369:                                              ; preds = %258, %282, %152, %176, %367, %365, %83, %349, %351, %342
  %370 = phi i64 [ %81, %351 ], [ %81, %342 ], [ %81, %349 ], [ %95, %83 ], [ %98, %365 ], [ %98, %367 ], [ %98, %176 ], [ %98, %152 ], [ %98, %282 ], [ %98, %258 ]
  %371 = phi i32 [ %80, %351 ], [ %80, %342 ], [ %80, %349 ], [ %94, %83 ], [ %99, %365 ], [ %99, %367 ], [ %99, %176 ], [ %99, %152 ], [ %99, %282 ], [ %99, %258 ]
  %372 = phi ptr [ %78, %351 ], [ %78, %342 ], [ %78, %349 ], [ %92, %83 ], [ %101, %365 ], [ %101, %367 ], [ %101, %176 ], [ %101, %152 ], [ %101, %282 ], [ %101, %258 ]
  %373 = phi ptr [ %77, %351 ], [ %77, %342 ], [ %77, %349 ], [ %91, %83 ], [ %102, %365 ], [ %102, %367 ], [ %102, %176 ], [ %102, %152 ], [ %102, %282 ], [ %102, %258 ]
  %374 = phi i32 [ %363, %351 ], [ %347, %342 ], [ %72, %349 ], [ %89, %83 ], [ %166, %365 ], [ %272, %367 ], [ %146, %152 ], [ %242, %176 ], [ %252, %258 ], [ %334, %282 ]
  %375 = phi i64 [ %364, %351 ], [ %348, %342 ], [ %68, %349 ], [ %60, %83 ], [ %172, %365 ], [ %278, %367 ], [ %145, %152 ], [ %172, %176 ], [ %251, %258 ], [ %278, %282 ]
  %376 = phi ptr [ %361, %351 ], [ %346, %342 ], [ %75, %349 ], [ %2, %83 ], [ %366, %365 ], [ %368, %367 ], [ %147, %152 ], [ @BIT_reloadDStream.zeroFilled, %176 ], [ %253, %258 ], [ @BIT_reloadDStream.zeroFilled, %282 ]
  %377 = phi ptr [ %0, %351 ], [ %0, %342 ], [ %0, %349 ], [ %0, %83 ], [ %143, %365 ], [ %249, %367 ], [ %143, %152 ], [ %246, %176 ], [ %249, %258 ], [ %338, %282 ]
  %378 = ptrtoint ptr %377 to i64
  %379 = sub i64 %370, %378
  %380 = icmp ugt i64 %379, 1
  br i1 %380, label %381, label %463

381:                                              ; preds = %369
  %382 = getelementptr inbounds i8, ptr %373, i64 -2
  %383 = ptrtoint ptr %2 to i64
  %384 = sub nsw i32 0, %371
  %385 = and i32 %384, 63
  %386 = zext nneg i32 %385 to i64
  %387 = icmp ugt i32 %374, 64
  br i1 %387, label %423, label %388, !prof !88

388:                                              ; preds = %381, %429
  %389 = phi ptr [ %443, %429 ], [ %377, %381 ]
  %390 = phi ptr [ %418, %429 ], [ %376, %381 ]
  %391 = phi i64 [ %419, %429 ], [ %375, %381 ]
  %392 = phi i32 [ %439, %429 ], [ %374, %381 ]
  %393 = icmp ult ptr %390, %8
  br i1 %393, label %397, label %394

394:                                              ; preds = %388
  %395 = lshr i32 %392, 3
  %396 = and i32 %392, 7
  br label %412

397:                                              ; preds = %388
  %398 = icmp eq ptr %390, %2
  br i1 %398, label %423, label %399

399:                                              ; preds = %397
  %400 = lshr i32 %392, 3
  %401 = zext nneg i32 %400 to i64
  %402 = sub nsw i64 0, %401
  %403 = getelementptr inbounds i8, ptr %390, i64 %402
  %404 = icmp ult ptr %403, %2
  %405 = ptrtoint ptr %390 to i64
  %406 = sub i64 %405, %383
  %407 = trunc i64 %406 to i32
  %408 = select i1 %404, i32 %407, i32 %400
  %409 = zext i1 %404 to i32
  %410 = shl i32 %408, 3
  %411 = sub i32 %392, %410
  br label %412

412:                                              ; preds = %394, %399
  %413 = phi i32 [ %395, %394 ], [ %408, %399 ]
  %414 = phi i32 [ %396, %394 ], [ %411, %399 ]
  %415 = phi i32 [ 0, %394 ], [ %409, %399 ]
  %416 = zext i32 %413 to i64
  %417 = sub nsw i64 0, %416
  %418 = getelementptr inbounds i8, ptr %390, i64 %417
  %419 = load i64, ptr %418, align 1, !tbaa !27
  %420 = icmp eq i32 %415, 0
  %421 = icmp ule ptr %389, %382
  %422 = and i1 %421, %420
  br i1 %422, label %429, label %423

423:                                              ; preds = %412, %429, %397, %381
  %424 = phi ptr [ %377, %381 ], [ %389, %412 ], [ %443, %429 ], [ %389, %397 ]
  %425 = phi ptr [ @BIT_reloadDStream.zeroFilled, %381 ], [ %418, %412 ], [ @BIT_reloadDStream.zeroFilled, %429 ], [ %2, %397 ]
  %426 = phi i64 [ %375, %381 ], [ %419, %412 ], [ %419, %429 ], [ %391, %397 ]
  %427 = phi i32 [ %374, %381 ], [ %414, %412 ], [ %439, %429 ], [ %392, %397 ]
  %428 = icmp ugt ptr %424, %382
  br i1 %428, label %463, label %445

429:                                              ; preds = %412
  %430 = and i32 %414, 63
  %431 = zext nneg i32 %430 to i64
  %432 = shl i64 %419, %431
  %433 = lshr i64 %432, %386
  %434 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %433
  %435 = load i16, ptr %434, align 2
  store i16 %435, ptr %389, align 1
  %436 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %433, i32 1
  %437 = load i8, ptr %436, align 2, !tbaa !82
  %438 = zext i8 %437 to i32
  %439 = add i32 %414, %438
  %440 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %433, i32 2
  %441 = load i8, ptr %440, align 1, !tbaa !84
  %442 = zext i8 %441 to i64
  %443 = getelementptr inbounds i8, ptr %389, i64 %442
  %444 = icmp ugt i32 %439, 64
  br i1 %444, label %423, label %388, !prof !85, !llvm.loop !89

445:                                              ; preds = %423, %445
  %446 = phi ptr [ %461, %445 ], [ %424, %423 ]
  %447 = phi i32 [ %457, %445 ], [ %427, %423 ]
  %448 = and i32 %447, 63
  %449 = zext nneg i32 %448 to i64
  %450 = shl i64 %426, %449
  %451 = lshr i64 %450, %386
  %452 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %451
  %453 = load i16, ptr %452, align 2
  store i16 %453, ptr %446, align 1
  %454 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %451, i32 1
  %455 = load i8, ptr %454, align 2, !tbaa !82
  %456 = zext i8 %455 to i32
  %457 = add i32 %447, %456
  %458 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %451, i32 2
  %459 = load i8, ptr %458, align 1, !tbaa !84
  %460 = zext i8 %459 to i64
  %461 = getelementptr inbounds i8, ptr %446, i64 %460
  %462 = icmp ugt ptr %461, %382
  br i1 %462, label %463, label %445, !llvm.loop !90

463:                                              ; preds = %445, %423, %369
  %464 = phi i32 [ %374, %369 ], [ %427, %423 ], [ %457, %445 ]
  %465 = phi i64 [ %375, %369 ], [ %426, %423 ], [ %426, %445 ]
  %466 = phi ptr [ %376, %369 ], [ %425, %423 ], [ %425, %445 ]
  %467 = phi ptr [ %377, %369 ], [ %424, %423 ], [ %461, %445 ]
  %468 = icmp ult ptr %467, %373
  br i1 %468, label %469, label %495

469:                                              ; preds = %463
  %470 = and i32 %464, 63
  %471 = zext nneg i32 %470 to i64
  %472 = shl i64 %465, %471
  %473 = sub nsw i32 0, %371
  %474 = and i32 %473, 63
  %475 = zext nneg i32 %474 to i64
  %476 = lshr i64 %472, %475
  %477 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %476
  %478 = load i8, ptr %477, align 2
  store i8 %478, ptr %467, align 1
  %479 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %476, i32 2
  %480 = load i8, ptr %479, align 1, !tbaa !84
  %481 = icmp eq i8 %480, 1
  br i1 %481, label %482, label %487

482:                                              ; preds = %469
  %483 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %476, i32 1
  %484 = load i8, ptr %483, align 2, !tbaa !82
  %485 = zext i8 %484 to i32
  %486 = add i32 %464, %485
  br label %495

487:                                              ; preds = %469
  %488 = icmp ult i32 %464, 64
  br i1 %488, label %489, label %495

489:                                              ; preds = %487
  %490 = getelementptr inbounds %struct.HUF_DEltX2, ptr %372, i64 %476, i32 1
  %491 = load i8, ptr %490, align 2, !tbaa !82
  %492 = zext i8 %491 to i32
  %493 = add nuw nsw i32 %464, %492
  %494 = tail call i32 @llvm.umin.i32(i32 %493, i32 64)
  br label %495

495:                                              ; preds = %487, %482, %489, %463
  %496 = phi i32 [ %464, %463 ], [ %486, %482 ], [ %464, %487 ], [ %494, %489 ]
  %497 = icmp eq ptr %466, %2
  %498 = freeze i32 %496
  %499 = icmp eq i32 %498, 64
  %500 = and i1 %497, %499
  %501 = select i1 %500, i64 %1, i64 -20
  br label %502

502:                                              ; preds = %495, %59, %10, %5, %65
  %503 = phi i64 [ %3, %65 ], [ -20, %59 ], [ -1, %10 ], [ -72, %5 ], [ %501, %495 ]
  ret i64 %503
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @BIT_initDStream(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #11 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %87

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !103
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !105
  %15 = load i64, ptr %13, align 1, !tbaa !27
  store i64 %15, ptr %0, align 8, !tbaa !100
  %16 = getelementptr i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  %21 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true), !range !81
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 8, %22
  %24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !104
  br label %87

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %26, align 8, !tbaa !104
  br label %87

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !105
  %29 = load i8, ptr %1, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !100
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
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %30
  store i64 %36, ptr %0, align 8, !tbaa !100
  br label %37

37:                                               ; preds = %27, %31
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !100
  br label %44

44:                                               ; preds = %27, %37
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !100
  br label %51

51:                                               ; preds = %27, %44
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !100
  br label %58

58:                                               ; preds = %27, %51
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !100
  br label %65

65:                                               ; preds = %27, %58
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !100
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %78, align 8, !tbaa !104
  br label %87

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true), !range !81
  %82 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i64 0, i32 1
  %83 = trunc i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = sub nsw i32 %81, %84
  %86 = add nsw i32 %85, 41
  store i32 %86, ptr %82, align 8, !tbaa !104
  br label %87

87:                                               ; preds = %79, %19, %77, %25, %5
  %88 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef writeonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #12 {
  %6 = ptrtoint ptr %0 to i64
  %7 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr inbounds i32, ptr %4, i64 1
  %10 = load i32, ptr %4, align 4
  %11 = lshr i32 %10, 16
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %274, label %13

13:                                               ; preds = %5
  %14 = icmp ugt i64 %3, 7
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %2, i64 %3
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %274, label %70

20:                                               ; preds = %13
  %21 = load i8, ptr %2, align 1, !tbaa !9
  %22 = zext i8 %21 to i64
  switch i64 %3, label %64 [
    i64 7, label %23
    i64 6, label %29
    i64 5, label %36
    i64 4, label %43
    i64 3, label %50
    i64 2, label %57
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %2, i64 6
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 48
  %28 = or disjoint i64 %27, %22
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i64 [ %22, %20 ], [ %28, %23 ]
  %31 = getelementptr inbounds i8, ptr %2, i64 5
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 40
  %35 = add nuw nsw i64 %34, %30
  br label %36

36:                                               ; preds = %29, %20
  %37 = phi i64 [ %22, %20 ], [ %35, %29 ]
  %38 = getelementptr inbounds i8, ptr %2, i64 4
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 32
  %42 = add nuw nsw i64 %41, %37
  br label %43

43:                                               ; preds = %36, %20
  %44 = phi i64 [ %22, %20 ], [ %42, %36 ]
  %45 = getelementptr inbounds i8, ptr %2, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 24
  %49 = add nuw nsw i64 %48, %44
  br label %50

50:                                               ; preds = %43, %20
  %51 = phi i64 [ %22, %20 ], [ %49, %43 ]
  %52 = getelementptr inbounds i8, ptr %2, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = add nuw nsw i64 %55, %51
  br label %57

57:                                               ; preds = %50, %20
  %58 = phi i64 [ %22, %20 ], [ %56, %50 ]
  %59 = getelementptr inbounds i8, ptr %2, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 8
  %63 = add nuw nsw i64 %62, %58
  br label %64

64:                                               ; preds = %57, %20
  %65 = phi i64 [ %22, %20 ], [ %63, %57 ]
  %66 = getelementptr i8, ptr %2, i64 %3
  %67 = getelementptr i8, ptr %66, i64 -1
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %274, label %82

70:                                               ; preds = %15
  %71 = add nsw i64 %3, -8
  %72 = getelementptr inbounds i8, ptr %2, i64 %71
  %73 = load i64, ptr %72, align 1, !tbaa !27
  %74 = zext i8 %18 to i32
  %75 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 true), !range !81
  %76 = xor i32 %75, 31
  %77 = sub nuw nsw i32 8, %76
  %78 = icmp ult i64 %3, -119
  br i1 %78, label %79, label %274

79:                                               ; preds = %70
  %80 = getelementptr inbounds i8, ptr %2, i64 %71
  %81 = icmp sgt i64 %1, 3
  br i1 %81, label %90, label %178

82:                                               ; preds = %64
  %83 = zext i8 %68 to i32
  %84 = tail call i32 @llvm.ctlz.i32(i32 %83, i1 true), !range !81
  %85 = trunc i64 %3 to i32
  %86 = shl nuw nsw i32 %85, 3
  %87 = sub nsw i32 %84, %86
  %88 = add nsw i32 %87, 41
  %89 = icmp sgt i64 %1, 3
  br i1 %89, label %90, label %205

90:                                               ; preds = %82, %79
  %91 = phi i32 [ %88, %82 ], [ %77, %79 ]
  %92 = phi i64 [ %65, %82 ], [ %73, %79 ]
  %93 = phi i64 [ 0, %82 ], [ %71, %79 ]
  %94 = getelementptr inbounds i8, ptr %8, i64 -3
  %95 = sub nsw i32 0, %11
  %96 = and i32 %95, 63
  %97 = zext nneg i32 %96 to i64
  br label %98

98:                                               ; preds = %90, %132
  %99 = phi ptr [ %0, %90 ], [ %176, %132 ]
  %100 = phi i64 [ %93, %90 ], [ %126, %132 ]
  %101 = phi i64 [ %92, %90 ], [ %128, %132 ]
  %102 = phi i32 [ %91, %90 ], [ %175, %132 ]
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp slt i64 %100, 8
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = lshr i32 %102, 3
  %107 = and i32 %102, 7
  br label %121

108:                                              ; preds = %98
  %109 = icmp eq i64 %100, 0
  br i1 %109, label %205, label %110

110:                                              ; preds = %108
  %111 = lshr i32 %102, 3
  %112 = zext nneg i32 %111 to i64
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, ptr %103, i64 %113
  %115 = icmp ult ptr %114, %2
  %116 = trunc i64 %100 to i32
  %117 = select i1 %115, i32 %116, i32 %111
  %118 = zext i1 %115 to i32
  %119 = shl i32 %117, 3
  %120 = sub i32 %102, %119
  br label %121

121:                                              ; preds = %110, %105
  %122 = phi i32 [ %120, %110 ], [ %107, %105 ]
  %123 = phi i32 [ %117, %110 ], [ %106, %105 ]
  %124 = phi i32 [ %118, %110 ], [ 0, %105 ]
  %125 = zext i32 %123 to i64
  %126 = sub i64 %100, %125
  %127 = getelementptr inbounds i8, ptr %2, i64 %126
  %128 = load i64, ptr %127, align 1, !tbaa !27
  %129 = icmp eq i32 %124, 0
  %130 = icmp ult ptr %99, %94
  %131 = and i1 %130, %129
  br i1 %131, label %132, label %203

132:                                              ; preds = %121
  %133 = and i32 %122, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl i64 %128, %134
  %136 = lshr i64 %135, %97
  %137 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %136
  %138 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %136, i32 1
  %139 = load i8, ptr %138, align 1, !tbaa !94
  %140 = load i8, ptr %137, align 1, !tbaa !96
  %141 = zext i8 %140 to i32
  %142 = add i32 %122, %141
  store i8 %139, ptr %99, align 1, !tbaa !9
  %143 = getelementptr inbounds i8, ptr %99, i64 1
  %144 = and i32 %142, 63
  %145 = zext nneg i32 %144 to i64
  %146 = shl i64 %128, %145
  %147 = lshr i64 %146, %97
  %148 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %147
  %149 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %147, i32 1
  %150 = load i8, ptr %149, align 1, !tbaa !94
  %151 = load i8, ptr %148, align 1, !tbaa !96
  %152 = zext i8 %151 to i32
  %153 = add i32 %142, %152
  store i8 %150, ptr %143, align 1, !tbaa !9
  %154 = getelementptr inbounds i8, ptr %99, i64 2
  %155 = and i32 %153, 63
  %156 = zext nneg i32 %155 to i64
  %157 = shl i64 %128, %156
  %158 = lshr i64 %157, %97
  %159 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %158
  %160 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %158, i32 1
  %161 = load i8, ptr %160, align 1, !tbaa !94
  %162 = load i8, ptr %159, align 1, !tbaa !96
  %163 = zext i8 %162 to i32
  %164 = add i32 %153, %163
  store i8 %161, ptr %154, align 1, !tbaa !9
  %165 = getelementptr inbounds i8, ptr %99, i64 3
  %166 = and i32 %164, 63
  %167 = zext nneg i32 %166 to i64
  %168 = shl i64 %128, %167
  %169 = lshr i64 %168, %97
  %170 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %169
  %171 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %169, i32 1
  %172 = load i8, ptr %171, align 1, !tbaa !94
  %173 = load i8, ptr %170, align 1, !tbaa !96
  %174 = zext i8 %173 to i32
  %175 = add i32 %164, %174
  %176 = getelementptr inbounds i8, ptr %99, i64 4
  store i8 %172, ptr %165, align 1, !tbaa !9
  %177 = icmp ugt i32 %175, 64
  br i1 %177, label %205, label %98, !prof !85, !llvm.loop !97

178:                                              ; preds = %79
  %179 = icmp slt i64 %3, 16
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = lshr i32 %77, 3
  %182 = zext nneg i32 %181 to i64
  %183 = sub nsw i64 0, %182
  %184 = getelementptr inbounds i8, ptr %80, i64 %183
  %185 = and i32 %77, 7
  %186 = load i64, ptr %184, align 1, !tbaa !27
  br label %205

187:                                              ; preds = %178
  %188 = icmp eq i64 %71, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %187
  %190 = lshr i32 %77, 3
  %191 = zext nneg i32 %190 to i64
  %192 = sub nsw i64 0, %191
  %193 = getelementptr inbounds i8, ptr %80, i64 %192
  %194 = icmp ult ptr %193, %2
  %195 = trunc i64 %71 to i32
  %196 = select i1 %194, i32 %195, i32 %190
  %197 = zext i32 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %80, i64 %198
  %200 = shl i32 %196, 3
  %201 = sub i32 %77, %200
  %202 = load i64, ptr %199, align 1, !tbaa !27
  br label %205

203:                                              ; preds = %121
  %204 = getelementptr inbounds i8, ptr %2, i64 %126
  br label %205

205:                                              ; preds = %108, %132, %203, %82, %187, %180, %189
  %206 = phi i32 [ %201, %189 ], [ %185, %180 ], [ %77, %187 ], [ %88, %82 ], [ %122, %203 ], [ %102, %108 ], [ %175, %132 ]
  %207 = phi i64 [ %202, %189 ], [ %186, %180 ], [ %73, %187 ], [ %65, %82 ], [ %128, %203 ], [ %101, %108 ], [ %128, %132 ]
  %208 = phi ptr [ %199, %189 ], [ %184, %180 ], [ %80, %187 ], [ %2, %82 ], [ %204, %203 ], [ %103, %108 ], [ @BIT_reloadDStream.zeroFilled, %132 ]
  %209 = phi ptr [ %0, %189 ], [ %0, %180 ], [ %0, %187 ], [ %0, %82 ], [ %99, %203 ], [ %99, %108 ], [ %176, %132 ]
  %210 = freeze i32 %206
  %211 = icmp ult ptr %209, %8
  br i1 %211, label %212, label %268

212:                                              ; preds = %205
  %213 = ptrtoint ptr %209 to i64
  %214 = sub nsw i32 0, %11
  %215 = and i32 %214, 63
  %216 = zext nneg i32 %215 to i64
  %217 = add i64 %7, %6
  %218 = sub i64 %217, %213
  %219 = add i64 %213, 1
  %220 = and i64 %218, 1
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %212
  %223 = and i32 %210, 63
  %224 = zext nneg i32 %223 to i64
  %225 = shl i64 %207, %224
  %226 = lshr i64 %225, %216
  %227 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %226
  %228 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %226, i32 1
  %229 = load i8, ptr %228, align 1, !tbaa !94
  %230 = load i8, ptr %227, align 1, !tbaa !96
  %231 = freeze i8 %230
  %232 = zext i8 %231 to i32
  %233 = add i32 %210, %232
  %234 = getelementptr inbounds i8, ptr %209, i64 1
  store i8 %229, ptr %209, align 1, !tbaa !9
  br label %235

235:                                              ; preds = %222, %212
  %236 = phi i32 [ %210, %212 ], [ %233, %222 ]
  %237 = phi ptr [ %209, %212 ], [ %234, %222 ]
  %238 = phi i32 [ undef, %212 ], [ %233, %222 ]
  %239 = icmp eq i64 %217, %219
  br i1 %239, label %268, label %240

240:                                              ; preds = %235, %240
  %241 = phi i32 [ %265, %240 ], [ %236, %235 ]
  %242 = phi ptr [ %266, %240 ], [ %237, %235 ]
  %243 = and i32 %241, 63
  %244 = zext nneg i32 %243 to i64
  %245 = shl i64 %207, %244
  %246 = lshr i64 %245, %216
  %247 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %246
  %248 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %246, i32 1
  %249 = load i8, ptr %248, align 1, !tbaa !94
  %250 = load i8, ptr %247, align 1, !tbaa !96
  %251 = freeze i8 %250
  %252 = zext i8 %251 to i32
  %253 = add i32 %241, %252
  %254 = getelementptr inbounds i8, ptr %242, i64 1
  store i8 %249, ptr %242, align 1, !tbaa !9
  %255 = and i32 %253, 63
  %256 = zext nneg i32 %255 to i64
  %257 = shl i64 %207, %256
  %258 = lshr i64 %257, %216
  %259 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %258
  %260 = getelementptr inbounds %struct.HUF_DEltX1, ptr %9, i64 %258, i32 1
  %261 = load i8, ptr %260, align 1, !tbaa !94
  %262 = load i8, ptr %259, align 1, !tbaa !96
  %263 = freeze i8 %262
  %264 = zext i8 %263 to i32
  %265 = add i32 %253, %264
  %266 = getelementptr inbounds i8, ptr %242, i64 2
  store i8 %261, ptr %254, align 1, !tbaa !9
  %267 = icmp ult ptr %266, %8
  br i1 %267, label %240, label %268, !llvm.loop !98

268:                                              ; preds = %235, %240, %205
  %269 = phi i32 [ %210, %205 ], [ %238, %235 ], [ %265, %240 ]
  %270 = icmp eq ptr %208, %2
  %271 = icmp eq i32 %269, 64
  %272 = and i1 %270, %271
  %273 = select i1 %272, i64 %1, i64 -20
  br label %274

274:                                              ; preds = %268, %64, %15, %5, %70
  %275 = phi i64 [ %3, %70 ], [ -20, %64 ], [ -1, %15 ], [ -72, %5 ], [ %273, %268 ]
  ret i64 %275
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @HUF_decompress4X2_usingDTable_internal_fast_c_loop(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 3
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = ptrtoint ptr %5 to i64
  %32 = ptrtoint ptr %24 to i64
  %33 = ptrtoint ptr %26 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = ptrtoint ptr %30 to i64
  br label %37

36:                                               ; preds = %78
  br label %37, !llvm.loop !115

37:                                               ; preds = %36, %1
  %38 = phi ptr [ %28, %1 ], [ %314, %36 ]
  %39 = phi ptr [ %26, %1 ], [ %240, %36 ]
  %40 = phi ptr [ %24, %1 ], [ %230, %36 ]
  %41 = phi ptr [ %22, %1 ], [ %220, %36 ]
  %42 = phi ptr [ %14, %1 ], [ %265, %36 ]
  %43 = phi ptr [ %16, %1 ], [ %283, %36 ]
  %44 = phi ptr [ %18, %1 ], [ %301, %36 ]
  %45 = phi ptr [ %20, %1 ], [ %319, %36 ]
  %46 = phi i64 [ %7, %1 ], [ %268, %36 ]
  %47 = phi i64 [ %9, %1 ], [ %286, %36 ]
  %48 = phi i64 [ %11, %1 ], [ %304, %36 ]
  %49 = phi i64 [ %13, %1 ], [ %322, %36 ]
  %50 = ptrtoint ptr %42 to i64
  %51 = sub i64 %50, %31
  %52 = udiv i64 %51, 7
  %53 = ptrtoint ptr %41 to i64
  %54 = sub i64 %32, %53
  %55 = udiv i64 %54, 10
  %56 = tail call i64 @llvm.umin.i64(i64 %52, i64 %55)
  %57 = ptrtoint ptr %40 to i64
  %58 = sub i64 %33, %57
  %59 = udiv i64 %58, 10
  %60 = tail call i64 @llvm.umin.i64(i64 %56, i64 %59)
  %61 = ptrtoint ptr %39 to i64
  %62 = sub i64 %34, %61
  %63 = udiv i64 %62, 10
  %64 = tail call i64 @llvm.umin.i64(i64 %60, i64 %63)
  %65 = ptrtoint ptr %38 to i64
  %66 = sub i64 %35, %65
  %67 = udiv i64 %66, 10
  %68 = tail call i64 @llvm.umin.i64(i64 %64, i64 %67)
  %69 = mul nuw nsw i64 %68, 5
  %70 = getelementptr inbounds i8, ptr %38, i64 %69
  %71 = icmp eq i64 %68, 0
  %72 = icmp ult ptr %43, %42
  %73 = select i1 %71, i1 true, i1 %72
  %74 = icmp ult ptr %44, %43
  %75 = select i1 %73, i1 true, i1 %74
  %76 = icmp ult ptr %45, %44
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %324, label %78

78:                                               ; preds = %37, %78
  %79 = phi ptr [ %319, %78 ], [ %45, %37 ]
  %80 = phi ptr [ %301, %78 ], [ %44, %37 ]
  %81 = phi ptr [ %283, %78 ], [ %43, %37 ]
  %82 = phi ptr [ %265, %78 ], [ %42, %37 ]
  %83 = phi ptr [ %314, %78 ], [ %38, %37 ]
  %84 = phi ptr [ %240, %78 ], [ %39, %37 ]
  %85 = phi ptr [ %230, %78 ], [ %40, %37 ]
  %86 = phi ptr [ %220, %78 ], [ %41, %37 ]
  %87 = phi i64 [ %268, %78 ], [ %46, %37 ]
  %88 = phi i64 [ %286, %78 ], [ %47, %37 ]
  %89 = phi i64 [ %304, %78 ], [ %48, %37 ]
  %90 = phi i64 [ %322, %78 ], [ %49, %37 ]
  %91 = lshr i64 %87, 53
  %92 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %91
  %93 = load i32, ptr %92, align 1, !tbaa !5
  %94 = zext i32 %93 to i64
  %95 = trunc i32 %93 to i16
  store i16 %95, ptr %86, align 1, !tbaa !53
  %96 = lshr i64 %94, 16
  %97 = and i64 %96, 63
  %98 = shl i64 %87, %97
  %99 = lshr i64 %94, 24
  %100 = getelementptr inbounds i8, ptr %86, i64 %99
  %101 = lshr i64 %88, 53
  %102 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %101
  %103 = load i32, ptr %102, align 1, !tbaa !5
  %104 = zext i32 %103 to i64
  %105 = trunc i32 %103 to i16
  store i16 %105, ptr %85, align 1, !tbaa !53
  %106 = lshr i64 %104, 16
  %107 = and i64 %106, 63
  %108 = shl i64 %88, %107
  %109 = lshr i64 %104, 24
  %110 = getelementptr inbounds i8, ptr %85, i64 %109
  %111 = lshr i64 %89, 53
  %112 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %111
  %113 = load i32, ptr %112, align 1, !tbaa !5
  %114 = zext i32 %113 to i64
  %115 = trunc i32 %113 to i16
  store i16 %115, ptr %84, align 1, !tbaa !53
  %116 = lshr i64 %114, 16
  %117 = and i64 %116, 63
  %118 = shl i64 %89, %117
  %119 = lshr i64 %114, 24
  %120 = getelementptr inbounds i8, ptr %84, i64 %119
  %121 = lshr i64 %98, 53
  %122 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %121
  %123 = load i32, ptr %122, align 1, !tbaa !5
  %124 = zext i32 %123 to i64
  %125 = trunc i32 %123 to i16
  store i16 %125, ptr %100, align 1, !tbaa !53
  %126 = lshr i64 %124, 16
  %127 = and i64 %126, 63
  %128 = shl i64 %98, %127
  %129 = lshr i64 %124, 24
  %130 = getelementptr inbounds i8, ptr %100, i64 %129
  %131 = lshr i64 %108, 53
  %132 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %131
  %133 = load i32, ptr %132, align 1, !tbaa !5
  %134 = zext i32 %133 to i64
  %135 = trunc i32 %133 to i16
  store i16 %135, ptr %110, align 1, !tbaa !53
  %136 = lshr i64 %134, 16
  %137 = and i64 %136, 63
  %138 = shl i64 %108, %137
  %139 = lshr i64 %134, 24
  %140 = getelementptr inbounds i8, ptr %110, i64 %139
  %141 = lshr i64 %118, 53
  %142 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %141
  %143 = load i32, ptr %142, align 1, !tbaa !5
  %144 = zext i32 %143 to i64
  %145 = trunc i32 %143 to i16
  store i16 %145, ptr %120, align 1, !tbaa !53
  %146 = lshr i64 %144, 16
  %147 = and i64 %146, 63
  %148 = shl i64 %118, %147
  %149 = lshr i64 %144, 24
  %150 = getelementptr inbounds i8, ptr %120, i64 %149
  %151 = lshr i64 %128, 53
  %152 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %151
  %153 = load i32, ptr %152, align 1, !tbaa !5
  %154 = zext i32 %153 to i64
  %155 = trunc i32 %153 to i16
  store i16 %155, ptr %130, align 1, !tbaa !53
  %156 = lshr i64 %154, 16
  %157 = and i64 %156, 63
  %158 = shl i64 %128, %157
  %159 = lshr i64 %154, 24
  %160 = getelementptr inbounds i8, ptr %130, i64 %159
  %161 = lshr i64 %138, 53
  %162 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %161
  %163 = load i32, ptr %162, align 1, !tbaa !5
  %164 = zext i32 %163 to i64
  %165 = trunc i32 %163 to i16
  store i16 %165, ptr %140, align 1, !tbaa !53
  %166 = lshr i64 %164, 16
  %167 = and i64 %166, 63
  %168 = shl i64 %138, %167
  %169 = lshr i64 %164, 24
  %170 = getelementptr inbounds i8, ptr %140, i64 %169
  %171 = lshr i64 %148, 53
  %172 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %171
  %173 = load i32, ptr %172, align 1, !tbaa !5
  %174 = zext i32 %173 to i64
  %175 = trunc i32 %173 to i16
  store i16 %175, ptr %150, align 1, !tbaa !53
  %176 = lshr i64 %174, 16
  %177 = and i64 %176, 63
  %178 = shl i64 %148, %177
  %179 = lshr i64 %174, 24
  %180 = getelementptr inbounds i8, ptr %150, i64 %179
  %181 = lshr i64 %158, 53
  %182 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %181
  %183 = load i32, ptr %182, align 1, !tbaa !5
  %184 = zext i32 %183 to i64
  %185 = trunc i32 %183 to i16
  store i16 %185, ptr %160, align 1, !tbaa !53
  %186 = lshr i64 %184, 16
  %187 = and i64 %186, 63
  %188 = shl i64 %158, %187
  %189 = lshr i64 %184, 24
  %190 = getelementptr inbounds i8, ptr %160, i64 %189
  %191 = lshr i64 %168, 53
  %192 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %191
  %193 = load i32, ptr %192, align 1, !tbaa !5
  %194 = zext i32 %193 to i64
  %195 = trunc i32 %193 to i16
  store i16 %195, ptr %170, align 1, !tbaa !53
  %196 = lshr i64 %194, 16
  %197 = and i64 %196, 63
  %198 = shl i64 %168, %197
  %199 = lshr i64 %194, 24
  %200 = getelementptr inbounds i8, ptr %170, i64 %199
  %201 = lshr i64 %178, 53
  %202 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %201
  %203 = load i32, ptr %202, align 1, !tbaa !5
  %204 = zext i32 %203 to i64
  %205 = trunc i32 %203 to i16
  store i16 %205, ptr %180, align 1, !tbaa !53
  %206 = lshr i64 %204, 16
  %207 = and i64 %206, 63
  %208 = shl i64 %178, %207
  %209 = lshr i64 %204, 24
  %210 = getelementptr inbounds i8, ptr %180, i64 %209
  %211 = lshr i64 %188, 53
  %212 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %211
  %213 = load i32, ptr %212, align 1, !tbaa !5
  %214 = zext i32 %213 to i64
  %215 = trunc i32 %213 to i16
  store i16 %215, ptr %190, align 1, !tbaa !53
  %216 = lshr i64 %214, 16
  %217 = and i64 %216, 63
  %218 = shl i64 %188, %217
  %219 = lshr i64 %214, 24
  %220 = getelementptr inbounds i8, ptr %190, i64 %219
  %221 = lshr i64 %198, 53
  %222 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %221
  %223 = load i32, ptr %222, align 1, !tbaa !5
  %224 = zext i32 %223 to i64
  %225 = trunc i32 %223 to i16
  store i16 %225, ptr %200, align 1, !tbaa !53
  %226 = lshr i64 %224, 16
  %227 = and i64 %226, 63
  %228 = shl i64 %198, %227
  %229 = lshr i64 %224, 24
  %230 = getelementptr inbounds i8, ptr %200, i64 %229
  %231 = lshr i64 %208, 53
  %232 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %231
  %233 = load i32, ptr %232, align 1, !tbaa !5
  %234 = zext i32 %233 to i64
  %235 = trunc i32 %233 to i16
  store i16 %235, ptr %210, align 1, !tbaa !53
  %236 = lshr i64 %234, 16
  %237 = and i64 %236, 63
  %238 = shl i64 %208, %237
  %239 = lshr i64 %234, 24
  %240 = getelementptr inbounds i8, ptr %210, i64 %239
  %241 = lshr i64 %90, 53
  %242 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %241
  %243 = load i32, ptr %242, align 1, !tbaa !5
  %244 = zext i32 %243 to i64
  %245 = trunc i32 %243 to i16
  store i16 %245, ptr %83, align 1, !tbaa !53
  %246 = lshr i64 %244, 16
  %247 = and i64 %246, 63
  %248 = shl i64 %90, %247
  %249 = lshr i64 %244, 24
  %250 = getelementptr inbounds i8, ptr %83, i64 %249
  %251 = lshr i64 %248, 53
  %252 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %251
  %253 = load i32, ptr %252, align 1, !tbaa !5
  %254 = zext i32 %253 to i64
  %255 = trunc i32 %253 to i16
  store i16 %255, ptr %250, align 1, !tbaa !53
  %256 = lshr i64 %254, 16
  %257 = and i64 %256, 63
  %258 = shl i64 %248, %257
  %259 = lshr i64 %254, 24
  %260 = getelementptr inbounds i8, ptr %250, i64 %259
  %261 = tail call i64 @llvm.cttz.i64(i64 %218, i1 true), !range !116
  %262 = and i64 %261, 7
  %263 = lshr i64 %261, 3
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds i8, ptr %82, i64 %264
  %266 = load i64, ptr %265, align 1, !tbaa !27
  %267 = or i64 %266, 1
  %268 = shl i64 %267, %262
  %269 = lshr i64 %258, 53
  %270 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %269
  %271 = load i32, ptr %270, align 1, !tbaa !5
  %272 = zext i32 %271 to i64
  %273 = trunc i32 %271 to i16
  store i16 %273, ptr %260, align 1, !tbaa !53
  %274 = lshr i64 %272, 16
  %275 = and i64 %274, 63
  %276 = shl i64 %258, %275
  %277 = lshr i64 %272, 24
  %278 = getelementptr inbounds i8, ptr %260, i64 %277
  %279 = tail call i64 @llvm.cttz.i64(i64 %228, i1 true), !range !116
  %280 = and i64 %279, 7
  %281 = lshr i64 %279, 3
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, ptr %81, i64 %282
  %284 = load i64, ptr %283, align 1, !tbaa !27
  %285 = or i64 %284, 1
  %286 = shl i64 %285, %280
  %287 = lshr i64 %276, 53
  %288 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %287
  %289 = load i32, ptr %288, align 1, !tbaa !5
  %290 = zext i32 %289 to i64
  %291 = trunc i32 %289 to i16
  store i16 %291, ptr %278, align 1, !tbaa !53
  %292 = lshr i64 %290, 16
  %293 = and i64 %292, 63
  %294 = shl i64 %276, %293
  %295 = lshr i64 %290, 24
  %296 = getelementptr inbounds i8, ptr %278, i64 %295
  %297 = tail call i64 @llvm.cttz.i64(i64 %238, i1 true), !range !116
  %298 = and i64 %297, 7
  %299 = lshr i64 %297, 3
  %300 = sub nsw i64 0, %299
  %301 = getelementptr inbounds i8, ptr %80, i64 %300
  %302 = load i64, ptr %301, align 1, !tbaa !27
  %303 = or i64 %302, 1
  %304 = shl i64 %303, %298
  %305 = lshr i64 %294, 53
  %306 = getelementptr inbounds %struct.HUF_DEltX2, ptr %3, i64 %305
  %307 = load i32, ptr %306, align 1, !tbaa !5
  %308 = zext i32 %307 to i64
  %309 = trunc i32 %307 to i16
  store i16 %309, ptr %296, align 1, !tbaa !53
  %310 = lshr i64 %308, 16
  %311 = and i64 %310, 63
  %312 = shl i64 %294, %311
  %313 = lshr i64 %308, 24
  %314 = getelementptr inbounds i8, ptr %296, i64 %313
  %315 = tail call i64 @llvm.cttz.i64(i64 %312, i1 true), !range !116
  %316 = and i64 %315, 7
  %317 = lshr i64 %315, 3
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %79, i64 %318
  %320 = load i64, ptr %319, align 1, !tbaa !27
  %321 = or i64 %320, 1
  %322 = shl i64 %321, %316
  %323 = icmp ult ptr %314, %70
  br i1 %323, label %78, label %36, !llvm.loop !115

324:                                              ; preds = %37
  store i64 %46, ptr %6, align 8
  store i64 %47, ptr %8, align 8
  store i64 %48, ptr %10, align 8
  store i64 %49, ptr %12, align 8
  store ptr %42, ptr %0, align 8
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %17, align 8
  store ptr %45, ptr %19, align 8
  store ptr %41, ptr %21, align 8
  store ptr %40, ptr %23, align 8
  store ptr %39, ptr %25, align 8
  store ptr %38, ptr %27, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly %4) unnamed_addr #10 {
  %6 = alloca %struct.BIT_DStream_t, align 8
  %7 = icmp ult i64 %3, 10
  %8 = icmp ult i64 %1, 6
  %9 = or i1 %8, %7
  br i1 %9, label %2178, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = getelementptr inbounds i32, ptr %4, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %14 = load i16, ptr %2, align 1, !tbaa !53
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds i8, ptr %2, i64 2
  %17 = load i16, ptr %16, align 1, !tbaa !53
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 4
  %20 = load i16, ptr %19, align 1, !tbaa !53
  %21 = zext i16 %20 to i64
  %22 = add nuw nsw i64 %15, 6
  %23 = add nuw nsw i64 %22, %18
  %24 = add nuw nsw i64 %23, %21
  %25 = sub i64 %3, %24
  %26 = getelementptr inbounds i8, ptr %2, i64 6
  %27 = getelementptr i8, ptr %26, i64 %15
  %28 = getelementptr i8, ptr %27, i64 %18
  %29 = getelementptr i8, ptr %28, i64 %21
  %30 = add i64 %1, 3
  %31 = lshr i64 %30, 2
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 %31
  %34 = getelementptr inbounds i8, ptr %33, i64 %31
  %35 = load i32, ptr %4, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp ugt i64 %24, %3
  %39 = icmp ugt ptr %34, %11
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %2176, label %41

41:                                               ; preds = %10
  %42 = icmp eq i16 %14, 0
  br i1 %42, label %2176, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %2, i64 14
  %45 = icmp ugt i16 %14, 7
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %27, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %2176, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %27, i64 -8
  %52 = load i64, ptr %51, align 1, !tbaa !27
  %53 = zext i8 %48 to i32
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true), !range !81
  %55 = xor i32 %54, 31
  %56 = sub nuw nsw i32 8, %55
  br label %113

57:                                               ; preds = %43
  %58 = load i8, ptr %26, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  switch i16 %14, label %101 [
    i16 7, label %60
    i16 6, label %66
    i16 5, label %73
    i16 4, label %80
    i16 3, label %87
    i16 2, label %94
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %2, i64 12
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 48
  %65 = or disjoint i64 %64, %59
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i64 [ %59, %57 ], [ %65, %60 ]
  %68 = getelementptr inbounds i8, ptr %2, i64 11
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 40
  %72 = add nuw nsw i64 %71, %67
  br label %73

73:                                               ; preds = %66, %57
  %74 = phi i64 [ %59, %57 ], [ %72, %66 ]
  %75 = getelementptr inbounds i8, ptr %2, i64 10
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 32
  %79 = add nuw nsw i64 %78, %74
  br label %80

80:                                               ; preds = %73, %57
  %81 = phi i64 [ %59, %57 ], [ %79, %73 ]
  %82 = getelementptr inbounds i8, ptr %2, i64 9
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 24
  %86 = add nuw nsw i64 %85, %81
  br label %87

87:                                               ; preds = %80, %57
  %88 = phi i64 [ %59, %57 ], [ %86, %80 ]
  %89 = getelementptr inbounds i8, ptr %2, i64 8
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 16
  %93 = add nuw nsw i64 %92, %88
  br label %94

94:                                               ; preds = %87, %57
  %95 = phi i64 [ %59, %57 ], [ %93, %87 ]
  %96 = getelementptr inbounds i8, ptr %2, i64 7
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = add nuw nsw i64 %99, %95
  br label %101

101:                                              ; preds = %94, %57
  %102 = phi i64 [ %59, %57 ], [ %100, %94 ]
  %103 = getelementptr i8, ptr %27, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %2176, label %106

106:                                              ; preds = %101
  %107 = zext i8 %104 to i32
  %108 = tail call i32 @llvm.ctlz.i32(i32 %107, i1 true), !range !81
  %109 = shl nuw nsw i16 %14, 3
  %110 = zext nneg i16 %109 to i32
  %111 = sub nsw i32 %108, %110
  %112 = add nsw i32 %111, 41
  br label %113

113:                                              ; preds = %106, %50
  %114 = phi ptr [ %51, %50 ], [ %26, %106 ]
  %115 = phi i32 [ %56, %50 ], [ %112, %106 ]
  %116 = phi i64 [ %52, %50 ], [ %102, %106 ]
  %117 = icmp eq i16 %17, 0
  br i1 %117, label %2176, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, ptr %27, i64 8
  %120 = icmp ugt i16 %17, 7
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %28, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %2176, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %28, i64 -8
  %127 = load i64, ptr %126, align 1, !tbaa !27
  %128 = zext i8 %123 to i32
  %129 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 true), !range !81
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  br label %188

132:                                              ; preds = %118
  %133 = load i8, ptr %27, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  switch i16 %17, label %176 [
    i16 7, label %135
    i16 6, label %141
    i16 5, label %148
    i16 4, label %155
    i16 3, label %162
    i16 2, label %169
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %27, i64 6
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 48
  %140 = or disjoint i64 %139, %134
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i64 [ %134, %132 ], [ %140, %135 ]
  %143 = getelementptr inbounds i8, ptr %27, i64 5
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 40
  %147 = add nuw nsw i64 %146, %142
  br label %148

148:                                              ; preds = %141, %132
  %149 = phi i64 [ %134, %132 ], [ %147, %141 ]
  %150 = getelementptr inbounds i8, ptr %27, i64 4
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 32
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %134, %132 ], [ %154, %148 ]
  %157 = getelementptr inbounds i8, ptr %27, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 24
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %132
  %163 = phi i64 [ %134, %132 ], [ %161, %155 ]
  %164 = getelementptr inbounds i8, ptr %27, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 16
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %132
  %170 = phi i64 [ %134, %132 ], [ %168, %162 ]
  %171 = getelementptr inbounds i8, ptr %27, i64 1
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 8
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %132
  %177 = phi i64 [ %134, %132 ], [ %175, %169 ]
  %178 = getelementptr i8, ptr %28, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %2176, label %181

181:                                              ; preds = %176
  %182 = zext i8 %179 to i32
  %183 = tail call i32 @llvm.ctlz.i32(i32 %182, i1 true), !range !81
  %184 = shl nuw nsw i16 %17, 3
  %185 = zext nneg i16 %184 to i32
  %186 = sub nsw i32 %183, %185
  %187 = add nsw i32 %186, 41
  br label %188

188:                                              ; preds = %181, %125
  %189 = phi i64 [ %127, %125 ], [ %177, %181 ]
  %190 = phi i32 [ %131, %125 ], [ %187, %181 ]
  %191 = phi ptr [ %126, %125 ], [ %27, %181 ]
  %192 = icmp eq i16 %20, 0
  br i1 %192, label %2176, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds i8, ptr %28, i64 8
  %195 = icmp ugt i16 %20, 7
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = getelementptr i8, ptr %29, i64 -1
  %198 = load i8, ptr %197, align 1, !tbaa !9
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %2176, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %29, i64 -8
  %202 = load i64, ptr %201, align 1, !tbaa !27
  %203 = zext i8 %198 to i32
  %204 = tail call i32 @llvm.ctlz.i32(i32 %203, i1 true), !range !81
  %205 = xor i32 %204, 31
  %206 = sub nuw nsw i32 8, %205
  br label %263

207:                                              ; preds = %193
  %208 = load i8, ptr %28, align 1, !tbaa !9
  %209 = zext i8 %208 to i64
  switch i16 %20, label %251 [
    i16 7, label %210
    i16 6, label %216
    i16 5, label %223
    i16 4, label %230
    i16 3, label %237
    i16 2, label %244
  ]

210:                                              ; preds = %207
  %211 = getelementptr inbounds i8, ptr %28, i64 6
  %212 = load i8, ptr %211, align 1, !tbaa !9
  %213 = zext i8 %212 to i64
  %214 = shl nuw nsw i64 %213, 48
  %215 = or disjoint i64 %214, %209
  br label %216

216:                                              ; preds = %210, %207
  %217 = phi i64 [ %209, %207 ], [ %215, %210 ]
  %218 = getelementptr inbounds i8, ptr %28, i64 5
  %219 = load i8, ptr %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 40
  %222 = add nuw nsw i64 %221, %217
  br label %223

223:                                              ; preds = %216, %207
  %224 = phi i64 [ %209, %207 ], [ %222, %216 ]
  %225 = getelementptr inbounds i8, ptr %28, i64 4
  %226 = load i8, ptr %225, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 32
  %229 = add nuw nsw i64 %228, %224
  br label %230

230:                                              ; preds = %223, %207
  %231 = phi i64 [ %209, %207 ], [ %229, %223 ]
  %232 = getelementptr inbounds i8, ptr %28, i64 3
  %233 = load i8, ptr %232, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 24
  %236 = add nuw nsw i64 %235, %231
  br label %237

237:                                              ; preds = %230, %207
  %238 = phi i64 [ %209, %207 ], [ %236, %230 ]
  %239 = getelementptr inbounds i8, ptr %28, i64 2
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = shl nuw nsw i64 %241, 16
  %243 = add nuw nsw i64 %242, %238
  br label %244

244:                                              ; preds = %237, %207
  %245 = phi i64 [ %209, %207 ], [ %243, %237 ]
  %246 = getelementptr inbounds i8, ptr %28, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 8
  %250 = add nuw nsw i64 %249, %245
  br label %251

251:                                              ; preds = %244, %207
  %252 = phi i64 [ %209, %207 ], [ %250, %244 ]
  %253 = getelementptr i8, ptr %29, i64 -1
  %254 = load i8, ptr %253, align 1, !tbaa !9
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %2176, label %256

256:                                              ; preds = %251
  %257 = zext i8 %254 to i32
  %258 = tail call i32 @llvm.ctlz.i32(i32 %257, i1 true), !range !81
  %259 = shl nuw nsw i16 %20, 3
  %260 = zext nneg i16 %259 to i32
  %261 = sub nsw i32 %258, %260
  %262 = add nsw i32 %261, 41
  br label %263

263:                                              ; preds = %256, %200
  %264 = phi i64 [ %202, %200 ], [ %252, %256 ]
  %265 = phi i32 [ %206, %200 ], [ %262, %256 ]
  %266 = phi ptr [ %201, %200 ], [ %28, %256 ]
  %267 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %6, ptr noundef nonnull %29, i64 noundef %25), !range !99
  %268 = icmp ult i64 %267, -119
  br i1 %268, label %269, label %2176

269:                                              ; preds = %263
  %270 = ptrtoint ptr %11 to i64
  %271 = ptrtoint ptr %34 to i64
  %272 = sub i64 %270, %271
  %273 = icmp ugt i64 %272, 7
  %274 = icmp ult ptr %34, %12
  %275 = select i1 %273, i1 %274, i1 false
  br i1 %275, label %276, label %582

276:                                              ; preds = %269
  %277 = load i64, ptr %6, align 8, !tbaa !100
  %278 = sub nsw i32 0, %36
  %279 = and i32 %278, 63
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 1
  %282 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  %283 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 4
  %284 = load ptr, ptr %283, align 8, !tbaa !103
  %285 = load i32, ptr %281, align 8, !tbaa !104
  %286 = load ptr, ptr %282, align 8, !tbaa !105
  br label %287

287:                                              ; preds = %276, %572
  %288 = phi ptr [ %286, %276 ], [ %573, %572 ]
  %289 = phi i32 [ %285, %276 ], [ %574, %572 ]
  %290 = phi ptr [ %0, %276 ], [ %359, %572 ]
  %291 = phi ptr [ %32, %276 ], [ %415, %572 ]
  %292 = phi ptr [ %33, %276 ], [ %495, %572 ]
  %293 = phi ptr [ %34, %276 ], [ %551, %572 ]
  %294 = phi ptr [ %266, %276 ], [ %563, %572 ]
  %295 = phi i64 [ %116, %276 ], [ %427, %572 ]
  %296 = phi i32 [ %265, %276 ], [ %562, %572 ]
  %297 = phi i64 [ %264, %276 ], [ %561, %572 ]
  %298 = phi ptr [ %191, %276 ], [ %439, %572 ]
  %299 = phi i32 [ %115, %276 ], [ %426, %572 ]
  %300 = phi i32 [ %190, %276 ], [ %438, %572 ]
  %301 = phi i64 [ %189, %276 ], [ %437, %572 ]
  %302 = phi ptr [ %114, %276 ], [ %425, %572 ]
  %303 = phi i64 [ %277, %276 ], [ %575, %572 ]
  %304 = and i32 %299, 63
  %305 = zext nneg i32 %304 to i64
  %306 = shl i64 %295, %305
  %307 = lshr i64 %306, %280
  %308 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %307
  %309 = load i16, ptr %308, align 2
  store i16 %309, ptr %290, align 1
  %310 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %307, i32 1
  %311 = load i8, ptr %310, align 2, !tbaa !82
  %312 = zext i8 %311 to i32
  %313 = add i32 %299, %312
  %314 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %307, i32 2
  %315 = load i8, ptr %314, align 1, !tbaa !84
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds i8, ptr %290, i64 %316
  %318 = and i32 %313, 63
  %319 = zext nneg i32 %318 to i64
  %320 = shl i64 %295, %319
  %321 = lshr i64 %320, %280
  %322 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %321
  %323 = load i16, ptr %322, align 2
  store i16 %323, ptr %317, align 1
  %324 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %321, i32 1
  %325 = load i8, ptr %324, align 2, !tbaa !82
  %326 = zext i8 %325 to i32
  %327 = add i32 %313, %326
  %328 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %321, i32 2
  %329 = load i8, ptr %328, align 1, !tbaa !84
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds i8, ptr %317, i64 %330
  %332 = and i32 %327, 63
  %333 = zext nneg i32 %332 to i64
  %334 = shl i64 %295, %333
  %335 = lshr i64 %334, %280
  %336 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %335
  %337 = load i16, ptr %336, align 2
  store i16 %337, ptr %331, align 1
  %338 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %335, i32 1
  %339 = load i8, ptr %338, align 2, !tbaa !82
  %340 = zext i8 %339 to i32
  %341 = add i32 %327, %340
  %342 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %335, i32 2
  %343 = load i8, ptr %342, align 1, !tbaa !84
  %344 = zext i8 %343 to i64
  %345 = getelementptr inbounds i8, ptr %331, i64 %344
  %346 = and i32 %341, 63
  %347 = zext nneg i32 %346 to i64
  %348 = shl i64 %295, %347
  %349 = lshr i64 %348, %280
  %350 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %349
  %351 = load i16, ptr %350, align 2
  store i16 %351, ptr %345, align 1
  %352 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %349, i32 1
  %353 = load i8, ptr %352, align 2, !tbaa !82
  %354 = zext i8 %353 to i32
  %355 = add i32 %341, %354
  %356 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %349, i32 2
  %357 = load i8, ptr %356, align 1, !tbaa !84
  %358 = zext i8 %357 to i64
  %359 = getelementptr inbounds i8, ptr %345, i64 %358
  %360 = and i32 %300, 63
  %361 = zext nneg i32 %360 to i64
  %362 = shl i64 %301, %361
  %363 = lshr i64 %362, %280
  %364 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %363
  %365 = load i16, ptr %364, align 2
  store i16 %365, ptr %291, align 1
  %366 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %363, i32 1
  %367 = load i8, ptr %366, align 2, !tbaa !82
  %368 = zext i8 %367 to i32
  %369 = add i32 %300, %368
  %370 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %363, i32 2
  %371 = load i8, ptr %370, align 1, !tbaa !84
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds i8, ptr %291, i64 %372
  %374 = and i32 %369, 63
  %375 = zext nneg i32 %374 to i64
  %376 = shl i64 %301, %375
  %377 = lshr i64 %376, %280
  %378 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %377
  %379 = load i16, ptr %378, align 2
  store i16 %379, ptr %373, align 1
  %380 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %377, i32 1
  %381 = load i8, ptr %380, align 2, !tbaa !82
  %382 = zext i8 %381 to i32
  %383 = add i32 %369, %382
  %384 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %377, i32 2
  %385 = load i8, ptr %384, align 1, !tbaa !84
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds i8, ptr %373, i64 %386
  %388 = and i32 %383, 63
  %389 = zext nneg i32 %388 to i64
  %390 = shl i64 %301, %389
  %391 = lshr i64 %390, %280
  %392 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %391
  %393 = load i16, ptr %392, align 2
  store i16 %393, ptr %387, align 1
  %394 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %391, i32 1
  %395 = load i8, ptr %394, align 2, !tbaa !82
  %396 = zext i8 %395 to i32
  %397 = add i32 %383, %396
  %398 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %391, i32 2
  %399 = load i8, ptr %398, align 1, !tbaa !84
  %400 = zext i8 %399 to i64
  %401 = getelementptr inbounds i8, ptr %387, i64 %400
  %402 = and i32 %397, 63
  %403 = zext nneg i32 %402 to i64
  %404 = shl i64 %301, %403
  %405 = lshr i64 %404, %280
  %406 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %405
  %407 = load i16, ptr %406, align 2
  store i16 %407, ptr %401, align 1
  %408 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %405, i32 1
  %409 = load i8, ptr %408, align 2, !tbaa !82
  %410 = zext i8 %409 to i32
  %411 = add i32 %397, %410
  %412 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %405, i32 2
  %413 = load i8, ptr %412, align 1, !tbaa !84
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds i8, ptr %401, i64 %414
  %416 = icmp uge ptr %302, %44
  br i1 %416, label %417, label %424, !prof !106

417:                                              ; preds = %287
  %418 = lshr i32 %355, 3
  %419 = zext nneg i32 %418 to i64
  %420 = sub nsw i64 0, %419
  %421 = getelementptr inbounds i8, ptr %302, i64 %420
  %422 = and i32 %355, 7
  %423 = load i64, ptr %421, align 1, !tbaa !27
  br label %424

424:                                              ; preds = %287, %417
  %425 = phi ptr [ %302, %287 ], [ %421, %417 ]
  %426 = phi i32 [ %355, %287 ], [ %422, %417 ]
  %427 = phi i64 [ %295, %287 ], [ %423, %417 ]
  %428 = icmp uge ptr %298, %119
  br i1 %428, label %429, label %436, !prof !106

429:                                              ; preds = %424
  %430 = lshr i32 %411, 3
  %431 = zext nneg i32 %430 to i64
  %432 = sub nsw i64 0, %431
  %433 = getelementptr inbounds i8, ptr %298, i64 %432
  %434 = and i32 %411, 7
  %435 = load i64, ptr %433, align 1, !tbaa !27
  br label %436

436:                                              ; preds = %424, %429
  %437 = phi i64 [ %301, %424 ], [ %435, %429 ]
  %438 = phi i32 [ %411, %424 ], [ %434, %429 ]
  %439 = phi ptr [ %298, %424 ], [ %433, %429 ]
  %440 = and i32 %296, 63
  %441 = zext nneg i32 %440 to i64
  %442 = shl i64 %297, %441
  %443 = lshr i64 %442, %280
  %444 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %443
  %445 = load i16, ptr %444, align 2
  store i16 %445, ptr %292, align 1
  %446 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %443, i32 1
  %447 = load i8, ptr %446, align 2, !tbaa !82
  %448 = zext i8 %447 to i32
  %449 = add i32 %296, %448
  %450 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %443, i32 2
  %451 = load i8, ptr %450, align 1, !tbaa !84
  %452 = zext i8 %451 to i64
  %453 = getelementptr inbounds i8, ptr %292, i64 %452
  %454 = and i32 %449, 63
  %455 = zext nneg i32 %454 to i64
  %456 = shl i64 %297, %455
  %457 = lshr i64 %456, %280
  %458 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %457
  %459 = load i16, ptr %458, align 2
  store i16 %459, ptr %453, align 1
  %460 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %457, i32 1
  %461 = load i8, ptr %460, align 2, !tbaa !82
  %462 = zext i8 %461 to i32
  %463 = add i32 %449, %462
  %464 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %457, i32 2
  %465 = load i8, ptr %464, align 1, !tbaa !84
  %466 = zext i8 %465 to i64
  %467 = getelementptr inbounds i8, ptr %453, i64 %466
  %468 = and i32 %463, 63
  %469 = zext nneg i32 %468 to i64
  %470 = shl i64 %297, %469
  %471 = lshr i64 %470, %280
  %472 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %471
  %473 = load i16, ptr %472, align 2
  store i16 %473, ptr %467, align 1
  %474 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %471, i32 1
  %475 = load i8, ptr %474, align 2, !tbaa !82
  %476 = zext i8 %475 to i32
  %477 = add i32 %463, %476
  %478 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %471, i32 2
  %479 = load i8, ptr %478, align 1, !tbaa !84
  %480 = zext i8 %479 to i64
  %481 = getelementptr inbounds i8, ptr %467, i64 %480
  %482 = and i32 %477, 63
  %483 = zext nneg i32 %482 to i64
  %484 = shl i64 %297, %483
  %485 = lshr i64 %484, %280
  %486 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %485
  %487 = load i16, ptr %486, align 2
  store i16 %487, ptr %481, align 1
  %488 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %485, i32 1
  %489 = load i8, ptr %488, align 2, !tbaa !82
  %490 = zext i8 %489 to i32
  %491 = add i32 %477, %490
  %492 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %485, i32 2
  %493 = load i8, ptr %492, align 1, !tbaa !84
  %494 = zext i8 %493 to i64
  %495 = getelementptr inbounds i8, ptr %481, i64 %494
  %496 = and i32 %289, 63
  %497 = zext nneg i32 %496 to i64
  %498 = shl i64 %303, %497
  %499 = lshr i64 %498, %280
  %500 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %499
  %501 = load i16, ptr %500, align 2
  store i16 %501, ptr %293, align 1
  %502 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %499, i32 1
  %503 = load i8, ptr %502, align 2, !tbaa !82
  %504 = zext i8 %503 to i32
  %505 = add i32 %289, %504
  %506 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %499, i32 2
  %507 = load i8, ptr %506, align 1, !tbaa !84
  %508 = zext i8 %507 to i64
  %509 = getelementptr inbounds i8, ptr %293, i64 %508
  %510 = and i32 %505, 63
  %511 = zext nneg i32 %510 to i64
  %512 = shl i64 %303, %511
  %513 = lshr i64 %512, %280
  %514 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %513
  %515 = load i16, ptr %514, align 2
  store i16 %515, ptr %509, align 1
  %516 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %513, i32 1
  %517 = load i8, ptr %516, align 2, !tbaa !82
  %518 = zext i8 %517 to i32
  %519 = add i32 %505, %518
  %520 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %513, i32 2
  %521 = load i8, ptr %520, align 1, !tbaa !84
  %522 = zext i8 %521 to i64
  %523 = getelementptr inbounds i8, ptr %509, i64 %522
  %524 = and i32 %519, 63
  %525 = zext nneg i32 %524 to i64
  %526 = shl i64 %303, %525
  %527 = lshr i64 %526, %280
  %528 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %527
  %529 = load i16, ptr %528, align 2
  store i16 %529, ptr %523, align 1
  %530 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %527, i32 1
  %531 = load i8, ptr %530, align 2, !tbaa !82
  %532 = zext i8 %531 to i32
  %533 = add i32 %519, %532
  %534 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %527, i32 2
  %535 = load i8, ptr %534, align 1, !tbaa !84
  %536 = zext i8 %535 to i64
  %537 = getelementptr inbounds i8, ptr %523, i64 %536
  %538 = and i32 %533, 63
  %539 = zext nneg i32 %538 to i64
  %540 = shl i64 %303, %539
  %541 = lshr i64 %540, %280
  %542 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %541
  %543 = load i16, ptr %542, align 2
  store i16 %543, ptr %537, align 1
  %544 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %541, i32 1
  %545 = load i8, ptr %544, align 2, !tbaa !82
  %546 = zext i8 %545 to i32
  %547 = add i32 %533, %546
  %548 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %541, i32 2
  %549 = load i8, ptr %548, align 1, !tbaa !84
  %550 = zext i8 %549 to i64
  %551 = getelementptr inbounds i8, ptr %537, i64 %550
  %552 = icmp uge ptr %294, %194
  br i1 %552, label %553, label %560, !prof !106

553:                                              ; preds = %436
  %554 = lshr i32 %491, 3
  %555 = zext nneg i32 %554 to i64
  %556 = sub nsw i64 0, %555
  %557 = getelementptr inbounds i8, ptr %294, i64 %556
  %558 = and i32 %491, 7
  %559 = load i64, ptr %557, align 1, !tbaa !27
  br label %560

560:                                              ; preds = %436, %553
  %561 = phi i64 [ %297, %436 ], [ %559, %553 ]
  %562 = phi i32 [ %491, %436 ], [ %558, %553 ]
  %563 = phi ptr [ %294, %436 ], [ %557, %553 ]
  %564 = icmp uge ptr %288, %284
  br i1 %564, label %565, label %572, !prof !106

565:                                              ; preds = %560
  %566 = lshr i32 %547, 3
  %567 = zext nneg i32 %566 to i64
  %568 = sub nsw i64 0, %567
  %569 = getelementptr inbounds i8, ptr %288, i64 %568
  store ptr %569, ptr %282, align 8, !tbaa !105
  %570 = and i32 %547, 7
  %571 = load i64, ptr %569, align 1, !tbaa !27
  store i64 %571, ptr %6, align 8, !tbaa !100
  br label %572

572:                                              ; preds = %560, %565
  %573 = phi ptr [ %288, %560 ], [ %569, %565 ]
  %574 = phi i32 [ %547, %560 ], [ %570, %565 ]
  %575 = phi i64 [ %303, %560 ], [ %571, %565 ]
  %576 = icmp ult ptr %551, %12
  %577 = and i1 %564, %576
  %578 = and i1 %577, %552
  %579 = and i1 %578, %428
  %580 = and i1 %579, %416
  br i1 %580, label %287, label %581, !llvm.loop !108

581:                                              ; preds = %572
  store i32 %574, ptr %281, align 8, !tbaa !104
  br label %582

582:                                              ; preds = %581, %269
  %583 = phi ptr [ %114, %269 ], [ %425, %581 ]
  %584 = phi i64 [ %189, %269 ], [ %437, %581 ]
  %585 = phi i32 [ %190, %269 ], [ %438, %581 ]
  %586 = phi i32 [ %115, %269 ], [ %426, %581 ]
  %587 = phi ptr [ %191, %269 ], [ %439, %581 ]
  %588 = phi i64 [ %264, %269 ], [ %561, %581 ]
  %589 = phi i32 [ %265, %269 ], [ %562, %581 ]
  %590 = phi i64 [ %116, %269 ], [ %427, %581 ]
  %591 = phi ptr [ %266, %269 ], [ %563, %581 ]
  %592 = phi ptr [ %34, %269 ], [ %551, %581 ]
  %593 = phi ptr [ %33, %269 ], [ %495, %581 ]
  %594 = phi ptr [ %32, %269 ], [ %415, %581 ]
  %595 = phi ptr [ %0, %269 ], [ %359, %581 ]
  %596 = icmp ugt ptr %595, %32
  %597 = icmp ugt ptr %594, %33
  %598 = select i1 %596, i1 true, i1 %597
  %599 = icmp ugt ptr %593, %34
  %600 = select i1 %598, i1 true, i1 %599
  br i1 %600, label %2176, label %601

601:                                              ; preds = %582
  %602 = ptrtoint ptr %32 to i64
  %603 = ptrtoint ptr %595 to i64
  %604 = sub i64 %602, %603
  %605 = icmp ugt i64 %604, 7
  br i1 %605, label %606, label %823

606:                                              ; preds = %601
  %607 = icmp ult i32 %37, 12
  %608 = icmp ugt i32 %586, 64
  br i1 %607, label %616, label %609

609:                                              ; preds = %606
  br i1 %608, label %852, label %610, !prof !88

610:                                              ; preds = %609
  %611 = ptrtoint ptr %26 to i64
  %612 = getelementptr inbounds i8, ptr %32, i64 -7
  %613 = sub nsw i32 0, %36
  %614 = and i32 %613, 63
  %615 = zext nneg i32 %614 to i64
  br label %730

616:                                              ; preds = %606
  br i1 %608, label %852, label %617, !prof !88

617:                                              ; preds = %616
  %618 = ptrtoint ptr %26 to i64
  %619 = getelementptr inbounds i8, ptr %32, i64 -9
  %620 = sub nsw i32 0, %36
  %621 = and i32 %620, 63
  %622 = zext nneg i32 %621 to i64
  br label %623

623:                                              ; preds = %617, %658
  %624 = phi ptr [ %595, %617 ], [ %728, %658 ]
  %625 = phi i64 [ %590, %617 ], [ %654, %658 ]
  %626 = phi i32 [ %586, %617 ], [ %724, %658 ]
  %627 = phi ptr [ %583, %617 ], [ %653, %658 ]
  %628 = icmp ult ptr %627, %44
  br i1 %628, label %632, label %629

629:                                              ; preds = %623
  %630 = lshr i32 %626, 3
  %631 = and i32 %626, 7
  br label %647

632:                                              ; preds = %623
  %633 = icmp eq ptr %627, %26
  br i1 %633, label %852, label %634

634:                                              ; preds = %632
  %635 = lshr i32 %626, 3
  %636 = zext nneg i32 %635 to i64
  %637 = sub nsw i64 0, %636
  %638 = getelementptr inbounds i8, ptr %627, i64 %637
  %639 = icmp ult ptr %638, %26
  %640 = ptrtoint ptr %627 to i64
  %641 = sub i64 %640, %618
  %642 = trunc i64 %641 to i32
  %643 = select i1 %639, i32 %642, i32 %635
  %644 = zext i1 %639 to i32
  %645 = shl i32 %643, 3
  %646 = sub i32 %626, %645
  br label %647

647:                                              ; preds = %634, %629
  %648 = phi i32 [ %643, %634 ], [ %630, %629 ]
  %649 = phi i32 [ %646, %634 ], [ %631, %629 ]
  %650 = phi i32 [ %644, %634 ], [ 0, %629 ]
  %651 = zext i32 %648 to i64
  %652 = sub nsw i64 0, %651
  %653 = getelementptr inbounds i8, ptr %627, i64 %652
  %654 = load i64, ptr %653, align 1, !tbaa !27
  %655 = icmp eq i32 %650, 0
  %656 = icmp ult ptr %624, %619
  %657 = and i1 %656, %655
  br i1 %657, label %658, label %852

658:                                              ; preds = %647
  %659 = and i32 %649, 63
  %660 = zext nneg i32 %659 to i64
  %661 = shl i64 %654, %660
  %662 = lshr i64 %661, %622
  %663 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %662
  %664 = load i16, ptr %663, align 2
  store i16 %664, ptr %624, align 1
  %665 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %662, i32 1
  %666 = load i8, ptr %665, align 2, !tbaa !82
  %667 = zext i8 %666 to i32
  %668 = add i32 %649, %667
  %669 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %662, i32 2
  %670 = load i8, ptr %669, align 1, !tbaa !84
  %671 = zext i8 %670 to i64
  %672 = getelementptr inbounds i8, ptr %624, i64 %671
  %673 = and i32 %668, 63
  %674 = zext nneg i32 %673 to i64
  %675 = shl i64 %654, %674
  %676 = lshr i64 %675, %622
  %677 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %676
  %678 = load i16, ptr %677, align 2
  store i16 %678, ptr %672, align 1
  %679 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %676, i32 1
  %680 = load i8, ptr %679, align 2, !tbaa !82
  %681 = zext i8 %680 to i32
  %682 = add i32 %668, %681
  %683 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %676, i32 2
  %684 = load i8, ptr %683, align 1, !tbaa !84
  %685 = zext i8 %684 to i64
  %686 = getelementptr inbounds i8, ptr %672, i64 %685
  %687 = and i32 %682, 63
  %688 = zext nneg i32 %687 to i64
  %689 = shl i64 %654, %688
  %690 = lshr i64 %689, %622
  %691 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %690
  %692 = load i16, ptr %691, align 2
  store i16 %692, ptr %686, align 1
  %693 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %690, i32 1
  %694 = load i8, ptr %693, align 2, !tbaa !82
  %695 = zext i8 %694 to i32
  %696 = add i32 %682, %695
  %697 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %690, i32 2
  %698 = load i8, ptr %697, align 1, !tbaa !84
  %699 = zext i8 %698 to i64
  %700 = getelementptr inbounds i8, ptr %686, i64 %699
  %701 = and i32 %696, 63
  %702 = zext nneg i32 %701 to i64
  %703 = shl i64 %654, %702
  %704 = lshr i64 %703, %622
  %705 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %704
  %706 = load i16, ptr %705, align 2
  store i16 %706, ptr %700, align 1
  %707 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %704, i32 1
  %708 = load i8, ptr %707, align 2, !tbaa !82
  %709 = zext i8 %708 to i32
  %710 = add i32 %696, %709
  %711 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %704, i32 2
  %712 = load i8, ptr %711, align 1, !tbaa !84
  %713 = zext i8 %712 to i64
  %714 = getelementptr inbounds i8, ptr %700, i64 %713
  %715 = and i32 %710, 63
  %716 = zext nneg i32 %715 to i64
  %717 = shl i64 %654, %716
  %718 = lshr i64 %717, %622
  %719 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %718
  %720 = load i16, ptr %719, align 2
  store i16 %720, ptr %714, align 1
  %721 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %718, i32 1
  %722 = load i8, ptr %721, align 2, !tbaa !82
  %723 = zext i8 %722 to i32
  %724 = add i32 %710, %723
  %725 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %718, i32 2
  %726 = load i8, ptr %725, align 1, !tbaa !84
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds i8, ptr %714, i64 %727
  %729 = icmp ugt i32 %724, 64
  br i1 %729, label %852, label %623, !prof !85, !llvm.loop !86

730:                                              ; preds = %610, %765
  %731 = phi ptr [ %595, %610 ], [ %821, %765 ]
  %732 = phi i64 [ %590, %610 ], [ %761, %765 ]
  %733 = phi i32 [ %586, %610 ], [ %817, %765 ]
  %734 = phi ptr [ %583, %610 ], [ %760, %765 ]
  %735 = icmp ult ptr %734, %44
  br i1 %735, label %739, label %736

736:                                              ; preds = %730
  %737 = lshr i32 %733, 3
  %738 = and i32 %733, 7
  br label %754

739:                                              ; preds = %730
  %740 = icmp eq ptr %734, %26
  br i1 %740, label %852, label %741

741:                                              ; preds = %739
  %742 = lshr i32 %733, 3
  %743 = zext nneg i32 %742 to i64
  %744 = sub nsw i64 0, %743
  %745 = getelementptr inbounds i8, ptr %734, i64 %744
  %746 = icmp ult ptr %745, %26
  %747 = ptrtoint ptr %734 to i64
  %748 = sub i64 %747, %611
  %749 = trunc i64 %748 to i32
  %750 = select i1 %746, i32 %749, i32 %742
  %751 = zext i1 %746 to i32
  %752 = shl i32 %750, 3
  %753 = sub i32 %733, %752
  br label %754

754:                                              ; preds = %741, %736
  %755 = phi i32 [ %750, %741 ], [ %737, %736 ]
  %756 = phi i32 [ %753, %741 ], [ %738, %736 ]
  %757 = phi i32 [ %751, %741 ], [ 0, %736 ]
  %758 = zext i32 %755 to i64
  %759 = sub nsw i64 0, %758
  %760 = getelementptr inbounds i8, ptr %734, i64 %759
  %761 = load i64, ptr %760, align 1, !tbaa !27
  %762 = icmp eq i32 %757, 0
  %763 = icmp ult ptr %731, %612
  %764 = and i1 %763, %762
  br i1 %764, label %765, label %852

765:                                              ; preds = %754
  %766 = and i32 %756, 63
  %767 = zext nneg i32 %766 to i64
  %768 = shl i64 %761, %767
  %769 = lshr i64 %768, %615
  %770 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %769
  %771 = load i16, ptr %770, align 2
  store i16 %771, ptr %731, align 1
  %772 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %769, i32 1
  %773 = load i8, ptr %772, align 2, !tbaa !82
  %774 = zext i8 %773 to i32
  %775 = add i32 %756, %774
  %776 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %769, i32 2
  %777 = load i8, ptr %776, align 1, !tbaa !84
  %778 = zext i8 %777 to i64
  %779 = getelementptr inbounds i8, ptr %731, i64 %778
  %780 = and i32 %775, 63
  %781 = zext nneg i32 %780 to i64
  %782 = shl i64 %761, %781
  %783 = lshr i64 %782, %615
  %784 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %783
  %785 = load i16, ptr %784, align 2
  store i16 %785, ptr %779, align 1
  %786 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %783, i32 1
  %787 = load i8, ptr %786, align 2, !tbaa !82
  %788 = zext i8 %787 to i32
  %789 = add i32 %775, %788
  %790 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %783, i32 2
  %791 = load i8, ptr %790, align 1, !tbaa !84
  %792 = zext i8 %791 to i64
  %793 = getelementptr inbounds i8, ptr %779, i64 %792
  %794 = and i32 %789, 63
  %795 = zext nneg i32 %794 to i64
  %796 = shl i64 %761, %795
  %797 = lshr i64 %796, %615
  %798 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %797
  %799 = load i16, ptr %798, align 2
  store i16 %799, ptr %793, align 1
  %800 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %797, i32 1
  %801 = load i8, ptr %800, align 2, !tbaa !82
  %802 = zext i8 %801 to i32
  %803 = add i32 %789, %802
  %804 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %797, i32 2
  %805 = load i8, ptr %804, align 1, !tbaa !84
  %806 = zext i8 %805 to i64
  %807 = getelementptr inbounds i8, ptr %793, i64 %806
  %808 = and i32 %803, 63
  %809 = zext nneg i32 %808 to i64
  %810 = shl i64 %761, %809
  %811 = lshr i64 %810, %615
  %812 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %811
  %813 = load i16, ptr %812, align 2
  store i16 %813, ptr %807, align 1
  %814 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %811, i32 1
  %815 = load i8, ptr %814, align 2, !tbaa !82
  %816 = zext i8 %815 to i32
  %817 = add i32 %803, %816
  %818 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %811, i32 2
  %819 = load i8, ptr %818, align 1, !tbaa !84
  %820 = zext i8 %819 to i64
  %821 = getelementptr inbounds i8, ptr %807, i64 %820
  %822 = icmp ugt i32 %817, 64
  br i1 %822, label %852, label %730, !prof !85, !llvm.loop !87

823:                                              ; preds = %601
  %824 = icmp ugt i32 %586, 64
  br i1 %824, label %852, label %825, !prof !107

825:                                              ; preds = %823
  %826 = icmp ult ptr %583, %44
  br i1 %826, label %830, label %827

827:                                              ; preds = %825
  %828 = lshr i32 %586, 3
  %829 = and i32 %586, 7
  br label %845

830:                                              ; preds = %825
  %831 = icmp eq ptr %583, %26
  br i1 %831, label %852, label %832

832:                                              ; preds = %830
  %833 = lshr i32 %586, 3
  %834 = zext nneg i32 %833 to i64
  %835 = sub nsw i64 0, %834
  %836 = getelementptr inbounds i8, ptr %583, i64 %835
  %837 = icmp ult ptr %836, %26
  %838 = ptrtoint ptr %583 to i64
  %839 = ptrtoint ptr %26 to i64
  %840 = sub i64 %838, %839
  %841 = trunc i64 %840 to i32
  %842 = select i1 %837, i32 %841, i32 %833
  %843 = shl i32 %842, 3
  %844 = sub i32 %586, %843
  br label %845

845:                                              ; preds = %832, %827
  %846 = phi i32 [ %828, %827 ], [ %842, %832 ]
  %847 = phi i32 [ %829, %827 ], [ %844, %832 ]
  %848 = zext i32 %846 to i64
  %849 = sub nsw i64 0, %848
  %850 = getelementptr inbounds i8, ptr %583, i64 %849
  %851 = load i64, ptr %850, align 1, !tbaa !27
  br label %852

852:                                              ; preds = %754, %765, %739, %647, %658, %632, %845, %609, %616, %830, %823
  %853 = phi ptr [ @BIT_reloadDStream.zeroFilled, %823 ], [ %26, %830 ], [ @BIT_reloadDStream.zeroFilled, %616 ], [ @BIT_reloadDStream.zeroFilled, %609 ], [ %850, %845 ], [ %653, %647 ], [ @BIT_reloadDStream.zeroFilled, %658 ], [ %26, %632 ], [ %760, %754 ], [ @BIT_reloadDStream.zeroFilled, %765 ], [ %26, %739 ]
  %854 = phi i32 [ %586, %823 ], [ %586, %830 ], [ %586, %616 ], [ %586, %609 ], [ %847, %845 ], [ %649, %647 ], [ %724, %658 ], [ %626, %632 ], [ %756, %754 ], [ %817, %765 ], [ %733, %739 ]
  %855 = phi i64 [ %590, %823 ], [ %590, %830 ], [ %590, %616 ], [ %590, %609 ], [ %851, %845 ], [ %654, %647 ], [ %654, %658 ], [ %625, %632 ], [ %761, %754 ], [ %761, %765 ], [ %732, %739 ]
  %856 = phi ptr [ %595, %823 ], [ %595, %830 ], [ %595, %616 ], [ %595, %609 ], [ %595, %845 ], [ %624, %647 ], [ %728, %658 ], [ %624, %632 ], [ %731, %754 ], [ %821, %765 ], [ %731, %739 ]
  %857 = ptrtoint ptr %856 to i64
  %858 = sub i64 %602, %857
  %859 = icmp ugt i64 %858, 1
  br i1 %859, label %860, label %942

860:                                              ; preds = %852
  %861 = getelementptr inbounds i8, ptr %32, i64 -2
  %862 = ptrtoint ptr %26 to i64
  %863 = sub nsw i32 0, %36
  %864 = and i32 %863, 63
  %865 = zext nneg i32 %864 to i64
  %866 = icmp ugt i32 %854, 64
  br i1 %866, label %902, label %867, !prof !88

867:                                              ; preds = %860, %908
  %868 = phi ptr [ %922, %908 ], [ %856, %860 ]
  %869 = phi i64 [ %898, %908 ], [ %855, %860 ]
  %870 = phi i32 [ %918, %908 ], [ %854, %860 ]
  %871 = phi ptr [ %897, %908 ], [ %853, %860 ]
  %872 = icmp ult ptr %871, %44
  br i1 %872, label %876, label %873

873:                                              ; preds = %867
  %874 = lshr i32 %870, 3
  %875 = and i32 %870, 7
  br label %891

876:                                              ; preds = %867
  %877 = icmp eq ptr %871, %26
  br i1 %877, label %902, label %878

878:                                              ; preds = %876
  %879 = lshr i32 %870, 3
  %880 = zext nneg i32 %879 to i64
  %881 = sub nsw i64 0, %880
  %882 = getelementptr inbounds i8, ptr %871, i64 %881
  %883 = icmp ult ptr %882, %26
  %884 = ptrtoint ptr %871 to i64
  %885 = sub i64 %884, %862
  %886 = trunc i64 %885 to i32
  %887 = select i1 %883, i32 %886, i32 %879
  %888 = zext i1 %883 to i32
  %889 = shl i32 %887, 3
  %890 = sub i32 %870, %889
  br label %891

891:                                              ; preds = %878, %873
  %892 = phi i32 [ %887, %878 ], [ %874, %873 ]
  %893 = phi i32 [ %890, %878 ], [ %875, %873 ]
  %894 = phi i32 [ %888, %878 ], [ 0, %873 ]
  %895 = zext i32 %892 to i64
  %896 = sub nsw i64 0, %895
  %897 = getelementptr inbounds i8, ptr %871, i64 %896
  %898 = load i64, ptr %897, align 1, !tbaa !27
  %899 = icmp eq i32 %894, 0
  %900 = icmp ule ptr %868, %861
  %901 = and i1 %900, %899
  br i1 %901, label %908, label %902

902:                                              ; preds = %891, %908, %876, %860
  %903 = phi ptr [ %856, %860 ], [ %868, %891 ], [ %922, %908 ], [ %868, %876 ]
  %904 = phi i64 [ %855, %860 ], [ %898, %891 ], [ %898, %908 ], [ %869, %876 ]
  %905 = phi i32 [ %854, %860 ], [ %893, %891 ], [ %918, %908 ], [ %870, %876 ]
  %906 = phi ptr [ @BIT_reloadDStream.zeroFilled, %860 ], [ %897, %891 ], [ @BIT_reloadDStream.zeroFilled, %908 ], [ %26, %876 ]
  %907 = icmp ugt ptr %903, %861
  br i1 %907, label %942, label %924

908:                                              ; preds = %891
  %909 = and i32 %893, 63
  %910 = zext nneg i32 %909 to i64
  %911 = shl i64 %898, %910
  %912 = lshr i64 %911, %865
  %913 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %912
  %914 = load i16, ptr %913, align 2
  store i16 %914, ptr %868, align 1
  %915 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %912, i32 1
  %916 = load i8, ptr %915, align 2, !tbaa !82
  %917 = zext i8 %916 to i32
  %918 = add i32 %893, %917
  %919 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %912, i32 2
  %920 = load i8, ptr %919, align 1, !tbaa !84
  %921 = zext i8 %920 to i64
  %922 = getelementptr inbounds i8, ptr %868, i64 %921
  %923 = icmp ugt i32 %918, 64
  br i1 %923, label %902, label %867, !prof !85, !llvm.loop !89

924:                                              ; preds = %902, %924
  %925 = phi ptr [ %940, %924 ], [ %903, %902 ]
  %926 = phi i32 [ %936, %924 ], [ %905, %902 ]
  %927 = and i32 %926, 63
  %928 = zext nneg i32 %927 to i64
  %929 = shl i64 %904, %928
  %930 = lshr i64 %929, %865
  %931 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %930
  %932 = load i16, ptr %931, align 2
  store i16 %932, ptr %925, align 1
  %933 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %930, i32 1
  %934 = load i8, ptr %933, align 2, !tbaa !82
  %935 = zext i8 %934 to i32
  %936 = add i32 %926, %935
  %937 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %930, i32 2
  %938 = load i8, ptr %937, align 1, !tbaa !84
  %939 = zext i8 %938 to i64
  %940 = getelementptr inbounds i8, ptr %925, i64 %939
  %941 = icmp ugt ptr %940, %861
  br i1 %941, label %942, label %924, !llvm.loop !90

942:                                              ; preds = %924, %902, %852
  %943 = phi ptr [ %853, %852 ], [ %906, %902 ], [ %906, %924 ]
  %944 = phi i32 [ %854, %852 ], [ %905, %902 ], [ %936, %924 ]
  %945 = phi i64 [ %855, %852 ], [ %904, %902 ], [ %904, %924 ]
  %946 = phi ptr [ %856, %852 ], [ %903, %902 ], [ %940, %924 ]
  %947 = icmp ult ptr %946, %32
  br i1 %947, label %948, label %974

948:                                              ; preds = %942
  %949 = and i32 %944, 63
  %950 = zext nneg i32 %949 to i64
  %951 = shl i64 %945, %950
  %952 = sub nsw i32 0, %36
  %953 = and i32 %952, 63
  %954 = zext nneg i32 %953 to i64
  %955 = lshr i64 %951, %954
  %956 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %955
  %957 = load i8, ptr %956, align 2
  store i8 %957, ptr %946, align 1
  %958 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %955, i32 2
  %959 = load i8, ptr %958, align 1, !tbaa !84
  %960 = icmp eq i8 %959, 1
  br i1 %960, label %961, label %966

961:                                              ; preds = %948
  %962 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %955, i32 1
  %963 = load i8, ptr %962, align 2, !tbaa !82
  %964 = zext i8 %963 to i32
  %965 = add i32 %944, %964
  br label %974

966:                                              ; preds = %948
  %967 = icmp ult i32 %944, 64
  br i1 %967, label %968, label %974

968:                                              ; preds = %966
  %969 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %955, i32 1
  %970 = load i8, ptr %969, align 2, !tbaa !82
  %971 = zext i8 %970 to i32
  %972 = add nuw nsw i32 %944, %971
  %973 = tail call i32 @llvm.umin.i32(i32 %972, i32 64)
  br label %974

974:                                              ; preds = %961, %966, %968, %942
  %975 = phi i32 [ %944, %942 ], [ %965, %961 ], [ %944, %966 ], [ %973, %968 ]
  %976 = ptrtoint ptr %33 to i64
  %977 = ptrtoint ptr %594 to i64
  %978 = sub i64 %976, %977
  %979 = icmp ugt i64 %978, 7
  br i1 %979, label %980, label %1197

980:                                              ; preds = %974
  %981 = icmp ult i32 %37, 12
  %982 = icmp ugt i32 %585, 64
  br i1 %981, label %990, label %983

983:                                              ; preds = %980
  br i1 %982, label %1226, label %984, !prof !88

984:                                              ; preds = %983
  %985 = ptrtoint ptr %27 to i64
  %986 = getelementptr inbounds i8, ptr %33, i64 -7
  %987 = sub nsw i32 0, %36
  %988 = and i32 %987, 63
  %989 = zext nneg i32 %988 to i64
  br label %1104

990:                                              ; preds = %980
  br i1 %982, label %1226, label %991, !prof !88

991:                                              ; preds = %990
  %992 = ptrtoint ptr %27 to i64
  %993 = getelementptr inbounds i8, ptr %33, i64 -9
  %994 = sub nsw i32 0, %36
  %995 = and i32 %994, 63
  %996 = zext nneg i32 %995 to i64
  br label %997

997:                                              ; preds = %991, %1032
  %998 = phi ptr [ %594, %991 ], [ %1102, %1032 ]
  %999 = phi ptr [ %587, %991 ], [ %1027, %1032 ]
  %1000 = phi i32 [ %585, %991 ], [ %1098, %1032 ]
  %1001 = phi i64 [ %584, %991 ], [ %1028, %1032 ]
  %1002 = icmp ult ptr %999, %119
  br i1 %1002, label %1006, label %1003

1003:                                             ; preds = %997
  %1004 = lshr i32 %1000, 3
  %1005 = and i32 %1000, 7
  br label %1021

1006:                                             ; preds = %997
  %1007 = icmp eq ptr %999, %27
  br i1 %1007, label %1226, label %1008

1008:                                             ; preds = %1006
  %1009 = lshr i32 %1000, 3
  %1010 = zext nneg i32 %1009 to i64
  %1011 = sub nsw i64 0, %1010
  %1012 = getelementptr inbounds i8, ptr %999, i64 %1011
  %1013 = icmp ult ptr %1012, %27
  %1014 = ptrtoint ptr %999 to i64
  %1015 = sub i64 %1014, %992
  %1016 = trunc i64 %1015 to i32
  %1017 = select i1 %1013, i32 %1016, i32 %1009
  %1018 = zext i1 %1013 to i32
  %1019 = shl i32 %1017, 3
  %1020 = sub i32 %1000, %1019
  br label %1021

1021:                                             ; preds = %1008, %1003
  %1022 = phi i32 [ %1020, %1008 ], [ %1005, %1003 ]
  %1023 = phi i32 [ %1017, %1008 ], [ %1004, %1003 ]
  %1024 = phi i32 [ %1018, %1008 ], [ 0, %1003 ]
  %1025 = zext i32 %1023 to i64
  %1026 = sub nsw i64 0, %1025
  %1027 = getelementptr inbounds i8, ptr %999, i64 %1026
  %1028 = load i64, ptr %1027, align 1, !tbaa !27
  %1029 = icmp eq i32 %1024, 0
  %1030 = icmp ult ptr %998, %993
  %1031 = and i1 %1030, %1029
  br i1 %1031, label %1032, label %1226

1032:                                             ; preds = %1021
  %1033 = and i32 %1022, 63
  %1034 = zext nneg i32 %1033 to i64
  %1035 = shl i64 %1028, %1034
  %1036 = lshr i64 %1035, %996
  %1037 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1036
  %1038 = load i16, ptr %1037, align 2
  store i16 %1038, ptr %998, align 1
  %1039 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1036, i32 1
  %1040 = load i8, ptr %1039, align 2, !tbaa !82
  %1041 = zext i8 %1040 to i32
  %1042 = add i32 %1022, %1041
  %1043 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1036, i32 2
  %1044 = load i8, ptr %1043, align 1, !tbaa !84
  %1045 = zext i8 %1044 to i64
  %1046 = getelementptr inbounds i8, ptr %998, i64 %1045
  %1047 = and i32 %1042, 63
  %1048 = zext nneg i32 %1047 to i64
  %1049 = shl i64 %1028, %1048
  %1050 = lshr i64 %1049, %996
  %1051 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1050
  %1052 = load i16, ptr %1051, align 2
  store i16 %1052, ptr %1046, align 1
  %1053 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1050, i32 1
  %1054 = load i8, ptr %1053, align 2, !tbaa !82
  %1055 = zext i8 %1054 to i32
  %1056 = add i32 %1042, %1055
  %1057 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1050, i32 2
  %1058 = load i8, ptr %1057, align 1, !tbaa !84
  %1059 = zext i8 %1058 to i64
  %1060 = getelementptr inbounds i8, ptr %1046, i64 %1059
  %1061 = and i32 %1056, 63
  %1062 = zext nneg i32 %1061 to i64
  %1063 = shl i64 %1028, %1062
  %1064 = lshr i64 %1063, %996
  %1065 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1064
  %1066 = load i16, ptr %1065, align 2
  store i16 %1066, ptr %1060, align 1
  %1067 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1064, i32 1
  %1068 = load i8, ptr %1067, align 2, !tbaa !82
  %1069 = zext i8 %1068 to i32
  %1070 = add i32 %1056, %1069
  %1071 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1064, i32 2
  %1072 = load i8, ptr %1071, align 1, !tbaa !84
  %1073 = zext i8 %1072 to i64
  %1074 = getelementptr inbounds i8, ptr %1060, i64 %1073
  %1075 = and i32 %1070, 63
  %1076 = zext nneg i32 %1075 to i64
  %1077 = shl i64 %1028, %1076
  %1078 = lshr i64 %1077, %996
  %1079 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1078
  %1080 = load i16, ptr %1079, align 2
  store i16 %1080, ptr %1074, align 1
  %1081 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1078, i32 1
  %1082 = load i8, ptr %1081, align 2, !tbaa !82
  %1083 = zext i8 %1082 to i32
  %1084 = add i32 %1070, %1083
  %1085 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1078, i32 2
  %1086 = load i8, ptr %1085, align 1, !tbaa !84
  %1087 = zext i8 %1086 to i64
  %1088 = getelementptr inbounds i8, ptr %1074, i64 %1087
  %1089 = and i32 %1084, 63
  %1090 = zext nneg i32 %1089 to i64
  %1091 = shl i64 %1028, %1090
  %1092 = lshr i64 %1091, %996
  %1093 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1092
  %1094 = load i16, ptr %1093, align 2
  store i16 %1094, ptr %1088, align 1
  %1095 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1092, i32 1
  %1096 = load i8, ptr %1095, align 2, !tbaa !82
  %1097 = zext i8 %1096 to i32
  %1098 = add i32 %1084, %1097
  %1099 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1092, i32 2
  %1100 = load i8, ptr %1099, align 1, !tbaa !84
  %1101 = zext i8 %1100 to i64
  %1102 = getelementptr inbounds i8, ptr %1088, i64 %1101
  %1103 = icmp ugt i32 %1098, 64
  br i1 %1103, label %1226, label %997, !prof !85, !llvm.loop !86

1104:                                             ; preds = %984, %1139
  %1105 = phi ptr [ %594, %984 ], [ %1195, %1139 ]
  %1106 = phi ptr [ %587, %984 ], [ %1134, %1139 ]
  %1107 = phi i32 [ %585, %984 ], [ %1191, %1139 ]
  %1108 = phi i64 [ %584, %984 ], [ %1135, %1139 ]
  %1109 = icmp ult ptr %1106, %119
  br i1 %1109, label %1113, label %1110

1110:                                             ; preds = %1104
  %1111 = lshr i32 %1107, 3
  %1112 = and i32 %1107, 7
  br label %1128

1113:                                             ; preds = %1104
  %1114 = icmp eq ptr %1106, %27
  br i1 %1114, label %1226, label %1115

1115:                                             ; preds = %1113
  %1116 = lshr i32 %1107, 3
  %1117 = zext nneg i32 %1116 to i64
  %1118 = sub nsw i64 0, %1117
  %1119 = getelementptr inbounds i8, ptr %1106, i64 %1118
  %1120 = icmp ult ptr %1119, %27
  %1121 = ptrtoint ptr %1106 to i64
  %1122 = sub i64 %1121, %985
  %1123 = trunc i64 %1122 to i32
  %1124 = select i1 %1120, i32 %1123, i32 %1116
  %1125 = zext i1 %1120 to i32
  %1126 = shl i32 %1124, 3
  %1127 = sub i32 %1107, %1126
  br label %1128

1128:                                             ; preds = %1115, %1110
  %1129 = phi i32 [ %1127, %1115 ], [ %1112, %1110 ]
  %1130 = phi i32 [ %1124, %1115 ], [ %1111, %1110 ]
  %1131 = phi i32 [ %1125, %1115 ], [ 0, %1110 ]
  %1132 = zext i32 %1130 to i64
  %1133 = sub nsw i64 0, %1132
  %1134 = getelementptr inbounds i8, ptr %1106, i64 %1133
  %1135 = load i64, ptr %1134, align 1, !tbaa !27
  %1136 = icmp eq i32 %1131, 0
  %1137 = icmp ult ptr %1105, %986
  %1138 = and i1 %1137, %1136
  br i1 %1138, label %1139, label %1226

1139:                                             ; preds = %1128
  %1140 = and i32 %1129, 63
  %1141 = zext nneg i32 %1140 to i64
  %1142 = shl i64 %1135, %1141
  %1143 = lshr i64 %1142, %989
  %1144 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1143
  %1145 = load i16, ptr %1144, align 2
  store i16 %1145, ptr %1105, align 1
  %1146 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1143, i32 1
  %1147 = load i8, ptr %1146, align 2, !tbaa !82
  %1148 = zext i8 %1147 to i32
  %1149 = add i32 %1129, %1148
  %1150 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1143, i32 2
  %1151 = load i8, ptr %1150, align 1, !tbaa !84
  %1152 = zext i8 %1151 to i64
  %1153 = getelementptr inbounds i8, ptr %1105, i64 %1152
  %1154 = and i32 %1149, 63
  %1155 = zext nneg i32 %1154 to i64
  %1156 = shl i64 %1135, %1155
  %1157 = lshr i64 %1156, %989
  %1158 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1157
  %1159 = load i16, ptr %1158, align 2
  store i16 %1159, ptr %1153, align 1
  %1160 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1157, i32 1
  %1161 = load i8, ptr %1160, align 2, !tbaa !82
  %1162 = zext i8 %1161 to i32
  %1163 = add i32 %1149, %1162
  %1164 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1157, i32 2
  %1165 = load i8, ptr %1164, align 1, !tbaa !84
  %1166 = zext i8 %1165 to i64
  %1167 = getelementptr inbounds i8, ptr %1153, i64 %1166
  %1168 = and i32 %1163, 63
  %1169 = zext nneg i32 %1168 to i64
  %1170 = shl i64 %1135, %1169
  %1171 = lshr i64 %1170, %989
  %1172 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1171
  %1173 = load i16, ptr %1172, align 2
  store i16 %1173, ptr %1167, align 1
  %1174 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1171, i32 1
  %1175 = load i8, ptr %1174, align 2, !tbaa !82
  %1176 = zext i8 %1175 to i32
  %1177 = add i32 %1163, %1176
  %1178 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1171, i32 2
  %1179 = load i8, ptr %1178, align 1, !tbaa !84
  %1180 = zext i8 %1179 to i64
  %1181 = getelementptr inbounds i8, ptr %1167, i64 %1180
  %1182 = and i32 %1177, 63
  %1183 = zext nneg i32 %1182 to i64
  %1184 = shl i64 %1135, %1183
  %1185 = lshr i64 %1184, %989
  %1186 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1185
  %1187 = load i16, ptr %1186, align 2
  store i16 %1187, ptr %1181, align 1
  %1188 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1185, i32 1
  %1189 = load i8, ptr %1188, align 2, !tbaa !82
  %1190 = zext i8 %1189 to i32
  %1191 = add i32 %1177, %1190
  %1192 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1185, i32 2
  %1193 = load i8, ptr %1192, align 1, !tbaa !84
  %1194 = zext i8 %1193 to i64
  %1195 = getelementptr inbounds i8, ptr %1181, i64 %1194
  %1196 = icmp ugt i32 %1191, 64
  br i1 %1196, label %1226, label %1104, !prof !85, !llvm.loop !87

1197:                                             ; preds = %974
  %1198 = icmp ugt i32 %585, 64
  br i1 %1198, label %1226, label %1199, !prof !107

1199:                                             ; preds = %1197
  %1200 = icmp ult ptr %587, %119
  br i1 %1200, label %1204, label %1201

1201:                                             ; preds = %1199
  %1202 = lshr i32 %585, 3
  %1203 = and i32 %585, 7
  br label %1219

1204:                                             ; preds = %1199
  %1205 = icmp eq ptr %587, %27
  br i1 %1205, label %1226, label %1206

1206:                                             ; preds = %1204
  %1207 = lshr i32 %585, 3
  %1208 = zext nneg i32 %1207 to i64
  %1209 = sub nsw i64 0, %1208
  %1210 = getelementptr inbounds i8, ptr %587, i64 %1209
  %1211 = icmp ult ptr %1210, %27
  %1212 = ptrtoint ptr %587 to i64
  %1213 = ptrtoint ptr %27 to i64
  %1214 = sub i64 %1212, %1213
  %1215 = trunc i64 %1214 to i32
  %1216 = select i1 %1211, i32 %1215, i32 %1207
  %1217 = shl i32 %1216, 3
  %1218 = sub i32 %585, %1217
  br label %1219

1219:                                             ; preds = %1206, %1201
  %1220 = phi i32 [ %1202, %1201 ], [ %1216, %1206 ]
  %1221 = phi i32 [ %1203, %1201 ], [ %1218, %1206 ]
  %1222 = zext i32 %1220 to i64
  %1223 = sub nsw i64 0, %1222
  %1224 = getelementptr inbounds i8, ptr %587, i64 %1223
  %1225 = load i64, ptr %1224, align 1, !tbaa !27
  br label %1226

1226:                                             ; preds = %1128, %1139, %1113, %1021, %1032, %1006, %1219, %983, %990, %1204, %1197
  %1227 = phi i64 [ %584, %1197 ], [ %584, %1204 ], [ %584, %990 ], [ %584, %983 ], [ %1225, %1219 ], [ %1028, %1021 ], [ %1028, %1032 ], [ %1001, %1006 ], [ %1135, %1128 ], [ %1135, %1139 ], [ %1108, %1113 ]
  %1228 = phi i32 [ %585, %1197 ], [ %585, %1204 ], [ %585, %990 ], [ %585, %983 ], [ %1221, %1219 ], [ %1022, %1021 ], [ %1098, %1032 ], [ %1000, %1006 ], [ %1129, %1128 ], [ %1191, %1139 ], [ %1107, %1113 ]
  %1229 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1197 ], [ %27, %1204 ], [ @BIT_reloadDStream.zeroFilled, %990 ], [ @BIT_reloadDStream.zeroFilled, %983 ], [ %1224, %1219 ], [ %1027, %1021 ], [ @BIT_reloadDStream.zeroFilled, %1032 ], [ %27, %1006 ], [ %1134, %1128 ], [ @BIT_reloadDStream.zeroFilled, %1139 ], [ %27, %1113 ]
  %1230 = phi ptr [ %594, %1197 ], [ %594, %1204 ], [ %594, %990 ], [ %594, %983 ], [ %594, %1219 ], [ %998, %1021 ], [ %1102, %1032 ], [ %998, %1006 ], [ %1105, %1128 ], [ %1195, %1139 ], [ %1105, %1113 ]
  %1231 = ptrtoint ptr %1230 to i64
  %1232 = sub i64 %976, %1231
  %1233 = icmp ugt i64 %1232, 1
  br i1 %1233, label %1234, label %1316

1234:                                             ; preds = %1226
  %1235 = getelementptr inbounds i8, ptr %33, i64 -2
  %1236 = ptrtoint ptr %27 to i64
  %1237 = sub nsw i32 0, %36
  %1238 = and i32 %1237, 63
  %1239 = zext nneg i32 %1238 to i64
  %1240 = icmp ugt i32 %1228, 64
  br i1 %1240, label %1276, label %1241, !prof !88

1241:                                             ; preds = %1234, %1282
  %1242 = phi ptr [ %1296, %1282 ], [ %1230, %1234 ]
  %1243 = phi ptr [ %1271, %1282 ], [ %1229, %1234 ]
  %1244 = phi i32 [ %1292, %1282 ], [ %1228, %1234 ]
  %1245 = phi i64 [ %1272, %1282 ], [ %1227, %1234 ]
  %1246 = icmp ult ptr %1243, %119
  br i1 %1246, label %1250, label %1247

1247:                                             ; preds = %1241
  %1248 = lshr i32 %1244, 3
  %1249 = and i32 %1244, 7
  br label %1265

1250:                                             ; preds = %1241
  %1251 = icmp eq ptr %1243, %27
  br i1 %1251, label %1276, label %1252

1252:                                             ; preds = %1250
  %1253 = lshr i32 %1244, 3
  %1254 = zext nneg i32 %1253 to i64
  %1255 = sub nsw i64 0, %1254
  %1256 = getelementptr inbounds i8, ptr %1243, i64 %1255
  %1257 = icmp ult ptr %1256, %27
  %1258 = ptrtoint ptr %1243 to i64
  %1259 = sub i64 %1258, %1236
  %1260 = trunc i64 %1259 to i32
  %1261 = select i1 %1257, i32 %1260, i32 %1253
  %1262 = zext i1 %1257 to i32
  %1263 = shl i32 %1261, 3
  %1264 = sub i32 %1244, %1263
  br label %1265

1265:                                             ; preds = %1252, %1247
  %1266 = phi i32 [ %1261, %1252 ], [ %1248, %1247 ]
  %1267 = phi i32 [ %1264, %1252 ], [ %1249, %1247 ]
  %1268 = phi i32 [ %1262, %1252 ], [ 0, %1247 ]
  %1269 = zext i32 %1266 to i64
  %1270 = sub nsw i64 0, %1269
  %1271 = getelementptr inbounds i8, ptr %1243, i64 %1270
  %1272 = load i64, ptr %1271, align 1, !tbaa !27
  %1273 = icmp eq i32 %1268, 0
  %1274 = icmp ule ptr %1242, %1235
  %1275 = and i1 %1274, %1273
  br i1 %1275, label %1282, label %1276

1276:                                             ; preds = %1265, %1282, %1250, %1234
  %1277 = phi ptr [ %1230, %1234 ], [ %1242, %1265 ], [ %1296, %1282 ], [ %1242, %1250 ]
  %1278 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1234 ], [ %1271, %1265 ], [ @BIT_reloadDStream.zeroFilled, %1282 ], [ %27, %1250 ]
  %1279 = phi i32 [ %1228, %1234 ], [ %1267, %1265 ], [ %1292, %1282 ], [ %1244, %1250 ]
  %1280 = phi i64 [ %1227, %1234 ], [ %1272, %1265 ], [ %1272, %1282 ], [ %1245, %1250 ]
  %1281 = icmp ugt ptr %1277, %1235
  br i1 %1281, label %1316, label %1298

1282:                                             ; preds = %1265
  %1283 = and i32 %1267, 63
  %1284 = zext nneg i32 %1283 to i64
  %1285 = shl i64 %1272, %1284
  %1286 = lshr i64 %1285, %1239
  %1287 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1286
  %1288 = load i16, ptr %1287, align 2
  store i16 %1288, ptr %1242, align 1
  %1289 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1286, i32 1
  %1290 = load i8, ptr %1289, align 2, !tbaa !82
  %1291 = zext i8 %1290 to i32
  %1292 = add i32 %1267, %1291
  %1293 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1286, i32 2
  %1294 = load i8, ptr %1293, align 1, !tbaa !84
  %1295 = zext i8 %1294 to i64
  %1296 = getelementptr inbounds i8, ptr %1242, i64 %1295
  %1297 = icmp ugt i32 %1292, 64
  br i1 %1297, label %1276, label %1241, !prof !85, !llvm.loop !89

1298:                                             ; preds = %1276, %1298
  %1299 = phi ptr [ %1314, %1298 ], [ %1277, %1276 ]
  %1300 = phi i32 [ %1310, %1298 ], [ %1279, %1276 ]
  %1301 = and i32 %1300, 63
  %1302 = zext nneg i32 %1301 to i64
  %1303 = shl i64 %1280, %1302
  %1304 = lshr i64 %1303, %1239
  %1305 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1304
  %1306 = load i16, ptr %1305, align 2
  store i16 %1306, ptr %1299, align 1
  %1307 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1304, i32 1
  %1308 = load i8, ptr %1307, align 2, !tbaa !82
  %1309 = zext i8 %1308 to i32
  %1310 = add i32 %1300, %1309
  %1311 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1304, i32 2
  %1312 = load i8, ptr %1311, align 1, !tbaa !84
  %1313 = zext i8 %1312 to i64
  %1314 = getelementptr inbounds i8, ptr %1299, i64 %1313
  %1315 = icmp ugt ptr %1314, %1235
  br i1 %1315, label %1316, label %1298, !llvm.loop !90

1316:                                             ; preds = %1298, %1276, %1226
  %1317 = phi i64 [ %1227, %1226 ], [ %1280, %1276 ], [ %1280, %1298 ]
  %1318 = phi i32 [ %1228, %1226 ], [ %1279, %1276 ], [ %1310, %1298 ]
  %1319 = phi ptr [ %1229, %1226 ], [ %1278, %1276 ], [ %1278, %1298 ]
  %1320 = phi ptr [ %1230, %1226 ], [ %1277, %1276 ], [ %1314, %1298 ]
  %1321 = icmp ult ptr %1320, %33
  br i1 %1321, label %1322, label %1348

1322:                                             ; preds = %1316
  %1323 = and i32 %1318, 63
  %1324 = zext nneg i32 %1323 to i64
  %1325 = shl i64 %1317, %1324
  %1326 = sub nsw i32 0, %36
  %1327 = and i32 %1326, 63
  %1328 = zext nneg i32 %1327 to i64
  %1329 = lshr i64 %1325, %1328
  %1330 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1329
  %1331 = load i8, ptr %1330, align 2
  store i8 %1331, ptr %1320, align 1
  %1332 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1329, i32 2
  %1333 = load i8, ptr %1332, align 1, !tbaa !84
  %1334 = icmp eq i8 %1333, 1
  br i1 %1334, label %1335, label %1340

1335:                                             ; preds = %1322
  %1336 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1329, i32 1
  %1337 = load i8, ptr %1336, align 2, !tbaa !82
  %1338 = zext i8 %1337 to i32
  %1339 = add i32 %1318, %1338
  br label %1348

1340:                                             ; preds = %1322
  %1341 = icmp ult i32 %1318, 64
  br i1 %1341, label %1342, label %1348

1342:                                             ; preds = %1340
  %1343 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1329, i32 1
  %1344 = load i8, ptr %1343, align 2, !tbaa !82
  %1345 = zext i8 %1344 to i32
  %1346 = add nuw nsw i32 %1318, %1345
  %1347 = tail call i32 @llvm.umin.i32(i32 %1346, i32 64)
  br label %1348

1348:                                             ; preds = %1335, %1340, %1342, %1316
  %1349 = phi i32 [ %1318, %1316 ], [ %1339, %1335 ], [ %1318, %1340 ], [ %1347, %1342 ]
  %1350 = ptrtoint ptr %593 to i64
  %1351 = sub i64 %271, %1350
  %1352 = icmp ugt i64 %1351, 7
  br i1 %1352, label %1353, label %1570

1353:                                             ; preds = %1348
  %1354 = icmp ult i32 %37, 12
  %1355 = icmp ugt i32 %589, 64
  br i1 %1354, label %1363, label %1356

1356:                                             ; preds = %1353
  br i1 %1355, label %1599, label %1357, !prof !88

1357:                                             ; preds = %1356
  %1358 = ptrtoint ptr %28 to i64
  %1359 = getelementptr inbounds i8, ptr %34, i64 -7
  %1360 = sub nsw i32 0, %36
  %1361 = and i32 %1360, 63
  %1362 = zext nneg i32 %1361 to i64
  br label %1477

1363:                                             ; preds = %1353
  br i1 %1355, label %1599, label %1364, !prof !88

1364:                                             ; preds = %1363
  %1365 = ptrtoint ptr %28 to i64
  %1366 = getelementptr inbounds i8, ptr %34, i64 -9
  %1367 = sub nsw i32 0, %36
  %1368 = and i32 %1367, 63
  %1369 = zext nneg i32 %1368 to i64
  br label %1370

1370:                                             ; preds = %1364, %1405
  %1371 = phi ptr [ %593, %1364 ], [ %1475, %1405 ]
  %1372 = phi ptr [ %591, %1364 ], [ %1400, %1405 ]
  %1373 = phi i32 [ %589, %1364 ], [ %1471, %1405 ]
  %1374 = phi i64 [ %588, %1364 ], [ %1401, %1405 ]
  %1375 = icmp ult ptr %1372, %194
  br i1 %1375, label %1379, label %1376

1376:                                             ; preds = %1370
  %1377 = lshr i32 %1373, 3
  %1378 = and i32 %1373, 7
  br label %1394

1379:                                             ; preds = %1370
  %1380 = icmp eq ptr %1372, %28
  br i1 %1380, label %1599, label %1381

1381:                                             ; preds = %1379
  %1382 = lshr i32 %1373, 3
  %1383 = zext nneg i32 %1382 to i64
  %1384 = sub nsw i64 0, %1383
  %1385 = getelementptr inbounds i8, ptr %1372, i64 %1384
  %1386 = icmp ult ptr %1385, %28
  %1387 = ptrtoint ptr %1372 to i64
  %1388 = sub i64 %1387, %1365
  %1389 = trunc i64 %1388 to i32
  %1390 = select i1 %1386, i32 %1389, i32 %1382
  %1391 = zext i1 %1386 to i32
  %1392 = shl i32 %1390, 3
  %1393 = sub i32 %1373, %1392
  br label %1394

1394:                                             ; preds = %1381, %1376
  %1395 = phi i32 [ %1393, %1381 ], [ %1378, %1376 ]
  %1396 = phi i32 [ %1390, %1381 ], [ %1377, %1376 ]
  %1397 = phi i32 [ %1391, %1381 ], [ 0, %1376 ]
  %1398 = zext i32 %1396 to i64
  %1399 = sub nsw i64 0, %1398
  %1400 = getelementptr inbounds i8, ptr %1372, i64 %1399
  %1401 = load i64, ptr %1400, align 1, !tbaa !27
  %1402 = icmp eq i32 %1397, 0
  %1403 = icmp ult ptr %1371, %1366
  %1404 = and i1 %1403, %1402
  br i1 %1404, label %1405, label %1599

1405:                                             ; preds = %1394
  %1406 = and i32 %1395, 63
  %1407 = zext nneg i32 %1406 to i64
  %1408 = shl i64 %1401, %1407
  %1409 = lshr i64 %1408, %1369
  %1410 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1409
  %1411 = load i16, ptr %1410, align 2
  store i16 %1411, ptr %1371, align 1
  %1412 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1409, i32 1
  %1413 = load i8, ptr %1412, align 2, !tbaa !82
  %1414 = zext i8 %1413 to i32
  %1415 = add i32 %1395, %1414
  %1416 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1409, i32 2
  %1417 = load i8, ptr %1416, align 1, !tbaa !84
  %1418 = zext i8 %1417 to i64
  %1419 = getelementptr inbounds i8, ptr %1371, i64 %1418
  %1420 = and i32 %1415, 63
  %1421 = zext nneg i32 %1420 to i64
  %1422 = shl i64 %1401, %1421
  %1423 = lshr i64 %1422, %1369
  %1424 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1423
  %1425 = load i16, ptr %1424, align 2
  store i16 %1425, ptr %1419, align 1
  %1426 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1423, i32 1
  %1427 = load i8, ptr %1426, align 2, !tbaa !82
  %1428 = zext i8 %1427 to i32
  %1429 = add i32 %1415, %1428
  %1430 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1423, i32 2
  %1431 = load i8, ptr %1430, align 1, !tbaa !84
  %1432 = zext i8 %1431 to i64
  %1433 = getelementptr inbounds i8, ptr %1419, i64 %1432
  %1434 = and i32 %1429, 63
  %1435 = zext nneg i32 %1434 to i64
  %1436 = shl i64 %1401, %1435
  %1437 = lshr i64 %1436, %1369
  %1438 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1437
  %1439 = load i16, ptr %1438, align 2
  store i16 %1439, ptr %1433, align 1
  %1440 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1437, i32 1
  %1441 = load i8, ptr %1440, align 2, !tbaa !82
  %1442 = zext i8 %1441 to i32
  %1443 = add i32 %1429, %1442
  %1444 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1437, i32 2
  %1445 = load i8, ptr %1444, align 1, !tbaa !84
  %1446 = zext i8 %1445 to i64
  %1447 = getelementptr inbounds i8, ptr %1433, i64 %1446
  %1448 = and i32 %1443, 63
  %1449 = zext nneg i32 %1448 to i64
  %1450 = shl i64 %1401, %1449
  %1451 = lshr i64 %1450, %1369
  %1452 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1451
  %1453 = load i16, ptr %1452, align 2
  store i16 %1453, ptr %1447, align 1
  %1454 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1451, i32 1
  %1455 = load i8, ptr %1454, align 2, !tbaa !82
  %1456 = zext i8 %1455 to i32
  %1457 = add i32 %1443, %1456
  %1458 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1451, i32 2
  %1459 = load i8, ptr %1458, align 1, !tbaa !84
  %1460 = zext i8 %1459 to i64
  %1461 = getelementptr inbounds i8, ptr %1447, i64 %1460
  %1462 = and i32 %1457, 63
  %1463 = zext nneg i32 %1462 to i64
  %1464 = shl i64 %1401, %1463
  %1465 = lshr i64 %1464, %1369
  %1466 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1465
  %1467 = load i16, ptr %1466, align 2
  store i16 %1467, ptr %1461, align 1
  %1468 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1465, i32 1
  %1469 = load i8, ptr %1468, align 2, !tbaa !82
  %1470 = zext i8 %1469 to i32
  %1471 = add i32 %1457, %1470
  %1472 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1465, i32 2
  %1473 = load i8, ptr %1472, align 1, !tbaa !84
  %1474 = zext i8 %1473 to i64
  %1475 = getelementptr inbounds i8, ptr %1461, i64 %1474
  %1476 = icmp ugt i32 %1471, 64
  br i1 %1476, label %1599, label %1370, !prof !85, !llvm.loop !86

1477:                                             ; preds = %1357, %1512
  %1478 = phi ptr [ %593, %1357 ], [ %1568, %1512 ]
  %1479 = phi ptr [ %591, %1357 ], [ %1507, %1512 ]
  %1480 = phi i32 [ %589, %1357 ], [ %1564, %1512 ]
  %1481 = phi i64 [ %588, %1357 ], [ %1508, %1512 ]
  %1482 = icmp ult ptr %1479, %194
  br i1 %1482, label %1486, label %1483

1483:                                             ; preds = %1477
  %1484 = lshr i32 %1480, 3
  %1485 = and i32 %1480, 7
  br label %1501

1486:                                             ; preds = %1477
  %1487 = icmp eq ptr %1479, %28
  br i1 %1487, label %1599, label %1488

1488:                                             ; preds = %1486
  %1489 = lshr i32 %1480, 3
  %1490 = zext nneg i32 %1489 to i64
  %1491 = sub nsw i64 0, %1490
  %1492 = getelementptr inbounds i8, ptr %1479, i64 %1491
  %1493 = icmp ult ptr %1492, %28
  %1494 = ptrtoint ptr %1479 to i64
  %1495 = sub i64 %1494, %1358
  %1496 = trunc i64 %1495 to i32
  %1497 = select i1 %1493, i32 %1496, i32 %1489
  %1498 = zext i1 %1493 to i32
  %1499 = shl i32 %1497, 3
  %1500 = sub i32 %1480, %1499
  br label %1501

1501:                                             ; preds = %1488, %1483
  %1502 = phi i32 [ %1500, %1488 ], [ %1485, %1483 ]
  %1503 = phi i32 [ %1497, %1488 ], [ %1484, %1483 ]
  %1504 = phi i32 [ %1498, %1488 ], [ 0, %1483 ]
  %1505 = zext i32 %1503 to i64
  %1506 = sub nsw i64 0, %1505
  %1507 = getelementptr inbounds i8, ptr %1479, i64 %1506
  %1508 = load i64, ptr %1507, align 1, !tbaa !27
  %1509 = icmp eq i32 %1504, 0
  %1510 = icmp ult ptr %1478, %1359
  %1511 = and i1 %1510, %1509
  br i1 %1511, label %1512, label %1599

1512:                                             ; preds = %1501
  %1513 = and i32 %1502, 63
  %1514 = zext nneg i32 %1513 to i64
  %1515 = shl i64 %1508, %1514
  %1516 = lshr i64 %1515, %1362
  %1517 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1516
  %1518 = load i16, ptr %1517, align 2
  store i16 %1518, ptr %1478, align 1
  %1519 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1516, i32 1
  %1520 = load i8, ptr %1519, align 2, !tbaa !82
  %1521 = zext i8 %1520 to i32
  %1522 = add i32 %1502, %1521
  %1523 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1516, i32 2
  %1524 = load i8, ptr %1523, align 1, !tbaa !84
  %1525 = zext i8 %1524 to i64
  %1526 = getelementptr inbounds i8, ptr %1478, i64 %1525
  %1527 = and i32 %1522, 63
  %1528 = zext nneg i32 %1527 to i64
  %1529 = shl i64 %1508, %1528
  %1530 = lshr i64 %1529, %1362
  %1531 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1530
  %1532 = load i16, ptr %1531, align 2
  store i16 %1532, ptr %1526, align 1
  %1533 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1530, i32 1
  %1534 = load i8, ptr %1533, align 2, !tbaa !82
  %1535 = zext i8 %1534 to i32
  %1536 = add i32 %1522, %1535
  %1537 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1530, i32 2
  %1538 = load i8, ptr %1537, align 1, !tbaa !84
  %1539 = zext i8 %1538 to i64
  %1540 = getelementptr inbounds i8, ptr %1526, i64 %1539
  %1541 = and i32 %1536, 63
  %1542 = zext nneg i32 %1541 to i64
  %1543 = shl i64 %1508, %1542
  %1544 = lshr i64 %1543, %1362
  %1545 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1544
  %1546 = load i16, ptr %1545, align 2
  store i16 %1546, ptr %1540, align 1
  %1547 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1544, i32 1
  %1548 = load i8, ptr %1547, align 2, !tbaa !82
  %1549 = zext i8 %1548 to i32
  %1550 = add i32 %1536, %1549
  %1551 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1544, i32 2
  %1552 = load i8, ptr %1551, align 1, !tbaa !84
  %1553 = zext i8 %1552 to i64
  %1554 = getelementptr inbounds i8, ptr %1540, i64 %1553
  %1555 = and i32 %1550, 63
  %1556 = zext nneg i32 %1555 to i64
  %1557 = shl i64 %1508, %1556
  %1558 = lshr i64 %1557, %1362
  %1559 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1558
  %1560 = load i16, ptr %1559, align 2
  store i16 %1560, ptr %1554, align 1
  %1561 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1558, i32 1
  %1562 = load i8, ptr %1561, align 2, !tbaa !82
  %1563 = zext i8 %1562 to i32
  %1564 = add i32 %1550, %1563
  %1565 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1558, i32 2
  %1566 = load i8, ptr %1565, align 1, !tbaa !84
  %1567 = zext i8 %1566 to i64
  %1568 = getelementptr inbounds i8, ptr %1554, i64 %1567
  %1569 = icmp ugt i32 %1564, 64
  br i1 %1569, label %1599, label %1477, !prof !85, !llvm.loop !87

1570:                                             ; preds = %1348
  %1571 = icmp ugt i32 %589, 64
  br i1 %1571, label %1599, label %1572, !prof !107

1572:                                             ; preds = %1570
  %1573 = icmp ult ptr %591, %194
  br i1 %1573, label %1577, label %1574

1574:                                             ; preds = %1572
  %1575 = lshr i32 %589, 3
  %1576 = and i32 %589, 7
  br label %1592

1577:                                             ; preds = %1572
  %1578 = icmp eq ptr %591, %28
  br i1 %1578, label %1599, label %1579

1579:                                             ; preds = %1577
  %1580 = lshr i32 %589, 3
  %1581 = zext nneg i32 %1580 to i64
  %1582 = sub nsw i64 0, %1581
  %1583 = getelementptr inbounds i8, ptr %591, i64 %1582
  %1584 = icmp ult ptr %1583, %28
  %1585 = ptrtoint ptr %591 to i64
  %1586 = ptrtoint ptr %28 to i64
  %1587 = sub i64 %1585, %1586
  %1588 = trunc i64 %1587 to i32
  %1589 = select i1 %1584, i32 %1588, i32 %1580
  %1590 = shl i32 %1589, 3
  %1591 = sub i32 %589, %1590
  br label %1592

1592:                                             ; preds = %1579, %1574
  %1593 = phi i32 [ %1575, %1574 ], [ %1589, %1579 ]
  %1594 = phi i32 [ %1576, %1574 ], [ %1591, %1579 ]
  %1595 = zext i32 %1593 to i64
  %1596 = sub nsw i64 0, %1595
  %1597 = getelementptr inbounds i8, ptr %591, i64 %1596
  %1598 = load i64, ptr %1597, align 1, !tbaa !27
  br label %1599

1599:                                             ; preds = %1501, %1512, %1486, %1394, %1405, %1379, %1592, %1356, %1363, %1577, %1570
  %1600 = phi i64 [ %588, %1570 ], [ %588, %1577 ], [ %588, %1363 ], [ %588, %1356 ], [ %1598, %1592 ], [ %1401, %1394 ], [ %1401, %1405 ], [ %1374, %1379 ], [ %1508, %1501 ], [ %1508, %1512 ], [ %1481, %1486 ]
  %1601 = phi i32 [ %589, %1570 ], [ %589, %1577 ], [ %589, %1363 ], [ %589, %1356 ], [ %1594, %1592 ], [ %1395, %1394 ], [ %1471, %1405 ], [ %1373, %1379 ], [ %1502, %1501 ], [ %1564, %1512 ], [ %1480, %1486 ]
  %1602 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1570 ], [ %28, %1577 ], [ @BIT_reloadDStream.zeroFilled, %1363 ], [ @BIT_reloadDStream.zeroFilled, %1356 ], [ %1597, %1592 ], [ %1400, %1394 ], [ @BIT_reloadDStream.zeroFilled, %1405 ], [ %28, %1379 ], [ %1507, %1501 ], [ @BIT_reloadDStream.zeroFilled, %1512 ], [ %28, %1486 ]
  %1603 = phi ptr [ %593, %1570 ], [ %593, %1577 ], [ %593, %1363 ], [ %593, %1356 ], [ %593, %1592 ], [ %1371, %1394 ], [ %1475, %1405 ], [ %1371, %1379 ], [ %1478, %1501 ], [ %1568, %1512 ], [ %1478, %1486 ]
  %1604 = ptrtoint ptr %1603 to i64
  %1605 = sub i64 %271, %1604
  %1606 = icmp ugt i64 %1605, 1
  br i1 %1606, label %1607, label %1689

1607:                                             ; preds = %1599
  %1608 = getelementptr inbounds i8, ptr %34, i64 -2
  %1609 = ptrtoint ptr %28 to i64
  %1610 = sub nsw i32 0, %36
  %1611 = and i32 %1610, 63
  %1612 = zext nneg i32 %1611 to i64
  %1613 = icmp ugt i32 %1601, 64
  br i1 %1613, label %1649, label %1614, !prof !88

1614:                                             ; preds = %1607, %1655
  %1615 = phi ptr [ %1669, %1655 ], [ %1603, %1607 ]
  %1616 = phi ptr [ %1644, %1655 ], [ %1602, %1607 ]
  %1617 = phi i32 [ %1665, %1655 ], [ %1601, %1607 ]
  %1618 = phi i64 [ %1645, %1655 ], [ %1600, %1607 ]
  %1619 = icmp ult ptr %1616, %194
  br i1 %1619, label %1623, label %1620

1620:                                             ; preds = %1614
  %1621 = lshr i32 %1617, 3
  %1622 = and i32 %1617, 7
  br label %1638

1623:                                             ; preds = %1614
  %1624 = icmp eq ptr %1616, %28
  br i1 %1624, label %1649, label %1625

1625:                                             ; preds = %1623
  %1626 = lshr i32 %1617, 3
  %1627 = zext nneg i32 %1626 to i64
  %1628 = sub nsw i64 0, %1627
  %1629 = getelementptr inbounds i8, ptr %1616, i64 %1628
  %1630 = icmp ult ptr %1629, %28
  %1631 = ptrtoint ptr %1616 to i64
  %1632 = sub i64 %1631, %1609
  %1633 = trunc i64 %1632 to i32
  %1634 = select i1 %1630, i32 %1633, i32 %1626
  %1635 = zext i1 %1630 to i32
  %1636 = shl i32 %1634, 3
  %1637 = sub i32 %1617, %1636
  br label %1638

1638:                                             ; preds = %1625, %1620
  %1639 = phi i32 [ %1634, %1625 ], [ %1621, %1620 ]
  %1640 = phi i32 [ %1637, %1625 ], [ %1622, %1620 ]
  %1641 = phi i32 [ %1635, %1625 ], [ 0, %1620 ]
  %1642 = zext i32 %1639 to i64
  %1643 = sub nsw i64 0, %1642
  %1644 = getelementptr inbounds i8, ptr %1616, i64 %1643
  %1645 = load i64, ptr %1644, align 1, !tbaa !27
  %1646 = icmp eq i32 %1641, 0
  %1647 = icmp ule ptr %1615, %1608
  %1648 = and i1 %1647, %1646
  br i1 %1648, label %1655, label %1649

1649:                                             ; preds = %1638, %1655, %1623, %1607
  %1650 = phi ptr [ %1603, %1607 ], [ %1615, %1638 ], [ %1669, %1655 ], [ %1615, %1623 ]
  %1651 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1607 ], [ %1644, %1638 ], [ @BIT_reloadDStream.zeroFilled, %1655 ], [ %28, %1623 ]
  %1652 = phi i32 [ %1601, %1607 ], [ %1640, %1638 ], [ %1665, %1655 ], [ %1617, %1623 ]
  %1653 = phi i64 [ %1600, %1607 ], [ %1645, %1638 ], [ %1645, %1655 ], [ %1618, %1623 ]
  %1654 = icmp ugt ptr %1650, %1608
  br i1 %1654, label %1689, label %1671

1655:                                             ; preds = %1638
  %1656 = and i32 %1640, 63
  %1657 = zext nneg i32 %1656 to i64
  %1658 = shl i64 %1645, %1657
  %1659 = lshr i64 %1658, %1612
  %1660 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1659
  %1661 = load i16, ptr %1660, align 2
  store i16 %1661, ptr %1615, align 1
  %1662 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1659, i32 1
  %1663 = load i8, ptr %1662, align 2, !tbaa !82
  %1664 = zext i8 %1663 to i32
  %1665 = add i32 %1640, %1664
  %1666 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1659, i32 2
  %1667 = load i8, ptr %1666, align 1, !tbaa !84
  %1668 = zext i8 %1667 to i64
  %1669 = getelementptr inbounds i8, ptr %1615, i64 %1668
  %1670 = icmp ugt i32 %1665, 64
  br i1 %1670, label %1649, label %1614, !prof !85, !llvm.loop !89

1671:                                             ; preds = %1649, %1671
  %1672 = phi ptr [ %1687, %1671 ], [ %1650, %1649 ]
  %1673 = phi i32 [ %1683, %1671 ], [ %1652, %1649 ]
  %1674 = and i32 %1673, 63
  %1675 = zext nneg i32 %1674 to i64
  %1676 = shl i64 %1653, %1675
  %1677 = lshr i64 %1676, %1612
  %1678 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1677
  %1679 = load i16, ptr %1678, align 2
  store i16 %1679, ptr %1672, align 1
  %1680 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1677, i32 1
  %1681 = load i8, ptr %1680, align 2, !tbaa !82
  %1682 = zext i8 %1681 to i32
  %1683 = add i32 %1673, %1682
  %1684 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1677, i32 2
  %1685 = load i8, ptr %1684, align 1, !tbaa !84
  %1686 = zext i8 %1685 to i64
  %1687 = getelementptr inbounds i8, ptr %1672, i64 %1686
  %1688 = icmp ugt ptr %1687, %1608
  br i1 %1688, label %1689, label %1671, !llvm.loop !90

1689:                                             ; preds = %1671, %1649, %1599
  %1690 = phi i64 [ %1600, %1599 ], [ %1653, %1649 ], [ %1653, %1671 ]
  %1691 = phi i32 [ %1601, %1599 ], [ %1652, %1649 ], [ %1683, %1671 ]
  %1692 = phi ptr [ %1602, %1599 ], [ %1651, %1649 ], [ %1651, %1671 ]
  %1693 = phi ptr [ %1603, %1599 ], [ %1650, %1649 ], [ %1687, %1671 ]
  %1694 = icmp ult ptr %1693, %34
  br i1 %1694, label %1695, label %1721

1695:                                             ; preds = %1689
  %1696 = and i32 %1691, 63
  %1697 = zext nneg i32 %1696 to i64
  %1698 = shl i64 %1690, %1697
  %1699 = sub nsw i32 0, %36
  %1700 = and i32 %1699, 63
  %1701 = zext nneg i32 %1700 to i64
  %1702 = lshr i64 %1698, %1701
  %1703 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1702
  %1704 = load i8, ptr %1703, align 2
  store i8 %1704, ptr %1693, align 1
  %1705 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1702, i32 2
  %1706 = load i8, ptr %1705, align 1, !tbaa !84
  %1707 = icmp eq i8 %1706, 1
  br i1 %1707, label %1708, label %1713

1708:                                             ; preds = %1695
  %1709 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1702, i32 1
  %1710 = load i8, ptr %1709, align 2, !tbaa !82
  %1711 = zext i8 %1710 to i32
  %1712 = add i32 %1691, %1711
  br label %1721

1713:                                             ; preds = %1695
  %1714 = icmp ult i32 %1691, 64
  br i1 %1714, label %1715, label %1721

1715:                                             ; preds = %1713
  %1716 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1702, i32 1
  %1717 = load i8, ptr %1716, align 2, !tbaa !82
  %1718 = zext i8 %1717 to i32
  %1719 = add nuw nsw i32 %1691, %1718
  %1720 = tail call i32 @llvm.umin.i32(i32 %1719, i32 64)
  br label %1721

1721:                                             ; preds = %1708, %1713, %1715, %1689
  %1722 = phi i32 [ %1691, %1689 ], [ %1712, %1708 ], [ %1691, %1713 ], [ %1720, %1715 ]
  %1723 = ptrtoint ptr %592 to i64
  %1724 = sub i64 %270, %1723
  %1725 = icmp ugt i64 %1724, 7
  br i1 %1725, label %1726, label %1980

1726:                                             ; preds = %1721
  %1727 = icmp ult i32 %37, 12
  %1728 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 1
  %1729 = load i32, ptr %1728, align 8
  %1730 = icmp ugt i32 %1729, 64
  br i1 %1727, label %1739, label %1731

1731:                                             ; preds = %1726
  br i1 %1730, label %1872, label %1732, !prof !88

1732:                                             ; preds = %1731
  %1733 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  %1734 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 4
  %1735 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 3
  %1736 = sub nsw i32 0, %36
  %1737 = and i32 %1736, 63
  %1738 = zext nneg i32 %1737 to i64
  br label %1876

1739:                                             ; preds = %1726
  br i1 %1730, label %1748, label %1740, !prof !88

1740:                                             ; preds = %1739
  %1741 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  %1742 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 4
  %1743 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 3
  %1744 = getelementptr inbounds i8, ptr %11, i64 -9
  %1745 = sub nsw i32 0, %36
  %1746 = and i32 %1745, 63
  %1747 = zext nneg i32 %1746 to i64
  br label %1752

1748:                                             ; preds = %1792, %1739
  %1749 = phi i32 [ %1729, %1739 ], [ %1866, %1792 ]
  %1750 = phi ptr [ %592, %1739 ], [ %1870, %1792 ]
  %1751 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1751, align 8, !tbaa !105
  br label %2019

1752:                                             ; preds = %1740, %1792
  %1753 = phi i32 [ %1729, %1740 ], [ %1866, %1792 ]
  %1754 = phi ptr [ %592, %1740 ], [ %1870, %1792 ]
  %1755 = load ptr, ptr %1741, align 8, !tbaa !105
  %1756 = load ptr, ptr %1742, align 8, !tbaa !103
  %1757 = icmp ult ptr %1755, %1756
  br i1 %1757, label %1764, label %1758

1758:                                             ; preds = %1752
  %1759 = lshr i32 %1753, 3
  %1760 = zext nneg i32 %1759 to i64
  %1761 = sub nsw i64 0, %1760
  %1762 = getelementptr inbounds i8, ptr %1755, i64 %1761
  store ptr %1762, ptr %1741, align 8, !tbaa !105
  %1763 = and i32 %1753, 7
  br label %1784

1764:                                             ; preds = %1752
  %1765 = load ptr, ptr %1743, align 8, !tbaa !109
  %1766 = icmp eq ptr %1755, %1765
  br i1 %1766, label %2019, label %1767

1767:                                             ; preds = %1764
  %1768 = lshr i32 %1753, 3
  %1769 = zext nneg i32 %1768 to i64
  %1770 = sub nsw i64 0, %1769
  %1771 = getelementptr inbounds i8, ptr %1755, i64 %1770
  %1772 = icmp ult ptr %1771, %1765
  %1773 = ptrtoint ptr %1755 to i64
  %1774 = ptrtoint ptr %1765 to i64
  %1775 = sub i64 %1773, %1774
  %1776 = trunc i64 %1775 to i32
  %1777 = select i1 %1772, i32 %1776, i32 %1768
  %1778 = zext i1 %1772 to i32
  %1779 = zext i32 %1777 to i64
  %1780 = sub nsw i64 0, %1779
  %1781 = getelementptr inbounds i8, ptr %1755, i64 %1780
  store ptr %1781, ptr %1741, align 8, !tbaa !105
  %1782 = shl i32 %1777, 3
  %1783 = sub i32 %1753, %1782
  br label %1784

1784:                                             ; preds = %1767, %1758
  %1785 = phi i32 [ %1763, %1758 ], [ %1783, %1767 ]
  %1786 = phi ptr [ %1762, %1758 ], [ %1781, %1767 ]
  %1787 = phi i32 [ 0, %1758 ], [ %1778, %1767 ]
  store i32 %1785, ptr %1728, align 8, !tbaa !104
  %1788 = load i64, ptr %1786, align 1, !tbaa !27
  store i64 %1788, ptr %6, align 8, !tbaa !100
  %1789 = icmp eq i32 %1787, 0
  %1790 = icmp ult ptr %1754, %1744
  %1791 = and i1 %1790, %1789
  br i1 %1791, label %1792, label %2019

1792:                                             ; preds = %1784
  %1793 = and i32 %1785, 63
  %1794 = zext nneg i32 %1793 to i64
  %1795 = shl i64 %1788, %1794
  %1796 = lshr i64 %1795, %1747
  %1797 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1796
  %1798 = load i16, ptr %1797, align 2
  store i16 %1798, ptr %1754, align 1
  %1799 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1796, i32 1
  %1800 = load i8, ptr %1799, align 2, !tbaa !82
  %1801 = zext i8 %1800 to i32
  %1802 = add i32 %1785, %1801
  store i32 %1802, ptr %1728, align 8, !tbaa !104
  %1803 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1796, i32 2
  %1804 = load i8, ptr %1803, align 1, !tbaa !84
  %1805 = zext i8 %1804 to i64
  %1806 = getelementptr inbounds i8, ptr %1754, i64 %1805
  %1807 = load i64, ptr %6, align 8, !tbaa !100
  %1808 = and i32 %1802, 63
  %1809 = zext nneg i32 %1808 to i64
  %1810 = shl i64 %1807, %1809
  %1811 = lshr i64 %1810, %1747
  %1812 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1811
  %1813 = load i16, ptr %1812, align 2
  store i16 %1813, ptr %1806, align 1
  %1814 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1811, i32 1
  %1815 = load i8, ptr %1814, align 2, !tbaa !82
  %1816 = zext i8 %1815 to i32
  %1817 = load i32, ptr %1728, align 8, !tbaa !104
  %1818 = add i32 %1817, %1816
  store i32 %1818, ptr %1728, align 8, !tbaa !104
  %1819 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1811, i32 2
  %1820 = load i8, ptr %1819, align 1, !tbaa !84
  %1821 = zext i8 %1820 to i64
  %1822 = getelementptr inbounds i8, ptr %1806, i64 %1821
  %1823 = load i64, ptr %6, align 8, !tbaa !100
  %1824 = and i32 %1818, 63
  %1825 = zext nneg i32 %1824 to i64
  %1826 = shl i64 %1823, %1825
  %1827 = lshr i64 %1826, %1747
  %1828 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1827
  %1829 = load i16, ptr %1828, align 2
  store i16 %1829, ptr %1822, align 1
  %1830 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1827, i32 1
  %1831 = load i8, ptr %1830, align 2, !tbaa !82
  %1832 = zext i8 %1831 to i32
  %1833 = load i32, ptr %1728, align 8, !tbaa !104
  %1834 = add i32 %1833, %1832
  store i32 %1834, ptr %1728, align 8, !tbaa !104
  %1835 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1827, i32 2
  %1836 = load i8, ptr %1835, align 1, !tbaa !84
  %1837 = zext i8 %1836 to i64
  %1838 = getelementptr inbounds i8, ptr %1822, i64 %1837
  %1839 = load i64, ptr %6, align 8, !tbaa !100
  %1840 = and i32 %1834, 63
  %1841 = zext nneg i32 %1840 to i64
  %1842 = shl i64 %1839, %1841
  %1843 = lshr i64 %1842, %1747
  %1844 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1843
  %1845 = load i16, ptr %1844, align 2
  store i16 %1845, ptr %1838, align 1
  %1846 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1843, i32 1
  %1847 = load i8, ptr %1846, align 2, !tbaa !82
  %1848 = zext i8 %1847 to i32
  %1849 = load i32, ptr %1728, align 8, !tbaa !104
  %1850 = add i32 %1849, %1848
  store i32 %1850, ptr %1728, align 8, !tbaa !104
  %1851 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1843, i32 2
  %1852 = load i8, ptr %1851, align 1, !tbaa !84
  %1853 = zext i8 %1852 to i64
  %1854 = getelementptr inbounds i8, ptr %1838, i64 %1853
  %1855 = load i64, ptr %6, align 8, !tbaa !100
  %1856 = and i32 %1850, 63
  %1857 = zext nneg i32 %1856 to i64
  %1858 = shl i64 %1855, %1857
  %1859 = lshr i64 %1858, %1747
  %1860 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1859
  %1861 = load i16, ptr %1860, align 2
  store i16 %1861, ptr %1854, align 1
  %1862 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1859, i32 1
  %1863 = load i8, ptr %1862, align 2, !tbaa !82
  %1864 = zext i8 %1863 to i32
  %1865 = load i32, ptr %1728, align 8, !tbaa !104
  %1866 = add i32 %1865, %1864
  store i32 %1866, ptr %1728, align 8, !tbaa !104
  %1867 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1859, i32 2
  %1868 = load i8, ptr %1867, align 1, !tbaa !84
  %1869 = zext i8 %1868 to i64
  %1870 = getelementptr inbounds i8, ptr %1854, i64 %1869
  %1871 = icmp ugt i32 %1866, 64
  br i1 %1871, label %1748, label %1752, !prof !85, !llvm.loop !86

1872:                                             ; preds = %1916, %1731
  %1873 = phi i32 [ %1729, %1731 ], [ %1974, %1916 ]
  %1874 = phi ptr [ %592, %1731 ], [ %1978, %1916 ]
  %1875 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1875, align 8, !tbaa !105
  br label %2019

1876:                                             ; preds = %1732, %1916
  %1877 = phi i32 [ %1729, %1732 ], [ %1974, %1916 ]
  %1878 = phi ptr [ %592, %1732 ], [ %1978, %1916 ]
  %1879 = load ptr, ptr %1733, align 8, !tbaa !105
  %1880 = load ptr, ptr %1734, align 8, !tbaa !103
  %1881 = icmp ult ptr %1879, %1880
  br i1 %1881, label %1888, label %1882

1882:                                             ; preds = %1876
  %1883 = lshr i32 %1877, 3
  %1884 = zext nneg i32 %1883 to i64
  %1885 = sub nsw i64 0, %1884
  %1886 = getelementptr inbounds i8, ptr %1879, i64 %1885
  store ptr %1886, ptr %1733, align 8, !tbaa !105
  %1887 = and i32 %1877, 7
  br label %1908

1888:                                             ; preds = %1876
  %1889 = load ptr, ptr %1735, align 8, !tbaa !109
  %1890 = icmp eq ptr %1879, %1889
  br i1 %1890, label %2019, label %1891

1891:                                             ; preds = %1888
  %1892 = lshr i32 %1877, 3
  %1893 = zext nneg i32 %1892 to i64
  %1894 = sub nsw i64 0, %1893
  %1895 = getelementptr inbounds i8, ptr %1879, i64 %1894
  %1896 = icmp ult ptr %1895, %1889
  %1897 = ptrtoint ptr %1879 to i64
  %1898 = ptrtoint ptr %1889 to i64
  %1899 = sub i64 %1897, %1898
  %1900 = trunc i64 %1899 to i32
  %1901 = select i1 %1896, i32 %1900, i32 %1892
  %1902 = zext i1 %1896 to i32
  %1903 = zext i32 %1901 to i64
  %1904 = sub nsw i64 0, %1903
  %1905 = getelementptr inbounds i8, ptr %1879, i64 %1904
  store ptr %1905, ptr %1733, align 8, !tbaa !105
  %1906 = shl i32 %1901, 3
  %1907 = sub i32 %1877, %1906
  br label %1908

1908:                                             ; preds = %1891, %1882
  %1909 = phi i32 [ %1887, %1882 ], [ %1907, %1891 ]
  %1910 = phi ptr [ %1886, %1882 ], [ %1905, %1891 ]
  %1911 = phi i32 [ 0, %1882 ], [ %1902, %1891 ]
  store i32 %1909, ptr %1728, align 8, !tbaa !104
  %1912 = load i64, ptr %1910, align 1, !tbaa !27
  store i64 %1912, ptr %6, align 8, !tbaa !100
  %1913 = icmp eq i32 %1911, 0
  %1914 = icmp ult ptr %1878, %12
  %1915 = and i1 %1914, %1913
  br i1 %1915, label %1916, label %2019

1916:                                             ; preds = %1908
  %1917 = and i32 %1909, 63
  %1918 = zext nneg i32 %1917 to i64
  %1919 = shl i64 %1912, %1918
  %1920 = lshr i64 %1919, %1738
  %1921 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1920
  %1922 = load i16, ptr %1921, align 2
  store i16 %1922, ptr %1878, align 1
  %1923 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1920, i32 1
  %1924 = load i8, ptr %1923, align 2, !tbaa !82
  %1925 = zext i8 %1924 to i32
  %1926 = add i32 %1909, %1925
  store i32 %1926, ptr %1728, align 8, !tbaa !104
  %1927 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1920, i32 2
  %1928 = load i8, ptr %1927, align 1, !tbaa !84
  %1929 = zext i8 %1928 to i64
  %1930 = getelementptr inbounds i8, ptr %1878, i64 %1929
  %1931 = load i64, ptr %6, align 8, !tbaa !100
  %1932 = and i32 %1926, 63
  %1933 = zext nneg i32 %1932 to i64
  %1934 = shl i64 %1931, %1933
  %1935 = lshr i64 %1934, %1738
  %1936 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1935
  %1937 = load i16, ptr %1936, align 2
  store i16 %1937, ptr %1930, align 1
  %1938 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1935, i32 1
  %1939 = load i8, ptr %1938, align 2, !tbaa !82
  %1940 = zext i8 %1939 to i32
  %1941 = load i32, ptr %1728, align 8, !tbaa !104
  %1942 = add i32 %1941, %1940
  store i32 %1942, ptr %1728, align 8, !tbaa !104
  %1943 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1935, i32 2
  %1944 = load i8, ptr %1943, align 1, !tbaa !84
  %1945 = zext i8 %1944 to i64
  %1946 = getelementptr inbounds i8, ptr %1930, i64 %1945
  %1947 = load i64, ptr %6, align 8, !tbaa !100
  %1948 = and i32 %1942, 63
  %1949 = zext nneg i32 %1948 to i64
  %1950 = shl i64 %1947, %1949
  %1951 = lshr i64 %1950, %1738
  %1952 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1951
  %1953 = load i16, ptr %1952, align 2
  store i16 %1953, ptr %1946, align 1
  %1954 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1951, i32 1
  %1955 = load i8, ptr %1954, align 2, !tbaa !82
  %1956 = zext i8 %1955 to i32
  %1957 = load i32, ptr %1728, align 8, !tbaa !104
  %1958 = add i32 %1957, %1956
  store i32 %1958, ptr %1728, align 8, !tbaa !104
  %1959 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1951, i32 2
  %1960 = load i8, ptr %1959, align 1, !tbaa !84
  %1961 = zext i8 %1960 to i64
  %1962 = getelementptr inbounds i8, ptr %1946, i64 %1961
  %1963 = load i64, ptr %6, align 8, !tbaa !100
  %1964 = and i32 %1958, 63
  %1965 = zext nneg i32 %1964 to i64
  %1966 = shl i64 %1963, %1965
  %1967 = lshr i64 %1966, %1738
  %1968 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1967
  %1969 = load i16, ptr %1968, align 2
  store i16 %1969, ptr %1962, align 1
  %1970 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1967, i32 1
  %1971 = load i8, ptr %1970, align 2, !tbaa !82
  %1972 = zext i8 %1971 to i32
  %1973 = load i32, ptr %1728, align 8, !tbaa !104
  %1974 = add i32 %1973, %1972
  store i32 %1974, ptr %1728, align 8, !tbaa !104
  %1975 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %1967, i32 2
  %1976 = load i8, ptr %1975, align 1, !tbaa !84
  %1977 = zext i8 %1976 to i64
  %1978 = getelementptr inbounds i8, ptr %1962, i64 %1977
  %1979 = icmp ugt i32 %1974, 64
  br i1 %1979, label %1872, label %1876, !prof !85, !llvm.loop !87

1980:                                             ; preds = %1721
  %1981 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 1
  %1982 = load i32, ptr %1981, align 8
  %1983 = icmp ugt i32 %1982, 64
  %1984 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  br i1 %1983, label %1985, label %1986, !prof !107

1985:                                             ; preds = %1980
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1984, align 8, !tbaa !105
  br label %2019

1986:                                             ; preds = %1980
  %1987 = load ptr, ptr %1984, align 8, !tbaa !105
  %1988 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 4
  %1989 = load ptr, ptr %1988, align 8, !tbaa !103
  %1990 = icmp ult ptr %1987, %1989
  br i1 %1990, label %1998, label %1991

1991:                                             ; preds = %1986
  %1992 = lshr i32 %1982, 3
  %1993 = zext nneg i32 %1992 to i64
  %1994 = sub nsw i64 0, %1993
  %1995 = getelementptr inbounds i8, ptr %1987, i64 %1994
  store ptr %1995, ptr %1984, align 8, !tbaa !105
  %1996 = and i32 %1982, 7
  store i32 %1996, ptr %1981, align 8, !tbaa !104
  %1997 = load i64, ptr %1995, align 1, !tbaa !27
  store i64 %1997, ptr %6, align 8, !tbaa !100
  br label %2019

1998:                                             ; preds = %1986
  %1999 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 3
  %2000 = load ptr, ptr %1999, align 8, !tbaa !109
  %2001 = icmp eq ptr %1987, %2000
  br i1 %2001, label %2019, label %2002

2002:                                             ; preds = %1998
  %2003 = lshr i32 %1982, 3
  %2004 = zext nneg i32 %2003 to i64
  %2005 = sub nsw i64 0, %2004
  %2006 = getelementptr inbounds i8, ptr %1987, i64 %2005
  %2007 = icmp ult ptr %2006, %2000
  %2008 = ptrtoint ptr %1987 to i64
  %2009 = ptrtoint ptr %2000 to i64
  %2010 = sub i64 %2008, %2009
  %2011 = trunc i64 %2010 to i32
  %2012 = select i1 %2007, i32 %2011, i32 %2003
  %2013 = zext i32 %2012 to i64
  %2014 = sub nsw i64 0, %2013
  %2015 = getelementptr inbounds i8, ptr %1987, i64 %2014
  store ptr %2015, ptr %1984, align 8, !tbaa !105
  %2016 = shl i32 %2012, 3
  %2017 = sub i32 %1982, %2016
  store i32 %2017, ptr %1981, align 8, !tbaa !104
  %2018 = load i64, ptr %2015, align 1, !tbaa !27
  store i64 %2018, ptr %6, align 8, !tbaa !100
  br label %2019

2019:                                             ; preds = %1888, %1908, %1764, %1784, %1998, %1872, %1748, %1985, %1991, %2002
  %2020 = phi i32 [ %2017, %2002 ], [ %1996, %1991 ], [ %1982, %1985 ], [ %1749, %1748 ], [ %1873, %1872 ], [ %1982, %1998 ], [ %1753, %1764 ], [ %1785, %1784 ], [ %1877, %1888 ], [ %1909, %1908 ]
  %2021 = phi ptr [ %592, %2002 ], [ %592, %1991 ], [ %592, %1985 ], [ %1750, %1748 ], [ %1874, %1872 ], [ %592, %1998 ], [ %1754, %1784 ], [ %1754, %1764 ], [ %1878, %1908 ], [ %1878, %1888 ]
  %2022 = ptrtoint ptr %2021 to i64
  %2023 = sub i64 %270, %2022
  %2024 = icmp ugt i64 %2023, 1
  br i1 %2024, label %2025, label %2120

2025:                                             ; preds = %2019
  %2026 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 1
  %2027 = getelementptr inbounds i8, ptr %11, i64 -2
  %2028 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  %2029 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 4
  %2030 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 3
  %2031 = sub nsw i32 0, %36
  %2032 = and i32 %2031, 63
  %2033 = zext nneg i32 %2032 to i64
  %2034 = icmp ugt i32 %2020, 64
  br i1 %2034, label %2035, label %2038, !prof !88

2035:                                             ; preds = %2082, %2025
  %2036 = phi i32 [ %2020, %2025 ], [ %2094, %2082 ]
  %2037 = phi ptr [ %2021, %2025 ], [ %2098, %2082 ]
  store ptr @BIT_reloadDStream.zeroFilled, ptr %2028, align 8, !tbaa !105
  br label %2078

2038:                                             ; preds = %2025, %2082
  %2039 = phi ptr [ %2098, %2082 ], [ %2021, %2025 ]
  %2040 = phi i32 [ %2094, %2082 ], [ %2020, %2025 ]
  %2041 = load ptr, ptr %2028, align 8, !tbaa !105
  %2042 = load ptr, ptr %2029, align 8, !tbaa !103
  %2043 = icmp ult ptr %2041, %2042
  br i1 %2043, label %2050, label %2044

2044:                                             ; preds = %2038
  %2045 = lshr i32 %2040, 3
  %2046 = zext nneg i32 %2045 to i64
  %2047 = sub nsw i64 0, %2046
  %2048 = getelementptr inbounds i8, ptr %2041, i64 %2047
  store ptr %2048, ptr %2028, align 8, !tbaa !105
  %2049 = and i32 %2040, 7
  br label %2070

2050:                                             ; preds = %2038
  %2051 = load ptr, ptr %2030, align 8, !tbaa !109
  %2052 = icmp eq ptr %2041, %2051
  br i1 %2052, label %2078, label %2053

2053:                                             ; preds = %2050
  %2054 = lshr i32 %2040, 3
  %2055 = zext nneg i32 %2054 to i64
  %2056 = sub nsw i64 0, %2055
  %2057 = getelementptr inbounds i8, ptr %2041, i64 %2056
  %2058 = icmp ult ptr %2057, %2051
  %2059 = ptrtoint ptr %2041 to i64
  %2060 = ptrtoint ptr %2051 to i64
  %2061 = sub i64 %2059, %2060
  %2062 = trunc i64 %2061 to i32
  %2063 = select i1 %2058, i32 %2062, i32 %2054
  %2064 = zext i1 %2058 to i32
  %2065 = zext i32 %2063 to i64
  %2066 = sub nsw i64 0, %2065
  %2067 = getelementptr inbounds i8, ptr %2041, i64 %2066
  store ptr %2067, ptr %2028, align 8, !tbaa !105
  %2068 = shl i32 %2063, 3
  %2069 = sub i32 %2040, %2068
  br label %2070

2070:                                             ; preds = %2053, %2044
  %2071 = phi ptr [ %2048, %2044 ], [ %2067, %2053 ]
  %2072 = phi i32 [ %2049, %2044 ], [ %2069, %2053 ]
  %2073 = phi i32 [ 0, %2044 ], [ %2064, %2053 ]
  store i32 %2072, ptr %2026, align 8, !tbaa !104
  %2074 = load i64, ptr %2071, align 1, !tbaa !27
  store i64 %2074, ptr %6, align 8, !tbaa !100
  %2075 = icmp eq i32 %2073, 0
  %2076 = icmp ule ptr %2039, %2027
  %2077 = and i1 %2076, %2075
  br i1 %2077, label %2082, label %2078

2078:                                             ; preds = %2050, %2070, %2035
  %2079 = phi ptr [ %2037, %2035 ], [ %2039, %2070 ], [ %2039, %2050 ]
  %2080 = phi i32 [ %2036, %2035 ], [ %2040, %2050 ], [ %2072, %2070 ]
  %2081 = icmp ugt ptr %2079, %2027
  br i1 %2081, label %2120, label %2100

2082:                                             ; preds = %2070
  %2083 = load i64, ptr %6, align 8, !tbaa !100
  %2084 = and i32 %2072, 63
  %2085 = zext nneg i32 %2084 to i64
  %2086 = shl i64 %2083, %2085
  %2087 = lshr i64 %2086, %2033
  %2088 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2087
  %2089 = load i16, ptr %2088, align 2
  store i16 %2089, ptr %2039, align 1
  %2090 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2087, i32 1
  %2091 = load i8, ptr %2090, align 2, !tbaa !82
  %2092 = zext i8 %2091 to i32
  %2093 = load i32, ptr %2026, align 8, !tbaa !104
  %2094 = add i32 %2093, %2092
  store i32 %2094, ptr %2026, align 8, !tbaa !104
  %2095 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2087, i32 2
  %2096 = load i8, ptr %2095, align 1, !tbaa !84
  %2097 = zext i8 %2096 to i64
  %2098 = getelementptr inbounds i8, ptr %2039, i64 %2097
  %2099 = icmp ugt i32 %2094, 64
  br i1 %2099, label %2035, label %2038, !prof !85, !llvm.loop !89

2100:                                             ; preds = %2078, %2100
  %2101 = phi i32 [ %2114, %2100 ], [ %2080, %2078 ]
  %2102 = phi ptr [ %2118, %2100 ], [ %2079, %2078 ]
  %2103 = load i64, ptr %6, align 8, !tbaa !100
  %2104 = and i32 %2101, 63
  %2105 = zext nneg i32 %2104 to i64
  %2106 = shl i64 %2103, %2105
  %2107 = lshr i64 %2106, %2033
  %2108 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2107
  %2109 = load i16, ptr %2108, align 2
  store i16 %2109, ptr %2102, align 1
  %2110 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2107, i32 1
  %2111 = load i8, ptr %2110, align 2, !tbaa !82
  %2112 = zext i8 %2111 to i32
  %2113 = load i32, ptr %2026, align 8, !tbaa !104
  %2114 = add i32 %2113, %2112
  store i32 %2114, ptr %2026, align 8, !tbaa !104
  %2115 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2107, i32 2
  %2116 = load i8, ptr %2115, align 1, !tbaa !84
  %2117 = zext i8 %2116 to i64
  %2118 = getelementptr inbounds i8, ptr %2102, i64 %2117
  %2119 = icmp ugt ptr %2118, %2027
  br i1 %2119, label %2120, label %2100, !llvm.loop !90

2120:                                             ; preds = %2100, %2078, %2019
  %2121 = phi i32 [ %2020, %2019 ], [ %2080, %2078 ], [ %2114, %2100 ]
  %2122 = phi ptr [ %2021, %2019 ], [ %2079, %2078 ], [ %2118, %2100 ]
  %2123 = icmp ult ptr %2122, %11
  br i1 %2123, label %2124, label %2154

2124:                                             ; preds = %2120
  %2125 = load i64, ptr %6, align 8, !tbaa !100
  %2126 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 1
  %2127 = and i32 %2121, 63
  %2128 = zext nneg i32 %2127 to i64
  %2129 = shl i64 %2125, %2128
  %2130 = sub nsw i32 0, %36
  %2131 = and i32 %2130, 63
  %2132 = zext nneg i32 %2131 to i64
  %2133 = lshr i64 %2129, %2132
  %2134 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2133
  %2135 = load i8, ptr %2134, align 2
  store i8 %2135, ptr %2122, align 1
  %2136 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2133, i32 2
  %2137 = load i8, ptr %2136, align 1, !tbaa !84
  %2138 = icmp eq i8 %2137, 1
  br i1 %2138, label %2139, label %2145

2139:                                             ; preds = %2124
  %2140 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2133, i32 1
  %2141 = load i8, ptr %2140, align 2, !tbaa !82
  %2142 = zext i8 %2141 to i32
  %2143 = load i32, ptr %2126, align 8, !tbaa !104
  %2144 = add i32 %2143, %2142
  br label %2154

2145:                                             ; preds = %2124
  %2146 = load i32, ptr %2126, align 8
  %2147 = icmp ult i32 %2146, 64
  br i1 %2147, label %2148, label %2154

2148:                                             ; preds = %2145
  %2149 = getelementptr inbounds %struct.HUF_DEltX2, ptr %13, i64 %2133, i32 1
  %2150 = load i8, ptr %2149, align 2, !tbaa !82
  %2151 = zext i8 %2150 to i32
  %2152 = add nuw nsw i32 %2146, %2151
  %2153 = tail call i32 @llvm.umin.i32(i32 %2152, i32 64)
  br label %2154

2154:                                             ; preds = %2139, %2145, %2148, %2120
  %2155 = phi i32 [ %2144, %2139 ], [ %2146, %2145 ], [ %2153, %2148 ], [ %2121, %2120 ]
  %2156 = icmp eq ptr %943, %26
  %2157 = icmp eq i32 %975, 64
  %2158 = select i1 %2156, i1 %2157, i1 false
  %2159 = icmp eq ptr %1319, %27
  %2160 = icmp eq i32 %1349, 64
  %2161 = select i1 %2159, i1 %2160, i1 false
  %2162 = and i1 %2158, %2161
  %2163 = icmp eq ptr %1692, %28
  %2164 = icmp eq i32 %1722, 64
  %2165 = select i1 %2163, i1 %2164, i1 false
  %2166 = and i1 %2162, %2165
  %2167 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 2
  %2168 = load ptr, ptr %2167, align 8, !tbaa !105
  %2169 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i64 0, i32 3
  %2170 = load ptr, ptr %2169, align 8, !tbaa !109
  %2171 = icmp eq ptr %2168, %2170
  %2172 = icmp eq i32 %2155, 64
  %2173 = select i1 %2171, i1 %2172, i1 false
  %2174 = and i1 %2166, %2173
  %2175 = select i1 %2174, i64 %1, i64 -20
  br label %2176

2176:                                             ; preds = %251, %196, %188, %176, %121, %113, %101, %46, %41, %2154, %582, %263, %10
  %2177 = phi i64 [ %267, %263 ], [ -20, %10 ], [ -20, %582 ], [ %2175, %2154 ], [ -20, %101 ], [ -1, %46 ], [ -72, %41 ], [ -20, %176 ], [ -1, %121 ], [ -72, %113 ], [ -20, %251 ], [ -1, %196 ], [ -72, %188 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %2178

2178:                                             ; preds = %5, %2176
  %2179 = phi i64 [ %2177, %2176 ], [ -20, %5 ]
  ret i64 %2179
}

declare hidden void @HUF_decompress4X2_usingDTable_internal_fast_asm_loop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #13 {
  %7 = alloca %struct.HUF_DecompressFastArgs, align 8
  %8 = getelementptr inbounds i32, ptr %4, i64 1
  %9 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #16
  %11 = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef nonnull %7, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %12 = add i64 %11, -1
  %13 = icmp ult i64 %12, -120
  br i1 %13, label %14, label %296

14:                                               ; preds = %6
  call void %5(ptr noundef nonnull %7) #16, !callees !117
  %15 = add i64 %1, 3
  %16 = lshr i64 %15, 2
  %17 = ptrtoint ptr %10 to i64
  %18 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 4
  br label %22

19:                                               ; preds = %289
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %296, label %22, !llvm.loop !118

22:                                               ; preds = %14, %19
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = phi ptr [ %0, %14 ], [ %29, %19 ]
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %17, %25
  %27 = icmp ugt i64 %16, %26
  %28 = getelementptr inbounds i8, ptr %24, i64 %16
  %29 = select i1 %27, ptr %10, ptr %28
  %30 = zext nneg i32 %23 to i64
  %31 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 1, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = icmp ugt ptr %32, %29
  br i1 %33, label %296, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  %37 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 6, i64 %30
  %38 = load ptr, ptr %37, align 8, !tbaa !119
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = icmp ult ptr %36, %39
  br i1 %40, label %296, label %41

41:                                               ; preds = %34
  %42 = load i64, ptr %36, align 1, !tbaa !27
  %43 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 2, i64 %30
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = call i64 @llvm.cttz.i64(i64 %44, i1 true), !range !116
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %18, align 8, !tbaa !113
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = ptrtoint ptr %29 to i64
  %50 = ptrtoint ptr %32 to i64
  %51 = sub i64 %49, %50
  %52 = icmp ugt i64 %51, 7
  br i1 %52, label %53, label %163

53:                                               ; preds = %41
  %54 = ptrtoint ptr %47 to i64
  %55 = getelementptr inbounds i8, ptr %29, i64 -9
  br label %56

56:                                               ; preds = %53, %91
  %57 = phi ptr [ %32, %53 ], [ %161, %91 ]
  %58 = phi i64 [ %42, %53 ], [ %87, %91 ]
  %59 = phi i32 [ %46, %53 ], [ %157, %91 ]
  %60 = phi ptr [ %36, %53 ], [ %86, %91 ]
  %61 = icmp ult ptr %60, %48
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = lshr i32 %59, 3
  %64 = and i32 %59, 7
  br label %80

65:                                               ; preds = %56
  %66 = icmp eq ptr %60, %47
  br i1 %66, label %190, label %67

67:                                               ; preds = %65
  %68 = lshr i32 %59, 3
  %69 = zext nneg i32 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %60, i64 %70
  %72 = icmp ult ptr %71, %47
  %73 = ptrtoint ptr %60 to i64
  %74 = sub i64 %73, %54
  %75 = trunc i64 %74 to i32
  %76 = select i1 %72, i32 %75, i32 %68
  %77 = zext i1 %72 to i32
  %78 = shl i32 %76, 3
  %79 = sub i32 %59, %78
  br label %80

80:                                               ; preds = %62, %67
  %81 = phi i32 [ %76, %67 ], [ %63, %62 ]
  %82 = phi i32 [ %79, %67 ], [ %64, %62 ]
  %83 = phi i32 [ %77, %67 ], [ 0, %62 ]
  %84 = zext i32 %81 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, ptr %60, i64 %85
  %87 = load i64, ptr %86, align 1, !tbaa !27
  %88 = icmp eq i32 %83, 0
  %89 = icmp ult ptr %57, %55
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %190

91:                                               ; preds = %80
  %92 = and i32 %82, 63
  %93 = zext nneg i32 %92 to i64
  %94 = shl i64 %87, %93
  %95 = lshr i64 %94, 53
  %96 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %95
  %97 = load i16, ptr %96, align 2
  store i16 %97, ptr %57, align 1
  %98 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %95, i32 1
  %99 = load i8, ptr %98, align 2, !tbaa !82
  %100 = zext i8 %99 to i32
  %101 = add i32 %82, %100
  %102 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %95, i32 2
  %103 = load i8, ptr %102, align 1, !tbaa !84
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i8, ptr %57, i64 %104
  %106 = and i32 %101, 63
  %107 = zext nneg i32 %106 to i64
  %108 = shl i64 %87, %107
  %109 = lshr i64 %108, 53
  %110 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %109
  %111 = load i16, ptr %110, align 2
  store i16 %111, ptr %105, align 1
  %112 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %109, i32 1
  %113 = load i8, ptr %112, align 2, !tbaa !82
  %114 = zext i8 %113 to i32
  %115 = add i32 %101, %114
  %116 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %109, i32 2
  %117 = load i8, ptr %116, align 1, !tbaa !84
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds i8, ptr %105, i64 %118
  %120 = and i32 %115, 63
  %121 = zext nneg i32 %120 to i64
  %122 = shl i64 %87, %121
  %123 = lshr i64 %122, 53
  %124 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %123
  %125 = load i16, ptr %124, align 2
  store i16 %125, ptr %119, align 1
  %126 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %123, i32 1
  %127 = load i8, ptr %126, align 2, !tbaa !82
  %128 = zext i8 %127 to i32
  %129 = add i32 %115, %128
  %130 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %123, i32 2
  %131 = load i8, ptr %130, align 1, !tbaa !84
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds i8, ptr %119, i64 %132
  %134 = and i32 %129, 63
  %135 = zext nneg i32 %134 to i64
  %136 = shl i64 %87, %135
  %137 = lshr i64 %136, 53
  %138 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %137
  %139 = load i16, ptr %138, align 2
  store i16 %139, ptr %133, align 1
  %140 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %137, i32 1
  %141 = load i8, ptr %140, align 2, !tbaa !82
  %142 = zext i8 %141 to i32
  %143 = add i32 %129, %142
  %144 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %137, i32 2
  %145 = load i8, ptr %144, align 1, !tbaa !84
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i8, ptr %133, i64 %146
  %148 = and i32 %143, 63
  %149 = zext nneg i32 %148 to i64
  %150 = shl i64 %87, %149
  %151 = lshr i64 %150, 53
  %152 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %151
  %153 = load i16, ptr %152, align 2
  store i16 %153, ptr %147, align 1
  %154 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %151, i32 1
  %155 = load i8, ptr %154, align 2, !tbaa !82
  %156 = zext i8 %155 to i32
  %157 = add i32 %143, %156
  %158 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %151, i32 2
  %159 = load i8, ptr %158, align 1, !tbaa !84
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i8, ptr %147, i64 %160
  %162 = icmp ugt i32 %157, 64
  br i1 %162, label %190, label %56, !prof !85, !llvm.loop !86

163:                                              ; preds = %41
  %164 = icmp ult ptr %36, %48
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = lshr i64 %45, 3
  %167 = and i32 %46, 7
  br label %184

168:                                              ; preds = %163
  %169 = icmp eq ptr %36, %47
  br i1 %169, label %190, label %170

170:                                              ; preds = %168
  %171 = lshr i32 %46, 3
  %172 = zext nneg i32 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, ptr %36, i64 %173
  %175 = icmp ult ptr %174, %47
  %176 = ptrtoint ptr %36 to i64
  %177 = ptrtoint ptr %47 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = select i1 %175, i32 %179, i32 %171
  %181 = zext i32 %180 to i64
  %182 = shl i32 %180, 3
  %183 = sub i32 %46, %182
  br label %184

184:                                              ; preds = %165, %170
  %185 = phi i64 [ %181, %170 ], [ %166, %165 ]
  %186 = phi i32 [ %183, %170 ], [ %167, %165 ]
  %187 = sub nsw i64 0, %185
  %188 = getelementptr inbounds i8, ptr %36, i64 %187
  %189 = load i64, ptr %188, align 1, !tbaa !27
  br label %190

190:                                              ; preds = %80, %91, %65, %184, %168
  %191 = phi ptr [ %36, %168 ], [ %188, %184 ], [ %86, %80 ], [ @BIT_reloadDStream.zeroFilled, %91 ], [ %47, %65 ]
  %192 = phi i32 [ %46, %168 ], [ %186, %184 ], [ %82, %80 ], [ %157, %91 ], [ %59, %65 ]
  %193 = phi i64 [ %42, %168 ], [ %189, %184 ], [ %87, %80 ], [ %87, %91 ], [ %58, %65 ]
  %194 = phi ptr [ %32, %168 ], [ %32, %184 ], [ %57, %80 ], [ %161, %91 ], [ %57, %65 ]
  %195 = ptrtoint ptr %194 to i64
  %196 = sub i64 %49, %195
  %197 = icmp ugt i64 %196, 1
  br i1 %197, label %198, label %276

198:                                              ; preds = %190
  %199 = getelementptr inbounds i8, ptr %29, i64 -2
  %200 = ptrtoint ptr %47 to i64
  %201 = icmp ugt i32 %192, 64
  br i1 %201, label %237, label %202, !prof !88

202:                                              ; preds = %198, %242
  %203 = phi ptr [ %256, %242 ], [ %194, %198 ]
  %204 = phi i64 [ %233, %242 ], [ %193, %198 ]
  %205 = phi i32 [ %252, %242 ], [ %192, %198 ]
  %206 = phi ptr [ %232, %242 ], [ %191, %198 ]
  %207 = icmp ult ptr %206, %48
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = lshr i32 %205, 3
  %210 = and i32 %205, 7
  br label %226

211:                                              ; preds = %202
  %212 = icmp eq ptr %206, %47
  br i1 %212, label %237, label %213

213:                                              ; preds = %211
  %214 = lshr i32 %205, 3
  %215 = zext nneg i32 %214 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds i8, ptr %206, i64 %216
  %218 = icmp ult ptr %217, %47
  %219 = ptrtoint ptr %206 to i64
  %220 = sub i64 %219, %200
  %221 = trunc i64 %220 to i32
  %222 = select i1 %218, i32 %221, i32 %214
  %223 = zext i1 %218 to i32
  %224 = shl i32 %222, 3
  %225 = sub i32 %205, %224
  br label %226

226:                                              ; preds = %208, %213
  %227 = phi i32 [ %209, %208 ], [ %222, %213 ]
  %228 = phi i32 [ %210, %208 ], [ %225, %213 ]
  %229 = phi i32 [ 0, %208 ], [ %223, %213 ]
  %230 = zext i32 %227 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, ptr %206, i64 %231
  %233 = load i64, ptr %232, align 1, !tbaa !27
  %234 = icmp eq i32 %229, 0
  %235 = icmp ule ptr %203, %199
  %236 = and i1 %235, %234
  br i1 %236, label %242, label %237

237:                                              ; preds = %226, %242, %211, %198
  %238 = phi ptr [ %194, %198 ], [ %203, %226 ], [ %256, %242 ], [ %203, %211 ]
  %239 = phi i64 [ %193, %198 ], [ %233, %226 ], [ %233, %242 ], [ %204, %211 ]
  %240 = phi i32 [ %192, %198 ], [ %228, %226 ], [ %252, %242 ], [ %205, %211 ]
  %241 = icmp ugt ptr %238, %199
  br i1 %241, label %276, label %258

242:                                              ; preds = %226
  %243 = and i32 %228, 63
  %244 = zext nneg i32 %243 to i64
  %245 = shl i64 %233, %244
  %246 = lshr i64 %245, 53
  %247 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %246
  %248 = load i16, ptr %247, align 2
  store i16 %248, ptr %203, align 1
  %249 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %246, i32 1
  %250 = load i8, ptr %249, align 2, !tbaa !82
  %251 = zext i8 %250 to i32
  %252 = add i32 %228, %251
  %253 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %246, i32 2
  %254 = load i8, ptr %253, align 1, !tbaa !84
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds i8, ptr %203, i64 %255
  %257 = icmp ugt i32 %252, 64
  br i1 %257, label %237, label %202, !prof !85, !llvm.loop !89

258:                                              ; preds = %237, %258
  %259 = phi ptr [ %274, %258 ], [ %238, %237 ]
  %260 = phi i32 [ %270, %258 ], [ %240, %237 ]
  %261 = and i32 %260, 63
  %262 = zext nneg i32 %261 to i64
  %263 = shl i64 %239, %262
  %264 = lshr i64 %263, 53
  %265 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %264
  %266 = load i16, ptr %265, align 2
  store i16 %266, ptr %259, align 1
  %267 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %264, i32 1
  %268 = load i8, ptr %267, align 2, !tbaa !82
  %269 = zext i8 %268 to i32
  %270 = add i32 %260, %269
  %271 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %264, i32 2
  %272 = load i8, ptr %271, align 1, !tbaa !84
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds i8, ptr %259, i64 %273
  %275 = icmp ugt ptr %274, %199
  br i1 %275, label %276, label %258, !llvm.loop !90

276:                                              ; preds = %258, %237, %190
  %277 = phi i32 [ %192, %190 ], [ %240, %237 ], [ %270, %258 ]
  %278 = phi i64 [ %193, %190 ], [ %239, %237 ], [ %239, %258 ]
  %279 = phi ptr [ %194, %190 ], [ %238, %237 ], [ %274, %258 ]
  %280 = icmp ult ptr %279, %29
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = and i32 %277, 63
  %283 = zext nneg i32 %282 to i64
  %284 = shl i64 %278, %283
  %285 = lshr i64 %284, 53
  %286 = getelementptr inbounds %struct.HUF_DEltX2, ptr %8, i64 %285
  %287 = load i8, ptr %286, align 2
  store i8 %287, ptr %279, align 1
  %288 = getelementptr inbounds i8, ptr %279, i64 1
  br label %289

289:                                              ; preds = %281, %276
  %290 = phi ptr [ %288, %281 ], [ %279, %276 ]
  %291 = ptrtoint ptr %290 to i64
  %292 = sub i64 %291, %50
  %293 = load ptr, ptr %31, align 8, !tbaa !119
  %294 = getelementptr inbounds i8, ptr %293, i64 %292
  store ptr %294, ptr %31, align 8, !tbaa !119
  %295 = icmp eq ptr %294, %29
  br i1 %295, label %19, label %296

296:                                              ; preds = %289, %19, %34, %22, %6
  %297 = phi i64 [ %11, %6 ], [ -20, %22 ], [ -20, %34 ], [ %1, %19 ], [ -20, %289 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #16
  ret i64 %297
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @HUF_DecompressFastArgs_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #14 {
  %7 = getelementptr inbounds i32, ptr %5, i64 1
  %8 = load i32, ptr %5, align 4
  %9 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %122, label %12

12:                                               ; preds = %6
  %13 = icmp ult i64 %4, 10
  br i1 %13, label %122, label %14

14:                                               ; preds = %12
  %15 = and i32 %8, 16711680
  %16 = icmp eq i32 %15, 720896
  br i1 %16, label %17, label %122

17:                                               ; preds = %14
  %18 = load i16, ptr %3, align 1, !tbaa !53
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i8, ptr %3, i64 2
  %21 = load i16, ptr %20, align 1, !tbaa !53
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds i8, ptr %3, i64 4
  %24 = load i16, ptr %23, align 1, !tbaa !53
  %25 = zext i16 %24 to i64
  %26 = add nuw nsw i64 %19, 6
  %27 = add nuw nsw i64 %26, %22
  %28 = add nuw nsw i64 %27, %25
  %29 = sub i64 %4, %28
  %30 = getelementptr inbounds i8, ptr %3, i64 6
  %31 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !119
  %32 = getelementptr inbounds i8, ptr %30, i64 %19
  %33 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 6, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !119
  %34 = getelementptr inbounds i8, ptr %32, i64 %22
  %35 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 6, i64 2
  store ptr %34, ptr %35, align 8, !tbaa !119
  %36 = getelementptr inbounds i8, ptr %34, i64 %25
  %37 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 6, i64 3
  store ptr %36, ptr %37, align 8, !tbaa !119
  %38 = icmp ult i16 %18, 8
  %39 = icmp ult i16 %21, 8
  %40 = select i1 %38, i1 true, i1 %39
  %41 = icmp ult i16 %24, 8
  %42 = select i1 %40, i1 true, i1 %41
  %43 = icmp ult i64 %29, 8
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %122, label %45

45:                                               ; preds = %17
  %46 = icmp ugt i64 %28, %4
  br i1 %46, label %122, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %32, i64 -8
  store ptr %48, ptr %0, align 8, !tbaa !119
  %49 = getelementptr inbounds i8, ptr %34, i64 -8
  %50 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  store ptr %49, ptr %50, align 8, !tbaa !119
  %51 = getelementptr inbounds i8, ptr %36, i64 -8
  %52 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  store ptr %51, ptr %52, align 8, !tbaa !119
  %53 = getelementptr inbounds i8, ptr %3, i64 %4
  %54 = getelementptr inbounds i8, ptr %53, i64 -8
  %55 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 3
  store ptr %54, ptr %55, align 8, !tbaa !119
  %56 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1
  store ptr %1, ptr %56, align 8, !tbaa !119
  %57 = add i64 %2, 3
  %58 = lshr i64 %57, 2
  %59 = getelementptr inbounds i8, ptr %1, i64 %58
  %60 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 1
  store ptr %59, ptr %60, align 8, !tbaa !119
  %61 = getelementptr inbounds i8, ptr %59, i64 %58
  %62 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 2
  store ptr %61, ptr %62, align 8, !tbaa !119
  %63 = getelementptr inbounds i8, ptr %61, i64 %58
  %64 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 3
  store ptr %63, ptr %64, align 8, !tbaa !119
  %65 = icmp ult ptr %63, %10
  br i1 %65, label %66, label %122

66:                                               ; preds = %47
  %67 = getelementptr inbounds i8, ptr %32, i64 -1
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = icmp eq i8 %68, 0
  %70 = zext i8 %68 to i32
  %71 = tail call i32 @llvm.ctlz.i32(i32 %70, i1 true), !range !81
  %72 = xor i32 %71, 31
  %73 = sub nuw nsw i32 8, %72
  %74 = zext nneg i32 %73 to i64
  %75 = select i1 %69, i64 0, i64 %74
  %76 = load i64, ptr %48, align 1, !tbaa !27
  %77 = or i64 %76, 1
  %78 = shl i64 %77, %75
  %79 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2
  store i64 %78, ptr %79, align 8, !tbaa !27
  %80 = getelementptr inbounds i8, ptr %34, i64 -1
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = icmp eq i8 %81, 0
  %83 = zext i8 %81 to i32
  %84 = tail call i32 @llvm.ctlz.i32(i32 %83, i1 true), !range !81
  %85 = xor i32 %84, 31
  %86 = sub nuw nsw i32 8, %85
  %87 = zext nneg i32 %86 to i64
  %88 = select i1 %82, i64 0, i64 %87
  %89 = load i64, ptr %49, align 1, !tbaa !27
  %90 = or i64 %89, 1
  %91 = shl i64 %90, %88
  %92 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 1
  store i64 %91, ptr %92, align 8, !tbaa !27
  %93 = getelementptr inbounds i8, ptr %36, i64 -1
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = icmp eq i8 %94, 0
  %96 = zext i8 %94 to i32
  %97 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 true), !range !81
  %98 = xor i32 %97, 31
  %99 = sub nuw nsw i32 8, %98
  %100 = zext nneg i32 %99 to i64
  %101 = select i1 %95, i64 0, i64 %100
  %102 = load i64, ptr %51, align 1, !tbaa !27
  %103 = or i64 %102, 1
  %104 = shl i64 %103, %101
  %105 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 2
  store i64 %104, ptr %105, align 8, !tbaa !27
  %106 = getelementptr inbounds i8, ptr %53, i64 -1
  %107 = load i8, ptr %106, align 1, !tbaa !9
  %108 = icmp eq i8 %107, 0
  %109 = zext i8 %107 to i32
  %110 = tail call i32 @llvm.ctlz.i32(i32 %109, i1 true), !range !81
  %111 = xor i32 %110, 31
  %112 = sub nuw nsw i32 8, %111
  %113 = zext nneg i32 %112 to i64
  %114 = select i1 %108, i64 0, i64 %113
  %115 = load i64, ptr %54, align 1, !tbaa !27
  %116 = or i64 %115, 1
  %117 = shl i64 %116, %114
  %118 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 3
  store i64 %117, ptr %118, align 8, !tbaa !27
  %119 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 4
  store ptr %3, ptr %119, align 8, !tbaa !113
  %120 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 5
  store ptr %10, ptr %120, align 8, !tbaa !114
  %121 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 3
  store ptr %7, ptr %121, align 8, !tbaa !111
  br label %122

122:                                              ; preds = %17, %47, %14, %12, %6, %45, %66
  %123 = phi i64 [ 1, %66 ], [ -20, %45 ], [ 0, %6 ], [ -20, %12 ], [ 0, %14 ], [ 0, %47 ], [ 0, %17 ]
  ret i64 %123
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @HUF_decompress4X1_usingDTable_internal_fast_c_loop(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 2, i64 3
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %0, i64 0, i32 1, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %5 to i64
  %32 = ptrtoint ptr %7 to i64
  br label %34

33:                                               ; preds = %63
  br label %34, !llvm.loop !120

34:                                               ; preds = %33, %1
  %35 = phi ptr [ %22, %1 ], [ %284, %33 ]
  %36 = phi ptr [ %20, %1 ], [ %275, %33 ]
  %37 = phi ptr [ %18, %1 ], [ %266, %33 ]
  %38 = phi ptr [ %16, %1 ], [ %257, %33 ]
  %39 = phi ptr [ %24, %1 ], [ %255, %33 ]
  %40 = phi ptr [ %26, %1 ], [ %264, %33 ]
  %41 = phi ptr [ %28, %1 ], [ %273, %33 ]
  %42 = phi ptr [ %30, %1 ], [ %282, %33 ]
  %43 = phi i64 [ %9, %1 ], [ %260, %33 ]
  %44 = phi i64 [ %11, %1 ], [ %269, %33 ]
  %45 = phi i64 [ %13, %1 ], [ %278, %33 ]
  %46 = phi i64 [ %15, %1 ], [ %287, %33 ]
  %47 = ptrtoint ptr %42 to i64
  %48 = sub i64 %31, %47
  %49 = udiv i64 %48, 5
  %50 = ptrtoint ptr %38 to i64
  %51 = sub i64 %50, %32
  %52 = udiv i64 %51, 7
  %53 = tail call i64 @llvm.umin.i64(i64 %49, i64 %52)
  %54 = mul nuw i64 %53, 5
  %55 = getelementptr inbounds i8, ptr %42, i64 %54
  %56 = icmp eq i64 %53, 0
  %57 = icmp ult ptr %37, %38
  %58 = select i1 %56, i1 true, i1 %57
  %59 = icmp ult ptr %36, %37
  %60 = select i1 %58, i1 true, i1 %59
  %61 = icmp ult ptr %35, %36
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %289, label %63

63:                                               ; preds = %34, %63
  %64 = phi ptr [ %284, %63 ], [ %35, %34 ]
  %65 = phi ptr [ %275, %63 ], [ %36, %34 ]
  %66 = phi ptr [ %266, %63 ], [ %37, %34 ]
  %67 = phi ptr [ %257, %63 ], [ %38, %34 ]
  %68 = phi ptr [ %255, %63 ], [ %39, %34 ]
  %69 = phi ptr [ %264, %63 ], [ %40, %34 ]
  %70 = phi ptr [ %273, %63 ], [ %41, %34 ]
  %71 = phi ptr [ %282, %63 ], [ %42, %34 ]
  %72 = phi i64 [ %260, %63 ], [ %43, %34 ]
  %73 = phi i64 [ %269, %63 ], [ %44, %34 ]
  %74 = phi i64 [ %278, %63 ], [ %45, %34 ]
  %75 = phi i64 [ %287, %63 ], [ %46, %34 ]
  %76 = lshr i64 %72, 53
  %77 = getelementptr inbounds i16, ptr %3, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !53
  %79 = and i16 %78, 63
  %80 = zext nneg i16 %79 to i64
  %81 = shl i64 %72, %80
  %82 = lshr i16 %78, 8
  %83 = trunc i16 %82 to i8
  store i8 %83, ptr %68, align 1, !tbaa !9
  %84 = lshr i64 %73, 53
  %85 = getelementptr inbounds i16, ptr %3, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !53
  %87 = and i16 %86, 63
  %88 = zext nneg i16 %87 to i64
  %89 = shl i64 %73, %88
  %90 = lshr i16 %86, 8
  %91 = trunc i16 %90 to i8
  store i8 %91, ptr %69, align 1, !tbaa !9
  %92 = lshr i64 %74, 53
  %93 = getelementptr inbounds i16, ptr %3, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !53
  %95 = and i16 %94, 63
  %96 = zext nneg i16 %95 to i64
  %97 = shl i64 %74, %96
  %98 = lshr i16 %94, 8
  %99 = trunc i16 %98 to i8
  store i8 %99, ptr %70, align 1, !tbaa !9
  %100 = lshr i64 %75, 53
  %101 = getelementptr inbounds i16, ptr %3, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !53
  %103 = and i16 %102, 63
  %104 = zext nneg i16 %103 to i64
  %105 = shl i64 %75, %104
  %106 = lshr i16 %102, 8
  %107 = trunc i16 %106 to i8
  store i8 %107, ptr %71, align 1, !tbaa !9
  %108 = lshr i64 %81, 53
  %109 = getelementptr inbounds i16, ptr %3, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !53
  %111 = and i16 %110, 63
  %112 = zext nneg i16 %111 to i64
  %113 = shl i64 %81, %112
  %114 = lshr i16 %110, 8
  %115 = trunc i16 %114 to i8
  %116 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 %115, ptr %116, align 1, !tbaa !9
  %117 = lshr i64 %89, 53
  %118 = getelementptr inbounds i16, ptr %3, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !53
  %120 = and i16 %119, 63
  %121 = zext nneg i16 %120 to i64
  %122 = shl i64 %89, %121
  %123 = lshr i16 %119, 8
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %124, ptr %125, align 1, !tbaa !9
  %126 = lshr i64 %97, 53
  %127 = getelementptr inbounds i16, ptr %3, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !53
  %129 = and i16 %128, 63
  %130 = zext nneg i16 %129 to i64
  %131 = shl i64 %97, %130
  %132 = lshr i16 %128, 8
  %133 = trunc i16 %132 to i8
  %134 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %133, ptr %134, align 1, !tbaa !9
  %135 = lshr i64 %105, 53
  %136 = getelementptr inbounds i16, ptr %3, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !53
  %138 = and i16 %137, 63
  %139 = zext nneg i16 %138 to i64
  %140 = shl i64 %105, %139
  %141 = lshr i16 %137, 8
  %142 = trunc i16 %141 to i8
  %143 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %142, ptr %143, align 1, !tbaa !9
  %144 = lshr i64 %113, 53
  %145 = getelementptr inbounds i16, ptr %3, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !53
  %147 = and i16 %146, 63
  %148 = zext nneg i16 %147 to i64
  %149 = shl i64 %113, %148
  %150 = lshr i16 %146, 8
  %151 = trunc i16 %150 to i8
  %152 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 %151, ptr %152, align 1, !tbaa !9
  %153 = lshr i64 %122, 53
  %154 = getelementptr inbounds i16, ptr %3, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !53
  %156 = and i16 %155, 63
  %157 = zext nneg i16 %156 to i64
  %158 = shl i64 %122, %157
  %159 = lshr i16 %155, 8
  %160 = trunc i16 %159 to i8
  %161 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %160, ptr %161, align 1, !tbaa !9
  %162 = lshr i64 %131, 53
  %163 = getelementptr inbounds i16, ptr %3, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !53
  %165 = and i16 %164, 63
  %166 = zext nneg i16 %165 to i64
  %167 = shl i64 %131, %166
  %168 = lshr i16 %164, 8
  %169 = trunc i16 %168 to i8
  %170 = getelementptr inbounds i8, ptr %70, i64 2
  store i8 %169, ptr %170, align 1, !tbaa !9
  %171 = lshr i64 %140, 53
  %172 = getelementptr inbounds i16, ptr %3, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !53
  %174 = and i16 %173, 63
  %175 = zext nneg i16 %174 to i64
  %176 = shl i64 %140, %175
  %177 = lshr i16 %173, 8
  %178 = trunc i16 %177 to i8
  %179 = getelementptr inbounds i8, ptr %71, i64 2
  store i8 %178, ptr %179, align 1, !tbaa !9
  %180 = lshr i64 %149, 53
  %181 = getelementptr inbounds i16, ptr %3, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !53
  %183 = and i16 %182, 63
  %184 = zext nneg i16 %183 to i64
  %185 = shl i64 %149, %184
  %186 = lshr i16 %182, 8
  %187 = trunc i16 %186 to i8
  %188 = getelementptr inbounds i8, ptr %68, i64 3
  store i8 %187, ptr %188, align 1, !tbaa !9
  %189 = lshr i64 %158, 53
  %190 = getelementptr inbounds i16, ptr %3, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !53
  %192 = and i16 %191, 63
  %193 = zext nneg i16 %192 to i64
  %194 = shl i64 %158, %193
  %195 = lshr i16 %191, 8
  %196 = trunc i16 %195 to i8
  %197 = getelementptr inbounds i8, ptr %69, i64 3
  store i8 %196, ptr %197, align 1, !tbaa !9
  %198 = lshr i64 %167, 53
  %199 = getelementptr inbounds i16, ptr %3, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !53
  %201 = and i16 %200, 63
  %202 = zext nneg i16 %201 to i64
  %203 = shl i64 %167, %202
  %204 = lshr i16 %200, 8
  %205 = trunc i16 %204 to i8
  %206 = getelementptr inbounds i8, ptr %70, i64 3
  store i8 %205, ptr %206, align 1, !tbaa !9
  %207 = lshr i64 %176, 53
  %208 = getelementptr inbounds i16, ptr %3, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !53
  %210 = and i16 %209, 63
  %211 = zext nneg i16 %210 to i64
  %212 = shl i64 %176, %211
  %213 = lshr i16 %209, 8
  %214 = trunc i16 %213 to i8
  %215 = getelementptr inbounds i8, ptr %71, i64 3
  store i8 %214, ptr %215, align 1, !tbaa !9
  %216 = lshr i64 %185, 53
  %217 = getelementptr inbounds i16, ptr %3, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !53
  %219 = and i16 %218, 63
  %220 = zext nneg i16 %219 to i64
  %221 = shl i64 %185, %220
  %222 = lshr i16 %218, 8
  %223 = trunc i16 %222 to i8
  %224 = getelementptr inbounds i8, ptr %68, i64 4
  store i8 %223, ptr %224, align 1, !tbaa !9
  %225 = lshr i64 %194, 53
  %226 = getelementptr inbounds i16, ptr %3, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !53
  %228 = and i16 %227, 63
  %229 = zext nneg i16 %228 to i64
  %230 = shl i64 %194, %229
  %231 = lshr i16 %227, 8
  %232 = trunc i16 %231 to i8
  %233 = getelementptr inbounds i8, ptr %69, i64 4
  store i8 %232, ptr %233, align 1, !tbaa !9
  %234 = lshr i64 %203, 53
  %235 = getelementptr inbounds i16, ptr %3, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !53
  %237 = and i16 %236, 63
  %238 = zext nneg i16 %237 to i64
  %239 = shl i64 %203, %238
  %240 = lshr i16 %236, 8
  %241 = trunc i16 %240 to i8
  %242 = getelementptr inbounds i8, ptr %70, i64 4
  store i8 %241, ptr %242, align 1, !tbaa !9
  %243 = lshr i64 %212, 53
  %244 = getelementptr inbounds i16, ptr %3, i64 %243
  %245 = load i16, ptr %244, align 2, !tbaa !53
  %246 = and i16 %245, 63
  %247 = zext nneg i16 %246 to i64
  %248 = shl i64 %212, %247
  %249 = lshr i16 %245, 8
  %250 = trunc i16 %249 to i8
  %251 = getelementptr inbounds i8, ptr %71, i64 4
  store i8 %250, ptr %251, align 1, !tbaa !9
  %252 = tail call i64 @llvm.cttz.i64(i64 %221, i1 true), !range !116
  %253 = and i64 %252, 7
  %254 = lshr i64 %252, 3
  %255 = getelementptr inbounds i8, ptr %68, i64 5
  %256 = sub nsw i64 0, %254
  %257 = getelementptr inbounds i8, ptr %67, i64 %256
  %258 = load i64, ptr %257, align 1, !tbaa !27
  %259 = or i64 %258, 1
  %260 = shl i64 %259, %253
  %261 = tail call i64 @llvm.cttz.i64(i64 %230, i1 true), !range !116
  %262 = and i64 %261, 7
  %263 = lshr i64 %261, 3
  %264 = getelementptr inbounds i8, ptr %69, i64 5
  %265 = sub nsw i64 0, %263
  %266 = getelementptr inbounds i8, ptr %66, i64 %265
  %267 = load i64, ptr %266, align 1, !tbaa !27
  %268 = or i64 %267, 1
  %269 = shl i64 %268, %262
  %270 = tail call i64 @llvm.cttz.i64(i64 %239, i1 true), !range !116
  %271 = and i64 %270, 7
  %272 = lshr i64 %270, 3
  %273 = getelementptr inbounds i8, ptr %70, i64 5
  %274 = sub nsw i64 0, %272
  %275 = getelementptr inbounds i8, ptr %65, i64 %274
  %276 = load i64, ptr %275, align 1, !tbaa !27
  %277 = or i64 %276, 1
  %278 = shl i64 %277, %271
  %279 = tail call i64 @llvm.cttz.i64(i64 %248, i1 true), !range !116
  %280 = and i64 %279, 7
  %281 = lshr i64 %279, 3
  %282 = getelementptr inbounds i8, ptr %71, i64 5
  %283 = sub nsw i64 0, %281
  %284 = getelementptr inbounds i8, ptr %64, i64 %283
  %285 = load i64, ptr %284, align 1, !tbaa !27
  %286 = or i64 %285, 1
  %287 = shl i64 %286, %280
  %288 = icmp ult ptr %282, %55
  br i1 %288, label %63, label %33, !llvm.loop !120

289:                                              ; preds = %34
  store i64 %43, ptr %8, align 8
  store i64 %44, ptr %10, align 8
  store i64 %45, ptr %12, align 8
  store i64 %46, ptr %14, align 8
  store ptr %38, ptr %0, align 8
  store ptr %37, ptr %17, align 8
  store ptr %36, ptr %19, align 8
  store ptr %35, ptr %21, align 8
  store ptr %39, ptr %23, align 8
  store ptr %40, ptr %25, align 8
  store ptr %41, ptr %27, align 8
  store ptr %42, ptr %29, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly %4) unnamed_addr #10 {
  %6 = ptrtoint ptr %0 to i64
  %7 = alloca %struct.BIT_DStream_t, align 8
  %8 = icmp ult i64 %3, 10
  %9 = icmp ult i64 %1, 6
  %10 = or i1 %9, %8
  br i1 %10, label %1266, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -3
  %14 = getelementptr inbounds i32, ptr %4, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  %15 = load i16, ptr %2, align 1, !tbaa !53
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds i8, ptr %2, i64 2
  %18 = load i16, ptr %17, align 1, !tbaa !53
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i8, ptr %2, i64 4
  %21 = load i16, ptr %20, align 1, !tbaa !53
  %22 = zext i16 %21 to i64
  %23 = add nuw nsw i64 %16, 6
  %24 = add nuw nsw i64 %23, %19
  %25 = add nuw nsw i64 %24, %22
  %26 = sub i64 %3, %25
  %27 = getelementptr inbounds i8, ptr %2, i64 6
  %28 = getelementptr i8, ptr %27, i64 %16
  %29 = getelementptr i8, ptr %28, i64 %19
  %30 = getelementptr i8, ptr %29, i64 %22
  %31 = add i64 %1, 3
  %32 = lshr i64 %31, 2
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  %35 = getelementptr inbounds i8, ptr %34, i64 %32
  %36 = load i32, ptr %4, align 4
  %37 = lshr i32 %36, 16
  %38 = icmp ugt i64 %25, %3
  %39 = icmp ugt ptr %35, %12
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %1264, label %41

41:                                               ; preds = %11
  %42 = icmp eq i16 %15, 0
  br i1 %42, label %1264, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %2, i64 14
  %45 = icmp ugt i16 %15, 7
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %28, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %1264, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %28, i64 -8
  %52 = load i64, ptr %51, align 1, !tbaa !27
  %53 = zext i8 %48 to i32
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true), !range !81
  %55 = xor i32 %54, 31
  %56 = sub nuw nsw i32 8, %55
  br label %113

57:                                               ; preds = %43
  %58 = load i8, ptr %27, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  switch i16 %15, label %101 [
    i16 7, label %60
    i16 6, label %66
    i16 5, label %73
    i16 4, label %80
    i16 3, label %87
    i16 2, label %94
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %2, i64 12
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 48
  %65 = or disjoint i64 %64, %59
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i64 [ %59, %57 ], [ %65, %60 ]
  %68 = getelementptr inbounds i8, ptr %2, i64 11
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 40
  %72 = add nuw nsw i64 %71, %67
  br label %73

73:                                               ; preds = %66, %57
  %74 = phi i64 [ %59, %57 ], [ %72, %66 ]
  %75 = getelementptr inbounds i8, ptr %2, i64 10
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 32
  %79 = add nuw nsw i64 %78, %74
  br label %80

80:                                               ; preds = %73, %57
  %81 = phi i64 [ %59, %57 ], [ %79, %73 ]
  %82 = getelementptr inbounds i8, ptr %2, i64 9
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 24
  %86 = add nuw nsw i64 %85, %81
  br label %87

87:                                               ; preds = %80, %57
  %88 = phi i64 [ %59, %57 ], [ %86, %80 ]
  %89 = getelementptr inbounds i8, ptr %2, i64 8
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 16
  %93 = add nuw nsw i64 %92, %88
  br label %94

94:                                               ; preds = %87, %57
  %95 = phi i64 [ %59, %57 ], [ %93, %87 ]
  %96 = getelementptr inbounds i8, ptr %2, i64 7
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = add nuw nsw i64 %99, %95
  br label %101

101:                                              ; preds = %94, %57
  %102 = phi i64 [ %59, %57 ], [ %100, %94 ]
  %103 = getelementptr i8, ptr %28, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %1264, label %106

106:                                              ; preds = %101
  %107 = zext i8 %104 to i32
  %108 = tail call i32 @llvm.ctlz.i32(i32 %107, i1 true), !range !81
  %109 = shl nuw nsw i16 %15, 3
  %110 = zext nneg i16 %109 to i32
  %111 = sub nsw i32 %108, %110
  %112 = add nsw i32 %111, 41
  br label %113

113:                                              ; preds = %106, %50
  %114 = phi ptr [ %51, %50 ], [ %27, %106 ]
  %115 = phi i32 [ %56, %50 ], [ %112, %106 ]
  %116 = phi i64 [ %52, %50 ], [ %102, %106 ]
  %117 = icmp eq i16 %18, 0
  br i1 %117, label %1264, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, ptr %28, i64 8
  %120 = icmp ugt i16 %18, 7
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %29, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %1264, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %29, i64 -8
  %127 = load i64, ptr %126, align 1, !tbaa !27
  %128 = zext i8 %123 to i32
  %129 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 true), !range !81
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  br label %188

132:                                              ; preds = %118
  %133 = load i8, ptr %28, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  switch i16 %18, label %176 [
    i16 7, label %135
    i16 6, label %141
    i16 5, label %148
    i16 4, label %155
    i16 3, label %162
    i16 2, label %169
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %28, i64 6
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 48
  %140 = or disjoint i64 %139, %134
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i64 [ %134, %132 ], [ %140, %135 ]
  %143 = getelementptr inbounds i8, ptr %28, i64 5
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 40
  %147 = add nuw nsw i64 %146, %142
  br label %148

148:                                              ; preds = %141, %132
  %149 = phi i64 [ %134, %132 ], [ %147, %141 ]
  %150 = getelementptr inbounds i8, ptr %28, i64 4
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 32
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %134, %132 ], [ %154, %148 ]
  %157 = getelementptr inbounds i8, ptr %28, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 24
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %132
  %163 = phi i64 [ %134, %132 ], [ %161, %155 ]
  %164 = getelementptr inbounds i8, ptr %28, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 16
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %132
  %170 = phi i64 [ %134, %132 ], [ %168, %162 ]
  %171 = getelementptr inbounds i8, ptr %28, i64 1
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 8
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %132
  %177 = phi i64 [ %134, %132 ], [ %175, %169 ]
  %178 = getelementptr i8, ptr %29, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %1264, label %181

181:                                              ; preds = %176
  %182 = zext i8 %179 to i32
  %183 = tail call i32 @llvm.ctlz.i32(i32 %182, i1 true), !range !81
  %184 = shl nuw nsw i16 %18, 3
  %185 = zext nneg i16 %184 to i32
  %186 = sub nsw i32 %183, %185
  %187 = add nsw i32 %186, 41
  br label %188

188:                                              ; preds = %181, %125
  %189 = phi i64 [ %127, %125 ], [ %177, %181 ]
  %190 = phi i32 [ %131, %125 ], [ %187, %181 ]
  %191 = phi ptr [ %126, %125 ], [ %28, %181 ]
  %192 = icmp eq i16 %21, 0
  br i1 %192, label %1264, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds i8, ptr %29, i64 8
  %195 = icmp ugt i16 %21, 7
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = getelementptr i8, ptr %30, i64 -1
  %198 = load i8, ptr %197, align 1, !tbaa !9
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %1264, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %30, i64 -8
  %202 = load i64, ptr %201, align 1, !tbaa !27
  %203 = zext i8 %198 to i32
  %204 = tail call i32 @llvm.ctlz.i32(i32 %203, i1 true), !range !81
  %205 = xor i32 %204, 31
  %206 = sub nuw nsw i32 8, %205
  br label %263

207:                                              ; preds = %193
  %208 = load i8, ptr %29, align 1, !tbaa !9
  %209 = zext i8 %208 to i64
  switch i16 %21, label %251 [
    i16 7, label %210
    i16 6, label %216
    i16 5, label %223
    i16 4, label %230
    i16 3, label %237
    i16 2, label %244
  ]

210:                                              ; preds = %207
  %211 = getelementptr inbounds i8, ptr %29, i64 6
  %212 = load i8, ptr %211, align 1, !tbaa !9
  %213 = zext i8 %212 to i64
  %214 = shl nuw nsw i64 %213, 48
  %215 = or disjoint i64 %214, %209
  br label %216

216:                                              ; preds = %210, %207
  %217 = phi i64 [ %209, %207 ], [ %215, %210 ]
  %218 = getelementptr inbounds i8, ptr %29, i64 5
  %219 = load i8, ptr %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 40
  %222 = add nuw nsw i64 %221, %217
  br label %223

223:                                              ; preds = %216, %207
  %224 = phi i64 [ %209, %207 ], [ %222, %216 ]
  %225 = getelementptr inbounds i8, ptr %29, i64 4
  %226 = load i8, ptr %225, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 32
  %229 = add nuw nsw i64 %228, %224
  br label %230

230:                                              ; preds = %223, %207
  %231 = phi i64 [ %209, %207 ], [ %229, %223 ]
  %232 = getelementptr inbounds i8, ptr %29, i64 3
  %233 = load i8, ptr %232, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 24
  %236 = add nuw nsw i64 %235, %231
  br label %237

237:                                              ; preds = %230, %207
  %238 = phi i64 [ %209, %207 ], [ %236, %230 ]
  %239 = getelementptr inbounds i8, ptr %29, i64 2
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = shl nuw nsw i64 %241, 16
  %243 = add nuw nsw i64 %242, %238
  br label %244

244:                                              ; preds = %237, %207
  %245 = phi i64 [ %209, %207 ], [ %243, %237 ]
  %246 = getelementptr inbounds i8, ptr %29, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 8
  %250 = add nuw nsw i64 %249, %245
  br label %251

251:                                              ; preds = %244, %207
  %252 = phi i64 [ %209, %207 ], [ %250, %244 ]
  %253 = getelementptr i8, ptr %30, i64 -1
  %254 = load i8, ptr %253, align 1, !tbaa !9
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %1264, label %256

256:                                              ; preds = %251
  %257 = zext i8 %254 to i32
  %258 = tail call i32 @llvm.ctlz.i32(i32 %257, i1 true), !range !81
  %259 = shl nuw nsw i16 %21, 3
  %260 = zext nneg i16 %259 to i32
  %261 = sub nsw i32 %258, %260
  %262 = add nsw i32 %261, 41
  br label %263

263:                                              ; preds = %256, %200
  %264 = phi i64 [ %202, %200 ], [ %252, %256 ]
  %265 = phi i32 [ %206, %200 ], [ %262, %256 ]
  %266 = phi ptr [ %201, %200 ], [ %29, %256 ]
  %267 = call fastcc i64 @BIT_initDStream(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef %26), !range !99
  %268 = icmp ult i64 %267, -119
  br i1 %268, label %269, label %1264

269:                                              ; preds = %263
  %270 = ptrtoint ptr %12 to i64
  %271 = ptrtoint ptr %35 to i64
  %272 = sub i64 %270, %271
  %273 = icmp ugt i64 %272, 7
  %274 = icmp ult ptr %35, %13
  %275 = select i1 %273, i1 %274, i1 false
  br i1 %275, label %276, label %534

276:                                              ; preds = %269
  %277 = load i64, ptr %7, align 8, !tbaa !100
  %278 = sub nsw i32 0, %37
  %279 = and i32 %278, 63
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %282 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %283 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %284 = load ptr, ptr %283, align 8, !tbaa !103
  %285 = load i32, ptr %281, align 8, !tbaa !104
  %286 = load ptr, ptr %282, align 8, !tbaa !105
  br label %287

287:                                              ; preds = %276, %524
  %288 = phi ptr [ %286, %276 ], [ %525, %524 ]
  %289 = phi i32 [ %285, %276 ], [ %526, %524 ]
  %290 = phi ptr [ %0, %276 ], [ %446, %524 ]
  %291 = phi ptr [ %33, %276 ], [ %457, %524 ]
  %292 = phi ptr [ %34, %276 ], [ %468, %524 ]
  %293 = phi ptr [ %35, %276 ], [ %479, %524 ]
  %294 = phi ptr [ %266, %276 ], [ %515, %524 ]
  %295 = phi i64 [ %116, %276 ], [ %491, %524 ]
  %296 = phi i32 [ %265, %276 ], [ %514, %524 ]
  %297 = phi i64 [ %264, %276 ], [ %513, %524 ]
  %298 = phi ptr [ %191, %276 ], [ %503, %524 ]
  %299 = phi i32 [ %115, %276 ], [ %490, %524 ]
  %300 = phi i32 [ %190, %276 ], [ %502, %524 ]
  %301 = phi i64 [ %189, %276 ], [ %501, %524 ]
  %302 = phi ptr [ %114, %276 ], [ %489, %524 ]
  %303 = phi i64 [ %277, %276 ], [ %527, %524 ]
  %304 = and i32 %299, 63
  %305 = zext nneg i32 %304 to i64
  %306 = shl i64 %295, %305
  %307 = lshr i64 %306, %280
  %308 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %307
  %309 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %307, i32 1
  %310 = load i8, ptr %309, align 1, !tbaa !94
  %311 = load i8, ptr %308, align 1, !tbaa !96
  %312 = zext i8 %311 to i32
  %313 = add i32 %299, %312
  %314 = getelementptr inbounds i8, ptr %290, i64 1
  store i8 %310, ptr %290, align 1, !tbaa !9
  %315 = and i32 %300, 63
  %316 = zext nneg i32 %315 to i64
  %317 = shl i64 %301, %316
  %318 = lshr i64 %317, %280
  %319 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %318
  %320 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %318, i32 1
  %321 = load i8, ptr %320, align 1, !tbaa !94
  %322 = load i8, ptr %319, align 1, !tbaa !96
  %323 = zext i8 %322 to i32
  %324 = add i32 %300, %323
  %325 = getelementptr inbounds i8, ptr %291, i64 1
  store i8 %321, ptr %291, align 1, !tbaa !9
  %326 = and i32 %296, 63
  %327 = zext nneg i32 %326 to i64
  %328 = shl i64 %297, %327
  %329 = lshr i64 %328, %280
  %330 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %329
  %331 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %329, i32 1
  %332 = load i8, ptr %331, align 1, !tbaa !94
  %333 = load i8, ptr %330, align 1, !tbaa !96
  %334 = zext i8 %333 to i32
  %335 = add i32 %296, %334
  %336 = getelementptr inbounds i8, ptr %292, i64 1
  store i8 %332, ptr %292, align 1, !tbaa !9
  %337 = and i32 %289, 63
  %338 = zext nneg i32 %337 to i64
  %339 = shl i64 %303, %338
  %340 = lshr i64 %339, %280
  %341 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %340
  %342 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %340, i32 1
  %343 = load i8, ptr %342, align 1, !tbaa !94
  %344 = load i8, ptr %341, align 1, !tbaa !96
  %345 = zext i8 %344 to i32
  %346 = add i32 %289, %345
  store i8 %343, ptr %293, align 1, !tbaa !9
  %347 = getelementptr inbounds i8, ptr %293, i64 1
  %348 = and i32 %313, 63
  %349 = zext nneg i32 %348 to i64
  %350 = shl i64 %295, %349
  %351 = lshr i64 %350, %280
  %352 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %351
  %353 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %351, i32 1
  %354 = load i8, ptr %353, align 1, !tbaa !94
  %355 = load i8, ptr %352, align 1, !tbaa !96
  %356 = zext i8 %355 to i32
  %357 = add i32 %313, %356
  store i8 %354, ptr %314, align 1, !tbaa !9
  %358 = and i32 %324, 63
  %359 = zext nneg i32 %358 to i64
  %360 = shl i64 %301, %359
  %361 = lshr i64 %360, %280
  %362 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %361
  %363 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %361, i32 1
  %364 = load i8, ptr %363, align 1, !tbaa !94
  %365 = load i8, ptr %362, align 1, !tbaa !96
  %366 = zext i8 %365 to i32
  %367 = add i32 %324, %366
  %368 = getelementptr inbounds i8, ptr %291, i64 2
  store i8 %364, ptr %325, align 1, !tbaa !9
  %369 = and i32 %335, 63
  %370 = zext nneg i32 %369 to i64
  %371 = shl i64 %297, %370
  %372 = lshr i64 %371, %280
  %373 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %372
  %374 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %372, i32 1
  %375 = load i8, ptr %374, align 1, !tbaa !94
  %376 = load i8, ptr %373, align 1, !tbaa !96
  %377 = zext i8 %376 to i32
  %378 = add i32 %335, %377
  %379 = getelementptr inbounds i8, ptr %292, i64 2
  store i8 %375, ptr %336, align 1, !tbaa !9
  %380 = and i32 %346, 63
  %381 = zext nneg i32 %380 to i64
  %382 = shl i64 %303, %381
  %383 = lshr i64 %382, %280
  %384 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %383
  %385 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %383, i32 1
  %386 = load i8, ptr %385, align 1, !tbaa !94
  %387 = load i8, ptr %384, align 1, !tbaa !96
  %388 = zext i8 %387 to i32
  %389 = add i32 %346, %388
  %390 = getelementptr inbounds i8, ptr %293, i64 2
  store i8 %386, ptr %347, align 1, !tbaa !9
  %391 = getelementptr inbounds i8, ptr %290, i64 2
  %392 = and i32 %357, 63
  %393 = zext nneg i32 %392 to i64
  %394 = shl i64 %295, %393
  %395 = lshr i64 %394, %280
  %396 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %395
  %397 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %395, i32 1
  %398 = load i8, ptr %397, align 1, !tbaa !94
  %399 = load i8, ptr %396, align 1, !tbaa !96
  %400 = zext i8 %399 to i32
  %401 = add i32 %357, %400
  %402 = getelementptr inbounds i8, ptr %290, i64 3
  store i8 %398, ptr %391, align 1, !tbaa !9
  %403 = and i32 %367, 63
  %404 = zext nneg i32 %403 to i64
  %405 = shl i64 %301, %404
  %406 = lshr i64 %405, %280
  %407 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %406
  %408 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %406, i32 1
  %409 = load i8, ptr %408, align 1, !tbaa !94
  %410 = load i8, ptr %407, align 1, !tbaa !96
  %411 = zext i8 %410 to i32
  %412 = add i32 %367, %411
  %413 = getelementptr inbounds i8, ptr %291, i64 3
  store i8 %409, ptr %368, align 1, !tbaa !9
  %414 = and i32 %378, 63
  %415 = zext nneg i32 %414 to i64
  %416 = shl i64 %297, %415
  %417 = lshr i64 %416, %280
  %418 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %417
  %419 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %417, i32 1
  %420 = load i8, ptr %419, align 1, !tbaa !94
  %421 = load i8, ptr %418, align 1, !tbaa !96
  %422 = zext i8 %421 to i32
  %423 = add i32 %378, %422
  %424 = getelementptr inbounds i8, ptr %292, i64 3
  store i8 %420, ptr %379, align 1, !tbaa !9
  %425 = and i32 %389, 63
  %426 = zext nneg i32 %425 to i64
  %427 = shl i64 %303, %426
  %428 = lshr i64 %427, %280
  %429 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %428
  %430 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %428, i32 1
  %431 = load i8, ptr %430, align 1, !tbaa !94
  %432 = load i8, ptr %429, align 1, !tbaa !96
  %433 = zext i8 %432 to i32
  %434 = add i32 %389, %433
  store i8 %431, ptr %390, align 1, !tbaa !9
  %435 = getelementptr inbounds i8, ptr %293, i64 3
  %436 = and i32 %401, 63
  %437 = zext nneg i32 %436 to i64
  %438 = shl i64 %295, %437
  %439 = lshr i64 %438, %280
  %440 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %439
  %441 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %439, i32 1
  %442 = load i8, ptr %441, align 1, !tbaa !94
  %443 = load i8, ptr %440, align 1, !tbaa !96
  %444 = zext i8 %443 to i32
  %445 = add i32 %401, %444
  %446 = getelementptr inbounds i8, ptr %290, i64 4
  store i8 %442, ptr %402, align 1, !tbaa !9
  %447 = and i32 %412, 63
  %448 = zext nneg i32 %447 to i64
  %449 = shl i64 %301, %448
  %450 = lshr i64 %449, %280
  %451 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %450
  %452 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %450, i32 1
  %453 = load i8, ptr %452, align 1, !tbaa !94
  %454 = load i8, ptr %451, align 1, !tbaa !96
  %455 = zext i8 %454 to i32
  %456 = add i32 %412, %455
  %457 = getelementptr inbounds i8, ptr %291, i64 4
  store i8 %453, ptr %413, align 1, !tbaa !9
  %458 = and i32 %423, 63
  %459 = zext nneg i32 %458 to i64
  %460 = shl i64 %297, %459
  %461 = lshr i64 %460, %280
  %462 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %461
  %463 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %461, i32 1
  %464 = load i8, ptr %463, align 1, !tbaa !94
  %465 = load i8, ptr %462, align 1, !tbaa !96
  %466 = zext i8 %465 to i32
  %467 = add i32 %423, %466
  %468 = getelementptr inbounds i8, ptr %292, i64 4
  store i8 %464, ptr %424, align 1, !tbaa !9
  %469 = and i32 %434, 63
  %470 = zext nneg i32 %469 to i64
  %471 = shl i64 %303, %470
  %472 = lshr i64 %471, %280
  %473 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %472
  %474 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %472, i32 1
  %475 = load i8, ptr %474, align 1, !tbaa !94
  %476 = load i8, ptr %473, align 1, !tbaa !96
  %477 = zext i8 %476 to i32
  %478 = add i32 %434, %477
  %479 = getelementptr inbounds i8, ptr %293, i64 4
  store i8 %475, ptr %435, align 1, !tbaa !9
  %480 = icmp uge ptr %302, %44
  br i1 %480, label %481, label %488, !prof !106

481:                                              ; preds = %287
  %482 = lshr i32 %445, 3
  %483 = zext nneg i32 %482 to i64
  %484 = sub nsw i64 0, %483
  %485 = getelementptr inbounds i8, ptr %302, i64 %484
  %486 = and i32 %445, 7
  %487 = load i64, ptr %485, align 1, !tbaa !27
  br label %488

488:                                              ; preds = %287, %481
  %489 = phi ptr [ %302, %287 ], [ %485, %481 ]
  %490 = phi i32 [ %445, %287 ], [ %486, %481 ]
  %491 = phi i64 [ %295, %287 ], [ %487, %481 ]
  %492 = icmp uge ptr %298, %119
  br i1 %492, label %493, label %500, !prof !106

493:                                              ; preds = %488
  %494 = lshr i32 %456, 3
  %495 = zext nneg i32 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %298, i64 %496
  %498 = and i32 %456, 7
  %499 = load i64, ptr %497, align 1, !tbaa !27
  br label %500

500:                                              ; preds = %488, %493
  %501 = phi i64 [ %301, %488 ], [ %499, %493 ]
  %502 = phi i32 [ %456, %488 ], [ %498, %493 ]
  %503 = phi ptr [ %298, %488 ], [ %497, %493 ]
  %504 = icmp uge ptr %294, %194
  br i1 %504, label %505, label %512, !prof !106

505:                                              ; preds = %500
  %506 = lshr i32 %467, 3
  %507 = zext nneg i32 %506 to i64
  %508 = sub nsw i64 0, %507
  %509 = getelementptr inbounds i8, ptr %294, i64 %508
  %510 = and i32 %467, 7
  %511 = load i64, ptr %509, align 1, !tbaa !27
  br label %512

512:                                              ; preds = %500, %505
  %513 = phi i64 [ %297, %500 ], [ %511, %505 ]
  %514 = phi i32 [ %467, %500 ], [ %510, %505 ]
  %515 = phi ptr [ %294, %500 ], [ %509, %505 ]
  %516 = icmp uge ptr %288, %284
  br i1 %516, label %517, label %524, !prof !106

517:                                              ; preds = %512
  %518 = lshr i32 %478, 3
  %519 = zext nneg i32 %518 to i64
  %520 = sub nsw i64 0, %519
  %521 = getelementptr inbounds i8, ptr %288, i64 %520
  %522 = and i32 %478, 7
  %523 = load i64, ptr %521, align 1, !tbaa !27
  store i64 %523, ptr %7, align 8, !tbaa !100
  br label %524

524:                                              ; preds = %512, %517
  %525 = phi ptr [ %288, %512 ], [ %521, %517 ]
  %526 = phi i32 [ %478, %512 ], [ %522, %517 ]
  %527 = phi i64 [ %303, %512 ], [ %523, %517 ]
  %528 = icmp ult ptr %479, %13
  %529 = and i1 %516, %528
  %530 = and i1 %529, %504
  %531 = and i1 %530, %492
  %532 = and i1 %531, %480
  br i1 %532, label %287, label %533, !llvm.loop !110

533:                                              ; preds = %524
  store i32 %526, ptr %281, align 8, !tbaa !104
  store ptr %525, ptr %282, align 8, !tbaa !105
  br label %534

534:                                              ; preds = %533, %269
  %535 = phi ptr [ %114, %269 ], [ %489, %533 ]
  %536 = phi i64 [ %189, %269 ], [ %501, %533 ]
  %537 = phi i32 [ %190, %269 ], [ %502, %533 ]
  %538 = phi i32 [ %115, %269 ], [ %490, %533 ]
  %539 = phi ptr [ %191, %269 ], [ %503, %533 ]
  %540 = phi i64 [ %264, %269 ], [ %513, %533 ]
  %541 = phi i32 [ %265, %269 ], [ %514, %533 ]
  %542 = phi i64 [ %116, %269 ], [ %491, %533 ]
  %543 = phi ptr [ %266, %269 ], [ %515, %533 ]
  %544 = phi ptr [ %35, %269 ], [ %479, %533 ]
  %545 = phi ptr [ %34, %269 ], [ %468, %533 ]
  %546 = phi ptr [ %33, %269 ], [ %457, %533 ]
  %547 = phi ptr [ %0, %269 ], [ %446, %533 ]
  %548 = icmp ugt ptr %547, %33
  %549 = icmp ugt ptr %546, %34
  %550 = select i1 %548, i1 true, i1 %549
  %551 = icmp ugt ptr %545, %35
  %552 = select i1 %550, i1 true, i1 %551
  br i1 %552, label %1264, label %553

553:                                              ; preds = %534
  %554 = ptrtoint ptr %33 to i64
  %555 = ptrtoint ptr %547 to i64
  %556 = sub i64 %554, %555
  %557 = icmp sgt i64 %556, 3
  %558 = icmp ugt i32 %538, 64
  br i1 %557, label %559, label %647

559:                                              ; preds = %553
  br i1 %558, label %675, label %560, !prof !88

560:                                              ; preds = %559
  %561 = ptrtoint ptr %27 to i64
  %562 = getelementptr inbounds i8, ptr %33, i64 -3
  %563 = sub nsw i32 0, %37
  %564 = and i32 %563, 63
  %565 = zext nneg i32 %564 to i64
  br label %566

566:                                              ; preds = %560, %601
  %567 = phi ptr [ %547, %560 ], [ %645, %601 ]
  %568 = phi i64 [ %542, %560 ], [ %597, %601 ]
  %569 = phi i32 [ %538, %560 ], [ %644, %601 ]
  %570 = phi ptr [ %535, %560 ], [ %596, %601 ]
  %571 = icmp ult ptr %570, %44
  br i1 %571, label %575, label %572

572:                                              ; preds = %566
  %573 = lshr i32 %569, 3
  %574 = and i32 %569, 7
  br label %590

575:                                              ; preds = %566
  %576 = icmp eq ptr %570, %27
  br i1 %576, label %675, label %577

577:                                              ; preds = %575
  %578 = lshr i32 %569, 3
  %579 = zext nneg i32 %578 to i64
  %580 = sub nsw i64 0, %579
  %581 = getelementptr inbounds i8, ptr %570, i64 %580
  %582 = icmp ult ptr %581, %27
  %583 = ptrtoint ptr %570 to i64
  %584 = sub i64 %583, %561
  %585 = trunc i64 %584 to i32
  %586 = select i1 %582, i32 %585, i32 %578
  %587 = zext i1 %582 to i32
  %588 = shl i32 %586, 3
  %589 = sub i32 %569, %588
  br label %590

590:                                              ; preds = %577, %572
  %591 = phi i32 [ %586, %577 ], [ %573, %572 ]
  %592 = phi i32 [ %589, %577 ], [ %574, %572 ]
  %593 = phi i32 [ %587, %577 ], [ 0, %572 ]
  %594 = zext i32 %591 to i64
  %595 = sub nsw i64 0, %594
  %596 = getelementptr inbounds i8, ptr %570, i64 %595
  %597 = load i64, ptr %596, align 1, !tbaa !27
  %598 = icmp eq i32 %593, 0
  %599 = icmp ult ptr %567, %562
  %600 = and i1 %599, %598
  br i1 %600, label %601, label %675

601:                                              ; preds = %590
  %602 = and i32 %592, 63
  %603 = zext nneg i32 %602 to i64
  %604 = shl i64 %597, %603
  %605 = lshr i64 %604, %565
  %606 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %605
  %607 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %605, i32 1
  %608 = load i8, ptr %607, align 1, !tbaa !94
  %609 = load i8, ptr %606, align 1, !tbaa !96
  %610 = zext i8 %609 to i32
  %611 = add i32 %592, %610
  store i8 %608, ptr %567, align 1, !tbaa !9
  %612 = getelementptr inbounds i8, ptr %567, i64 1
  %613 = and i32 %611, 63
  %614 = zext nneg i32 %613 to i64
  %615 = shl i64 %597, %614
  %616 = lshr i64 %615, %565
  %617 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %616
  %618 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %616, i32 1
  %619 = load i8, ptr %618, align 1, !tbaa !94
  %620 = load i8, ptr %617, align 1, !tbaa !96
  %621 = zext i8 %620 to i32
  %622 = add i32 %611, %621
  store i8 %619, ptr %612, align 1, !tbaa !9
  %623 = getelementptr inbounds i8, ptr %567, i64 2
  %624 = and i32 %622, 63
  %625 = zext nneg i32 %624 to i64
  %626 = shl i64 %597, %625
  %627 = lshr i64 %626, %565
  %628 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %627
  %629 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %627, i32 1
  %630 = load i8, ptr %629, align 1, !tbaa !94
  %631 = load i8, ptr %628, align 1, !tbaa !96
  %632 = zext i8 %631 to i32
  %633 = add i32 %622, %632
  store i8 %630, ptr %623, align 1, !tbaa !9
  %634 = getelementptr inbounds i8, ptr %567, i64 3
  %635 = and i32 %633, 63
  %636 = zext nneg i32 %635 to i64
  %637 = shl i64 %597, %636
  %638 = lshr i64 %637, %565
  %639 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %638
  %640 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %638, i32 1
  %641 = load i8, ptr %640, align 1, !tbaa !94
  %642 = load i8, ptr %639, align 1, !tbaa !96
  %643 = zext i8 %642 to i32
  %644 = add i32 %633, %643
  %645 = getelementptr inbounds i8, ptr %567, i64 4
  store i8 %641, ptr %634, align 1, !tbaa !9
  %646 = icmp ugt i32 %644, 64
  br i1 %646, label %675, label %566, !prof !85, !llvm.loop !97

647:                                              ; preds = %553
  br i1 %558, label %675, label %648, !prof !107

648:                                              ; preds = %647
  %649 = icmp ult ptr %535, %44
  br i1 %649, label %653, label %650

650:                                              ; preds = %648
  %651 = lshr i32 %538, 3
  %652 = and i32 %538, 7
  br label %668

653:                                              ; preds = %648
  %654 = icmp eq ptr %535, %27
  br i1 %654, label %675, label %655

655:                                              ; preds = %653
  %656 = lshr i32 %538, 3
  %657 = zext nneg i32 %656 to i64
  %658 = sub nsw i64 0, %657
  %659 = getelementptr inbounds i8, ptr %535, i64 %658
  %660 = icmp ult ptr %659, %27
  %661 = ptrtoint ptr %535 to i64
  %662 = ptrtoint ptr %27 to i64
  %663 = sub i64 %661, %662
  %664 = trunc i64 %663 to i32
  %665 = select i1 %660, i32 %664, i32 %656
  %666 = shl i32 %665, 3
  %667 = sub i32 %538, %666
  br label %668

668:                                              ; preds = %655, %650
  %669 = phi i32 [ %651, %650 ], [ %665, %655 ]
  %670 = phi i32 [ %652, %650 ], [ %667, %655 ]
  %671 = zext i32 %669 to i64
  %672 = sub nsw i64 0, %671
  %673 = getelementptr inbounds i8, ptr %535, i64 %672
  %674 = load i64, ptr %673, align 1, !tbaa !27
  br label %675

675:                                              ; preds = %590, %601, %575, %668, %559, %653, %647
  %676 = phi ptr [ @BIT_reloadDStream.zeroFilled, %647 ], [ %27, %653 ], [ @BIT_reloadDStream.zeroFilled, %559 ], [ %673, %668 ], [ %596, %590 ], [ @BIT_reloadDStream.zeroFilled, %601 ], [ %27, %575 ]
  %677 = phi i32 [ %538, %647 ], [ %538, %653 ], [ %538, %559 ], [ %670, %668 ], [ %592, %590 ], [ %644, %601 ], [ %569, %575 ]
  %678 = phi i64 [ %542, %647 ], [ %542, %653 ], [ %542, %559 ], [ %674, %668 ], [ %597, %590 ], [ %597, %601 ], [ %568, %575 ]
  %679 = phi ptr [ %547, %647 ], [ %547, %653 ], [ %547, %559 ], [ %547, %668 ], [ %567, %590 ], [ %645, %601 ], [ %567, %575 ]
  %680 = icmp ult ptr %679, %33
  br i1 %680, label %681, label %734

681:                                              ; preds = %675
  %682 = ptrtoint ptr %679 to i64
  %683 = sub nsw i32 0, %37
  %684 = and i32 %683, 63
  %685 = zext nneg i32 %684 to i64
  %686 = add i64 %32, %6
  %687 = sub i64 %686, %682
  %688 = add i64 %682, 1
  %689 = and i64 %687, 1
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %703, label %691

691:                                              ; preds = %681
  %692 = and i32 %677, 63
  %693 = zext nneg i32 %692 to i64
  %694 = shl i64 %678, %693
  %695 = lshr i64 %694, %685
  %696 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %695
  %697 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %695, i32 1
  %698 = load i8, ptr %697, align 1, !tbaa !94
  %699 = load i8, ptr %696, align 1, !tbaa !96
  %700 = zext i8 %699 to i32
  %701 = add i32 %677, %700
  %702 = getelementptr inbounds i8, ptr %679, i64 1
  store i8 %698, ptr %679, align 1, !tbaa !9
  br label %703

703:                                              ; preds = %691, %681
  %704 = phi ptr [ %679, %681 ], [ %702, %691 ]
  %705 = phi i32 [ %677, %681 ], [ %701, %691 ]
  %706 = phi i32 [ undef, %681 ], [ %701, %691 ]
  %707 = icmp eq i64 %686, %688
  br i1 %707, label %734, label %708

708:                                              ; preds = %703, %708
  %709 = phi ptr [ %732, %708 ], [ %704, %703 ]
  %710 = phi i32 [ %731, %708 ], [ %705, %703 ]
  %711 = and i32 %710, 63
  %712 = zext nneg i32 %711 to i64
  %713 = shl i64 %678, %712
  %714 = lshr i64 %713, %685
  %715 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %714
  %716 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %714, i32 1
  %717 = load i8, ptr %716, align 1, !tbaa !94
  %718 = load i8, ptr %715, align 1, !tbaa !96
  %719 = zext i8 %718 to i32
  %720 = add i32 %710, %719
  %721 = getelementptr inbounds i8, ptr %709, i64 1
  store i8 %717, ptr %709, align 1, !tbaa !9
  %722 = and i32 %720, 63
  %723 = zext nneg i32 %722 to i64
  %724 = shl i64 %678, %723
  %725 = lshr i64 %724, %685
  %726 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %725
  %727 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %725, i32 1
  %728 = load i8, ptr %727, align 1, !tbaa !94
  %729 = load i8, ptr %726, align 1, !tbaa !96
  %730 = zext i8 %729 to i32
  %731 = add i32 %720, %730
  %732 = getelementptr inbounds i8, ptr %709, i64 2
  store i8 %728, ptr %721, align 1, !tbaa !9
  %733 = icmp ult ptr %732, %33
  br i1 %733, label %708, label %734, !llvm.loop !98

734:                                              ; preds = %703, %708, %675
  %735 = phi i32 [ %677, %675 ], [ %706, %703 ], [ %731, %708 ]
  %736 = ptrtoint ptr %34 to i64
  %737 = ptrtoint ptr %546 to i64
  %738 = sub i64 %736, %737
  %739 = icmp sgt i64 %738, 3
  %740 = icmp ugt i32 %537, 64
  br i1 %739, label %741, label %829

741:                                              ; preds = %734
  br i1 %740, label %857, label %742, !prof !88

742:                                              ; preds = %741
  %743 = ptrtoint ptr %28 to i64
  %744 = getelementptr inbounds i8, ptr %34, i64 -3
  %745 = sub nsw i32 0, %37
  %746 = and i32 %745, 63
  %747 = zext nneg i32 %746 to i64
  br label %748

748:                                              ; preds = %742, %783
  %749 = phi ptr [ %546, %742 ], [ %827, %783 ]
  %750 = phi ptr [ %539, %742 ], [ %778, %783 ]
  %751 = phi i32 [ %537, %742 ], [ %826, %783 ]
  %752 = phi i64 [ %536, %742 ], [ %779, %783 ]
  %753 = icmp ult ptr %750, %119
  br i1 %753, label %757, label %754

754:                                              ; preds = %748
  %755 = lshr i32 %751, 3
  %756 = and i32 %751, 7
  br label %772

757:                                              ; preds = %748
  %758 = icmp eq ptr %750, %28
  br i1 %758, label %857, label %759

759:                                              ; preds = %757
  %760 = lshr i32 %751, 3
  %761 = zext nneg i32 %760 to i64
  %762 = sub nsw i64 0, %761
  %763 = getelementptr inbounds i8, ptr %750, i64 %762
  %764 = icmp ult ptr %763, %28
  %765 = ptrtoint ptr %750 to i64
  %766 = sub i64 %765, %743
  %767 = trunc i64 %766 to i32
  %768 = select i1 %764, i32 %767, i32 %760
  %769 = zext i1 %764 to i32
  %770 = shl i32 %768, 3
  %771 = sub i32 %751, %770
  br label %772

772:                                              ; preds = %759, %754
  %773 = phi i32 [ %771, %759 ], [ %756, %754 ]
  %774 = phi i32 [ %768, %759 ], [ %755, %754 ]
  %775 = phi i32 [ %769, %759 ], [ 0, %754 ]
  %776 = zext i32 %774 to i64
  %777 = sub nsw i64 0, %776
  %778 = getelementptr inbounds i8, ptr %750, i64 %777
  %779 = load i64, ptr %778, align 1, !tbaa !27
  %780 = icmp eq i32 %775, 0
  %781 = icmp ult ptr %749, %744
  %782 = and i1 %781, %780
  br i1 %782, label %783, label %857

783:                                              ; preds = %772
  %784 = and i32 %773, 63
  %785 = zext nneg i32 %784 to i64
  %786 = shl i64 %779, %785
  %787 = lshr i64 %786, %747
  %788 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %787
  %789 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %787, i32 1
  %790 = load i8, ptr %789, align 1, !tbaa !94
  %791 = load i8, ptr %788, align 1, !tbaa !96
  %792 = zext i8 %791 to i32
  %793 = add i32 %773, %792
  store i8 %790, ptr %749, align 1, !tbaa !9
  %794 = getelementptr inbounds i8, ptr %749, i64 1
  %795 = and i32 %793, 63
  %796 = zext nneg i32 %795 to i64
  %797 = shl i64 %779, %796
  %798 = lshr i64 %797, %747
  %799 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %798
  %800 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %798, i32 1
  %801 = load i8, ptr %800, align 1, !tbaa !94
  %802 = load i8, ptr %799, align 1, !tbaa !96
  %803 = zext i8 %802 to i32
  %804 = add i32 %793, %803
  store i8 %801, ptr %794, align 1, !tbaa !9
  %805 = getelementptr inbounds i8, ptr %749, i64 2
  %806 = and i32 %804, 63
  %807 = zext nneg i32 %806 to i64
  %808 = shl i64 %779, %807
  %809 = lshr i64 %808, %747
  %810 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %809
  %811 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %809, i32 1
  %812 = load i8, ptr %811, align 1, !tbaa !94
  %813 = load i8, ptr %810, align 1, !tbaa !96
  %814 = zext i8 %813 to i32
  %815 = add i32 %804, %814
  store i8 %812, ptr %805, align 1, !tbaa !9
  %816 = getelementptr inbounds i8, ptr %749, i64 3
  %817 = and i32 %815, 63
  %818 = zext nneg i32 %817 to i64
  %819 = shl i64 %779, %818
  %820 = lshr i64 %819, %747
  %821 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %820
  %822 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %820, i32 1
  %823 = load i8, ptr %822, align 1, !tbaa !94
  %824 = load i8, ptr %821, align 1, !tbaa !96
  %825 = zext i8 %824 to i32
  %826 = add i32 %815, %825
  %827 = getelementptr inbounds i8, ptr %749, i64 4
  store i8 %823, ptr %816, align 1, !tbaa !9
  %828 = icmp ugt i32 %826, 64
  br i1 %828, label %857, label %748, !prof !85, !llvm.loop !97

829:                                              ; preds = %734
  br i1 %740, label %857, label %830, !prof !107

830:                                              ; preds = %829
  %831 = icmp ult ptr %539, %119
  br i1 %831, label %835, label %832

832:                                              ; preds = %830
  %833 = lshr i32 %537, 3
  %834 = and i32 %537, 7
  br label %850

835:                                              ; preds = %830
  %836 = icmp eq ptr %539, %28
  br i1 %836, label %857, label %837

837:                                              ; preds = %835
  %838 = lshr i32 %537, 3
  %839 = zext nneg i32 %838 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %539, i64 %840
  %842 = icmp ult ptr %841, %28
  %843 = ptrtoint ptr %539 to i64
  %844 = ptrtoint ptr %28 to i64
  %845 = sub i64 %843, %844
  %846 = trunc i64 %845 to i32
  %847 = select i1 %842, i32 %846, i32 %838
  %848 = shl i32 %847, 3
  %849 = sub i32 %537, %848
  br label %850

850:                                              ; preds = %837, %832
  %851 = phi i32 [ %833, %832 ], [ %847, %837 ]
  %852 = phi i32 [ %834, %832 ], [ %849, %837 ]
  %853 = zext i32 %851 to i64
  %854 = sub nsw i64 0, %853
  %855 = getelementptr inbounds i8, ptr %539, i64 %854
  %856 = load i64, ptr %855, align 1, !tbaa !27
  br label %857

857:                                              ; preds = %772, %783, %757, %850, %741, %835, %829
  %858 = phi i64 [ %536, %829 ], [ %536, %835 ], [ %536, %741 ], [ %856, %850 ], [ %779, %772 ], [ %779, %783 ], [ %752, %757 ]
  %859 = phi i32 [ %537, %829 ], [ %537, %835 ], [ %537, %741 ], [ %852, %850 ], [ %773, %772 ], [ %826, %783 ], [ %751, %757 ]
  %860 = phi ptr [ @BIT_reloadDStream.zeroFilled, %829 ], [ %28, %835 ], [ @BIT_reloadDStream.zeroFilled, %741 ], [ %855, %850 ], [ %778, %772 ], [ @BIT_reloadDStream.zeroFilled, %783 ], [ %28, %757 ]
  %861 = phi ptr [ %546, %829 ], [ %546, %835 ], [ %546, %741 ], [ %546, %850 ], [ %749, %772 ], [ %827, %783 ], [ %749, %757 ]
  %862 = icmp ult ptr %861, %34
  br i1 %862, label %863, label %882

863:                                              ; preds = %857
  %864 = sub nsw i32 0, %37
  %865 = and i32 %864, 63
  %866 = zext nneg i32 %865 to i64
  br label %867

867:                                              ; preds = %863, %867
  %868 = phi ptr [ %861, %863 ], [ %880, %867 ]
  %869 = phi i32 [ %859, %863 ], [ %879, %867 ]
  %870 = and i32 %869, 63
  %871 = zext nneg i32 %870 to i64
  %872 = shl i64 %858, %871
  %873 = lshr i64 %872, %866
  %874 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %873
  %875 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %873, i32 1
  %876 = load i8, ptr %875, align 1, !tbaa !94
  %877 = load i8, ptr %874, align 1, !tbaa !96
  %878 = zext i8 %877 to i32
  %879 = add i32 %869, %878
  %880 = getelementptr inbounds i8, ptr %868, i64 1
  store i8 %876, ptr %868, align 1, !tbaa !9
  %881 = icmp ult ptr %880, %34
  br i1 %881, label %867, label %882, !llvm.loop !98

882:                                              ; preds = %867, %857
  %883 = phi i32 [ %859, %857 ], [ %879, %867 ]
  %884 = ptrtoint ptr %545 to i64
  %885 = sub i64 %271, %884
  %886 = icmp sgt i64 %885, 3
  %887 = icmp ugt i32 %541, 64
  br i1 %886, label %888, label %976

888:                                              ; preds = %882
  br i1 %887, label %1004, label %889, !prof !88

889:                                              ; preds = %888
  %890 = ptrtoint ptr %29 to i64
  %891 = getelementptr inbounds i8, ptr %35, i64 -3
  %892 = sub nsw i32 0, %37
  %893 = and i32 %892, 63
  %894 = zext nneg i32 %893 to i64
  br label %895

895:                                              ; preds = %889, %930
  %896 = phi ptr [ %545, %889 ], [ %974, %930 ]
  %897 = phi ptr [ %543, %889 ], [ %925, %930 ]
  %898 = phi i32 [ %541, %889 ], [ %973, %930 ]
  %899 = phi i64 [ %540, %889 ], [ %926, %930 ]
  %900 = icmp ult ptr %897, %194
  br i1 %900, label %904, label %901

901:                                              ; preds = %895
  %902 = lshr i32 %898, 3
  %903 = and i32 %898, 7
  br label %919

904:                                              ; preds = %895
  %905 = icmp eq ptr %897, %29
  br i1 %905, label %1004, label %906

906:                                              ; preds = %904
  %907 = lshr i32 %898, 3
  %908 = zext nneg i32 %907 to i64
  %909 = sub nsw i64 0, %908
  %910 = getelementptr inbounds i8, ptr %897, i64 %909
  %911 = icmp ult ptr %910, %29
  %912 = ptrtoint ptr %897 to i64
  %913 = sub i64 %912, %890
  %914 = trunc i64 %913 to i32
  %915 = select i1 %911, i32 %914, i32 %907
  %916 = zext i1 %911 to i32
  %917 = shl i32 %915, 3
  %918 = sub i32 %898, %917
  br label %919

919:                                              ; preds = %906, %901
  %920 = phi i32 [ %918, %906 ], [ %903, %901 ]
  %921 = phi i32 [ %915, %906 ], [ %902, %901 ]
  %922 = phi i32 [ %916, %906 ], [ 0, %901 ]
  %923 = zext i32 %921 to i64
  %924 = sub nsw i64 0, %923
  %925 = getelementptr inbounds i8, ptr %897, i64 %924
  %926 = load i64, ptr %925, align 1, !tbaa !27
  %927 = icmp eq i32 %922, 0
  %928 = icmp ult ptr %896, %891
  %929 = and i1 %928, %927
  br i1 %929, label %930, label %1004

930:                                              ; preds = %919
  %931 = and i32 %920, 63
  %932 = zext nneg i32 %931 to i64
  %933 = shl i64 %926, %932
  %934 = lshr i64 %933, %894
  %935 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %934
  %936 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %934, i32 1
  %937 = load i8, ptr %936, align 1, !tbaa !94
  %938 = load i8, ptr %935, align 1, !tbaa !96
  %939 = zext i8 %938 to i32
  %940 = add i32 %920, %939
  store i8 %937, ptr %896, align 1, !tbaa !9
  %941 = getelementptr inbounds i8, ptr %896, i64 1
  %942 = and i32 %940, 63
  %943 = zext nneg i32 %942 to i64
  %944 = shl i64 %926, %943
  %945 = lshr i64 %944, %894
  %946 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %945
  %947 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %945, i32 1
  %948 = load i8, ptr %947, align 1, !tbaa !94
  %949 = load i8, ptr %946, align 1, !tbaa !96
  %950 = zext i8 %949 to i32
  %951 = add i32 %940, %950
  store i8 %948, ptr %941, align 1, !tbaa !9
  %952 = getelementptr inbounds i8, ptr %896, i64 2
  %953 = and i32 %951, 63
  %954 = zext nneg i32 %953 to i64
  %955 = shl i64 %926, %954
  %956 = lshr i64 %955, %894
  %957 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %956
  %958 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %956, i32 1
  %959 = load i8, ptr %958, align 1, !tbaa !94
  %960 = load i8, ptr %957, align 1, !tbaa !96
  %961 = zext i8 %960 to i32
  %962 = add i32 %951, %961
  store i8 %959, ptr %952, align 1, !tbaa !9
  %963 = getelementptr inbounds i8, ptr %896, i64 3
  %964 = and i32 %962, 63
  %965 = zext nneg i32 %964 to i64
  %966 = shl i64 %926, %965
  %967 = lshr i64 %966, %894
  %968 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %967
  %969 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %967, i32 1
  %970 = load i8, ptr %969, align 1, !tbaa !94
  %971 = load i8, ptr %968, align 1, !tbaa !96
  %972 = zext i8 %971 to i32
  %973 = add i32 %962, %972
  %974 = getelementptr inbounds i8, ptr %896, i64 4
  store i8 %970, ptr %963, align 1, !tbaa !9
  %975 = icmp ugt i32 %973, 64
  br i1 %975, label %1004, label %895, !prof !85, !llvm.loop !97

976:                                              ; preds = %882
  br i1 %887, label %1004, label %977, !prof !107

977:                                              ; preds = %976
  %978 = icmp ult ptr %543, %194
  br i1 %978, label %982, label %979

979:                                              ; preds = %977
  %980 = lshr i32 %541, 3
  %981 = and i32 %541, 7
  br label %997

982:                                              ; preds = %977
  %983 = icmp eq ptr %543, %29
  br i1 %983, label %1004, label %984

984:                                              ; preds = %982
  %985 = lshr i32 %541, 3
  %986 = zext nneg i32 %985 to i64
  %987 = sub nsw i64 0, %986
  %988 = getelementptr inbounds i8, ptr %543, i64 %987
  %989 = icmp ult ptr %988, %29
  %990 = ptrtoint ptr %543 to i64
  %991 = ptrtoint ptr %29 to i64
  %992 = sub i64 %990, %991
  %993 = trunc i64 %992 to i32
  %994 = select i1 %989, i32 %993, i32 %985
  %995 = shl i32 %994, 3
  %996 = sub i32 %541, %995
  br label %997

997:                                              ; preds = %984, %979
  %998 = phi i32 [ %980, %979 ], [ %994, %984 ]
  %999 = phi i32 [ %981, %979 ], [ %996, %984 ]
  %1000 = zext i32 %998 to i64
  %1001 = sub nsw i64 0, %1000
  %1002 = getelementptr inbounds i8, ptr %543, i64 %1001
  %1003 = load i64, ptr %1002, align 1, !tbaa !27
  br label %1004

1004:                                             ; preds = %919, %930, %904, %997, %888, %982, %976
  %1005 = phi i64 [ %540, %976 ], [ %540, %982 ], [ %540, %888 ], [ %1003, %997 ], [ %926, %919 ], [ %926, %930 ], [ %899, %904 ]
  %1006 = phi i32 [ %541, %976 ], [ %541, %982 ], [ %541, %888 ], [ %999, %997 ], [ %920, %919 ], [ %973, %930 ], [ %898, %904 ]
  %1007 = phi ptr [ @BIT_reloadDStream.zeroFilled, %976 ], [ %29, %982 ], [ @BIT_reloadDStream.zeroFilled, %888 ], [ %1002, %997 ], [ %925, %919 ], [ @BIT_reloadDStream.zeroFilled, %930 ], [ %29, %904 ]
  %1008 = phi ptr [ %545, %976 ], [ %545, %982 ], [ %545, %888 ], [ %545, %997 ], [ %896, %919 ], [ %974, %930 ], [ %896, %904 ]
  %1009 = icmp ult ptr %1008, %35
  br i1 %1009, label %1010, label %1029

1010:                                             ; preds = %1004
  %1011 = sub nsw i32 0, %37
  %1012 = and i32 %1011, 63
  %1013 = zext nneg i32 %1012 to i64
  br label %1014

1014:                                             ; preds = %1010, %1014
  %1015 = phi ptr [ %1008, %1010 ], [ %1027, %1014 ]
  %1016 = phi i32 [ %1006, %1010 ], [ %1026, %1014 ]
  %1017 = and i32 %1016, 63
  %1018 = zext nneg i32 %1017 to i64
  %1019 = shl i64 %1005, %1018
  %1020 = lshr i64 %1019, %1013
  %1021 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1020
  %1022 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1020, i32 1
  %1023 = load i8, ptr %1022, align 1, !tbaa !94
  %1024 = load i8, ptr %1021, align 1, !tbaa !96
  %1025 = zext i8 %1024 to i32
  %1026 = add i32 %1016, %1025
  %1027 = getelementptr inbounds i8, ptr %1015, i64 1
  store i8 %1023, ptr %1015, align 1, !tbaa !9
  %1028 = icmp ult ptr %1027, %35
  br i1 %1028, label %1014, label %1029, !llvm.loop !98

1029:                                             ; preds = %1014, %1004
  %1030 = phi i32 [ %1006, %1004 ], [ %1026, %1014 ]
  %1031 = ptrtoint ptr %544 to i64
  %1032 = sub i64 %270, %1031
  %1033 = icmp sgt i64 %1032, 3
  %1034 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %1035 = load i32, ptr %1034, align 8
  %1036 = icmp ugt i32 %1035, 64
  br i1 %1033, label %1037, label %1141

1037:                                             ; preds = %1029
  br i1 %1036, label %1045, label %1038, !prof !88

1038:                                             ; preds = %1037
  %1039 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %1040 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %1041 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %1042 = sub nsw i32 0, %37
  %1043 = and i32 %1042, 63
  %1044 = zext nneg i32 %1043 to i64
  br label %1049

1045:                                             ; preds = %1089, %1037
  %1046 = phi i32 [ %1035, %1037 ], [ %1139, %1089 ]
  %1047 = phi ptr [ %544, %1037 ], [ %1138, %1089 ]
  %1048 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1048, align 8, !tbaa !105
  br label %1177

1049:                                             ; preds = %1038, %1089
  %1050 = phi i32 [ %1035, %1038 ], [ %1139, %1089 ]
  %1051 = phi ptr [ %544, %1038 ], [ %1138, %1089 ]
  %1052 = load ptr, ptr %1039, align 8, !tbaa !105
  %1053 = load ptr, ptr %1040, align 8, !tbaa !103
  %1054 = icmp ult ptr %1052, %1053
  br i1 %1054, label %1061, label %1055

1055:                                             ; preds = %1049
  %1056 = lshr i32 %1050, 3
  %1057 = zext nneg i32 %1056 to i64
  %1058 = sub nsw i64 0, %1057
  %1059 = getelementptr inbounds i8, ptr %1052, i64 %1058
  store ptr %1059, ptr %1039, align 8, !tbaa !105
  %1060 = and i32 %1050, 7
  br label %1081

1061:                                             ; preds = %1049
  %1062 = load ptr, ptr %1041, align 8, !tbaa !109
  %1063 = icmp eq ptr %1052, %1062
  br i1 %1063, label %1177, label %1064

1064:                                             ; preds = %1061
  %1065 = lshr i32 %1050, 3
  %1066 = zext nneg i32 %1065 to i64
  %1067 = sub nsw i64 0, %1066
  %1068 = getelementptr inbounds i8, ptr %1052, i64 %1067
  %1069 = icmp ult ptr %1068, %1062
  %1070 = ptrtoint ptr %1052 to i64
  %1071 = ptrtoint ptr %1062 to i64
  %1072 = sub i64 %1070, %1071
  %1073 = trunc i64 %1072 to i32
  %1074 = select i1 %1069, i32 %1073, i32 %1065
  %1075 = zext i1 %1069 to i32
  %1076 = zext i32 %1074 to i64
  %1077 = sub nsw i64 0, %1076
  %1078 = getelementptr inbounds i8, ptr %1052, i64 %1077
  store ptr %1078, ptr %1039, align 8, !tbaa !105
  %1079 = shl i32 %1074, 3
  %1080 = sub i32 %1050, %1079
  br label %1081

1081:                                             ; preds = %1064, %1055
  %1082 = phi i32 [ %1060, %1055 ], [ %1080, %1064 ]
  %1083 = phi ptr [ %1059, %1055 ], [ %1078, %1064 ]
  %1084 = phi i32 [ 0, %1055 ], [ %1075, %1064 ]
  store i32 %1082, ptr %1034, align 8, !tbaa !104
  %1085 = load i64, ptr %1083, align 1, !tbaa !27
  store i64 %1085, ptr %7, align 8, !tbaa !100
  %1086 = icmp eq i32 %1084, 0
  %1087 = icmp ult ptr %1051, %13
  %1088 = and i1 %1087, %1086
  br i1 %1088, label %1089, label %1177

1089:                                             ; preds = %1081
  %1090 = and i32 %1082, 63
  %1091 = zext nneg i32 %1090 to i64
  %1092 = shl i64 %1085, %1091
  %1093 = lshr i64 %1092, %1044
  %1094 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1093
  %1095 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1093, i32 1
  %1096 = load i8, ptr %1095, align 1, !tbaa !94
  %1097 = load i8, ptr %1094, align 1, !tbaa !96
  %1098 = zext i8 %1097 to i32
  %1099 = add i32 %1082, %1098
  store i8 %1096, ptr %1051, align 1, !tbaa !9
  %1100 = getelementptr inbounds i8, ptr %1051, i64 1
  %1101 = load i64, ptr %7, align 8, !tbaa !100
  %1102 = and i32 %1099, 63
  %1103 = zext nneg i32 %1102 to i64
  %1104 = shl i64 %1101, %1103
  %1105 = lshr i64 %1104, %1044
  %1106 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1105
  %1107 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1105, i32 1
  %1108 = load i8, ptr %1107, align 1, !tbaa !94
  %1109 = load i8, ptr %1106, align 1, !tbaa !96
  %1110 = zext i8 %1109 to i32
  %1111 = add i32 %1099, %1110
  store i32 %1111, ptr %1034, align 8, !tbaa !104
  store i8 %1108, ptr %1100, align 1, !tbaa !9
  %1112 = getelementptr inbounds i8, ptr %1051, i64 2
  %1113 = load i64, ptr %7, align 8, !tbaa !100
  %1114 = load i32, ptr %1034, align 8, !tbaa !104
  %1115 = and i32 %1114, 63
  %1116 = zext nneg i32 %1115 to i64
  %1117 = shl i64 %1113, %1116
  %1118 = lshr i64 %1117, %1044
  %1119 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1118
  %1120 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1118, i32 1
  %1121 = load i8, ptr %1120, align 1, !tbaa !94
  %1122 = load i8, ptr %1119, align 1, !tbaa !96
  %1123 = zext i8 %1122 to i32
  %1124 = add i32 %1114, %1123
  store i32 %1124, ptr %1034, align 8, !tbaa !104
  store i8 %1121, ptr %1112, align 1, !tbaa !9
  %1125 = getelementptr inbounds i8, ptr %1051, i64 3
  %1126 = load i64, ptr %7, align 8, !tbaa !100
  %1127 = load i32, ptr %1034, align 8, !tbaa !104
  %1128 = and i32 %1127, 63
  %1129 = zext nneg i32 %1128 to i64
  %1130 = shl i64 %1126, %1129
  %1131 = lshr i64 %1130, %1044
  %1132 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1131
  %1133 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1131, i32 1
  %1134 = load i8, ptr %1133, align 1, !tbaa !94
  %1135 = load i8, ptr %1132, align 1, !tbaa !96
  %1136 = zext i8 %1135 to i32
  %1137 = add i32 %1127, %1136
  store i32 %1137, ptr %1034, align 8, !tbaa !104
  %1138 = getelementptr inbounds i8, ptr %1051, i64 4
  store i8 %1134, ptr %1125, align 1, !tbaa !9
  %1139 = load i32, ptr %1034, align 8
  %1140 = icmp ugt i32 %1139, 64
  br i1 %1140, label %1045, label %1049, !prof !85, !llvm.loop !97

1141:                                             ; preds = %1029
  %1142 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  br i1 %1036, label %1143, label %1144, !prof !107

1143:                                             ; preds = %1141
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1142, align 8, !tbaa !105
  br label %1177

1144:                                             ; preds = %1141
  %1145 = load ptr, ptr %1142, align 8, !tbaa !105
  %1146 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 4
  %1147 = load ptr, ptr %1146, align 8, !tbaa !103
  %1148 = icmp ult ptr %1145, %1147
  br i1 %1148, label %1156, label %1149

1149:                                             ; preds = %1144
  %1150 = lshr i32 %1035, 3
  %1151 = zext nneg i32 %1150 to i64
  %1152 = sub nsw i64 0, %1151
  %1153 = getelementptr inbounds i8, ptr %1145, i64 %1152
  store ptr %1153, ptr %1142, align 8, !tbaa !105
  %1154 = and i32 %1035, 7
  store i32 %1154, ptr %1034, align 8, !tbaa !104
  %1155 = load i64, ptr %1153, align 1, !tbaa !27
  store i64 %1155, ptr %7, align 8, !tbaa !100
  br label %1177

1156:                                             ; preds = %1144
  %1157 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %1158 = load ptr, ptr %1157, align 8, !tbaa !109
  %1159 = icmp eq ptr %1145, %1158
  br i1 %1159, label %1177, label %1160

1160:                                             ; preds = %1156
  %1161 = lshr i32 %1035, 3
  %1162 = zext nneg i32 %1161 to i64
  %1163 = sub nsw i64 0, %1162
  %1164 = getelementptr inbounds i8, ptr %1145, i64 %1163
  %1165 = icmp ult ptr %1164, %1158
  %1166 = ptrtoint ptr %1145 to i64
  %1167 = ptrtoint ptr %1158 to i64
  %1168 = sub i64 %1166, %1167
  %1169 = trunc i64 %1168 to i32
  %1170 = select i1 %1165, i32 %1169, i32 %1161
  %1171 = zext i32 %1170 to i64
  %1172 = sub nsw i64 0, %1171
  %1173 = getelementptr inbounds i8, ptr %1145, i64 %1172
  store ptr %1173, ptr %1142, align 8, !tbaa !105
  %1174 = shl i32 %1170, 3
  %1175 = sub i32 %1035, %1174
  store i32 %1175, ptr %1034, align 8, !tbaa !104
  %1176 = load i64, ptr %1173, align 1, !tbaa !27
  store i64 %1176, ptr %7, align 8, !tbaa !100
  br label %1177

1177:                                             ; preds = %1061, %1081, %1156, %1045, %1143, %1149, %1160
  %1178 = phi i32 [ %1175, %1160 ], [ %1154, %1149 ], [ %1035, %1143 ], [ %1046, %1045 ], [ %1035, %1156 ], [ %1050, %1061 ], [ %1082, %1081 ]
  %1179 = phi ptr [ %1173, %1160 ], [ %1153, %1149 ], [ @BIT_reloadDStream.zeroFilled, %1143 ], [ @BIT_reloadDStream.zeroFilled, %1045 ], [ %1145, %1156 ], [ %1052, %1061 ], [ %1083, %1081 ]
  %1180 = phi ptr [ %544, %1160 ], [ %544, %1149 ], [ %544, %1143 ], [ %1047, %1045 ], [ %544, %1156 ], [ %1051, %1081 ], [ %1051, %1061 ]
  %1181 = icmp ult ptr %1180, %12
  br i1 %1181, label %1182, label %1243

1182:                                             ; preds = %1177
  %1183 = ptrtoint ptr %1180 to i64
  %1184 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 1
  %1185 = sub nsw i32 0, %37
  %1186 = and i32 %1185, 63
  %1187 = zext nneg i32 %1186 to i64
  %1188 = add i64 %6, %1
  %1189 = sub i64 %1188, %1183
  %1190 = add i64 %1183, 1
  %1191 = and i64 %1189, 1
  %1192 = icmp eq i64 %1191, 0
  br i1 %1192, label %1207, label %1193

1193:                                             ; preds = %1182
  %1194 = load i64, ptr %7, align 8, !tbaa !100
  %1195 = load i32, ptr %1184, align 8, !tbaa !104
  %1196 = and i32 %1195, 63
  %1197 = zext nneg i32 %1196 to i64
  %1198 = shl i64 %1194, %1197
  %1199 = lshr i64 %1198, %1187
  %1200 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1199
  %1201 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1199, i32 1
  %1202 = load i8, ptr %1201, align 1, !tbaa !94
  %1203 = load i8, ptr %1200, align 1, !tbaa !96
  %1204 = zext i8 %1203 to i32
  %1205 = add i32 %1195, %1204
  store i32 %1205, ptr %1184, align 8, !tbaa !104
  %1206 = getelementptr inbounds i8, ptr %1180, i64 1
  store i8 %1202, ptr %1180, align 1, !tbaa !9
  br label %1207

1207:                                             ; preds = %1193, %1182
  %1208 = phi ptr [ %1180, %1182 ], [ %1206, %1193 ]
  %1209 = icmp eq i64 %1188, %1190
  br i1 %1209, label %1239, label %1210

1210:                                             ; preds = %1207, %1210
  %1211 = phi ptr [ %1237, %1210 ], [ %1208, %1207 ]
  %1212 = load i64, ptr %7, align 8, !tbaa !100
  %1213 = load i32, ptr %1184, align 8, !tbaa !104
  %1214 = and i32 %1213, 63
  %1215 = zext nneg i32 %1214 to i64
  %1216 = shl i64 %1212, %1215
  %1217 = lshr i64 %1216, %1187
  %1218 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1217
  %1219 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1217, i32 1
  %1220 = load i8, ptr %1219, align 1, !tbaa !94
  %1221 = load i8, ptr %1218, align 1, !tbaa !96
  %1222 = zext i8 %1221 to i32
  %1223 = add i32 %1213, %1222
  store i32 %1223, ptr %1184, align 8, !tbaa !104
  %1224 = getelementptr inbounds i8, ptr %1211, i64 1
  store i8 %1220, ptr %1211, align 1, !tbaa !9
  %1225 = load i64, ptr %7, align 8, !tbaa !100
  %1226 = load i32, ptr %1184, align 8, !tbaa !104
  %1227 = and i32 %1226, 63
  %1228 = zext nneg i32 %1227 to i64
  %1229 = shl i64 %1225, %1228
  %1230 = lshr i64 %1229, %1187
  %1231 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1230
  %1232 = getelementptr inbounds %struct.HUF_DEltX1, ptr %14, i64 %1230, i32 1
  %1233 = load i8, ptr %1232, align 1, !tbaa !94
  %1234 = load i8, ptr %1231, align 1, !tbaa !96
  %1235 = zext i8 %1234 to i32
  %1236 = add i32 %1226, %1235
  store i32 %1236, ptr %1184, align 8, !tbaa !104
  %1237 = getelementptr inbounds i8, ptr %1211, i64 2
  store i8 %1233, ptr %1224, align 1, !tbaa !9
  %1238 = icmp ult ptr %1237, %12
  br i1 %1238, label %1210, label %1239, !llvm.loop !98

1239:                                             ; preds = %1210, %1207
  %1240 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 2
  %1241 = load ptr, ptr %1240, align 8, !tbaa !105
  %1242 = load i32, ptr %1184, align 8
  br label %1243

1243:                                             ; preds = %1239, %1177
  %1244 = phi i32 [ %1242, %1239 ], [ %1178, %1177 ]
  %1245 = phi ptr [ %1241, %1239 ], [ %1179, %1177 ]
  %1246 = icmp eq ptr %676, %27
  %1247 = icmp eq i32 %735, 64
  %1248 = select i1 %1246, i1 %1247, i1 false
  %1249 = icmp eq ptr %860, %28
  %1250 = icmp eq i32 %883, 64
  %1251 = select i1 %1249, i1 %1250, i1 false
  %1252 = and i1 %1248, %1251
  %1253 = icmp eq ptr %1007, %29
  %1254 = icmp eq i32 %1030, 64
  %1255 = select i1 %1253, i1 %1254, i1 false
  %1256 = and i1 %1252, %1255
  %1257 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i64 0, i32 3
  %1258 = load ptr, ptr %1257, align 8, !tbaa !109
  %1259 = icmp eq ptr %1245, %1258
  %1260 = icmp eq i32 %1244, 64
  %1261 = select i1 %1259, i1 %1260, i1 false
  %1262 = and i1 %1256, %1261
  %1263 = select i1 %1262, i64 %1, i64 -20
  br label %1264

1264:                                             ; preds = %251, %196, %188, %176, %121, %113, %101, %46, %41, %1243, %534, %263, %11
  %1265 = phi i64 [ %267, %263 ], [ -20, %11 ], [ -20, %534 ], [ %1263, %1243 ], [ -20, %101 ], [ -1, %46 ], [ -72, %41 ], [ -20, %176 ], [ -1, %121 ], [ -72, %113 ], [ -20, %251 ], [ -1, %196 ], [ -72, %188 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  br label %1266

1266:                                             ; preds = %5, %1264
  %1267 = phi i64 [ %1265, %1264 ], [ -20, %5 ]
  ret i64 %1267
}

declare hidden void @HUF_decompress4X1_usingDTable_internal_fast_asm_loop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #13 {
  %7 = alloca %struct.HUF_DecompressFastArgs, align 8
  %8 = getelementptr inbounds i32, ptr %4, i64 1
  %9 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #16
  %11 = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef nonnull %7, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %12 = add i64 %11, -1
  %13 = icmp ult i64 %12, -120
  br i1 %13, label %14, label %222

14:                                               ; preds = %6
  call void %5(ptr noundef nonnull %7) #16, !callees !121
  %15 = add i64 %1, 3
  %16 = lshr i64 %15, 2
  %17 = ptrtoint ptr %10 to i64
  %18 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 4
  br label %22

19:                                               ; preds = %218
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %222, label %22, !llvm.loop !122

22:                                               ; preds = %14, %19
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = phi ptr [ %0, %14 ], [ %29, %19 ]
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %17, %25
  %27 = icmp ugt i64 %16, %26
  %28 = getelementptr inbounds i8, ptr %24, i64 %16
  %29 = select i1 %27, ptr %10, ptr %28
  %30 = zext nneg i32 %23 to i64
  %31 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 1, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = icmp ugt ptr %32, %29
  br i1 %33, label %222, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  %37 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 6, i64 %30
  %38 = load ptr, ptr %37, align 8, !tbaa !119
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = icmp ult ptr %36, %39
  br i1 %40, label %222, label %41

41:                                               ; preds = %34
  %42 = load i64, ptr %36, align 1, !tbaa !27
  %43 = getelementptr inbounds %struct.HUF_DecompressFastArgs, ptr %7, i64 0, i32 2, i64 %30
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = call i64 @llvm.cttz.i64(i64 %44, i1 true), !range !116
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %18, align 8, !tbaa !113
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = ptrtoint ptr %29 to i64
  %50 = ptrtoint ptr %32 to i64
  %51 = sub i64 %49, %50
  %52 = icmp sgt i64 %51, 3
  br i1 %52, label %53, label %137

53:                                               ; preds = %41
  %54 = ptrtoint ptr %47 to i64
  %55 = getelementptr inbounds i8, ptr %29, i64 -3
  br label %56

56:                                               ; preds = %53, %91
  %57 = phi ptr [ %32, %53 ], [ %135, %91 ]
  %58 = phi i64 [ %42, %53 ], [ %87, %91 ]
  %59 = phi i32 [ %46, %53 ], [ %134, %91 ]
  %60 = phi ptr [ %36, %53 ], [ %86, %91 ]
  %61 = icmp ult ptr %60, %48
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = lshr i32 %59, 3
  %64 = and i32 %59, 7
  br label %80

65:                                               ; preds = %56
  %66 = icmp eq ptr %60, %47
  br i1 %66, label %164, label %67

67:                                               ; preds = %65
  %68 = lshr i32 %59, 3
  %69 = zext nneg i32 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %60, i64 %70
  %72 = icmp ult ptr %71, %47
  %73 = ptrtoint ptr %60 to i64
  %74 = sub i64 %73, %54
  %75 = trunc i64 %74 to i32
  %76 = select i1 %72, i32 %75, i32 %68
  %77 = zext i1 %72 to i32
  %78 = shl i32 %76, 3
  %79 = sub i32 %59, %78
  br label %80

80:                                               ; preds = %67, %62
  %81 = phi i32 [ %76, %67 ], [ %63, %62 ]
  %82 = phi i32 [ %79, %67 ], [ %64, %62 ]
  %83 = phi i32 [ %77, %67 ], [ 0, %62 ]
  %84 = zext i32 %81 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, ptr %60, i64 %85
  %87 = load i64, ptr %86, align 1, !tbaa !27
  %88 = icmp eq i32 %83, 0
  %89 = icmp ult ptr %57, %55
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %164

91:                                               ; preds = %80
  %92 = and i32 %82, 63
  %93 = zext nneg i32 %92 to i64
  %94 = shl i64 %87, %93
  %95 = lshr i64 %94, 53
  %96 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %95
  %97 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %95, i32 1
  %98 = load i8, ptr %97, align 1, !tbaa !94
  %99 = load i8, ptr %96, align 1, !tbaa !96
  %100 = zext i8 %99 to i32
  %101 = add i32 %82, %100
  store i8 %98, ptr %57, align 1, !tbaa !9
  %102 = getelementptr inbounds i8, ptr %57, i64 1
  %103 = and i32 %101, 63
  %104 = zext nneg i32 %103 to i64
  %105 = shl i64 %87, %104
  %106 = lshr i64 %105, 53
  %107 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %106
  %108 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %106, i32 1
  %109 = load i8, ptr %108, align 1, !tbaa !94
  %110 = load i8, ptr %107, align 1, !tbaa !96
  %111 = zext i8 %110 to i32
  %112 = add i32 %101, %111
  store i8 %109, ptr %102, align 1, !tbaa !9
  %113 = getelementptr inbounds i8, ptr %57, i64 2
  %114 = and i32 %112, 63
  %115 = zext nneg i32 %114 to i64
  %116 = shl i64 %87, %115
  %117 = lshr i64 %116, 53
  %118 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %117
  %119 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %117, i32 1
  %120 = load i8, ptr %119, align 1, !tbaa !94
  %121 = load i8, ptr %118, align 1, !tbaa !96
  %122 = zext i8 %121 to i32
  %123 = add i32 %112, %122
  store i8 %120, ptr %113, align 1, !tbaa !9
  %124 = getelementptr inbounds i8, ptr %57, i64 3
  %125 = and i32 %123, 63
  %126 = zext nneg i32 %125 to i64
  %127 = shl i64 %87, %126
  %128 = lshr i64 %127, 53
  %129 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %128
  %130 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %128, i32 1
  %131 = load i8, ptr %130, align 1, !tbaa !94
  %132 = load i8, ptr %129, align 1, !tbaa !96
  %133 = zext i8 %132 to i32
  %134 = add i32 %123, %133
  %135 = getelementptr inbounds i8, ptr %57, i64 4
  store i8 %131, ptr %124, align 1, !tbaa !9
  %136 = icmp ugt i32 %134, 64
  br i1 %136, label %164, label %56, !prof !85, !llvm.loop !97

137:                                              ; preds = %41
  %138 = icmp ult ptr %36, %48
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = lshr i64 %45, 3
  %141 = and i32 %46, 7
  br label %158

142:                                              ; preds = %137
  %143 = icmp eq ptr %36, %47
  br i1 %143, label %164, label %144

144:                                              ; preds = %142
  %145 = lshr i32 %46, 3
  %146 = zext nneg i32 %145 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i8, ptr %36, i64 %147
  %149 = icmp ult ptr %148, %47
  %150 = ptrtoint ptr %36 to i64
  %151 = ptrtoint ptr %47 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = select i1 %149, i32 %153, i32 %145
  %155 = zext i32 %154 to i64
  %156 = shl i32 %154, 3
  %157 = sub i32 %46, %156
  br label %158

158:                                              ; preds = %144, %139
  %159 = phi i64 [ %140, %139 ], [ %155, %144 ]
  %160 = phi i32 [ %141, %139 ], [ %157, %144 ]
  %161 = sub nsw i64 0, %159
  %162 = getelementptr inbounds i8, ptr %36, i64 %161
  %163 = load i64, ptr %162, align 1, !tbaa !27
  br label %164

164:                                              ; preds = %80, %91, %65, %158, %142
  %165 = phi i32 [ %46, %142 ], [ %160, %158 ], [ %82, %80 ], [ %134, %91 ], [ %59, %65 ]
  %166 = phi i64 [ %42, %142 ], [ %163, %158 ], [ %87, %80 ], [ %87, %91 ], [ %58, %65 ]
  %167 = phi ptr [ %32, %142 ], [ %32, %158 ], [ %57, %80 ], [ %135, %91 ], [ %57, %65 ]
  %168 = icmp ult ptr %167, %29
  br i1 %168, label %169, label %218

169:                                              ; preds = %164
  %170 = ptrtoint ptr %167 to i64
  %171 = sub i64 %49, %170
  %172 = getelementptr i8, ptr %167, i64 %171
  %173 = and i64 %171, 1
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %169
  %176 = and i32 %165, 63
  %177 = zext nneg i32 %176 to i64
  %178 = shl i64 %166, %177
  %179 = lshr i64 %178, 53
  %180 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %179
  %181 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %179, i32 1
  %182 = load i8, ptr %181, align 1, !tbaa !94
  %183 = load i8, ptr %180, align 1, !tbaa !96
  %184 = zext i8 %183 to i32
  %185 = add i32 %165, %184
  %186 = getelementptr inbounds i8, ptr %167, i64 1
  store i8 %182, ptr %167, align 1, !tbaa !9
  br label %187

187:                                              ; preds = %175, %169
  %188 = phi ptr [ %167, %169 ], [ %186, %175 ]
  %189 = phi i32 [ %165, %169 ], [ %185, %175 ]
  %190 = add i64 %49, -1
  %191 = icmp eq i64 %190, %170
  br i1 %191, label %218, label %192

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %216, %192 ], [ %188, %187 ]
  %194 = phi i32 [ %215, %192 ], [ %189, %187 ]
  %195 = and i32 %194, 63
  %196 = zext nneg i32 %195 to i64
  %197 = shl i64 %166, %196
  %198 = lshr i64 %197, 53
  %199 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %198
  %200 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %198, i32 1
  %201 = load i8, ptr %200, align 1, !tbaa !94
  %202 = load i8, ptr %199, align 1, !tbaa !96
  %203 = zext i8 %202 to i32
  %204 = add i32 %194, %203
  %205 = getelementptr inbounds i8, ptr %193, i64 1
  store i8 %201, ptr %193, align 1, !tbaa !9
  %206 = and i32 %204, 63
  %207 = zext nneg i32 %206 to i64
  %208 = shl i64 %166, %207
  %209 = lshr i64 %208, 53
  %210 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %209
  %211 = getelementptr inbounds %struct.HUF_DEltX1, ptr %8, i64 %209, i32 1
  %212 = load i8, ptr %211, align 1, !tbaa !94
  %213 = load i8, ptr %210, align 1, !tbaa !96
  %214 = zext i8 %213 to i32
  %215 = add i32 %204, %214
  %216 = getelementptr inbounds i8, ptr %193, i64 2
  store i8 %212, ptr %205, align 1, !tbaa !9
  %217 = icmp eq ptr %216, %172
  br i1 %217, label %218, label %192, !llvm.loop !98

218:                                              ; preds = %187, %192, %164
  %219 = load ptr, ptr %31, align 8, !tbaa !119
  %220 = getelementptr inbounds i8, ptr %219, i64 %51
  store ptr %220, ptr %31, align 8, !tbaa !119
  %221 = icmp eq ptr %220, %29
  br i1 %221, label %19, label %222

222:                                              ; preds = %218, %19, %34, %22, %6
  %223 = phi i64 [ %11, %6 ], [ -20, %22 ], [ -20, %34 ], [ %1, %19 ], [ -20, %218 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #16
  ret i64 %223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !13, !12}
!16 = distinct !{!16, !11}
!17 = !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{i64 0, i64 1, !9, i64 1, i64 1, !9}
!24 = !{i64 0, i64 1, !9}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !19}
!37 = !{!38, !7, i64 0}
!38 = !{!"", !7, i64 0}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !11, !12, !13}
!52 = !{i64 0, i64 2, !53, i64 2, i64 1, !9, i64 3, i64 1, !9}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !7, i64 0}
!55 = distinct !{!55, !11, !12}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !11, !12, !13}
!62 = distinct !{!62, !11, !12}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !19}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = distinct !{!71, !11, !12, !13}
!72 = distinct !{!72, !11, !12}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !11, !12, !13}
!79 = distinct !{!79, !11, !12}
!80 = distinct !{!80, !11}
!81 = !{i32 0, i32 33}
!82 = !{!83, !7, i64 2}
!83 = !{!"", !54, i64 0, !7, i64 2, !7, i64 3}
!84 = !{!83, !7, i64 3}
!85 = !{!"branch_weights", i32 127, i32 255873}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = !{!"branch_weights", i32 1, i32 127}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = !{!92, !6, i64 0}
!92 = !{!"", !6, i64 0, !6, i64 4}
!93 = !{!92, !6, i64 4}
!94 = !{!95, !7, i64 1}
!95 = !{!"", !7, i64 0, !7, i64 1}
!96 = !{!95, !7, i64 0}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = !{i64 1, i64 0}
!100 = !{!101, !28, i64 0}
!101 = !{!"", !28, i64 0, !6, i64 8, !102, i64 16, !102, i64 24, !102, i64 32}
!102 = !{!"any pointer", !7, i64 0}
!103 = !{!101, !102, i64 32}
!104 = !{!101, !6, i64 8}
!105 = !{!101, !102, i64 16}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = distinct !{!108, !11}
!109 = !{!101, !102, i64 24}
!110 = distinct !{!110, !11}
!111 = !{!112, !102, i64 96}
!112 = !{!"", !7, i64 0, !7, i64 32, !7, i64 64, !102, i64 96, !102, i64 104, !102, i64 112, !7, i64 120}
!113 = !{!112, !102, i64 104}
!114 = !{!112, !102, i64 112}
!115 = distinct !{!115, !11}
!116 = !{i64 0, i64 65}
!117 = !{ptr @HUF_decompress4X2_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X2_usingDTable_internal_fast_c_loop}
!118 = distinct !{!118, !11}
!119 = !{!102, !102, i64 0}
!120 = distinct !{!120, !11}
!121 = !{ptr @HUF_decompress4X1_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X1_usingDTable_internal_fast_c_loop}
!122 = distinct !{!122, !11}
