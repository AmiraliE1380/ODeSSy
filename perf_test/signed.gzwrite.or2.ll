; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.gzwrite.or.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/gzwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"request does not fit in a size_t\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"string length does not fit in int\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"stalled write on gzprintf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"internal error: deflate stream corrupt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %894, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %894

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %894, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %894

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %.loopexit65, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = shl i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %33, ptr %34, align 8, !tbaa !20
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

37:                                               ; preds = %27
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %39 = load i32, ptr %38, align 8, !tbaa !21
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %29, align 4, !tbaa !19
  br i1 %40, label %43, label %42

42:                                               ; preds = %37
  store i32 %41, ptr %24, align 8, !tbaa !18
  br label %69

43:                                               ; preds = %37
  %44 = zext i32 %41 to i64
  %45 = tail call noalias ptr @malloc(i64 noundef %44) #16
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %45, ptr %46, align 8, !tbaa !22
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %33) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

49:                                               ; preds = %43
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %52 = load i32, ptr %51, align 8, !tbaa !23
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %54 = load i32, ptr %53, align 4, !tbaa !24
  %55 = tail call i32 @deflateInit2_(ptr noundef nonnull %28, i32 noundef %52, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %54, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %46, align 8, !tbaa !22
  tail call void @free(ptr noundef %58) #15
  %59 = load ptr, ptr %34, align 8, !tbaa !20
  tail call void @free(ptr noundef %59) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

60:                                               ; preds = %49
  store ptr null, ptr %28, align 8, !tbaa !25
  %61 = load i32, ptr %38, align 8, !tbaa !21
  %62 = load i32, ptr %29, align 4, !tbaa !19
  store i32 %62, ptr %24, align 8, !tbaa !18
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %62, ptr %65, align 8, !tbaa !26
  %66 = load ptr, ptr %46, align 8, !tbaa !22
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %66, ptr %67, align 8, !tbaa !27
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %66, ptr %68, align 8, !tbaa !28
  br label %69

69:                                               ; preds = %64, %60, %42, %23
  %70 = phi i32 [ %62, %64 ], [ %62, %60 ], [ %41, %42 ], [ %25, %23 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %72 = load i64, ptr %71, align 8, !tbaa !29
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %398, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit75, label %79

79:                                               ; preds = %74
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = shl i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #16
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %86, ptr %87, align 8, !tbaa !20
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

90:                                               ; preds = %81
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %92 = load i32, ptr %91, align 8, !tbaa !21
  %93 = icmp eq i32 %92, 0
  %94 = load i32, ptr %82, align 4, !tbaa !19
  br i1 %93, label %96, label %95

95:                                               ; preds = %90
  store i32 %94, ptr %24, align 8, !tbaa !18
  br label %126

96:                                               ; preds = %90
  %97 = zext i32 %94 to i64
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #16
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %98, ptr %99, align 8, !tbaa !22
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  tail call void @free(ptr noundef nonnull %86) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, i8 0, i64 24, i1 false)
  %105 = load i32, ptr %104, align 8, !tbaa !23
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %107 = load i32, ptr %106, align 4, !tbaa !24
  %108 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %105, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %107, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %99, align 8, !tbaa !22
  tail call void @free(ptr noundef %111) #15
  %112 = load ptr, ptr %87, align 8, !tbaa !20
  tail call void @free(ptr noundef %112) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

113:                                              ; preds = %102
  store ptr null, ptr %75, align 8, !tbaa !25
  %114 = load i32, ptr %91, align 8, !tbaa !21
  %115 = load i32, ptr %82, align 4, !tbaa !19
  store i32 %115, ptr %24, align 8, !tbaa !18
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %115, ptr %118, align 8, !tbaa !26
  %119 = load ptr, ptr %99, align 8, !tbaa !22
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %119, ptr %120, align 8, !tbaa !27
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %119, ptr %121, align 8, !tbaa !28
  br label %158

122:                                              ; preds = %79
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %124 = load i32, ptr %123, align 8, !tbaa !21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %158, label %126

126:                                              ; preds = %122, %113, %95
  %127 = load i32, ptr %76, align 8, !tbaa !30
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %.loopexit75, label %129

129:                                              ; preds = %126
  %130 = tail call ptr @__errno_location() #17
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %133 = load ptr, ptr %75, align 8, !tbaa !25
  br label %134

134:                                              ; preds = %151, %129
  %135 = phi ptr [ %133, %129 ], [ %156, %151 ]
  store i32 0, ptr %130, align 4, !tbaa !4
  store i32 0, ptr %131, align 4, !tbaa !17
  %136 = load i32, ptr %76, align 8, !tbaa !30
  %137 = tail call i32 @llvm.umin.i32(i32 %136, i32 1073741824)
  %138 = zext nneg i32 %137 to i64
  %139 = load i32, ptr %132, align 4, !tbaa !31
  %140 = tail call i64 @write(i32 noundef %139, ptr noundef %135, i64 noundef %138) #15
  %141 = trunc i64 %140 to i32
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load i32, ptr %130, align 4, !tbaa !4
  %145 = icmp eq i32 %144, 11
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  store i32 1, ptr %131, align 4, !tbaa !17
  %147 = load i32, ptr %130, align 4, !tbaa !4
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi i32 [ %144, %143 ], [ %147, %146 ]
  %150 = tail call ptr @strerror(i32 noundef %149) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %150) #15
  br label %.loopexit65

151:                                              ; preds = %134
  %152 = load i32, ptr %76, align 8, !tbaa !30
  %153 = sub i32 %152, %141
  store i32 %153, ptr %76, align 8, !tbaa !30
  %154 = load ptr, ptr %75, align 8, !tbaa !25
  %155 = and i64 %140, 2147483647
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  store ptr %156, ptr %75, align 8, !tbaa !25
  %157 = icmp eq i32 %152, %141
  br i1 %157, label %.loopexit75, label %134, !llvm.loop !32

158:                                              ; preds = %122, %117
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %160 = load i32, ptr %159, align 8, !tbaa !34
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %76, align 8, !tbaa !30
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %.loopexit75, label %165

165:                                              ; preds = %162
  %166 = tail call i32 @deflateReset(ptr noundef nonnull %75) #15
  store i32 0, ptr %159, align 8, !tbaa !34
  br label %167

167:                                              ; preds = %165, %158
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %174 = load i32, ptr %168, align 8, !tbaa !26
  br label %175

175:                                              ; preds = %221, %167
  %176 = phi i32 [ %174, %167 ], [ %222, %221 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %175
  %179 = load ptr, ptr %169, align 8, !tbaa !27
  %180 = load ptr, ptr %170, align 8, !tbaa !28
  %181 = icmp ugt ptr %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  %183 = tail call ptr @__errno_location() #17
  br label %184

184:                                              ; preds = %204, %182
  %185 = phi ptr [ %180, %182 ], [ %207, %204 ]
  %186 = phi ptr [ %179, %182 ], [ %208, %204 ]
  store i32 0, ptr %183, align 4, !tbaa !4
  store i32 0, ptr %171, align 4, !tbaa !17
  %187 = ptrtoint ptr %186 to i64
  %188 = ptrtoint ptr %185 to i64
  %189 = sub i64 %187, %188
  %190 = tail call i64 @llvm.smin.i64(i64 %189, i64 1073741824)
  %191 = and i64 %190, 4294967295
  %192 = load i32, ptr %172, align 4, !tbaa !31
  %193 = tail call i64 @write(i32 noundef %192, ptr noundef %185, i64 noundef %191) #15
  %194 = and i64 %193, 2147483648
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %184
  %197 = load i32, ptr %183, align 4, !tbaa !4
  %198 = icmp eq i32 %197, 11
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  store i32 1, ptr %171, align 4, !tbaa !17
  %200 = load i32, ptr %183, align 4, !tbaa !4
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %197, %196 ], [ %200, %199 ]
  %203 = tail call ptr @strerror(i32 noundef %202) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %203) #15
  br label %.loopexit65

204:                                              ; preds = %184
  %205 = load ptr, ptr %170, align 8, !tbaa !28
  %206 = and i64 %193, 2147483647
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %206
  store ptr %207, ptr %170, align 8, !tbaa !28
  %208 = load ptr, ptr %169, align 8, !tbaa !27
  %209 = icmp ugt ptr %208, %207
  br i1 %209, label %184, label %210, !llvm.loop !35

210:                                              ; preds = %204
  %211 = load i32, ptr %168, align 8, !tbaa !26
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %178
  %214 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %214, ptr %168, align 8, !tbaa !26
  %215 = load ptr, ptr %173, align 8, !tbaa !22
  store ptr %215, ptr %169, align 8, !tbaa !27
  store ptr %215, ptr %170, align 8, !tbaa !28
  br label %216

216:                                              ; preds = %213, %210, %175
  %217 = phi i32 [ %211, %210 ], [ %214, %213 ], [ %176, %175 ]
  %218 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #15
  %219 = icmp eq i32 %218, -2
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit65

221:                                              ; preds = %216
  %222 = load i32, ptr %168, align 8, !tbaa !26
  %223 = icmp eq i32 %217, %222
  br i1 %223, label %.loopexit75, label %175, !llvm.loop !36

.loopexit75:                                      ; preds = %151, %221, %162, %126, %74
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %238 = load i64, ptr %71, align 8, !tbaa !29
  br label %239

239:                                              ; preds = %394, %.loopexit75
  %240 = phi i64 [ %238, %.loopexit75 ], [ %390, %394 ]
  %241 = phi i1 [ false, %.loopexit75 ], [ true, %394 ]
  %242 = load i32, ptr %24, align 8, !tbaa !18
  %243 = zext i32 %242 to i64
  %244 = tail call i64 @llvm.smin.i64(i64 %240, i64 %243)
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr %224, align 8, !tbaa !20
  br i1 %241, label %251, label %247

247:                                              ; preds = %239
  %248 = and i64 %244, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %224, align 8, !tbaa !20
  %250 = load i32, ptr %24, align 8, !tbaa !18
  br label %251

251:                                              ; preds = %247, %239
  %252 = phi i32 [ %250, %247 ], [ %242, %239 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %239 ]
  store i32 %245, ptr %76, align 8, !tbaa !30
  store ptr %253, ptr %75, align 8, !tbaa !25
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %251
  %256 = load i32, ptr %226, align 4, !tbaa !19
  %257 = shl i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = tail call noalias ptr @malloc(i64 noundef %258) #16
  store ptr %259, ptr %224, align 8, !tbaa !20
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit72

262:                                              ; preds = %255
  %263 = load i32, ptr %225, align 8, !tbaa !21
  %264 = icmp eq i32 %263, 0
  %265 = load i32, ptr %226, align 4, !tbaa !19
  br i1 %264, label %267, label %266

266:                                              ; preds = %262
  store i32 %265, ptr %24, align 8, !tbaa !18
  br label %289

267:                                              ; preds = %262
  %268 = zext i32 %265 to i64
  %269 = tail call noalias ptr @malloc(i64 noundef %268) #16
  store ptr %269, ptr %227, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  tail call void @free(ptr noundef nonnull %259) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit72

272:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %228, i8 0, i64 24, i1 false)
  %273 = load i32, ptr %229, align 8, !tbaa !23
  %274 = load i32, ptr %230, align 4, !tbaa !24
  %275 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %273, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %274, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %227, align 8, !tbaa !22
  tail call void @free(ptr noundef %278) #15
  %279 = load ptr, ptr %224, align 8, !tbaa !20
  tail call void @free(ptr noundef %279) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit72

280:                                              ; preds = %272
  store ptr null, ptr %75, align 8, !tbaa !25
  %281 = load i32, ptr %225, align 8, !tbaa !21
  %282 = load i32, ptr %226, align 4, !tbaa !19
  store i32 %282, ptr %24, align 8, !tbaa !18
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  store i32 %282, ptr %233, align 8, !tbaa !26
  %285 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %285, ptr %234, align 8, !tbaa !27
  store ptr %285, ptr %235, align 8, !tbaa !28
  br label %319

286:                                              ; preds = %251
  %287 = load i32, ptr %225, align 8, !tbaa !21
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %319, label %289

289:                                              ; preds = %286, %280, %266
  %290 = phi ptr [ %253, %286 ], [ null, %280 ], [ %253, %266 ]
  %291 = load i32, ptr %76, align 8, !tbaa !30
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %.loopexit72, label %293

293:                                              ; preds = %289
  %294 = tail call ptr @__errno_location() #17
  br label %295

295:                                              ; preds = %312, %293
  %296 = phi ptr [ %290, %293 ], [ %317, %312 ]
  store i32 0, ptr %294, align 4, !tbaa !4
  store i32 0, ptr %231, align 4, !tbaa !17
  %297 = load i32, ptr %76, align 8, !tbaa !30
  %298 = tail call i32 @llvm.umin.i32(i32 %297, i32 1073741824)
  %299 = zext nneg i32 %298 to i64
  %300 = load i32, ptr %232, align 4, !tbaa !31
  %301 = tail call i64 @write(i32 noundef %300, ptr noundef %296, i64 noundef %299) #15
  %302 = trunc i64 %301 to i32
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %295
  %305 = load i32, ptr %294, align 4, !tbaa !4
  %306 = icmp eq i32 %305, 11
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  store i32 1, ptr %231, align 4, !tbaa !17
  %308 = load i32, ptr %294, align 4, !tbaa !4
  br label %309

309:                                              ; preds = %307, %304
  %310 = phi i32 [ %305, %304 ], [ %308, %307 ]
  %311 = tail call ptr @strerror(i32 noundef %310) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %311) #15
  br label %.loopexit72

312:                                              ; preds = %295
  %313 = load i32, ptr %76, align 8, !tbaa !30
  %314 = sub i32 %313, %302
  store i32 %314, ptr %76, align 8, !tbaa !30
  %315 = load ptr, ptr %75, align 8, !tbaa !25
  %316 = and i64 %301, 2147483647
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 %316
  store ptr %317, ptr %75, align 8, !tbaa !25
  %318 = icmp eq i32 %313, %302
  br i1 %318, label %.loopexit72, label %295, !llvm.loop !32

319:                                              ; preds = %286, %284
  %320 = load i32, ptr %236, align 8, !tbaa !34
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %76, align 8, !tbaa !30
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %.loopexit72, label %325

325:                                              ; preds = %322
  %326 = tail call i32 @deflateReset(ptr noundef nonnull %75) #15
  store i32 0, ptr %236, align 8, !tbaa !34
  br label %327

327:                                              ; preds = %325, %319
  %328 = load i32, ptr %233, align 8, !tbaa !26
  br label %329

329:                                              ; preds = %375, %327
  %330 = phi i32 [ %328, %327 ], [ %376, %375 ]
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %370

332:                                              ; preds = %329
  %333 = load ptr, ptr %234, align 8, !tbaa !27
  %334 = load ptr, ptr %235, align 8, !tbaa !28
  %335 = icmp ugt ptr %333, %334
  br i1 %335, label %336, label %367

336:                                              ; preds = %332
  %337 = tail call ptr @__errno_location() #17
  br label %338

338:                                              ; preds = %358, %336
  %339 = phi ptr [ %334, %336 ], [ %361, %358 ]
  %340 = phi ptr [ %333, %336 ], [ %362, %358 ]
  store i32 0, ptr %337, align 4, !tbaa !4
  store i32 0, ptr %231, align 4, !tbaa !17
  %341 = ptrtoint ptr %340 to i64
  %342 = ptrtoint ptr %339 to i64
  %343 = sub i64 %341, %342
  %344 = tail call i64 @llvm.smin.i64(i64 %343, i64 1073741824)
  %345 = and i64 %344, 4294967295
  %346 = load i32, ptr %232, align 4, !tbaa !31
  %347 = tail call i64 @write(i32 noundef %346, ptr noundef %339, i64 noundef %345) #15
  %348 = and i64 %347, 2147483648
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %358, label %350

350:                                              ; preds = %338
  %351 = load i32, ptr %337, align 4, !tbaa !4
  %352 = icmp eq i32 %351, 11
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  store i32 1, ptr %231, align 4, !tbaa !17
  %354 = load i32, ptr %337, align 4, !tbaa !4
  br label %355

355:                                              ; preds = %353, %350
  %356 = phi i32 [ %351, %350 ], [ %354, %353 ]
  %357 = tail call ptr @strerror(i32 noundef %356) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %357) #15
  br label %.loopexit72

358:                                              ; preds = %338
  %359 = load ptr, ptr %235, align 8, !tbaa !28
  %360 = and i64 %347, 2147483647
  %361 = getelementptr inbounds nuw i8, ptr %359, i64 %360
  store ptr %361, ptr %235, align 8, !tbaa !28
  %362 = load ptr, ptr %234, align 8, !tbaa !27
  %363 = icmp ugt ptr %362, %361
  br i1 %363, label %338, label %364, !llvm.loop !35

364:                                              ; preds = %358
  %365 = load i32, ptr %233, align 8, !tbaa !26
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364, %332
  %368 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %368, ptr %233, align 8, !tbaa !26
  %369 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %369, ptr %234, align 8, !tbaa !27
  store ptr %369, ptr %235, align 8, !tbaa !28
  br label %370

370:                                              ; preds = %367, %364, %329
  %371 = phi i32 [ %365, %364 ], [ %368, %367 ], [ %330, %329 ]
  %372 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #15
  %373 = icmp eq i32 %372, -2
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit72

375:                                              ; preds = %370
  %376 = load i32, ptr %233, align 8, !tbaa !26
  %377 = icmp eq i32 %371, %376
  br i1 %377, label %.loopexit72, label %329, !llvm.loop !36

.loopexit72:                                      ; preds = %312, %375, %374, %355, %322, %309, %289, %277, %271, %261
  %378 = phi i1 [ false, %322 ], [ true, %309 ], [ false, %289 ], [ true, %271 ], [ true, %355 ], [ true, %374 ], [ false, %375 ], [ true, %261 ], [ true, %277 ], [ false, %312 ]
  %379 = load i32, ptr %76, align 8, !tbaa !30
  %380 = sub i32 %245, %379
  %381 = zext i32 %380 to i64
  %382 = load i64, ptr %237, align 8, !tbaa !37
  %383 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %382, i64 %381), !nosanitize !38
  %384 = extractvalue { i64, i1 } %383, 1, !nosanitize !38
  br i1 %384, label %385, label %386, !prof !39, !nosanitize !38

385:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

386:                                              ; preds = %.loopexit72
  %387 = extractvalue { i64, i1 } %383, 0, !nosanitize !38
  store i64 %387, ptr %237, align 8, !tbaa !37
  %388 = load i64, ptr %71, align 8, !tbaa !29
  %389 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %388, i64 %381), !nosanitize !38
  %390 = extractvalue { i64, i1 } %389, 0, !nosanitize !38
  %391 = extractvalue { i64, i1 } %389, 1, !nosanitize !38
  br i1 %391, label %392, label %393, !prof !39, !nosanitize !38

392:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

393:                                              ; preds = %386
  store i64 %390, ptr %71, align 8, !tbaa !29
  br i1 %378, label %.loopexit65, label %394

394:                                              ; preds = %393
  %395 = icmp eq i64 %390, 0
  br i1 %395, label %396, label %239, !llvm.loop !40

396:                                              ; preds = %394
  %397 = load i32, ptr %24, align 8, !tbaa !18
  br label %398

398:                                              ; preds = %396, %69
  %399 = phi i32 [ %397, %396 ], [ %70, %69 ]
  %400 = icmp ult i32 %2, %399
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %400, label %403, label %584

403:                                              ; preds = %398
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %403
  %418 = phi i64 [ %21, %403 ], [ %451, %.loopexit.backedge ]
  %419 = phi ptr [ %1, %403 ], [ %450, %.loopexit.backedge ]
  %420 = load i32, ptr %402, align 8, !tbaa !41
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %.loopexit
  %423 = load ptr, ptr %401, align 8, !tbaa !42
  %424 = load ptr, ptr %404, align 8, !tbaa !20
  br label %427

425:                                              ; preds = %.loopexit
  %426 = load ptr, ptr %404, align 8, !tbaa !20
  store ptr %426, ptr %401, align 8, !tbaa !42
  br label %427

427:                                              ; preds = %425, %422
  %428 = phi ptr [ %424, %422 ], [ %426, %425 ]
  %429 = phi ptr [ %423, %422 ], [ %426, %425 ]
  %430 = zext i32 %420 to i64
  %431 = getelementptr inbounds nuw i8, ptr %429, i64 %430
  %432 = ptrtoint ptr %431 to i64
  %433 = ptrtoint ptr %428 to i64
  %434 = sub i64 %432, %433
  %435 = trunc i64 %434 to i32
  %436 = load i32, ptr %24, align 8, !tbaa !18
  %437 = sub i32 %436, %435
  %438 = zext i32 %437 to i64
  %439 = tail call i64 @llvm.umin.i64(i64 %418, i64 %438)
  %440 = trunc nuw i64 %439 to i32
  %441 = and i64 %434, 4294967295
  %442 = getelementptr inbounds nuw i8, ptr %428, i64 %441
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %419, i64 %439, i1 false)
  %443 = load i32, ptr %402, align 8, !tbaa !41
  %444 = add i32 %443, %440
  store i32 %444, ptr %402, align 8, !tbaa !41
  %445 = load i64, ptr %405, align 8, !tbaa !37
  %446 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %445, i64 %439), !nosanitize !38
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !38
  br i1 %447, label %.loopexit64, label %448, !prof !39, !nosanitize !38

.loopexit64:                                      ; preds = %.loopexit66, %427
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

448:                                              ; preds = %427
  %449 = extractvalue { i64, i1 } %446, 0, !nosanitize !38
  store i64 %449, ptr %405, align 8, !tbaa !37
  %450 = getelementptr inbounds nuw i8, ptr %419, i64 %439
  %451 = sub i64 %418, %439
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %.loopexit65, label %453

453:                                              ; preds = %448
  %454 = load i32, ptr %24, align 8, !tbaa !18
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %487

456:                                              ; preds = %453
  %457 = load i32, ptr %407, align 4, !tbaa !19
  %458 = shl i32 %457, 1
  %459 = zext i32 %458 to i64
  %460 = tail call noalias ptr @malloc(i64 noundef %459) #16
  store ptr %460, ptr %404, align 8, !tbaa !20
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %463

462:                                              ; preds = %456
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

463:                                              ; preds = %456
  %464 = load i32, ptr %406, align 8, !tbaa !21
  %465 = icmp eq i32 %464, 0
  %466 = load i32, ptr %407, align 4, !tbaa !19
  br i1 %465, label %468, label %467

467:                                              ; preds = %463
  store i32 %466, ptr %24, align 8, !tbaa !18
  br label %490

468:                                              ; preds = %463
  %469 = zext i32 %466 to i64
  %470 = tail call noalias ptr @malloc(i64 noundef %469) #16
  store ptr %470, ptr %408, align 8, !tbaa !22
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  tail call void @free(ptr noundef nonnull %460) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

473:                                              ; preds = %468
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %409, i8 0, i64 24, i1 false)
  %474 = load i32, ptr %410, align 8, !tbaa !23
  %475 = load i32, ptr %411, align 4, !tbaa !24
  %476 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %474, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %475, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %473
  %479 = load ptr, ptr %408, align 8, !tbaa !22
  tail call void @free(ptr noundef %479) #15
  %480 = load ptr, ptr %404, align 8, !tbaa !20
  tail call void @free(ptr noundef %480) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

481:                                              ; preds = %473
  store ptr null, ptr %401, align 8, !tbaa !25
  %482 = load i32, ptr %406, align 8, !tbaa !21
  %483 = load i32, ptr %407, align 4, !tbaa !19
  store i32 %483, ptr %24, align 8, !tbaa !18
  %484 = icmp eq i32 %482, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  store i32 %483, ptr %414, align 8, !tbaa !26
  %486 = load ptr, ptr %408, align 8, !tbaa !22
  store ptr %486, ptr %415, align 8, !tbaa !27
  store ptr %486, ptr %416, align 8, !tbaa !28
  br label %520

487:                                              ; preds = %453
  %488 = load i32, ptr %406, align 8, !tbaa !21
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %520, label %490

490:                                              ; preds = %487, %481, %467
  %491 = load i32, ptr %402, align 8, !tbaa !30
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %.loopexit.backedge, label %493

493:                                              ; preds = %490
  %494 = tail call ptr @__errno_location() #17
  %495 = load ptr, ptr %401, align 8, !tbaa !25
  br label %496

496:                                              ; preds = %513, %493
  %497 = phi ptr [ %495, %493 ], [ %518, %513 ]
  store i32 0, ptr %494, align 4, !tbaa !4
  store i32 0, ptr %412, align 4, !tbaa !17
  %498 = load i32, ptr %402, align 8, !tbaa !30
  %499 = tail call i32 @llvm.umin.i32(i32 %498, i32 1073741824)
  %500 = zext nneg i32 %499 to i64
  %501 = load i32, ptr %413, align 4, !tbaa !31
  %502 = tail call i64 @write(i32 noundef %501, ptr noundef %497, i64 noundef %500) #15
  %503 = trunc i64 %502 to i32
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %496
  %506 = load i32, ptr %494, align 4, !tbaa !4
  %507 = icmp eq i32 %506, 11
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  store i32 1, ptr %412, align 4, !tbaa !17
  %509 = load i32, ptr %494, align 4, !tbaa !4
  br label %510

510:                                              ; preds = %508, %505
  %511 = phi i32 [ %506, %505 ], [ %509, %508 ]
  %512 = tail call ptr @strerror(i32 noundef %511) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %512) #15
  br label %579

513:                                              ; preds = %496
  %514 = load i32, ptr %402, align 8, !tbaa !30
  %515 = sub i32 %514, %503
  store i32 %515, ptr %402, align 8, !tbaa !30
  %516 = load ptr, ptr %401, align 8, !tbaa !25
  %517 = and i64 %502, 2147483647
  %518 = getelementptr inbounds nuw i8, ptr %516, i64 %517
  store ptr %518, ptr %401, align 8, !tbaa !25
  %519 = icmp eq i32 %514, %503
  br i1 %519, label %.loopexit.backedge, label %496, !llvm.loop !32

520:                                              ; preds = %487, %485
  %521 = load i32, ptr %417, align 8, !tbaa !34
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %528, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %402, align 8, !tbaa !30
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %.loopexit.backedge, label %526

.loopexit.backedge:                               ; preds = %513, %576, %523, %490
  br label %.loopexit

526:                                              ; preds = %523
  %527 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %417, align 8, !tbaa !34
  br label %528

528:                                              ; preds = %526, %520
  %529 = load i32, ptr %414, align 8, !tbaa !26
  br label %530

530:                                              ; preds = %576, %528
  %531 = phi i32 [ %529, %528 ], [ %577, %576 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %571

533:                                              ; preds = %530
  %534 = load ptr, ptr %415, align 8, !tbaa !27
  %535 = load ptr, ptr %416, align 8, !tbaa !28
  %536 = icmp ugt ptr %534, %535
  br i1 %536, label %537, label %568

537:                                              ; preds = %533
  %538 = tail call ptr @__errno_location() #17
  br label %539

539:                                              ; preds = %559, %537
  %540 = phi ptr [ %535, %537 ], [ %562, %559 ]
  %541 = phi ptr [ %534, %537 ], [ %563, %559 ]
  store i32 0, ptr %538, align 4, !tbaa !4
  store i32 0, ptr %412, align 4, !tbaa !17
  %542 = ptrtoint ptr %541 to i64
  %543 = ptrtoint ptr %540 to i64
  %544 = sub i64 %542, %543
  %545 = tail call i64 @llvm.smin.i64(i64 %544, i64 1073741824)
  %546 = and i64 %545, 4294967295
  %547 = load i32, ptr %413, align 4, !tbaa !31
  %548 = tail call i64 @write(i32 noundef %547, ptr noundef %540, i64 noundef %546) #15
  %549 = and i64 %548, 2147483648
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %559, label %551

551:                                              ; preds = %539
  %552 = load i32, ptr %538, align 4, !tbaa !4
  %553 = icmp eq i32 %552, 11
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  store i32 1, ptr %412, align 4, !tbaa !17
  %555 = load i32, ptr %538, align 4, !tbaa !4
  br label %556

556:                                              ; preds = %554, %551
  %557 = phi i32 [ %552, %551 ], [ %555, %554 ]
  %558 = tail call ptr @strerror(i32 noundef %557) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %558) #15
  br label %579

559:                                              ; preds = %539
  %560 = load ptr, ptr %416, align 8, !tbaa !28
  %561 = and i64 %548, 2147483647
  %562 = getelementptr inbounds nuw i8, ptr %560, i64 %561
  store ptr %562, ptr %416, align 8, !tbaa !28
  %563 = load ptr, ptr %415, align 8, !tbaa !27
  %564 = icmp ugt ptr %563, %562
  br i1 %564, label %539, label %565, !llvm.loop !35

565:                                              ; preds = %559
  %566 = load i32, ptr %414, align 8, !tbaa !26
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %565, %533
  %569 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %569, ptr %414, align 8, !tbaa !26
  %570 = load ptr, ptr %408, align 8, !tbaa !22
  store ptr %570, ptr %415, align 8, !tbaa !27
  store ptr %570, ptr %416, align 8, !tbaa !28
  br label %571

571:                                              ; preds = %568, %565, %530
  %572 = phi i32 [ %566, %565 ], [ %569, %568 ], [ %531, %530 ]
  %573 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %574 = icmp eq i32 %573, -2
  br i1 %574, label %575, label %576

575:                                              ; preds = %571
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %579

576:                                              ; preds = %571
  %577 = load i32, ptr %414, align 8, !tbaa !26
  %578 = icmp eq i32 %572, %577
  br i1 %578, label %.loopexit.backedge, label %530, !llvm.loop !36

579:                                              ; preds = %575, %556, %510, %478, %472, %462
  %580 = load i32, ptr %412, align 4, !tbaa !17
  %581 = icmp eq i32 %580, 0
  %582 = sub i64 %21, %451
  %583 = select i1 %581, i64 0, i64 %582
  br label %.loopexit65

584:                                              ; preds = %398
  %585 = load i32, ptr %402, align 8, !tbaa !41
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %.loopexit70, label %587

587:                                              ; preds = %584
  %588 = icmp eq i32 %399, 0
  br i1 %588, label %589, label %630

589:                                              ; preds = %587
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %591 = load i32, ptr %590, align 4, !tbaa !19
  %592 = shl i32 %591, 1
  %593 = zext i32 %592 to i64
  %594 = tail call noalias ptr @malloc(i64 noundef %593) #16
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %594, ptr %595, align 8, !tbaa !20
  %596 = icmp eq ptr %594, null
  br i1 %596, label %597, label %598

597:                                              ; preds = %589
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

598:                                              ; preds = %589
  %599 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %600 = load i32, ptr %599, align 8, !tbaa !21
  %601 = icmp eq i32 %600, 0
  %602 = load i32, ptr %590, align 4, !tbaa !19
  br i1 %601, label %604, label %603

603:                                              ; preds = %598
  store i32 %602, ptr %24, align 8, !tbaa !18
  br label %634

604:                                              ; preds = %598
  %605 = zext i32 %602 to i64
  %606 = tail call noalias ptr @malloc(i64 noundef %605) #16
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %606, ptr %607, align 8, !tbaa !22
  %608 = icmp eq ptr %606, null
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  tail call void @free(ptr noundef nonnull %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

610:                                              ; preds = %604
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %611, i8 0, i64 24, i1 false)
  %613 = load i32, ptr %612, align 8, !tbaa !23
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %615 = load i32, ptr %614, align 4, !tbaa !24
  %616 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %613, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %615, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %610
  %619 = load ptr, ptr %607, align 8, !tbaa !22
  tail call void @free(ptr noundef %619) #15
  %620 = load ptr, ptr %595, align 8, !tbaa !20
  tail call void @free(ptr noundef %620) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

621:                                              ; preds = %610
  store ptr null, ptr %401, align 8, !tbaa !25
  %622 = load i32, ptr %599, align 8, !tbaa !21
  %623 = load i32, ptr %590, align 4, !tbaa !19
  store i32 %623, ptr %24, align 8, !tbaa !18
  %624 = icmp eq i32 %622, 0
  br i1 %624, label %625, label %634

625:                                              ; preds = %621
  %626 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %623, ptr %626, align 8, !tbaa !26
  %627 = load ptr, ptr %607, align 8, !tbaa !22
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %627, ptr %628, align 8, !tbaa !27
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %627, ptr %629, align 8, !tbaa !28
  br label %666

630:                                              ; preds = %587
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %632 = load i32, ptr %631, align 8, !tbaa !21
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %666, label %634

634:                                              ; preds = %630, %621, %603
  %635 = load i32, ptr %402, align 8, !tbaa !30
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %.loopexit70, label %637

637:                                              ; preds = %634
  %638 = tail call ptr @__errno_location() #17
  %639 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %641 = load ptr, ptr %401, align 8, !tbaa !25
  br label %642

642:                                              ; preds = %659, %637
  %643 = phi ptr [ %641, %637 ], [ %664, %659 ]
  store i32 0, ptr %638, align 4, !tbaa !4
  store i32 0, ptr %639, align 4, !tbaa !17
  %644 = load i32, ptr %402, align 8, !tbaa !30
  %645 = tail call i32 @llvm.umin.i32(i32 %644, i32 1073741824)
  %646 = zext nneg i32 %645 to i64
  %647 = load i32, ptr %640, align 4, !tbaa !31
  %648 = tail call i64 @write(i32 noundef %647, ptr noundef %643, i64 noundef %646) #15
  %649 = trunc i64 %648 to i32
  %650 = icmp slt i32 %649, 0
  br i1 %650, label %651, label %659

651:                                              ; preds = %642
  %652 = load i32, ptr %638, align 4, !tbaa !4
  %653 = icmp eq i32 %652, 11
  br i1 %653, label %654, label %656

654:                                              ; preds = %651
  store i32 1, ptr %639, align 4, !tbaa !17
  %655 = load i32, ptr %638, align 4, !tbaa !4
  br label %656

656:                                              ; preds = %654, %651
  %657 = phi i32 [ %652, %651 ], [ %655, %654 ]
  %658 = tail call ptr @strerror(i32 noundef %657) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %658) #15
  br label %.loopexit65

659:                                              ; preds = %642
  %660 = load i32, ptr %402, align 8, !tbaa !30
  %661 = sub i32 %660, %649
  store i32 %661, ptr %402, align 8, !tbaa !30
  %662 = load ptr, ptr %401, align 8, !tbaa !25
  %663 = and i64 %648, 2147483647
  %664 = getelementptr inbounds nuw i8, ptr %662, i64 %663
  store ptr %664, ptr %401, align 8, !tbaa !25
  %665 = icmp eq i32 %660, %649
  br i1 %665, label %.loopexit70, label %642, !llvm.loop !32

666:                                              ; preds = %630, %625
  %667 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %668 = load i32, ptr %667, align 8, !tbaa !34
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %675, label %670

670:                                              ; preds = %666
  %671 = load i32, ptr %402, align 8, !tbaa !30
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %.loopexit70, label %673

673:                                              ; preds = %670
  %674 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %667, align 8, !tbaa !34
  br label %675

675:                                              ; preds = %673, %666
  %676 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %678 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %680 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %682 = load i32, ptr %676, align 8, !tbaa !26
  br label %683

683:                                              ; preds = %729, %675
  %684 = phi i32 [ %682, %675 ], [ %730, %729 ]
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %724

686:                                              ; preds = %683
  %687 = load ptr, ptr %677, align 8, !tbaa !27
  %688 = load ptr, ptr %678, align 8, !tbaa !28
  %689 = icmp ugt ptr %687, %688
  br i1 %689, label %690, label %721

690:                                              ; preds = %686
  %691 = tail call ptr @__errno_location() #17
  br label %692

692:                                              ; preds = %712, %690
  %693 = phi ptr [ %688, %690 ], [ %715, %712 ]
  %694 = phi ptr [ %687, %690 ], [ %716, %712 ]
  store i32 0, ptr %691, align 4, !tbaa !4
  store i32 0, ptr %679, align 4, !tbaa !17
  %695 = ptrtoint ptr %694 to i64
  %696 = ptrtoint ptr %693 to i64
  %697 = sub i64 %695, %696
  %698 = tail call i64 @llvm.smin.i64(i64 %697, i64 1073741824)
  %699 = and i64 %698, 4294967295
  %700 = load i32, ptr %680, align 4, !tbaa !31
  %701 = tail call i64 @write(i32 noundef %700, ptr noundef %693, i64 noundef %699) #15
  %702 = and i64 %701, 2147483648
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %712, label %704

704:                                              ; preds = %692
  %705 = load i32, ptr %691, align 4, !tbaa !4
  %706 = icmp eq i32 %705, 11
  br i1 %706, label %707, label %709

707:                                              ; preds = %704
  store i32 1, ptr %679, align 4, !tbaa !17
  %708 = load i32, ptr %691, align 4, !tbaa !4
  br label %709

709:                                              ; preds = %707, %704
  %710 = phi i32 [ %705, %704 ], [ %708, %707 ]
  %711 = tail call ptr @strerror(i32 noundef %710) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %711) #15
  br label %.loopexit65

712:                                              ; preds = %692
  %713 = load ptr, ptr %678, align 8, !tbaa !28
  %714 = and i64 %701, 2147483647
  %715 = getelementptr inbounds nuw i8, ptr %713, i64 %714
  store ptr %715, ptr %678, align 8, !tbaa !28
  %716 = load ptr, ptr %677, align 8, !tbaa !27
  %717 = icmp ugt ptr %716, %715
  br i1 %717, label %692, label %718, !llvm.loop !35

718:                                              ; preds = %712
  %719 = load i32, ptr %676, align 8, !tbaa !26
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %724

721:                                              ; preds = %718, %686
  %722 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %722, ptr %676, align 8, !tbaa !26
  %723 = load ptr, ptr %681, align 8, !tbaa !22
  store ptr %723, ptr %677, align 8, !tbaa !27
  store ptr %723, ptr %678, align 8, !tbaa !28
  br label %724

724:                                              ; preds = %721, %718, %683
  %725 = phi i32 [ %719, %718 ], [ %722, %721 ], [ %684, %683 ]
  %726 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %727 = icmp eq i32 %726, -2
  br i1 %727, label %728, label %729

728:                                              ; preds = %724
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit65

729:                                              ; preds = %724
  %730 = load i32, ptr %676, align 8, !tbaa !26
  %731 = icmp eq i32 %725, %730
  br i1 %731, label %.loopexit70, label %683, !llvm.loop !36

.loopexit70:                                      ; preds = %659, %729, %670, %634, %584
  store ptr %1, ptr %401, align 8, !tbaa !42
  %732 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %736 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %737 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %743 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %745 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %746

746:                                              ; preds = %890, %.loopexit70
  %747 = phi i64 [ %21, %.loopexit70 ], [ %884, %890 ]
  %748 = tail call i64 @llvm.umin.i64(i64 %747, i64 4294967295)
  %749 = trunc nuw i64 %748 to i32
  store i32 %749, ptr %402, align 8, !tbaa !41
  %750 = load i32, ptr %24, align 8, !tbaa !18
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %783

752:                                              ; preds = %746
  %753 = load i32, ptr %733, align 4, !tbaa !19
  %754 = shl i32 %753, 1
  %755 = zext i32 %754 to i64
  %756 = tail call noalias ptr @malloc(i64 noundef %755) #16
  store ptr %756, ptr %734, align 8, !tbaa !20
  %757 = icmp eq ptr %756, null
  br i1 %757, label %758, label %759

758:                                              ; preds = %752
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit66

759:                                              ; preds = %752
  %760 = load i32, ptr %732, align 8, !tbaa !21
  %761 = icmp eq i32 %760, 0
  %762 = load i32, ptr %733, align 4, !tbaa !19
  br i1 %761, label %764, label %763

763:                                              ; preds = %759
  store i32 %762, ptr %24, align 8, !tbaa !18
  br label %786

764:                                              ; preds = %759
  %765 = zext i32 %762 to i64
  %766 = tail call noalias ptr @malloc(i64 noundef %765) #16
  store ptr %766, ptr %735, align 8, !tbaa !22
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %769

768:                                              ; preds = %764
  tail call void @free(ptr noundef nonnull %756) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit66

769:                                              ; preds = %764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %736, i8 0, i64 24, i1 false)
  %770 = load i32, ptr %737, align 8, !tbaa !23
  %771 = load i32, ptr %738, align 4, !tbaa !24
  %772 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %770, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %771, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %777, label %774

774:                                              ; preds = %769
  %775 = load ptr, ptr %735, align 8, !tbaa !22
  tail call void @free(ptr noundef %775) #15
  %776 = load ptr, ptr %734, align 8, !tbaa !20
  tail call void @free(ptr noundef %776) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit66

777:                                              ; preds = %769
  store ptr null, ptr %401, align 8, !tbaa !25
  %778 = load i32, ptr %732, align 8, !tbaa !21
  %779 = load i32, ptr %733, align 4, !tbaa !19
  store i32 %779, ptr %24, align 8, !tbaa !18
  %780 = icmp eq i32 %778, 0
  br i1 %780, label %781, label %786

781:                                              ; preds = %777
  store i32 %779, ptr %741, align 8, !tbaa !26
  %782 = load ptr, ptr %735, align 8, !tbaa !22
  store ptr %782, ptr %742, align 8, !tbaa !27
  store ptr %782, ptr %743, align 8, !tbaa !28
  br label %816

783:                                              ; preds = %746
  %784 = load i32, ptr %732, align 8, !tbaa !21
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %816, label %786

786:                                              ; preds = %783, %777, %763
  %787 = load i32, ptr %402, align 8, !tbaa !30
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %.loopexit66, label %789

789:                                              ; preds = %786
  %790 = tail call ptr @__errno_location() #17
  %791 = load ptr, ptr %401, align 8, !tbaa !25
  br label %792

792:                                              ; preds = %809, %789
  %793 = phi ptr [ %791, %789 ], [ %814, %809 ]
  store i32 0, ptr %790, align 4, !tbaa !4
  store i32 0, ptr %739, align 4, !tbaa !17
  %794 = load i32, ptr %402, align 8, !tbaa !30
  %795 = tail call i32 @llvm.umin.i32(i32 %794, i32 1073741824)
  %796 = zext nneg i32 %795 to i64
  %797 = load i32, ptr %740, align 4, !tbaa !31
  %798 = tail call i64 @write(i32 noundef %797, ptr noundef %793, i64 noundef %796) #15
  %799 = trunc i64 %798 to i32
  %800 = icmp slt i32 %799, 0
  br i1 %800, label %801, label %809

801:                                              ; preds = %792
  %802 = load i32, ptr %790, align 4, !tbaa !4
  %803 = icmp eq i32 %802, 11
  br i1 %803, label %804, label %806

804:                                              ; preds = %801
  store i32 1, ptr %739, align 4, !tbaa !17
  %805 = load i32, ptr %790, align 4, !tbaa !4
  br label %806

806:                                              ; preds = %804, %801
  %807 = phi i32 [ %802, %801 ], [ %805, %804 ]
  %808 = tail call ptr @strerror(i32 noundef %807) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %808) #15
  br label %.loopexit66

809:                                              ; preds = %792
  %810 = load i32, ptr %402, align 8, !tbaa !30
  %811 = sub i32 %810, %799
  store i32 %811, ptr %402, align 8, !tbaa !30
  %812 = load ptr, ptr %401, align 8, !tbaa !25
  %813 = and i64 %798, 2147483647
  %814 = getelementptr inbounds nuw i8, ptr %812, i64 %813
  store ptr %814, ptr %401, align 8, !tbaa !25
  %815 = icmp eq i32 %810, %799
  br i1 %815, label %.loopexit66, label %792, !llvm.loop !32

816:                                              ; preds = %783, %781
  %817 = load i32, ptr %744, align 8, !tbaa !34
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %824, label %819

819:                                              ; preds = %816
  %820 = load i32, ptr %402, align 8, !tbaa !30
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %.loopexit66, label %822

822:                                              ; preds = %819
  %823 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %744, align 8, !tbaa !34
  br label %824

824:                                              ; preds = %822, %816
  %825 = load i32, ptr %741, align 8, !tbaa !26
  br label %826

826:                                              ; preds = %872, %824
  %827 = phi i32 [ %825, %824 ], [ %873, %872 ]
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %867

829:                                              ; preds = %826
  %830 = load ptr, ptr %742, align 8, !tbaa !27
  %831 = load ptr, ptr %743, align 8, !tbaa !28
  %832 = icmp ugt ptr %830, %831
  br i1 %832, label %833, label %864

833:                                              ; preds = %829
  %834 = tail call ptr @__errno_location() #17
  br label %835

835:                                              ; preds = %855, %833
  %836 = phi ptr [ %831, %833 ], [ %858, %855 ]
  %837 = phi ptr [ %830, %833 ], [ %859, %855 ]
  store i32 0, ptr %834, align 4, !tbaa !4
  store i32 0, ptr %739, align 4, !tbaa !17
  %838 = ptrtoint ptr %837 to i64
  %839 = ptrtoint ptr %836 to i64
  %840 = sub i64 %838, %839
  %841 = tail call i64 @llvm.smin.i64(i64 %840, i64 1073741824)
  %842 = and i64 %841, 4294967295
  %843 = load i32, ptr %740, align 4, !tbaa !31
  %844 = tail call i64 @write(i32 noundef %843, ptr noundef %836, i64 noundef %842) #15
  %845 = and i64 %844, 2147483648
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %855, label %847

847:                                              ; preds = %835
  %848 = load i32, ptr %834, align 4, !tbaa !4
  %849 = icmp eq i32 %848, 11
  br i1 %849, label %850, label %852

850:                                              ; preds = %847
  store i32 1, ptr %739, align 4, !tbaa !17
  %851 = load i32, ptr %834, align 4, !tbaa !4
  br label %852

852:                                              ; preds = %850, %847
  %853 = phi i32 [ %848, %847 ], [ %851, %850 ]
  %854 = tail call ptr @strerror(i32 noundef %853) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %854) #15
  br label %.loopexit66

855:                                              ; preds = %835
  %856 = load ptr, ptr %743, align 8, !tbaa !28
  %857 = and i64 %844, 2147483647
  %858 = getelementptr inbounds nuw i8, ptr %856, i64 %857
  store ptr %858, ptr %743, align 8, !tbaa !28
  %859 = load ptr, ptr %742, align 8, !tbaa !27
  %860 = icmp ugt ptr %859, %858
  br i1 %860, label %835, label %861, !llvm.loop !35

861:                                              ; preds = %855
  %862 = load i32, ptr %741, align 8, !tbaa !26
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %867

864:                                              ; preds = %861, %829
  %865 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %865, ptr %741, align 8, !tbaa !26
  %866 = load ptr, ptr %735, align 8, !tbaa !22
  store ptr %866, ptr %742, align 8, !tbaa !27
  store ptr %866, ptr %743, align 8, !tbaa !28
  br label %867

867:                                              ; preds = %864, %861, %826
  %868 = phi i32 [ %862, %861 ], [ %865, %864 ], [ %827, %826 ]
  %869 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %870 = icmp eq i32 %869, -2
  br i1 %870, label %871, label %872

871:                                              ; preds = %867
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit66

872:                                              ; preds = %867
  %873 = load i32, ptr %741, align 8, !tbaa !26
  %874 = icmp eq i32 %868, %873
  br i1 %874, label %.loopexit66, label %826, !llvm.loop !36

.loopexit66:                                      ; preds = %809, %872, %871, %852, %819, %806, %786, %774, %768, %758
  %875 = phi i1 [ false, %819 ], [ true, %806 ], [ false, %786 ], [ true, %768 ], [ true, %852 ], [ true, %871 ], [ false, %872 ], [ true, %758 ], [ true, %774 ], [ false, %809 ]
  %876 = load i32, ptr %402, align 8, !tbaa !41
  %877 = sub i32 %749, %876
  %878 = zext i32 %877 to i64
  %879 = load i64, ptr %745, align 8, !tbaa !37
  %880 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %879, i64 %878), !nosanitize !38
  %881 = extractvalue { i64, i1 } %880, 1, !nosanitize !38
  br i1 %881, label %.loopexit64, label %882, !prof !39, !nosanitize !38

882:                                              ; preds = %.loopexit66
  %883 = extractvalue { i64, i1 } %880, 0, !nosanitize !38
  store i64 %883, ptr %745, align 8, !tbaa !37
  %884 = sub i64 %747, %878
  br i1 %875, label %885, label %890

885:                                              ; preds = %882
  %886 = load i32, ptr %739, align 4, !tbaa !17
  %887 = icmp eq i32 %886, 0
  %888 = sub i64 %21, %884
  %889 = select i1 %887, i64 0, i64 %888
  br label %.loopexit65

890:                                              ; preds = %882
  %891 = icmp eq i64 %884, 0
  br i1 %891, label %.loopexit65, label %746, !llvm.loop !43

.loopexit65:                                      ; preds = %393, %890, %448, %885, %728, %709, %656, %618, %609, %597, %579, %220, %201, %148, %110, %101, %89, %57, %48, %36, %20
  %892 = phi i64 [ %889, %885 ], [ 0, %20 ], [ %21, %890 ], [ %583, %579 ], [ 0, %618 ], [ 0, %48 ], [ %21, %448 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %201 ], [ 0, %220 ], [ 0, %656 ], [ 0, %609 ], [ 0, %709 ], [ 0, %728 ], [ 0, %597 ], [ 0, %393 ]
  %893 = trunc i64 %892 to i32
  br label %894

894:                                              ; preds = %.loopexit65, %19, %13, %5, %3
  %895 = phi i32 [ %893, %.loopexit65 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %895
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %899, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %899

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %899, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #15
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = extractvalue { i64, i1 } %19, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #15
  br label %899

25:                                               ; preds = %22, %18
  %26 = icmp eq i64 %20, 0
  br i1 %26, label %899, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = shl i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #16
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %37, ptr %38, align 8, !tbaa !20
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

41:                                               ; preds = %31
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %43 = load i32, ptr %42, align 8, !tbaa !21
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr %33, align 4, !tbaa !19
  br i1 %44, label %47, label %46

46:                                               ; preds = %41
  store i32 %45, ptr %28, align 8, !tbaa !18
  br label %73

47:                                               ; preds = %41
  %48 = zext i32 %45 to i64
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #16
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %49, ptr %50, align 8, !tbaa !22
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %37) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %56 = load i32, ptr %55, align 8, !tbaa !23
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %58 = load i32, ptr %57, align 4, !tbaa !24
  %59 = tail call i32 @deflateInit2_(ptr noundef nonnull %32, i32 noundef %56, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %58, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %50, align 8, !tbaa !22
  tail call void @free(ptr noundef %62) #15
  %63 = load ptr, ptr %38, align 8, !tbaa !20
  tail call void @free(ptr noundef %63) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

64:                                               ; preds = %53
  store ptr null, ptr %32, align 8, !tbaa !25
  %65 = load i32, ptr %42, align 8, !tbaa !21
  %66 = load i32, ptr %33, align 4, !tbaa !19
  store i32 %66, ptr %28, align 8, !tbaa !18
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %66, ptr %69, align 8, !tbaa !26
  %70 = load ptr, ptr %50, align 8, !tbaa !22
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %70, ptr %71, align 8, !tbaa !27
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %70, ptr %72, align 8, !tbaa !28
  br label %73

73:                                               ; preds = %68, %64, %46, %27
  %74 = phi i32 [ %66, %68 ], [ %66, %64 ], [ %45, %46 ], [ %29, %27 ]
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %76 = load i64, ptr %75, align 8, !tbaa !29
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %402, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %81 = load i32, ptr %80, align 8, !tbaa !30
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %.loopexit74, label %83

83:                                               ; preds = %78
  %84 = icmp eq i32 %74, 0
  br i1 %84, label %85, label %126

85:                                               ; preds = %83
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %87 = load i32, ptr %86, align 4, !tbaa !19
  %88 = shl i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #16
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !20
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

94:                                               ; preds = %85
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %96 = load i32, ptr %95, align 8, !tbaa !21
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr %86, align 4, !tbaa !19
  br i1 %97, label %100, label %99

99:                                               ; preds = %94
  store i32 %98, ptr %28, align 8, !tbaa !18
  br label %130

100:                                              ; preds = %94
  %101 = zext i32 %98 to i64
  %102 = tail call noalias ptr @malloc(i64 noundef %101) #16
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %102, ptr %103, align 8, !tbaa !22
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @free(ptr noundef nonnull %90) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %107, i8 0, i64 24, i1 false)
  %109 = load i32, ptr %108, align 8, !tbaa !23
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %109, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %111, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr %103, align 8, !tbaa !22
  tail call void @free(ptr noundef %115) #15
  %116 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @free(ptr noundef %116) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

117:                                              ; preds = %106
  store ptr null, ptr %79, align 8, !tbaa !25
  %118 = load i32, ptr %95, align 8, !tbaa !21
  %119 = load i32, ptr %86, align 4, !tbaa !19
  store i32 %119, ptr %28, align 8, !tbaa !18
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %119, ptr %122, align 8, !tbaa !26
  %123 = load ptr, ptr %103, align 8, !tbaa !22
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %123, ptr %124, align 8, !tbaa !27
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %123, ptr %125, align 8, !tbaa !28
  br label %162

126:                                              ; preds = %83
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %128 = load i32, ptr %127, align 8, !tbaa !21
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %162, label %130

130:                                              ; preds = %126, %117, %99
  %131 = load i32, ptr %80, align 8, !tbaa !30
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %.loopexit74, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @__errno_location() #17
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %137 = load ptr, ptr %79, align 8, !tbaa !25
  br label %138

138:                                              ; preds = %155, %133
  %139 = phi ptr [ %137, %133 ], [ %160, %155 ]
  store i32 0, ptr %134, align 4, !tbaa !4
  store i32 0, ptr %135, align 4, !tbaa !17
  %140 = load i32, ptr %80, align 8, !tbaa !30
  %141 = tail call i32 @llvm.umin.i32(i32 %140, i32 1073741824)
  %142 = zext nneg i32 %141 to i64
  %143 = load i32, ptr %136, align 4, !tbaa !31
  %144 = tail call i64 @write(i32 noundef %143, ptr noundef %139, i64 noundef %142) #15
  %145 = trunc i64 %144 to i32
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %138
  %148 = load i32, ptr %134, align 4, !tbaa !4
  %149 = icmp eq i32 %148, 11
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  store i32 1, ptr %135, align 4, !tbaa !17
  %151 = load i32, ptr %134, align 4, !tbaa !4
  br label %152

152:                                              ; preds = %150, %147
  %153 = phi i32 [ %148, %147 ], [ %151, %150 ]
  %154 = tail call ptr @strerror(i32 noundef %153) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %154) #15
  br label %.loopexit64

155:                                              ; preds = %138
  %156 = load i32, ptr %80, align 8, !tbaa !30
  %157 = sub i32 %156, %145
  store i32 %157, ptr %80, align 8, !tbaa !30
  %158 = load ptr, ptr %79, align 8, !tbaa !25
  %159 = and i64 %144, 2147483647
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store ptr %160, ptr %79, align 8, !tbaa !25
  %161 = icmp eq i32 %156, %145
  br i1 %161, label %.loopexit74, label %138, !llvm.loop !32

162:                                              ; preds = %126, %121
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %164 = load i32, ptr %163, align 8, !tbaa !34
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %80, align 8, !tbaa !30
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %.loopexit74, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @deflateReset(ptr noundef nonnull %79) #15
  store i32 0, ptr %163, align 8, !tbaa !34
  br label %171

171:                                              ; preds = %169, %162
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %178 = load i32, ptr %172, align 8, !tbaa !26
  br label %179

179:                                              ; preds = %225, %171
  %180 = phi i32 [ %178, %171 ], [ %226, %225 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %220

182:                                              ; preds = %179
  %183 = load ptr, ptr %173, align 8, !tbaa !27
  %184 = load ptr, ptr %174, align 8, !tbaa !28
  %185 = icmp ugt ptr %183, %184
  br i1 %185, label %186, label %217

186:                                              ; preds = %182
  %187 = tail call ptr @__errno_location() #17
  br label %188

188:                                              ; preds = %208, %186
  %189 = phi ptr [ %184, %186 ], [ %211, %208 ]
  %190 = phi ptr [ %183, %186 ], [ %212, %208 ]
  store i32 0, ptr %187, align 4, !tbaa !4
  store i32 0, ptr %175, align 4, !tbaa !17
  %191 = ptrtoint ptr %190 to i64
  %192 = ptrtoint ptr %189 to i64
  %193 = sub i64 %191, %192
  %194 = tail call i64 @llvm.smin.i64(i64 %193, i64 1073741824)
  %195 = and i64 %194, 4294967295
  %196 = load i32, ptr %176, align 4, !tbaa !31
  %197 = tail call i64 @write(i32 noundef %196, ptr noundef %189, i64 noundef %195) #15
  %198 = and i64 %197, 2147483648
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %188
  %201 = load i32, ptr %187, align 4, !tbaa !4
  %202 = icmp eq i32 %201, 11
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  store i32 1, ptr %175, align 4, !tbaa !17
  %204 = load i32, ptr %187, align 4, !tbaa !4
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i32 [ %201, %200 ], [ %204, %203 ]
  %207 = tail call ptr @strerror(i32 noundef %206) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %207) #15
  br label %.loopexit64

208:                                              ; preds = %188
  %209 = load ptr, ptr %174, align 8, !tbaa !28
  %210 = and i64 %197, 2147483647
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  store ptr %211, ptr %174, align 8, !tbaa !28
  %212 = load ptr, ptr %173, align 8, !tbaa !27
  %213 = icmp ugt ptr %212, %211
  br i1 %213, label %188, label %214, !llvm.loop !35

214:                                              ; preds = %208
  %215 = load i32, ptr %172, align 8, !tbaa !26
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214, %182
  %218 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %218, ptr %172, align 8, !tbaa !26
  %219 = load ptr, ptr %177, align 8, !tbaa !22
  store ptr %219, ptr %173, align 8, !tbaa !27
  store ptr %219, ptr %174, align 8, !tbaa !28
  br label %220

220:                                              ; preds = %217, %214, %179
  %221 = phi i32 [ %215, %214 ], [ %218, %217 ], [ %180, %179 ]
  %222 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #15
  %223 = icmp eq i32 %222, -2
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit64

225:                                              ; preds = %220
  %226 = load i32, ptr %172, align 8, !tbaa !26
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %.loopexit74, label %179, !llvm.loop !36

.loopexit74:                                      ; preds = %155, %225, %166, %130, %78
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %242 = load i64, ptr %75, align 8, !tbaa !29
  br label %243

243:                                              ; preds = %398, %.loopexit74
  %244 = phi i64 [ %242, %.loopexit74 ], [ %394, %398 ]
  %245 = phi i1 [ false, %.loopexit74 ], [ true, %398 ]
  %246 = load i32, ptr %28, align 8, !tbaa !18
  %247 = zext i32 %246 to i64
  %248 = tail call i64 @llvm.smin.i64(i64 %244, i64 %247)
  %249 = trunc i64 %248 to i32
  %250 = load ptr, ptr %228, align 8, !tbaa !20
  br i1 %245, label %255, label %251

251:                                              ; preds = %243
  %252 = and i64 %248, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %250, i8 0, i64 %252, i1 false)
  %253 = load ptr, ptr %228, align 8, !tbaa !20
  %254 = load i32, ptr %28, align 8, !tbaa !18
  br label %255

255:                                              ; preds = %251, %243
  %256 = phi i32 [ %254, %251 ], [ %246, %243 ]
  %257 = phi ptr [ %253, %251 ], [ %250, %243 ]
  store i32 %249, ptr %80, align 8, !tbaa !30
  store ptr %257, ptr %79, align 8, !tbaa !25
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %259, label %290

259:                                              ; preds = %255
  %260 = load i32, ptr %230, align 4, !tbaa !19
  %261 = shl i32 %260, 1
  %262 = zext i32 %261 to i64
  %263 = tail call noalias ptr @malloc(i64 noundef %262) #16
  store ptr %263, ptr %228, align 8, !tbaa !20
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

266:                                              ; preds = %259
  %267 = load i32, ptr %229, align 8, !tbaa !21
  %268 = icmp eq i32 %267, 0
  %269 = load i32, ptr %230, align 4, !tbaa !19
  br i1 %268, label %271, label %270

270:                                              ; preds = %266
  store i32 %269, ptr %28, align 8, !tbaa !18
  br label %293

271:                                              ; preds = %266
  %272 = zext i32 %269 to i64
  %273 = tail call noalias ptr @malloc(i64 noundef %272) #16
  store ptr %273, ptr %231, align 8, !tbaa !22
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  tail call void @free(ptr noundef nonnull %263) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

276:                                              ; preds = %271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %232, i8 0, i64 24, i1 false)
  %277 = load i32, ptr %233, align 8, !tbaa !23
  %278 = load i32, ptr %234, align 4, !tbaa !24
  %279 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %277, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %278, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %231, align 8, !tbaa !22
  tail call void @free(ptr noundef %282) #15
  %283 = load ptr, ptr %228, align 8, !tbaa !20
  tail call void @free(ptr noundef %283) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

284:                                              ; preds = %276
  store ptr null, ptr %79, align 8, !tbaa !25
  %285 = load i32, ptr %229, align 8, !tbaa !21
  %286 = load i32, ptr %230, align 4, !tbaa !19
  store i32 %286, ptr %28, align 8, !tbaa !18
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  store i32 %286, ptr %237, align 8, !tbaa !26
  %289 = load ptr, ptr %231, align 8, !tbaa !22
  store ptr %289, ptr %238, align 8, !tbaa !27
  store ptr %289, ptr %239, align 8, !tbaa !28
  br label %323

290:                                              ; preds = %255
  %291 = load i32, ptr %229, align 8, !tbaa !21
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %323, label %293

293:                                              ; preds = %290, %284, %270
  %294 = phi ptr [ %257, %290 ], [ null, %284 ], [ %257, %270 ]
  %295 = load i32, ptr %80, align 8, !tbaa !30
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %.loopexit71, label %297

297:                                              ; preds = %293
  %298 = tail call ptr @__errno_location() #17
  br label %299

299:                                              ; preds = %316, %297
  %300 = phi ptr [ %294, %297 ], [ %321, %316 ]
  store i32 0, ptr %298, align 4, !tbaa !4
  store i32 0, ptr %235, align 4, !tbaa !17
  %301 = load i32, ptr %80, align 8, !tbaa !30
  %302 = tail call i32 @llvm.umin.i32(i32 %301, i32 1073741824)
  %303 = zext nneg i32 %302 to i64
  %304 = load i32, ptr %236, align 4, !tbaa !31
  %305 = tail call i64 @write(i32 noundef %304, ptr noundef %300, i64 noundef %303) #15
  %306 = trunc i64 %305 to i32
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %299
  %309 = load i32, ptr %298, align 4, !tbaa !4
  %310 = icmp eq i32 %309, 11
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  store i32 1, ptr %235, align 4, !tbaa !17
  %312 = load i32, ptr %298, align 4, !tbaa !4
  br label %313

313:                                              ; preds = %311, %308
  %314 = phi i32 [ %309, %308 ], [ %312, %311 ]
  %315 = tail call ptr @strerror(i32 noundef %314) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %315) #15
  br label %.loopexit71

316:                                              ; preds = %299
  %317 = load i32, ptr %80, align 8, !tbaa !30
  %318 = sub i32 %317, %306
  store i32 %318, ptr %80, align 8, !tbaa !30
  %319 = load ptr, ptr %79, align 8, !tbaa !25
  %320 = and i64 %305, 2147483647
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 %320
  store ptr %321, ptr %79, align 8, !tbaa !25
  %322 = icmp eq i32 %317, %306
  br i1 %322, label %.loopexit71, label %299, !llvm.loop !32

323:                                              ; preds = %290, %288
  %324 = load i32, ptr %240, align 8, !tbaa !34
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %323
  %327 = load i32, ptr %80, align 8, !tbaa !30
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %.loopexit71, label %329

329:                                              ; preds = %326
  %330 = tail call i32 @deflateReset(ptr noundef nonnull %79) #15
  store i32 0, ptr %240, align 8, !tbaa !34
  br label %331

331:                                              ; preds = %329, %323
  %332 = load i32, ptr %237, align 8, !tbaa !26
  br label %333

333:                                              ; preds = %379, %331
  %334 = phi i32 [ %332, %331 ], [ %380, %379 ]
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %374

336:                                              ; preds = %333
  %337 = load ptr, ptr %238, align 8, !tbaa !27
  %338 = load ptr, ptr %239, align 8, !tbaa !28
  %339 = icmp ugt ptr %337, %338
  br i1 %339, label %340, label %371

340:                                              ; preds = %336
  %341 = tail call ptr @__errno_location() #17
  br label %342

342:                                              ; preds = %362, %340
  %343 = phi ptr [ %338, %340 ], [ %365, %362 ]
  %344 = phi ptr [ %337, %340 ], [ %366, %362 ]
  store i32 0, ptr %341, align 4, !tbaa !4
  store i32 0, ptr %235, align 4, !tbaa !17
  %345 = ptrtoint ptr %344 to i64
  %346 = ptrtoint ptr %343 to i64
  %347 = sub i64 %345, %346
  %348 = tail call i64 @llvm.smin.i64(i64 %347, i64 1073741824)
  %349 = and i64 %348, 4294967295
  %350 = load i32, ptr %236, align 4, !tbaa !31
  %351 = tail call i64 @write(i32 noundef %350, ptr noundef %343, i64 noundef %349) #15
  %352 = and i64 %351, 2147483648
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %342
  %355 = load i32, ptr %341, align 4, !tbaa !4
  %356 = icmp eq i32 %355, 11
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  store i32 1, ptr %235, align 4, !tbaa !17
  %358 = load i32, ptr %341, align 4, !tbaa !4
  br label %359

359:                                              ; preds = %357, %354
  %360 = phi i32 [ %355, %354 ], [ %358, %357 ]
  %361 = tail call ptr @strerror(i32 noundef %360) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %361) #15
  br label %.loopexit71

362:                                              ; preds = %342
  %363 = load ptr, ptr %239, align 8, !tbaa !28
  %364 = and i64 %351, 2147483647
  %365 = getelementptr inbounds nuw i8, ptr %363, i64 %364
  store ptr %365, ptr %239, align 8, !tbaa !28
  %366 = load ptr, ptr %238, align 8, !tbaa !27
  %367 = icmp ugt ptr %366, %365
  br i1 %367, label %342, label %368, !llvm.loop !35

368:                                              ; preds = %362
  %369 = load i32, ptr %237, align 8, !tbaa !26
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %368, %336
  %372 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %372, ptr %237, align 8, !tbaa !26
  %373 = load ptr, ptr %231, align 8, !tbaa !22
  store ptr %373, ptr %238, align 8, !tbaa !27
  store ptr %373, ptr %239, align 8, !tbaa !28
  br label %374

374:                                              ; preds = %371, %368, %333
  %375 = phi i32 [ %369, %368 ], [ %372, %371 ], [ %334, %333 ]
  %376 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #15
  %377 = icmp eq i32 %376, -2
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit71

379:                                              ; preds = %374
  %380 = load i32, ptr %237, align 8, !tbaa !26
  %381 = icmp eq i32 %375, %380
  br i1 %381, label %.loopexit71, label %333, !llvm.loop !36

.loopexit71:                                      ; preds = %316, %379, %378, %359, %326, %313, %293, %281, %275, %265
  %382 = phi i1 [ false, %326 ], [ true, %313 ], [ false, %293 ], [ true, %275 ], [ true, %359 ], [ true, %378 ], [ false, %379 ], [ true, %265 ], [ true, %281 ], [ false, %316 ]
  %383 = load i32, ptr %80, align 8, !tbaa !30
  %384 = sub i32 %249, %383
  %385 = zext i32 %384 to i64
  %386 = load i64, ptr %241, align 8, !tbaa !37
  %387 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %386, i64 %385), !nosanitize !38
  %388 = extractvalue { i64, i1 } %387, 1, !nosanitize !38
  br i1 %388, label %389, label %390, !prof !39, !nosanitize !38

389:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

390:                                              ; preds = %.loopexit71
  %391 = extractvalue { i64, i1 } %387, 0, !nosanitize !38
  store i64 %391, ptr %241, align 8, !tbaa !37
  %392 = load i64, ptr %75, align 8, !tbaa !29
  %393 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %392, i64 %385), !nosanitize !38
  %394 = extractvalue { i64, i1 } %393, 0, !nosanitize !38
  %395 = extractvalue { i64, i1 } %393, 1, !nosanitize !38
  br i1 %395, label %396, label %397, !prof !39, !nosanitize !38

396:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

397:                                              ; preds = %390
  store i64 %394, ptr %75, align 8, !tbaa !29
  br i1 %382, label %.loopexit64, label %398

398:                                              ; preds = %397
  %399 = icmp eq i64 %394, 0
  br i1 %399, label %400, label %243, !llvm.loop !40

400:                                              ; preds = %398
  %401 = load i32, ptr %28, align 8, !tbaa !18
  br label %402

402:                                              ; preds = %400, %73
  %403 = phi i32 [ %401, %400 ], [ %74, %73 ]
  %404 = zext i32 %403 to i64
  %405 = icmp ult i64 %20, %404
  %406 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %407 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %405, label %408, label %589

408:                                              ; preds = %402
  %409 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %410 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %411 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %413 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %414 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %415 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %416 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %417 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %419 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %420 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %408
  %423 = phi i64 [ %20, %408 ], [ %456, %.loopexit.backedge ]
  %424 = phi ptr [ %0, %408 ], [ %455, %.loopexit.backedge ]
  %425 = load i32, ptr %407, align 8, !tbaa !41
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %.loopexit
  %428 = load ptr, ptr %406, align 8, !tbaa !42
  %429 = load ptr, ptr %409, align 8, !tbaa !20
  br label %432

430:                                              ; preds = %.loopexit
  %431 = load ptr, ptr %409, align 8, !tbaa !20
  store ptr %431, ptr %406, align 8, !tbaa !42
  br label %432

432:                                              ; preds = %430, %427
  %433 = phi ptr [ %429, %427 ], [ %431, %430 ]
  %434 = phi ptr [ %428, %427 ], [ %431, %430 ]
  %435 = zext i32 %425 to i64
  %436 = getelementptr inbounds nuw i8, ptr %434, i64 %435
  %437 = ptrtoint ptr %436 to i64
  %438 = ptrtoint ptr %433 to i64
  %439 = sub i64 %437, %438
  %440 = trunc i64 %439 to i32
  %441 = load i32, ptr %28, align 8, !tbaa !18
  %442 = sub i32 %441, %440
  %443 = zext i32 %442 to i64
  %444 = tail call i64 @llvm.umin.i64(i64 %423, i64 %443)
  %445 = trunc nuw i64 %444 to i32
  %446 = and i64 %439, 4294967295
  %447 = getelementptr inbounds nuw i8, ptr %433, i64 %446
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %447, ptr align 1 %424, i64 %444, i1 false)
  %448 = load i32, ptr %407, align 8, !tbaa !41
  %449 = add i32 %448, %445
  store i32 %449, ptr %407, align 8, !tbaa !41
  %450 = load i64, ptr %410, align 8, !tbaa !37
  %451 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %450, i64 %444), !nosanitize !38
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !38
  br i1 %452, label %.loopexit63, label %453, !prof !39, !nosanitize !38

.loopexit63:                                      ; preds = %.loopexit65, %432
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

453:                                              ; preds = %432
  %454 = extractvalue { i64, i1 } %451, 0, !nosanitize !38
  store i64 %454, ptr %410, align 8, !tbaa !37
  %455 = getelementptr inbounds nuw i8, ptr %424, i64 %444
  %456 = sub i64 %423, %444
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %.loopexit64, label %458

458:                                              ; preds = %453
  %459 = load i32, ptr %28, align 8, !tbaa !18
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %492

461:                                              ; preds = %458
  %462 = load i32, ptr %412, align 4, !tbaa !19
  %463 = shl i32 %462, 1
  %464 = zext i32 %463 to i64
  %465 = tail call noalias ptr @malloc(i64 noundef %464) #16
  store ptr %465, ptr %409, align 8, !tbaa !20
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %468

467:                                              ; preds = %461
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %584

468:                                              ; preds = %461
  %469 = load i32, ptr %411, align 8, !tbaa !21
  %470 = icmp eq i32 %469, 0
  %471 = load i32, ptr %412, align 4, !tbaa !19
  br i1 %470, label %473, label %472

472:                                              ; preds = %468
  store i32 %471, ptr %28, align 8, !tbaa !18
  br label %495

473:                                              ; preds = %468
  %474 = zext i32 %471 to i64
  %475 = tail call noalias ptr @malloc(i64 noundef %474) #16
  store ptr %475, ptr %413, align 8, !tbaa !22
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  tail call void @free(ptr noundef nonnull %465) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %584

478:                                              ; preds = %473
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %414, i8 0, i64 24, i1 false)
  %479 = load i32, ptr %415, align 8, !tbaa !23
  %480 = load i32, ptr %416, align 4, !tbaa !24
  %481 = tail call i32 @deflateInit2_(ptr noundef nonnull %406, i32 noundef %479, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %480, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %478
  %484 = load ptr, ptr %413, align 8, !tbaa !22
  tail call void @free(ptr noundef %484) #15
  %485 = load ptr, ptr %409, align 8, !tbaa !20
  tail call void @free(ptr noundef %485) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %584

486:                                              ; preds = %478
  store ptr null, ptr %406, align 8, !tbaa !25
  %487 = load i32, ptr %411, align 8, !tbaa !21
  %488 = load i32, ptr %412, align 4, !tbaa !19
  store i32 %488, ptr %28, align 8, !tbaa !18
  %489 = icmp eq i32 %487, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %486
  store i32 %488, ptr %419, align 8, !tbaa !26
  %491 = load ptr, ptr %413, align 8, !tbaa !22
  store ptr %491, ptr %420, align 8, !tbaa !27
  store ptr %491, ptr %421, align 8, !tbaa !28
  br label %525

492:                                              ; preds = %458
  %493 = load i32, ptr %411, align 8, !tbaa !21
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %525, label %495

495:                                              ; preds = %492, %486, %472
  %496 = load i32, ptr %407, align 8, !tbaa !30
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %.loopexit.backedge, label %498

498:                                              ; preds = %495
  %499 = tail call ptr @__errno_location() #17
  %500 = load ptr, ptr %406, align 8, !tbaa !25
  br label %501

501:                                              ; preds = %518, %498
  %502 = phi ptr [ %500, %498 ], [ %523, %518 ]
  store i32 0, ptr %499, align 4, !tbaa !4
  store i32 0, ptr %417, align 4, !tbaa !17
  %503 = load i32, ptr %407, align 8, !tbaa !30
  %504 = tail call i32 @llvm.umin.i32(i32 %503, i32 1073741824)
  %505 = zext nneg i32 %504 to i64
  %506 = load i32, ptr %418, align 4, !tbaa !31
  %507 = tail call i64 @write(i32 noundef %506, ptr noundef %502, i64 noundef %505) #15
  %508 = trunc i64 %507 to i32
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %518

510:                                              ; preds = %501
  %511 = load i32, ptr %499, align 4, !tbaa !4
  %512 = icmp eq i32 %511, 11
  br i1 %512, label %513, label %515

513:                                              ; preds = %510
  store i32 1, ptr %417, align 4, !tbaa !17
  %514 = load i32, ptr %499, align 4, !tbaa !4
  br label %515

515:                                              ; preds = %513, %510
  %516 = phi i32 [ %511, %510 ], [ %514, %513 ]
  %517 = tail call ptr @strerror(i32 noundef %516) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %517) #15
  br label %584

518:                                              ; preds = %501
  %519 = load i32, ptr %407, align 8, !tbaa !30
  %520 = sub i32 %519, %508
  store i32 %520, ptr %407, align 8, !tbaa !30
  %521 = load ptr, ptr %406, align 8, !tbaa !25
  %522 = and i64 %507, 2147483647
  %523 = getelementptr inbounds nuw i8, ptr %521, i64 %522
  store ptr %523, ptr %406, align 8, !tbaa !25
  %524 = icmp eq i32 %519, %508
  br i1 %524, label %.loopexit.backedge, label %501, !llvm.loop !32

525:                                              ; preds = %492, %490
  %526 = load i32, ptr %422, align 8, !tbaa !34
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %533, label %528

528:                                              ; preds = %525
  %529 = load i32, ptr %407, align 8, !tbaa !30
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %.loopexit.backedge, label %531

.loopexit.backedge:                               ; preds = %518, %581, %528, %495
  br label %.loopexit

531:                                              ; preds = %528
  %532 = tail call i32 @deflateReset(ptr noundef nonnull %406) #15
  store i32 0, ptr %422, align 8, !tbaa !34
  br label %533

533:                                              ; preds = %531, %525
  %534 = load i32, ptr %419, align 8, !tbaa !26
  br label %535

535:                                              ; preds = %581, %533
  %536 = phi i32 [ %534, %533 ], [ %582, %581 ]
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %576

538:                                              ; preds = %535
  %539 = load ptr, ptr %420, align 8, !tbaa !27
  %540 = load ptr, ptr %421, align 8, !tbaa !28
  %541 = icmp ugt ptr %539, %540
  br i1 %541, label %542, label %573

542:                                              ; preds = %538
  %543 = tail call ptr @__errno_location() #17
  br label %544

544:                                              ; preds = %564, %542
  %545 = phi ptr [ %540, %542 ], [ %567, %564 ]
  %546 = phi ptr [ %539, %542 ], [ %568, %564 ]
  store i32 0, ptr %543, align 4, !tbaa !4
  store i32 0, ptr %417, align 4, !tbaa !17
  %547 = ptrtoint ptr %546 to i64
  %548 = ptrtoint ptr %545 to i64
  %549 = sub i64 %547, %548
  %550 = tail call i64 @llvm.smin.i64(i64 %549, i64 1073741824)
  %551 = and i64 %550, 4294967295
  %552 = load i32, ptr %418, align 4, !tbaa !31
  %553 = tail call i64 @write(i32 noundef %552, ptr noundef %545, i64 noundef %551) #15
  %554 = and i64 %553, 2147483648
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %564, label %556

556:                                              ; preds = %544
  %557 = load i32, ptr %543, align 4, !tbaa !4
  %558 = icmp eq i32 %557, 11
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  store i32 1, ptr %417, align 4, !tbaa !17
  %560 = load i32, ptr %543, align 4, !tbaa !4
  br label %561

561:                                              ; preds = %559, %556
  %562 = phi i32 [ %557, %556 ], [ %560, %559 ]
  %563 = tail call ptr @strerror(i32 noundef %562) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %563) #15
  br label %584

564:                                              ; preds = %544
  %565 = load ptr, ptr %421, align 8, !tbaa !28
  %566 = and i64 %553, 2147483647
  %567 = getelementptr inbounds nuw i8, ptr %565, i64 %566
  store ptr %567, ptr %421, align 8, !tbaa !28
  %568 = load ptr, ptr %420, align 8, !tbaa !27
  %569 = icmp ugt ptr %568, %567
  br i1 %569, label %544, label %570, !llvm.loop !35

570:                                              ; preds = %564
  %571 = load i32, ptr %419, align 8, !tbaa !26
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %570, %538
  %574 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %574, ptr %419, align 8, !tbaa !26
  %575 = load ptr, ptr %413, align 8, !tbaa !22
  store ptr %575, ptr %420, align 8, !tbaa !27
  store ptr %575, ptr %421, align 8, !tbaa !28
  br label %576

576:                                              ; preds = %573, %570, %535
  %577 = phi i32 [ %571, %570 ], [ %574, %573 ], [ %536, %535 ]
  %578 = tail call i32 @deflate(ptr noundef nonnull %406, i32 noundef 0) #15
  %579 = icmp eq i32 %578, -2
  br i1 %579, label %580, label %581

580:                                              ; preds = %576
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %584

581:                                              ; preds = %576
  %582 = load i32, ptr %419, align 8, !tbaa !26
  %583 = icmp eq i32 %577, %582
  br i1 %583, label %.loopexit.backedge, label %535, !llvm.loop !36

584:                                              ; preds = %580, %561, %515, %483, %477, %467
  %585 = load i32, ptr %417, align 4, !tbaa !17
  %586 = icmp eq i32 %585, 0
  %587 = sub i64 %20, %456
  %588 = select i1 %586, i64 0, i64 %587
  br label %.loopexit64

589:                                              ; preds = %402
  %590 = load i32, ptr %407, align 8, !tbaa !41
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %.loopexit69, label %592

592:                                              ; preds = %589
  %593 = icmp eq i32 %403, 0
  br i1 %593, label %594, label %635

594:                                              ; preds = %592
  %595 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %596 = load i32, ptr %595, align 4, !tbaa !19
  %597 = shl i32 %596, 1
  %598 = zext i32 %597 to i64
  %599 = tail call noalias ptr @malloc(i64 noundef %598) #16
  %600 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %599, ptr %600, align 8, !tbaa !20
  %601 = icmp eq ptr %599, null
  br i1 %601, label %602, label %603

602:                                              ; preds = %594
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

603:                                              ; preds = %594
  %604 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %605 = load i32, ptr %604, align 8, !tbaa !21
  %606 = icmp eq i32 %605, 0
  %607 = load i32, ptr %595, align 4, !tbaa !19
  br i1 %606, label %609, label %608

608:                                              ; preds = %603
  store i32 %607, ptr %28, align 8, !tbaa !18
  br label %639

609:                                              ; preds = %603
  %610 = zext i32 %607 to i64
  %611 = tail call noalias ptr @malloc(i64 noundef %610) #16
  %612 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %611, ptr %612, align 8, !tbaa !22
  %613 = icmp eq ptr %611, null
  br i1 %613, label %614, label %615

614:                                              ; preds = %609
  tail call void @free(ptr noundef nonnull %599) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

615:                                              ; preds = %609
  %616 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %617 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %616, i8 0, i64 24, i1 false)
  %618 = load i32, ptr %617, align 8, !tbaa !23
  %619 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %620 = load i32, ptr %619, align 4, !tbaa !24
  %621 = tail call i32 @deflateInit2_(ptr noundef nonnull %406, i32 noundef %618, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %620, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %615
  %624 = load ptr, ptr %612, align 8, !tbaa !22
  tail call void @free(ptr noundef %624) #15
  %625 = load ptr, ptr %600, align 8, !tbaa !20
  tail call void @free(ptr noundef %625) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

626:                                              ; preds = %615
  store ptr null, ptr %406, align 8, !tbaa !25
  %627 = load i32, ptr %604, align 8, !tbaa !21
  %628 = load i32, ptr %595, align 4, !tbaa !19
  store i32 %628, ptr %28, align 8, !tbaa !18
  %629 = icmp eq i32 %627, 0
  br i1 %629, label %630, label %639

630:                                              ; preds = %626
  %631 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %628, ptr %631, align 8, !tbaa !26
  %632 = load ptr, ptr %612, align 8, !tbaa !22
  %633 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %632, ptr %633, align 8, !tbaa !27
  %634 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %632, ptr %634, align 8, !tbaa !28
  br label %671

635:                                              ; preds = %592
  %636 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %637 = load i32, ptr %636, align 8, !tbaa !21
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %671, label %639

639:                                              ; preds = %635, %626, %608
  %640 = load i32, ptr %407, align 8, !tbaa !30
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %.loopexit69, label %642

642:                                              ; preds = %639
  %643 = tail call ptr @__errno_location() #17
  %644 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %645 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %646 = load ptr, ptr %406, align 8, !tbaa !25
  br label %647

647:                                              ; preds = %664, %642
  %648 = phi ptr [ %646, %642 ], [ %669, %664 ]
  store i32 0, ptr %643, align 4, !tbaa !4
  store i32 0, ptr %644, align 4, !tbaa !17
  %649 = load i32, ptr %407, align 8, !tbaa !30
  %650 = tail call i32 @llvm.umin.i32(i32 %649, i32 1073741824)
  %651 = zext nneg i32 %650 to i64
  %652 = load i32, ptr %645, align 4, !tbaa !31
  %653 = tail call i64 @write(i32 noundef %652, ptr noundef %648, i64 noundef %651) #15
  %654 = trunc i64 %653 to i32
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %664

656:                                              ; preds = %647
  %657 = load i32, ptr %643, align 4, !tbaa !4
  %658 = icmp eq i32 %657, 11
  br i1 %658, label %659, label %661

659:                                              ; preds = %656
  store i32 1, ptr %644, align 4, !tbaa !17
  %660 = load i32, ptr %643, align 4, !tbaa !4
  br label %661

661:                                              ; preds = %659, %656
  %662 = phi i32 [ %657, %656 ], [ %660, %659 ]
  %663 = tail call ptr @strerror(i32 noundef %662) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %663) #15
  br label %.loopexit64

664:                                              ; preds = %647
  %665 = load i32, ptr %407, align 8, !tbaa !30
  %666 = sub i32 %665, %654
  store i32 %666, ptr %407, align 8, !tbaa !30
  %667 = load ptr, ptr %406, align 8, !tbaa !25
  %668 = and i64 %653, 2147483647
  %669 = getelementptr inbounds nuw i8, ptr %667, i64 %668
  store ptr %669, ptr %406, align 8, !tbaa !25
  %670 = icmp eq i32 %665, %654
  br i1 %670, label %.loopexit69, label %647, !llvm.loop !32

671:                                              ; preds = %635, %630
  %672 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %673 = load i32, ptr %672, align 8, !tbaa !34
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %671
  %676 = load i32, ptr %407, align 8, !tbaa !30
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %.loopexit69, label %678

678:                                              ; preds = %675
  %679 = tail call i32 @deflateReset(ptr noundef nonnull %406) #15
  store i32 0, ptr %672, align 8, !tbaa !34
  br label %680

680:                                              ; preds = %678, %671
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %683 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %684 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %685 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %686 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %687 = load i32, ptr %681, align 8, !tbaa !26
  br label %688

688:                                              ; preds = %734, %680
  %689 = phi i32 [ %687, %680 ], [ %735, %734 ]
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %729

691:                                              ; preds = %688
  %692 = load ptr, ptr %682, align 8, !tbaa !27
  %693 = load ptr, ptr %683, align 8, !tbaa !28
  %694 = icmp ugt ptr %692, %693
  br i1 %694, label %695, label %726

695:                                              ; preds = %691
  %696 = tail call ptr @__errno_location() #17
  br label %697

697:                                              ; preds = %717, %695
  %698 = phi ptr [ %693, %695 ], [ %720, %717 ]
  %699 = phi ptr [ %692, %695 ], [ %721, %717 ]
  store i32 0, ptr %696, align 4, !tbaa !4
  store i32 0, ptr %684, align 4, !tbaa !17
  %700 = ptrtoint ptr %699 to i64
  %701 = ptrtoint ptr %698 to i64
  %702 = sub i64 %700, %701
  %703 = tail call i64 @llvm.smin.i64(i64 %702, i64 1073741824)
  %704 = and i64 %703, 4294967295
  %705 = load i32, ptr %685, align 4, !tbaa !31
  %706 = tail call i64 @write(i32 noundef %705, ptr noundef %698, i64 noundef %704) #15
  %707 = and i64 %706, 2147483648
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %717, label %709

709:                                              ; preds = %697
  %710 = load i32, ptr %696, align 4, !tbaa !4
  %711 = icmp eq i32 %710, 11
  br i1 %711, label %712, label %714

712:                                              ; preds = %709
  store i32 1, ptr %684, align 4, !tbaa !17
  %713 = load i32, ptr %696, align 4, !tbaa !4
  br label %714

714:                                              ; preds = %712, %709
  %715 = phi i32 [ %710, %709 ], [ %713, %712 ]
  %716 = tail call ptr @strerror(i32 noundef %715) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %716) #15
  br label %.loopexit64

717:                                              ; preds = %697
  %718 = load ptr, ptr %683, align 8, !tbaa !28
  %719 = and i64 %706, 2147483647
  %720 = getelementptr inbounds nuw i8, ptr %718, i64 %719
  store ptr %720, ptr %683, align 8, !tbaa !28
  %721 = load ptr, ptr %682, align 8, !tbaa !27
  %722 = icmp ugt ptr %721, %720
  br i1 %722, label %697, label %723, !llvm.loop !35

723:                                              ; preds = %717
  %724 = load i32, ptr %681, align 8, !tbaa !26
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %729

726:                                              ; preds = %723, %691
  %727 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %727, ptr %681, align 8, !tbaa !26
  %728 = load ptr, ptr %686, align 8, !tbaa !22
  store ptr %728, ptr %682, align 8, !tbaa !27
  store ptr %728, ptr %683, align 8, !tbaa !28
  br label %729

729:                                              ; preds = %726, %723, %688
  %730 = phi i32 [ %724, %723 ], [ %727, %726 ], [ %689, %688 ]
  %731 = tail call i32 @deflate(ptr noundef nonnull %406, i32 noundef 0) #15
  %732 = icmp eq i32 %731, -2
  br i1 %732, label %733, label %734

733:                                              ; preds = %729
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit64

734:                                              ; preds = %729
  %735 = load i32, ptr %681, align 8, !tbaa !26
  %736 = icmp eq i32 %730, %735
  br i1 %736, label %.loopexit69, label %688, !llvm.loop !36

.loopexit69:                                      ; preds = %664, %734, %675, %639, %589
  store ptr %0, ptr %406, align 8, !tbaa !42
  %737 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %738 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %739 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %740 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %741 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %742 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %743 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %744 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %745 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %746 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %747 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %748 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %749 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %750 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %751

751:                                              ; preds = %895, %.loopexit69
  %752 = phi i64 [ %20, %.loopexit69 ], [ %889, %895 ]
  %753 = tail call i64 @llvm.umin.i64(i64 %752, i64 4294967295)
  %754 = trunc nuw i64 %753 to i32
  store i32 %754, ptr %407, align 8, !tbaa !41
  %755 = load i32, ptr %28, align 8, !tbaa !18
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %788

757:                                              ; preds = %751
  %758 = load i32, ptr %738, align 4, !tbaa !19
  %759 = shl i32 %758, 1
  %760 = zext i32 %759 to i64
  %761 = tail call noalias ptr @malloc(i64 noundef %760) #16
  store ptr %761, ptr %739, align 8, !tbaa !20
  %762 = icmp eq ptr %761, null
  br i1 %762, label %763, label %764

763:                                              ; preds = %757
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

764:                                              ; preds = %757
  %765 = load i32, ptr %737, align 8, !tbaa !21
  %766 = icmp eq i32 %765, 0
  %767 = load i32, ptr %738, align 4, !tbaa !19
  br i1 %766, label %769, label %768

768:                                              ; preds = %764
  store i32 %767, ptr %28, align 8, !tbaa !18
  br label %791

769:                                              ; preds = %764
  %770 = zext i32 %767 to i64
  %771 = tail call noalias ptr @malloc(i64 noundef %770) #16
  store ptr %771, ptr %740, align 8, !tbaa !22
  %772 = icmp eq ptr %771, null
  br i1 %772, label %773, label %774

773:                                              ; preds = %769
  tail call void @free(ptr noundef nonnull %761) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

774:                                              ; preds = %769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %741, i8 0, i64 24, i1 false)
  %775 = load i32, ptr %742, align 8, !tbaa !23
  %776 = load i32, ptr %743, align 4, !tbaa !24
  %777 = tail call i32 @deflateInit2_(ptr noundef nonnull %406, i32 noundef %775, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %776, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %782, label %779

779:                                              ; preds = %774
  %780 = load ptr, ptr %740, align 8, !tbaa !22
  tail call void @free(ptr noundef %780) #15
  %781 = load ptr, ptr %739, align 8, !tbaa !20
  tail call void @free(ptr noundef %781) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

782:                                              ; preds = %774
  store ptr null, ptr %406, align 8, !tbaa !25
  %783 = load i32, ptr %737, align 8, !tbaa !21
  %784 = load i32, ptr %738, align 4, !tbaa !19
  store i32 %784, ptr %28, align 8, !tbaa !18
  %785 = icmp eq i32 %783, 0
  br i1 %785, label %786, label %791

786:                                              ; preds = %782
  store i32 %784, ptr %746, align 8, !tbaa !26
  %787 = load ptr, ptr %740, align 8, !tbaa !22
  store ptr %787, ptr %747, align 8, !tbaa !27
  store ptr %787, ptr %748, align 8, !tbaa !28
  br label %821

788:                                              ; preds = %751
  %789 = load i32, ptr %737, align 8, !tbaa !21
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %821, label %791

791:                                              ; preds = %788, %782, %768
  %792 = load i32, ptr %407, align 8, !tbaa !30
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %.loopexit65, label %794

794:                                              ; preds = %791
  %795 = tail call ptr @__errno_location() #17
  %796 = load ptr, ptr %406, align 8, !tbaa !25
  br label %797

797:                                              ; preds = %814, %794
  %798 = phi ptr [ %796, %794 ], [ %819, %814 ]
  store i32 0, ptr %795, align 4, !tbaa !4
  store i32 0, ptr %744, align 4, !tbaa !17
  %799 = load i32, ptr %407, align 8, !tbaa !30
  %800 = tail call i32 @llvm.umin.i32(i32 %799, i32 1073741824)
  %801 = zext nneg i32 %800 to i64
  %802 = load i32, ptr %745, align 4, !tbaa !31
  %803 = tail call i64 @write(i32 noundef %802, ptr noundef %798, i64 noundef %801) #15
  %804 = trunc i64 %803 to i32
  %805 = icmp slt i32 %804, 0
  br i1 %805, label %806, label %814

806:                                              ; preds = %797
  %807 = load i32, ptr %795, align 4, !tbaa !4
  %808 = icmp eq i32 %807, 11
  br i1 %808, label %809, label %811

809:                                              ; preds = %806
  store i32 1, ptr %744, align 4, !tbaa !17
  %810 = load i32, ptr %795, align 4, !tbaa !4
  br label %811

811:                                              ; preds = %809, %806
  %812 = phi i32 [ %807, %806 ], [ %810, %809 ]
  %813 = tail call ptr @strerror(i32 noundef %812) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %813) #15
  br label %.loopexit65

814:                                              ; preds = %797
  %815 = load i32, ptr %407, align 8, !tbaa !30
  %816 = sub i32 %815, %804
  store i32 %816, ptr %407, align 8, !tbaa !30
  %817 = load ptr, ptr %406, align 8, !tbaa !25
  %818 = and i64 %803, 2147483647
  %819 = getelementptr inbounds nuw i8, ptr %817, i64 %818
  store ptr %819, ptr %406, align 8, !tbaa !25
  %820 = icmp eq i32 %815, %804
  br i1 %820, label %.loopexit65, label %797, !llvm.loop !32

821:                                              ; preds = %788, %786
  %822 = load i32, ptr %749, align 8, !tbaa !34
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %829, label %824

824:                                              ; preds = %821
  %825 = load i32, ptr %407, align 8, !tbaa !30
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %.loopexit65, label %827

827:                                              ; preds = %824
  %828 = tail call i32 @deflateReset(ptr noundef nonnull %406) #15
  store i32 0, ptr %749, align 8, !tbaa !34
  br label %829

829:                                              ; preds = %827, %821
  %830 = load i32, ptr %746, align 8, !tbaa !26
  br label %831

831:                                              ; preds = %877, %829
  %832 = phi i32 [ %830, %829 ], [ %878, %877 ]
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %872

834:                                              ; preds = %831
  %835 = load ptr, ptr %747, align 8, !tbaa !27
  %836 = load ptr, ptr %748, align 8, !tbaa !28
  %837 = icmp ugt ptr %835, %836
  br i1 %837, label %838, label %869

838:                                              ; preds = %834
  %839 = tail call ptr @__errno_location() #17
  br label %840

840:                                              ; preds = %860, %838
  %841 = phi ptr [ %836, %838 ], [ %863, %860 ]
  %842 = phi ptr [ %835, %838 ], [ %864, %860 ]
  store i32 0, ptr %839, align 4, !tbaa !4
  store i32 0, ptr %744, align 4, !tbaa !17
  %843 = ptrtoint ptr %842 to i64
  %844 = ptrtoint ptr %841 to i64
  %845 = sub i64 %843, %844
  %846 = tail call i64 @llvm.smin.i64(i64 %845, i64 1073741824)
  %847 = and i64 %846, 4294967295
  %848 = load i32, ptr %745, align 4, !tbaa !31
  %849 = tail call i64 @write(i32 noundef %848, ptr noundef %841, i64 noundef %847) #15
  %850 = and i64 %849, 2147483648
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %860, label %852

852:                                              ; preds = %840
  %853 = load i32, ptr %839, align 4, !tbaa !4
  %854 = icmp eq i32 %853, 11
  br i1 %854, label %855, label %857

855:                                              ; preds = %852
  store i32 1, ptr %744, align 4, !tbaa !17
  %856 = load i32, ptr %839, align 4, !tbaa !4
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i32 [ %853, %852 ], [ %856, %855 ]
  %859 = tail call ptr @strerror(i32 noundef %858) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %859) #15
  br label %.loopexit65

860:                                              ; preds = %840
  %861 = load ptr, ptr %748, align 8, !tbaa !28
  %862 = and i64 %849, 2147483647
  %863 = getelementptr inbounds nuw i8, ptr %861, i64 %862
  store ptr %863, ptr %748, align 8, !tbaa !28
  %864 = load ptr, ptr %747, align 8, !tbaa !27
  %865 = icmp ugt ptr %864, %863
  br i1 %865, label %840, label %866, !llvm.loop !35

866:                                              ; preds = %860
  %867 = load i32, ptr %746, align 8, !tbaa !26
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %872

869:                                              ; preds = %866, %834
  %870 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %870, ptr %746, align 8, !tbaa !26
  %871 = load ptr, ptr %740, align 8, !tbaa !22
  store ptr %871, ptr %747, align 8, !tbaa !27
  store ptr %871, ptr %748, align 8, !tbaa !28
  br label %872

872:                                              ; preds = %869, %866, %831
  %873 = phi i32 [ %867, %866 ], [ %870, %869 ], [ %832, %831 ]
  %874 = tail call i32 @deflate(ptr noundef nonnull %406, i32 noundef 0) #15
  %875 = icmp eq i32 %874, -2
  br i1 %875, label %876, label %877

876:                                              ; preds = %872
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit65

877:                                              ; preds = %872
  %878 = load i32, ptr %746, align 8, !tbaa !26
  %879 = icmp eq i32 %873, %878
  br i1 %879, label %.loopexit65, label %831, !llvm.loop !36

.loopexit65:                                      ; preds = %814, %877, %876, %857, %824, %811, %791, %779, %773, %763
  %880 = phi i1 [ false, %824 ], [ true, %811 ], [ false, %791 ], [ true, %773 ], [ true, %857 ], [ true, %876 ], [ false, %877 ], [ true, %763 ], [ true, %779 ], [ false, %814 ]
  %881 = load i32, ptr %407, align 8, !tbaa !41
  %882 = sub i32 %754, %881
  %883 = zext i32 %882 to i64
  %884 = load i64, ptr %750, align 8, !tbaa !37
  %885 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %884, i64 %883), !nosanitize !38
  %886 = extractvalue { i64, i1 } %885, 1, !nosanitize !38
  br i1 %886, label %.loopexit63, label %887, !prof !39, !nosanitize !38

887:                                              ; preds = %.loopexit65
  %888 = extractvalue { i64, i1 } %885, 0, !nosanitize !38
  store i64 %888, ptr %750, align 8, !tbaa !37
  %889 = sub i64 %752, %883
  br i1 %880, label %890, label %895

890:                                              ; preds = %887
  %891 = load i32, ptr %744, align 4, !tbaa !17
  %892 = icmp eq i32 %891, 0
  %893 = sub i64 %20, %889
  %894 = select i1 %892, i64 0, i64 %893
  br label %.loopexit64

895:                                              ; preds = %887
  %896 = icmp eq i64 %889, 0
  br i1 %896, label %.loopexit64, label %751, !llvm.loop !43

.loopexit64:                                      ; preds = %397, %895, %453, %890, %733, %714, %661, %623, %614, %602, %584, %224, %205, %152, %114, %105, %93, %61, %52, %40
  %897 = phi i64 [ %894, %890 ], [ %20, %453 ], [ %20, %895 ], [ %588, %584 ], [ 0, %623 ], [ 0, %52 ], [ 0, %602 ], [ 0, %40 ], [ 0, %61 ], [ 0, %93 ], [ 0, %114 ], [ 0, %152 ], [ 0, %105 ], [ 0, %205 ], [ 0, %224 ], [ 0, %661 ], [ 0, %614 ], [ 0, %714 ], [ 0, %733 ], [ 0, %397 ]
  %898 = udiv i64 %897, %1
  br label %899

899:                                              ; preds = %.loopexit64, %25, %24, %14, %6, %4
  %900 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %24 ], [ 0, %14 ], [ %898, %.loopexit64 ], [ 0, %25 ]
  ret i64 %900
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit97, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %.loopexit97

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %.loopexit97, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit103, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %.loopexit104, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = shl i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #16
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %35, ptr %36, align 8, !tbaa !20
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

39:                                               ; preds = %30
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %41 = load i32, ptr %40, align 8, !tbaa !21
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %31, align 4, !tbaa !19
  br i1 %42, label %45, label %44

44:                                               ; preds = %39
  store i32 %43, ptr %27, align 8, !tbaa !18
  br label %75

45:                                               ; preds = %39
  %46 = zext i32 %43 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #16
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %47, ptr %48, align 8, !tbaa !22
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %35) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %54, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !22
  tail call void @free(ptr noundef %60) #15
  %61 = load ptr, ptr %36, align 8, !tbaa !20
  tail call void @free(ptr noundef %61) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

62:                                               ; preds = %51
  store ptr null, ptr %6, align 8, !tbaa !25
  %63 = load i32, ptr %40, align 8, !tbaa !21
  %64 = load i32, ptr %31, align 4, !tbaa !19
  store i32 %64, ptr %27, align 8, !tbaa !18
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %64, ptr %67, align 8, !tbaa !26
  %68 = load ptr, ptr %48, align 8, !tbaa !22
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %68, ptr %69, align 8, !tbaa !27
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %68, ptr %70, align 8, !tbaa !28
  br label %107

71:                                               ; preds = %26
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %73 = load i32, ptr %72, align 8, !tbaa !21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %107, label %75

75:                                               ; preds = %71, %62, %44
  %76 = load i32, ptr %23, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit104, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @__errno_location() #17
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %82 = load ptr, ptr %6, align 8, !tbaa !25
  br label %83

83:                                               ; preds = %100, %78
  %84 = phi ptr [ %82, %78 ], [ %105, %100 ]
  store i32 0, ptr %79, align 4, !tbaa !4
  store i32 0, ptr %80, align 4, !tbaa !17
  %85 = load i32, ptr %23, align 8, !tbaa !30
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 1073741824)
  %87 = zext nneg i32 %86 to i64
  %88 = load i32, ptr %81, align 4, !tbaa !31
  %89 = tail call i64 @write(i32 noundef %88, ptr noundef %84, i64 noundef %87) #15
  %90 = trunc i64 %89 to i32
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load i32, ptr %79, align 4, !tbaa !4
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i32 1, ptr %80, align 4, !tbaa !17
  %96 = load i32, ptr %79, align 4, !tbaa !4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %95 ]
  %99 = tail call ptr @strerror(i32 noundef %98) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %99) #15
  br label %.loopexit97

100:                                              ; preds = %83
  %101 = load i32, ptr %23, align 8, !tbaa !30
  %102 = sub i32 %101, %90
  store i32 %102, ptr %23, align 8, !tbaa !30
  %103 = load ptr, ptr %6, align 8, !tbaa !25
  %104 = and i64 %89, 2147483647
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 %104
  store ptr %105, ptr %6, align 8, !tbaa !25
  %106 = icmp eq i32 %101, %90
  br i1 %106, label %.loopexit104, label %83, !llvm.loop !32

107:                                              ; preds = %71, %66
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %109 = load i32, ptr %108, align 8, !tbaa !34
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %23, align 8, !tbaa !30
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %.loopexit104, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %108, align 8, !tbaa !34
  br label %116

116:                                              ; preds = %114, %107
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %123 = load i32, ptr %117, align 8, !tbaa !26
  br label %124

124:                                              ; preds = %170, %116
  %125 = phi i32 [ %123, %116 ], [ %171, %170 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load ptr, ptr %118, align 8, !tbaa !27
  %129 = load ptr, ptr %119, align 8, !tbaa !28
  %130 = icmp ugt ptr %128, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %127
  %132 = tail call ptr @__errno_location() #17
  br label %133

133:                                              ; preds = %153, %131
  %134 = phi ptr [ %129, %131 ], [ %156, %153 ]
  %135 = phi ptr [ %128, %131 ], [ %157, %153 ]
  store i32 0, ptr %132, align 4, !tbaa !4
  store i32 0, ptr %120, align 4, !tbaa !17
  %136 = ptrtoint ptr %135 to i64
  %137 = ptrtoint ptr %134 to i64
  %138 = sub i64 %136, %137
  %139 = tail call i64 @llvm.smin.i64(i64 %138, i64 1073741824)
  %140 = and i64 %139, 4294967295
  %141 = load i32, ptr %121, align 4, !tbaa !31
  %142 = tail call i64 @write(i32 noundef %141, ptr noundef %134, i64 noundef %140) #15
  %143 = and i64 %142, 2147483648
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %133
  %146 = load i32, ptr %132, align 4, !tbaa !4
  %147 = icmp eq i32 %146, 11
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  store i32 1, ptr %120, align 4, !tbaa !17
  %149 = load i32, ptr %132, align 4, !tbaa !4
  br label %150

150:                                              ; preds = %148, %145
  %151 = phi i32 [ %146, %145 ], [ %149, %148 ]
  %152 = tail call ptr @strerror(i32 noundef %151) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %152) #15
  br label %.loopexit97

153:                                              ; preds = %133
  %154 = load ptr, ptr %119, align 8, !tbaa !28
  %155 = and i64 %142, 2147483647
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  store ptr %156, ptr %119, align 8, !tbaa !28
  %157 = load ptr, ptr %118, align 8, !tbaa !27
  %158 = icmp ugt ptr %157, %156
  br i1 %158, label %133, label %159, !llvm.loop !35

159:                                              ; preds = %153
  %160 = load i32, ptr %117, align 8, !tbaa !26
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %127
  %163 = load i32, ptr %27, align 8, !tbaa !18
  store i32 %163, ptr %117, align 8, !tbaa !26
  %164 = load ptr, ptr %122, align 8, !tbaa !22
  store ptr %164, ptr %118, align 8, !tbaa !27
  store ptr %164, ptr %119, align 8, !tbaa !28
  br label %165

165:                                              ; preds = %162, %159, %124
  %166 = phi i32 [ %160, %159 ], [ %163, %162 ], [ %125, %124 ]
  %167 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %168 = icmp eq i32 %167, -2
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit97

170:                                              ; preds = %165
  %171 = load i32, ptr %117, align 8, !tbaa !26
  %172 = icmp eq i32 %166, %171
  br i1 %172, label %.loopexit104, label %124, !llvm.loop !36

.loopexit104:                                     ; preds = %100, %170, %111, %75, %22
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %188 = load i64, ptr %19, align 8, !tbaa !29
  br label %189

189:                                              ; preds = %344, %.loopexit104
  %190 = phi i64 [ %188, %.loopexit104 ], [ %340, %344 ]
  %191 = phi i1 [ false, %.loopexit104 ], [ true, %344 ]
  %192 = load i32, ptr %173, align 8, !tbaa !18
  %193 = zext i32 %192 to i64
  %194 = tail call i64 @llvm.smin.i64(i64 %190, i64 %193)
  %195 = trunc i64 %194 to i32
  %196 = load ptr, ptr %174, align 8, !tbaa !20
  br i1 %191, label %201, label %197

197:                                              ; preds = %189
  %198 = and i64 %194, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %196, i8 0, i64 %198, i1 false)
  %199 = load ptr, ptr %174, align 8, !tbaa !20
  %200 = load i32, ptr %173, align 8, !tbaa !18
  br label %201

201:                                              ; preds = %197, %189
  %202 = phi i32 [ %200, %197 ], [ %192, %189 ]
  %203 = phi ptr [ %199, %197 ], [ %196, %189 ]
  store i32 %195, ptr %23, align 8, !tbaa !30
  store ptr %203, ptr %6, align 8, !tbaa !25
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %201
  %206 = load i32, ptr %176, align 4, !tbaa !19
  %207 = shl i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = tail call noalias ptr @malloc(i64 noundef %208) #16
  store ptr %209, ptr %174, align 8, !tbaa !20
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

212:                                              ; preds = %205
  %213 = load i32, ptr %175, align 8, !tbaa !21
  %214 = icmp eq i32 %213, 0
  %215 = load i32, ptr %176, align 4, !tbaa !19
  br i1 %214, label %217, label %216

216:                                              ; preds = %212
  store i32 %215, ptr %173, align 8, !tbaa !18
  br label %239

217:                                              ; preds = %212
  %218 = zext i32 %215 to i64
  %219 = tail call noalias ptr @malloc(i64 noundef %218) #16
  store ptr %219, ptr %177, align 8, !tbaa !22
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  tail call void @free(ptr noundef nonnull %209) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

222:                                              ; preds = %217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %178, i8 0, i64 24, i1 false)
  %223 = load i32, ptr %179, align 8, !tbaa !23
  %224 = load i32, ptr %180, align 4, !tbaa !24
  %225 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %223, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %224, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %177, align 8, !tbaa !22
  tail call void @free(ptr noundef %228) #15
  %229 = load ptr, ptr %174, align 8, !tbaa !20
  tail call void @free(ptr noundef %229) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

230:                                              ; preds = %222
  store ptr null, ptr %6, align 8, !tbaa !25
  %231 = load i32, ptr %175, align 8, !tbaa !21
  %232 = load i32, ptr %176, align 4, !tbaa !19
  store i32 %232, ptr %173, align 8, !tbaa !18
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  store i32 %232, ptr %183, align 8, !tbaa !26
  %235 = load ptr, ptr %177, align 8, !tbaa !22
  store ptr %235, ptr %184, align 8, !tbaa !27
  store ptr %235, ptr %185, align 8, !tbaa !28
  br label %269

236:                                              ; preds = %201
  %237 = load i32, ptr %175, align 8, !tbaa !21
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %269, label %239

239:                                              ; preds = %236, %230, %216
  %240 = phi ptr [ %203, %236 ], [ null, %230 ], [ %203, %216 ]
  %241 = load i32, ptr %23, align 8, !tbaa !30
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %.loopexit100, label %243

243:                                              ; preds = %239
  %244 = tail call ptr @__errno_location() #17
  br label %245

245:                                              ; preds = %262, %243
  %246 = phi ptr [ %240, %243 ], [ %267, %262 ]
  store i32 0, ptr %244, align 4, !tbaa !4
  store i32 0, ptr %181, align 4, !tbaa !17
  %247 = load i32, ptr %23, align 8, !tbaa !30
  %248 = tail call i32 @llvm.umin.i32(i32 %247, i32 1073741824)
  %249 = zext nneg i32 %248 to i64
  %250 = load i32, ptr %182, align 4, !tbaa !31
  %251 = tail call i64 @write(i32 noundef %250, ptr noundef %246, i64 noundef %249) #15
  %252 = trunc i64 %251 to i32
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %245
  %255 = load i32, ptr %244, align 4, !tbaa !4
  %256 = icmp eq i32 %255, 11
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  store i32 1, ptr %181, align 4, !tbaa !17
  %258 = load i32, ptr %244, align 4, !tbaa !4
  br label %259

259:                                              ; preds = %257, %254
  %260 = phi i32 [ %255, %254 ], [ %258, %257 ]
  %261 = tail call ptr @strerror(i32 noundef %260) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %261) #15
  br label %.loopexit100

262:                                              ; preds = %245
  %263 = load i32, ptr %23, align 8, !tbaa !30
  %264 = sub i32 %263, %252
  store i32 %264, ptr %23, align 8, !tbaa !30
  %265 = load ptr, ptr %6, align 8, !tbaa !25
  %266 = and i64 %251, 2147483647
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 %266
  store ptr %267, ptr %6, align 8, !tbaa !25
  %268 = icmp eq i32 %263, %252
  br i1 %268, label %.loopexit100, label %245, !llvm.loop !32

269:                                              ; preds = %236, %234
  %270 = load i32, ptr %186, align 8, !tbaa !34
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %269
  %273 = load i32, ptr %23, align 8, !tbaa !30
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %.loopexit100, label %275

275:                                              ; preds = %272
  %276 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %186, align 8, !tbaa !34
  br label %277

277:                                              ; preds = %275, %269
  %278 = load i32, ptr %183, align 8, !tbaa !26
  br label %279

279:                                              ; preds = %325, %277
  %280 = phi i32 [ %278, %277 ], [ %326, %325 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %320

282:                                              ; preds = %279
  %283 = load ptr, ptr %184, align 8, !tbaa !27
  %284 = load ptr, ptr %185, align 8, !tbaa !28
  %285 = icmp ugt ptr %283, %284
  br i1 %285, label %286, label %317

286:                                              ; preds = %282
  %287 = tail call ptr @__errno_location() #17
  br label %288

288:                                              ; preds = %308, %286
  %289 = phi ptr [ %284, %286 ], [ %311, %308 ]
  %290 = phi ptr [ %283, %286 ], [ %312, %308 ]
  store i32 0, ptr %287, align 4, !tbaa !4
  store i32 0, ptr %181, align 4, !tbaa !17
  %291 = ptrtoint ptr %290 to i64
  %292 = ptrtoint ptr %289 to i64
  %293 = sub i64 %291, %292
  %294 = tail call i64 @llvm.smin.i64(i64 %293, i64 1073741824)
  %295 = and i64 %294, 4294967295
  %296 = load i32, ptr %182, align 4, !tbaa !31
  %297 = tail call i64 @write(i32 noundef %296, ptr noundef %289, i64 noundef %295) #15
  %298 = and i64 %297, 2147483648
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %308, label %300

300:                                              ; preds = %288
  %301 = load i32, ptr %287, align 4, !tbaa !4
  %302 = icmp eq i32 %301, 11
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  store i32 1, ptr %181, align 4, !tbaa !17
  %304 = load i32, ptr %287, align 4, !tbaa !4
  br label %305

305:                                              ; preds = %303, %300
  %306 = phi i32 [ %301, %300 ], [ %304, %303 ]
  %307 = tail call ptr @strerror(i32 noundef %306) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %307) #15
  br label %.loopexit100

308:                                              ; preds = %288
  %309 = load ptr, ptr %185, align 8, !tbaa !28
  %310 = and i64 %297, 2147483647
  %311 = getelementptr inbounds nuw i8, ptr %309, i64 %310
  store ptr %311, ptr %185, align 8, !tbaa !28
  %312 = load ptr, ptr %184, align 8, !tbaa !27
  %313 = icmp ugt ptr %312, %311
  br i1 %313, label %288, label %314, !llvm.loop !35

314:                                              ; preds = %308
  %315 = load i32, ptr %183, align 8, !tbaa !26
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314, %282
  %318 = load i32, ptr %173, align 8, !tbaa !18
  store i32 %318, ptr %183, align 8, !tbaa !26
  %319 = load ptr, ptr %177, align 8, !tbaa !22
  store ptr %319, ptr %184, align 8, !tbaa !27
  store ptr %319, ptr %185, align 8, !tbaa !28
  br label %320

320:                                              ; preds = %317, %314, %279
  %321 = phi i32 [ %315, %314 ], [ %318, %317 ], [ %280, %279 ]
  %322 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %323 = icmp eq i32 %322, -2
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit100

325:                                              ; preds = %320
  %326 = load i32, ptr %183, align 8, !tbaa !26
  %327 = icmp eq i32 %321, %326
  br i1 %327, label %.loopexit100, label %279, !llvm.loop !36

.loopexit100:                                     ; preds = %262, %325, %324, %305, %272, %259, %239, %227, %221, %211
  %328 = phi i1 [ false, %272 ], [ true, %259 ], [ false, %239 ], [ true, %221 ], [ true, %305 ], [ true, %324 ], [ false, %325 ], [ true, %211 ], [ true, %227 ], [ false, %262 ]
  %329 = load i32, ptr %23, align 8, !tbaa !30
  %330 = sub i32 %195, %329
  %331 = zext i32 %330 to i64
  %332 = load i64, ptr %187, align 8, !tbaa !37
  %333 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %332, i64 %331), !nosanitize !38
  %334 = extractvalue { i64, i1 } %333, 1, !nosanitize !38
  br i1 %334, label %335, label %336, !prof !39, !nosanitize !38

335:                                              ; preds = %.loopexit100
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

336:                                              ; preds = %.loopexit100
  %337 = extractvalue { i64, i1 } %333, 0, !nosanitize !38
  store i64 %337, ptr %187, align 8, !tbaa !37
  %338 = load i64, ptr %19, align 8, !tbaa !29
  %339 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %338, i64 %331), !nosanitize !38
  %340 = extractvalue { i64, i1 } %339, 0, !nosanitize !38
  %341 = extractvalue { i64, i1 } %339, 1, !nosanitize !38
  br i1 %341, label %342, label %343, !prof !39, !nosanitize !38

342:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

343:                                              ; preds = %336
  store i64 %340, ptr %19, align 8, !tbaa !29
  br i1 %328, label %.loopexit97, label %344

344:                                              ; preds = %343
  %345 = icmp eq i64 %340, 0
  br i1 %345, label %.loopexit103, label %189, !llvm.loop !40

.loopexit103:                                     ; preds = %344, %18
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %347 = load i32, ptr %346, align 8, !tbaa !18
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %385, label %349

349:                                              ; preds = %.loopexit103
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %351 = load i32, ptr %350, align 8, !tbaa !30
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %6, align 8, !tbaa !25
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %356 = load ptr, ptr %355, align 8, !tbaa !20
  br label %360

357:                                              ; preds = %349
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %359 = load ptr, ptr %358, align 8, !tbaa !20
  store ptr %359, ptr %6, align 8, !tbaa !25
  br label %360

360:                                              ; preds = %357, %353
  %361 = phi ptr [ %356, %353 ], [ %359, %357 ]
  %362 = phi ptr [ %354, %353 ], [ %359, %357 ]
  %363 = zext i32 %351 to i64
  %364 = getelementptr inbounds nuw i8, ptr %362, i64 %363
  %365 = ptrtoint ptr %364 to i64
  %366 = ptrtoint ptr %361 to i64
  %367 = sub i64 %365, %366
  %368 = trunc i64 %367 to i32
  %369 = icmp ugt i32 %347, %368
  %370 = trunc i32 %1 to i8
  br i1 %369, label %371, label %384

371:                                              ; preds = %360
  %372 = and i64 %367, 4294967295
  %373 = getelementptr inbounds nuw i8, ptr %361, i64 %372
  store i8 %370, ptr %373, align 1, !tbaa !44
  %374 = load i32, ptr %350, align 8, !tbaa !30
  %375 = add i32 %374, 1
  store i32 %375, ptr %350, align 8, !tbaa !30
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %377 = load i64, ptr %376, align 8, !tbaa !37
  %378 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %377, i64 1), !nosanitize !38
  %379 = extractvalue { i64, i1 } %378, 1, !nosanitize !38
  br i1 %379, label %380, label %381, !prof !39, !nosanitize !38

380:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

381:                                              ; preds = %371
  %382 = extractvalue { i64, i1 } %378, 0, !nosanitize !38
  store i64 %382, ptr %376, align 8, !tbaa !37
  %383 = and i32 %1, 255
  br label %.loopexit97

384:                                              ; preds = %360
  store i8 %370, ptr %3, align 1, !tbaa !44
  br label %427

385:                                              ; preds = %.loopexit103
  %386 = trunc i32 %1 to i8
  store i8 %386, ptr %3, align 1, !tbaa !44
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %388 = load i32, ptr %387, align 4, !tbaa !19
  %389 = shl i32 %388, 1
  %390 = zext i32 %389 to i64
  %391 = tail call noalias ptr @malloc(i64 noundef %390) #16
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %391, ptr %392, align 8, !tbaa !20
  %393 = icmp eq ptr %391, null
  br i1 %393, label %394, label %395

394:                                              ; preds = %385
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

395:                                              ; preds = %385
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %397 = load i32, ptr %396, align 8, !tbaa !21
  %398 = icmp eq i32 %397, 0
  %399 = load i32, ptr %387, align 4, !tbaa !19
  br i1 %398, label %401, label %400

400:                                              ; preds = %395
  store i32 %399, ptr %346, align 8, !tbaa !18
  br label %427

401:                                              ; preds = %395
  %402 = zext i32 %399 to i64
  %403 = tail call noalias ptr @malloc(i64 noundef %402) #16
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %403, ptr %404, align 8, !tbaa !22
  %405 = icmp eq ptr %403, null
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  tail call void @free(ptr noundef nonnull %391) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

407:                                              ; preds = %401
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %408, i8 0, i64 24, i1 false)
  %410 = load i32, ptr %409, align 8, !tbaa !23
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %412 = load i32, ptr %411, align 4, !tbaa !24
  %413 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %410, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %412, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %407
  %416 = load ptr, ptr %404, align 8, !tbaa !22
  tail call void @free(ptr noundef %416) #15
  %417 = load ptr, ptr %392, align 8, !tbaa !20
  tail call void @free(ptr noundef %417) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

418:                                              ; preds = %407
  store ptr null, ptr %6, align 8, !tbaa !25
  %419 = load i32, ptr %396, align 8, !tbaa !21
  %420 = load i32, ptr %387, align 4, !tbaa !19
  store i32 %420, ptr %346, align 8, !tbaa !18
  %421 = icmp eq i32 %419, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %418
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %420, ptr %423, align 8, !tbaa !26
  %424 = load ptr, ptr %404, align 8, !tbaa !22
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %424, ptr %425, align 8, !tbaa !27
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %424, ptr %426, align 8, !tbaa !28
  br label %427

427:                                              ; preds = %422, %418, %400, %384
  %428 = phi i32 [ %420, %422 ], [ %420, %418 ], [ %399, %400 ], [ %347, %384 ]
  %429 = load i64, ptr %19, align 8, !tbaa !29
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %754, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %433 = load i32, ptr %432, align 8, !tbaa !30
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %.loopexit98, label %435

435:                                              ; preds = %431
  %436 = icmp eq i32 %428, 0
  br i1 %436, label %437, label %478

437:                                              ; preds = %435
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %439 = load i32, ptr %438, align 4, !tbaa !19
  %440 = shl i32 %439, 1
  %441 = zext i32 %440 to i64
  %442 = tail call noalias ptr @malloc(i64 noundef %441) #16
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %442, ptr %443, align 8, !tbaa !20
  %444 = icmp eq ptr %442, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %437
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

446:                                              ; preds = %437
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %448 = load i32, ptr %447, align 8, !tbaa !21
  %449 = icmp eq i32 %448, 0
  %450 = load i32, ptr %438, align 4, !tbaa !19
  br i1 %449, label %452, label %451

451:                                              ; preds = %446
  store i32 %450, ptr %346, align 8, !tbaa !18
  br label %482

452:                                              ; preds = %446
  %453 = zext i32 %450 to i64
  %454 = tail call noalias ptr @malloc(i64 noundef %453) #16
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %454, ptr %455, align 8, !tbaa !22
  %456 = icmp eq ptr %454, null
  br i1 %456, label %457, label %458

457:                                              ; preds = %452
  tail call void @free(ptr noundef nonnull %442) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

458:                                              ; preds = %452
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %459, i8 0, i64 24, i1 false)
  %461 = load i32, ptr %460, align 8, !tbaa !23
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %463 = load i32, ptr %462, align 4, !tbaa !24
  %464 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %461, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %463, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %469, label %466

466:                                              ; preds = %458
  %467 = load ptr, ptr %455, align 8, !tbaa !22
  tail call void @free(ptr noundef %467) #15
  %468 = load ptr, ptr %443, align 8, !tbaa !20
  tail call void @free(ptr noundef %468) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

469:                                              ; preds = %458
  store ptr null, ptr %6, align 8, !tbaa !25
  %470 = load i32, ptr %447, align 8, !tbaa !21
  %471 = load i32, ptr %438, align 4, !tbaa !19
  store i32 %471, ptr %346, align 8, !tbaa !18
  %472 = icmp eq i32 %470, 0
  br i1 %472, label %473, label %482

473:                                              ; preds = %469
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %471, ptr %474, align 8, !tbaa !26
  %475 = load ptr, ptr %455, align 8, !tbaa !22
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %475, ptr %476, align 8, !tbaa !27
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %475, ptr %477, align 8, !tbaa !28
  br label %514

478:                                              ; preds = %435
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %480 = load i32, ptr %479, align 8, !tbaa !21
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %514, label %482

482:                                              ; preds = %478, %469, %451
  %483 = load i32, ptr %432, align 8, !tbaa !30
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %.loopexit98, label %485

485:                                              ; preds = %482
  %486 = tail call ptr @__errno_location() #17
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %489 = load ptr, ptr %6, align 8, !tbaa !25
  br label %490

490:                                              ; preds = %507, %485
  %491 = phi ptr [ %489, %485 ], [ %512, %507 ]
  store i32 0, ptr %486, align 4, !tbaa !4
  store i32 0, ptr %487, align 4, !tbaa !17
  %492 = load i32, ptr %432, align 8, !tbaa !30
  %493 = tail call i32 @llvm.umin.i32(i32 %492, i32 1073741824)
  %494 = zext nneg i32 %493 to i64
  %495 = load i32, ptr %488, align 4, !tbaa !31
  %496 = tail call i64 @write(i32 noundef %495, ptr noundef %491, i64 noundef %494) #15
  %497 = trunc i64 %496 to i32
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %499, label %507

499:                                              ; preds = %490
  %500 = load i32, ptr %486, align 4, !tbaa !4
  %501 = icmp eq i32 %500, 11
  br i1 %501, label %502, label %504

502:                                              ; preds = %499
  store i32 1, ptr %487, align 4, !tbaa !17
  %503 = load i32, ptr %486, align 4, !tbaa !4
  br label %504

504:                                              ; preds = %502, %499
  %505 = phi i32 [ %500, %499 ], [ %503, %502 ]
  %506 = tail call ptr @strerror(i32 noundef %505) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %506) #15
  br label %.loopexit97

507:                                              ; preds = %490
  %508 = load i32, ptr %432, align 8, !tbaa !30
  %509 = sub i32 %508, %497
  store i32 %509, ptr %432, align 8, !tbaa !30
  %510 = load ptr, ptr %6, align 8, !tbaa !25
  %511 = and i64 %496, 2147483647
  %512 = getelementptr inbounds nuw i8, ptr %510, i64 %511
  store ptr %512, ptr %6, align 8, !tbaa !25
  %513 = icmp eq i32 %508, %497
  br i1 %513, label %.loopexit98, label %490, !llvm.loop !32

514:                                              ; preds = %478, %473
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %516 = load i32, ptr %515, align 8, !tbaa !34
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %514
  %519 = load i32, ptr %432, align 8, !tbaa !30
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %.loopexit98, label %521

521:                                              ; preds = %518
  %522 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %515, align 8, !tbaa !34
  br label %523

523:                                              ; preds = %521, %514
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %530 = load i32, ptr %524, align 8, !tbaa !26
  br label %531

531:                                              ; preds = %577, %523
  %532 = phi i32 [ %530, %523 ], [ %578, %577 ]
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %572

534:                                              ; preds = %531
  %535 = load ptr, ptr %525, align 8, !tbaa !27
  %536 = load ptr, ptr %526, align 8, !tbaa !28
  %537 = icmp ugt ptr %535, %536
  br i1 %537, label %538, label %569

538:                                              ; preds = %534
  %539 = tail call ptr @__errno_location() #17
  br label %540

540:                                              ; preds = %560, %538
  %541 = phi ptr [ %536, %538 ], [ %563, %560 ]
  %542 = phi ptr [ %535, %538 ], [ %564, %560 ]
  store i32 0, ptr %539, align 4, !tbaa !4
  store i32 0, ptr %527, align 4, !tbaa !17
  %543 = ptrtoint ptr %542 to i64
  %544 = ptrtoint ptr %541 to i64
  %545 = sub i64 %543, %544
  %546 = tail call i64 @llvm.smin.i64(i64 %545, i64 1073741824)
  %547 = and i64 %546, 4294967295
  %548 = load i32, ptr %528, align 4, !tbaa !31
  %549 = tail call i64 @write(i32 noundef %548, ptr noundef %541, i64 noundef %547) #15
  %550 = and i64 %549, 2147483648
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %560, label %552

552:                                              ; preds = %540
  %553 = load i32, ptr %539, align 4, !tbaa !4
  %554 = icmp eq i32 %553, 11
  br i1 %554, label %555, label %557

555:                                              ; preds = %552
  store i32 1, ptr %527, align 4, !tbaa !17
  %556 = load i32, ptr %539, align 4, !tbaa !4
  br label %557

557:                                              ; preds = %555, %552
  %558 = phi i32 [ %553, %552 ], [ %556, %555 ]
  %559 = tail call ptr @strerror(i32 noundef %558) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %559) #15
  br label %.loopexit97

560:                                              ; preds = %540
  %561 = load ptr, ptr %526, align 8, !tbaa !28
  %562 = and i64 %549, 2147483647
  %563 = getelementptr inbounds nuw i8, ptr %561, i64 %562
  store ptr %563, ptr %526, align 8, !tbaa !28
  %564 = load ptr, ptr %525, align 8, !tbaa !27
  %565 = icmp ugt ptr %564, %563
  br i1 %565, label %540, label %566, !llvm.loop !35

566:                                              ; preds = %560
  %567 = load i32, ptr %524, align 8, !tbaa !26
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %572

569:                                              ; preds = %566, %534
  %570 = load i32, ptr %346, align 8, !tbaa !18
  store i32 %570, ptr %524, align 8, !tbaa !26
  %571 = load ptr, ptr %529, align 8, !tbaa !22
  store ptr %571, ptr %525, align 8, !tbaa !27
  store ptr %571, ptr %526, align 8, !tbaa !28
  br label %572

572:                                              ; preds = %569, %566, %531
  %573 = phi i32 [ %567, %566 ], [ %570, %569 ], [ %532, %531 ]
  %574 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %575 = icmp eq i32 %574, -2
  br i1 %575, label %576, label %577

576:                                              ; preds = %572
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit97

577:                                              ; preds = %572
  %578 = load i32, ptr %524, align 8, !tbaa !26
  %579 = icmp eq i32 %573, %578
  br i1 %579, label %.loopexit98, label %531, !llvm.loop !36

.loopexit98:                                      ; preds = %507, %577, %518, %482, %431
  %580 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %581 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %585 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %587 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %593 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %594 = load i64, ptr %19, align 8, !tbaa !29
  br label %595

595:                                              ; preds = %750, %.loopexit98
  %596 = phi i64 [ %594, %.loopexit98 ], [ %746, %750 ]
  %597 = phi i1 [ false, %.loopexit98 ], [ true, %750 ]
  %598 = load i32, ptr %346, align 8, !tbaa !18
  %599 = zext i32 %598 to i64
  %600 = tail call i64 @llvm.smin.i64(i64 %596, i64 %599)
  %601 = trunc i64 %600 to i32
  %602 = load ptr, ptr %580, align 8, !tbaa !20
  br i1 %597, label %607, label %603

603:                                              ; preds = %595
  %604 = and i64 %600, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %602, i8 0, i64 %604, i1 false)
  %605 = load ptr, ptr %580, align 8, !tbaa !20
  %606 = load i32, ptr %346, align 8, !tbaa !18
  br label %607

607:                                              ; preds = %603, %595
  %608 = phi i32 [ %606, %603 ], [ %598, %595 ]
  %609 = phi ptr [ %605, %603 ], [ %602, %595 ]
  store i32 %601, ptr %432, align 8, !tbaa !30
  store ptr %609, ptr %6, align 8, !tbaa !25
  %610 = icmp eq i32 %608, 0
  br i1 %610, label %611, label %642

611:                                              ; preds = %607
  %612 = load i32, ptr %582, align 4, !tbaa !19
  %613 = shl i32 %612, 1
  %614 = zext i32 %613 to i64
  %615 = tail call noalias ptr @malloc(i64 noundef %614) #16
  store ptr %615, ptr %580, align 8, !tbaa !20
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %618

617:                                              ; preds = %611
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

618:                                              ; preds = %611
  %619 = load i32, ptr %581, align 8, !tbaa !21
  %620 = icmp eq i32 %619, 0
  %621 = load i32, ptr %582, align 4, !tbaa !19
  br i1 %620, label %623, label %622

622:                                              ; preds = %618
  store i32 %621, ptr %346, align 8, !tbaa !18
  br label %645

623:                                              ; preds = %618
  %624 = zext i32 %621 to i64
  %625 = tail call noalias ptr @malloc(i64 noundef %624) #16
  store ptr %625, ptr %583, align 8, !tbaa !22
  %626 = icmp eq ptr %625, null
  br i1 %626, label %627, label %628

627:                                              ; preds = %623
  tail call void @free(ptr noundef nonnull %615) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

628:                                              ; preds = %623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %584, i8 0, i64 24, i1 false)
  %629 = load i32, ptr %585, align 8, !tbaa !23
  %630 = load i32, ptr %586, align 4, !tbaa !24
  %631 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %629, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %630, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %636, label %633

633:                                              ; preds = %628
  %634 = load ptr, ptr %583, align 8, !tbaa !22
  tail call void @free(ptr noundef %634) #15
  %635 = load ptr, ptr %580, align 8, !tbaa !20
  tail call void @free(ptr noundef %635) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

636:                                              ; preds = %628
  store ptr null, ptr %6, align 8, !tbaa !25
  %637 = load i32, ptr %581, align 8, !tbaa !21
  %638 = load i32, ptr %582, align 4, !tbaa !19
  store i32 %638, ptr %346, align 8, !tbaa !18
  %639 = icmp eq i32 %637, 0
  br i1 %639, label %640, label %645

640:                                              ; preds = %636
  store i32 %638, ptr %589, align 8, !tbaa !26
  %641 = load ptr, ptr %583, align 8, !tbaa !22
  store ptr %641, ptr %590, align 8, !tbaa !27
  store ptr %641, ptr %591, align 8, !tbaa !28
  br label %675

642:                                              ; preds = %607
  %643 = load i32, ptr %581, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %675, label %645

645:                                              ; preds = %642, %636, %622
  %646 = phi ptr [ %609, %642 ], [ null, %636 ], [ %609, %622 ]
  %647 = load i32, ptr %432, align 8, !tbaa !30
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %.loopexit95, label %649

649:                                              ; preds = %645
  %650 = tail call ptr @__errno_location() #17
  br label %651

651:                                              ; preds = %668, %649
  %652 = phi ptr [ %646, %649 ], [ %673, %668 ]
  store i32 0, ptr %650, align 4, !tbaa !4
  store i32 0, ptr %587, align 4, !tbaa !17
  %653 = load i32, ptr %432, align 8, !tbaa !30
  %654 = tail call i32 @llvm.umin.i32(i32 %653, i32 1073741824)
  %655 = zext nneg i32 %654 to i64
  %656 = load i32, ptr %588, align 4, !tbaa !31
  %657 = tail call i64 @write(i32 noundef %656, ptr noundef %652, i64 noundef %655) #15
  %658 = trunc i64 %657 to i32
  %659 = icmp slt i32 %658, 0
  br i1 %659, label %660, label %668

660:                                              ; preds = %651
  %661 = load i32, ptr %650, align 4, !tbaa !4
  %662 = icmp eq i32 %661, 11
  br i1 %662, label %663, label %665

663:                                              ; preds = %660
  store i32 1, ptr %587, align 4, !tbaa !17
  %664 = load i32, ptr %650, align 4, !tbaa !4
  br label %665

665:                                              ; preds = %663, %660
  %666 = phi i32 [ %661, %660 ], [ %664, %663 ]
  %667 = tail call ptr @strerror(i32 noundef %666) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %667) #15
  br label %.loopexit95

668:                                              ; preds = %651
  %669 = load i32, ptr %432, align 8, !tbaa !30
  %670 = sub i32 %669, %658
  store i32 %670, ptr %432, align 8, !tbaa !30
  %671 = load ptr, ptr %6, align 8, !tbaa !25
  %672 = and i64 %657, 2147483647
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 %672
  store ptr %673, ptr %6, align 8, !tbaa !25
  %674 = icmp eq i32 %669, %658
  br i1 %674, label %.loopexit95, label %651, !llvm.loop !32

675:                                              ; preds = %642, %640
  %676 = load i32, ptr %592, align 8, !tbaa !34
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %683, label %678

678:                                              ; preds = %675
  %679 = load i32, ptr %432, align 8, !tbaa !30
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %.loopexit95, label %681

681:                                              ; preds = %678
  %682 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %592, align 8, !tbaa !34
  br label %683

683:                                              ; preds = %681, %675
  %684 = load i32, ptr %589, align 8, !tbaa !26
  br label %685

685:                                              ; preds = %731, %683
  %686 = phi i32 [ %684, %683 ], [ %732, %731 ]
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %726

688:                                              ; preds = %685
  %689 = load ptr, ptr %590, align 8, !tbaa !27
  %690 = load ptr, ptr %591, align 8, !tbaa !28
  %691 = icmp ugt ptr %689, %690
  br i1 %691, label %692, label %723

692:                                              ; preds = %688
  %693 = tail call ptr @__errno_location() #17
  br label %694

694:                                              ; preds = %714, %692
  %695 = phi ptr [ %690, %692 ], [ %717, %714 ]
  %696 = phi ptr [ %689, %692 ], [ %718, %714 ]
  store i32 0, ptr %693, align 4, !tbaa !4
  store i32 0, ptr %587, align 4, !tbaa !17
  %697 = ptrtoint ptr %696 to i64
  %698 = ptrtoint ptr %695 to i64
  %699 = sub i64 %697, %698
  %700 = tail call i64 @llvm.smin.i64(i64 %699, i64 1073741824)
  %701 = and i64 %700, 4294967295
  %702 = load i32, ptr %588, align 4, !tbaa !31
  %703 = tail call i64 @write(i32 noundef %702, ptr noundef %695, i64 noundef %701) #15
  %704 = and i64 %703, 2147483648
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %714, label %706

706:                                              ; preds = %694
  %707 = load i32, ptr %693, align 4, !tbaa !4
  %708 = icmp eq i32 %707, 11
  br i1 %708, label %709, label %711

709:                                              ; preds = %706
  store i32 1, ptr %587, align 4, !tbaa !17
  %710 = load i32, ptr %693, align 4, !tbaa !4
  br label %711

711:                                              ; preds = %709, %706
  %712 = phi i32 [ %707, %706 ], [ %710, %709 ]
  %713 = tail call ptr @strerror(i32 noundef %712) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %713) #15
  br label %.loopexit95

714:                                              ; preds = %694
  %715 = load ptr, ptr %591, align 8, !tbaa !28
  %716 = and i64 %703, 2147483647
  %717 = getelementptr inbounds nuw i8, ptr %715, i64 %716
  store ptr %717, ptr %591, align 8, !tbaa !28
  %718 = load ptr, ptr %590, align 8, !tbaa !27
  %719 = icmp ugt ptr %718, %717
  br i1 %719, label %694, label %720, !llvm.loop !35

720:                                              ; preds = %714
  %721 = load i32, ptr %589, align 8, !tbaa !26
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %720, %688
  %724 = load i32, ptr %346, align 8, !tbaa !18
  store i32 %724, ptr %589, align 8, !tbaa !26
  %725 = load ptr, ptr %583, align 8, !tbaa !22
  store ptr %725, ptr %590, align 8, !tbaa !27
  store ptr %725, ptr %591, align 8, !tbaa !28
  br label %726

726:                                              ; preds = %723, %720, %685
  %727 = phi i32 [ %721, %720 ], [ %724, %723 ], [ %686, %685 ]
  %728 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %729 = icmp eq i32 %728, -2
  br i1 %729, label %730, label %731

730:                                              ; preds = %726
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit95

731:                                              ; preds = %726
  %732 = load i32, ptr %589, align 8, !tbaa !26
  %733 = icmp eq i32 %727, %732
  br i1 %733, label %.loopexit95, label %685, !llvm.loop !36

.loopexit95:                                      ; preds = %668, %731, %730, %711, %678, %665, %645, %633, %627, %617
  %734 = phi i1 [ false, %678 ], [ true, %665 ], [ false, %645 ], [ true, %627 ], [ true, %711 ], [ true, %730 ], [ false, %731 ], [ true, %617 ], [ true, %633 ], [ false, %668 ]
  %735 = load i32, ptr %432, align 8, !tbaa !30
  %736 = sub i32 %601, %735
  %737 = zext i32 %736 to i64
  %738 = load i64, ptr %593, align 8, !tbaa !37
  %739 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %738, i64 %737), !nosanitize !38
  %740 = extractvalue { i64, i1 } %739, 1, !nosanitize !38
  br i1 %740, label %741, label %742, !prof !39, !nosanitize !38

741:                                              ; preds = %.loopexit95
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

742:                                              ; preds = %.loopexit95
  %743 = extractvalue { i64, i1 } %739, 0, !nosanitize !38
  store i64 %743, ptr %593, align 8, !tbaa !37
  %744 = load i64, ptr %19, align 8, !tbaa !29
  %745 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %744, i64 %737), !nosanitize !38
  %746 = extractvalue { i64, i1 } %745, 0, !nosanitize !38
  %747 = extractvalue { i64, i1 } %745, 1, !nosanitize !38
  br i1 %747, label %748, label %749, !prof !39, !nosanitize !38

748:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

749:                                              ; preds = %742
  store i64 %746, ptr %19, align 8, !tbaa !29
  br i1 %734, label %.loopexit97, label %750

750:                                              ; preds = %749
  %751 = icmp eq i64 %746, 0
  br i1 %751, label %752, label %595, !llvm.loop !40

752:                                              ; preds = %750
  %753 = load i32, ptr %346, align 8, !tbaa !18
  br label %754

754:                                              ; preds = %752, %427
  %755 = phi i32 [ %753, %752 ], [ %428, %427 ]
  %756 = icmp ugt i32 %755, 1
  %757 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %756, label %758, label %932

758:                                              ; preds = %754
  %759 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %760 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %761 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %762 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %763 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %764 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %765 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %766 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %768 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %769 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %770 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %771 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %758
  %773 = phi ptr [ %3, %758 ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.loopexit.backedge ]
  %774 = load i32, ptr %757, align 8, !tbaa !41
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %779, label %776

776:                                              ; preds = %.loopexit
  %777 = load ptr, ptr %6, align 8, !tbaa !42
  %778 = load ptr, ptr %759, align 8, !tbaa !20
  br label %781

779:                                              ; preds = %.loopexit
  %780 = load ptr, ptr %759, align 8, !tbaa !20
  store ptr %780, ptr %6, align 8, !tbaa !42
  br label %781

781:                                              ; preds = %779, %776
  %782 = phi ptr [ %778, %776 ], [ %780, %779 ]
  %783 = phi ptr [ %777, %776 ], [ %780, %779 ]
  %784 = zext i32 %774 to i64
  %785 = getelementptr inbounds nuw i8, ptr %783, i64 %784
  %786 = ptrtoint ptr %785 to i64
  %787 = ptrtoint ptr %782 to i64
  %788 = sub i64 %786, %787
  %789 = trunc i64 %788 to i32
  %790 = load i32, ptr %346, align 8, !tbaa !18
  %791 = icmp ne i32 %790, %789
  %792 = zext i1 %791 to i64
  %793 = zext i1 %791 to i32
  %794 = and i64 %788, 4294967295
  %795 = getelementptr inbounds nuw i8, ptr %782, i64 %794
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %795, ptr align 1 %773, i64 %792, i1 false)
  %796 = load i32, ptr %757, align 8, !tbaa !41
  %797 = add i32 %796, %793
  store i32 %797, ptr %757, align 8, !tbaa !41
  %798 = load i64, ptr %760, align 8, !tbaa !37
  %799 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %798, i64 %792), !nosanitize !38
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !38
  br i1 %800, label %.loopexit87, label %801, !prof !39, !nosanitize !38

.loopexit87:                                      ; preds = %.loopexit89, %781
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

801:                                              ; preds = %781
  %802 = extractvalue { i64, i1 } %799, 0, !nosanitize !38
  store i64 %802, ptr %760, align 8, !tbaa !37
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %791 to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %773, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br i1 %791, label %.loopexit88, label %803

803:                                              ; preds = %801
  %804 = load i32, ptr %346, align 8, !tbaa !18
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %837

806:                                              ; preds = %803
  %807 = load i32, ptr %762, align 4, !tbaa !19
  %808 = shl i32 %807, 1
  %809 = zext i32 %808 to i64
  %810 = tail call noalias ptr @malloc(i64 noundef %809) #16
  store ptr %810, ptr %759, align 8, !tbaa !20
  %811 = icmp eq ptr %810, null
  br i1 %811, label %812, label %813

812:                                              ; preds = %806
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %929

813:                                              ; preds = %806
  %814 = load i32, ptr %761, align 8, !tbaa !21
  %815 = icmp eq i32 %814, 0
  %816 = load i32, ptr %762, align 4, !tbaa !19
  br i1 %815, label %818, label %817

817:                                              ; preds = %813
  store i32 %816, ptr %346, align 8, !tbaa !18
  br label %840

818:                                              ; preds = %813
  %819 = zext i32 %816 to i64
  %820 = tail call noalias ptr @malloc(i64 noundef %819) #16
  store ptr %820, ptr %763, align 8, !tbaa !22
  %821 = icmp eq ptr %820, null
  br i1 %821, label %822, label %823

822:                                              ; preds = %818
  tail call void @free(ptr noundef nonnull %810) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %929

823:                                              ; preds = %818
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %764, i8 0, i64 24, i1 false)
  %824 = load i32, ptr %765, align 8, !tbaa !23
  %825 = load i32, ptr %766, align 4, !tbaa !24
  %826 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %824, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %825, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %831, label %828

828:                                              ; preds = %823
  %829 = load ptr, ptr %763, align 8, !tbaa !22
  tail call void @free(ptr noundef %829) #15
  %830 = load ptr, ptr %759, align 8, !tbaa !20
  tail call void @free(ptr noundef %830) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %929

831:                                              ; preds = %823
  store ptr null, ptr %6, align 8, !tbaa !25
  %832 = load i32, ptr %761, align 8, !tbaa !21
  %833 = load i32, ptr %762, align 4, !tbaa !19
  store i32 %833, ptr %346, align 8, !tbaa !18
  %834 = icmp eq i32 %832, 0
  br i1 %834, label %835, label %840

835:                                              ; preds = %831
  store i32 %833, ptr %769, align 8, !tbaa !26
  %836 = load ptr, ptr %763, align 8, !tbaa !22
  store ptr %836, ptr %770, align 8, !tbaa !27
  store ptr %836, ptr %771, align 8, !tbaa !28
  br label %870

837:                                              ; preds = %803
  %838 = load i32, ptr %761, align 8, !tbaa !21
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %870, label %840

840:                                              ; preds = %837, %831, %817
  %841 = load i32, ptr %757, align 8, !tbaa !30
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %.loopexit.backedge, label %843

843:                                              ; preds = %840
  %844 = tail call ptr @__errno_location() #17
  %845 = load ptr, ptr %6, align 8, !tbaa !25
  br label %846

846:                                              ; preds = %863, %843
  %847 = phi ptr [ %845, %843 ], [ %868, %863 ]
  store i32 0, ptr %844, align 4, !tbaa !4
  store i32 0, ptr %767, align 4, !tbaa !17
  %848 = load i32, ptr %757, align 8, !tbaa !30
  %849 = tail call i32 @llvm.umin.i32(i32 %848, i32 1073741824)
  %850 = zext nneg i32 %849 to i64
  %851 = load i32, ptr %768, align 4, !tbaa !31
  %852 = tail call i64 @write(i32 noundef %851, ptr noundef %847, i64 noundef %850) #15
  %853 = trunc i64 %852 to i32
  %854 = icmp slt i32 %853, 0
  br i1 %854, label %855, label %863

855:                                              ; preds = %846
  %856 = load i32, ptr %844, align 4, !tbaa !4
  %857 = icmp eq i32 %856, 11
  br i1 %857, label %858, label %860

858:                                              ; preds = %855
  store i32 1, ptr %767, align 4, !tbaa !17
  %859 = load i32, ptr %844, align 4, !tbaa !4
  br label %860

860:                                              ; preds = %858, %855
  %861 = phi i32 [ %856, %855 ], [ %859, %858 ]
  %862 = tail call ptr @strerror(i32 noundef %861) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %862) #15
  br label %929

863:                                              ; preds = %846
  %864 = load i32, ptr %757, align 8, !tbaa !30
  %865 = sub i32 %864, %853
  store i32 %865, ptr %757, align 8, !tbaa !30
  %866 = load ptr, ptr %6, align 8, !tbaa !25
  %867 = and i64 %852, 2147483647
  %868 = getelementptr inbounds nuw i8, ptr %866, i64 %867
  store ptr %868, ptr %6, align 8, !tbaa !25
  %869 = icmp eq i32 %864, %853
  br i1 %869, label %.loopexit.backedge, label %846, !llvm.loop !32

870:                                              ; preds = %837, %835
  %871 = load i32, ptr %772, align 8, !tbaa !34
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %878, label %873

873:                                              ; preds = %870
  %874 = load i32, ptr %757, align 8, !tbaa !30
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %.loopexit.backedge, label %876

.loopexit.backedge:                               ; preds = %863, %926, %873, %840
  br label %.loopexit

876:                                              ; preds = %873
  %877 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %772, align 8, !tbaa !34
  br label %878

878:                                              ; preds = %876, %870
  %879 = load i32, ptr %769, align 8, !tbaa !26
  br label %880

880:                                              ; preds = %926, %878
  %881 = phi i32 [ %879, %878 ], [ %927, %926 ]
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %921

883:                                              ; preds = %880
  %884 = load ptr, ptr %770, align 8, !tbaa !27
  %885 = load ptr, ptr %771, align 8, !tbaa !28
  %886 = icmp ugt ptr %884, %885
  br i1 %886, label %887, label %918

887:                                              ; preds = %883
  %888 = tail call ptr @__errno_location() #17
  br label %889

889:                                              ; preds = %909, %887
  %890 = phi ptr [ %885, %887 ], [ %912, %909 ]
  %891 = phi ptr [ %884, %887 ], [ %913, %909 ]
  store i32 0, ptr %888, align 4, !tbaa !4
  store i32 0, ptr %767, align 4, !tbaa !17
  %892 = ptrtoint ptr %891 to i64
  %893 = ptrtoint ptr %890 to i64
  %894 = sub i64 %892, %893
  %895 = tail call i64 @llvm.smin.i64(i64 %894, i64 1073741824)
  %896 = and i64 %895, 4294967295
  %897 = load i32, ptr %768, align 4, !tbaa !31
  %898 = tail call i64 @write(i32 noundef %897, ptr noundef %890, i64 noundef %896) #15
  %899 = and i64 %898, 2147483648
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %909, label %901

901:                                              ; preds = %889
  %902 = load i32, ptr %888, align 4, !tbaa !4
  %903 = icmp eq i32 %902, 11
  br i1 %903, label %904, label %906

904:                                              ; preds = %901
  store i32 1, ptr %767, align 4, !tbaa !17
  %905 = load i32, ptr %888, align 4, !tbaa !4
  br label %906

906:                                              ; preds = %904, %901
  %907 = phi i32 [ %902, %901 ], [ %905, %904 ]
  %908 = tail call ptr @strerror(i32 noundef %907) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %908) #15
  br label %929

909:                                              ; preds = %889
  %910 = load ptr, ptr %771, align 8, !tbaa !28
  %911 = and i64 %898, 2147483647
  %912 = getelementptr inbounds nuw i8, ptr %910, i64 %911
  store ptr %912, ptr %771, align 8, !tbaa !28
  %913 = load ptr, ptr %770, align 8, !tbaa !27
  %914 = icmp ugt ptr %913, %912
  br i1 %914, label %889, label %915, !llvm.loop !35

915:                                              ; preds = %909
  %916 = load i32, ptr %769, align 8, !tbaa !26
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %915, %883
  %919 = load i32, ptr %346, align 8, !tbaa !18
  store i32 %919, ptr %769, align 8, !tbaa !26
  %920 = load ptr, ptr %763, align 8, !tbaa !22
  store ptr %920, ptr %770, align 8, !tbaa !27
  store ptr %920, ptr %771, align 8, !tbaa !28
  br label %921

921:                                              ; preds = %918, %915, %880
  %922 = phi i32 [ %916, %915 ], [ %919, %918 ], [ %881, %880 ]
  %923 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %924 = icmp eq i32 %923, -2
  br i1 %924, label %925, label %926

925:                                              ; preds = %921
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %929

926:                                              ; preds = %921
  %927 = load i32, ptr %769, align 8, !tbaa !26
  %928 = icmp eq i32 %922, %927
  br i1 %928, label %.loopexit.backedge, label %880, !llvm.loop !36

929:                                              ; preds = %925, %906, %860, %828, %822, %812
  %930 = load i32, ptr %767, align 4, !tbaa !17
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %.loopexit97, label %1239

932:                                              ; preds = %754
  %933 = load i32, ptr %757, align 8, !tbaa !41
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %.loopexit93, label %935

935:                                              ; preds = %932
  %936 = icmp eq i32 %755, 0
  br i1 %936, label %937, label %978

937:                                              ; preds = %935
  %938 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %939 = load i32, ptr %938, align 4, !tbaa !19
  %940 = shl i32 %939, 1
  %941 = zext i32 %940 to i64
  %942 = tail call noalias ptr @malloc(i64 noundef %941) #16
  %943 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %942, ptr %943, align 8, !tbaa !20
  %944 = icmp eq ptr %942, null
  br i1 %944, label %945, label %946

945:                                              ; preds = %937
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

946:                                              ; preds = %937
  %947 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %948 = load i32, ptr %947, align 8, !tbaa !21
  %949 = icmp eq i32 %948, 0
  %950 = load i32, ptr %938, align 4, !tbaa !19
  br i1 %949, label %952, label %951

951:                                              ; preds = %946
  store i32 %950, ptr %346, align 8, !tbaa !18
  br label %982

952:                                              ; preds = %946
  %953 = zext i32 %950 to i64
  %954 = tail call noalias ptr @malloc(i64 noundef %953) #16
  %955 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %954, ptr %955, align 8, !tbaa !22
  %956 = icmp eq ptr %954, null
  br i1 %956, label %957, label %958

957:                                              ; preds = %952
  tail call void @free(ptr noundef nonnull %942) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

958:                                              ; preds = %952
  %959 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %960 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %959, i8 0, i64 24, i1 false)
  %961 = load i32, ptr %960, align 8, !tbaa !23
  %962 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %963 = load i32, ptr %962, align 4, !tbaa !24
  %964 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %961, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %963, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %969, label %966

966:                                              ; preds = %958
  %967 = load ptr, ptr %955, align 8, !tbaa !22
  tail call void @free(ptr noundef %967) #15
  %968 = load ptr, ptr %943, align 8, !tbaa !20
  tail call void @free(ptr noundef %968) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit97

969:                                              ; preds = %958
  store ptr null, ptr %6, align 8, !tbaa !25
  %970 = load i32, ptr %947, align 8, !tbaa !21
  %971 = load i32, ptr %938, align 4, !tbaa !19
  store i32 %971, ptr %346, align 8, !tbaa !18
  %972 = icmp eq i32 %970, 0
  br i1 %972, label %973, label %982

973:                                              ; preds = %969
  %974 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %971, ptr %974, align 8, !tbaa !26
  %975 = load ptr, ptr %955, align 8, !tbaa !22
  %976 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %975, ptr %976, align 8, !tbaa !27
  %977 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %975, ptr %977, align 8, !tbaa !28
  br label %1014

978:                                              ; preds = %935
  %979 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %980 = load i32, ptr %979, align 8, !tbaa !21
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1014, label %982

982:                                              ; preds = %978, %969, %951
  %983 = load i32, ptr %757, align 8, !tbaa !30
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %.loopexit93, label %985

985:                                              ; preds = %982
  %986 = tail call ptr @__errno_location() #17
  %987 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %988 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %989 = load ptr, ptr %6, align 8, !tbaa !25
  br label %990

990:                                              ; preds = %1007, %985
  %991 = phi ptr [ %989, %985 ], [ %1012, %1007 ]
  store i32 0, ptr %986, align 4, !tbaa !4
  store i32 0, ptr %987, align 4, !tbaa !17
  %992 = load i32, ptr %757, align 8, !tbaa !30
  %993 = tail call i32 @llvm.umin.i32(i32 %992, i32 1073741824)
  %994 = zext nneg i32 %993 to i64
  %995 = load i32, ptr %988, align 4, !tbaa !31
  %996 = tail call i64 @write(i32 noundef %995, ptr noundef %991, i64 noundef %994) #15
  %997 = trunc i64 %996 to i32
  %998 = icmp slt i32 %997, 0
  br i1 %998, label %999, label %1007

999:                                              ; preds = %990
  %1000 = load i32, ptr %986, align 4, !tbaa !4
  %1001 = icmp eq i32 %1000, 11
  br i1 %1001, label %1002, label %1004

1002:                                             ; preds = %999
  store i32 1, ptr %987, align 4, !tbaa !17
  %1003 = load i32, ptr %986, align 4, !tbaa !4
  br label %1004

1004:                                             ; preds = %1002, %999
  %1005 = phi i32 [ %1000, %999 ], [ %1003, %1002 ]
  %1006 = tail call ptr @strerror(i32 noundef %1005) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1006) #15
  br label %.loopexit97

1007:                                             ; preds = %990
  %1008 = load i32, ptr %757, align 8, !tbaa !30
  %1009 = sub i32 %1008, %997
  store i32 %1009, ptr %757, align 8, !tbaa !30
  %1010 = load ptr, ptr %6, align 8, !tbaa !25
  %1011 = and i64 %996, 2147483647
  %1012 = getelementptr inbounds nuw i8, ptr %1010, i64 %1011
  store ptr %1012, ptr %6, align 8, !tbaa !25
  %1013 = icmp eq i32 %1008, %997
  br i1 %1013, label %.loopexit93, label %990, !llvm.loop !32

1014:                                             ; preds = %978, %973
  %1015 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1016 = load i32, ptr %1015, align 8, !tbaa !34
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1023, label %1018

1018:                                             ; preds = %1014
  %1019 = load i32, ptr %757, align 8, !tbaa !30
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %.loopexit93, label %1021

1021:                                             ; preds = %1018
  %1022 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1015, align 8, !tbaa !34
  br label %1023

1023:                                             ; preds = %1021, %1014
  %1024 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1025 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1027 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1028 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1029 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1030 = load i32, ptr %1024, align 8, !tbaa !26
  br label %1031

1031:                                             ; preds = %1077, %1023
  %1032 = phi i32 [ %1030, %1023 ], [ %1078, %1077 ]
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1072

1034:                                             ; preds = %1031
  %1035 = load ptr, ptr %1025, align 8, !tbaa !27
  %1036 = load ptr, ptr %1026, align 8, !tbaa !28
  %1037 = icmp ugt ptr %1035, %1036
  br i1 %1037, label %1038, label %1069

1038:                                             ; preds = %1034
  %1039 = tail call ptr @__errno_location() #17
  br label %1040

1040:                                             ; preds = %1060, %1038
  %1041 = phi ptr [ %1036, %1038 ], [ %1063, %1060 ]
  %1042 = phi ptr [ %1035, %1038 ], [ %1064, %1060 ]
  store i32 0, ptr %1039, align 4, !tbaa !4
  store i32 0, ptr %1027, align 4, !tbaa !17
  %1043 = ptrtoint ptr %1042 to i64
  %1044 = ptrtoint ptr %1041 to i64
  %1045 = sub i64 %1043, %1044
  %1046 = tail call i64 @llvm.smin.i64(i64 %1045, i64 1073741824)
  %1047 = and i64 %1046, 4294967295
  %1048 = load i32, ptr %1028, align 4, !tbaa !31
  %1049 = tail call i64 @write(i32 noundef %1048, ptr noundef %1041, i64 noundef %1047) #15
  %1050 = and i64 %1049, 2147483648
  %1051 = icmp eq i64 %1050, 0
  br i1 %1051, label %1060, label %1052

1052:                                             ; preds = %1040
  %1053 = load i32, ptr %1039, align 4, !tbaa !4
  %1054 = icmp eq i32 %1053, 11
  br i1 %1054, label %1055, label %1057

1055:                                             ; preds = %1052
  store i32 1, ptr %1027, align 4, !tbaa !17
  %1056 = load i32, ptr %1039, align 4, !tbaa !4
  br label %1057

1057:                                             ; preds = %1055, %1052
  %1058 = phi i32 [ %1053, %1052 ], [ %1056, %1055 ]
  %1059 = tail call ptr @strerror(i32 noundef %1058) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1059) #15
  br label %.loopexit97

1060:                                             ; preds = %1040
  %1061 = load ptr, ptr %1026, align 8, !tbaa !28
  %1062 = and i64 %1049, 2147483647
  %1063 = getelementptr inbounds nuw i8, ptr %1061, i64 %1062
  store ptr %1063, ptr %1026, align 8, !tbaa !28
  %1064 = load ptr, ptr %1025, align 8, !tbaa !27
  %1065 = icmp ugt ptr %1064, %1063
  br i1 %1065, label %1040, label %1066, !llvm.loop !35

1066:                                             ; preds = %1060
  %1067 = load i32, ptr %1024, align 8, !tbaa !26
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1072

1069:                                             ; preds = %1066, %1034
  %1070 = load i32, ptr %346, align 8, !tbaa !18
  store i32 %1070, ptr %1024, align 8, !tbaa !26
  %1071 = load ptr, ptr %1029, align 8, !tbaa !22
  store ptr %1071, ptr %1025, align 8, !tbaa !27
  store ptr %1071, ptr %1026, align 8, !tbaa !28
  br label %1072

1072:                                             ; preds = %1069, %1066, %1031
  %1073 = phi i32 [ %1067, %1066 ], [ %1070, %1069 ], [ %1032, %1031 ]
  %1074 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1075 = icmp eq i32 %1074, -2
  br i1 %1075, label %1076, label %1077

1076:                                             ; preds = %1072
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit97

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %1024, align 8, !tbaa !26
  %1079 = icmp eq i32 %1073, %1078
  br i1 %1079, label %.loopexit93, label %1031, !llvm.loop !36

.loopexit93:                                      ; preds = %1007, %1077, %1018, %982, %932
  store ptr %3, ptr %6, align 8, !tbaa !42
  %1080 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1081 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1082 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1083 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1084 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1085 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1086 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1087 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1088 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1090 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1091 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1093 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1094

1094:                                             ; preds = %1236, %.loopexit93
  %1095 = phi i64 [ 1, %.loopexit93 ], [ %1232, %1236 ]
  %1096 = call i64 @llvm.umin.i64(i64 %1095, i64 4294967295)
  %1097 = trunc nuw i64 %1096 to i32
  store i32 %1097, ptr %757, align 8, !tbaa !41
  %1098 = load i32, ptr %346, align 8, !tbaa !18
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1131

1100:                                             ; preds = %1094
  %1101 = load i32, ptr %1081, align 4, !tbaa !19
  %1102 = shl i32 %1101, 1
  %1103 = zext i32 %1102 to i64
  %1104 = call noalias ptr @malloc(i64 noundef %1103) #16
  store ptr %1104, ptr %1082, align 8, !tbaa !20
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1106, label %1107

1106:                                             ; preds = %1100
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit89

1107:                                             ; preds = %1100
  %1108 = load i32, ptr %1080, align 8, !tbaa !21
  %1109 = icmp eq i32 %1108, 0
  %1110 = load i32, ptr %1081, align 4, !tbaa !19
  br i1 %1109, label %1112, label %1111

1111:                                             ; preds = %1107
  store i32 %1110, ptr %346, align 8, !tbaa !18
  br label %1134

1112:                                             ; preds = %1107
  %1113 = zext i32 %1110 to i64
  %1114 = call noalias ptr @malloc(i64 noundef %1113) #16
  store ptr %1114, ptr %1083, align 8, !tbaa !22
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %1117

1116:                                             ; preds = %1112
  call void @free(ptr noundef nonnull %1104) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit89

1117:                                             ; preds = %1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1084, i8 0, i64 24, i1 false)
  %1118 = load i32, ptr %1085, align 8, !tbaa !23
  %1119 = load i32, ptr %1086, align 4, !tbaa !24
  %1120 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1118, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1119, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1125, label %1122

1122:                                             ; preds = %1117
  %1123 = load ptr, ptr %1083, align 8, !tbaa !22
  call void @free(ptr noundef %1123) #15
  %1124 = load ptr, ptr %1082, align 8, !tbaa !20
  call void @free(ptr noundef %1124) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit89

1125:                                             ; preds = %1117
  store ptr null, ptr %6, align 8, !tbaa !25
  %1126 = load i32, ptr %1080, align 8, !tbaa !21
  %1127 = load i32, ptr %1081, align 4, !tbaa !19
  store i32 %1127, ptr %346, align 8, !tbaa !18
  %1128 = icmp eq i32 %1126, 0
  br i1 %1128, label %1129, label %1134

1129:                                             ; preds = %1125
  store i32 %1127, ptr %1089, align 8, !tbaa !26
  %1130 = load ptr, ptr %1083, align 8, !tbaa !22
  store ptr %1130, ptr %1090, align 8, !tbaa !27
  store ptr %1130, ptr %1091, align 8, !tbaa !28
  br label %1164

1131:                                             ; preds = %1094
  %1132 = load i32, ptr %1080, align 8, !tbaa !21
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1164, label %1134

1134:                                             ; preds = %1131, %1125, %1111
  %1135 = load i32, ptr %757, align 8, !tbaa !30
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %.loopexit89, label %1137

1137:                                             ; preds = %1134
  %1138 = tail call ptr @__errno_location() #17
  %1139 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1140

1140:                                             ; preds = %1157, %1137
  %1141 = phi ptr [ %1139, %1137 ], [ %1162, %1157 ]
  store i32 0, ptr %1138, align 4, !tbaa !4
  store i32 0, ptr %1087, align 4, !tbaa !17
  %1142 = load i32, ptr %757, align 8, !tbaa !30
  %1143 = call i32 @llvm.umin.i32(i32 %1142, i32 1073741824)
  %1144 = zext nneg i32 %1143 to i64
  %1145 = load i32, ptr %1088, align 4, !tbaa !31
  %1146 = call i64 @write(i32 noundef %1145, ptr noundef %1141, i64 noundef %1144) #15
  %1147 = trunc i64 %1146 to i32
  %1148 = icmp slt i32 %1147, 0
  br i1 %1148, label %1149, label %1157

1149:                                             ; preds = %1140
  %1150 = load i32, ptr %1138, align 4, !tbaa !4
  %1151 = icmp eq i32 %1150, 11
  br i1 %1151, label %1152, label %1154

1152:                                             ; preds = %1149
  store i32 1, ptr %1087, align 4, !tbaa !17
  %1153 = load i32, ptr %1138, align 4, !tbaa !4
  br label %1154

1154:                                             ; preds = %1152, %1149
  %1155 = phi i32 [ %1150, %1149 ], [ %1153, %1152 ]
  %1156 = call ptr @strerror(i32 noundef %1155) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1156) #15
  br label %.loopexit89

1157:                                             ; preds = %1140
  %1158 = load i32, ptr %757, align 8, !tbaa !30
  %1159 = sub i32 %1158, %1147
  store i32 %1159, ptr %757, align 8, !tbaa !30
  %1160 = load ptr, ptr %6, align 8, !tbaa !25
  %1161 = and i64 %1146, 2147483647
  %1162 = getelementptr inbounds nuw i8, ptr %1160, i64 %1161
  store ptr %1162, ptr %6, align 8, !tbaa !25
  %1163 = icmp eq i32 %1158, %1147
  br i1 %1163, label %.loopexit89, label %1140, !llvm.loop !32

1164:                                             ; preds = %1131, %1129
  %1165 = load i32, ptr %1092, align 8, !tbaa !34
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1172, label %1167

1167:                                             ; preds = %1164
  %1168 = load i32, ptr %757, align 8, !tbaa !30
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %.loopexit89, label %1170

1170:                                             ; preds = %1167
  %1171 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1092, align 8, !tbaa !34
  br label %1172

1172:                                             ; preds = %1170, %1164
  %1173 = load i32, ptr %1089, align 8, !tbaa !26
  br label %1174

1174:                                             ; preds = %1220, %1172
  %1175 = phi i32 [ %1173, %1172 ], [ %1221, %1220 ]
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1177, label %1215

1177:                                             ; preds = %1174
  %1178 = load ptr, ptr %1090, align 8, !tbaa !27
  %1179 = load ptr, ptr %1091, align 8, !tbaa !28
  %1180 = icmp ugt ptr %1178, %1179
  br i1 %1180, label %1181, label %1212

1181:                                             ; preds = %1177
  %1182 = tail call ptr @__errno_location() #17
  br label %1183

1183:                                             ; preds = %1203, %1181
  %1184 = phi ptr [ %1179, %1181 ], [ %1206, %1203 ]
  %1185 = phi ptr [ %1178, %1181 ], [ %1207, %1203 ]
  store i32 0, ptr %1182, align 4, !tbaa !4
  store i32 0, ptr %1087, align 4, !tbaa !17
  %1186 = ptrtoint ptr %1185 to i64
  %1187 = ptrtoint ptr %1184 to i64
  %1188 = sub i64 %1186, %1187
  %1189 = call i64 @llvm.smin.i64(i64 %1188, i64 1073741824)
  %1190 = and i64 %1189, 4294967295
  %1191 = load i32, ptr %1088, align 4, !tbaa !31
  %1192 = call i64 @write(i32 noundef %1191, ptr noundef %1184, i64 noundef %1190) #15
  %1193 = and i64 %1192, 2147483648
  %1194 = icmp eq i64 %1193, 0
  br i1 %1194, label %1203, label %1195

1195:                                             ; preds = %1183
  %1196 = load i32, ptr %1182, align 4, !tbaa !4
  %1197 = icmp eq i32 %1196, 11
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1195
  store i32 1, ptr %1087, align 4, !tbaa !17
  %1199 = load i32, ptr %1182, align 4, !tbaa !4
  br label %1200

1200:                                             ; preds = %1198, %1195
  %1201 = phi i32 [ %1196, %1195 ], [ %1199, %1198 ]
  %1202 = call ptr @strerror(i32 noundef %1201) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1202) #15
  br label %.loopexit89

1203:                                             ; preds = %1183
  %1204 = load ptr, ptr %1091, align 8, !tbaa !28
  %1205 = and i64 %1192, 2147483647
  %1206 = getelementptr inbounds nuw i8, ptr %1204, i64 %1205
  store ptr %1206, ptr %1091, align 8, !tbaa !28
  %1207 = load ptr, ptr %1090, align 8, !tbaa !27
  %1208 = icmp ugt ptr %1207, %1206
  br i1 %1208, label %1183, label %1209, !llvm.loop !35

1209:                                             ; preds = %1203
  %1210 = load i32, ptr %1089, align 8, !tbaa !26
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1215

1212:                                             ; preds = %1209, %1177
  %1213 = load i32, ptr %346, align 8, !tbaa !18
  store i32 %1213, ptr %1089, align 8, !tbaa !26
  %1214 = load ptr, ptr %1083, align 8, !tbaa !22
  store ptr %1214, ptr %1090, align 8, !tbaa !27
  store ptr %1214, ptr %1091, align 8, !tbaa !28
  br label %1215

1215:                                             ; preds = %1212, %1209, %1174
  %1216 = phi i32 [ %1210, %1209 ], [ %1213, %1212 ], [ %1175, %1174 ]
  %1217 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1218 = icmp eq i32 %1217, -2
  br i1 %1218, label %1219, label %1220

1219:                                             ; preds = %1215
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit89

1220:                                             ; preds = %1215
  %1221 = load i32, ptr %1089, align 8, !tbaa !26
  %1222 = icmp eq i32 %1216, %1221
  br i1 %1222, label %.loopexit89, label %1174, !llvm.loop !36

.loopexit89:                                      ; preds = %1157, %1220, %1219, %1200, %1167, %1154, %1134, %1122, %1116, %1106
  %1223 = phi i1 [ false, %1167 ], [ true, %1154 ], [ false, %1134 ], [ true, %1116 ], [ true, %1200 ], [ true, %1219 ], [ false, %1220 ], [ true, %1106 ], [ true, %1122 ], [ false, %1157 ]
  %1224 = load i32, ptr %757, align 8, !tbaa !41
  %1225 = sub i32 %1097, %1224
  %1226 = zext i32 %1225 to i64
  %1227 = load i64, ptr %1093, align 8, !tbaa !37
  %1228 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1227, i64 %1226), !nosanitize !38
  %1229 = extractvalue { i64, i1 } %1228, 1, !nosanitize !38
  br i1 %1229, label %.loopexit87, label %1230, !prof !39, !nosanitize !38

1230:                                             ; preds = %.loopexit89
  %1231 = extractvalue { i64, i1 } %1228, 0, !nosanitize !38
  store i64 %1231, ptr %1093, align 8, !tbaa !37
  %1232 = sub i64 %1095, %1226
  br i1 %1223, label %1233, label %1236

1233:                                             ; preds = %1230
  %1234 = load i32, ptr %1087, align 4, !tbaa !17
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %.loopexit97, label %1239

1236:                                             ; preds = %1230
  %1237 = icmp eq i64 %1232, 0
  br i1 %1237, label %.loopexit88, label %1094, !llvm.loop !43

.loopexit88:                                      ; preds = %1236, %801
  %1238 = and i32 %1, 255
  br label %.loopexit97

1239:                                             ; preds = %1233, %929
  %1240 = phi i64 [ %1232, %1233 ], [ 1, %929 ]
  %1241 = freeze i64 %1240
  %1242 = icmp eq i64 %1241, 0
  %1243 = and i32 %1, 255
  %1244 = select i1 %1242, i32 %1243, i32 -1
  br label %.loopexit97

.loopexit97:                                      ; preds = %343, %749, %1239, %.loopexit88, %1233, %1076, %1057, %1004, %966, %957, %945, %929, %576, %557, %504, %466, %457, %445, %415, %406, %394, %381, %169, %150, %97, %59, %50, %38, %14, %5, %2
  %1245 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %383, %381 ], [ -1, %929 ], [ -1, %749 ], [ %1244, %1239 ], [ %1238, %.loopexit88 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %150 ], [ -1, %169 ], [ -1, %1233 ], [ -1, %966 ], [ -1, %406 ], [ -1, %394 ], [ -1, %415 ], [ -1, %445 ], [ -1, %466 ], [ -1, %504 ], [ -1, %457 ], [ -1, %557 ], [ -1, %576 ], [ -1, %1004 ], [ -1, %957 ], [ -1, %1057 ], [ -1, %1076 ], [ -1, %945 ], [ -1, %343 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %1245
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %898, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %898

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %898, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %898

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %.loopexit64, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = load i32, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = shl i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #16
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %32, ptr %33, align 8, !tbaa !20
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

36:                                               ; preds = %26
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %38 = load i32, ptr %37, align 8, !tbaa !21
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr %28, align 4, !tbaa !19
  br i1 %39, label %42, label %41

41:                                               ; preds = %36
  store i32 %40, ptr %23, align 8, !tbaa !18
  br label %68

42:                                               ; preds = %36
  %43 = zext i32 %40 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #16
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %44, ptr %45, align 8, !tbaa !22
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %32) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

48:                                               ; preds = %42
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = tail call i32 @deflateInit2_(ptr noundef nonnull %27, i32 noundef %51, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %53, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !22
  tail call void @free(ptr noundef %57) #15
  %58 = load ptr, ptr %33, align 8, !tbaa !20
  tail call void @free(ptr noundef %58) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

59:                                               ; preds = %48
  store ptr null, ptr %27, align 8, !tbaa !25
  %60 = load i32, ptr %37, align 8, !tbaa !21
  %61 = load i32, ptr %28, align 4, !tbaa !19
  store i32 %61, ptr %23, align 8, !tbaa !18
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %61, ptr %64, align 8, !tbaa !26
  %65 = load ptr, ptr %45, align 8, !tbaa !22
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %65, ptr %66, align 8, !tbaa !27
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %65, ptr %67, align 8, !tbaa !28
  br label %68

68:                                               ; preds = %63, %59, %41, %22
  %69 = phi i32 [ %61, %63 ], [ %61, %59 ], [ %40, %41 ], [ %24, %22 ]
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %71 = load i64, ptr %70, align 8, !tbaa !29
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %397, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit74, label %78

78:                                               ; preds = %73
  %79 = icmp eq i32 %69, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %78
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %82 = load i32, ptr %81, align 4, !tbaa !19
  %83 = shl i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %85, ptr %86, align 8, !tbaa !20
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

89:                                               ; preds = %80
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %91 = load i32, ptr %90, align 8, !tbaa !21
  %92 = icmp eq i32 %91, 0
  %93 = load i32, ptr %81, align 4, !tbaa !19
  br i1 %92, label %95, label %94

94:                                               ; preds = %89
  store i32 %93, ptr %23, align 8, !tbaa !18
  br label %125

95:                                               ; preds = %89
  %96 = zext i32 %93 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #16
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %97, ptr %98, align 8, !tbaa !22
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  tail call void @free(ptr noundef nonnull %85) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

101:                                              ; preds = %95
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  %104 = load i32, ptr %103, align 8, !tbaa !23
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %104, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %106, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %98, align 8, !tbaa !22
  tail call void @free(ptr noundef %110) #15
  %111 = load ptr, ptr %86, align 8, !tbaa !20
  tail call void @free(ptr noundef %111) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

112:                                              ; preds = %101
  store ptr null, ptr %74, align 8, !tbaa !25
  %113 = load i32, ptr %90, align 8, !tbaa !21
  %114 = load i32, ptr %81, align 4, !tbaa !19
  store i32 %114, ptr %23, align 8, !tbaa !18
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %114, ptr %117, align 8, !tbaa !26
  %118 = load ptr, ptr %98, align 8, !tbaa !22
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %118, ptr %119, align 8, !tbaa !27
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %118, ptr %120, align 8, !tbaa !28
  br label %157

121:                                              ; preds = %78
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %123 = load i32, ptr %122, align 8, !tbaa !21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %121, %112, %94
  %126 = load i32, ptr %75, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit74, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #17
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %132 = load ptr, ptr %74, align 8, !tbaa !25
  br label %133

133:                                              ; preds = %150, %128
  %134 = phi ptr [ %132, %128 ], [ %155, %150 ]
  store i32 0, ptr %129, align 4, !tbaa !4
  store i32 0, ptr %130, align 4, !tbaa !17
  %135 = load i32, ptr %75, align 8, !tbaa !30
  %136 = tail call i32 @llvm.umin.i32(i32 %135, i32 1073741824)
  %137 = zext nneg i32 %136 to i64
  %138 = load i32, ptr %131, align 4, !tbaa !31
  %139 = tail call i64 @write(i32 noundef %138, ptr noundef %134, i64 noundef %137) #15
  %140 = trunc i64 %139 to i32
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %133
  %143 = load i32, ptr %129, align 4, !tbaa !4
  %144 = icmp eq i32 %143, 11
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  store i32 1, ptr %130, align 4, !tbaa !17
  %146 = load i32, ptr %129, align 4, !tbaa !4
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i32 [ %143, %142 ], [ %146, %145 ]
  %149 = tail call ptr @strerror(i32 noundef %148) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %149) #15
  br label %.loopexit64

150:                                              ; preds = %133
  %151 = load i32, ptr %75, align 8, !tbaa !30
  %152 = sub i32 %151, %140
  store i32 %152, ptr %75, align 8, !tbaa !30
  %153 = load ptr, ptr %74, align 8, !tbaa !25
  %154 = and i64 %139, 2147483647
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  store ptr %155, ptr %74, align 8, !tbaa !25
  %156 = icmp eq i32 %151, %140
  br i1 %156, label %.loopexit74, label %133, !llvm.loop !32

157:                                              ; preds = %121, %116
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !34
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %75, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %.loopexit74, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %158, align 8, !tbaa !34
  br label %166

166:                                              ; preds = %164, %157
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %173 = load i32, ptr %167, align 8, !tbaa !26
  br label %174

174:                                              ; preds = %220, %166
  %175 = phi i32 [ %173, %166 ], [ %221, %220 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %215

177:                                              ; preds = %174
  %178 = load ptr, ptr %168, align 8, !tbaa !27
  %179 = load ptr, ptr %169, align 8, !tbaa !28
  %180 = icmp ugt ptr %178, %179
  br i1 %180, label %181, label %212

181:                                              ; preds = %177
  %182 = tail call ptr @__errno_location() #17
  br label %183

183:                                              ; preds = %203, %181
  %184 = phi ptr [ %179, %181 ], [ %206, %203 ]
  %185 = phi ptr [ %178, %181 ], [ %207, %203 ]
  store i32 0, ptr %182, align 4, !tbaa !4
  store i32 0, ptr %170, align 4, !tbaa !17
  %186 = ptrtoint ptr %185 to i64
  %187 = ptrtoint ptr %184 to i64
  %188 = sub i64 %186, %187
  %189 = tail call i64 @llvm.smin.i64(i64 %188, i64 1073741824)
  %190 = and i64 %189, 4294967295
  %191 = load i32, ptr %171, align 4, !tbaa !31
  %192 = tail call i64 @write(i32 noundef %191, ptr noundef %184, i64 noundef %190) #15
  %193 = and i64 %192, 2147483648
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %183
  %196 = load i32, ptr %182, align 4, !tbaa !4
  %197 = icmp eq i32 %196, 11
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  store i32 1, ptr %170, align 4, !tbaa !17
  %199 = load i32, ptr %182, align 4, !tbaa !4
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi i32 [ %196, %195 ], [ %199, %198 ]
  %202 = tail call ptr @strerror(i32 noundef %201) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %202) #15
  br label %.loopexit64

203:                                              ; preds = %183
  %204 = load ptr, ptr %169, align 8, !tbaa !28
  %205 = and i64 %192, 2147483647
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  store ptr %206, ptr %169, align 8, !tbaa !28
  %207 = load ptr, ptr %168, align 8, !tbaa !27
  %208 = icmp ugt ptr %207, %206
  br i1 %208, label %183, label %209, !llvm.loop !35

209:                                              ; preds = %203
  %210 = load i32, ptr %167, align 8, !tbaa !26
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %177
  %213 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %213, ptr %167, align 8, !tbaa !26
  %214 = load ptr, ptr %172, align 8, !tbaa !22
  store ptr %214, ptr %168, align 8, !tbaa !27
  store ptr %214, ptr %169, align 8, !tbaa !28
  br label %215

215:                                              ; preds = %212, %209, %174
  %216 = phi i32 [ %210, %209 ], [ %213, %212 ], [ %175, %174 ]
  %217 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %218 = icmp eq i32 %217, -2
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit64

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp eq i32 %216, %221
  br i1 %222, label %.loopexit74, label %174, !llvm.loop !36

.loopexit74:                                      ; preds = %150, %220, %161, %125, %73
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %237 = load i64, ptr %70, align 8, !tbaa !29
  br label %238

238:                                              ; preds = %393, %.loopexit74
  %239 = phi i64 [ %237, %.loopexit74 ], [ %389, %393 ]
  %240 = phi i1 [ false, %.loopexit74 ], [ true, %393 ]
  %241 = load i32, ptr %23, align 8, !tbaa !18
  %242 = zext i32 %241 to i64
  %243 = tail call i64 @llvm.smin.i64(i64 %239, i64 %242)
  %244 = trunc i64 %243 to i32
  %245 = load ptr, ptr %223, align 8, !tbaa !20
  br i1 %240, label %250, label %246

246:                                              ; preds = %238
  %247 = and i64 %243, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %245, i8 0, i64 %247, i1 false)
  %248 = load ptr, ptr %223, align 8, !tbaa !20
  %249 = load i32, ptr %23, align 8, !tbaa !18
  br label %250

250:                                              ; preds = %246, %238
  %251 = phi i32 [ %249, %246 ], [ %241, %238 ]
  %252 = phi ptr [ %248, %246 ], [ %245, %238 ]
  store i32 %244, ptr %75, align 8, !tbaa !30
  store ptr %252, ptr %74, align 8, !tbaa !25
  %253 = icmp eq i32 %251, 0
  br i1 %253, label %254, label %285

254:                                              ; preds = %250
  %255 = load i32, ptr %225, align 4, !tbaa !19
  %256 = shl i32 %255, 1
  %257 = zext i32 %256 to i64
  %258 = tail call noalias ptr @malloc(i64 noundef %257) #16
  store ptr %258, ptr %223, align 8, !tbaa !20
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

261:                                              ; preds = %254
  %262 = load i32, ptr %224, align 8, !tbaa !21
  %263 = icmp eq i32 %262, 0
  %264 = load i32, ptr %225, align 4, !tbaa !19
  br i1 %263, label %266, label %265

265:                                              ; preds = %261
  store i32 %264, ptr %23, align 8, !tbaa !18
  br label %288

266:                                              ; preds = %261
  %267 = zext i32 %264 to i64
  %268 = tail call noalias ptr @malloc(i64 noundef %267) #16
  store ptr %268, ptr %226, align 8, !tbaa !22
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  tail call void @free(ptr noundef nonnull %258) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

271:                                              ; preds = %266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %227, i8 0, i64 24, i1 false)
  %272 = load i32, ptr %228, align 8, !tbaa !23
  %273 = load i32, ptr %229, align 4, !tbaa !24
  %274 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %272, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %273, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %226, align 8, !tbaa !22
  tail call void @free(ptr noundef %277) #15
  %278 = load ptr, ptr %223, align 8, !tbaa !20
  tail call void @free(ptr noundef %278) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

279:                                              ; preds = %271
  store ptr null, ptr %74, align 8, !tbaa !25
  %280 = load i32, ptr %224, align 8, !tbaa !21
  %281 = load i32, ptr %225, align 4, !tbaa !19
  store i32 %281, ptr %23, align 8, !tbaa !18
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  store i32 %281, ptr %232, align 8, !tbaa !26
  %284 = load ptr, ptr %226, align 8, !tbaa !22
  store ptr %284, ptr %233, align 8, !tbaa !27
  store ptr %284, ptr %234, align 8, !tbaa !28
  br label %318

285:                                              ; preds = %250
  %286 = load i32, ptr %224, align 8, !tbaa !21
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %318, label %288

288:                                              ; preds = %285, %279, %265
  %289 = phi ptr [ %252, %285 ], [ null, %279 ], [ %252, %265 ]
  %290 = load i32, ptr %75, align 8, !tbaa !30
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %.loopexit71, label %292

292:                                              ; preds = %288
  %293 = tail call ptr @__errno_location() #17
  br label %294

294:                                              ; preds = %311, %292
  %295 = phi ptr [ %289, %292 ], [ %316, %311 ]
  store i32 0, ptr %293, align 4, !tbaa !4
  store i32 0, ptr %230, align 4, !tbaa !17
  %296 = load i32, ptr %75, align 8, !tbaa !30
  %297 = tail call i32 @llvm.umin.i32(i32 %296, i32 1073741824)
  %298 = zext nneg i32 %297 to i64
  %299 = load i32, ptr %231, align 4, !tbaa !31
  %300 = tail call i64 @write(i32 noundef %299, ptr noundef %295, i64 noundef %298) #15
  %301 = trunc i64 %300 to i32
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %294
  %304 = load i32, ptr %293, align 4, !tbaa !4
  %305 = icmp eq i32 %304, 11
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  store i32 1, ptr %230, align 4, !tbaa !17
  %307 = load i32, ptr %293, align 4, !tbaa !4
  br label %308

308:                                              ; preds = %306, %303
  %309 = phi i32 [ %304, %303 ], [ %307, %306 ]
  %310 = tail call ptr @strerror(i32 noundef %309) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %310) #15
  br label %.loopexit71

311:                                              ; preds = %294
  %312 = load i32, ptr %75, align 8, !tbaa !30
  %313 = sub i32 %312, %301
  store i32 %313, ptr %75, align 8, !tbaa !30
  %314 = load ptr, ptr %74, align 8, !tbaa !25
  %315 = and i64 %300, 2147483647
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 %315
  store ptr %316, ptr %74, align 8, !tbaa !25
  %317 = icmp eq i32 %312, %301
  br i1 %317, label %.loopexit71, label %294, !llvm.loop !32

318:                                              ; preds = %285, %283
  %319 = load i32, ptr %235, align 8, !tbaa !34
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %75, align 8, !tbaa !30
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %.loopexit71, label %324

324:                                              ; preds = %321
  %325 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %235, align 8, !tbaa !34
  br label %326

326:                                              ; preds = %324, %318
  %327 = load i32, ptr %232, align 8, !tbaa !26
  br label %328

328:                                              ; preds = %374, %326
  %329 = phi i32 [ %327, %326 ], [ %375, %374 ]
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %369

331:                                              ; preds = %328
  %332 = load ptr, ptr %233, align 8, !tbaa !27
  %333 = load ptr, ptr %234, align 8, !tbaa !28
  %334 = icmp ugt ptr %332, %333
  br i1 %334, label %335, label %366

335:                                              ; preds = %331
  %336 = tail call ptr @__errno_location() #17
  br label %337

337:                                              ; preds = %357, %335
  %338 = phi ptr [ %333, %335 ], [ %360, %357 ]
  %339 = phi ptr [ %332, %335 ], [ %361, %357 ]
  store i32 0, ptr %336, align 4, !tbaa !4
  store i32 0, ptr %230, align 4, !tbaa !17
  %340 = ptrtoint ptr %339 to i64
  %341 = ptrtoint ptr %338 to i64
  %342 = sub i64 %340, %341
  %343 = tail call i64 @llvm.smin.i64(i64 %342, i64 1073741824)
  %344 = and i64 %343, 4294967295
  %345 = load i32, ptr %231, align 4, !tbaa !31
  %346 = tail call i64 @write(i32 noundef %345, ptr noundef %338, i64 noundef %344) #15
  %347 = and i64 %346, 2147483648
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %337
  %350 = load i32, ptr %336, align 4, !tbaa !4
  %351 = icmp eq i32 %350, 11
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  store i32 1, ptr %230, align 4, !tbaa !17
  %353 = load i32, ptr %336, align 4, !tbaa !4
  br label %354

354:                                              ; preds = %352, %349
  %355 = phi i32 [ %350, %349 ], [ %353, %352 ]
  %356 = tail call ptr @strerror(i32 noundef %355) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %356) #15
  br label %.loopexit71

357:                                              ; preds = %337
  %358 = load ptr, ptr %234, align 8, !tbaa !28
  %359 = and i64 %346, 2147483647
  %360 = getelementptr inbounds nuw i8, ptr %358, i64 %359
  store ptr %360, ptr %234, align 8, !tbaa !28
  %361 = load ptr, ptr %233, align 8, !tbaa !27
  %362 = icmp ugt ptr %361, %360
  br i1 %362, label %337, label %363, !llvm.loop !35

363:                                              ; preds = %357
  %364 = load i32, ptr %232, align 8, !tbaa !26
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %363, %331
  %367 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %367, ptr %232, align 8, !tbaa !26
  %368 = load ptr, ptr %226, align 8, !tbaa !22
  store ptr %368, ptr %233, align 8, !tbaa !27
  store ptr %368, ptr %234, align 8, !tbaa !28
  br label %369

369:                                              ; preds = %366, %363, %328
  %370 = phi i32 [ %364, %363 ], [ %367, %366 ], [ %329, %328 ]
  %371 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %372 = icmp eq i32 %371, -2
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit71

374:                                              ; preds = %369
  %375 = load i32, ptr %232, align 8, !tbaa !26
  %376 = icmp eq i32 %370, %375
  br i1 %376, label %.loopexit71, label %328, !llvm.loop !36

.loopexit71:                                      ; preds = %311, %374, %373, %354, %321, %308, %288, %276, %270, %260
  %377 = phi i1 [ false, %321 ], [ true, %308 ], [ false, %288 ], [ true, %270 ], [ true, %354 ], [ true, %373 ], [ false, %374 ], [ true, %260 ], [ true, %276 ], [ false, %311 ]
  %378 = load i32, ptr %75, align 8, !tbaa !30
  %379 = sub i32 %244, %378
  %380 = zext i32 %379 to i64
  %381 = load i64, ptr %236, align 8, !tbaa !37
  %382 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %381, i64 %380), !nosanitize !38
  %383 = extractvalue { i64, i1 } %382, 1, !nosanitize !38
  br i1 %383, label %384, label %385, !prof !39, !nosanitize !38

384:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

385:                                              ; preds = %.loopexit71
  %386 = extractvalue { i64, i1 } %382, 0, !nosanitize !38
  store i64 %386, ptr %236, align 8, !tbaa !37
  %387 = load i64, ptr %70, align 8, !tbaa !29
  %388 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %387, i64 %380), !nosanitize !38
  %389 = extractvalue { i64, i1 } %388, 0, !nosanitize !38
  %390 = extractvalue { i64, i1 } %388, 1, !nosanitize !38
  br i1 %390, label %391, label %392, !prof !39, !nosanitize !38

391:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

392:                                              ; preds = %385
  store i64 %389, ptr %70, align 8, !tbaa !29
  br i1 %377, label %.loopexit64, label %393

393:                                              ; preds = %392
  %394 = icmp eq i64 %389, 0
  br i1 %394, label %395, label %238, !llvm.loop !40

395:                                              ; preds = %393
  %396 = load i32, ptr %23, align 8, !tbaa !18
  br label %397

397:                                              ; preds = %395, %68
  %398 = phi i32 [ %396, %395 ], [ %69, %68 ]
  %399 = zext i32 %398 to i64
  %400 = icmp ult i64 %17, %399
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %400, label %403, label %584

403:                                              ; preds = %397
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %403
  %418 = phi i64 [ %17, %403 ], [ %451, %.loopexit.backedge ]
  %419 = phi ptr [ %1, %403 ], [ %450, %.loopexit.backedge ]
  %420 = load i32, ptr %402, align 8, !tbaa !41
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %.loopexit
  %423 = load ptr, ptr %401, align 8, !tbaa !42
  %424 = load ptr, ptr %404, align 8, !tbaa !20
  br label %427

425:                                              ; preds = %.loopexit
  %426 = load ptr, ptr %404, align 8, !tbaa !20
  store ptr %426, ptr %401, align 8, !tbaa !42
  br label %427

427:                                              ; preds = %425, %422
  %428 = phi ptr [ %424, %422 ], [ %426, %425 ]
  %429 = phi ptr [ %423, %422 ], [ %426, %425 ]
  %430 = zext i32 %420 to i64
  %431 = getelementptr inbounds nuw i8, ptr %429, i64 %430
  %432 = ptrtoint ptr %431 to i64
  %433 = ptrtoint ptr %428 to i64
  %434 = sub i64 %432, %433
  %435 = trunc i64 %434 to i32
  %436 = load i32, ptr %23, align 8, !tbaa !18
  %437 = sub i32 %436, %435
  %438 = zext i32 %437 to i64
  %439 = tail call i64 @llvm.umin.i64(i64 %418, i64 %438)
  %440 = trunc nuw i64 %439 to i32
  %441 = and i64 %434, 4294967295
  %442 = getelementptr inbounds nuw i8, ptr %428, i64 %441
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %419, i64 %439, i1 false)
  %443 = load i32, ptr %402, align 8, !tbaa !41
  %444 = add i32 %443, %440
  store i32 %444, ptr %402, align 8, !tbaa !41
  %445 = load i64, ptr %405, align 8, !tbaa !37
  %446 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %445, i64 %439), !nosanitize !38
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !38
  br i1 %447, label %.loopexit63, label %448, !prof !39, !nosanitize !38

.loopexit63:                                      ; preds = %.loopexit65, %427
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

448:                                              ; preds = %427
  %449 = extractvalue { i64, i1 } %446, 0, !nosanitize !38
  store i64 %449, ptr %405, align 8, !tbaa !37
  %450 = getelementptr inbounds nuw i8, ptr %419, i64 %439
  %451 = sub i64 %418, %439
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %.loopexit64, label %453

453:                                              ; preds = %448
  %454 = load i32, ptr %23, align 8, !tbaa !18
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %487

456:                                              ; preds = %453
  %457 = load i32, ptr %407, align 4, !tbaa !19
  %458 = shl i32 %457, 1
  %459 = zext i32 %458 to i64
  %460 = tail call noalias ptr @malloc(i64 noundef %459) #16
  store ptr %460, ptr %404, align 8, !tbaa !20
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %463

462:                                              ; preds = %456
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

463:                                              ; preds = %456
  %464 = load i32, ptr %406, align 8, !tbaa !21
  %465 = icmp eq i32 %464, 0
  %466 = load i32, ptr %407, align 4, !tbaa !19
  br i1 %465, label %468, label %467

467:                                              ; preds = %463
  store i32 %466, ptr %23, align 8, !tbaa !18
  br label %490

468:                                              ; preds = %463
  %469 = zext i32 %466 to i64
  %470 = tail call noalias ptr @malloc(i64 noundef %469) #16
  store ptr %470, ptr %408, align 8, !tbaa !22
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  tail call void @free(ptr noundef nonnull %460) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

473:                                              ; preds = %468
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %409, i8 0, i64 24, i1 false)
  %474 = load i32, ptr %410, align 8, !tbaa !23
  %475 = load i32, ptr %411, align 4, !tbaa !24
  %476 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %474, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %475, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %473
  %479 = load ptr, ptr %408, align 8, !tbaa !22
  tail call void @free(ptr noundef %479) #15
  %480 = load ptr, ptr %404, align 8, !tbaa !20
  tail call void @free(ptr noundef %480) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %579

481:                                              ; preds = %473
  store ptr null, ptr %401, align 8, !tbaa !25
  %482 = load i32, ptr %406, align 8, !tbaa !21
  %483 = load i32, ptr %407, align 4, !tbaa !19
  store i32 %483, ptr %23, align 8, !tbaa !18
  %484 = icmp eq i32 %482, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  store i32 %483, ptr %414, align 8, !tbaa !26
  %486 = load ptr, ptr %408, align 8, !tbaa !22
  store ptr %486, ptr %415, align 8, !tbaa !27
  store ptr %486, ptr %416, align 8, !tbaa !28
  br label %520

487:                                              ; preds = %453
  %488 = load i32, ptr %406, align 8, !tbaa !21
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %520, label %490

490:                                              ; preds = %487, %481, %467
  %491 = load i32, ptr %402, align 8, !tbaa !30
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %.loopexit.backedge, label %493

493:                                              ; preds = %490
  %494 = tail call ptr @__errno_location() #17
  %495 = load ptr, ptr %401, align 8, !tbaa !25
  br label %496

496:                                              ; preds = %513, %493
  %497 = phi ptr [ %495, %493 ], [ %518, %513 ]
  store i32 0, ptr %494, align 4, !tbaa !4
  store i32 0, ptr %412, align 4, !tbaa !17
  %498 = load i32, ptr %402, align 8, !tbaa !30
  %499 = tail call i32 @llvm.umin.i32(i32 %498, i32 1073741824)
  %500 = zext nneg i32 %499 to i64
  %501 = load i32, ptr %413, align 4, !tbaa !31
  %502 = tail call i64 @write(i32 noundef %501, ptr noundef %497, i64 noundef %500) #15
  %503 = trunc i64 %502 to i32
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %496
  %506 = load i32, ptr %494, align 4, !tbaa !4
  %507 = icmp eq i32 %506, 11
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  store i32 1, ptr %412, align 4, !tbaa !17
  %509 = load i32, ptr %494, align 4, !tbaa !4
  br label %510

510:                                              ; preds = %508, %505
  %511 = phi i32 [ %506, %505 ], [ %509, %508 ]
  %512 = tail call ptr @strerror(i32 noundef %511) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %512) #15
  br label %579

513:                                              ; preds = %496
  %514 = load i32, ptr %402, align 8, !tbaa !30
  %515 = sub i32 %514, %503
  store i32 %515, ptr %402, align 8, !tbaa !30
  %516 = load ptr, ptr %401, align 8, !tbaa !25
  %517 = and i64 %502, 2147483647
  %518 = getelementptr inbounds nuw i8, ptr %516, i64 %517
  store ptr %518, ptr %401, align 8, !tbaa !25
  %519 = icmp eq i32 %514, %503
  br i1 %519, label %.loopexit.backedge, label %496, !llvm.loop !32

520:                                              ; preds = %487, %485
  %521 = load i32, ptr %417, align 8, !tbaa !34
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %528, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %402, align 8, !tbaa !30
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %.loopexit.backedge, label %526

.loopexit.backedge:                               ; preds = %513, %576, %523, %490
  br label %.loopexit

526:                                              ; preds = %523
  %527 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %417, align 8, !tbaa !34
  br label %528

528:                                              ; preds = %526, %520
  %529 = load i32, ptr %414, align 8, !tbaa !26
  br label %530

530:                                              ; preds = %576, %528
  %531 = phi i32 [ %529, %528 ], [ %577, %576 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %571

533:                                              ; preds = %530
  %534 = load ptr, ptr %415, align 8, !tbaa !27
  %535 = load ptr, ptr %416, align 8, !tbaa !28
  %536 = icmp ugt ptr %534, %535
  br i1 %536, label %537, label %568

537:                                              ; preds = %533
  %538 = tail call ptr @__errno_location() #17
  br label %539

539:                                              ; preds = %559, %537
  %540 = phi ptr [ %535, %537 ], [ %562, %559 ]
  %541 = phi ptr [ %534, %537 ], [ %563, %559 ]
  store i32 0, ptr %538, align 4, !tbaa !4
  store i32 0, ptr %412, align 4, !tbaa !17
  %542 = ptrtoint ptr %541 to i64
  %543 = ptrtoint ptr %540 to i64
  %544 = sub i64 %542, %543
  %545 = tail call i64 @llvm.smin.i64(i64 %544, i64 1073741824)
  %546 = and i64 %545, 4294967295
  %547 = load i32, ptr %413, align 4, !tbaa !31
  %548 = tail call i64 @write(i32 noundef %547, ptr noundef %540, i64 noundef %546) #15
  %549 = and i64 %548, 2147483648
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %559, label %551

551:                                              ; preds = %539
  %552 = load i32, ptr %538, align 4, !tbaa !4
  %553 = icmp eq i32 %552, 11
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  store i32 1, ptr %412, align 4, !tbaa !17
  %555 = load i32, ptr %538, align 4, !tbaa !4
  br label %556

556:                                              ; preds = %554, %551
  %557 = phi i32 [ %552, %551 ], [ %555, %554 ]
  %558 = tail call ptr @strerror(i32 noundef %557) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %558) #15
  br label %579

559:                                              ; preds = %539
  %560 = load ptr, ptr %416, align 8, !tbaa !28
  %561 = and i64 %548, 2147483647
  %562 = getelementptr inbounds nuw i8, ptr %560, i64 %561
  store ptr %562, ptr %416, align 8, !tbaa !28
  %563 = load ptr, ptr %415, align 8, !tbaa !27
  %564 = icmp ugt ptr %563, %562
  br i1 %564, label %539, label %565, !llvm.loop !35

565:                                              ; preds = %559
  %566 = load i32, ptr %414, align 8, !tbaa !26
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %565, %533
  %569 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %569, ptr %414, align 8, !tbaa !26
  %570 = load ptr, ptr %408, align 8, !tbaa !22
  store ptr %570, ptr %415, align 8, !tbaa !27
  store ptr %570, ptr %416, align 8, !tbaa !28
  br label %571

571:                                              ; preds = %568, %565, %530
  %572 = phi i32 [ %566, %565 ], [ %569, %568 ], [ %531, %530 ]
  %573 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %574 = icmp eq i32 %573, -2
  br i1 %574, label %575, label %576

575:                                              ; preds = %571
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %579

576:                                              ; preds = %571
  %577 = load i32, ptr %414, align 8, !tbaa !26
  %578 = icmp eq i32 %572, %577
  br i1 %578, label %.loopexit.backedge, label %530, !llvm.loop !36

579:                                              ; preds = %575, %556, %510, %478, %472, %462
  %580 = load i32, ptr %412, align 4, !tbaa !17
  %581 = icmp eq i32 %580, 0
  %582 = sub i64 %17, %451
  %583 = select i1 %581, i64 0, i64 %582
  br label %.loopexit64

584:                                              ; preds = %397
  %585 = load i32, ptr %402, align 8, !tbaa !41
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %.loopexit69, label %587

587:                                              ; preds = %584
  %588 = icmp eq i32 %398, 0
  br i1 %588, label %589, label %630

589:                                              ; preds = %587
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %591 = load i32, ptr %590, align 4, !tbaa !19
  %592 = shl i32 %591, 1
  %593 = zext i32 %592 to i64
  %594 = tail call noalias ptr @malloc(i64 noundef %593) #16
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %594, ptr %595, align 8, !tbaa !20
  %596 = icmp eq ptr %594, null
  br i1 %596, label %597, label %598

597:                                              ; preds = %589
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

598:                                              ; preds = %589
  %599 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %600 = load i32, ptr %599, align 8, !tbaa !21
  %601 = icmp eq i32 %600, 0
  %602 = load i32, ptr %590, align 4, !tbaa !19
  br i1 %601, label %604, label %603

603:                                              ; preds = %598
  store i32 %602, ptr %23, align 8, !tbaa !18
  br label %634

604:                                              ; preds = %598
  %605 = zext i32 %602 to i64
  %606 = tail call noalias ptr @malloc(i64 noundef %605) #16
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %606, ptr %607, align 8, !tbaa !22
  %608 = icmp eq ptr %606, null
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  tail call void @free(ptr noundef nonnull %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

610:                                              ; preds = %604
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %611, i8 0, i64 24, i1 false)
  %613 = load i32, ptr %612, align 8, !tbaa !23
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %615 = load i32, ptr %614, align 4, !tbaa !24
  %616 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %613, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %615, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %610
  %619 = load ptr, ptr %607, align 8, !tbaa !22
  tail call void @free(ptr noundef %619) #15
  %620 = load ptr, ptr %595, align 8, !tbaa !20
  tail call void @free(ptr noundef %620) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit64

621:                                              ; preds = %610
  store ptr null, ptr %401, align 8, !tbaa !25
  %622 = load i32, ptr %599, align 8, !tbaa !21
  %623 = load i32, ptr %590, align 4, !tbaa !19
  store i32 %623, ptr %23, align 8, !tbaa !18
  %624 = icmp eq i32 %622, 0
  br i1 %624, label %625, label %634

625:                                              ; preds = %621
  %626 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %623, ptr %626, align 8, !tbaa !26
  %627 = load ptr, ptr %607, align 8, !tbaa !22
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %627, ptr %628, align 8, !tbaa !27
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %627, ptr %629, align 8, !tbaa !28
  br label %666

630:                                              ; preds = %587
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %632 = load i32, ptr %631, align 8, !tbaa !21
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %666, label %634

634:                                              ; preds = %630, %621, %603
  %635 = load i32, ptr %402, align 8, !tbaa !30
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %.loopexit69, label %637

637:                                              ; preds = %634
  %638 = tail call ptr @__errno_location() #17
  %639 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %641 = load ptr, ptr %401, align 8, !tbaa !25
  br label %642

642:                                              ; preds = %659, %637
  %643 = phi ptr [ %641, %637 ], [ %664, %659 ]
  store i32 0, ptr %638, align 4, !tbaa !4
  store i32 0, ptr %639, align 4, !tbaa !17
  %644 = load i32, ptr %402, align 8, !tbaa !30
  %645 = tail call i32 @llvm.umin.i32(i32 %644, i32 1073741824)
  %646 = zext nneg i32 %645 to i64
  %647 = load i32, ptr %640, align 4, !tbaa !31
  %648 = tail call i64 @write(i32 noundef %647, ptr noundef %643, i64 noundef %646) #15
  %649 = trunc i64 %648 to i32
  %650 = icmp slt i32 %649, 0
  br i1 %650, label %651, label %659

651:                                              ; preds = %642
  %652 = load i32, ptr %638, align 4, !tbaa !4
  %653 = icmp eq i32 %652, 11
  br i1 %653, label %654, label %656

654:                                              ; preds = %651
  store i32 1, ptr %639, align 4, !tbaa !17
  %655 = load i32, ptr %638, align 4, !tbaa !4
  br label %656

656:                                              ; preds = %654, %651
  %657 = phi i32 [ %652, %651 ], [ %655, %654 ]
  %658 = tail call ptr @strerror(i32 noundef %657) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %658) #15
  br label %.loopexit64

659:                                              ; preds = %642
  %660 = load i32, ptr %402, align 8, !tbaa !30
  %661 = sub i32 %660, %649
  store i32 %661, ptr %402, align 8, !tbaa !30
  %662 = load ptr, ptr %401, align 8, !tbaa !25
  %663 = and i64 %648, 2147483647
  %664 = getelementptr inbounds nuw i8, ptr %662, i64 %663
  store ptr %664, ptr %401, align 8, !tbaa !25
  %665 = icmp eq i32 %660, %649
  br i1 %665, label %.loopexit69, label %642, !llvm.loop !32

666:                                              ; preds = %630, %625
  %667 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %668 = load i32, ptr %667, align 8, !tbaa !34
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %675, label %670

670:                                              ; preds = %666
  %671 = load i32, ptr %402, align 8, !tbaa !30
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %.loopexit69, label %673

673:                                              ; preds = %670
  %674 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %667, align 8, !tbaa !34
  br label %675

675:                                              ; preds = %673, %666
  %676 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %678 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %680 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %682 = load i32, ptr %676, align 8, !tbaa !26
  br label %683

683:                                              ; preds = %729, %675
  %684 = phi i32 [ %682, %675 ], [ %730, %729 ]
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %724

686:                                              ; preds = %683
  %687 = load ptr, ptr %677, align 8, !tbaa !27
  %688 = load ptr, ptr %678, align 8, !tbaa !28
  %689 = icmp ugt ptr %687, %688
  br i1 %689, label %690, label %721

690:                                              ; preds = %686
  %691 = tail call ptr @__errno_location() #17
  br label %692

692:                                              ; preds = %712, %690
  %693 = phi ptr [ %688, %690 ], [ %715, %712 ]
  %694 = phi ptr [ %687, %690 ], [ %716, %712 ]
  store i32 0, ptr %691, align 4, !tbaa !4
  store i32 0, ptr %679, align 4, !tbaa !17
  %695 = ptrtoint ptr %694 to i64
  %696 = ptrtoint ptr %693 to i64
  %697 = sub i64 %695, %696
  %698 = tail call i64 @llvm.smin.i64(i64 %697, i64 1073741824)
  %699 = and i64 %698, 4294967295
  %700 = load i32, ptr %680, align 4, !tbaa !31
  %701 = tail call i64 @write(i32 noundef %700, ptr noundef %693, i64 noundef %699) #15
  %702 = and i64 %701, 2147483648
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %712, label %704

704:                                              ; preds = %692
  %705 = load i32, ptr %691, align 4, !tbaa !4
  %706 = icmp eq i32 %705, 11
  br i1 %706, label %707, label %709

707:                                              ; preds = %704
  store i32 1, ptr %679, align 4, !tbaa !17
  %708 = load i32, ptr %691, align 4, !tbaa !4
  br label %709

709:                                              ; preds = %707, %704
  %710 = phi i32 [ %705, %704 ], [ %708, %707 ]
  %711 = tail call ptr @strerror(i32 noundef %710) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %711) #15
  br label %.loopexit64

712:                                              ; preds = %692
  %713 = load ptr, ptr %678, align 8, !tbaa !28
  %714 = and i64 %701, 2147483647
  %715 = getelementptr inbounds nuw i8, ptr %713, i64 %714
  store ptr %715, ptr %678, align 8, !tbaa !28
  %716 = load ptr, ptr %677, align 8, !tbaa !27
  %717 = icmp ugt ptr %716, %715
  br i1 %717, label %692, label %718, !llvm.loop !35

718:                                              ; preds = %712
  %719 = load i32, ptr %676, align 8, !tbaa !26
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %724

721:                                              ; preds = %718, %686
  %722 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %722, ptr %676, align 8, !tbaa !26
  %723 = load ptr, ptr %681, align 8, !tbaa !22
  store ptr %723, ptr %677, align 8, !tbaa !27
  store ptr %723, ptr %678, align 8, !tbaa !28
  br label %724

724:                                              ; preds = %721, %718, %683
  %725 = phi i32 [ %719, %718 ], [ %722, %721 ], [ %684, %683 ]
  %726 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %727 = icmp eq i32 %726, -2
  br i1 %727, label %728, label %729

728:                                              ; preds = %724
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit64

729:                                              ; preds = %724
  %730 = load i32, ptr %676, align 8, !tbaa !26
  %731 = icmp eq i32 %725, %730
  br i1 %731, label %.loopexit69, label %683, !llvm.loop !36

.loopexit69:                                      ; preds = %659, %729, %670, %634, %584
  store ptr %1, ptr %401, align 8, !tbaa !42
  %732 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %736 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %737 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %743 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %745 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %746

746:                                              ; preds = %890, %.loopexit69
  %747 = phi i64 [ %17, %.loopexit69 ], [ %884, %890 ]
  %748 = tail call i64 @llvm.umin.i64(i64 %747, i64 4294967295)
  %749 = trunc nuw i64 %748 to i32
  store i32 %749, ptr %402, align 8, !tbaa !41
  %750 = load i32, ptr %23, align 8, !tbaa !18
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %783

752:                                              ; preds = %746
  %753 = load i32, ptr %733, align 4, !tbaa !19
  %754 = shl i32 %753, 1
  %755 = zext i32 %754 to i64
  %756 = tail call noalias ptr @malloc(i64 noundef %755) #16
  store ptr %756, ptr %734, align 8, !tbaa !20
  %757 = icmp eq ptr %756, null
  br i1 %757, label %758, label %759

758:                                              ; preds = %752
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

759:                                              ; preds = %752
  %760 = load i32, ptr %732, align 8, !tbaa !21
  %761 = icmp eq i32 %760, 0
  %762 = load i32, ptr %733, align 4, !tbaa !19
  br i1 %761, label %764, label %763

763:                                              ; preds = %759
  store i32 %762, ptr %23, align 8, !tbaa !18
  br label %786

764:                                              ; preds = %759
  %765 = zext i32 %762 to i64
  %766 = tail call noalias ptr @malloc(i64 noundef %765) #16
  store ptr %766, ptr %735, align 8, !tbaa !22
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %769

768:                                              ; preds = %764
  tail call void @free(ptr noundef nonnull %756) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

769:                                              ; preds = %764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %736, i8 0, i64 24, i1 false)
  %770 = load i32, ptr %737, align 8, !tbaa !23
  %771 = load i32, ptr %738, align 4, !tbaa !24
  %772 = tail call i32 @deflateInit2_(ptr noundef nonnull %401, i32 noundef %770, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %771, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %777, label %774

774:                                              ; preds = %769
  %775 = load ptr, ptr %735, align 8, !tbaa !22
  tail call void @free(ptr noundef %775) #15
  %776 = load ptr, ptr %734, align 8, !tbaa !20
  tail call void @free(ptr noundef %776) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit65

777:                                              ; preds = %769
  store ptr null, ptr %401, align 8, !tbaa !25
  %778 = load i32, ptr %732, align 8, !tbaa !21
  %779 = load i32, ptr %733, align 4, !tbaa !19
  store i32 %779, ptr %23, align 8, !tbaa !18
  %780 = icmp eq i32 %778, 0
  br i1 %780, label %781, label %786

781:                                              ; preds = %777
  store i32 %779, ptr %741, align 8, !tbaa !26
  %782 = load ptr, ptr %735, align 8, !tbaa !22
  store ptr %782, ptr %742, align 8, !tbaa !27
  store ptr %782, ptr %743, align 8, !tbaa !28
  br label %816

783:                                              ; preds = %746
  %784 = load i32, ptr %732, align 8, !tbaa !21
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %816, label %786

786:                                              ; preds = %783, %777, %763
  %787 = load i32, ptr %402, align 8, !tbaa !30
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %.loopexit65, label %789

789:                                              ; preds = %786
  %790 = tail call ptr @__errno_location() #17
  %791 = load ptr, ptr %401, align 8, !tbaa !25
  br label %792

792:                                              ; preds = %809, %789
  %793 = phi ptr [ %791, %789 ], [ %814, %809 ]
  store i32 0, ptr %790, align 4, !tbaa !4
  store i32 0, ptr %739, align 4, !tbaa !17
  %794 = load i32, ptr %402, align 8, !tbaa !30
  %795 = tail call i32 @llvm.umin.i32(i32 %794, i32 1073741824)
  %796 = zext nneg i32 %795 to i64
  %797 = load i32, ptr %740, align 4, !tbaa !31
  %798 = tail call i64 @write(i32 noundef %797, ptr noundef %793, i64 noundef %796) #15
  %799 = trunc i64 %798 to i32
  %800 = icmp slt i32 %799, 0
  br i1 %800, label %801, label %809

801:                                              ; preds = %792
  %802 = load i32, ptr %790, align 4, !tbaa !4
  %803 = icmp eq i32 %802, 11
  br i1 %803, label %804, label %806

804:                                              ; preds = %801
  store i32 1, ptr %739, align 4, !tbaa !17
  %805 = load i32, ptr %790, align 4, !tbaa !4
  br label %806

806:                                              ; preds = %804, %801
  %807 = phi i32 [ %802, %801 ], [ %805, %804 ]
  %808 = tail call ptr @strerror(i32 noundef %807) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %808) #15
  br label %.loopexit65

809:                                              ; preds = %792
  %810 = load i32, ptr %402, align 8, !tbaa !30
  %811 = sub i32 %810, %799
  store i32 %811, ptr %402, align 8, !tbaa !30
  %812 = load ptr, ptr %401, align 8, !tbaa !25
  %813 = and i64 %798, 2147483647
  %814 = getelementptr inbounds nuw i8, ptr %812, i64 %813
  store ptr %814, ptr %401, align 8, !tbaa !25
  %815 = icmp eq i32 %810, %799
  br i1 %815, label %.loopexit65, label %792, !llvm.loop !32

816:                                              ; preds = %783, %781
  %817 = load i32, ptr %744, align 8, !tbaa !34
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %824, label %819

819:                                              ; preds = %816
  %820 = load i32, ptr %402, align 8, !tbaa !30
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %.loopexit65, label %822

822:                                              ; preds = %819
  %823 = tail call i32 @deflateReset(ptr noundef nonnull %401) #15
  store i32 0, ptr %744, align 8, !tbaa !34
  br label %824

824:                                              ; preds = %822, %816
  %825 = load i32, ptr %741, align 8, !tbaa !26
  br label %826

826:                                              ; preds = %872, %824
  %827 = phi i32 [ %825, %824 ], [ %873, %872 ]
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %867

829:                                              ; preds = %826
  %830 = load ptr, ptr %742, align 8, !tbaa !27
  %831 = load ptr, ptr %743, align 8, !tbaa !28
  %832 = icmp ugt ptr %830, %831
  br i1 %832, label %833, label %864

833:                                              ; preds = %829
  %834 = tail call ptr @__errno_location() #17
  br label %835

835:                                              ; preds = %855, %833
  %836 = phi ptr [ %831, %833 ], [ %858, %855 ]
  %837 = phi ptr [ %830, %833 ], [ %859, %855 ]
  store i32 0, ptr %834, align 4, !tbaa !4
  store i32 0, ptr %739, align 4, !tbaa !17
  %838 = ptrtoint ptr %837 to i64
  %839 = ptrtoint ptr %836 to i64
  %840 = sub i64 %838, %839
  %841 = tail call i64 @llvm.smin.i64(i64 %840, i64 1073741824)
  %842 = and i64 %841, 4294967295
  %843 = load i32, ptr %740, align 4, !tbaa !31
  %844 = tail call i64 @write(i32 noundef %843, ptr noundef %836, i64 noundef %842) #15
  %845 = and i64 %844, 2147483648
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %855, label %847

847:                                              ; preds = %835
  %848 = load i32, ptr %834, align 4, !tbaa !4
  %849 = icmp eq i32 %848, 11
  br i1 %849, label %850, label %852

850:                                              ; preds = %847
  store i32 1, ptr %739, align 4, !tbaa !17
  %851 = load i32, ptr %834, align 4, !tbaa !4
  br label %852

852:                                              ; preds = %850, %847
  %853 = phi i32 [ %848, %847 ], [ %851, %850 ]
  %854 = tail call ptr @strerror(i32 noundef %853) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %854) #15
  br label %.loopexit65

855:                                              ; preds = %835
  %856 = load ptr, ptr %743, align 8, !tbaa !28
  %857 = and i64 %844, 2147483647
  %858 = getelementptr inbounds nuw i8, ptr %856, i64 %857
  store ptr %858, ptr %743, align 8, !tbaa !28
  %859 = load ptr, ptr %742, align 8, !tbaa !27
  %860 = icmp ugt ptr %859, %858
  br i1 %860, label %835, label %861, !llvm.loop !35

861:                                              ; preds = %855
  %862 = load i32, ptr %741, align 8, !tbaa !26
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %867

864:                                              ; preds = %861, %829
  %865 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %865, ptr %741, align 8, !tbaa !26
  %866 = load ptr, ptr %735, align 8, !tbaa !22
  store ptr %866, ptr %742, align 8, !tbaa !27
  store ptr %866, ptr %743, align 8, !tbaa !28
  br label %867

867:                                              ; preds = %864, %861, %826
  %868 = phi i32 [ %862, %861 ], [ %865, %864 ], [ %827, %826 ]
  %869 = tail call i32 @deflate(ptr noundef nonnull %401, i32 noundef 0) #15
  %870 = icmp eq i32 %869, -2
  br i1 %870, label %871, label %872

871:                                              ; preds = %867
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit65

872:                                              ; preds = %867
  %873 = load i32, ptr %741, align 8, !tbaa !26
  %874 = icmp eq i32 %868, %873
  br i1 %874, label %.loopexit65, label %826, !llvm.loop !36

.loopexit65:                                      ; preds = %809, %872, %871, %852, %819, %806, %786, %774, %768, %758
  %875 = phi i1 [ false, %819 ], [ true, %806 ], [ false, %786 ], [ true, %768 ], [ true, %852 ], [ true, %871 ], [ false, %872 ], [ true, %758 ], [ true, %774 ], [ false, %809 ]
  %876 = load i32, ptr %402, align 8, !tbaa !41
  %877 = sub i32 %749, %876
  %878 = zext i32 %877 to i64
  %879 = load i64, ptr %745, align 8, !tbaa !37
  %880 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %879, i64 %878), !nosanitize !38
  %881 = extractvalue { i64, i1 } %880, 1, !nosanitize !38
  br i1 %881, label %.loopexit63, label %882, !prof !39, !nosanitize !38

882:                                              ; preds = %.loopexit65
  %883 = extractvalue { i64, i1 } %880, 0, !nosanitize !38
  store i64 %883, ptr %745, align 8, !tbaa !37
  %884 = sub i64 %747, %878
  br i1 %875, label %885, label %890

885:                                              ; preds = %882
  %886 = load i32, ptr %739, align 4, !tbaa !17
  %887 = icmp eq i32 %886, 0
  %888 = sub i64 %17, %884
  %889 = select i1 %887, i64 0, i64 %888
  br label %.loopexit64

890:                                              ; preds = %882
  %891 = icmp eq i64 %884, 0
  br i1 %891, label %.loopexit64, label %746, !llvm.loop !43

.loopexit64:                                      ; preds = %392, %890, %448, %885, %728, %709, %656, %618, %609, %597, %579, %219, %200, %147, %109, %100, %88, %56, %47, %35, %20
  %892 = phi i64 [ %889, %885 ], [ 0, %20 ], [ %17, %890 ], [ %583, %579 ], [ 0, %618 ], [ 0, %47 ], [ %17, %448 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %200 ], [ 0, %219 ], [ 0, %656 ], [ 0, %609 ], [ 0, %709 ], [ 0, %728 ], [ 0, %597 ], [ 0, %392 ]
  %893 = icmp ne i64 %17, 0
  %894 = icmp eq i64 %892, 0
  %895 = select i1 %893, i1 %894, i1 false
  %896 = trunc i64 %892 to i32
  %897 = select i1 %895, i32 -1, i32 %896
  br label %898

898:                                              ; preds = %.loopexit64, %19, %12, %4, %2
  %899 = phi i32 [ %897, %.loopexit64 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %899
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %629, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %629

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %629, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %27, ptr %28, align 8, !tbaa !20
  %29 = icmp eq ptr %27, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = load i32, ptr %31, align 8, !tbaa !21
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %23, align 4, !tbaa !19
  br i1 %33, label %36, label %35

35:                                               ; preds = %30
  store i32 %34, ptr %19, align 8, !tbaa !18
  br label %65

36:                                               ; preds = %30
  %37 = zext i32 %34 to i64
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %38, ptr %39, align 8, !tbaa !22
  %40 = icmp eq ptr %38, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #15
  %51 = load ptr, ptr %28, align 8, !tbaa !20
  br label %61

52:                                               ; preds = %41
  store ptr null, ptr %6, align 8, !tbaa !25
  %53 = load i32, ptr %31, align 8, !tbaa !21
  %54 = load i32, ptr %23, align 4, !tbaa !19
  store i32 %54, ptr %19, align 8, !tbaa !18
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %54, ptr %57, align 8, !tbaa !26
  %58 = load ptr, ptr %39, align 8, !tbaa !22
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %58, ptr %59, align 8, !tbaa !27
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %58, ptr %60, align 8, !tbaa !28
  br label %65

61:                                               ; preds = %49, %36
  %62 = phi ptr [ %51, %49 ], [ %27, %36 ]
  tail call void @free(ptr noundef %62) #15
  br label %63

63:                                               ; preds = %61, %22
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %.loopexit46, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit47, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %66, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #16
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

85:                                               ; preds = %76
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %87 = load i32, ptr %86, align 8, !tbaa !21
  %88 = icmp eq i32 %87, 0
  %89 = load i32, ptr %77, align 4, !tbaa !19
  br i1 %88, label %91, label %90

90:                                               ; preds = %85
  store i32 %89, ptr %19, align 8, !tbaa !18
  br label %121

91:                                               ; preds = %85
  %92 = zext i32 %89 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #16
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %81) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  tail call void @free(ptr noundef %106) #15
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  tail call void @free(ptr noundef %107) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

108:                                              ; preds = %97
  store ptr null, ptr %6, align 8, !tbaa !25
  %109 = load i32, ptr %86, align 8, !tbaa !21
  %110 = load i32, ptr %77, align 4, !tbaa !19
  store i32 %110, ptr %19, align 8, !tbaa !18
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %110, ptr %113, align 8, !tbaa !26
  %114 = load ptr, ptr %94, align 8, !tbaa !22
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %114, ptr %115, align 8, !tbaa !27
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %114, ptr %116, align 8, !tbaa !28
  br label %153

117:                                              ; preds = %74
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %119 = load i32, ptr %118, align 8, !tbaa !21
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %117, %108, %90
  %122 = load i32, ptr %71, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit47, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #17
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %128 = load ptr, ptr %6, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %146, %124
  %130 = phi ptr [ %128, %124 ], [ %151, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !4
  store i32 0, ptr %126, align 4, !tbaa !17
  %131 = load i32, ptr %71, align 8, !tbaa !30
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 1073741824)
  %133 = zext nneg i32 %132 to i64
  %134 = load i32, ptr %127, align 4, !tbaa !31
  %135 = tail call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #15
  %136 = trunc i64 %135 to i32
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load i32, ptr %125, align 4, !tbaa !4
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %126, align 4, !tbaa !17
  %142 = load i32, ptr %125, align 4, !tbaa !4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = tail call ptr @strerror(i32 noundef %144) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #15
  br label %.loopexit45

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = sub i32 %147, %136
  store i32 %148, ptr %71, align 8, !tbaa !30
  %149 = load ptr, ptr %6, align 8, !tbaa !25
  %150 = and i64 %135, 2147483647
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  store ptr %151, ptr %6, align 8, !tbaa !25
  %152 = icmp eq i32 %147, %136
  br i1 %152, label %.loopexit47, label %129, !llvm.loop !32

153:                                              ; preds = %117, %112
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %155 = load i32, ptr %154, align 8, !tbaa !34
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %71, align 8, !tbaa !30
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %.loopexit47, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %154, align 8, !tbaa !34
  br label %162

162:                                              ; preds = %160, %153
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %169 = load i32, ptr %163, align 8, !tbaa !26
  br label %170

170:                                              ; preds = %216, %162
  %171 = phi i32 [ %169, %162 ], [ %217, %216 ]
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %211

173:                                              ; preds = %170
  %174 = load ptr, ptr %164, align 8, !tbaa !27
  %175 = load ptr, ptr %165, align 8, !tbaa !28
  %176 = icmp ugt ptr %174, %175
  br i1 %176, label %177, label %208

177:                                              ; preds = %173
  %178 = tail call ptr @__errno_location() #17
  br label %179

179:                                              ; preds = %199, %177
  %180 = phi ptr [ %175, %177 ], [ %202, %199 ]
  %181 = phi ptr [ %174, %177 ], [ %203, %199 ]
  store i32 0, ptr %178, align 4, !tbaa !4
  store i32 0, ptr %166, align 4, !tbaa !17
  %182 = ptrtoint ptr %181 to i64
  %183 = ptrtoint ptr %180 to i64
  %184 = sub i64 %182, %183
  %185 = tail call i64 @llvm.smin.i64(i64 %184, i64 1073741824)
  %186 = and i64 %185, 4294967295
  %187 = load i32, ptr %167, align 4, !tbaa !31
  %188 = tail call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #15
  %189 = and i64 %188, 2147483648
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %179
  %192 = load i32, ptr %178, align 4, !tbaa !4
  %193 = icmp eq i32 %192, 11
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  store i32 1, ptr %166, align 4, !tbaa !17
  %195 = load i32, ptr %178, align 4, !tbaa !4
  br label %196

196:                                              ; preds = %194, %191
  %197 = phi i32 [ %192, %191 ], [ %195, %194 ]
  %198 = tail call ptr @strerror(i32 noundef %197) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #15
  br label %.loopexit45

199:                                              ; preds = %179
  %200 = load ptr, ptr %165, align 8, !tbaa !28
  %201 = and i64 %188, 2147483647
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  store ptr %202, ptr %165, align 8, !tbaa !28
  %203 = load ptr, ptr %164, align 8, !tbaa !27
  %204 = icmp ugt ptr %203, %202
  br i1 %204, label %179, label %205, !llvm.loop !35

205:                                              ; preds = %199
  %206 = load i32, ptr %163, align 8, !tbaa !26
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205, %173
  %209 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %209, ptr %163, align 8, !tbaa !26
  %210 = load ptr, ptr %168, align 8, !tbaa !22
  store ptr %210, ptr %164, align 8, !tbaa !27
  store ptr %210, ptr %165, align 8, !tbaa !28
  br label %211

211:                                              ; preds = %208, %205, %170
  %212 = phi i32 [ %206, %205 ], [ %209, %208 ], [ %171, %170 ]
  %213 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit45

216:                                              ; preds = %211
  %217 = load i32, ptr %163, align 8, !tbaa !26
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %.loopexit47, label %170, !llvm.loop !36

.loopexit47:                                      ; preds = %146, %216, %157, %121, %70
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %233 = load i64, ptr %67, align 8, !tbaa !29
  br label %234

234:                                              ; preds = %389, %.loopexit47
  %235 = phi i64 [ %233, %.loopexit47 ], [ %385, %389 ]
  %236 = phi i1 [ false, %.loopexit47 ], [ true, %389 ]
  %237 = load i32, ptr %19, align 8, !tbaa !18
  %238 = zext i32 %237 to i64
  %239 = tail call i64 @llvm.smin.i64(i64 %235, i64 %238)
  %240 = trunc i64 %239 to i32
  %241 = load ptr, ptr %219, align 8, !tbaa !20
  br i1 %236, label %246, label %242

242:                                              ; preds = %234
  %243 = and i64 %239, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %241, i8 0, i64 %243, i1 false)
  %244 = load ptr, ptr %219, align 8, !tbaa !20
  %245 = load i32, ptr %19, align 8, !tbaa !18
  br label %246

246:                                              ; preds = %242, %234
  %247 = phi i32 [ %245, %242 ], [ %237, %234 ]
  %248 = phi ptr [ %244, %242 ], [ %241, %234 ]
  store i32 %240, ptr %71, align 8, !tbaa !30
  store ptr %248, ptr %6, align 8, !tbaa !25
  %249 = icmp eq i32 %247, 0
  br i1 %249, label %250, label %281

250:                                              ; preds = %246
  %251 = load i32, ptr %221, align 4, !tbaa !19
  %252 = shl i32 %251, 1
  %253 = zext i32 %252 to i64
  %254 = tail call noalias ptr @malloc(i64 noundef %253) #16
  store ptr %254, ptr %219, align 8, !tbaa !20
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

257:                                              ; preds = %250
  %258 = load i32, ptr %220, align 8, !tbaa !21
  %259 = icmp eq i32 %258, 0
  %260 = load i32, ptr %221, align 4, !tbaa !19
  br i1 %259, label %262, label %261

261:                                              ; preds = %257
  store i32 %260, ptr %19, align 8, !tbaa !18
  br label %284

262:                                              ; preds = %257
  %263 = zext i32 %260 to i64
  %264 = tail call noalias ptr @malloc(i64 noundef %263) #16
  store ptr %264, ptr %222, align 8, !tbaa !22
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  tail call void @free(ptr noundef nonnull %254) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

267:                                              ; preds = %262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %223, i8 0, i64 24, i1 false)
  %268 = load i32, ptr %224, align 8, !tbaa !23
  %269 = load i32, ptr %225, align 4, !tbaa !24
  %270 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %268, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %269, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = load ptr, ptr %222, align 8, !tbaa !22
  tail call void @free(ptr noundef %273) #15
  %274 = load ptr, ptr %219, align 8, !tbaa !20
  tail call void @free(ptr noundef %274) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

275:                                              ; preds = %267
  store ptr null, ptr %6, align 8, !tbaa !25
  %276 = load i32, ptr %220, align 8, !tbaa !21
  %277 = load i32, ptr %221, align 4, !tbaa !19
  store i32 %277, ptr %19, align 8, !tbaa !18
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  store i32 %277, ptr %228, align 8, !tbaa !26
  %280 = load ptr, ptr %222, align 8, !tbaa !22
  store ptr %280, ptr %229, align 8, !tbaa !27
  store ptr %280, ptr %230, align 8, !tbaa !28
  br label %314

281:                                              ; preds = %246
  %282 = load i32, ptr %220, align 8, !tbaa !21
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %314, label %284

284:                                              ; preds = %281, %275, %261
  %285 = phi ptr [ %248, %281 ], [ null, %275 ], [ %248, %261 ]
  %286 = load i32, ptr %71, align 8, !tbaa !30
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %.loopexit43, label %288

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #17
  br label %290

290:                                              ; preds = %307, %288
  %291 = phi ptr [ %285, %288 ], [ %312, %307 ]
  store i32 0, ptr %289, align 4, !tbaa !4
  store i32 0, ptr %226, align 4, !tbaa !17
  %292 = load i32, ptr %71, align 8, !tbaa !30
  %293 = tail call i32 @llvm.umin.i32(i32 %292, i32 1073741824)
  %294 = zext nneg i32 %293 to i64
  %295 = load i32, ptr %227, align 4, !tbaa !31
  %296 = tail call i64 @write(i32 noundef %295, ptr noundef %291, i64 noundef %294) #15
  %297 = trunc i64 %296 to i32
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %290
  %300 = load i32, ptr %289, align 4, !tbaa !4
  %301 = icmp eq i32 %300, 11
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  store i32 1, ptr %226, align 4, !tbaa !17
  %303 = load i32, ptr %289, align 4, !tbaa !4
  br label %304

304:                                              ; preds = %302, %299
  %305 = phi i32 [ %300, %299 ], [ %303, %302 ]
  %306 = tail call ptr @strerror(i32 noundef %305) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %306) #15
  br label %.loopexit43

307:                                              ; preds = %290
  %308 = load i32, ptr %71, align 8, !tbaa !30
  %309 = sub i32 %308, %297
  store i32 %309, ptr %71, align 8, !tbaa !30
  %310 = load ptr, ptr %6, align 8, !tbaa !25
  %311 = and i64 %296, 2147483647
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %6, align 8, !tbaa !25
  %313 = icmp eq i32 %308, %297
  br i1 %313, label %.loopexit43, label %290, !llvm.loop !32

314:                                              ; preds = %281, %279
  %315 = load i32, ptr %231, align 8, !tbaa !34
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %314
  %318 = load i32, ptr %71, align 8, !tbaa !30
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.loopexit43, label %320

320:                                              ; preds = %317
  %321 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %231, align 8, !tbaa !34
  br label %322

322:                                              ; preds = %320, %314
  %323 = load i32, ptr %228, align 8, !tbaa !26
  br label %324

324:                                              ; preds = %370, %322
  %325 = phi i32 [ %323, %322 ], [ %371, %370 ]
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %365

327:                                              ; preds = %324
  %328 = load ptr, ptr %229, align 8, !tbaa !27
  %329 = load ptr, ptr %230, align 8, !tbaa !28
  %330 = icmp ugt ptr %328, %329
  br i1 %330, label %331, label %362

331:                                              ; preds = %327
  %332 = tail call ptr @__errno_location() #17
  br label %333

333:                                              ; preds = %353, %331
  %334 = phi ptr [ %329, %331 ], [ %356, %353 ]
  %335 = phi ptr [ %328, %331 ], [ %357, %353 ]
  store i32 0, ptr %332, align 4, !tbaa !4
  store i32 0, ptr %226, align 4, !tbaa !17
  %336 = ptrtoint ptr %335 to i64
  %337 = ptrtoint ptr %334 to i64
  %338 = sub i64 %336, %337
  %339 = tail call i64 @llvm.smin.i64(i64 %338, i64 1073741824)
  %340 = and i64 %339, 4294967295
  %341 = load i32, ptr %227, align 4, !tbaa !31
  %342 = tail call i64 @write(i32 noundef %341, ptr noundef %334, i64 noundef %340) #15
  %343 = and i64 %342, 2147483648
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %353, label %345

345:                                              ; preds = %333
  %346 = load i32, ptr %332, align 4, !tbaa !4
  %347 = icmp eq i32 %346, 11
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  store i32 1, ptr %226, align 4, !tbaa !17
  %349 = load i32, ptr %332, align 4, !tbaa !4
  br label %350

350:                                              ; preds = %348, %345
  %351 = phi i32 [ %346, %345 ], [ %349, %348 ]
  %352 = tail call ptr @strerror(i32 noundef %351) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %352) #15
  br label %.loopexit43

353:                                              ; preds = %333
  %354 = load ptr, ptr %230, align 8, !tbaa !28
  %355 = and i64 %342, 2147483647
  %356 = getelementptr inbounds nuw i8, ptr %354, i64 %355
  store ptr %356, ptr %230, align 8, !tbaa !28
  %357 = load ptr, ptr %229, align 8, !tbaa !27
  %358 = icmp ugt ptr %357, %356
  br i1 %358, label %333, label %359, !llvm.loop !35

359:                                              ; preds = %353
  %360 = load i32, ptr %228, align 8, !tbaa !26
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359, %327
  %363 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %363, ptr %228, align 8, !tbaa !26
  %364 = load ptr, ptr %222, align 8, !tbaa !22
  store ptr %364, ptr %229, align 8, !tbaa !27
  store ptr %364, ptr %230, align 8, !tbaa !28
  br label %365

365:                                              ; preds = %362, %359, %324
  %366 = phi i32 [ %360, %359 ], [ %363, %362 ], [ %325, %324 ]
  %367 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %368 = icmp eq i32 %367, -2
  br i1 %368, label %369, label %370

369:                                              ; preds = %365
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit43

370:                                              ; preds = %365
  %371 = load i32, ptr %228, align 8, !tbaa !26
  %372 = icmp eq i32 %366, %371
  br i1 %372, label %.loopexit43, label %324, !llvm.loop !36

.loopexit43:                                      ; preds = %307, %370, %369, %350, %317, %304, %284, %272, %266, %256
  %373 = phi i1 [ false, %317 ], [ true, %304 ], [ false, %284 ], [ true, %266 ], [ true, %350 ], [ true, %369 ], [ false, %370 ], [ true, %256 ], [ true, %272 ], [ false, %307 ]
  %374 = load i32, ptr %71, align 8, !tbaa !30
  %375 = sub i32 %240, %374
  %376 = zext i32 %375 to i64
  %377 = load i64, ptr %232, align 8, !tbaa !37
  %378 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %377, i64 %376), !nosanitize !38
  %379 = extractvalue { i64, i1 } %378, 1, !nosanitize !38
  br i1 %379, label %380, label %381, !prof !39, !nosanitize !38

380:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

381:                                              ; preds = %.loopexit43
  %382 = extractvalue { i64, i1 } %378, 0, !nosanitize !38
  store i64 %382, ptr %232, align 8, !tbaa !37
  %383 = load i64, ptr %67, align 8, !tbaa !29
  %384 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %383, i64 %376), !nosanitize !38
  %385 = extractvalue { i64, i1 } %384, 0, !nosanitize !38
  %386 = extractvalue { i64, i1 } %384, 1, !nosanitize !38
  br i1 %386, label %387, label %388, !prof !39, !nosanitize !38

387:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

388:                                              ; preds = %381
  store i64 %385, ptr %67, align 8, !tbaa !29
  br i1 %373, label %.loopexit45, label %389

389:                                              ; preds = %388
  %390 = icmp eq i64 %385, 0
  br i1 %390, label %.loopexit46, label %234, !llvm.loop !40

.loopexit45:                                      ; preds = %388, %215, %196, %143, %105, %96, %84
  %391 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

.loopexit46:                                      ; preds = %389, %65
  %392 = load ptr, ptr %6, align 8, !tbaa !25
  %393 = icmp eq ptr %392, null
  br i1 %393, label %561, label %394

394:                                              ; preds = %.loopexit46
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %396 = load i32, ptr %395, align 8, !tbaa !30
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds nuw i8, ptr %392, i64 %397
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %400 = load ptr, ptr %399, align 8, !tbaa !20
  %401 = load i32, ptr %19, align 8, !tbaa !18
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds nuw i8, ptr %400, i64 %402
  %404 = icmp ugt ptr %398, %403
  br i1 %404, label %405, label %561

405:                                              ; preds = %394
  %406 = icmp eq i32 %401, 0
  br i1 %406, label %407, label %447

407:                                              ; preds = %405
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %409 = load i32, ptr %408, align 4, !tbaa !19
  %410 = shl i32 %409, 1
  %411 = zext i32 %410 to i64
  %412 = tail call noalias ptr @malloc(i64 noundef %411) #16
  store ptr %412, ptr %399, align 8, !tbaa !20
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %415

414:                                              ; preds = %407
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

415:                                              ; preds = %407
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %417 = load i32, ptr %416, align 8, !tbaa !21
  %418 = icmp eq i32 %417, 0
  %419 = load i32, ptr %408, align 4, !tbaa !19
  br i1 %418, label %421, label %420

420:                                              ; preds = %415
  store i32 %419, ptr %19, align 8, !tbaa !18
  br label %451

421:                                              ; preds = %415
  %422 = zext i32 %419 to i64
  %423 = tail call noalias ptr @malloc(i64 noundef %422) #16
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %423, ptr %424, align 8, !tbaa !22
  %425 = icmp eq ptr %423, null
  br i1 %425, label %426, label %427

426:                                              ; preds = %421
  tail call void @free(ptr noundef nonnull %412) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

427:                                              ; preds = %421
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %428, i8 0, i64 24, i1 false)
  %430 = load i32, ptr %429, align 8, !tbaa !23
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %432 = load i32, ptr %431, align 4, !tbaa !24
  %433 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %430, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %432, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %427
  %436 = load ptr, ptr %424, align 8, !tbaa !22
  tail call void @free(ptr noundef %436) #15
  %437 = load ptr, ptr %399, align 8, !tbaa !20
  tail call void @free(ptr noundef %437) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

438:                                              ; preds = %427
  store ptr null, ptr %6, align 8, !tbaa !25
  %439 = load i32, ptr %416, align 8, !tbaa !21
  %440 = load i32, ptr %408, align 4, !tbaa !19
  store i32 %440, ptr %19, align 8, !tbaa !18
  %441 = icmp eq i32 %439, 0
  br i1 %441, label %442, label %451

442:                                              ; preds = %438
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %440, ptr %443, align 8, !tbaa !26
  %444 = load ptr, ptr %424, align 8, !tbaa !22
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %444, ptr %445, align 8, !tbaa !27
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %444, ptr %446, align 8, !tbaa !28
  br label %483

447:                                              ; preds = %405
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %449 = load i32, ptr %448, align 8, !tbaa !21
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %483, label %451

451:                                              ; preds = %447, %438, %420
  %452 = phi ptr [ %392, %447 ], [ null, %438 ], [ %392, %420 ]
  %453 = load i32, ptr %395, align 8, !tbaa !30
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %551, label %455

455:                                              ; preds = %451
  %456 = tail call ptr @__errno_location() #17
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %459

459:                                              ; preds = %476, %455
  %460 = phi ptr [ %452, %455 ], [ %481, %476 ]
  store i32 0, ptr %456, align 4, !tbaa !4
  store i32 0, ptr %457, align 4, !tbaa !17
  %461 = load i32, ptr %395, align 8, !tbaa !30
  %462 = tail call i32 @llvm.umin.i32(i32 %461, i32 1073741824)
  %463 = zext nneg i32 %462 to i64
  %464 = load i32, ptr %458, align 4, !tbaa !31
  %465 = tail call i64 @write(i32 noundef %464, ptr noundef %460, i64 noundef %463) #15
  %466 = trunc i64 %465 to i32
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %476

468:                                              ; preds = %459
  %469 = load i32, ptr %456, align 4, !tbaa !4
  %470 = icmp eq i32 %469, 11
  br i1 %470, label %471, label %473

471:                                              ; preds = %468
  store i32 1, ptr %457, align 4, !tbaa !17
  %472 = load i32, ptr %456, align 4, !tbaa !4
  br label %473

473:                                              ; preds = %471, %468
  %474 = phi i32 [ %469, %468 ], [ %472, %471 ]
  %475 = tail call ptr @strerror(i32 noundef %474) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %475) #15
  br label %.loopexit

476:                                              ; preds = %459
  %477 = load i32, ptr %395, align 8, !tbaa !30
  %478 = sub i32 %477, %466
  store i32 %478, ptr %395, align 8, !tbaa !30
  %479 = load ptr, ptr %6, align 8, !tbaa !25
  %480 = and i64 %465, 2147483647
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  store ptr %481, ptr %6, align 8, !tbaa !25
  %482 = icmp eq i32 %477, %466
  br i1 %482, label %.loopexit, label %459, !llvm.loop !32

483:                                              ; preds = %447, %442
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %485 = load i32, ptr %484, align 8, !tbaa !34
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %483
  %488 = load i32, ptr %395, align 8, !tbaa !30
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %551, label %490

490:                                              ; preds = %487
  %491 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %484, align 8, !tbaa !34
  br label %492

492:                                              ; preds = %490, %483
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %499 = load i32, ptr %493, align 8, !tbaa !26
  br label %500

500:                                              ; preds = %546, %492
  %501 = phi i32 [ %499, %492 ], [ %547, %546 ]
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %541

503:                                              ; preds = %500
  %504 = load ptr, ptr %494, align 8, !tbaa !27
  %505 = load ptr, ptr %495, align 8, !tbaa !28
  %506 = icmp ugt ptr %504, %505
  br i1 %506, label %507, label %538

507:                                              ; preds = %503
  %508 = tail call ptr @__errno_location() #17
  br label %509

509:                                              ; preds = %529, %507
  %510 = phi ptr [ %505, %507 ], [ %532, %529 ]
  %511 = phi ptr [ %504, %507 ], [ %533, %529 ]
  store i32 0, ptr %508, align 4, !tbaa !4
  store i32 0, ptr %496, align 4, !tbaa !17
  %512 = ptrtoint ptr %511 to i64
  %513 = ptrtoint ptr %510 to i64
  %514 = sub i64 %512, %513
  %515 = tail call i64 @llvm.smin.i64(i64 %514, i64 1073741824)
  %516 = and i64 %515, 4294967295
  %517 = load i32, ptr %497, align 4, !tbaa !31
  %518 = tail call i64 @write(i32 noundef %517, ptr noundef %510, i64 noundef %516) #15
  %519 = and i64 %518, 2147483648
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %529, label %521

521:                                              ; preds = %509
  %522 = load i32, ptr %508, align 4, !tbaa !4
  %523 = icmp eq i32 %522, 11
  br i1 %523, label %524, label %526

524:                                              ; preds = %521
  store i32 1, ptr %496, align 4, !tbaa !17
  %525 = load i32, ptr %508, align 4, !tbaa !4
  br label %526

526:                                              ; preds = %524, %521
  %527 = phi i32 [ %522, %521 ], [ %525, %524 ]
  %528 = tail call ptr @strerror(i32 noundef %527) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %528) #15
  br label %.loopexit

529:                                              ; preds = %509
  %530 = load ptr, ptr %495, align 8, !tbaa !28
  %531 = and i64 %518, 2147483647
  %532 = getelementptr inbounds nuw i8, ptr %530, i64 %531
  store ptr %532, ptr %495, align 8, !tbaa !28
  %533 = load ptr, ptr %494, align 8, !tbaa !27
  %534 = icmp ugt ptr %533, %532
  br i1 %534, label %509, label %535, !llvm.loop !35

535:                                              ; preds = %529
  %536 = load i32, ptr %493, align 8, !tbaa !26
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %535, %503
  %539 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %539, ptr %493, align 8, !tbaa !26
  %540 = load ptr, ptr %498, align 8, !tbaa !22
  store ptr %540, ptr %494, align 8, !tbaa !27
  store ptr %540, ptr %495, align 8, !tbaa !28
  br label %541

541:                                              ; preds = %538, %535, %500
  %542 = phi i32 [ %536, %535 ], [ %539, %538 ], [ %501, %500 ]
  %543 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %544 = icmp eq i32 %543, -2
  br i1 %544, label %545, label %546

545:                                              ; preds = %541
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

546:                                              ; preds = %541
  %547 = load i32, ptr %493, align 8, !tbaa !26
  %548 = icmp eq i32 %542, %547
  br i1 %548, label %.loopexit, label %500, !llvm.loop !36

.loopexit:                                        ; preds = %476, %546, %545, %526, %473, %435, %426, %414
  %549 = load i32, ptr %395, align 8, !tbaa !30
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %.loopexit, %487, %451
  %552 = load ptr, ptr %399, align 8, !tbaa !20
  store ptr %552, ptr %6, align 8, !tbaa !25
  br label %561

553:                                              ; preds = %.loopexit
  %554 = load ptr, ptr %399, align 8, !tbaa !20
  %555 = load ptr, ptr %6, align 8, !tbaa !25
  %556 = zext i32 %549 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %554, ptr align 1 %555, i64 %556, i1 false)
  %557 = load ptr, ptr %399, align 8, !tbaa !20
  store ptr %557, ptr %6, align 8, !tbaa !25
  %558 = load i32, ptr %395, align 8, !tbaa !30
  %559 = load i32, ptr %19, align 8, !tbaa !18
  %560 = icmp ule i32 %558, %559
  br label %561

561:                                              ; preds = %553, %551, %394, %.loopexit46
  %562 = phi i1 [ %560, %553 ], [ true, %551 ], [ true, %394 ], [ true, %.loopexit46 ]
  %563 = load i32, ptr %11, align 8, !tbaa !16
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %577, label %565

565:                                              ; preds = %561
  br i1 %562, label %571, label %566

566:                                              ; preds = %565
  %567 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %568 = load i32, ptr %567, align 4, !tbaa !17
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %571

571:                                              ; preds = %570, %566, %565
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %573 = load i32, ptr %572, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %571
  %576 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

577:                                              ; preds = %571, %561
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %579 = load i32, ptr %578, align 8, !tbaa !30
  %580 = icmp eq i32 %579, 0
  %581 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %582 = load ptr, ptr %581, align 8, !tbaa !20
  br i1 %580, label %585, label %583

583:                                              ; preds = %577
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  br label %586

585:                                              ; preds = %577
  store ptr %582, ptr %6, align 8, !tbaa !25
  br label %586

586:                                              ; preds = %585, %583
  %587 = phi ptr [ %584, %583 ], [ %582, %585 ]
  %588 = ptrtoint ptr %587 to i64
  %589 = ptrtoint ptr %582 to i64
  %590 = sub i64 %588, %589
  %591 = getelementptr inbounds i8, ptr %582, i64 %590
  %592 = zext i32 %579 to i64
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 %592
  %594 = load i32, ptr %19, align 8, !tbaa !18
  %595 = add i32 %594, -1
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds nuw i8, ptr %593, i64 %596
  store i8 0, ptr %597, align 1, !tbaa !44
  %598 = load i32, ptr %19, align 8, !tbaa !18
  %599 = zext i32 %598 to i64
  %600 = tail call i32 @vsnprintf(ptr noundef %593, i64 noundef %599, ptr noundef %1, ptr noundef %2) #15
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %629, label %602

602:                                              ; preds = %586
  %603 = load i32, ptr %19, align 8, !tbaa !18
  %604 = icmp ult i32 %600, %603
  br i1 %604, label %605, label %629

605:                                              ; preds = %602
  %606 = add i32 %603, -1
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds nuw i8, ptr %593, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !44
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %629

611:                                              ; preds = %605
  %612 = load i32, ptr %578, align 8, !tbaa !30
  %613 = add i32 %612, %600
  store i32 %613, ptr %578, align 8, !tbaa !30
  %614 = sext i32 %600 to i64
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %616 = load i64, ptr %615, align 8, !tbaa !37
  %617 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %616, i64 %614), !nosanitize !38
  %618 = extractvalue { i64, i1 } %617, 1, !nosanitize !38
  br i1 %618, label %619, label %620, !prof !39, !nosanitize !38

619:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

620:                                              ; preds = %611
  %621 = extractvalue { i64, i1 } %617, 0, !nosanitize !38
  store i64 %621, ptr %615, align 8, !tbaa !37
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %622 = load i32, ptr %11, align 8, !tbaa !16
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %628, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %626 = load i32, ptr %625, align 4, !tbaa !17
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %624, %620
  br label %629

629:                                              ; preds = %628, %624, %605, %602, %586, %575, %.loopexit45, %63, %14, %5, %3
  %630 = phi i32 [ %576, %575 ], [ -2, %3 ], [ %64, %63 ], [ %391, %.loopexit45 ], [ -2, %5 ], [ %600, %628 ], [ 0, %586 ], [ -2, %14 ], [ 0, %605 ], [ 0, %602 ], [ %622, %624 ]
  ret i32 %630
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %169, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %7 = load i32, ptr %6, align 8, !tbaa !30
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %9, %15
  br i1 %16, label %17, label %169

17:                                               ; preds = %5
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = shl i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #16
  store ptr %24, ptr %10, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

27:                                               ; preds = %19
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %29 = load i32, ptr %28, align 8, !tbaa !21
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %20, align 4, !tbaa !19
  br i1 %30, label %33, label %32

32:                                               ; preds = %27
  store i32 %31, ptr %12, align 8, !tbaa !18
  br label %63

33:                                               ; preds = %27
  %34 = zext i32 %31 to i64
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #16
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %35, ptr %36, align 8, !tbaa !22
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %24) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

39:                                               ; preds = %33
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %42 = load i32, ptr %41, align 8, !tbaa !23
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %42, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %44, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %36, align 8, !tbaa !22
  tail call void @free(ptr noundef %48) #15
  %49 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void @free(ptr noundef %49) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

50:                                               ; preds = %39
  store ptr null, ptr %2, align 8, !tbaa !25
  %51 = load i32, ptr %28, align 8, !tbaa !21
  %52 = load i32, ptr %20, align 4, !tbaa !19
  store i32 %52, ptr %12, align 8, !tbaa !18
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %52, ptr %55, align 8, !tbaa !26
  %56 = load ptr, ptr %36, align 8, !tbaa !22
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %56, ptr %57, align 8, !tbaa !27
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %56, ptr %58, align 8, !tbaa !28
  br label %95

59:                                               ; preds = %17
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %61 = load i32, ptr %60, align 8, !tbaa !21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %95, label %63

63:                                               ; preds = %59, %50, %32
  %64 = phi ptr [ %3, %59 ], [ null, %50 ], [ %3, %32 ]
  %65 = load i32, ptr %6, align 8, !tbaa !30
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %167, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @__errno_location() #17
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %71

71:                                               ; preds = %88, %67
  %72 = phi ptr [ %64, %67 ], [ %93, %88 ]
  store i32 0, ptr %68, align 4, !tbaa !4
  store i32 0, ptr %69, align 4, !tbaa !17
  %73 = load i32, ptr %6, align 8, !tbaa !30
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 1073741824)
  %75 = zext nneg i32 %74 to i64
  %76 = load i32, ptr %70, align 4, !tbaa !31
  %77 = tail call i64 @write(i32 noundef %76, ptr noundef %72, i64 noundef %75) #15
  %78 = trunc i64 %77 to i32
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load i32, ptr %68, align 4, !tbaa !4
  %82 = icmp eq i32 %81, 11
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 1, ptr %69, align 4, !tbaa !17
  %84 = load i32, ptr %68, align 4, !tbaa !4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %83 ]
  %87 = tail call ptr @strerror(i32 noundef %86) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %87) #15
  br label %.loopexit

88:                                               ; preds = %71
  %89 = load i32, ptr %6, align 8, !tbaa !30
  %90 = sub i32 %89, %78
  store i32 %90, ptr %6, align 8, !tbaa !30
  %91 = load ptr, ptr %2, align 8, !tbaa !25
  %92 = and i64 %77, 2147483647
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 %92
  store ptr %93, ptr %2, align 8, !tbaa !25
  %94 = icmp eq i32 %89, %78
  br i1 %94, label %.loopexit, label %71, !llvm.loop !32

95:                                               ; preds = %59, %54
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %97 = load i32, ptr %96, align 8, !tbaa !34
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %6, align 8, !tbaa !30
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %167, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @deflateReset(ptr noundef nonnull %2) #15
  store i32 0, ptr %96, align 8, !tbaa !34
  br label %104

104:                                              ; preds = %102, %95
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %111 = load i32, ptr %105, align 8, !tbaa !26
  br label %112

112:                                              ; preds = %158, %104
  %113 = phi i32 [ %111, %104 ], [ %159, %158 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %153

115:                                              ; preds = %112
  %116 = load ptr, ptr %106, align 8, !tbaa !27
  %117 = load ptr, ptr %107, align 8, !tbaa !28
  %118 = icmp ugt ptr %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = tail call ptr @__errno_location() #17
  br label %121

121:                                              ; preds = %141, %119
  %122 = phi ptr [ %117, %119 ], [ %144, %141 ]
  %123 = phi ptr [ %116, %119 ], [ %145, %141 ]
  store i32 0, ptr %120, align 4, !tbaa !4
  store i32 0, ptr %108, align 4, !tbaa !17
  %124 = ptrtoint ptr %123 to i64
  %125 = ptrtoint ptr %122 to i64
  %126 = sub i64 %124, %125
  %127 = tail call i64 @llvm.smin.i64(i64 %126, i64 1073741824)
  %128 = and i64 %127, 4294967295
  %129 = load i32, ptr %109, align 4, !tbaa !31
  %130 = tail call i64 @write(i32 noundef %129, ptr noundef %122, i64 noundef %128) #15
  %131 = and i64 %130, 2147483648
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %121
  %134 = load i32, ptr %120, align 4, !tbaa !4
  %135 = icmp eq i32 %134, 11
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  store i32 1, ptr %108, align 4, !tbaa !17
  %137 = load i32, ptr %120, align 4, !tbaa !4
  br label %138

138:                                              ; preds = %136, %133
  %139 = phi i32 [ %134, %133 ], [ %137, %136 ]
  %140 = tail call ptr @strerror(i32 noundef %139) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %140) #15
  br label %.loopexit

141:                                              ; preds = %121
  %142 = load ptr, ptr %107, align 8, !tbaa !28
  %143 = and i64 %130, 2147483647
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  store ptr %144, ptr %107, align 8, !tbaa !28
  %145 = load ptr, ptr %106, align 8, !tbaa !27
  %146 = icmp ugt ptr %145, %144
  br i1 %146, label %121, label %147, !llvm.loop !35

147:                                              ; preds = %141
  %148 = load i32, ptr %105, align 8, !tbaa !26
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147, %115
  %151 = load i32, ptr %12, align 8, !tbaa !18
  store i32 %151, ptr %105, align 8, !tbaa !26
  %152 = load ptr, ptr %110, align 8, !tbaa !22
  store ptr %152, ptr %106, align 8, !tbaa !27
  store ptr %152, ptr %107, align 8, !tbaa !28
  br label %153

153:                                              ; preds = %150, %147, %112
  %154 = phi i32 [ %148, %147 ], [ %151, %150 ], [ %113, %112 ]
  %155 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #15
  %156 = icmp eq i32 %155, -2
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

158:                                              ; preds = %153
  %159 = load i32, ptr %105, align 8, !tbaa !26
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %.loopexit, label %112, !llvm.loop !36

.loopexit:                                        ; preds = %88, %158, %157, %138, %85, %47, %38, %26
  %161 = load i32, ptr %6, align 8, !tbaa !30
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %.loopexit
  %164 = load ptr, ptr %10, align 8, !tbaa !20
  %165 = load ptr, ptr %2, align 8, !tbaa !25
  %166 = zext i32 %161 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %164, ptr align 1 %165, i64 %166, i1 false)
  br label %167

167:                                              ; preds = %163, %.loopexit, %99, %63
  %168 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %168, ptr %2, align 8, !tbaa !25
  br label %169

169:                                              ; preds = %167, %5, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %629, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %629

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %629, label %18

18:                                               ; preds = %14, %10
  call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %27, ptr %28, align 8, !tbaa !20
  %29 = icmp eq ptr %27, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = load i32, ptr %31, align 8, !tbaa !21
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %23, align 4, !tbaa !19
  br i1 %33, label %36, label %35

35:                                               ; preds = %30
  store i32 %34, ptr %19, align 8, !tbaa !18
  br label %65

36:                                               ; preds = %30
  %37 = zext i32 %34 to i64
  %38 = call noalias ptr @malloc(i64 noundef %37) #16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %38, ptr %39, align 8, !tbaa !22
  %40 = icmp eq ptr %38, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  call void @free(ptr noundef %50) #15
  %51 = load ptr, ptr %28, align 8, !tbaa !20
  br label %61

52:                                               ; preds = %41
  store ptr null, ptr %6, align 8, !tbaa !25
  %53 = load i32, ptr %31, align 8, !tbaa !21
  %54 = load i32, ptr %23, align 4, !tbaa !19
  store i32 %54, ptr %19, align 8, !tbaa !18
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %54, ptr %57, align 8, !tbaa !26
  %58 = load ptr, ptr %39, align 8, !tbaa !22
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %58, ptr %59, align 8, !tbaa !27
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %58, ptr %60, align 8, !tbaa !28
  br label %65

61:                                               ; preds = %49, %36
  %62 = phi ptr [ %51, %49 ], [ %27, %36 ]
  call void @free(ptr noundef %62) #15
  br label %63

63:                                               ; preds = %61, %22
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %.loopexit46, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit47, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %66, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = call noalias ptr @malloc(i64 noundef %80) #16
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

85:                                               ; preds = %76
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %87 = load i32, ptr %86, align 8, !tbaa !21
  %88 = icmp eq i32 %87, 0
  %89 = load i32, ptr %77, align 4, !tbaa !19
  br i1 %88, label %91, label %90

90:                                               ; preds = %85
  store i32 %89, ptr %19, align 8, !tbaa !18
  br label %121

91:                                               ; preds = %85
  %92 = zext i32 %89 to i64
  %93 = call noalias ptr @malloc(i64 noundef %92) #16
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  call void @free(ptr noundef nonnull %81) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  call void @free(ptr noundef %106) #15
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  call void @free(ptr noundef %107) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

108:                                              ; preds = %97
  store ptr null, ptr %6, align 8, !tbaa !25
  %109 = load i32, ptr %86, align 8, !tbaa !21
  %110 = load i32, ptr %77, align 4, !tbaa !19
  store i32 %110, ptr %19, align 8, !tbaa !18
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %110, ptr %113, align 8, !tbaa !26
  %114 = load ptr, ptr %94, align 8, !tbaa !22
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %114, ptr %115, align 8, !tbaa !27
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %114, ptr %116, align 8, !tbaa !28
  br label %153

117:                                              ; preds = %74
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %119 = load i32, ptr %118, align 8, !tbaa !21
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %117, %108, %90
  %122 = load i32, ptr %71, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit47, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #17
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %128 = load ptr, ptr %6, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %146, %124
  %130 = phi ptr [ %128, %124 ], [ %151, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !4
  store i32 0, ptr %126, align 4, !tbaa !17
  %131 = load i32, ptr %71, align 8, !tbaa !30
  %132 = call i32 @llvm.umin.i32(i32 %131, i32 1073741824)
  %133 = zext nneg i32 %132 to i64
  %134 = load i32, ptr %127, align 4, !tbaa !31
  %135 = call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #15
  %136 = trunc i64 %135 to i32
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load i32, ptr %125, align 4, !tbaa !4
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %126, align 4, !tbaa !17
  %142 = load i32, ptr %125, align 4, !tbaa !4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = call ptr @strerror(i32 noundef %144) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #15
  br label %.loopexit45

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = sub i32 %147, %136
  store i32 %148, ptr %71, align 8, !tbaa !30
  %149 = load ptr, ptr %6, align 8, !tbaa !25
  %150 = and i64 %135, 2147483647
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  store ptr %151, ptr %6, align 8, !tbaa !25
  %152 = icmp eq i32 %147, %136
  br i1 %152, label %.loopexit47, label %129, !llvm.loop !32

153:                                              ; preds = %117, %112
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %155 = load i32, ptr %154, align 8, !tbaa !34
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %71, align 8, !tbaa !30
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %.loopexit47, label %160

160:                                              ; preds = %157
  %161 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %154, align 8, !tbaa !34
  br label %162

162:                                              ; preds = %160, %153
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %169 = load i32, ptr %163, align 8, !tbaa !26
  br label %170

170:                                              ; preds = %216, %162
  %171 = phi i32 [ %169, %162 ], [ %217, %216 ]
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %211

173:                                              ; preds = %170
  %174 = load ptr, ptr %164, align 8, !tbaa !27
  %175 = load ptr, ptr %165, align 8, !tbaa !28
  %176 = icmp ugt ptr %174, %175
  br i1 %176, label %177, label %208

177:                                              ; preds = %173
  %178 = tail call ptr @__errno_location() #17
  br label %179

179:                                              ; preds = %199, %177
  %180 = phi ptr [ %175, %177 ], [ %202, %199 ]
  %181 = phi ptr [ %174, %177 ], [ %203, %199 ]
  store i32 0, ptr %178, align 4, !tbaa !4
  store i32 0, ptr %166, align 4, !tbaa !17
  %182 = ptrtoint ptr %181 to i64
  %183 = ptrtoint ptr %180 to i64
  %184 = sub i64 %182, %183
  %185 = call i64 @llvm.smin.i64(i64 %184, i64 1073741824)
  %186 = and i64 %185, 4294967295
  %187 = load i32, ptr %167, align 4, !tbaa !31
  %188 = call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #15
  %189 = and i64 %188, 2147483648
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %179
  %192 = load i32, ptr %178, align 4, !tbaa !4
  %193 = icmp eq i32 %192, 11
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  store i32 1, ptr %166, align 4, !tbaa !17
  %195 = load i32, ptr %178, align 4, !tbaa !4
  br label %196

196:                                              ; preds = %194, %191
  %197 = phi i32 [ %192, %191 ], [ %195, %194 ]
  %198 = call ptr @strerror(i32 noundef %197) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #15
  br label %.loopexit45

199:                                              ; preds = %179
  %200 = load ptr, ptr %165, align 8, !tbaa !28
  %201 = and i64 %188, 2147483647
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  store ptr %202, ptr %165, align 8, !tbaa !28
  %203 = load ptr, ptr %164, align 8, !tbaa !27
  %204 = icmp ugt ptr %203, %202
  br i1 %204, label %179, label %205, !llvm.loop !35

205:                                              ; preds = %199
  %206 = load i32, ptr %163, align 8, !tbaa !26
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205, %173
  %209 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %209, ptr %163, align 8, !tbaa !26
  %210 = load ptr, ptr %168, align 8, !tbaa !22
  store ptr %210, ptr %164, align 8, !tbaa !27
  store ptr %210, ptr %165, align 8, !tbaa !28
  br label %211

211:                                              ; preds = %208, %205, %170
  %212 = phi i32 [ %206, %205 ], [ %209, %208 ], [ %171, %170 ]
  %213 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit45

216:                                              ; preds = %211
  %217 = load i32, ptr %163, align 8, !tbaa !26
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %.loopexit47, label %170, !llvm.loop !36

.loopexit47:                                      ; preds = %146, %216, %157, %121, %70
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %233 = load i64, ptr %67, align 8, !tbaa !29
  br label %234

234:                                              ; preds = %389, %.loopexit47
  %235 = phi i64 [ %233, %.loopexit47 ], [ %385, %389 ]
  %236 = phi i1 [ false, %.loopexit47 ], [ true, %389 ]
  %237 = load i32, ptr %19, align 8, !tbaa !18
  %238 = zext i32 %237 to i64
  %239 = call i64 @llvm.smin.i64(i64 %235, i64 %238)
  %240 = trunc i64 %239 to i32
  %241 = load ptr, ptr %219, align 8, !tbaa !20
  br i1 %236, label %246, label %242

242:                                              ; preds = %234
  %243 = and i64 %239, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %241, i8 0, i64 %243, i1 false)
  %244 = load ptr, ptr %219, align 8, !tbaa !20
  %245 = load i32, ptr %19, align 8, !tbaa !18
  br label %246

246:                                              ; preds = %242, %234
  %247 = phi i32 [ %245, %242 ], [ %237, %234 ]
  %248 = phi ptr [ %244, %242 ], [ %241, %234 ]
  store i32 %240, ptr %71, align 8, !tbaa !30
  store ptr %248, ptr %6, align 8, !tbaa !25
  %249 = icmp eq i32 %247, 0
  br i1 %249, label %250, label %281

250:                                              ; preds = %246
  %251 = load i32, ptr %221, align 4, !tbaa !19
  %252 = shl i32 %251, 1
  %253 = zext i32 %252 to i64
  %254 = call noalias ptr @malloc(i64 noundef %253) #16
  store ptr %254, ptr %219, align 8, !tbaa !20
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

257:                                              ; preds = %250
  %258 = load i32, ptr %220, align 8, !tbaa !21
  %259 = icmp eq i32 %258, 0
  %260 = load i32, ptr %221, align 4, !tbaa !19
  br i1 %259, label %262, label %261

261:                                              ; preds = %257
  store i32 %260, ptr %19, align 8, !tbaa !18
  br label %284

262:                                              ; preds = %257
  %263 = zext i32 %260 to i64
  %264 = call noalias ptr @malloc(i64 noundef %263) #16
  store ptr %264, ptr %222, align 8, !tbaa !22
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  call void @free(ptr noundef nonnull %254) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

267:                                              ; preds = %262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %223, i8 0, i64 24, i1 false)
  %268 = load i32, ptr %224, align 8, !tbaa !23
  %269 = load i32, ptr %225, align 4, !tbaa !24
  %270 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %268, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %269, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = load ptr, ptr %222, align 8, !tbaa !22
  call void @free(ptr noundef %273) #15
  %274 = load ptr, ptr %219, align 8, !tbaa !20
  call void @free(ptr noundef %274) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit43

275:                                              ; preds = %267
  store ptr null, ptr %6, align 8, !tbaa !25
  %276 = load i32, ptr %220, align 8, !tbaa !21
  %277 = load i32, ptr %221, align 4, !tbaa !19
  store i32 %277, ptr %19, align 8, !tbaa !18
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  store i32 %277, ptr %228, align 8, !tbaa !26
  %280 = load ptr, ptr %222, align 8, !tbaa !22
  store ptr %280, ptr %229, align 8, !tbaa !27
  store ptr %280, ptr %230, align 8, !tbaa !28
  br label %314

281:                                              ; preds = %246
  %282 = load i32, ptr %220, align 8, !tbaa !21
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %314, label %284

284:                                              ; preds = %281, %275, %261
  %285 = phi ptr [ %248, %281 ], [ null, %275 ], [ %248, %261 ]
  %286 = load i32, ptr %71, align 8, !tbaa !30
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %.loopexit43, label %288

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #17
  br label %290

290:                                              ; preds = %307, %288
  %291 = phi ptr [ %285, %288 ], [ %312, %307 ]
  store i32 0, ptr %289, align 4, !tbaa !4
  store i32 0, ptr %226, align 4, !tbaa !17
  %292 = load i32, ptr %71, align 8, !tbaa !30
  %293 = call i32 @llvm.umin.i32(i32 %292, i32 1073741824)
  %294 = zext nneg i32 %293 to i64
  %295 = load i32, ptr %227, align 4, !tbaa !31
  %296 = call i64 @write(i32 noundef %295, ptr noundef %291, i64 noundef %294) #15
  %297 = trunc i64 %296 to i32
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %290
  %300 = load i32, ptr %289, align 4, !tbaa !4
  %301 = icmp eq i32 %300, 11
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  store i32 1, ptr %226, align 4, !tbaa !17
  %303 = load i32, ptr %289, align 4, !tbaa !4
  br label %304

304:                                              ; preds = %302, %299
  %305 = phi i32 [ %300, %299 ], [ %303, %302 ]
  %306 = call ptr @strerror(i32 noundef %305) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %306) #15
  br label %.loopexit43

307:                                              ; preds = %290
  %308 = load i32, ptr %71, align 8, !tbaa !30
  %309 = sub i32 %308, %297
  store i32 %309, ptr %71, align 8, !tbaa !30
  %310 = load ptr, ptr %6, align 8, !tbaa !25
  %311 = and i64 %296, 2147483647
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %6, align 8, !tbaa !25
  %313 = icmp eq i32 %308, %297
  br i1 %313, label %.loopexit43, label %290, !llvm.loop !32

314:                                              ; preds = %281, %279
  %315 = load i32, ptr %231, align 8, !tbaa !34
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %314
  %318 = load i32, ptr %71, align 8, !tbaa !30
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.loopexit43, label %320

320:                                              ; preds = %317
  %321 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %231, align 8, !tbaa !34
  br label %322

322:                                              ; preds = %320, %314
  %323 = load i32, ptr %228, align 8, !tbaa !26
  br label %324

324:                                              ; preds = %370, %322
  %325 = phi i32 [ %323, %322 ], [ %371, %370 ]
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %365

327:                                              ; preds = %324
  %328 = load ptr, ptr %229, align 8, !tbaa !27
  %329 = load ptr, ptr %230, align 8, !tbaa !28
  %330 = icmp ugt ptr %328, %329
  br i1 %330, label %331, label %362

331:                                              ; preds = %327
  %332 = tail call ptr @__errno_location() #17
  br label %333

333:                                              ; preds = %353, %331
  %334 = phi ptr [ %329, %331 ], [ %356, %353 ]
  %335 = phi ptr [ %328, %331 ], [ %357, %353 ]
  store i32 0, ptr %332, align 4, !tbaa !4
  store i32 0, ptr %226, align 4, !tbaa !17
  %336 = ptrtoint ptr %335 to i64
  %337 = ptrtoint ptr %334 to i64
  %338 = sub i64 %336, %337
  %339 = call i64 @llvm.smin.i64(i64 %338, i64 1073741824)
  %340 = and i64 %339, 4294967295
  %341 = load i32, ptr %227, align 4, !tbaa !31
  %342 = call i64 @write(i32 noundef %341, ptr noundef %334, i64 noundef %340) #15
  %343 = and i64 %342, 2147483648
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %353, label %345

345:                                              ; preds = %333
  %346 = load i32, ptr %332, align 4, !tbaa !4
  %347 = icmp eq i32 %346, 11
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  store i32 1, ptr %226, align 4, !tbaa !17
  %349 = load i32, ptr %332, align 4, !tbaa !4
  br label %350

350:                                              ; preds = %348, %345
  %351 = phi i32 [ %346, %345 ], [ %349, %348 ]
  %352 = call ptr @strerror(i32 noundef %351) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %352) #15
  br label %.loopexit43

353:                                              ; preds = %333
  %354 = load ptr, ptr %230, align 8, !tbaa !28
  %355 = and i64 %342, 2147483647
  %356 = getelementptr inbounds nuw i8, ptr %354, i64 %355
  store ptr %356, ptr %230, align 8, !tbaa !28
  %357 = load ptr, ptr %229, align 8, !tbaa !27
  %358 = icmp ugt ptr %357, %356
  br i1 %358, label %333, label %359, !llvm.loop !35

359:                                              ; preds = %353
  %360 = load i32, ptr %228, align 8, !tbaa !26
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359, %327
  %363 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %363, ptr %228, align 8, !tbaa !26
  %364 = load ptr, ptr %222, align 8, !tbaa !22
  store ptr %364, ptr %229, align 8, !tbaa !27
  store ptr %364, ptr %230, align 8, !tbaa !28
  br label %365

365:                                              ; preds = %362, %359, %324
  %366 = phi i32 [ %360, %359 ], [ %363, %362 ], [ %325, %324 ]
  %367 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %368 = icmp eq i32 %367, -2
  br i1 %368, label %369, label %370

369:                                              ; preds = %365
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit43

370:                                              ; preds = %365
  %371 = load i32, ptr %228, align 8, !tbaa !26
  %372 = icmp eq i32 %366, %371
  br i1 %372, label %.loopexit43, label %324, !llvm.loop !36

.loopexit43:                                      ; preds = %307, %370, %369, %350, %317, %304, %284, %272, %266, %256
  %373 = phi i1 [ false, %317 ], [ true, %304 ], [ false, %284 ], [ true, %266 ], [ true, %350 ], [ true, %369 ], [ false, %370 ], [ true, %256 ], [ true, %272 ], [ false, %307 ]
  %374 = load i32, ptr %71, align 8, !tbaa !30
  %375 = sub i32 %240, %374
  %376 = zext i32 %375 to i64
  %377 = load i64, ptr %232, align 8, !tbaa !37
  %378 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %377, i64 %376), !nosanitize !38
  %379 = extractvalue { i64, i1 } %378, 1, !nosanitize !38
  br i1 %379, label %380, label %381, !prof !39, !nosanitize !38

380:                                              ; preds = %.loopexit43
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

381:                                              ; preds = %.loopexit43
  %382 = extractvalue { i64, i1 } %378, 0, !nosanitize !38
  store i64 %382, ptr %232, align 8, !tbaa !37
  %383 = load i64, ptr %67, align 8, !tbaa !29
  %384 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %383, i64 %376), !nosanitize !38
  %385 = extractvalue { i64, i1 } %384, 0, !nosanitize !38
  %386 = extractvalue { i64, i1 } %384, 1, !nosanitize !38
  br i1 %386, label %387, label %388, !prof !39, !nosanitize !38

387:                                              ; preds = %381
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

388:                                              ; preds = %381
  store i64 %385, ptr %67, align 8, !tbaa !29
  br i1 %373, label %.loopexit45, label %389

389:                                              ; preds = %388
  %390 = icmp eq i64 %385, 0
  br i1 %390, label %.loopexit46, label %234, !llvm.loop !40

.loopexit45:                                      ; preds = %388, %215, %196, %143, %105, %96, %84
  %391 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

.loopexit46:                                      ; preds = %389, %65
  %392 = load ptr, ptr %6, align 8, !tbaa !25
  %393 = icmp eq ptr %392, null
  br i1 %393, label %561, label %394

394:                                              ; preds = %.loopexit46
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %396 = load i32, ptr %395, align 8, !tbaa !30
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds nuw i8, ptr %392, i64 %397
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %400 = load ptr, ptr %399, align 8, !tbaa !20
  %401 = load i32, ptr %19, align 8, !tbaa !18
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds nuw i8, ptr %400, i64 %402
  %404 = icmp ugt ptr %398, %403
  br i1 %404, label %405, label %561

405:                                              ; preds = %394
  %406 = icmp eq i32 %401, 0
  br i1 %406, label %407, label %447

407:                                              ; preds = %405
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %409 = load i32, ptr %408, align 4, !tbaa !19
  %410 = shl i32 %409, 1
  %411 = zext i32 %410 to i64
  %412 = call noalias ptr @malloc(i64 noundef %411) #16
  store ptr %412, ptr %399, align 8, !tbaa !20
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %415

414:                                              ; preds = %407
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

415:                                              ; preds = %407
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %417 = load i32, ptr %416, align 8, !tbaa !21
  %418 = icmp eq i32 %417, 0
  %419 = load i32, ptr %408, align 4, !tbaa !19
  br i1 %418, label %421, label %420

420:                                              ; preds = %415
  store i32 %419, ptr %19, align 8, !tbaa !18
  br label %451

421:                                              ; preds = %415
  %422 = zext i32 %419 to i64
  %423 = call noalias ptr @malloc(i64 noundef %422) #16
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %423, ptr %424, align 8, !tbaa !22
  %425 = icmp eq ptr %423, null
  br i1 %425, label %426, label %427

426:                                              ; preds = %421
  call void @free(ptr noundef nonnull %412) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

427:                                              ; preds = %421
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %428, i8 0, i64 24, i1 false)
  %430 = load i32, ptr %429, align 8, !tbaa !23
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %432 = load i32, ptr %431, align 4, !tbaa !24
  %433 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %430, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %432, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %427
  %436 = load ptr, ptr %424, align 8, !tbaa !22
  call void @free(ptr noundef %436) #15
  %437 = load ptr, ptr %399, align 8, !tbaa !20
  call void @free(ptr noundef %437) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

438:                                              ; preds = %427
  store ptr null, ptr %6, align 8, !tbaa !25
  %439 = load i32, ptr %416, align 8, !tbaa !21
  %440 = load i32, ptr %408, align 4, !tbaa !19
  store i32 %440, ptr %19, align 8, !tbaa !18
  %441 = icmp eq i32 %439, 0
  br i1 %441, label %442, label %451

442:                                              ; preds = %438
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %440, ptr %443, align 8, !tbaa !26
  %444 = load ptr, ptr %424, align 8, !tbaa !22
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %444, ptr %445, align 8, !tbaa !27
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %444, ptr %446, align 8, !tbaa !28
  br label %483

447:                                              ; preds = %405
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %449 = load i32, ptr %448, align 8, !tbaa !21
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %483, label %451

451:                                              ; preds = %447, %438, %420
  %452 = phi ptr [ %392, %447 ], [ null, %438 ], [ %392, %420 ]
  %453 = load i32, ptr %395, align 8, !tbaa !30
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %551, label %455

455:                                              ; preds = %451
  %456 = tail call ptr @__errno_location() #17
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %459

459:                                              ; preds = %476, %455
  %460 = phi ptr [ %452, %455 ], [ %481, %476 ]
  store i32 0, ptr %456, align 4, !tbaa !4
  store i32 0, ptr %457, align 4, !tbaa !17
  %461 = load i32, ptr %395, align 8, !tbaa !30
  %462 = call i32 @llvm.umin.i32(i32 %461, i32 1073741824)
  %463 = zext nneg i32 %462 to i64
  %464 = load i32, ptr %458, align 4, !tbaa !31
  %465 = call i64 @write(i32 noundef %464, ptr noundef %460, i64 noundef %463) #15
  %466 = trunc i64 %465 to i32
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %476

468:                                              ; preds = %459
  %469 = load i32, ptr %456, align 4, !tbaa !4
  %470 = icmp eq i32 %469, 11
  br i1 %470, label %471, label %473

471:                                              ; preds = %468
  store i32 1, ptr %457, align 4, !tbaa !17
  %472 = load i32, ptr %456, align 4, !tbaa !4
  br label %473

473:                                              ; preds = %471, %468
  %474 = phi i32 [ %469, %468 ], [ %472, %471 ]
  %475 = call ptr @strerror(i32 noundef %474) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %475) #15
  br label %.loopexit

476:                                              ; preds = %459
  %477 = load i32, ptr %395, align 8, !tbaa !30
  %478 = sub i32 %477, %466
  store i32 %478, ptr %395, align 8, !tbaa !30
  %479 = load ptr, ptr %6, align 8, !tbaa !25
  %480 = and i64 %465, 2147483647
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  store ptr %481, ptr %6, align 8, !tbaa !25
  %482 = icmp eq i32 %477, %466
  br i1 %482, label %.loopexit, label %459, !llvm.loop !32

483:                                              ; preds = %447, %442
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %485 = load i32, ptr %484, align 8, !tbaa !34
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %483
  %488 = load i32, ptr %395, align 8, !tbaa !30
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %551, label %490

490:                                              ; preds = %487
  %491 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %484, align 8, !tbaa !34
  br label %492

492:                                              ; preds = %490, %483
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %499 = load i32, ptr %493, align 8, !tbaa !26
  br label %500

500:                                              ; preds = %546, %492
  %501 = phi i32 [ %499, %492 ], [ %547, %546 ]
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %541

503:                                              ; preds = %500
  %504 = load ptr, ptr %494, align 8, !tbaa !27
  %505 = load ptr, ptr %495, align 8, !tbaa !28
  %506 = icmp ugt ptr %504, %505
  br i1 %506, label %507, label %538

507:                                              ; preds = %503
  %508 = tail call ptr @__errno_location() #17
  br label %509

509:                                              ; preds = %529, %507
  %510 = phi ptr [ %505, %507 ], [ %532, %529 ]
  %511 = phi ptr [ %504, %507 ], [ %533, %529 ]
  store i32 0, ptr %508, align 4, !tbaa !4
  store i32 0, ptr %496, align 4, !tbaa !17
  %512 = ptrtoint ptr %511 to i64
  %513 = ptrtoint ptr %510 to i64
  %514 = sub i64 %512, %513
  %515 = call i64 @llvm.smin.i64(i64 %514, i64 1073741824)
  %516 = and i64 %515, 4294967295
  %517 = load i32, ptr %497, align 4, !tbaa !31
  %518 = call i64 @write(i32 noundef %517, ptr noundef %510, i64 noundef %516) #15
  %519 = and i64 %518, 2147483648
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %529, label %521

521:                                              ; preds = %509
  %522 = load i32, ptr %508, align 4, !tbaa !4
  %523 = icmp eq i32 %522, 11
  br i1 %523, label %524, label %526

524:                                              ; preds = %521
  store i32 1, ptr %496, align 4, !tbaa !17
  %525 = load i32, ptr %508, align 4, !tbaa !4
  br label %526

526:                                              ; preds = %524, %521
  %527 = phi i32 [ %522, %521 ], [ %525, %524 ]
  %528 = call ptr @strerror(i32 noundef %527) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %528) #15
  br label %.loopexit

529:                                              ; preds = %509
  %530 = load ptr, ptr %495, align 8, !tbaa !28
  %531 = and i64 %518, 2147483647
  %532 = getelementptr inbounds nuw i8, ptr %530, i64 %531
  store ptr %532, ptr %495, align 8, !tbaa !28
  %533 = load ptr, ptr %494, align 8, !tbaa !27
  %534 = icmp ugt ptr %533, %532
  br i1 %534, label %509, label %535, !llvm.loop !35

535:                                              ; preds = %529
  %536 = load i32, ptr %493, align 8, !tbaa !26
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %535, %503
  %539 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %539, ptr %493, align 8, !tbaa !26
  %540 = load ptr, ptr %498, align 8, !tbaa !22
  store ptr %540, ptr %494, align 8, !tbaa !27
  store ptr %540, ptr %495, align 8, !tbaa !28
  br label %541

541:                                              ; preds = %538, %535, %500
  %542 = phi i32 [ %536, %535 ], [ %539, %538 ], [ %501, %500 ]
  %543 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %544 = icmp eq i32 %543, -2
  br i1 %544, label %545, label %546

545:                                              ; preds = %541
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

546:                                              ; preds = %541
  %547 = load i32, ptr %493, align 8, !tbaa !26
  %548 = icmp eq i32 %542, %547
  br i1 %548, label %.loopexit, label %500, !llvm.loop !36

.loopexit:                                        ; preds = %476, %546, %545, %526, %473, %435, %426, %414
  %549 = load i32, ptr %395, align 8, !tbaa !30
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %.loopexit, %487, %451
  %552 = load ptr, ptr %399, align 8, !tbaa !20
  store ptr %552, ptr %6, align 8, !tbaa !25
  br label %561

553:                                              ; preds = %.loopexit
  %554 = load ptr, ptr %399, align 8, !tbaa !20
  %555 = load ptr, ptr %6, align 8, !tbaa !25
  %556 = zext i32 %549 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %554, ptr align 1 %555, i64 %556, i1 false)
  %557 = load ptr, ptr %399, align 8, !tbaa !20
  store ptr %557, ptr %6, align 8, !tbaa !25
  %558 = load i32, ptr %395, align 8, !tbaa !30
  %559 = load i32, ptr %19, align 8, !tbaa !18
  %560 = icmp ule i32 %558, %559
  br label %561

561:                                              ; preds = %553, %551, %394, %.loopexit46
  %562 = phi i1 [ %560, %553 ], [ true, %551 ], [ true, %394 ], [ true, %.loopexit46 ]
  %563 = load i32, ptr %11, align 8, !tbaa !16
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %577, label %565

565:                                              ; preds = %561
  br i1 %562, label %571, label %566

566:                                              ; preds = %565
  %567 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %568 = load i32, ptr %567, align 4, !tbaa !17
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %571

571:                                              ; preds = %570, %566, %565
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %573 = load i32, ptr %572, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %571
  %576 = load i32, ptr %11, align 8, !tbaa !16
  br label %629

577:                                              ; preds = %571, %561
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %579 = load i32, ptr %578, align 8, !tbaa !30
  %580 = icmp eq i32 %579, 0
  %581 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %582 = load ptr, ptr %581, align 8, !tbaa !20
  br i1 %580, label %585, label %583

583:                                              ; preds = %577
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  br label %586

585:                                              ; preds = %577
  store ptr %582, ptr %6, align 8, !tbaa !25
  br label %586

586:                                              ; preds = %585, %583
  %587 = phi ptr [ %584, %583 ], [ %582, %585 ]
  %588 = ptrtoint ptr %587 to i64
  %589 = ptrtoint ptr %582 to i64
  %590 = sub i64 %588, %589
  %591 = getelementptr inbounds i8, ptr %582, i64 %590
  %592 = zext i32 %579 to i64
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 %592
  %594 = load i32, ptr %19, align 8, !tbaa !18
  %595 = add i32 %594, -1
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds nuw i8, ptr %593, i64 %596
  store i8 0, ptr %597, align 1, !tbaa !44
  %598 = load i32, ptr %19, align 8, !tbaa !18
  %599 = zext i32 %598 to i64
  %600 = call i32 @vsnprintf(ptr noundef %593, i64 noundef %599, ptr noundef readonly %1, ptr noundef nonnull %3) #15
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %629, label %602

602:                                              ; preds = %586
  %603 = load i32, ptr %19, align 8, !tbaa !18
  %604 = icmp ult i32 %600, %603
  br i1 %604, label %605, label %629

605:                                              ; preds = %602
  %606 = add i32 %603, -1
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds nuw i8, ptr %593, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !44
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %629

611:                                              ; preds = %605
  %612 = load i32, ptr %578, align 8, !tbaa !30
  %613 = add i32 %612, %600
  store i32 %613, ptr %578, align 8, !tbaa !30
  %614 = sext i32 %600 to i64
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %616 = load i64, ptr %615, align 8, !tbaa !37
  %617 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %616, i64 %614), !nosanitize !38
  %618 = extractvalue { i64, i1 } %617, 1, !nosanitize !38
  br i1 %618, label %619, label %620, !prof !39, !nosanitize !38

619:                                              ; preds = %611
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

620:                                              ; preds = %611
  %621 = extractvalue { i64, i1 } %617, 0, !nosanitize !38
  store i64 %621, ptr %615, align 8, !tbaa !37
  call fastcc void @gz_vacate(ptr noundef %0)
  %622 = load i32, ptr %11, align 8, !tbaa !16
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %628, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %626 = load i32, ptr %625, align 4, !tbaa !17
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %624, %620
  br label %629

629:                                              ; preds = %628, %624, %605, %602, %586, %575, %.loopexit45, %63, %14, %5, %2
  %630 = phi i32 [ %576, %575 ], [ -2, %2 ], [ %64, %63 ], [ %391, %.loopexit45 ], [ -2, %5 ], [ %600, %628 ], [ 0, %586 ], [ -2, %14 ], [ 0, %605 ], [ 0, %602 ], [ %622, %624 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %630
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %510, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %510

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %510, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %510, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit40, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %.loopexit41, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = shl i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #16
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %36, ptr %37, align 8, !tbaa !20
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

40:                                               ; preds = %31
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %42 = load i32, ptr %41, align 8, !tbaa !21
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr %32, align 4, !tbaa !19
  br i1 %43, label %46, label %45

45:                                               ; preds = %40
  store i32 %44, ptr %28, align 8, !tbaa !18
  br label %76

46:                                               ; preds = %40
  %47 = zext i32 %44 to i64
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #16
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %48, ptr %49, align 8, !tbaa !22
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %36) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %57 = load i32, ptr %56, align 4, !tbaa !24
  %58 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %55, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %57, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %49, align 8, !tbaa !22
  tail call void @free(ptr noundef %61) #15
  %62 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @free(ptr noundef %62) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

63:                                               ; preds = %52
  store ptr null, ptr %23, align 8, !tbaa !25
  %64 = load i32, ptr %41, align 8, !tbaa !21
  %65 = load i32, ptr %32, align 4, !tbaa !19
  store i32 %65, ptr %28, align 8, !tbaa !18
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %65, ptr %68, align 8, !tbaa !26
  %69 = load ptr, ptr %49, align 8, !tbaa !22
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %69, ptr %70, align 8, !tbaa !27
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %69, ptr %71, align 8, !tbaa !28
  br label %108

72:                                               ; preds = %27
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %74 = load i32, ptr %73, align 8, !tbaa !21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %108, label %76

76:                                               ; preds = %72, %63, %45
  %77 = load i32, ptr %24, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit41, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @__errno_location() #17
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %83 = load ptr, ptr %23, align 8, !tbaa !25
  br label %84

84:                                               ; preds = %101, %79
  %85 = phi ptr [ %83, %79 ], [ %106, %101 ]
  store i32 0, ptr %80, align 4, !tbaa !4
  store i32 0, ptr %81, align 4, !tbaa !17
  %86 = load i32, ptr %24, align 8, !tbaa !30
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 1073741824)
  %88 = zext nneg i32 %87 to i64
  %89 = load i32, ptr %82, align 4, !tbaa !31
  %90 = tail call i64 @write(i32 noundef %89, ptr noundef %85, i64 noundef %88) #15
  %91 = trunc i64 %90 to i32
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i32, ptr %80, align 4, !tbaa !4
  %95 = icmp eq i32 %94, 11
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  store i32 1, ptr %81, align 4, !tbaa !17
  %97 = load i32, ptr %80, align 4, !tbaa !4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %96 ]
  %100 = tail call ptr @strerror(i32 noundef %99) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %100) #15
  br label %.loopexit

101:                                              ; preds = %84
  %102 = load i32, ptr %24, align 8, !tbaa !30
  %103 = sub i32 %102, %91
  store i32 %103, ptr %24, align 8, !tbaa !30
  %104 = load ptr, ptr %23, align 8, !tbaa !25
  %105 = and i64 %90, 2147483647
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 %105
  store ptr %106, ptr %23, align 8, !tbaa !25
  %107 = icmp eq i32 %102, %91
  br i1 %107, label %.loopexit41, label %84, !llvm.loop !32

108:                                              ; preds = %72, %67
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %110 = load i32, ptr %109, align 8, !tbaa !34
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %24, align 8, !tbaa !30
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %.loopexit41, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %109, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %115, %108
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %124 = load i32, ptr %118, align 8, !tbaa !26
  br label %125

125:                                              ; preds = %171, %117
  %126 = phi i32 [ %124, %117 ], [ %172, %171 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %125
  %129 = load ptr, ptr %119, align 8, !tbaa !27
  %130 = load ptr, ptr %120, align 8, !tbaa !28
  %131 = icmp ugt ptr %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = tail call ptr @__errno_location() #17
  br label %134

134:                                              ; preds = %154, %132
  %135 = phi ptr [ %130, %132 ], [ %157, %154 ]
  %136 = phi ptr [ %129, %132 ], [ %158, %154 ]
  store i32 0, ptr %133, align 4, !tbaa !4
  store i32 0, ptr %121, align 4, !tbaa !17
  %137 = ptrtoint ptr %136 to i64
  %138 = ptrtoint ptr %135 to i64
  %139 = sub i64 %137, %138
  %140 = tail call i64 @llvm.smin.i64(i64 %139, i64 1073741824)
  %141 = and i64 %140, 4294967295
  %142 = load i32, ptr %122, align 4, !tbaa !31
  %143 = tail call i64 @write(i32 noundef %142, ptr noundef %135, i64 noundef %141) #15
  %144 = and i64 %143, 2147483648
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %134
  %147 = load i32, ptr %133, align 4, !tbaa !4
  %148 = icmp eq i32 %147, 11
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  store i32 1, ptr %121, align 4, !tbaa !17
  %150 = load i32, ptr %133, align 4, !tbaa !4
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32 [ %147, %146 ], [ %150, %149 ]
  %153 = tail call ptr @strerror(i32 noundef %152) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %153) #15
  br label %.loopexit

154:                                              ; preds = %134
  %155 = load ptr, ptr %120, align 8, !tbaa !28
  %156 = and i64 %143, 2147483647
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 %156
  store ptr %157, ptr %120, align 8, !tbaa !28
  %158 = load ptr, ptr %119, align 8, !tbaa !27
  %159 = icmp ugt ptr %158, %157
  br i1 %159, label %134, label %160, !llvm.loop !35

160:                                              ; preds = %154
  %161 = load i32, ptr %118, align 8, !tbaa !26
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160, %128
  %164 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %164, ptr %118, align 8, !tbaa !26
  %165 = load ptr, ptr %123, align 8, !tbaa !22
  store ptr %165, ptr %119, align 8, !tbaa !27
  store ptr %165, ptr %120, align 8, !tbaa !28
  br label %166

166:                                              ; preds = %163, %160, %125
  %167 = phi i32 [ %161, %160 ], [ %164, %163 ], [ %126, %125 ]
  %168 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %169 = icmp eq i32 %168, -2
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

171:                                              ; preds = %166
  %172 = load i32, ptr %118, align 8, !tbaa !26
  %173 = icmp eq i32 %167, %172
  br i1 %173, label %.loopexit41, label %125, !llvm.loop !36

.loopexit41:                                      ; preds = %101, %171, %112, %76, %22
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %189 = load i64, ptr %19, align 8, !tbaa !29
  br label %190

190:                                              ; preds = %345, %.loopexit41
  %191 = phi i64 [ %189, %.loopexit41 ], [ %341, %345 ]
  %192 = phi i1 [ false, %.loopexit41 ], [ true, %345 ]
  %193 = load i32, ptr %174, align 8, !tbaa !18
  %194 = zext i32 %193 to i64
  %195 = tail call i64 @llvm.smin.i64(i64 %191, i64 %194)
  %196 = trunc i64 %195 to i32
  %197 = load ptr, ptr %175, align 8, !tbaa !20
  br i1 %192, label %202, label %198

198:                                              ; preds = %190
  %199 = and i64 %195, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %197, i8 0, i64 %199, i1 false)
  %200 = load ptr, ptr %175, align 8, !tbaa !20
  %201 = load i32, ptr %174, align 8, !tbaa !18
  br label %202

202:                                              ; preds = %198, %190
  %203 = phi i32 [ %201, %198 ], [ %193, %190 ]
  %204 = phi ptr [ %200, %198 ], [ %197, %190 ]
  store i32 %196, ptr %24, align 8, !tbaa !30
  store ptr %204, ptr %23, align 8, !tbaa !25
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %206, label %237

206:                                              ; preds = %202
  %207 = load i32, ptr %177, align 4, !tbaa !19
  %208 = shl i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #16
  store ptr %210, ptr %175, align 8, !tbaa !20
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

213:                                              ; preds = %206
  %214 = load i32, ptr %176, align 8, !tbaa !21
  %215 = icmp eq i32 %214, 0
  %216 = load i32, ptr %177, align 4, !tbaa !19
  br i1 %215, label %218, label %217

217:                                              ; preds = %213
  store i32 %216, ptr %174, align 8, !tbaa !18
  br label %240

218:                                              ; preds = %213
  %219 = zext i32 %216 to i64
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #16
  store ptr %220, ptr %178, align 8, !tbaa !22
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @free(ptr noundef nonnull %210) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

223:                                              ; preds = %218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %179, i8 0, i64 24, i1 false)
  %224 = load i32, ptr %180, align 8, !tbaa !23
  %225 = load i32, ptr %181, align 4, !tbaa !24
  %226 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %224, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %225, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %178, align 8, !tbaa !22
  tail call void @free(ptr noundef %229) #15
  %230 = load ptr, ptr %175, align 8, !tbaa !20
  tail call void @free(ptr noundef %230) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

231:                                              ; preds = %223
  store ptr null, ptr %23, align 8, !tbaa !25
  %232 = load i32, ptr %176, align 8, !tbaa !21
  %233 = load i32, ptr %177, align 4, !tbaa !19
  store i32 %233, ptr %174, align 8, !tbaa !18
  %234 = icmp eq i32 %232, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  store i32 %233, ptr %184, align 8, !tbaa !26
  %236 = load ptr, ptr %178, align 8, !tbaa !22
  store ptr %236, ptr %185, align 8, !tbaa !27
  store ptr %236, ptr %186, align 8, !tbaa !28
  br label %270

237:                                              ; preds = %202
  %238 = load i32, ptr %176, align 8, !tbaa !21
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %270, label %240

240:                                              ; preds = %237, %231, %217
  %241 = phi ptr [ %204, %237 ], [ null, %231 ], [ %204, %217 ]
  %242 = load i32, ptr %24, align 8, !tbaa !30
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %.loopexit37, label %244

244:                                              ; preds = %240
  %245 = tail call ptr @__errno_location() #17
  br label %246

246:                                              ; preds = %263, %244
  %247 = phi ptr [ %241, %244 ], [ %268, %263 ]
  store i32 0, ptr %245, align 4, !tbaa !4
  store i32 0, ptr %182, align 4, !tbaa !17
  %248 = load i32, ptr %24, align 8, !tbaa !30
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 1073741824)
  %250 = zext nneg i32 %249 to i64
  %251 = load i32, ptr %183, align 4, !tbaa !31
  %252 = tail call i64 @write(i32 noundef %251, ptr noundef %247, i64 noundef %250) #15
  %253 = trunc i64 %252 to i32
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %246
  %256 = load i32, ptr %245, align 4, !tbaa !4
  %257 = icmp eq i32 %256, 11
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  store i32 1, ptr %182, align 4, !tbaa !17
  %259 = load i32, ptr %245, align 4, !tbaa !4
  br label %260

260:                                              ; preds = %258, %255
  %261 = phi i32 [ %256, %255 ], [ %259, %258 ]
  %262 = tail call ptr @strerror(i32 noundef %261) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %262) #15
  br label %.loopexit37

263:                                              ; preds = %246
  %264 = load i32, ptr %24, align 8, !tbaa !30
  %265 = sub i32 %264, %253
  store i32 %265, ptr %24, align 8, !tbaa !30
  %266 = load ptr, ptr %23, align 8, !tbaa !25
  %267 = and i64 %252, 2147483647
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 %267
  store ptr %268, ptr %23, align 8, !tbaa !25
  %269 = icmp eq i32 %264, %253
  br i1 %269, label %.loopexit37, label %246, !llvm.loop !32

270:                                              ; preds = %237, %235
  %271 = load i32, ptr %187, align 8, !tbaa !34
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %24, align 8, !tbaa !30
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %.loopexit37, label %276

276:                                              ; preds = %273
  %277 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %187, align 8, !tbaa !34
  br label %278

278:                                              ; preds = %276, %270
  %279 = load i32, ptr %184, align 8, !tbaa !26
  br label %280

280:                                              ; preds = %326, %278
  %281 = phi i32 [ %279, %278 ], [ %327, %326 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %321

283:                                              ; preds = %280
  %284 = load ptr, ptr %185, align 8, !tbaa !27
  %285 = load ptr, ptr %186, align 8, !tbaa !28
  %286 = icmp ugt ptr %284, %285
  br i1 %286, label %287, label %318

287:                                              ; preds = %283
  %288 = tail call ptr @__errno_location() #17
  br label %289

289:                                              ; preds = %309, %287
  %290 = phi ptr [ %285, %287 ], [ %312, %309 ]
  %291 = phi ptr [ %284, %287 ], [ %313, %309 ]
  store i32 0, ptr %288, align 4, !tbaa !4
  store i32 0, ptr %182, align 4, !tbaa !17
  %292 = ptrtoint ptr %291 to i64
  %293 = ptrtoint ptr %290 to i64
  %294 = sub i64 %292, %293
  %295 = tail call i64 @llvm.smin.i64(i64 %294, i64 1073741824)
  %296 = and i64 %295, 4294967295
  %297 = load i32, ptr %183, align 4, !tbaa !31
  %298 = tail call i64 @write(i32 noundef %297, ptr noundef %290, i64 noundef %296) #15
  %299 = and i64 %298, 2147483648
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %309, label %301

301:                                              ; preds = %289
  %302 = load i32, ptr %288, align 4, !tbaa !4
  %303 = icmp eq i32 %302, 11
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  store i32 1, ptr %182, align 4, !tbaa !17
  %305 = load i32, ptr %288, align 4, !tbaa !4
  br label %306

306:                                              ; preds = %304, %301
  %307 = phi i32 [ %302, %301 ], [ %305, %304 ]
  %308 = tail call ptr @strerror(i32 noundef %307) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %308) #15
  br label %.loopexit37

309:                                              ; preds = %289
  %310 = load ptr, ptr %186, align 8, !tbaa !28
  %311 = and i64 %298, 2147483647
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %186, align 8, !tbaa !28
  %313 = load ptr, ptr %185, align 8, !tbaa !27
  %314 = icmp ugt ptr %313, %312
  br i1 %314, label %289, label %315, !llvm.loop !35

315:                                              ; preds = %309
  %316 = load i32, ptr %184, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315, %283
  %319 = load i32, ptr %174, align 8, !tbaa !18
  store i32 %319, ptr %184, align 8, !tbaa !26
  %320 = load ptr, ptr %178, align 8, !tbaa !22
  store ptr %320, ptr %185, align 8, !tbaa !27
  store ptr %320, ptr %186, align 8, !tbaa !28
  br label %321

321:                                              ; preds = %318, %315, %280
  %322 = phi i32 [ %316, %315 ], [ %319, %318 ], [ %281, %280 ]
  %323 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %324 = icmp eq i32 %323, -2
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit37

326:                                              ; preds = %321
  %327 = load i32, ptr %184, align 8, !tbaa !26
  %328 = icmp eq i32 %322, %327
  br i1 %328, label %.loopexit37, label %280, !llvm.loop !36

.loopexit37:                                      ; preds = %263, %326, %325, %306, %273, %260, %240, %228, %222, %212
  %329 = phi i1 [ false, %273 ], [ true, %260 ], [ false, %240 ], [ true, %222 ], [ true, %306 ], [ true, %325 ], [ false, %326 ], [ true, %212 ], [ true, %228 ], [ false, %263 ]
  %330 = load i32, ptr %24, align 8, !tbaa !30
  %331 = sub i32 %196, %330
  %332 = zext i32 %331 to i64
  %333 = load i64, ptr %188, align 8, !tbaa !37
  %334 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %333, i64 %332), !nosanitize !38
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !38
  br i1 %335, label %336, label %337, !prof !39, !nosanitize !38

336:                                              ; preds = %.loopexit37
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

337:                                              ; preds = %.loopexit37
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !38
  store i64 %338, ptr %188, align 8, !tbaa !37
  %339 = load i64, ptr %19, align 8, !tbaa !29
  %340 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %339, i64 %332), !nosanitize !38
  %341 = extractvalue { i64, i1 } %340, 0, !nosanitize !38
  %342 = extractvalue { i64, i1 } %340, 1, !nosanitize !38
  br i1 %342, label %343, label %344, !prof !39, !nosanitize !38

343:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

344:                                              ; preds = %337
  store i64 %341, ptr %19, align 8, !tbaa !29
  br i1 %329, label %.loopexit, label %345

345:                                              ; preds = %344
  %346 = icmp eq i64 %341, 0
  br i1 %346, label %.loopexit40, label %190, !llvm.loop !40

.loopexit40:                                      ; preds = %345, %18
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %349 = load i32, ptr %348, align 8, !tbaa !18
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %392

351:                                              ; preds = %.loopexit40
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %353 = load i32, ptr %352, align 4, !tbaa !19
  %354 = shl i32 %353, 1
  %355 = zext i32 %354 to i64
  %356 = tail call noalias ptr @malloc(i64 noundef %355) #16
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %356, ptr %357, align 8, !tbaa !20
  %358 = icmp eq ptr %356, null
  br i1 %358, label %359, label %360

359:                                              ; preds = %351
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

360:                                              ; preds = %351
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %362 = load i32, ptr %361, align 8, !tbaa !21
  %363 = icmp eq i32 %362, 0
  %364 = load i32, ptr %352, align 4, !tbaa !19
  br i1 %363, label %366, label %365

365:                                              ; preds = %360
  store i32 %364, ptr %348, align 8, !tbaa !18
  br label %396

366:                                              ; preds = %360
  %367 = zext i32 %364 to i64
  %368 = tail call noalias ptr @malloc(i64 noundef %367) #16
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %368, ptr %369, align 8, !tbaa !22
  %370 = icmp eq ptr %368, null
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  tail call void @free(ptr noundef nonnull %356) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

372:                                              ; preds = %366
  %373 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %373, i8 0, i64 24, i1 false)
  %375 = load i32, ptr %374, align 8, !tbaa !23
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %377 = load i32, ptr %376, align 4, !tbaa !24
  %378 = tail call i32 @deflateInit2_(ptr noundef nonnull %347, i32 noundef %375, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %377, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %372
  %381 = load ptr, ptr %369, align 8, !tbaa !22
  tail call void @free(ptr noundef %381) #15
  %382 = load ptr, ptr %357, align 8, !tbaa !20
  tail call void @free(ptr noundef %382) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

383:                                              ; preds = %372
  store ptr null, ptr %347, align 8, !tbaa !25
  %384 = load i32, ptr %361, align 8, !tbaa !21
  %385 = load i32, ptr %352, align 4, !tbaa !19
  store i32 %385, ptr %348, align 8, !tbaa !18
  %386 = icmp eq i32 %384, 0
  br i1 %386, label %387, label %396

387:                                              ; preds = %383
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %385, ptr %388, align 8, !tbaa !26
  %389 = load ptr, ptr %369, align 8, !tbaa !22
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %389, ptr %390, align 8, !tbaa !27
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %389, ptr %391, align 8, !tbaa !28
  br label %429

392:                                              ; preds = %.loopexit40
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %394 = load i32, ptr %393, align 8, !tbaa !21
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %429, label %396

396:                                              ; preds = %392, %383, %365
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %398 = load i32, ptr %397, align 8, !tbaa !30
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %.loopexit, label %400

400:                                              ; preds = %396
  %401 = tail call ptr @__errno_location() #17
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %404 = load ptr, ptr %347, align 8, !tbaa !25
  br label %405

405:                                              ; preds = %422, %400
  %406 = phi ptr [ %404, %400 ], [ %427, %422 ]
  store i32 0, ptr %401, align 4, !tbaa !4
  store i32 0, ptr %402, align 4, !tbaa !17
  %407 = load i32, ptr %397, align 8, !tbaa !30
  %408 = tail call i32 @llvm.umin.i32(i32 %407, i32 1073741824)
  %409 = zext nneg i32 %408 to i64
  %410 = load i32, ptr %403, align 4, !tbaa !31
  %411 = tail call i64 @write(i32 noundef %410, ptr noundef %406, i64 noundef %409) #15
  %412 = trunc i64 %411 to i32
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %405
  %415 = load i32, ptr %401, align 4, !tbaa !4
  %416 = icmp eq i32 %415, 11
  br i1 %416, label %417, label %419

417:                                              ; preds = %414
  store i32 1, ptr %402, align 4, !tbaa !17
  %418 = load i32, ptr %401, align 4, !tbaa !4
  br label %419

419:                                              ; preds = %417, %414
  %420 = phi i32 [ %415, %414 ], [ %418, %417 ]
  %421 = tail call ptr @strerror(i32 noundef %420) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %421) #15
  br label %.loopexit

422:                                              ; preds = %405
  %423 = load i32, ptr %397, align 8, !tbaa !30
  %424 = sub i32 %423, %412
  store i32 %424, ptr %397, align 8, !tbaa !30
  %425 = load ptr, ptr %347, align 8, !tbaa !25
  %426 = and i64 %411, 2147483647
  %427 = getelementptr inbounds nuw i8, ptr %425, i64 %426
  store ptr %427, ptr %347, align 8, !tbaa !25
  %428 = icmp eq i32 %423, %412
  br i1 %428, label %.loopexit, label %405, !llvm.loop !32

429:                                              ; preds = %392, %387
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %431 = load i32, ptr %430, align 8, !tbaa !34
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %440, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %435 = load i32, ptr %434, align 8, !tbaa !30
  %436 = or i32 %435, %1
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %.loopexit, label %438

438:                                              ; preds = %433
  %439 = tail call i32 @deflateReset(ptr noundef nonnull %347) #15
  store i32 0, ptr %430, align 8, !tbaa !34
  br label %440

440:                                              ; preds = %438, %429
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %442 = icmp ne i32 %1, 0
  %443 = icmp ne i32 %1, 4
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %449 = load i32, ptr %441, align 8, !tbaa !26
  br label %450

450:                                              ; preds = %503, %440
  %451 = phi i32 [ %449, %440 ], [ %504, %503 ]
  %452 = phi i32 [ 0, %440 ], [ %500, %503 ]
  %453 = icmp eq i32 %451, 0
  br i1 %453, label %458, label %454

454:                                              ; preds = %450
  %455 = icmp eq i32 %452, 1
  %456 = or i1 %443, %455
  %457 = and i1 %442, %456
  br i1 %457, label %458, label %498

458:                                              ; preds = %454, %450
  %459 = load ptr, ptr %444, align 8, !tbaa !27
  %460 = load ptr, ptr %445, align 8, !tbaa !28
  %461 = icmp ugt ptr %459, %460
  br i1 %461, label %462, label %492

462:                                              ; preds = %458
  %463 = tail call ptr @__errno_location() #17
  br label %464

464:                                              ; preds = %484, %462
  %465 = phi ptr [ %460, %462 ], [ %487, %484 ]
  %466 = phi ptr [ %459, %462 ], [ %488, %484 ]
  store i32 0, ptr %463, align 4, !tbaa !4
  store i32 0, ptr %446, align 4, !tbaa !17
  %467 = ptrtoint ptr %466 to i64
  %468 = ptrtoint ptr %465 to i64
  %469 = sub i64 %467, %468
  %470 = tail call i64 @llvm.smin.i64(i64 %469, i64 1073741824)
  %471 = and i64 %470, 4294967295
  %472 = load i32, ptr %447, align 4, !tbaa !31
  %473 = tail call i64 @write(i32 noundef %472, ptr noundef %465, i64 noundef %471) #15
  %474 = and i64 %473, 2147483648
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %484, label %476

476:                                              ; preds = %464
  %477 = load i32, ptr %463, align 4, !tbaa !4
  %478 = icmp eq i32 %477, 11
  br i1 %478, label %479, label %481

479:                                              ; preds = %476
  store i32 1, ptr %446, align 4, !tbaa !17
  %480 = load i32, ptr %463, align 4, !tbaa !4
  br label %481

481:                                              ; preds = %479, %476
  %482 = phi i32 [ %477, %476 ], [ %480, %479 ]
  %483 = tail call ptr @strerror(i32 noundef %482) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %483) #15
  br label %.loopexit

484:                                              ; preds = %464
  %485 = load ptr, ptr %445, align 8, !tbaa !28
  %486 = and i64 %473, 2147483647
  %487 = getelementptr inbounds nuw i8, ptr %485, i64 %486
  store ptr %487, ptr %445, align 8, !tbaa !28
  %488 = load ptr, ptr %444, align 8, !tbaa !27
  %489 = icmp ugt ptr %488, %487
  br i1 %489, label %464, label %490, !llvm.loop !35

490:                                              ; preds = %484
  %491 = load i32, ptr %441, align 8, !tbaa !26
  br label %492

492:                                              ; preds = %490, %458
  %493 = phi i32 [ %491, %490 ], [ %451, %458 ]
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %492
  %496 = load i32, ptr %348, align 8, !tbaa !18
  store i32 %496, ptr %441, align 8, !tbaa !26
  %497 = load ptr, ptr %448, align 8, !tbaa !22
  store ptr %497, ptr %444, align 8, !tbaa !27
  store ptr %497, ptr %445, align 8, !tbaa !28
  br label %498

498:                                              ; preds = %495, %492, %454
  %499 = phi i32 [ %493, %492 ], [ %496, %495 ], [ %451, %454 ]
  %500 = tail call i32 @deflate(ptr noundef nonnull %347, i32 noundef range(i32 0, 6) %1) #15
  %501 = icmp eq i32 %500, -2
  br i1 %501, label %502, label %503

502:                                              ; preds = %498
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

503:                                              ; preds = %498
  %504 = load i32, ptr %441, align 8, !tbaa !26
  %505 = icmp eq i32 %499, %504
  br i1 %505, label %506, label %450, !llvm.loop !36

506:                                              ; preds = %503
  %507 = icmp eq i32 %1, 4
  br i1 %507, label %508, label %.loopexit

508:                                              ; preds = %506
  store i32 1, ptr %430, align 8, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %344, %422, %508, %506, %502, %481, %433, %419, %396, %380, %371, %359, %170, %151, %98, %60, %51, %39
  %509 = load i32, ptr %9, align 8, !tbaa !16
  br label %510

510:                                              ; preds = %.loopexit, %16, %12, %4, %2
  %511 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %509, %.loopexit ]
  ret i32 %511
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %461, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %461

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %461, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %461

22:                                               ; preds = %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %1, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = icmp eq i32 %2, %28
  br i1 %29, label %461, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.loopexit38, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %40 = load i32, ptr %39, align 8, !tbaa !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = shl i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #16
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !20
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

51:                                               ; preds = %42
  %52 = load i32, ptr %19, align 8, !tbaa !21
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %43, align 4, !tbaa !19
  br i1 %53, label %56, label %55

55:                                               ; preds = %51
  store i32 %54, ptr %39, align 8, !tbaa !18
  br label %84

56:                                               ; preds = %51
  %57 = zext i32 %54 to i64
  %58 = tail call noalias ptr @malloc(i64 noundef %57) #16
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %58, ptr %59, align 8, !tbaa !22
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @free(ptr noundef nonnull %47) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  %64 = load i32, ptr %23, align 8, !tbaa !23
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %66 = load i32, ptr %65, align 4, !tbaa !24
  %67 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %64, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %66, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %59, align 8, !tbaa !22
  tail call void @free(ptr noundef %70) #15
  %71 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void @free(ptr noundef %71) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

72:                                               ; preds = %62
  store ptr null, ptr %6, align 8, !tbaa !25
  %73 = load i32, ptr %19, align 8, !tbaa !21
  %74 = load i32, ptr %43, align 4, !tbaa !19
  store i32 %74, ptr %39, align 8, !tbaa !18
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %74, ptr %77, align 8, !tbaa !26
  %78 = load ptr, ptr %59, align 8, !tbaa !22
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %78, ptr %79, align 8, !tbaa !27
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %78, ptr %80, align 8, !tbaa !28
  br label %116

81:                                               ; preds = %38
  %82 = load i32, ptr %19, align 8, !tbaa !21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %81, %72, %55
  %85 = load i32, ptr %35, align 8, !tbaa !30
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit38, label %87

87:                                               ; preds = %84
  %88 = tail call ptr @__errno_location() #17
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %91 = load ptr, ptr %6, align 8, !tbaa !25
  br label %92

92:                                               ; preds = %109, %87
  %93 = phi ptr [ %91, %87 ], [ %114, %109 ]
  store i32 0, ptr %88, align 4, !tbaa !4
  store i32 0, ptr %89, align 4, !tbaa !17
  %94 = load i32, ptr %35, align 8, !tbaa !30
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 1073741824)
  %96 = zext nneg i32 %95 to i64
  %97 = load i32, ptr %90, align 4, !tbaa !31
  %98 = tail call i64 @write(i32 noundef %97, ptr noundef %93, i64 noundef %96) #15
  %99 = trunc i64 %98 to i32
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load i32, ptr %88, align 4, !tbaa !4
  %103 = icmp eq i32 %102, 11
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  store i32 1, ptr %89, align 4, !tbaa !17
  %105 = load i32, ptr %88, align 4, !tbaa !4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %102, %101 ], [ %105, %104 ]
  %108 = tail call ptr @strerror(i32 noundef %107) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %108) #15
  br label %.loopexit36

109:                                              ; preds = %92
  %110 = load i32, ptr %35, align 8, !tbaa !30
  %111 = sub i32 %110, %99
  store i32 %111, ptr %35, align 8, !tbaa !30
  %112 = load ptr, ptr %6, align 8, !tbaa !25
  %113 = and i64 %98, 2147483647
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  store ptr %114, ptr %6, align 8, !tbaa !25
  %115 = icmp eq i32 %110, %99
  br i1 %115, label %.loopexit38, label %92, !llvm.loop !32

116:                                              ; preds = %81, %76
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %118 = load i32, ptr %117, align 8, !tbaa !34
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %35, align 8, !tbaa !30
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %.loopexit38, label %123

123:                                              ; preds = %120
  %124 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %117, align 8, !tbaa !34
  br label %125

125:                                              ; preds = %123, %116
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %132 = load i32, ptr %126, align 8, !tbaa !26
  br label %133

133:                                              ; preds = %179, %125
  %134 = phi i32 [ %132, %125 ], [ %180, %179 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %133
  %137 = load ptr, ptr %127, align 8, !tbaa !27
  %138 = load ptr, ptr %128, align 8, !tbaa !28
  %139 = icmp ugt ptr %137, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %136
  %141 = tail call ptr @__errno_location() #17
  br label %142

142:                                              ; preds = %162, %140
  %143 = phi ptr [ %138, %140 ], [ %165, %162 ]
  %144 = phi ptr [ %137, %140 ], [ %166, %162 ]
  store i32 0, ptr %141, align 4, !tbaa !4
  store i32 0, ptr %129, align 4, !tbaa !17
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %143 to i64
  %147 = sub i64 %145, %146
  %148 = tail call i64 @llvm.smin.i64(i64 %147, i64 1073741824)
  %149 = and i64 %148, 4294967295
  %150 = load i32, ptr %130, align 4, !tbaa !31
  %151 = tail call i64 @write(i32 noundef %150, ptr noundef %143, i64 noundef %149) #15
  %152 = and i64 %151, 2147483648
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %142
  %155 = load i32, ptr %141, align 4, !tbaa !4
  %156 = icmp eq i32 %155, 11
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  store i32 1, ptr %129, align 4, !tbaa !17
  %158 = load i32, ptr %141, align 4, !tbaa !4
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i32 [ %155, %154 ], [ %158, %157 ]
  %161 = tail call ptr @strerror(i32 noundef %160) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %161) #15
  br label %.loopexit36

162:                                              ; preds = %142
  %163 = load ptr, ptr %128, align 8, !tbaa !28
  %164 = and i64 %151, 2147483647
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 %164
  store ptr %165, ptr %128, align 8, !tbaa !28
  %166 = load ptr, ptr %127, align 8, !tbaa !27
  %167 = icmp ugt ptr %166, %165
  br i1 %167, label %142, label %168, !llvm.loop !35

168:                                              ; preds = %162
  %169 = load i32, ptr %126, align 8, !tbaa !26
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168, %136
  %172 = load i32, ptr %39, align 8, !tbaa !18
  store i32 %172, ptr %126, align 8, !tbaa !26
  %173 = load ptr, ptr %131, align 8, !tbaa !22
  store ptr %173, ptr %127, align 8, !tbaa !27
  store ptr %173, ptr %128, align 8, !tbaa !28
  br label %174

174:                                              ; preds = %171, %168, %133
  %175 = phi i32 [ %169, %168 ], [ %172, %171 ], [ %134, %133 ]
  %176 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %177 = icmp eq i32 %176, -2
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit36

179:                                              ; preds = %174
  %180 = load i32, ptr %126, align 8, !tbaa !26
  %181 = icmp eq i32 %175, %180
  br i1 %181, label %.loopexit38, label %133, !llvm.loop !36

.loopexit38:                                      ; preds = %109, %179, %120, %84, %34
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %195 = load i64, ptr %31, align 8, !tbaa !29
  br label %196

196:                                              ; preds = %351, %.loopexit38
  %197 = phi i64 [ %195, %.loopexit38 ], [ %347, %351 ]
  %198 = phi i1 [ false, %.loopexit38 ], [ true, %351 ]
  %199 = load i32, ptr %182, align 8, !tbaa !18
  %200 = zext i32 %199 to i64
  %201 = tail call i64 @llvm.smin.i64(i64 %197, i64 %200)
  %202 = trunc i64 %201 to i32
  %203 = load ptr, ptr %183, align 8, !tbaa !20
  br i1 %198, label %208, label %204

204:                                              ; preds = %196
  %205 = and i64 %201, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %203, i8 0, i64 %205, i1 false)
  %206 = load ptr, ptr %183, align 8, !tbaa !20
  %207 = load i32, ptr %182, align 8, !tbaa !18
  br label %208

208:                                              ; preds = %204, %196
  %209 = phi i32 [ %207, %204 ], [ %199, %196 ]
  %210 = phi ptr [ %206, %204 ], [ %203, %196 ]
  store i32 %202, ptr %35, align 8, !tbaa !30
  store ptr %210, ptr %6, align 8, !tbaa !25
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %243

212:                                              ; preds = %208
  %213 = load i32, ptr %184, align 4, !tbaa !19
  %214 = shl i32 %213, 1
  %215 = zext i32 %214 to i64
  %216 = tail call noalias ptr @malloc(i64 noundef %215) #16
  store ptr %216, ptr %183, align 8, !tbaa !20
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit34

219:                                              ; preds = %212
  %220 = load i32, ptr %19, align 8, !tbaa !21
  %221 = icmp eq i32 %220, 0
  %222 = load i32, ptr %184, align 4, !tbaa !19
  br i1 %221, label %224, label %223

223:                                              ; preds = %219
  store i32 %222, ptr %182, align 8, !tbaa !18
  br label %246

224:                                              ; preds = %219
  %225 = zext i32 %222 to i64
  %226 = tail call noalias ptr @malloc(i64 noundef %225) #16
  store ptr %226, ptr %185, align 8, !tbaa !22
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  tail call void @free(ptr noundef nonnull %216) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit34

229:                                              ; preds = %224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  %230 = load i32, ptr %23, align 8, !tbaa !23
  %231 = load i32, ptr %187, align 4, !tbaa !24
  %232 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %230, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %231, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %185, align 8, !tbaa !22
  tail call void @free(ptr noundef %235) #15
  %236 = load ptr, ptr %183, align 8, !tbaa !20
  tail call void @free(ptr noundef %236) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit34

237:                                              ; preds = %229
  store ptr null, ptr %6, align 8, !tbaa !25
  %238 = load i32, ptr %19, align 8, !tbaa !21
  %239 = load i32, ptr %184, align 4, !tbaa !19
  store i32 %239, ptr %182, align 8, !tbaa !18
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  store i32 %239, ptr %190, align 8, !tbaa !26
  %242 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %242, ptr %191, align 8, !tbaa !27
  store ptr %242, ptr %192, align 8, !tbaa !28
  br label %276

243:                                              ; preds = %208
  %244 = load i32, ptr %19, align 8, !tbaa !21
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %276, label %246

246:                                              ; preds = %243, %237, %223
  %247 = phi ptr [ %210, %243 ], [ null, %237 ], [ %210, %223 ]
  %248 = load i32, ptr %35, align 8, !tbaa !30
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %.loopexit34, label %250

250:                                              ; preds = %246
  %251 = tail call ptr @__errno_location() #17
  br label %252

252:                                              ; preds = %269, %250
  %253 = phi ptr [ %247, %250 ], [ %274, %269 ]
  store i32 0, ptr %251, align 4, !tbaa !4
  store i32 0, ptr %188, align 4, !tbaa !17
  %254 = load i32, ptr %35, align 8, !tbaa !30
  %255 = tail call i32 @llvm.umin.i32(i32 %254, i32 1073741824)
  %256 = zext nneg i32 %255 to i64
  %257 = load i32, ptr %189, align 4, !tbaa !31
  %258 = tail call i64 @write(i32 noundef %257, ptr noundef %253, i64 noundef %256) #15
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %252
  %262 = load i32, ptr %251, align 4, !tbaa !4
  %263 = icmp eq i32 %262, 11
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  store i32 1, ptr %188, align 4, !tbaa !17
  %265 = load i32, ptr %251, align 4, !tbaa !4
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi i32 [ %262, %261 ], [ %265, %264 ]
  %268 = tail call ptr @strerror(i32 noundef %267) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %268) #15
  br label %.loopexit34

269:                                              ; preds = %252
  %270 = load i32, ptr %35, align 8, !tbaa !30
  %271 = sub i32 %270, %259
  store i32 %271, ptr %35, align 8, !tbaa !30
  %272 = load ptr, ptr %6, align 8, !tbaa !25
  %273 = and i64 %258, 2147483647
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 %273
  store ptr %274, ptr %6, align 8, !tbaa !25
  %275 = icmp eq i32 %270, %259
  br i1 %275, label %.loopexit34, label %252, !llvm.loop !32

276:                                              ; preds = %243, %241
  %277 = load i32, ptr %193, align 8, !tbaa !34
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %35, align 8, !tbaa !30
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %.loopexit34, label %282

282:                                              ; preds = %279
  %283 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %193, align 8, !tbaa !34
  br label %284

284:                                              ; preds = %282, %276
  %285 = load i32, ptr %190, align 8, !tbaa !26
  br label %286

286:                                              ; preds = %332, %284
  %287 = phi i32 [ %285, %284 ], [ %333, %332 ]
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %327

289:                                              ; preds = %286
  %290 = load ptr, ptr %191, align 8, !tbaa !27
  %291 = load ptr, ptr %192, align 8, !tbaa !28
  %292 = icmp ugt ptr %290, %291
  br i1 %292, label %293, label %324

293:                                              ; preds = %289
  %294 = tail call ptr @__errno_location() #17
  br label %295

295:                                              ; preds = %315, %293
  %296 = phi ptr [ %291, %293 ], [ %318, %315 ]
  %297 = phi ptr [ %290, %293 ], [ %319, %315 ]
  store i32 0, ptr %294, align 4, !tbaa !4
  store i32 0, ptr %188, align 4, !tbaa !17
  %298 = ptrtoint ptr %297 to i64
  %299 = ptrtoint ptr %296 to i64
  %300 = sub i64 %298, %299
  %301 = tail call i64 @llvm.smin.i64(i64 %300, i64 1073741824)
  %302 = and i64 %301, 4294967295
  %303 = load i32, ptr %189, align 4, !tbaa !31
  %304 = tail call i64 @write(i32 noundef %303, ptr noundef %296, i64 noundef %302) #15
  %305 = and i64 %304, 2147483648
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %295
  %308 = load i32, ptr %294, align 4, !tbaa !4
  %309 = icmp eq i32 %308, 11
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  store i32 1, ptr %188, align 4, !tbaa !17
  %311 = load i32, ptr %294, align 4, !tbaa !4
  br label %312

312:                                              ; preds = %310, %307
  %313 = phi i32 [ %308, %307 ], [ %311, %310 ]
  %314 = tail call ptr @strerror(i32 noundef %313) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %314) #15
  br label %.loopexit34

315:                                              ; preds = %295
  %316 = load ptr, ptr %192, align 8, !tbaa !28
  %317 = and i64 %304, 2147483647
  %318 = getelementptr inbounds nuw i8, ptr %316, i64 %317
  store ptr %318, ptr %192, align 8, !tbaa !28
  %319 = load ptr, ptr %191, align 8, !tbaa !27
  %320 = icmp ugt ptr %319, %318
  br i1 %320, label %295, label %321, !llvm.loop !35

321:                                              ; preds = %315
  %322 = load i32, ptr %190, align 8, !tbaa !26
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321, %289
  %325 = load i32, ptr %182, align 8, !tbaa !18
  store i32 %325, ptr %190, align 8, !tbaa !26
  %326 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %326, ptr %191, align 8, !tbaa !27
  store ptr %326, ptr %192, align 8, !tbaa !28
  br label %327

327:                                              ; preds = %324, %321, %286
  %328 = phi i32 [ %322, %321 ], [ %325, %324 ], [ %287, %286 ]
  %329 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %330 = icmp eq i32 %329, -2
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit34

332:                                              ; preds = %327
  %333 = load i32, ptr %190, align 8, !tbaa !26
  %334 = icmp eq i32 %328, %333
  br i1 %334, label %.loopexit34, label %286, !llvm.loop !36

.loopexit34:                                      ; preds = %269, %332, %331, %312, %279, %266, %246, %234, %228, %218
  %335 = phi i1 [ false, %279 ], [ true, %266 ], [ false, %246 ], [ true, %228 ], [ true, %312 ], [ true, %331 ], [ false, %332 ], [ true, %218 ], [ true, %234 ], [ false, %269 ]
  %336 = load i32, ptr %35, align 8, !tbaa !30
  %337 = sub i32 %202, %336
  %338 = zext i32 %337 to i64
  %339 = load i64, ptr %194, align 8, !tbaa !37
  %340 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %339, i64 %338), !nosanitize !38
  %341 = extractvalue { i64, i1 } %340, 1, !nosanitize !38
  br i1 %341, label %342, label %343, !prof !39, !nosanitize !38

342:                                              ; preds = %.loopexit34
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

343:                                              ; preds = %.loopexit34
  %344 = extractvalue { i64, i1 } %340, 0, !nosanitize !38
  store i64 %344, ptr %194, align 8, !tbaa !37
  %345 = load i64, ptr %31, align 8, !tbaa !29
  %346 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %345, i64 %338), !nosanitize !38
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !38
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !38
  br i1 %348, label %349, label %350, !prof !39, !nosanitize !38

349:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

350:                                              ; preds = %343
  store i64 %347, ptr %31, align 8, !tbaa !29
  br i1 %335, label %.loopexit36, label %351

351:                                              ; preds = %350
  %352 = icmp eq i64 %347, 0
  br i1 %352, label %.loopexit37, label %196, !llvm.loop !40

.loopexit36:                                      ; preds = %350, %178, %159, %106, %69, %61, %50
  %353 = load i32, ptr %11, align 8, !tbaa !16
  br label %461

.loopexit37:                                      ; preds = %351, %30
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %355 = load i32, ptr %354, align 8, !tbaa !18
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %459, label %357

357:                                              ; preds = %.loopexit37
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %359 = load i32, ptr %358, align 8, !tbaa !30
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %.loopexit, label %361

361:                                              ; preds = %357
  %362 = load i32, ptr %19, align 8, !tbaa !21
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %393, label %364

364:                                              ; preds = %361
  %365 = tail call ptr @__errno_location() #17
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %368 = load ptr, ptr %6, align 8, !tbaa !25
  br label %369

369:                                              ; preds = %386, %364
  %370 = phi ptr [ %368, %364 ], [ %391, %386 ]
  store i32 0, ptr %365, align 4, !tbaa !4
  store i32 0, ptr %366, align 4, !tbaa !17
  %371 = load i32, ptr %358, align 8, !tbaa !30
  %372 = tail call i32 @llvm.umin.i32(i32 %371, i32 1073741824)
  %373 = zext nneg i32 %372 to i64
  %374 = load i32, ptr %367, align 4, !tbaa !31
  %375 = tail call i64 @write(i32 noundef %374, ptr noundef %370, i64 noundef %373) #15
  %376 = trunc i64 %375 to i32
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %369
  %379 = load i32, ptr %365, align 4, !tbaa !4
  %380 = icmp eq i32 %379, 11
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  store i32 1, ptr %366, align 4, !tbaa !17
  %382 = load i32, ptr %365, align 4, !tbaa !4
  br label %383

383:                                              ; preds = %381, %378
  %384 = phi i32 [ %379, %378 ], [ %382, %381 ]
  %385 = tail call ptr @strerror(i32 noundef %384) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %385) #15
  br label %456

386:                                              ; preds = %369
  %387 = load i32, ptr %358, align 8, !tbaa !30
  %388 = sub i32 %387, %376
  store i32 %388, ptr %358, align 8, !tbaa !30
  %389 = load ptr, ptr %6, align 8, !tbaa !25
  %390 = and i64 %375, 2147483647
  %391 = getelementptr inbounds nuw i8, ptr %389, i64 %390
  store ptr %391, ptr %6, align 8, !tbaa !25
  %392 = icmp eq i32 %387, %376
  br i1 %392, label %.loopexit, label %369, !llvm.loop !32

393:                                              ; preds = %361
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %395 = load i32, ptr %394, align 8, !tbaa !34
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %393
  %398 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %394, align 8, !tbaa !34
  br label %399

399:                                              ; preds = %397, %393
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %406 = load i32, ptr %400, align 8, !tbaa !26
  br label %407

407:                                              ; preds = %453, %399
  %408 = phi i32 [ %406, %399 ], [ %454, %453 ]
  %409 = load ptr, ptr %401, align 8, !tbaa !27
  %410 = load ptr, ptr %402, align 8, !tbaa !28
  %411 = icmp ugt ptr %409, %410
  br i1 %411, label %412, label %442

412:                                              ; preds = %407
  %413 = tail call ptr @__errno_location() #17
  br label %414

414:                                              ; preds = %434, %412
  %415 = phi ptr [ %410, %412 ], [ %437, %434 ]
  %416 = phi ptr [ %409, %412 ], [ %438, %434 ]
  store i32 0, ptr %413, align 4, !tbaa !4
  store i32 0, ptr %403, align 4, !tbaa !17
  %417 = ptrtoint ptr %416 to i64
  %418 = ptrtoint ptr %415 to i64
  %419 = sub i64 %417, %418
  %420 = tail call i64 @llvm.smin.i64(i64 %419, i64 1073741824)
  %421 = and i64 %420, 4294967295
  %422 = load i32, ptr %404, align 4, !tbaa !31
  %423 = tail call i64 @write(i32 noundef %422, ptr noundef %415, i64 noundef %421) #15
  %424 = and i64 %423, 2147483648
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %434, label %426

426:                                              ; preds = %414
  %427 = load i32, ptr %413, align 4, !tbaa !4
  %428 = icmp eq i32 %427, 11
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  store i32 1, ptr %403, align 4, !tbaa !17
  %430 = load i32, ptr %413, align 4, !tbaa !4
  br label %431

431:                                              ; preds = %429, %426
  %432 = phi i32 [ %427, %426 ], [ %430, %429 ]
  %433 = tail call ptr @strerror(i32 noundef %432) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %433) #15
  br label %456

434:                                              ; preds = %414
  %435 = load ptr, ptr %402, align 8, !tbaa !28
  %436 = and i64 %423, 2147483647
  %437 = getelementptr inbounds nuw i8, ptr %435, i64 %436
  store ptr %437, ptr %402, align 8, !tbaa !28
  %438 = load ptr, ptr %401, align 8, !tbaa !27
  %439 = icmp ugt ptr %438, %437
  br i1 %439, label %414, label %440, !llvm.loop !35

440:                                              ; preds = %434
  %441 = load i32, ptr %400, align 8, !tbaa !26
  br label %442

442:                                              ; preds = %440, %407
  %443 = phi i32 [ %441, %440 ], [ %408, %407 ]
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load i32, ptr %354, align 8, !tbaa !18
  store i32 %446, ptr %400, align 8, !tbaa !26
  %447 = load ptr, ptr %405, align 8, !tbaa !22
  store ptr %447, ptr %401, align 8, !tbaa !27
  store ptr %447, ptr %402, align 8, !tbaa !28
  br label %448

448:                                              ; preds = %445, %442
  %449 = phi i32 [ %443, %442 ], [ %446, %445 ]
  %450 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %451 = icmp eq i32 %450, -2
  br i1 %451, label %452, label %453

452:                                              ; preds = %448
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %456

453:                                              ; preds = %448
  %454 = load i32, ptr %400, align 8, !tbaa !26
  %455 = icmp eq i32 %449, %454
  br i1 %455, label %.loopexit, label %407, !llvm.loop !36

456:                                              ; preds = %452, %431, %383
  %457 = load i32, ptr %11, align 8, !tbaa !16
  br label %461

.loopexit:                                        ; preds = %386, %453, %357
  %458 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %459

459:                                              ; preds = %.loopexit, %.loopexit37
  store i32 %1, ptr %23, align 8, !tbaa !23
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %460, align 4, !tbaa !24
  br label %461

461:                                              ; preds = %459, %456, %.loopexit36, %26, %18, %14, %5, %3
  %462 = phi i32 [ 0, %459 ], [ -2, %3 ], [ -2, %5 ], [ %353, %.loopexit36 ], [ %457, %456 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %462
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %515, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %515

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.loopexit39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %.loopexit40, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = shl i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit38

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = load i32, ptr %30, align 8, !tbaa !21
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %21, align 4, !tbaa !19
  br i1 %32, label %35, label %34

34:                                               ; preds = %29
  store i32 %33, ptr %17, align 8, !tbaa !18
  br label %65

35:                                               ; preds = %29
  %36 = zext i32 %33 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #16
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %25) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit38

41:                                               ; preds = %35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %38, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #15
  %51 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void @free(ptr noundef %51) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit38

52:                                               ; preds = %41
  store ptr null, ptr %12, align 8, !tbaa !25
  %53 = load i32, ptr %30, align 8, !tbaa !21
  %54 = load i32, ptr %21, align 4, !tbaa !19
  store i32 %54, ptr %17, align 8, !tbaa !18
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %54, ptr %57, align 8, !tbaa !26
  %58 = load ptr, ptr %38, align 8, !tbaa !22
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %58, ptr %59, align 8, !tbaa !27
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %58, ptr %60, align 8, !tbaa !28
  br label %97

61:                                               ; preds = %16
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %61, %52, %34
  %66 = load i32, ptr %13, align 8, !tbaa !30
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %.loopexit40, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @__errno_location() #17
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %72 = load ptr, ptr %12, align 8, !tbaa !25
  br label %73

73:                                               ; preds = %90, %68
  %74 = phi ptr [ %72, %68 ], [ %95, %90 ]
  store i32 0, ptr %69, align 4, !tbaa !4
  store i32 0, ptr %70, align 4, !tbaa !17
  %75 = load i32, ptr %13, align 8, !tbaa !30
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 1073741824)
  %77 = zext nneg i32 %76 to i64
  %78 = load i32, ptr %71, align 4, !tbaa !31
  %79 = tail call i64 @write(i32 noundef %78, ptr noundef %74, i64 noundef %77) #15
  %80 = trunc i64 %79 to i32
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, ptr %69, align 4, !tbaa !4
  %84 = icmp eq i32 %83, 11
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  store i32 1, ptr %70, align 4, !tbaa !17
  %86 = load i32, ptr %69, align 4, !tbaa !4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %83, %82 ], [ %86, %85 ]
  %89 = tail call ptr @strerror(i32 noundef %88) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %89) #15
  br label %.loopexit38

90:                                               ; preds = %73
  %91 = load i32, ptr %13, align 8, !tbaa !30
  %92 = sub i32 %91, %80
  store i32 %92, ptr %13, align 8, !tbaa !30
  %93 = load ptr, ptr %12, align 8, !tbaa !25
  %94 = and i64 %79, 2147483647
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 %94
  store ptr %95, ptr %12, align 8, !tbaa !25
  %96 = icmp eq i32 %91, %80
  br i1 %96, label %.loopexit40, label %73, !llvm.loop !32

97:                                               ; preds = %61, %56
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %99 = load i32, ptr %98, align 8, !tbaa !34
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %13, align 8, !tbaa !30
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %.loopexit40, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %98, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %104, %97
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %113 = load i32, ptr %107, align 8, !tbaa !26
  br label %114

114:                                              ; preds = %160, %106
  %115 = phi i32 [ %113, %106 ], [ %161, %160 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %114
  %118 = load ptr, ptr %108, align 8, !tbaa !27
  %119 = load ptr, ptr %109, align 8, !tbaa !28
  %120 = icmp ugt ptr %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %117
  %122 = tail call ptr @__errno_location() #17
  br label %123

123:                                              ; preds = %143, %121
  %124 = phi ptr [ %119, %121 ], [ %146, %143 ]
  %125 = phi ptr [ %118, %121 ], [ %147, %143 ]
  store i32 0, ptr %122, align 4, !tbaa !4
  store i32 0, ptr %110, align 4, !tbaa !17
  %126 = ptrtoint ptr %125 to i64
  %127 = ptrtoint ptr %124 to i64
  %128 = sub i64 %126, %127
  %129 = tail call i64 @llvm.smin.i64(i64 %128, i64 1073741824)
  %130 = and i64 %129, 4294967295
  %131 = load i32, ptr %111, align 4, !tbaa !31
  %132 = tail call i64 @write(i32 noundef %131, ptr noundef %124, i64 noundef %130) #15
  %133 = and i64 %132, 2147483648
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %123
  %136 = load i32, ptr %122, align 4, !tbaa !4
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  store i32 1, ptr %110, align 4, !tbaa !17
  %139 = load i32, ptr %122, align 4, !tbaa !4
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i32 [ %136, %135 ], [ %139, %138 ]
  %142 = tail call ptr @strerror(i32 noundef %141) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %142) #15
  br label %.loopexit38

143:                                              ; preds = %123
  %144 = load ptr, ptr %109, align 8, !tbaa !28
  %145 = and i64 %132, 2147483647
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  store ptr %146, ptr %109, align 8, !tbaa !28
  %147 = load ptr, ptr %108, align 8, !tbaa !27
  %148 = icmp ugt ptr %147, %146
  br i1 %148, label %123, label %149, !llvm.loop !35

149:                                              ; preds = %143
  %150 = load i32, ptr %107, align 8, !tbaa !26
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149, %117
  %153 = load i32, ptr %17, align 8, !tbaa !18
  store i32 %153, ptr %107, align 8, !tbaa !26
  %154 = load ptr, ptr %112, align 8, !tbaa !22
  store ptr %154, ptr %108, align 8, !tbaa !27
  store ptr %154, ptr %109, align 8, !tbaa !28
  br label %155

155:                                              ; preds = %152, %149, %114
  %156 = phi i32 [ %150, %149 ], [ %153, %152 ], [ %115, %114 ]
  %157 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %158 = icmp eq i32 %157, -2
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit38

160:                                              ; preds = %155
  %161 = load i32, ptr %107, align 8, !tbaa !26
  %162 = icmp eq i32 %156, %161
  br i1 %162, label %.loopexit40, label %114, !llvm.loop !36

.loopexit40:                                      ; preds = %90, %160, %101, %65, %11
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %178 = load i64, ptr %8, align 8, !tbaa !29
  br label %179

179:                                              ; preds = %334, %.loopexit40
  %180 = phi i64 [ %178, %.loopexit40 ], [ %330, %334 ]
  %181 = phi i1 [ false, %.loopexit40 ], [ true, %334 ]
  %182 = load i32, ptr %163, align 8, !tbaa !18
  %183 = zext i32 %182 to i64
  %184 = tail call i64 @llvm.smin.i64(i64 %180, i64 %183)
  %185 = trunc i64 %184 to i32
  %186 = load ptr, ptr %164, align 8, !tbaa !20
  br i1 %181, label %191, label %187

187:                                              ; preds = %179
  %188 = and i64 %184, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %186, i8 0, i64 %188, i1 false)
  %189 = load ptr, ptr %164, align 8, !tbaa !20
  %190 = load i32, ptr %163, align 8, !tbaa !18
  br label %191

191:                                              ; preds = %187, %179
  %192 = phi i32 [ %190, %187 ], [ %182, %179 ]
  %193 = phi ptr [ %189, %187 ], [ %186, %179 ]
  store i32 %185, ptr %13, align 8, !tbaa !30
  store ptr %193, ptr %12, align 8, !tbaa !25
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %191
  %196 = load i32, ptr %166, align 4, !tbaa !19
  %197 = shl i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = tail call noalias ptr @malloc(i64 noundef %198) #16
  store ptr %199, ptr %164, align 8, !tbaa !20
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

202:                                              ; preds = %195
  %203 = load i32, ptr %165, align 8, !tbaa !21
  %204 = icmp eq i32 %203, 0
  %205 = load i32, ptr %166, align 4, !tbaa !19
  br i1 %204, label %207, label %206

206:                                              ; preds = %202
  store i32 %205, ptr %163, align 8, !tbaa !18
  br label %229

207:                                              ; preds = %202
  %208 = zext i32 %205 to i64
  %209 = tail call noalias ptr @malloc(i64 noundef %208) #16
  store ptr %209, ptr %167, align 8, !tbaa !22
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  tail call void @free(ptr noundef nonnull %199) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

212:                                              ; preds = %207
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %168, i8 0, i64 24, i1 false)
  %213 = load i32, ptr %169, align 8, !tbaa !23
  %214 = load i32, ptr %170, align 4, !tbaa !24
  %215 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %213, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %214, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %167, align 8, !tbaa !22
  tail call void @free(ptr noundef %218) #15
  %219 = load ptr, ptr %164, align 8, !tbaa !20
  tail call void @free(ptr noundef %219) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

220:                                              ; preds = %212
  store ptr null, ptr %12, align 8, !tbaa !25
  %221 = load i32, ptr %165, align 8, !tbaa !21
  %222 = load i32, ptr %166, align 4, !tbaa !19
  store i32 %222, ptr %163, align 8, !tbaa !18
  %223 = icmp eq i32 %221, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  store i32 %222, ptr %173, align 8, !tbaa !26
  %225 = load ptr, ptr %167, align 8, !tbaa !22
  store ptr %225, ptr %174, align 8, !tbaa !27
  store ptr %225, ptr %175, align 8, !tbaa !28
  br label %259

226:                                              ; preds = %191
  %227 = load i32, ptr %165, align 8, !tbaa !21
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %259, label %229

229:                                              ; preds = %226, %220, %206
  %230 = phi ptr [ %193, %226 ], [ null, %220 ], [ %193, %206 ]
  %231 = load i32, ptr %13, align 8, !tbaa !30
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %.loopexit36, label %233

233:                                              ; preds = %229
  %234 = tail call ptr @__errno_location() #17
  br label %235

235:                                              ; preds = %252, %233
  %236 = phi ptr [ %230, %233 ], [ %257, %252 ]
  store i32 0, ptr %234, align 4, !tbaa !4
  store i32 0, ptr %171, align 4, !tbaa !17
  %237 = load i32, ptr %13, align 8, !tbaa !30
  %238 = tail call i32 @llvm.umin.i32(i32 %237, i32 1073741824)
  %239 = zext nneg i32 %238 to i64
  %240 = load i32, ptr %172, align 4, !tbaa !31
  %241 = tail call i64 @write(i32 noundef %240, ptr noundef %236, i64 noundef %239) #15
  %242 = trunc i64 %241 to i32
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %235
  %245 = load i32, ptr %234, align 4, !tbaa !4
  %246 = icmp eq i32 %245, 11
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  store i32 1, ptr %171, align 4, !tbaa !17
  %248 = load i32, ptr %234, align 4, !tbaa !4
  br label %249

249:                                              ; preds = %247, %244
  %250 = phi i32 [ %245, %244 ], [ %248, %247 ]
  %251 = tail call ptr @strerror(i32 noundef %250) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %251) #15
  br label %.loopexit36

252:                                              ; preds = %235
  %253 = load i32, ptr %13, align 8, !tbaa !30
  %254 = sub i32 %253, %242
  store i32 %254, ptr %13, align 8, !tbaa !30
  %255 = load ptr, ptr %12, align 8, !tbaa !25
  %256 = and i64 %241, 2147483647
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 %256
  store ptr %257, ptr %12, align 8, !tbaa !25
  %258 = icmp eq i32 %253, %242
  br i1 %258, label %.loopexit36, label %235, !llvm.loop !32

259:                                              ; preds = %226, %224
  %260 = load i32, ptr %176, align 8, !tbaa !34
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %13, align 8, !tbaa !30
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %.loopexit36, label %265

265:                                              ; preds = %262
  %266 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %176, align 8, !tbaa !34
  br label %267

267:                                              ; preds = %265, %259
  %268 = load i32, ptr %173, align 8, !tbaa !26
  br label %269

269:                                              ; preds = %315, %267
  %270 = phi i32 [ %268, %267 ], [ %316, %315 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %310

272:                                              ; preds = %269
  %273 = load ptr, ptr %174, align 8, !tbaa !27
  %274 = load ptr, ptr %175, align 8, !tbaa !28
  %275 = icmp ugt ptr %273, %274
  br i1 %275, label %276, label %307

276:                                              ; preds = %272
  %277 = tail call ptr @__errno_location() #17
  br label %278

278:                                              ; preds = %298, %276
  %279 = phi ptr [ %274, %276 ], [ %301, %298 ]
  %280 = phi ptr [ %273, %276 ], [ %302, %298 ]
  store i32 0, ptr %277, align 4, !tbaa !4
  store i32 0, ptr %171, align 4, !tbaa !17
  %281 = ptrtoint ptr %280 to i64
  %282 = ptrtoint ptr %279 to i64
  %283 = sub i64 %281, %282
  %284 = tail call i64 @llvm.smin.i64(i64 %283, i64 1073741824)
  %285 = and i64 %284, 4294967295
  %286 = load i32, ptr %172, align 4, !tbaa !31
  %287 = tail call i64 @write(i32 noundef %286, ptr noundef %279, i64 noundef %285) #15
  %288 = and i64 %287, 2147483648
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %278
  %291 = load i32, ptr %277, align 4, !tbaa !4
  %292 = icmp eq i32 %291, 11
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  store i32 1, ptr %171, align 4, !tbaa !17
  %294 = load i32, ptr %277, align 4, !tbaa !4
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi i32 [ %291, %290 ], [ %294, %293 ]
  %297 = tail call ptr @strerror(i32 noundef %296) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %297) #15
  br label %.loopexit36

298:                                              ; preds = %278
  %299 = load ptr, ptr %175, align 8, !tbaa !28
  %300 = and i64 %287, 2147483647
  %301 = getelementptr inbounds nuw i8, ptr %299, i64 %300
  store ptr %301, ptr %175, align 8, !tbaa !28
  %302 = load ptr, ptr %174, align 8, !tbaa !27
  %303 = icmp ugt ptr %302, %301
  br i1 %303, label %278, label %304, !llvm.loop !35

304:                                              ; preds = %298
  %305 = load i32, ptr %173, align 8, !tbaa !26
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304, %272
  %308 = load i32, ptr %163, align 8, !tbaa !18
  store i32 %308, ptr %173, align 8, !tbaa !26
  %309 = load ptr, ptr %167, align 8, !tbaa !22
  store ptr %309, ptr %174, align 8, !tbaa !27
  store ptr %309, ptr %175, align 8, !tbaa !28
  br label %310

310:                                              ; preds = %307, %304, %269
  %311 = phi i32 [ %305, %304 ], [ %308, %307 ], [ %270, %269 ]
  %312 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %313 = icmp eq i32 %312, -2
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit36

315:                                              ; preds = %310
  %316 = load i32, ptr %173, align 8, !tbaa !26
  %317 = icmp eq i32 %311, %316
  br i1 %317, label %.loopexit36, label %269, !llvm.loop !36

.loopexit36:                                      ; preds = %252, %315, %314, %295, %262, %249, %229, %217, %211, %201
  %318 = phi i1 [ false, %262 ], [ true, %249 ], [ false, %229 ], [ true, %211 ], [ true, %295 ], [ true, %314 ], [ false, %315 ], [ true, %201 ], [ true, %217 ], [ false, %252 ]
  %319 = load i32, ptr %13, align 8, !tbaa !30
  %320 = sub i32 %185, %319
  %321 = zext i32 %320 to i64
  %322 = load i64, ptr %177, align 8, !tbaa !37
  %323 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %322, i64 %321), !nosanitize !38
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !38
  br i1 %324, label %325, label %326, !prof !39, !nosanitize !38

325:                                              ; preds = %.loopexit36
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !38
  unreachable, !nosanitize !38

326:                                              ; preds = %.loopexit36
  %327 = extractvalue { i64, i1 } %323, 0, !nosanitize !38
  store i64 %327, ptr %177, align 8, !tbaa !37
  %328 = load i64, ptr %8, align 8, !tbaa !29
  %329 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %328, i64 %321), !nosanitize !38
  %330 = extractvalue { i64, i1 } %329, 0, !nosanitize !38
  %331 = extractvalue { i64, i1 } %329, 1, !nosanitize !38
  br i1 %331, label %332, label %333, !prof !39, !nosanitize !38

332:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !38
  unreachable, !nosanitize !38

333:                                              ; preds = %326
  store i64 %330, ptr %8, align 8, !tbaa !29
  br i1 %318, label %.loopexit38, label %334

334:                                              ; preds = %333
  %335 = icmp eq i64 %330, 0
  br i1 %335, label %.loopexit39, label %179, !llvm.loop !40

.loopexit38:                                      ; preds = %333, %159, %140, %87, %49, %40, %28
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %337 = load i32, ptr %336, align 8, !tbaa !16
  br label %.loopexit39

.loopexit39:                                      ; preds = %334, %.loopexit38, %7
  %338 = phi i32 [ %337, %.loopexit38 ], [ 0, %7 ], [ 0, %334 ]
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %341 = load i32, ptr %340, align 8, !tbaa !18
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %384

343:                                              ; preds = %.loopexit39
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %345 = load i32, ptr %344, align 4, !tbaa !19
  %346 = shl i32 %345, 1
  %347 = zext i32 %346 to i64
  %348 = tail call noalias ptr @malloc(i64 noundef %347) #16
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %348, ptr %349, align 8, !tbaa !20
  %350 = icmp eq ptr %348, null
  br i1 %350, label %351, label %352

351:                                              ; preds = %343
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %490

352:                                              ; preds = %343
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %354 = load i32, ptr %353, align 8, !tbaa !21
  %355 = icmp eq i32 %354, 0
  %356 = load i32, ptr %344, align 4, !tbaa !19
  br i1 %355, label %358, label %357

357:                                              ; preds = %352
  store i32 %356, ptr %340, align 8, !tbaa !18
  br label %388

358:                                              ; preds = %352
  %359 = zext i32 %356 to i64
  %360 = tail call noalias ptr @malloc(i64 noundef %359) #16
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %360, ptr %361, align 8, !tbaa !22
  %362 = icmp eq ptr %360, null
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  tail call void @free(ptr noundef nonnull %348) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %490

364:                                              ; preds = %358
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %365, i8 0, i64 24, i1 false)
  %367 = load i32, ptr %366, align 8, !tbaa !23
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %369 = load i32, ptr %368, align 4, !tbaa !24
  %370 = tail call i32 @deflateInit2_(ptr noundef nonnull %339, i32 noundef %367, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %369, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %364
  %373 = load ptr, ptr %361, align 8, !tbaa !22
  tail call void @free(ptr noundef %373) #15
  %374 = load ptr, ptr %349, align 8, !tbaa !20
  tail call void @free(ptr noundef %374) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %490

375:                                              ; preds = %364
  store ptr null, ptr %339, align 8, !tbaa !25
  %376 = load i32, ptr %353, align 8, !tbaa !21
  %377 = load i32, ptr %344, align 4, !tbaa !19
  store i32 %377, ptr %340, align 8, !tbaa !18
  %378 = icmp eq i32 %376, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %377, ptr %380, align 8, !tbaa !26
  %381 = load ptr, ptr %361, align 8, !tbaa !22
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %381, ptr %382, align 8, !tbaa !27
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %381, ptr %383, align 8, !tbaa !28
  br label %421

384:                                              ; preds = %.loopexit39
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %386 = load i32, ptr %385, align 8, !tbaa !21
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %421, label %388

388:                                              ; preds = %384, %375, %357
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %390 = load i32, ptr %389, align 8, !tbaa !30
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %.loopexit, label %392

392:                                              ; preds = %388
  %393 = tail call ptr @__errno_location() #17
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %396 = load ptr, ptr %339, align 8, !tbaa !25
  br label %397

397:                                              ; preds = %414, %392
  %398 = phi ptr [ %396, %392 ], [ %419, %414 ]
  store i32 0, ptr %393, align 4, !tbaa !4
  store i32 0, ptr %394, align 4, !tbaa !17
  %399 = load i32, ptr %389, align 8, !tbaa !30
  %400 = tail call i32 @llvm.umin.i32(i32 %399, i32 1073741824)
  %401 = zext nneg i32 %400 to i64
  %402 = load i32, ptr %395, align 4, !tbaa !31
  %403 = tail call i64 @write(i32 noundef %402, ptr noundef %398, i64 noundef %401) #15
  %404 = trunc i64 %403 to i32
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %397
  %407 = load i32, ptr %393, align 4, !tbaa !4
  %408 = icmp eq i32 %407, 11
  br i1 %408, label %409, label %411

409:                                              ; preds = %406
  store i32 1, ptr %394, align 4, !tbaa !17
  %410 = load i32, ptr %393, align 4, !tbaa !4
  br label %411

411:                                              ; preds = %409, %406
  %412 = phi i32 [ %407, %406 ], [ %410, %409 ]
  %413 = tail call ptr @strerror(i32 noundef %412) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %413) #15
  br label %490

414:                                              ; preds = %397
  %415 = load i32, ptr %389, align 8, !tbaa !30
  %416 = sub i32 %415, %404
  store i32 %416, ptr %389, align 8, !tbaa !30
  %417 = load ptr, ptr %339, align 8, !tbaa !25
  %418 = and i64 %403, 2147483647
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 %418
  store ptr %419, ptr %339, align 8, !tbaa !25
  %420 = icmp eq i32 %415, %404
  br i1 %420, label %.loopexit, label %397, !llvm.loop !32

421:                                              ; preds = %384, %379
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %423 = load i32, ptr %422, align 8, !tbaa !34
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %421
  %426 = tail call i32 @deflateReset(ptr noundef nonnull %339) #15
  store i32 0, ptr %422, align 8, !tbaa !34
  br label %427

427:                                              ; preds = %425, %421
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %434 = load i32, ptr %428, align 8, !tbaa !26
  br label %435

435:                                              ; preds = %486, %427
  %436 = phi i32 [ %434, %427 ], [ %487, %486 ]
  %437 = phi i32 [ 0, %427 ], [ %483, %486 ]
  %438 = icmp eq i32 %436, 0
  %439 = icmp eq i32 %437, 1
  %440 = or i1 %438, %439
  br i1 %440, label %441, label %481

441:                                              ; preds = %435
  %442 = load ptr, ptr %429, align 8, !tbaa !27
  %443 = load ptr, ptr %430, align 8, !tbaa !28
  %444 = icmp ugt ptr %442, %443
  br i1 %444, label %445, label %475

445:                                              ; preds = %441
  %446 = tail call ptr @__errno_location() #17
  br label %447

447:                                              ; preds = %467, %445
  %448 = phi ptr [ %443, %445 ], [ %470, %467 ]
  %449 = phi ptr [ %442, %445 ], [ %471, %467 ]
  store i32 0, ptr %446, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %450 = ptrtoint ptr %449 to i64
  %451 = ptrtoint ptr %448 to i64
  %452 = sub i64 %450, %451
  %453 = tail call i64 @llvm.smin.i64(i64 %452, i64 1073741824)
  %454 = and i64 %453, 4294967295
  %455 = load i32, ptr %432, align 4, !tbaa !31
  %456 = tail call i64 @write(i32 noundef %455, ptr noundef %448, i64 noundef %454) #15
  %457 = and i64 %456, 2147483648
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %467, label %459

459:                                              ; preds = %447
  %460 = load i32, ptr %446, align 4, !tbaa !4
  %461 = icmp eq i32 %460, 11
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  store i32 1, ptr %431, align 4, !tbaa !17
  %463 = load i32, ptr %446, align 4, !tbaa !4
  br label %464

464:                                              ; preds = %462, %459
  %465 = phi i32 [ %460, %459 ], [ %463, %462 ]
  %466 = tail call ptr @strerror(i32 noundef %465) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %466) #15
  br label %490

467:                                              ; preds = %447
  %468 = load ptr, ptr %430, align 8, !tbaa !28
  %469 = and i64 %456, 2147483647
  %470 = getelementptr inbounds nuw i8, ptr %468, i64 %469
  store ptr %470, ptr %430, align 8, !tbaa !28
  %471 = load ptr, ptr %429, align 8, !tbaa !27
  %472 = icmp ugt ptr %471, %470
  br i1 %472, label %447, label %473, !llvm.loop !35

473:                                              ; preds = %467
  %474 = load i32, ptr %428, align 8, !tbaa !26
  br label %475

475:                                              ; preds = %473, %441
  %476 = phi i32 [ %474, %473 ], [ %436, %441 ]
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load i32, ptr %340, align 8, !tbaa !18
  store i32 %479, ptr %428, align 8, !tbaa !26
  %480 = load ptr, ptr %433, align 8, !tbaa !22
  store ptr %480, ptr %429, align 8, !tbaa !27
  store ptr %480, ptr %430, align 8, !tbaa !28
  br label %481

481:                                              ; preds = %478, %475, %435
  %482 = phi i32 [ %476, %475 ], [ %479, %478 ], [ %436, %435 ]
  %483 = tail call i32 @deflate(ptr noundef nonnull %339, i32 noundef 4) #15
  %484 = icmp eq i32 %483, -2
  br i1 %484, label %485, label %486

485:                                              ; preds = %481
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %490

486:                                              ; preds = %481
  %487 = load i32, ptr %428, align 8, !tbaa !26
  %488 = icmp eq i32 %482, %487
  br i1 %488, label %489, label %435, !llvm.loop !36

489:                                              ; preds = %486
  store i32 1, ptr %422, align 8, !tbaa !34
  br label %.loopexit

490:                                              ; preds = %485, %464, %411, %372, %363, %351
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %492 = load i32, ptr %491, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %414, %490, %489, %388
  %493 = phi i32 [ %492, %490 ], [ %338, %388 ], [ %338, %489 ], [ %338, %414 ]
  %494 = load i32, ptr %340, align 8, !tbaa !18
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %507, label %496

496:                                              ; preds = %.loopexit
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %498 = load i32, ptr %497, align 8, !tbaa !21
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %496
  %501 = tail call i32 @deflateEnd(ptr noundef nonnull %339) #15
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %503 = load ptr, ptr %502, align 8, !tbaa !22
  tail call void @free(ptr noundef %503) #15
  br label %504

504:                                              ; preds = %500, %496
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %506 = load ptr, ptr %505, align 8, !tbaa !20
  tail call void @free(ptr noundef %506) #15
  br label %507

507:                                              ; preds = %504, %.loopexit
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %509 = load ptr, ptr %508, align 8, !tbaa !45
  tail call void @free(ptr noundef %509) #15
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %511 = load i32, ptr %510, align 4, !tbaa !31
  %512 = tail call i32 @close(i32 noundef %511) #15
  %513 = icmp eq i32 %512, -1
  %514 = select i1 %513, i32 -1, i32 %493
  tail call void @free(ptr noundef nonnull %0) #15
  br label %515

515:                                              ; preds = %507, %3, %1
  %516 = phi i32 [ %514, %507 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %516
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #14

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"", !10, i64 0, !5, i64 24, !5, i64 28, !11, i64 32, !5, i64 40, !5, i64 44, !11, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !13, i64 112, !5, i64 120, !11, i64 128, !14, i64 136}
!10 = !{!"gzFile_s", !5, i64 0, !11, i64 8, !13, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!9, !5, i64 120}
!17 = !{!9, !5, i64 76}
!18 = !{!9, !5, i64 40}
!19 = !{!9, !5, i64 44}
!20 = !{!9, !11, i64 48}
!21 = !{!9, !5, i64 64}
!22 = !{!9, !11, i64 56}
!23 = !{!9, !5, i64 96}
!24 = !{!9, !5, i64 100}
!25 = !{!14, !11, i64 0}
!26 = !{!14, !5, i64 32}
!27 = !{!14, !11, i64 24}
!28 = !{!9, !11, i64 8}
!29 = !{!9, !13, i64 112}
!30 = !{!14, !5, i64 8}
!31 = !{!9, !5, i64 28}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!9, !5, i64 104}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = !{!9, !13, i64 16}
!38 = !{}
!39 = !{!"branch_weights", i32 1, i32 1048575}
!40 = distinct !{!40, !33}
!41 = !{!9, !5, i64 144}
!42 = !{!9, !11, i64 136}
!43 = distinct !{!43, !33}
!44 = !{!6, !6, i64 0}
!45 = !{!9, !11, i64 32}
