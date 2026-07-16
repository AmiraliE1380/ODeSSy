; ModuleID = '/home/amiralie1380/michigan/pl/zlib/gzwrite.c'
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
  br i1 %4, label %902, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %902

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %902, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #16
  br label %902

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %899, label %23

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
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #17
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %33, ptr %34, align 8, !tbaa !20
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  %45 = tail call noalias ptr @malloc(i64 noundef %44) #17
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %45, ptr %46, align 8, !tbaa !22
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %33) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

49:                                               ; preds = %43
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %52 = load i32, ptr %51, align 8, !tbaa !23
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %54 = load i32, ptr %53, align 4, !tbaa !24
  %55 = tail call i32 @deflateInit2_(ptr noundef nonnull %28, i32 noundef %52, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %54, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %46, align 8, !tbaa !22
  tail call void @free(ptr noundef %58) #16
  %59 = load ptr, ptr %34, align 8, !tbaa !20
  tail call void @free(ptr noundef %59) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  br i1 %73, label %400, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %224, label %79

79:                                               ; preds = %74
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = shl i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #17
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %86, ptr %87, align 8, !tbaa !20
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #17
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %98, ptr %99, align 8, !tbaa !22
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  tail call void @free(ptr noundef nonnull %86) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, i8 0, i64 24, i1 false)
  %105 = load i32, ptr %104, align 8, !tbaa !23
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %107 = load i32, ptr %106, align 4, !tbaa !24
  %108 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %105, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %107, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %99, align 8, !tbaa !22
  tail call void @free(ptr noundef %111) #16
  %112 = load ptr, ptr %87, align 8, !tbaa !20
  tail call void @free(ptr noundef %112) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  br i1 %128, label %224, label %129

129:                                              ; preds = %126
  %130 = tail call ptr @__errno_location() #18
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
  %140 = tail call i64 @write(i32 noundef %139, ptr noundef %135, i64 noundef %138) #16
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
  %150 = tail call ptr @strerror(i32 noundef %149) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %150) #16
  br label %899

151:                                              ; preds = %134
  %152 = load i32, ptr %76, align 8, !tbaa !30
  %153 = sub i32 %152, %141
  store i32 %153, ptr %76, align 8, !tbaa !30
  %154 = load ptr, ptr %75, align 8, !tbaa !25
  %155 = and i64 %140, 2147483647
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  store ptr %156, ptr %75, align 8, !tbaa !25
  %157 = icmp eq i32 %152, %141
  br i1 %157, label %224, label %134, !llvm.loop !32

158:                                              ; preds = %122, %117
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %160 = load i32, ptr %159, align 8, !tbaa !34
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %76, align 8, !tbaa !30
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %224, label %165

165:                                              ; preds = %162
  %166 = tail call i32 @deflateReset(ptr noundef nonnull %75) #16
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
  %183 = tail call ptr @__errno_location() #18
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
  %193 = tail call i64 @write(i32 noundef %192, ptr noundef %185, i64 noundef %191) #16
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
  %203 = tail call ptr @strerror(i32 noundef %202) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %203) #16
  br label %899

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
  %218 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #16
  %219 = icmp eq i32 %218, -2
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %899

221:                                              ; preds = %216
  %222 = load i32, ptr %168, align 8, !tbaa !26
  %223 = icmp eq i32 %217, %222
  br i1 %223, label %224, label %175, !llvm.loop !36

224:                                              ; preds = %151, %221, %162, %126, %74
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %239 = load i64, ptr %71, align 8, !tbaa !29
  br label %240

240:                                              ; preds = %396, %224
  %241 = phi i64 [ %239, %224 ], [ %392, %396 ]
  %242 = phi i1 [ false, %224 ], [ true, %396 ]
  %243 = load i32, ptr %24, align 8, !tbaa !18
  %244 = zext i32 %243 to i64
  %245 = tail call i64 @llvm.smin.i64(i64 %241, i64 %244)
  %246 = trunc i64 %245 to i32
  %247 = load ptr, ptr %225, align 8, !tbaa !20
  br i1 %242, label %252, label %248

248:                                              ; preds = %240
  %249 = and i64 %245, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %247, i8 0, i64 %249, i1 false)
  %250 = load ptr, ptr %225, align 8, !tbaa !20
  %251 = load i32, ptr %24, align 8, !tbaa !18
  br label %252

252:                                              ; preds = %248, %240
  %253 = phi i32 [ %251, %248 ], [ %243, %240 ]
  %254 = phi ptr [ %250, %248 ], [ %247, %240 ]
  store i32 %246, ptr %76, align 8, !tbaa !30
  store ptr %254, ptr %75, align 8, !tbaa !25
  %255 = icmp eq i32 %253, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %252
  %257 = load i32, ptr %227, align 4, !tbaa !19
  %258 = shl i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = tail call noalias ptr @malloc(i64 noundef %259) #17
  store ptr %260, ptr %225, align 8, !tbaa !20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %379

263:                                              ; preds = %256
  %264 = load i32, ptr %226, align 8, !tbaa !21
  %265 = icmp eq i32 %264, 0
  %266 = load i32, ptr %227, align 4, !tbaa !19
  br i1 %265, label %268, label %267

267:                                              ; preds = %263
  store i32 %266, ptr %24, align 8, !tbaa !18
  br label %290

268:                                              ; preds = %263
  %269 = zext i32 %266 to i64
  %270 = tail call noalias ptr @malloc(i64 noundef %269) #17
  store ptr %270, ptr %228, align 8, !tbaa !22
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  tail call void @free(ptr noundef nonnull %260) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %379

273:                                              ; preds = %268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false)
  %274 = load i32, ptr %230, align 8, !tbaa !23
  %275 = load i32, ptr %231, align 4, !tbaa !24
  %276 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %274, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %275, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %228, align 8, !tbaa !22
  tail call void @free(ptr noundef %279) #16
  %280 = load ptr, ptr %225, align 8, !tbaa !20
  tail call void @free(ptr noundef %280) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %379

281:                                              ; preds = %273
  store ptr null, ptr %75, align 8, !tbaa !25
  %282 = load i32, ptr %226, align 8, !tbaa !21
  %283 = load i32, ptr %227, align 4, !tbaa !19
  store i32 %283, ptr %24, align 8, !tbaa !18
  %284 = icmp eq i32 %282, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  store i32 %283, ptr %234, align 8, !tbaa !26
  %286 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %286, ptr %235, align 8, !tbaa !27
  store ptr %286, ptr %236, align 8, !tbaa !28
  br label %320

287:                                              ; preds = %252
  %288 = load i32, ptr %226, align 8, !tbaa !21
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %320, label %290

290:                                              ; preds = %287, %281, %267
  %291 = phi ptr [ %254, %287 ], [ null, %281 ], [ %254, %267 ]
  %292 = load i32, ptr %76, align 8, !tbaa !30
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %379, label %294

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #18
  br label %296

296:                                              ; preds = %313, %294
  %297 = phi ptr [ %291, %294 ], [ %318, %313 ]
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %232, align 4, !tbaa !17
  %298 = load i32, ptr %76, align 8, !tbaa !30
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = zext nneg i32 %299 to i64
  %301 = load i32, ptr %233, align 4, !tbaa !31
  %302 = tail call i64 @write(i32 noundef %301, ptr noundef %297, i64 noundef %300) #16
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load i32, ptr %295, align 4, !tbaa !4
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  store i32 1, ptr %232, align 4, !tbaa !17
  %309 = load i32, ptr %295, align 4, !tbaa !4
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %306, %305 ], [ %309, %308 ]
  %312 = tail call ptr @strerror(i32 noundef %311) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #16
  br label %379

313:                                              ; preds = %296
  %314 = load i32, ptr %76, align 8, !tbaa !30
  %315 = sub i32 %314, %303
  store i32 %315, ptr %76, align 8, !tbaa !30
  %316 = load ptr, ptr %75, align 8, !tbaa !25
  %317 = and i64 %302, 2147483647
  %318 = getelementptr inbounds nuw i8, ptr %316, i64 %317
  store ptr %318, ptr %75, align 8, !tbaa !25
  %319 = icmp eq i32 %314, %303
  br i1 %319, label %379, label %296, !llvm.loop !32

320:                                              ; preds = %287, %285
  %321 = load i32, ptr %237, align 8, !tbaa !34
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %320
  %324 = load i32, ptr %76, align 8, !tbaa !30
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %379, label %326

326:                                              ; preds = %323
  %327 = tail call i32 @deflateReset(ptr noundef nonnull %75) #16
  store i32 0, ptr %237, align 8, !tbaa !34
  br label %328

328:                                              ; preds = %326, %320
  %329 = load i32, ptr %234, align 8, !tbaa !26
  br label %330

330:                                              ; preds = %376, %328
  %331 = phi i32 [ %329, %328 ], [ %377, %376 ]
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %371

333:                                              ; preds = %330
  %334 = load ptr, ptr %235, align 8, !tbaa !27
  %335 = load ptr, ptr %236, align 8, !tbaa !28
  %336 = icmp ugt ptr %334, %335
  br i1 %336, label %337, label %368

337:                                              ; preds = %333
  %338 = tail call ptr @__errno_location() #18
  br label %339

339:                                              ; preds = %359, %337
  %340 = phi ptr [ %335, %337 ], [ %362, %359 ]
  %341 = phi ptr [ %334, %337 ], [ %363, %359 ]
  store i32 0, ptr %338, align 4, !tbaa !4
  store i32 0, ptr %232, align 4, !tbaa !17
  %342 = ptrtoint ptr %341 to i64
  %343 = ptrtoint ptr %340 to i64
  %344 = sub i64 %342, %343
  %345 = tail call i64 @llvm.smin.i64(i64 %344, i64 1073741824)
  %346 = and i64 %345, 4294967295
  %347 = load i32, ptr %233, align 4, !tbaa !31
  %348 = tail call i64 @write(i32 noundef %347, ptr noundef %340, i64 noundef %346) #16
  %349 = and i64 %348, 2147483648
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %339
  %352 = load i32, ptr %338, align 4, !tbaa !4
  %353 = icmp eq i32 %352, 11
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  store i32 1, ptr %232, align 4, !tbaa !17
  %355 = load i32, ptr %338, align 4, !tbaa !4
  br label %356

356:                                              ; preds = %354, %351
  %357 = phi i32 [ %352, %351 ], [ %355, %354 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #16
  br label %379

359:                                              ; preds = %339
  %360 = load ptr, ptr %236, align 8, !tbaa !28
  %361 = and i64 %348, 2147483647
  %362 = getelementptr inbounds nuw i8, ptr %360, i64 %361
  store ptr %362, ptr %236, align 8, !tbaa !28
  %363 = load ptr, ptr %235, align 8, !tbaa !27
  %364 = icmp ugt ptr %363, %362
  br i1 %364, label %339, label %365, !llvm.loop !35

365:                                              ; preds = %359
  %366 = load i32, ptr %234, align 8, !tbaa !26
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %365, %333
  %369 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %369, ptr %234, align 8, !tbaa !26
  %370 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %370, ptr %235, align 8, !tbaa !27
  store ptr %370, ptr %236, align 8, !tbaa !28
  br label %371

371:                                              ; preds = %368, %365, %330
  %372 = phi i32 [ %366, %365 ], [ %369, %368 ], [ %331, %330 ]
  %373 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #16
  %374 = icmp eq i32 %373, -2
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %379

376:                                              ; preds = %371
  %377 = load i32, ptr %234, align 8, !tbaa !26
  %378 = icmp eq i32 %372, %377
  br i1 %378, label %379, label %330, !llvm.loop !36

379:                                              ; preds = %313, %376, %375, %356, %323, %310, %290, %278, %272, %262
  %380 = phi i1 [ false, %323 ], [ true, %310 ], [ false, %290 ], [ true, %272 ], [ true, %356 ], [ true, %375 ], [ false, %376 ], [ true, %262 ], [ true, %278 ], [ false, %313 ]
  %381 = load i32, ptr %76, align 8, !tbaa !30
  %382 = sub i32 %246, %381
  %383 = zext i32 %382 to i64
  %384 = load i64, ptr %238, align 8, !tbaa !37
  %385 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %384, i64 %383), !nosanitize !38
  %386 = extractvalue { i64, i1 } %385, 1, !nosanitize !38
  br i1 %386, label %387, label %388, !prof !39, !nosanitize !38

387:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

388:                                              ; preds = %379
  %389 = extractvalue { i64, i1 } %385, 0, !nosanitize !38
  store i64 %389, ptr %238, align 8, !tbaa !37
  %390 = load i64, ptr %71, align 8, !tbaa !29
  %391 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %390, i64 %383), !nosanitize !38
  %392 = extractvalue { i64, i1 } %391, 0, !nosanitize !38
  %393 = extractvalue { i64, i1 } %391, 1, !nosanitize !38
  br i1 %393, label %394, label %395, !prof !39, !nosanitize !38

394:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

395:                                              ; preds = %388
  store i64 %392, ptr %71, align 8, !tbaa !29
  br i1 %380, label %899, label %396

396:                                              ; preds = %395
  %397 = icmp eq i64 %392, 0
  br i1 %397, label %398, label %240, !llvm.loop !40

398:                                              ; preds = %396
  %399 = load i32, ptr %24, align 8, !tbaa !18
  br label %400

400:                                              ; preds = %398, %69
  %401 = phi i32 [ %399, %398 ], [ %70, %69 ]
  %402 = icmp ult i32 %2, %401
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %402, label %405, label %589

405:                                              ; preds = %400
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %420

420:                                              ; preds = %530, %405
  %421 = phi i64 [ %21, %405 ], [ %455, %530 ]
  %422 = phi ptr [ %1, %405 ], [ %454, %530 ]
  %423 = load i32, ptr %404, align 8, !tbaa !41
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %420
  %426 = load ptr, ptr %403, align 8, !tbaa !42
  %427 = load ptr, ptr %406, align 8, !tbaa !20
  br label %430

428:                                              ; preds = %420
  %429 = load ptr, ptr %406, align 8, !tbaa !20
  store ptr %429, ptr %403, align 8, !tbaa !42
  br label %430

430:                                              ; preds = %428, %425
  %431 = phi ptr [ %427, %425 ], [ %429, %428 ]
  %432 = phi ptr [ %426, %425 ], [ %429, %428 ]
  %433 = zext i32 %423 to i64
  %434 = getelementptr inbounds nuw i8, ptr %432, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = ptrtoint ptr %431 to i64
  %437 = sub i64 %435, %436
  %438 = trunc i64 %437 to i32
  %439 = load i32, ptr %24, align 8, !tbaa !18
  %440 = sub i32 %439, %438
  %441 = zext i32 %440 to i64
  %442 = tail call i64 @llvm.umin.i64(i64 %421, i64 %441)
  %443 = trunc nuw i64 %442 to i32
  %444 = and i64 %437, 4294967295
  %445 = getelementptr inbounds nuw i8, ptr %431, i64 %444
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %445, ptr align 1 %422, i64 %442, i1 false)
  %446 = load i32, ptr %404, align 8, !tbaa !41
  %447 = add i32 %446, %443
  store i32 %447, ptr %404, align 8, !tbaa !41
  %448 = load i64, ptr %407, align 8, !tbaa !37
  %449 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %448, i64 %442), !nosanitize !38
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !38
  br i1 %450, label %451, label %452, !prof !39, !nosanitize !38

451:                                              ; preds = %881, %430
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

452:                                              ; preds = %430
  %453 = extractvalue { i64, i1 } %449, 0, !nosanitize !38
  store i64 %453, ptr %407, align 8, !tbaa !37
  %454 = getelementptr inbounds nuw i8, ptr %422, i64 %442
  %455 = sub i64 %421, %442
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %899, label %457

457:                                              ; preds = %452
  %458 = load i32, ptr %24, align 8, !tbaa !18
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %491

460:                                              ; preds = %457
  %461 = load i32, ptr %409, align 4, !tbaa !19
  %462 = shl i32 %461, 1
  %463 = zext i32 %462 to i64
  %464 = tail call noalias ptr @malloc(i64 noundef %463) #17
  store ptr %464, ptr %406, align 8, !tbaa !20
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %467

466:                                              ; preds = %460
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

467:                                              ; preds = %460
  %468 = load i32, ptr %408, align 8, !tbaa !21
  %469 = icmp eq i32 %468, 0
  %470 = load i32, ptr %409, align 4, !tbaa !19
  br i1 %469, label %472, label %471

471:                                              ; preds = %467
  store i32 %470, ptr %24, align 8, !tbaa !18
  br label %494

472:                                              ; preds = %467
  %473 = zext i32 %470 to i64
  %474 = tail call noalias ptr @malloc(i64 noundef %473) #17
  store ptr %474, ptr %410, align 8, !tbaa !22
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %477

476:                                              ; preds = %472
  tail call void @free(ptr noundef nonnull %464) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

477:                                              ; preds = %472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %411, i8 0, i64 24, i1 false)
  %478 = load i32, ptr %412, align 8, !tbaa !23
  %479 = load i32, ptr %413, align 4, !tbaa !24
  %480 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %478, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %479, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr %410, align 8, !tbaa !22
  tail call void @free(ptr noundef %483) #16
  %484 = load ptr, ptr %406, align 8, !tbaa !20
  tail call void @free(ptr noundef %484) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

485:                                              ; preds = %477
  store ptr null, ptr %403, align 8, !tbaa !25
  %486 = load i32, ptr %408, align 8, !tbaa !21
  %487 = load i32, ptr %409, align 4, !tbaa !19
  store i32 %487, ptr %24, align 8, !tbaa !18
  %488 = icmp eq i32 %486, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %485
  store i32 %487, ptr %416, align 8, !tbaa !26
  %490 = load ptr, ptr %410, align 8, !tbaa !22
  store ptr %490, ptr %417, align 8, !tbaa !27
  store ptr %490, ptr %418, align 8, !tbaa !28
  br label %524

491:                                              ; preds = %457
  %492 = load i32, ptr %408, align 8, !tbaa !21
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %524, label %494

494:                                              ; preds = %491, %485, %471
  %495 = load i32, ptr %404, align 8, !tbaa !30
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %530, label %497

497:                                              ; preds = %494
  %498 = tail call ptr @__errno_location() #18
  %499 = load ptr, ptr %403, align 8, !tbaa !25
  br label %500

500:                                              ; preds = %517, %497
  %501 = phi ptr [ %499, %497 ], [ %522, %517 ]
  store i32 0, ptr %498, align 4, !tbaa !4
  store i32 0, ptr %414, align 4, !tbaa !17
  %502 = load i32, ptr %404, align 8, !tbaa !30
  %503 = tail call i32 @llvm.umin.i32(i32 %502, i32 1073741824)
  %504 = zext nneg i32 %503 to i64
  %505 = load i32, ptr %415, align 4, !tbaa !31
  %506 = tail call i64 @write(i32 noundef %505, ptr noundef %501, i64 noundef %504) #16
  %507 = trunc i64 %506 to i32
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %517

509:                                              ; preds = %500
  %510 = load i32, ptr %498, align 4, !tbaa !4
  %511 = icmp eq i32 %510, 11
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  store i32 1, ptr %414, align 4, !tbaa !17
  %513 = load i32, ptr %498, align 4, !tbaa !4
  br label %514

514:                                              ; preds = %512, %509
  %515 = phi i32 [ %510, %509 ], [ %513, %512 ]
  %516 = tail call ptr @strerror(i32 noundef %515) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %516) #16
  br label %584

517:                                              ; preds = %500
  %518 = load i32, ptr %404, align 8, !tbaa !30
  %519 = sub i32 %518, %507
  store i32 %519, ptr %404, align 8, !tbaa !30
  %520 = load ptr, ptr %403, align 8, !tbaa !25
  %521 = and i64 %506, 2147483647
  %522 = getelementptr inbounds nuw i8, ptr %520, i64 %521
  store ptr %522, ptr %403, align 8, !tbaa !25
  %523 = icmp eq i32 %518, %507
  br i1 %523, label %530, label %500, !llvm.loop !32

524:                                              ; preds = %491, %489
  %525 = load i32, ptr %419, align 8, !tbaa !34
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %404, align 8, !tbaa !30
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %517, %581, %527, %494
  br label %420

531:                                              ; preds = %527
  %532 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %419, align 8, !tbaa !34
  br label %533

533:                                              ; preds = %531, %524
  %534 = load i32, ptr %416, align 8, !tbaa !26
  br label %535

535:                                              ; preds = %581, %533
  %536 = phi i32 [ %534, %533 ], [ %582, %581 ]
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %576

538:                                              ; preds = %535
  %539 = load ptr, ptr %417, align 8, !tbaa !27
  %540 = load ptr, ptr %418, align 8, !tbaa !28
  %541 = icmp ugt ptr %539, %540
  br i1 %541, label %542, label %573

542:                                              ; preds = %538
  %543 = tail call ptr @__errno_location() #18
  br label %544

544:                                              ; preds = %564, %542
  %545 = phi ptr [ %540, %542 ], [ %567, %564 ]
  %546 = phi ptr [ %539, %542 ], [ %568, %564 ]
  store i32 0, ptr %543, align 4, !tbaa !4
  store i32 0, ptr %414, align 4, !tbaa !17
  %547 = ptrtoint ptr %546 to i64
  %548 = ptrtoint ptr %545 to i64
  %549 = sub i64 %547, %548
  %550 = tail call i64 @llvm.smin.i64(i64 %549, i64 1073741824)
  %551 = and i64 %550, 4294967295
  %552 = load i32, ptr %415, align 4, !tbaa !31
  %553 = tail call i64 @write(i32 noundef %552, ptr noundef %545, i64 noundef %551) #16
  %554 = and i64 %553, 2147483648
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %564, label %556

556:                                              ; preds = %544
  %557 = load i32, ptr %543, align 4, !tbaa !4
  %558 = icmp eq i32 %557, 11
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  store i32 1, ptr %414, align 4, !tbaa !17
  %560 = load i32, ptr %543, align 4, !tbaa !4
  br label %561

561:                                              ; preds = %559, %556
  %562 = phi i32 [ %557, %556 ], [ %560, %559 ]
  %563 = tail call ptr @strerror(i32 noundef %562) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %563) #16
  br label %584

564:                                              ; preds = %544
  %565 = load ptr, ptr %418, align 8, !tbaa !28
  %566 = and i64 %553, 2147483647
  %567 = getelementptr inbounds nuw i8, ptr %565, i64 %566
  store ptr %567, ptr %418, align 8, !tbaa !28
  %568 = load ptr, ptr %417, align 8, !tbaa !27
  %569 = icmp ugt ptr %568, %567
  br i1 %569, label %544, label %570, !llvm.loop !35

570:                                              ; preds = %564
  %571 = load i32, ptr %416, align 8, !tbaa !26
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %570, %538
  %574 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %574, ptr %416, align 8, !tbaa !26
  %575 = load ptr, ptr %410, align 8, !tbaa !22
  store ptr %575, ptr %417, align 8, !tbaa !27
  store ptr %575, ptr %418, align 8, !tbaa !28
  br label %576

576:                                              ; preds = %573, %570, %535
  %577 = phi i32 [ %571, %570 ], [ %574, %573 ], [ %536, %535 ]
  %578 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %579 = icmp eq i32 %578, -2
  br i1 %579, label %580, label %581

580:                                              ; preds = %576
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %584

581:                                              ; preds = %576
  %582 = load i32, ptr %416, align 8, !tbaa !26
  %583 = icmp eq i32 %577, %582
  br i1 %583, label %530, label %535, !llvm.loop !36

584:                                              ; preds = %580, %561, %514, %482, %476, %466
  %585 = load i32, ptr %414, align 4, !tbaa !17
  %586 = icmp eq i32 %585, 0
  %587 = sub i64 %21, %455
  %588 = select i1 %586, i64 0, i64 %587
  br label %899

589:                                              ; preds = %400
  %590 = load i32, ptr %404, align 8, !tbaa !41
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %737, label %592

592:                                              ; preds = %589
  %593 = icmp eq i32 %401, 0
  br i1 %593, label %594, label %635

594:                                              ; preds = %592
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %596 = load i32, ptr %595, align 4, !tbaa !19
  %597 = shl i32 %596, 1
  %598 = zext i32 %597 to i64
  %599 = tail call noalias ptr @malloc(i64 noundef %598) #17
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %599, ptr %600, align 8, !tbaa !20
  %601 = icmp eq ptr %599, null
  br i1 %601, label %602, label %603

602:                                              ; preds = %594
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

603:                                              ; preds = %594
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %605 = load i32, ptr %604, align 8, !tbaa !21
  %606 = icmp eq i32 %605, 0
  %607 = load i32, ptr %595, align 4, !tbaa !19
  br i1 %606, label %609, label %608

608:                                              ; preds = %603
  store i32 %607, ptr %24, align 8, !tbaa !18
  br label %639

609:                                              ; preds = %603
  %610 = zext i32 %607 to i64
  %611 = tail call noalias ptr @malloc(i64 noundef %610) #17
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %611, ptr %612, align 8, !tbaa !22
  %613 = icmp eq ptr %611, null
  br i1 %613, label %614, label %615

614:                                              ; preds = %609
  tail call void @free(ptr noundef nonnull %599) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

615:                                              ; preds = %609
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %616, i8 0, i64 24, i1 false)
  %618 = load i32, ptr %617, align 8, !tbaa !23
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %620 = load i32, ptr %619, align 4, !tbaa !24
  %621 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %618, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %620, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %615
  %624 = load ptr, ptr %612, align 8, !tbaa !22
  tail call void @free(ptr noundef %624) #16
  %625 = load ptr, ptr %600, align 8, !tbaa !20
  tail call void @free(ptr noundef %625) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

626:                                              ; preds = %615
  store ptr null, ptr %403, align 8, !tbaa !25
  %627 = load i32, ptr %604, align 8, !tbaa !21
  %628 = load i32, ptr %595, align 4, !tbaa !19
  store i32 %628, ptr %24, align 8, !tbaa !18
  %629 = icmp eq i32 %627, 0
  br i1 %629, label %630, label %639

630:                                              ; preds = %626
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %628, ptr %631, align 8, !tbaa !26
  %632 = load ptr, ptr %612, align 8, !tbaa !22
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %632, ptr %633, align 8, !tbaa !27
  %634 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %632, ptr %634, align 8, !tbaa !28
  br label %671

635:                                              ; preds = %592
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %637 = load i32, ptr %636, align 8, !tbaa !21
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %671, label %639

639:                                              ; preds = %635, %626, %608
  %640 = load i32, ptr %404, align 8, !tbaa !30
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %737, label %642

642:                                              ; preds = %639
  %643 = tail call ptr @__errno_location() #18
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %646 = load ptr, ptr %403, align 8, !tbaa !25
  br label %647

647:                                              ; preds = %664, %642
  %648 = phi ptr [ %646, %642 ], [ %669, %664 ]
  store i32 0, ptr %643, align 4, !tbaa !4
  store i32 0, ptr %644, align 4, !tbaa !17
  %649 = load i32, ptr %404, align 8, !tbaa !30
  %650 = tail call i32 @llvm.umin.i32(i32 %649, i32 1073741824)
  %651 = zext nneg i32 %650 to i64
  %652 = load i32, ptr %645, align 4, !tbaa !31
  %653 = tail call i64 @write(i32 noundef %652, ptr noundef %648, i64 noundef %651) #16
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
  %663 = tail call ptr @strerror(i32 noundef %662) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %663) #16
  br label %899

664:                                              ; preds = %647
  %665 = load i32, ptr %404, align 8, !tbaa !30
  %666 = sub i32 %665, %654
  store i32 %666, ptr %404, align 8, !tbaa !30
  %667 = load ptr, ptr %403, align 8, !tbaa !25
  %668 = and i64 %653, 2147483647
  %669 = getelementptr inbounds nuw i8, ptr %667, i64 %668
  store ptr %669, ptr %403, align 8, !tbaa !25
  %670 = icmp eq i32 %665, %654
  br i1 %670, label %737, label %647, !llvm.loop !32

671:                                              ; preds = %635, %630
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %673 = load i32, ptr %672, align 8, !tbaa !34
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %671
  %676 = load i32, ptr %404, align 8, !tbaa !30
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %737, label %678

678:                                              ; preds = %675
  %679 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %672, align 8, !tbaa !34
  br label %680

680:                                              ; preds = %678, %671
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %685 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %686 = getelementptr inbounds nuw i8, ptr %0, i64 56
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
  %696 = tail call ptr @__errno_location() #18
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
  %706 = tail call i64 @write(i32 noundef %705, ptr noundef %698, i64 noundef %704) #16
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
  %716 = tail call ptr @strerror(i32 noundef %715) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %716) #16
  br label %899

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
  %727 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %727, ptr %681, align 8, !tbaa !26
  %728 = load ptr, ptr %686, align 8, !tbaa !22
  store ptr %728, ptr %682, align 8, !tbaa !27
  store ptr %728, ptr %683, align 8, !tbaa !28
  br label %729

729:                                              ; preds = %726, %723, %688
  %730 = phi i32 [ %724, %723 ], [ %727, %726 ], [ %689, %688 ]
  %731 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %732 = icmp eq i32 %731, -2
  br i1 %732, label %733, label %734

733:                                              ; preds = %729
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %899

734:                                              ; preds = %729
  %735 = load i32, ptr %681, align 8, !tbaa !26
  %736 = icmp eq i32 %730, %735
  br i1 %736, label %737, label %688, !llvm.loop !36

737:                                              ; preds = %664, %734, %675, %639, %589
  store ptr %1, ptr %403, align 8, !tbaa !42
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %743 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %745 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %746 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %747 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %748 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %749 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %751 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %752

752:                                              ; preds = %897, %737
  %753 = phi i64 [ %21, %737 ], [ %891, %897 ]
  %754 = tail call i64 @llvm.umin.i64(i64 %753, i64 4294967295)
  %755 = trunc nuw i64 %754 to i32
  store i32 %755, ptr %404, align 8, !tbaa !41
  %756 = load i32, ptr %24, align 8, !tbaa !18
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %789

758:                                              ; preds = %752
  %759 = load i32, ptr %739, align 4, !tbaa !19
  %760 = shl i32 %759, 1
  %761 = zext i32 %760 to i64
  %762 = tail call noalias ptr @malloc(i64 noundef %761) #17
  store ptr %762, ptr %740, align 8, !tbaa !20
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %765

764:                                              ; preds = %758
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

765:                                              ; preds = %758
  %766 = load i32, ptr %738, align 8, !tbaa !21
  %767 = icmp eq i32 %766, 0
  %768 = load i32, ptr %739, align 4, !tbaa !19
  br i1 %767, label %770, label %769

769:                                              ; preds = %765
  store i32 %768, ptr %24, align 8, !tbaa !18
  br label %792

770:                                              ; preds = %765
  %771 = zext i32 %768 to i64
  %772 = tail call noalias ptr @malloc(i64 noundef %771) #17
  store ptr %772, ptr %741, align 8, !tbaa !22
  %773 = icmp eq ptr %772, null
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @free(ptr noundef nonnull %762) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

775:                                              ; preds = %770
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %742, i8 0, i64 24, i1 false)
  %776 = load i32, ptr %743, align 8, !tbaa !23
  %777 = load i32, ptr %744, align 4, !tbaa !24
  %778 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %776, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %777, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %783, label %780

780:                                              ; preds = %775
  %781 = load ptr, ptr %741, align 8, !tbaa !22
  tail call void @free(ptr noundef %781) #16
  %782 = load ptr, ptr %740, align 8, !tbaa !20
  tail call void @free(ptr noundef %782) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

783:                                              ; preds = %775
  store ptr null, ptr %403, align 8, !tbaa !25
  %784 = load i32, ptr %738, align 8, !tbaa !21
  %785 = load i32, ptr %739, align 4, !tbaa !19
  store i32 %785, ptr %24, align 8, !tbaa !18
  %786 = icmp eq i32 %784, 0
  br i1 %786, label %787, label %792

787:                                              ; preds = %783
  store i32 %785, ptr %747, align 8, !tbaa !26
  %788 = load ptr, ptr %741, align 8, !tbaa !22
  store ptr %788, ptr %748, align 8, !tbaa !27
  store ptr %788, ptr %749, align 8, !tbaa !28
  br label %822

789:                                              ; preds = %752
  %790 = load i32, ptr %738, align 8, !tbaa !21
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %822, label %792

792:                                              ; preds = %789, %783, %769
  %793 = load i32, ptr %404, align 8, !tbaa !30
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %881, label %795

795:                                              ; preds = %792
  %796 = tail call ptr @__errno_location() #18
  %797 = load ptr, ptr %403, align 8, !tbaa !25
  br label %798

798:                                              ; preds = %815, %795
  %799 = phi ptr [ %797, %795 ], [ %820, %815 ]
  store i32 0, ptr %796, align 4, !tbaa !4
  store i32 0, ptr %745, align 4, !tbaa !17
  %800 = load i32, ptr %404, align 8, !tbaa !30
  %801 = tail call i32 @llvm.umin.i32(i32 %800, i32 1073741824)
  %802 = zext nneg i32 %801 to i64
  %803 = load i32, ptr %746, align 4, !tbaa !31
  %804 = tail call i64 @write(i32 noundef %803, ptr noundef %799, i64 noundef %802) #16
  %805 = trunc i64 %804 to i32
  %806 = icmp slt i32 %805, 0
  br i1 %806, label %807, label %815

807:                                              ; preds = %798
  %808 = load i32, ptr %796, align 4, !tbaa !4
  %809 = icmp eq i32 %808, 11
  br i1 %809, label %810, label %812

810:                                              ; preds = %807
  store i32 1, ptr %745, align 4, !tbaa !17
  %811 = load i32, ptr %796, align 4, !tbaa !4
  br label %812

812:                                              ; preds = %810, %807
  %813 = phi i32 [ %808, %807 ], [ %811, %810 ]
  %814 = tail call ptr @strerror(i32 noundef %813) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %814) #16
  br label %881

815:                                              ; preds = %798
  %816 = load i32, ptr %404, align 8, !tbaa !30
  %817 = sub i32 %816, %805
  store i32 %817, ptr %404, align 8, !tbaa !30
  %818 = load ptr, ptr %403, align 8, !tbaa !25
  %819 = and i64 %804, 2147483647
  %820 = getelementptr inbounds nuw i8, ptr %818, i64 %819
  store ptr %820, ptr %403, align 8, !tbaa !25
  %821 = icmp eq i32 %816, %805
  br i1 %821, label %881, label %798, !llvm.loop !32

822:                                              ; preds = %789, %787
  %823 = load i32, ptr %750, align 8, !tbaa !34
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %830, label %825

825:                                              ; preds = %822
  %826 = load i32, ptr %404, align 8, !tbaa !30
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %881, label %828

828:                                              ; preds = %825
  %829 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %750, align 8, !tbaa !34
  br label %830

830:                                              ; preds = %828, %822
  %831 = load i32, ptr %747, align 8, !tbaa !26
  br label %832

832:                                              ; preds = %878, %830
  %833 = phi i32 [ %831, %830 ], [ %879, %878 ]
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %873

835:                                              ; preds = %832
  %836 = load ptr, ptr %748, align 8, !tbaa !27
  %837 = load ptr, ptr %749, align 8, !tbaa !28
  %838 = icmp ugt ptr %836, %837
  br i1 %838, label %839, label %870

839:                                              ; preds = %835
  %840 = tail call ptr @__errno_location() #18
  br label %841

841:                                              ; preds = %861, %839
  %842 = phi ptr [ %837, %839 ], [ %864, %861 ]
  %843 = phi ptr [ %836, %839 ], [ %865, %861 ]
  store i32 0, ptr %840, align 4, !tbaa !4
  store i32 0, ptr %745, align 4, !tbaa !17
  %844 = ptrtoint ptr %843 to i64
  %845 = ptrtoint ptr %842 to i64
  %846 = sub i64 %844, %845
  %847 = tail call i64 @llvm.smin.i64(i64 %846, i64 1073741824)
  %848 = and i64 %847, 4294967295
  %849 = load i32, ptr %746, align 4, !tbaa !31
  %850 = tail call i64 @write(i32 noundef %849, ptr noundef %842, i64 noundef %848) #16
  %851 = and i64 %850, 2147483648
  %852 = icmp eq i64 %851, 0
  br i1 %852, label %861, label %853

853:                                              ; preds = %841
  %854 = load i32, ptr %840, align 4, !tbaa !4
  %855 = icmp eq i32 %854, 11
  br i1 %855, label %856, label %858

856:                                              ; preds = %853
  store i32 1, ptr %745, align 4, !tbaa !17
  %857 = load i32, ptr %840, align 4, !tbaa !4
  br label %858

858:                                              ; preds = %856, %853
  %859 = phi i32 [ %854, %853 ], [ %857, %856 ]
  %860 = tail call ptr @strerror(i32 noundef %859) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %860) #16
  br label %881

861:                                              ; preds = %841
  %862 = load ptr, ptr %749, align 8, !tbaa !28
  %863 = and i64 %850, 2147483647
  %864 = getelementptr inbounds nuw i8, ptr %862, i64 %863
  store ptr %864, ptr %749, align 8, !tbaa !28
  %865 = load ptr, ptr %748, align 8, !tbaa !27
  %866 = icmp ugt ptr %865, %864
  br i1 %866, label %841, label %867, !llvm.loop !35

867:                                              ; preds = %861
  %868 = load i32, ptr %747, align 8, !tbaa !26
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %873

870:                                              ; preds = %867, %835
  %871 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %871, ptr %747, align 8, !tbaa !26
  %872 = load ptr, ptr %741, align 8, !tbaa !22
  store ptr %872, ptr %748, align 8, !tbaa !27
  store ptr %872, ptr %749, align 8, !tbaa !28
  br label %873

873:                                              ; preds = %870, %867, %832
  %874 = phi i32 [ %868, %867 ], [ %871, %870 ], [ %833, %832 ]
  %875 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %876 = icmp eq i32 %875, -2
  br i1 %876, label %877, label %878

877:                                              ; preds = %873
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %881

878:                                              ; preds = %873
  %879 = load i32, ptr %747, align 8, !tbaa !26
  %880 = icmp eq i32 %874, %879
  br i1 %880, label %881, label %832, !llvm.loop !36

881:                                              ; preds = %815, %878, %877, %858, %825, %812, %792, %780, %774, %764
  %882 = phi i1 [ false, %825 ], [ true, %812 ], [ false, %792 ], [ true, %774 ], [ true, %858 ], [ true, %877 ], [ false, %878 ], [ true, %764 ], [ true, %780 ], [ false, %815 ]
  %883 = load i32, ptr %404, align 8, !tbaa !41
  %884 = sub i32 %755, %883
  %885 = zext i32 %884 to i64
  %886 = load i64, ptr %751, align 8, !tbaa !37
  %887 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %886, i64 %885), !nosanitize !38
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !38
  br i1 %888, label %451, label %889, !prof !39, !nosanitize !38

889:                                              ; preds = %881
  %890 = extractvalue { i64, i1 } %887, 0, !nosanitize !38
  store i64 %890, ptr %751, align 8, !tbaa !37
  %891 = sub i64 %753, %885
  br i1 %882, label %892, label %897

892:                                              ; preds = %889
  %893 = load i32, ptr %745, align 4, !tbaa !17
  %894 = icmp eq i32 %893, 0
  %895 = sub i64 %21, %891
  %896 = select i1 %894, i64 0, i64 %895
  br label %899

897:                                              ; preds = %889
  %898 = icmp eq i64 %891, 0
  br i1 %898, label %899, label %752, !llvm.loop !43

899:                                              ; preds = %395, %897, %452, %20, %36, %48, %57, %89, %101, %110, %148, %201, %220, %584, %602, %614, %623, %661, %714, %733, %892
  %900 = phi i64 [ %896, %892 ], [ 0, %20 ], [ %21, %897 ], [ %588, %584 ], [ 0, %623 ], [ 0, %48 ], [ %21, %452 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %201 ], [ 0, %220 ], [ 0, %661 ], [ 0, %614 ], [ 0, %714 ], [ 0, %733 ], [ 0, %602 ], [ 0, %395 ]
  %901 = trunc i64 %900 to i32
  br label %902

902:                                              ; preds = %5, %13, %3, %899, %19
  %903 = phi i32 [ %901, %899 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %903
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %907, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %907

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %907, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #16
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = extractvalue { i64, i1 } %19, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #16
  br label %907

25:                                               ; preds = %22, %18
  %26 = icmp eq i64 %20, 0
  br i1 %26, label %907, label %27

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
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #17
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %37, ptr %38, align 8, !tbaa !20
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

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
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #17
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %49, ptr %50, align 8, !tbaa !22
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %37) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %56 = load i32, ptr %55, align 8, !tbaa !23
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %58 = load i32, ptr %57, align 4, !tbaa !24
  %59 = tail call i32 @deflateInit2_(ptr noundef nonnull %32, i32 noundef %56, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %58, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %50, align 8, !tbaa !22
  tail call void @free(ptr noundef %62) #16
  %63 = load ptr, ptr %38, align 8, !tbaa !20
  tail call void @free(ptr noundef %63) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

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
  br i1 %77, label %404, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %81 = load i32, ptr %80, align 8, !tbaa !30
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %228, label %83

83:                                               ; preds = %78
  %84 = icmp eq i32 %74, 0
  br i1 %84, label %85, label %126

85:                                               ; preds = %83
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %87 = load i32, ptr %86, align 4, !tbaa !19
  %88 = shl i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #17
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !20
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

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
  %102 = tail call noalias ptr @malloc(i64 noundef %101) #17
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %102, ptr %103, align 8, !tbaa !22
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @free(ptr noundef nonnull %90) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %107, i8 0, i64 24, i1 false)
  %109 = load i32, ptr %108, align 8, !tbaa !23
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %109, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %111, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr %103, align 8, !tbaa !22
  tail call void @free(ptr noundef %115) #16
  %116 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @free(ptr noundef %116) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

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
  br i1 %132, label %228, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @__errno_location() #18
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
  %144 = tail call i64 @write(i32 noundef %143, ptr noundef %139, i64 noundef %142) #16
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
  %154 = tail call ptr @strerror(i32 noundef %153) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %154) #16
  br label %904

155:                                              ; preds = %138
  %156 = load i32, ptr %80, align 8, !tbaa !30
  %157 = sub i32 %156, %145
  store i32 %157, ptr %80, align 8, !tbaa !30
  %158 = load ptr, ptr %79, align 8, !tbaa !25
  %159 = and i64 %144, 2147483647
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store ptr %160, ptr %79, align 8, !tbaa !25
  %161 = icmp eq i32 %156, %145
  br i1 %161, label %228, label %138, !llvm.loop !32

162:                                              ; preds = %126, %121
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %164 = load i32, ptr %163, align 8, !tbaa !34
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %80, align 8, !tbaa !30
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %228, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @deflateReset(ptr noundef nonnull %79) #16
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
  %187 = tail call ptr @__errno_location() #18
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
  %197 = tail call i64 @write(i32 noundef %196, ptr noundef %189, i64 noundef %195) #16
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
  %207 = tail call ptr @strerror(i32 noundef %206) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %207) #16
  br label %904

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
  %222 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #16
  %223 = icmp eq i32 %222, -2
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %904

225:                                              ; preds = %220
  %226 = load i32, ptr %172, align 8, !tbaa !26
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %228, label %179, !llvm.loop !36

228:                                              ; preds = %155, %225, %166, %130, %78
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %243 = load i64, ptr %75, align 8, !tbaa !29
  br label %244

244:                                              ; preds = %400, %228
  %245 = phi i64 [ %243, %228 ], [ %396, %400 ]
  %246 = phi i1 [ false, %228 ], [ true, %400 ]
  %247 = load i32, ptr %28, align 8, !tbaa !18
  %248 = zext i32 %247 to i64
  %249 = tail call i64 @llvm.smin.i64(i64 %245, i64 %248)
  %250 = trunc i64 %249 to i32
  %251 = load ptr, ptr %229, align 8, !tbaa !20
  br i1 %246, label %256, label %252

252:                                              ; preds = %244
  %253 = and i64 %249, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %251, i8 0, i64 %253, i1 false)
  %254 = load ptr, ptr %229, align 8, !tbaa !20
  %255 = load i32, ptr %28, align 8, !tbaa !18
  br label %256

256:                                              ; preds = %252, %244
  %257 = phi i32 [ %255, %252 ], [ %247, %244 ]
  %258 = phi ptr [ %254, %252 ], [ %251, %244 ]
  store i32 %250, ptr %80, align 8, !tbaa !30
  store ptr %258, ptr %79, align 8, !tbaa !25
  %259 = icmp eq i32 %257, 0
  br i1 %259, label %260, label %291

260:                                              ; preds = %256
  %261 = load i32, ptr %231, align 4, !tbaa !19
  %262 = shl i32 %261, 1
  %263 = zext i32 %262 to i64
  %264 = tail call noalias ptr @malloc(i64 noundef %263) #17
  store ptr %264, ptr %229, align 8, !tbaa !20
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %383

267:                                              ; preds = %260
  %268 = load i32, ptr %230, align 8, !tbaa !21
  %269 = icmp eq i32 %268, 0
  %270 = load i32, ptr %231, align 4, !tbaa !19
  br i1 %269, label %272, label %271

271:                                              ; preds = %267
  store i32 %270, ptr %28, align 8, !tbaa !18
  br label %294

272:                                              ; preds = %267
  %273 = zext i32 %270 to i64
  %274 = tail call noalias ptr @malloc(i64 noundef %273) #17
  store ptr %274, ptr %232, align 8, !tbaa !22
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  tail call void @free(ptr noundef nonnull %264) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %383

277:                                              ; preds = %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %233, i8 0, i64 24, i1 false)
  %278 = load i32, ptr %234, align 8, !tbaa !23
  %279 = load i32, ptr %235, align 4, !tbaa !24
  %280 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %278, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %279, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %232, align 8, !tbaa !22
  tail call void @free(ptr noundef %283) #16
  %284 = load ptr, ptr %229, align 8, !tbaa !20
  tail call void @free(ptr noundef %284) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %383

285:                                              ; preds = %277
  store ptr null, ptr %79, align 8, !tbaa !25
  %286 = load i32, ptr %230, align 8, !tbaa !21
  %287 = load i32, ptr %231, align 4, !tbaa !19
  store i32 %287, ptr %28, align 8, !tbaa !18
  %288 = icmp eq i32 %286, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  store i32 %287, ptr %238, align 8, !tbaa !26
  %290 = load ptr, ptr %232, align 8, !tbaa !22
  store ptr %290, ptr %239, align 8, !tbaa !27
  store ptr %290, ptr %240, align 8, !tbaa !28
  br label %324

291:                                              ; preds = %256
  %292 = load i32, ptr %230, align 8, !tbaa !21
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %324, label %294

294:                                              ; preds = %291, %285, %271
  %295 = phi ptr [ %258, %291 ], [ null, %285 ], [ %258, %271 ]
  %296 = load i32, ptr %80, align 8, !tbaa !30
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %383, label %298

298:                                              ; preds = %294
  %299 = tail call ptr @__errno_location() #18
  br label %300

300:                                              ; preds = %317, %298
  %301 = phi ptr [ %295, %298 ], [ %322, %317 ]
  store i32 0, ptr %299, align 4, !tbaa !4
  store i32 0, ptr %236, align 4, !tbaa !17
  %302 = load i32, ptr %80, align 8, !tbaa !30
  %303 = tail call i32 @llvm.umin.i32(i32 %302, i32 1073741824)
  %304 = zext nneg i32 %303 to i64
  %305 = load i32, ptr %237, align 4, !tbaa !31
  %306 = tail call i64 @write(i32 noundef %305, ptr noundef %301, i64 noundef %304) #16
  %307 = trunc i64 %306 to i32
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %300
  %310 = load i32, ptr %299, align 4, !tbaa !4
  %311 = icmp eq i32 %310, 11
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  store i32 1, ptr %236, align 4, !tbaa !17
  %313 = load i32, ptr %299, align 4, !tbaa !4
  br label %314

314:                                              ; preds = %312, %309
  %315 = phi i32 [ %310, %309 ], [ %313, %312 ]
  %316 = tail call ptr @strerror(i32 noundef %315) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %316) #16
  br label %383

317:                                              ; preds = %300
  %318 = load i32, ptr %80, align 8, !tbaa !30
  %319 = sub i32 %318, %307
  store i32 %319, ptr %80, align 8, !tbaa !30
  %320 = load ptr, ptr %79, align 8, !tbaa !25
  %321 = and i64 %306, 2147483647
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store ptr %322, ptr %79, align 8, !tbaa !25
  %323 = icmp eq i32 %318, %307
  br i1 %323, label %383, label %300, !llvm.loop !32

324:                                              ; preds = %291, %289
  %325 = load i32, ptr %241, align 8, !tbaa !34
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %80, align 8, !tbaa !30
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %383, label %330

330:                                              ; preds = %327
  %331 = tail call i32 @deflateReset(ptr noundef nonnull %79) #16
  store i32 0, ptr %241, align 8, !tbaa !34
  br label %332

332:                                              ; preds = %330, %324
  %333 = load i32, ptr %238, align 8, !tbaa !26
  br label %334

334:                                              ; preds = %380, %332
  %335 = phi i32 [ %333, %332 ], [ %381, %380 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %375

337:                                              ; preds = %334
  %338 = load ptr, ptr %239, align 8, !tbaa !27
  %339 = load ptr, ptr %240, align 8, !tbaa !28
  %340 = icmp ugt ptr %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = tail call ptr @__errno_location() #18
  br label %343

343:                                              ; preds = %363, %341
  %344 = phi ptr [ %339, %341 ], [ %366, %363 ]
  %345 = phi ptr [ %338, %341 ], [ %367, %363 ]
  store i32 0, ptr %342, align 4, !tbaa !4
  store i32 0, ptr %236, align 4, !tbaa !17
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %344 to i64
  %348 = sub i64 %346, %347
  %349 = tail call i64 @llvm.smin.i64(i64 %348, i64 1073741824)
  %350 = and i64 %349, 4294967295
  %351 = load i32, ptr %237, align 4, !tbaa !31
  %352 = tail call i64 @write(i32 noundef %351, ptr noundef %344, i64 noundef %350) #16
  %353 = and i64 %352, 2147483648
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %343
  %356 = load i32, ptr %342, align 4, !tbaa !4
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  store i32 1, ptr %236, align 4, !tbaa !17
  %359 = load i32, ptr %342, align 4, !tbaa !4
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %356, %355 ], [ %359, %358 ]
  %362 = tail call ptr @strerror(i32 noundef %361) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %362) #16
  br label %383

363:                                              ; preds = %343
  %364 = load ptr, ptr %240, align 8, !tbaa !28
  %365 = and i64 %352, 2147483647
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  store ptr %366, ptr %240, align 8, !tbaa !28
  %367 = load ptr, ptr %239, align 8, !tbaa !27
  %368 = icmp ugt ptr %367, %366
  br i1 %368, label %343, label %369, !llvm.loop !35

369:                                              ; preds = %363
  %370 = load i32, ptr %238, align 8, !tbaa !26
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369, %337
  %373 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %373, ptr %238, align 8, !tbaa !26
  %374 = load ptr, ptr %232, align 8, !tbaa !22
  store ptr %374, ptr %239, align 8, !tbaa !27
  store ptr %374, ptr %240, align 8, !tbaa !28
  br label %375

375:                                              ; preds = %372, %369, %334
  %376 = phi i32 [ %370, %369 ], [ %373, %372 ], [ %335, %334 ]
  %377 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #16
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %383

380:                                              ; preds = %375
  %381 = load i32, ptr %238, align 8, !tbaa !26
  %382 = icmp eq i32 %376, %381
  br i1 %382, label %383, label %334, !llvm.loop !36

383:                                              ; preds = %317, %380, %379, %360, %327, %314, %294, %282, %276, %266
  %384 = phi i1 [ false, %327 ], [ true, %314 ], [ false, %294 ], [ true, %276 ], [ true, %360 ], [ true, %379 ], [ false, %380 ], [ true, %266 ], [ true, %282 ], [ false, %317 ]
  %385 = load i32, ptr %80, align 8, !tbaa !30
  %386 = sub i32 %250, %385
  %387 = zext i32 %386 to i64
  %388 = load i64, ptr %242, align 8, !tbaa !37
  %389 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %388, i64 %387), !nosanitize !38
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !38
  br i1 %390, label %391, label %392, !prof !39, !nosanitize !38

391:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

392:                                              ; preds = %383
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !38
  store i64 %393, ptr %242, align 8, !tbaa !37
  %394 = load i64, ptr %75, align 8, !tbaa !29
  %395 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %394, i64 %387), !nosanitize !38
  %396 = extractvalue { i64, i1 } %395, 0, !nosanitize !38
  %397 = extractvalue { i64, i1 } %395, 1, !nosanitize !38
  br i1 %397, label %398, label %399, !prof !39, !nosanitize !38

398:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

399:                                              ; preds = %392
  store i64 %396, ptr %75, align 8, !tbaa !29
  br i1 %384, label %904, label %400

400:                                              ; preds = %399
  %401 = icmp eq i64 %396, 0
  br i1 %401, label %402, label %244, !llvm.loop !40

402:                                              ; preds = %400
  %403 = load i32, ptr %28, align 8, !tbaa !18
  br label %404

404:                                              ; preds = %402, %73
  %405 = phi i32 [ %403, %402 ], [ %74, %73 ]
  %406 = zext i32 %405 to i64
  %407 = icmp ult i64 %20, %406
  %408 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %409 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %407, label %410, label %594

410:                                              ; preds = %404
  %411 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %413 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %414 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %415 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %416 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %417 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %419 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %420 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %423 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %424 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %425

425:                                              ; preds = %535, %410
  %426 = phi i64 [ %20, %410 ], [ %460, %535 ]
  %427 = phi ptr [ %0, %410 ], [ %459, %535 ]
  %428 = load i32, ptr %409, align 8, !tbaa !41
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %433, label %430

430:                                              ; preds = %425
  %431 = load ptr, ptr %408, align 8, !tbaa !42
  %432 = load ptr, ptr %411, align 8, !tbaa !20
  br label %435

433:                                              ; preds = %425
  %434 = load ptr, ptr %411, align 8, !tbaa !20
  store ptr %434, ptr %408, align 8, !tbaa !42
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi ptr [ %432, %430 ], [ %434, %433 ]
  %437 = phi ptr [ %431, %430 ], [ %434, %433 ]
  %438 = zext i32 %428 to i64
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 %438
  %440 = ptrtoint ptr %439 to i64
  %441 = ptrtoint ptr %436 to i64
  %442 = sub i64 %440, %441
  %443 = trunc i64 %442 to i32
  %444 = load i32, ptr %28, align 8, !tbaa !18
  %445 = sub i32 %444, %443
  %446 = zext i32 %445 to i64
  %447 = tail call i64 @llvm.umin.i64(i64 %426, i64 %446)
  %448 = trunc nuw i64 %447 to i32
  %449 = and i64 %442, 4294967295
  %450 = getelementptr inbounds nuw i8, ptr %436, i64 %449
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %450, ptr align 1 %427, i64 %447, i1 false)
  %451 = load i32, ptr %409, align 8, !tbaa !41
  %452 = add i32 %451, %448
  store i32 %452, ptr %409, align 8, !tbaa !41
  %453 = load i64, ptr %412, align 8, !tbaa !37
  %454 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %453, i64 %447), !nosanitize !38
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !38
  br i1 %455, label %456, label %457, !prof !39, !nosanitize !38

456:                                              ; preds = %886, %435
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

457:                                              ; preds = %435
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !38
  store i64 %458, ptr %412, align 8, !tbaa !37
  %459 = getelementptr inbounds nuw i8, ptr %427, i64 %447
  %460 = sub i64 %426, %447
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %904, label %462

462:                                              ; preds = %457
  %463 = load i32, ptr %28, align 8, !tbaa !18
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %496

465:                                              ; preds = %462
  %466 = load i32, ptr %414, align 4, !tbaa !19
  %467 = shl i32 %466, 1
  %468 = zext i32 %467 to i64
  %469 = tail call noalias ptr @malloc(i64 noundef %468) #17
  store ptr %469, ptr %411, align 8, !tbaa !20
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %472

471:                                              ; preds = %465
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %589

472:                                              ; preds = %465
  %473 = load i32, ptr %413, align 8, !tbaa !21
  %474 = icmp eq i32 %473, 0
  %475 = load i32, ptr %414, align 4, !tbaa !19
  br i1 %474, label %477, label %476

476:                                              ; preds = %472
  store i32 %475, ptr %28, align 8, !tbaa !18
  br label %499

477:                                              ; preds = %472
  %478 = zext i32 %475 to i64
  %479 = tail call noalias ptr @malloc(i64 noundef %478) #17
  store ptr %479, ptr %415, align 8, !tbaa !22
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  tail call void @free(ptr noundef nonnull %469) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %589

482:                                              ; preds = %477
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %416, i8 0, i64 24, i1 false)
  %483 = load i32, ptr %417, align 8, !tbaa !23
  %484 = load i32, ptr %418, align 4, !tbaa !24
  %485 = tail call i32 @deflateInit2_(ptr noundef nonnull %408, i32 noundef %483, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %484, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %482
  %488 = load ptr, ptr %415, align 8, !tbaa !22
  tail call void @free(ptr noundef %488) #16
  %489 = load ptr, ptr %411, align 8, !tbaa !20
  tail call void @free(ptr noundef %489) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %589

490:                                              ; preds = %482
  store ptr null, ptr %408, align 8, !tbaa !25
  %491 = load i32, ptr %413, align 8, !tbaa !21
  %492 = load i32, ptr %414, align 4, !tbaa !19
  store i32 %492, ptr %28, align 8, !tbaa !18
  %493 = icmp eq i32 %491, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %490
  store i32 %492, ptr %421, align 8, !tbaa !26
  %495 = load ptr, ptr %415, align 8, !tbaa !22
  store ptr %495, ptr %422, align 8, !tbaa !27
  store ptr %495, ptr %423, align 8, !tbaa !28
  br label %529

496:                                              ; preds = %462
  %497 = load i32, ptr %413, align 8, !tbaa !21
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %529, label %499

499:                                              ; preds = %496, %490, %476
  %500 = load i32, ptr %409, align 8, !tbaa !30
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %535, label %502

502:                                              ; preds = %499
  %503 = tail call ptr @__errno_location() #18
  %504 = load ptr, ptr %408, align 8, !tbaa !25
  br label %505

505:                                              ; preds = %522, %502
  %506 = phi ptr [ %504, %502 ], [ %527, %522 ]
  store i32 0, ptr %503, align 4, !tbaa !4
  store i32 0, ptr %419, align 4, !tbaa !17
  %507 = load i32, ptr %409, align 8, !tbaa !30
  %508 = tail call i32 @llvm.umin.i32(i32 %507, i32 1073741824)
  %509 = zext nneg i32 %508 to i64
  %510 = load i32, ptr %420, align 4, !tbaa !31
  %511 = tail call i64 @write(i32 noundef %510, ptr noundef %506, i64 noundef %509) #16
  %512 = trunc i64 %511 to i32
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %522

514:                                              ; preds = %505
  %515 = load i32, ptr %503, align 4, !tbaa !4
  %516 = icmp eq i32 %515, 11
  br i1 %516, label %517, label %519

517:                                              ; preds = %514
  store i32 1, ptr %419, align 4, !tbaa !17
  %518 = load i32, ptr %503, align 4, !tbaa !4
  br label %519

519:                                              ; preds = %517, %514
  %520 = phi i32 [ %515, %514 ], [ %518, %517 ]
  %521 = tail call ptr @strerror(i32 noundef %520) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %521) #16
  br label %589

522:                                              ; preds = %505
  %523 = load i32, ptr %409, align 8, !tbaa !30
  %524 = sub i32 %523, %512
  store i32 %524, ptr %409, align 8, !tbaa !30
  %525 = load ptr, ptr %408, align 8, !tbaa !25
  %526 = and i64 %511, 2147483647
  %527 = getelementptr inbounds nuw i8, ptr %525, i64 %526
  store ptr %527, ptr %408, align 8, !tbaa !25
  %528 = icmp eq i32 %523, %512
  br i1 %528, label %535, label %505, !llvm.loop !32

529:                                              ; preds = %496, %494
  %530 = load i32, ptr %424, align 8, !tbaa !34
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %538, label %532

532:                                              ; preds = %529
  %533 = load i32, ptr %409, align 8, !tbaa !30
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %522, %586, %532, %499
  br label %425

536:                                              ; preds = %532
  %537 = tail call i32 @deflateReset(ptr noundef nonnull %408) #16
  store i32 0, ptr %424, align 8, !tbaa !34
  br label %538

538:                                              ; preds = %536, %529
  %539 = load i32, ptr %421, align 8, !tbaa !26
  br label %540

540:                                              ; preds = %586, %538
  %541 = phi i32 [ %539, %538 ], [ %587, %586 ]
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %581

543:                                              ; preds = %540
  %544 = load ptr, ptr %422, align 8, !tbaa !27
  %545 = load ptr, ptr %423, align 8, !tbaa !28
  %546 = icmp ugt ptr %544, %545
  br i1 %546, label %547, label %578

547:                                              ; preds = %543
  %548 = tail call ptr @__errno_location() #18
  br label %549

549:                                              ; preds = %569, %547
  %550 = phi ptr [ %545, %547 ], [ %572, %569 ]
  %551 = phi ptr [ %544, %547 ], [ %573, %569 ]
  store i32 0, ptr %548, align 4, !tbaa !4
  store i32 0, ptr %419, align 4, !tbaa !17
  %552 = ptrtoint ptr %551 to i64
  %553 = ptrtoint ptr %550 to i64
  %554 = sub i64 %552, %553
  %555 = tail call i64 @llvm.smin.i64(i64 %554, i64 1073741824)
  %556 = and i64 %555, 4294967295
  %557 = load i32, ptr %420, align 4, !tbaa !31
  %558 = tail call i64 @write(i32 noundef %557, ptr noundef %550, i64 noundef %556) #16
  %559 = and i64 %558, 2147483648
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %569, label %561

561:                                              ; preds = %549
  %562 = load i32, ptr %548, align 4, !tbaa !4
  %563 = icmp eq i32 %562, 11
  br i1 %563, label %564, label %566

564:                                              ; preds = %561
  store i32 1, ptr %419, align 4, !tbaa !17
  %565 = load i32, ptr %548, align 4, !tbaa !4
  br label %566

566:                                              ; preds = %564, %561
  %567 = phi i32 [ %562, %561 ], [ %565, %564 ]
  %568 = tail call ptr @strerror(i32 noundef %567) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %568) #16
  br label %589

569:                                              ; preds = %549
  %570 = load ptr, ptr %423, align 8, !tbaa !28
  %571 = and i64 %558, 2147483647
  %572 = getelementptr inbounds nuw i8, ptr %570, i64 %571
  store ptr %572, ptr %423, align 8, !tbaa !28
  %573 = load ptr, ptr %422, align 8, !tbaa !27
  %574 = icmp ugt ptr %573, %572
  br i1 %574, label %549, label %575, !llvm.loop !35

575:                                              ; preds = %569
  %576 = load i32, ptr %421, align 8, !tbaa !26
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %575, %543
  %579 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %579, ptr %421, align 8, !tbaa !26
  %580 = load ptr, ptr %415, align 8, !tbaa !22
  store ptr %580, ptr %422, align 8, !tbaa !27
  store ptr %580, ptr %423, align 8, !tbaa !28
  br label %581

581:                                              ; preds = %578, %575, %540
  %582 = phi i32 [ %576, %575 ], [ %579, %578 ], [ %541, %540 ]
  %583 = tail call i32 @deflate(ptr noundef nonnull %408, i32 noundef 0) #16
  %584 = icmp eq i32 %583, -2
  br i1 %584, label %585, label %586

585:                                              ; preds = %581
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %589

586:                                              ; preds = %581
  %587 = load i32, ptr %421, align 8, !tbaa !26
  %588 = icmp eq i32 %582, %587
  br i1 %588, label %535, label %540, !llvm.loop !36

589:                                              ; preds = %585, %566, %519, %487, %481, %471
  %590 = load i32, ptr %419, align 4, !tbaa !17
  %591 = icmp eq i32 %590, 0
  %592 = sub i64 %20, %460
  %593 = select i1 %591, i64 0, i64 %592
  br label %904

594:                                              ; preds = %404
  %595 = load i32, ptr %409, align 8, !tbaa !41
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %742, label %597

597:                                              ; preds = %594
  %598 = icmp eq i32 %405, 0
  br i1 %598, label %599, label %640

599:                                              ; preds = %597
  %600 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %601 = load i32, ptr %600, align 4, !tbaa !19
  %602 = shl i32 %601, 1
  %603 = zext i32 %602 to i64
  %604 = tail call noalias ptr @malloc(i64 noundef %603) #17
  %605 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %604, ptr %605, align 8, !tbaa !20
  %606 = icmp eq ptr %604, null
  br i1 %606, label %607, label %608

607:                                              ; preds = %599
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

608:                                              ; preds = %599
  %609 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %610 = load i32, ptr %609, align 8, !tbaa !21
  %611 = icmp eq i32 %610, 0
  %612 = load i32, ptr %600, align 4, !tbaa !19
  br i1 %611, label %614, label %613

613:                                              ; preds = %608
  store i32 %612, ptr %28, align 8, !tbaa !18
  br label %644

614:                                              ; preds = %608
  %615 = zext i32 %612 to i64
  %616 = tail call noalias ptr @malloc(i64 noundef %615) #17
  %617 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %616, ptr %617, align 8, !tbaa !22
  %618 = icmp eq ptr %616, null
  br i1 %618, label %619, label %620

619:                                              ; preds = %614
  tail call void @free(ptr noundef nonnull %604) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

620:                                              ; preds = %614
  %621 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %622 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %621, i8 0, i64 24, i1 false)
  %623 = load i32, ptr %622, align 8, !tbaa !23
  %624 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %625 = load i32, ptr %624, align 4, !tbaa !24
  %626 = tail call i32 @deflateInit2_(ptr noundef nonnull %408, i32 noundef %623, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %625, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %620
  %629 = load ptr, ptr %617, align 8, !tbaa !22
  tail call void @free(ptr noundef %629) #16
  %630 = load ptr, ptr %605, align 8, !tbaa !20
  tail call void @free(ptr noundef %630) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %904

631:                                              ; preds = %620
  store ptr null, ptr %408, align 8, !tbaa !25
  %632 = load i32, ptr %609, align 8, !tbaa !21
  %633 = load i32, ptr %600, align 4, !tbaa !19
  store i32 %633, ptr %28, align 8, !tbaa !18
  %634 = icmp eq i32 %632, 0
  br i1 %634, label %635, label %644

635:                                              ; preds = %631
  %636 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %633, ptr %636, align 8, !tbaa !26
  %637 = load ptr, ptr %617, align 8, !tbaa !22
  %638 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %637, ptr %638, align 8, !tbaa !27
  %639 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %637, ptr %639, align 8, !tbaa !28
  br label %676

640:                                              ; preds = %597
  %641 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %642 = load i32, ptr %641, align 8, !tbaa !21
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %676, label %644

644:                                              ; preds = %640, %631, %613
  %645 = load i32, ptr %409, align 8, !tbaa !30
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %742, label %647

647:                                              ; preds = %644
  %648 = tail call ptr @__errno_location() #18
  %649 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %650 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %651 = load ptr, ptr %408, align 8, !tbaa !25
  br label %652

652:                                              ; preds = %669, %647
  %653 = phi ptr [ %651, %647 ], [ %674, %669 ]
  store i32 0, ptr %648, align 4, !tbaa !4
  store i32 0, ptr %649, align 4, !tbaa !17
  %654 = load i32, ptr %409, align 8, !tbaa !30
  %655 = tail call i32 @llvm.umin.i32(i32 %654, i32 1073741824)
  %656 = zext nneg i32 %655 to i64
  %657 = load i32, ptr %650, align 4, !tbaa !31
  %658 = tail call i64 @write(i32 noundef %657, ptr noundef %653, i64 noundef %656) #16
  %659 = trunc i64 %658 to i32
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %669

661:                                              ; preds = %652
  %662 = load i32, ptr %648, align 4, !tbaa !4
  %663 = icmp eq i32 %662, 11
  br i1 %663, label %664, label %666

664:                                              ; preds = %661
  store i32 1, ptr %649, align 4, !tbaa !17
  %665 = load i32, ptr %648, align 4, !tbaa !4
  br label %666

666:                                              ; preds = %664, %661
  %667 = phi i32 [ %662, %661 ], [ %665, %664 ]
  %668 = tail call ptr @strerror(i32 noundef %667) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %668) #16
  br label %904

669:                                              ; preds = %652
  %670 = load i32, ptr %409, align 8, !tbaa !30
  %671 = sub i32 %670, %659
  store i32 %671, ptr %409, align 8, !tbaa !30
  %672 = load ptr, ptr %408, align 8, !tbaa !25
  %673 = and i64 %658, 2147483647
  %674 = getelementptr inbounds nuw i8, ptr %672, i64 %673
  store ptr %674, ptr %408, align 8, !tbaa !25
  %675 = icmp eq i32 %670, %659
  br i1 %675, label %742, label %652, !llvm.loop !32

676:                                              ; preds = %640, %635
  %677 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %678 = load i32, ptr %677, align 8, !tbaa !34
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %685, label %680

680:                                              ; preds = %676
  %681 = load i32, ptr %409, align 8, !tbaa !30
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %742, label %683

683:                                              ; preds = %680
  %684 = tail call i32 @deflateReset(ptr noundef nonnull %408) #16
  store i32 0, ptr %677, align 8, !tbaa !34
  br label %685

685:                                              ; preds = %683, %676
  %686 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %687 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %688 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %689 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %690 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %692 = load i32, ptr %686, align 8, !tbaa !26
  br label %693

693:                                              ; preds = %739, %685
  %694 = phi i32 [ %692, %685 ], [ %740, %739 ]
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %734

696:                                              ; preds = %693
  %697 = load ptr, ptr %687, align 8, !tbaa !27
  %698 = load ptr, ptr %688, align 8, !tbaa !28
  %699 = icmp ugt ptr %697, %698
  br i1 %699, label %700, label %731

700:                                              ; preds = %696
  %701 = tail call ptr @__errno_location() #18
  br label %702

702:                                              ; preds = %722, %700
  %703 = phi ptr [ %698, %700 ], [ %725, %722 ]
  %704 = phi ptr [ %697, %700 ], [ %726, %722 ]
  store i32 0, ptr %701, align 4, !tbaa !4
  store i32 0, ptr %689, align 4, !tbaa !17
  %705 = ptrtoint ptr %704 to i64
  %706 = ptrtoint ptr %703 to i64
  %707 = sub i64 %705, %706
  %708 = tail call i64 @llvm.smin.i64(i64 %707, i64 1073741824)
  %709 = and i64 %708, 4294967295
  %710 = load i32, ptr %690, align 4, !tbaa !31
  %711 = tail call i64 @write(i32 noundef %710, ptr noundef %703, i64 noundef %709) #16
  %712 = and i64 %711, 2147483648
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %722, label %714

714:                                              ; preds = %702
  %715 = load i32, ptr %701, align 4, !tbaa !4
  %716 = icmp eq i32 %715, 11
  br i1 %716, label %717, label %719

717:                                              ; preds = %714
  store i32 1, ptr %689, align 4, !tbaa !17
  %718 = load i32, ptr %701, align 4, !tbaa !4
  br label %719

719:                                              ; preds = %717, %714
  %720 = phi i32 [ %715, %714 ], [ %718, %717 ]
  %721 = tail call ptr @strerror(i32 noundef %720) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %721) #16
  br label %904

722:                                              ; preds = %702
  %723 = load ptr, ptr %688, align 8, !tbaa !28
  %724 = and i64 %711, 2147483647
  %725 = getelementptr inbounds nuw i8, ptr %723, i64 %724
  store ptr %725, ptr %688, align 8, !tbaa !28
  %726 = load ptr, ptr %687, align 8, !tbaa !27
  %727 = icmp ugt ptr %726, %725
  br i1 %727, label %702, label %728, !llvm.loop !35

728:                                              ; preds = %722
  %729 = load i32, ptr %686, align 8, !tbaa !26
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %734

731:                                              ; preds = %728, %696
  %732 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %732, ptr %686, align 8, !tbaa !26
  %733 = load ptr, ptr %691, align 8, !tbaa !22
  store ptr %733, ptr %687, align 8, !tbaa !27
  store ptr %733, ptr %688, align 8, !tbaa !28
  br label %734

734:                                              ; preds = %731, %728, %693
  %735 = phi i32 [ %729, %728 ], [ %732, %731 ], [ %694, %693 ]
  %736 = tail call i32 @deflate(ptr noundef nonnull %408, i32 noundef 0) #16
  %737 = icmp eq i32 %736, -2
  br i1 %737, label %738, label %739

738:                                              ; preds = %734
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %904

739:                                              ; preds = %734
  %740 = load i32, ptr %686, align 8, !tbaa !26
  %741 = icmp eq i32 %735, %740
  br i1 %741, label %742, label %693, !llvm.loop !36

742:                                              ; preds = %669, %739, %680, %644, %594
  store ptr %0, ptr %408, align 8, !tbaa !42
  %743 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %744 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %745 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %746 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %747 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %748 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %749 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %750 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %751 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %752 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %753 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %754 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %755 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %756 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %757

757:                                              ; preds = %902, %742
  %758 = phi i64 [ %20, %742 ], [ %896, %902 ]
  %759 = tail call i64 @llvm.umin.i64(i64 %758, i64 4294967295)
  %760 = trunc nuw i64 %759 to i32
  store i32 %760, ptr %409, align 8, !tbaa !41
  %761 = load i32, ptr %28, align 8, !tbaa !18
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %794

763:                                              ; preds = %757
  %764 = load i32, ptr %744, align 4, !tbaa !19
  %765 = shl i32 %764, 1
  %766 = zext i32 %765 to i64
  %767 = tail call noalias ptr @malloc(i64 noundef %766) #17
  store ptr %767, ptr %745, align 8, !tbaa !20
  %768 = icmp eq ptr %767, null
  br i1 %768, label %769, label %770

769:                                              ; preds = %763
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %886

770:                                              ; preds = %763
  %771 = load i32, ptr %743, align 8, !tbaa !21
  %772 = icmp eq i32 %771, 0
  %773 = load i32, ptr %744, align 4, !tbaa !19
  br i1 %772, label %775, label %774

774:                                              ; preds = %770
  store i32 %773, ptr %28, align 8, !tbaa !18
  br label %797

775:                                              ; preds = %770
  %776 = zext i32 %773 to i64
  %777 = tail call noalias ptr @malloc(i64 noundef %776) #17
  store ptr %777, ptr %746, align 8, !tbaa !22
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %780

779:                                              ; preds = %775
  tail call void @free(ptr noundef nonnull %767) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %886

780:                                              ; preds = %775
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %747, i8 0, i64 24, i1 false)
  %781 = load i32, ptr %748, align 8, !tbaa !23
  %782 = load i32, ptr %749, align 4, !tbaa !24
  %783 = tail call i32 @deflateInit2_(ptr noundef nonnull %408, i32 noundef %781, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %782, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %788, label %785

785:                                              ; preds = %780
  %786 = load ptr, ptr %746, align 8, !tbaa !22
  tail call void @free(ptr noundef %786) #16
  %787 = load ptr, ptr %745, align 8, !tbaa !20
  tail call void @free(ptr noundef %787) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %886

788:                                              ; preds = %780
  store ptr null, ptr %408, align 8, !tbaa !25
  %789 = load i32, ptr %743, align 8, !tbaa !21
  %790 = load i32, ptr %744, align 4, !tbaa !19
  store i32 %790, ptr %28, align 8, !tbaa !18
  %791 = icmp eq i32 %789, 0
  br i1 %791, label %792, label %797

792:                                              ; preds = %788
  store i32 %790, ptr %752, align 8, !tbaa !26
  %793 = load ptr, ptr %746, align 8, !tbaa !22
  store ptr %793, ptr %753, align 8, !tbaa !27
  store ptr %793, ptr %754, align 8, !tbaa !28
  br label %827

794:                                              ; preds = %757
  %795 = load i32, ptr %743, align 8, !tbaa !21
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %827, label %797

797:                                              ; preds = %794, %788, %774
  %798 = load i32, ptr %409, align 8, !tbaa !30
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %886, label %800

800:                                              ; preds = %797
  %801 = tail call ptr @__errno_location() #18
  %802 = load ptr, ptr %408, align 8, !tbaa !25
  br label %803

803:                                              ; preds = %820, %800
  %804 = phi ptr [ %802, %800 ], [ %825, %820 ]
  store i32 0, ptr %801, align 4, !tbaa !4
  store i32 0, ptr %750, align 4, !tbaa !17
  %805 = load i32, ptr %409, align 8, !tbaa !30
  %806 = tail call i32 @llvm.umin.i32(i32 %805, i32 1073741824)
  %807 = zext nneg i32 %806 to i64
  %808 = load i32, ptr %751, align 4, !tbaa !31
  %809 = tail call i64 @write(i32 noundef %808, ptr noundef %804, i64 noundef %807) #16
  %810 = trunc i64 %809 to i32
  %811 = icmp slt i32 %810, 0
  br i1 %811, label %812, label %820

812:                                              ; preds = %803
  %813 = load i32, ptr %801, align 4, !tbaa !4
  %814 = icmp eq i32 %813, 11
  br i1 %814, label %815, label %817

815:                                              ; preds = %812
  store i32 1, ptr %750, align 4, !tbaa !17
  %816 = load i32, ptr %801, align 4, !tbaa !4
  br label %817

817:                                              ; preds = %815, %812
  %818 = phi i32 [ %813, %812 ], [ %816, %815 ]
  %819 = tail call ptr @strerror(i32 noundef %818) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %819) #16
  br label %886

820:                                              ; preds = %803
  %821 = load i32, ptr %409, align 8, !tbaa !30
  %822 = sub i32 %821, %810
  store i32 %822, ptr %409, align 8, !tbaa !30
  %823 = load ptr, ptr %408, align 8, !tbaa !25
  %824 = and i64 %809, 2147483647
  %825 = getelementptr inbounds nuw i8, ptr %823, i64 %824
  store ptr %825, ptr %408, align 8, !tbaa !25
  %826 = icmp eq i32 %821, %810
  br i1 %826, label %886, label %803, !llvm.loop !32

827:                                              ; preds = %794, %792
  %828 = load i32, ptr %755, align 8, !tbaa !34
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %835, label %830

830:                                              ; preds = %827
  %831 = load i32, ptr %409, align 8, !tbaa !30
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %886, label %833

833:                                              ; preds = %830
  %834 = tail call i32 @deflateReset(ptr noundef nonnull %408) #16
  store i32 0, ptr %755, align 8, !tbaa !34
  br label %835

835:                                              ; preds = %833, %827
  %836 = load i32, ptr %752, align 8, !tbaa !26
  br label %837

837:                                              ; preds = %883, %835
  %838 = phi i32 [ %836, %835 ], [ %884, %883 ]
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %878

840:                                              ; preds = %837
  %841 = load ptr, ptr %753, align 8, !tbaa !27
  %842 = load ptr, ptr %754, align 8, !tbaa !28
  %843 = icmp ugt ptr %841, %842
  br i1 %843, label %844, label %875

844:                                              ; preds = %840
  %845 = tail call ptr @__errno_location() #18
  br label %846

846:                                              ; preds = %866, %844
  %847 = phi ptr [ %842, %844 ], [ %869, %866 ]
  %848 = phi ptr [ %841, %844 ], [ %870, %866 ]
  store i32 0, ptr %845, align 4, !tbaa !4
  store i32 0, ptr %750, align 4, !tbaa !17
  %849 = ptrtoint ptr %848 to i64
  %850 = ptrtoint ptr %847 to i64
  %851 = sub i64 %849, %850
  %852 = tail call i64 @llvm.smin.i64(i64 %851, i64 1073741824)
  %853 = and i64 %852, 4294967295
  %854 = load i32, ptr %751, align 4, !tbaa !31
  %855 = tail call i64 @write(i32 noundef %854, ptr noundef %847, i64 noundef %853) #16
  %856 = and i64 %855, 2147483648
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %866, label %858

858:                                              ; preds = %846
  %859 = load i32, ptr %845, align 4, !tbaa !4
  %860 = icmp eq i32 %859, 11
  br i1 %860, label %861, label %863

861:                                              ; preds = %858
  store i32 1, ptr %750, align 4, !tbaa !17
  %862 = load i32, ptr %845, align 4, !tbaa !4
  br label %863

863:                                              ; preds = %861, %858
  %864 = phi i32 [ %859, %858 ], [ %862, %861 ]
  %865 = tail call ptr @strerror(i32 noundef %864) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %865) #16
  br label %886

866:                                              ; preds = %846
  %867 = load ptr, ptr %754, align 8, !tbaa !28
  %868 = and i64 %855, 2147483647
  %869 = getelementptr inbounds nuw i8, ptr %867, i64 %868
  store ptr %869, ptr %754, align 8, !tbaa !28
  %870 = load ptr, ptr %753, align 8, !tbaa !27
  %871 = icmp ugt ptr %870, %869
  br i1 %871, label %846, label %872, !llvm.loop !35

872:                                              ; preds = %866
  %873 = load i32, ptr %752, align 8, !tbaa !26
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %878

875:                                              ; preds = %872, %840
  %876 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %876, ptr %752, align 8, !tbaa !26
  %877 = load ptr, ptr %746, align 8, !tbaa !22
  store ptr %877, ptr %753, align 8, !tbaa !27
  store ptr %877, ptr %754, align 8, !tbaa !28
  br label %878

878:                                              ; preds = %875, %872, %837
  %879 = phi i32 [ %873, %872 ], [ %876, %875 ], [ %838, %837 ]
  %880 = tail call i32 @deflate(ptr noundef nonnull %408, i32 noundef 0) #16
  %881 = icmp eq i32 %880, -2
  br i1 %881, label %882, label %883

882:                                              ; preds = %878
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %886

883:                                              ; preds = %878
  %884 = load i32, ptr %752, align 8, !tbaa !26
  %885 = icmp eq i32 %879, %884
  br i1 %885, label %886, label %837, !llvm.loop !36

886:                                              ; preds = %820, %883, %882, %863, %830, %817, %797, %785, %779, %769
  %887 = phi i1 [ false, %830 ], [ true, %817 ], [ false, %797 ], [ true, %779 ], [ true, %863 ], [ true, %882 ], [ false, %883 ], [ true, %769 ], [ true, %785 ], [ false, %820 ]
  %888 = load i32, ptr %409, align 8, !tbaa !41
  %889 = sub i32 %760, %888
  %890 = zext i32 %889 to i64
  %891 = load i64, ptr %756, align 8, !tbaa !37
  %892 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %891, i64 %890), !nosanitize !38
  %893 = extractvalue { i64, i1 } %892, 1, !nosanitize !38
  br i1 %893, label %456, label %894, !prof !39, !nosanitize !38

894:                                              ; preds = %886
  %895 = extractvalue { i64, i1 } %892, 0, !nosanitize !38
  store i64 %895, ptr %756, align 8, !tbaa !37
  %896 = sub i64 %758, %890
  br i1 %887, label %897, label %902

897:                                              ; preds = %894
  %898 = load i32, ptr %750, align 4, !tbaa !17
  %899 = icmp eq i32 %898, 0
  %900 = sub i64 %20, %896
  %901 = select i1 %899, i64 0, i64 %900
  br label %904

902:                                              ; preds = %894
  %903 = icmp eq i64 %896, 0
  br i1 %903, label %904, label %757, !llvm.loop !43

904:                                              ; preds = %399, %902, %457, %40, %52, %61, %93, %105, %114, %152, %205, %224, %589, %607, %619, %628, %666, %719, %738, %897
  %905 = phi i64 [ %901, %897 ], [ %20, %457 ], [ %20, %902 ], [ %593, %589 ], [ 0, %628 ], [ 0, %52 ], [ 0, %607 ], [ 0, %40 ], [ 0, %61 ], [ 0, %93 ], [ 0, %114 ], [ 0, %152 ], [ 0, %105 ], [ 0, %205 ], [ 0, %224 ], [ 0, %666 ], [ 0, %619 ], [ 0, %719 ], [ 0, %738 ], [ 0, %399 ]
  %906 = udiv i64 %905, %1
  br label %907

907:                                              ; preds = %904, %25, %6, %14, %4, %24
  %908 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %24 ], [ 0, %14 ], [ %906, %904 ], [ 0, %25 ]
  ret i64 %908
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1258, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1258

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1258, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %348, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %173, label %26

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
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #17
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %35, ptr %36, align 8, !tbaa !20
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

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
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #17
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %47, ptr %48, align 8, !tbaa !22
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %35) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %54, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !22
  tail call void @free(ptr noundef %60) #16
  %61 = load ptr, ptr %36, align 8, !tbaa !20
  tail call void @free(ptr noundef %61) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

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
  br i1 %77, label %173, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @__errno_location() #18
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
  %89 = tail call i64 @write(i32 noundef %88, ptr noundef %84, i64 noundef %87) #16
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
  %99 = tail call ptr @strerror(i32 noundef %98) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %99) #16
  br label %1258

100:                                              ; preds = %83
  %101 = load i32, ptr %23, align 8, !tbaa !30
  %102 = sub i32 %101, %90
  store i32 %102, ptr %23, align 8, !tbaa !30
  %103 = load ptr, ptr %6, align 8, !tbaa !25
  %104 = and i64 %89, 2147483647
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 %104
  store ptr %105, ptr %6, align 8, !tbaa !25
  %106 = icmp eq i32 %101, %90
  br i1 %106, label %173, label %83, !llvm.loop !32

107:                                              ; preds = %71, %66
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %109 = load i32, ptr %108, align 8, !tbaa !34
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %23, align 8, !tbaa !30
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %173, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
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
  %132 = tail call ptr @__errno_location() #18
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
  %142 = tail call i64 @write(i32 noundef %141, ptr noundef %134, i64 noundef %140) #16
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
  %152 = tail call ptr @strerror(i32 noundef %151) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %152) #16
  br label %1258

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
  %167 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %168 = icmp eq i32 %167, -2
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1258

170:                                              ; preds = %165
  %171 = load i32, ptr %117, align 8, !tbaa !26
  %172 = icmp eq i32 %166, %171
  br i1 %172, label %173, label %124, !llvm.loop !36

173:                                              ; preds = %100, %170, %111, %75, %22
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

190:                                              ; preds = %346, %173
  %191 = phi i64 [ %189, %173 ], [ %342, %346 ]
  %192 = phi i1 [ false, %173 ], [ true, %346 ]
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
  store i32 %196, ptr %23, align 8, !tbaa !30
  store ptr %204, ptr %6, align 8, !tbaa !25
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %206, label %237

206:                                              ; preds = %202
  %207 = load i32, ptr %177, align 4, !tbaa !19
  %208 = shl i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #17
  store ptr %210, ptr %175, align 8, !tbaa !20
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %329

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
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #17
  store ptr %220, ptr %178, align 8, !tbaa !22
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @free(ptr noundef nonnull %210) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %329

223:                                              ; preds = %218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %179, i8 0, i64 24, i1 false)
  %224 = load i32, ptr %180, align 8, !tbaa !23
  %225 = load i32, ptr %181, align 4, !tbaa !24
  %226 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %224, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %225, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %178, align 8, !tbaa !22
  tail call void @free(ptr noundef %229) #16
  %230 = load ptr, ptr %175, align 8, !tbaa !20
  tail call void @free(ptr noundef %230) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %329

231:                                              ; preds = %223
  store ptr null, ptr %6, align 8, !tbaa !25
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
  %242 = load i32, ptr %23, align 8, !tbaa !30
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %329, label %244

244:                                              ; preds = %240
  %245 = tail call ptr @__errno_location() #18
  br label %246

246:                                              ; preds = %263, %244
  %247 = phi ptr [ %241, %244 ], [ %268, %263 ]
  store i32 0, ptr %245, align 4, !tbaa !4
  store i32 0, ptr %182, align 4, !tbaa !17
  %248 = load i32, ptr %23, align 8, !tbaa !30
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 1073741824)
  %250 = zext nneg i32 %249 to i64
  %251 = load i32, ptr %183, align 4, !tbaa !31
  %252 = tail call i64 @write(i32 noundef %251, ptr noundef %247, i64 noundef %250) #16
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
  %262 = tail call ptr @strerror(i32 noundef %261) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %262) #16
  br label %329

263:                                              ; preds = %246
  %264 = load i32, ptr %23, align 8, !tbaa !30
  %265 = sub i32 %264, %253
  store i32 %265, ptr %23, align 8, !tbaa !30
  %266 = load ptr, ptr %6, align 8, !tbaa !25
  %267 = and i64 %252, 2147483647
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 %267
  store ptr %268, ptr %6, align 8, !tbaa !25
  %269 = icmp eq i32 %264, %253
  br i1 %269, label %329, label %246, !llvm.loop !32

270:                                              ; preds = %237, %235
  %271 = load i32, ptr %187, align 8, !tbaa !34
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %23, align 8, !tbaa !30
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %329, label %276

276:                                              ; preds = %273
  %277 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
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
  %288 = tail call ptr @__errno_location() #18
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
  %298 = tail call i64 @write(i32 noundef %297, ptr noundef %290, i64 noundef %296) #16
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
  %308 = tail call ptr @strerror(i32 noundef %307) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %308) #16
  br label %329

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
  %323 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %324 = icmp eq i32 %323, -2
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %329

326:                                              ; preds = %321
  %327 = load i32, ptr %184, align 8, !tbaa !26
  %328 = icmp eq i32 %322, %327
  br i1 %328, label %329, label %280, !llvm.loop !36

329:                                              ; preds = %263, %326, %325, %306, %273, %260, %240, %228, %222, %212
  %330 = phi i1 [ false, %273 ], [ true, %260 ], [ false, %240 ], [ true, %222 ], [ true, %306 ], [ true, %325 ], [ false, %326 ], [ true, %212 ], [ true, %228 ], [ false, %263 ]
  %331 = load i32, ptr %23, align 8, !tbaa !30
  %332 = sub i32 %196, %331
  %333 = zext i32 %332 to i64
  %334 = load i64, ptr %188, align 8, !tbaa !37
  %335 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %334, i64 %333), !nosanitize !38
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !38
  br i1 %336, label %337, label %338, !prof !39, !nosanitize !38

337:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

338:                                              ; preds = %329
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !38
  store i64 %339, ptr %188, align 8, !tbaa !37
  %340 = load i64, ptr %19, align 8, !tbaa !29
  %341 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %340, i64 %333), !nosanitize !38
  %342 = extractvalue { i64, i1 } %341, 0, !nosanitize !38
  %343 = extractvalue { i64, i1 } %341, 1, !nosanitize !38
  br i1 %343, label %344, label %345, !prof !39, !nosanitize !38

344:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

345:                                              ; preds = %338
  store i64 %342, ptr %19, align 8, !tbaa !29
  br i1 %330, label %1258, label %346

346:                                              ; preds = %345
  %347 = icmp eq i64 %342, 0
  br i1 %347, label %348, label %190, !llvm.loop !40

348:                                              ; preds = %346, %18
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %350 = load i32, ptr %349, align 8, !tbaa !18
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %388, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %354 = load i32, ptr %353, align 8, !tbaa !30
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %360, label %356

356:                                              ; preds = %352
  %357 = load ptr, ptr %6, align 8, !tbaa !25
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %359 = load ptr, ptr %358, align 8, !tbaa !20
  br label %363

360:                                              ; preds = %352
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %362 = load ptr, ptr %361, align 8, !tbaa !20
  store ptr %362, ptr %6, align 8, !tbaa !25
  br label %363

363:                                              ; preds = %356, %360
  %364 = phi ptr [ %359, %356 ], [ %362, %360 ]
  %365 = phi ptr [ %357, %356 ], [ %362, %360 ]
  %366 = zext i32 %354 to i64
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  %368 = ptrtoint ptr %367 to i64
  %369 = ptrtoint ptr %364 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = icmp ugt i32 %350, %371
  %373 = trunc i32 %1 to i8
  br i1 %372, label %374, label %387

374:                                              ; preds = %363
  %375 = and i64 %370, 4294967295
  %376 = getelementptr inbounds nuw i8, ptr %364, i64 %375
  store i8 %373, ptr %376, align 1, !tbaa !44
  %377 = load i32, ptr %353, align 8, !tbaa !30
  %378 = add i32 %377, 1
  store i32 %378, ptr %353, align 8, !tbaa !30
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %380 = load i64, ptr %379, align 8, !tbaa !37
  %381 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %380, i64 1), !nosanitize !38
  %382 = extractvalue { i64, i1 } %381, 1, !nosanitize !38
  br i1 %382, label %383, label %384, !prof !39, !nosanitize !38

383:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

384:                                              ; preds = %374
  %385 = extractvalue { i64, i1 } %381, 0, !nosanitize !38
  store i64 %385, ptr %379, align 8, !tbaa !37
  %386 = and i32 %1, 255
  br label %1258

387:                                              ; preds = %363
  store i8 %373, ptr %3, align 1, !tbaa !44
  br label %430

388:                                              ; preds = %348
  %389 = trunc i32 %1 to i8
  store i8 %389, ptr %3, align 1, !tbaa !44
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %391 = load i32, ptr %390, align 4, !tbaa !19
  %392 = shl i32 %391, 1
  %393 = zext i32 %392 to i64
  %394 = tail call noalias ptr @malloc(i64 noundef %393) #17
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %394, ptr %395, align 8, !tbaa !20
  %396 = icmp eq ptr %394, null
  br i1 %396, label %397, label %398

397:                                              ; preds = %388
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

398:                                              ; preds = %388
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %400 = load i32, ptr %399, align 8, !tbaa !21
  %401 = icmp eq i32 %400, 0
  %402 = load i32, ptr %390, align 4, !tbaa !19
  br i1 %401, label %404, label %403

403:                                              ; preds = %398
  store i32 %402, ptr %349, align 8, !tbaa !18
  br label %430

404:                                              ; preds = %398
  %405 = zext i32 %402 to i64
  %406 = tail call noalias ptr @malloc(i64 noundef %405) #17
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %406, ptr %407, align 8, !tbaa !22
  %408 = icmp eq ptr %406, null
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  tail call void @free(ptr noundef nonnull %394) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

410:                                              ; preds = %404
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %411, i8 0, i64 24, i1 false)
  %413 = load i32, ptr %412, align 8, !tbaa !23
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %415 = load i32, ptr %414, align 4, !tbaa !24
  %416 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %413, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %415, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %410
  %419 = load ptr, ptr %407, align 8, !tbaa !22
  tail call void @free(ptr noundef %419) #16
  %420 = load ptr, ptr %395, align 8, !tbaa !20
  tail call void @free(ptr noundef %420) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

421:                                              ; preds = %410
  store ptr null, ptr %6, align 8, !tbaa !25
  %422 = load i32, ptr %399, align 8, !tbaa !21
  %423 = load i32, ptr %390, align 4, !tbaa !19
  store i32 %423, ptr %349, align 8, !tbaa !18
  %424 = icmp eq i32 %422, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %421
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %423, ptr %426, align 8, !tbaa !26
  %427 = load ptr, ptr %407, align 8, !tbaa !22
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %427, ptr %428, align 8, !tbaa !27
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %427, ptr %429, align 8, !tbaa !28
  br label %430

430:                                              ; preds = %387, %425, %421, %403
  %431 = phi i32 [ %423, %425 ], [ %423, %421 ], [ %402, %403 ], [ %350, %387 ]
  %432 = load i64, ptr %19, align 8, !tbaa !29
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %759, label %434

434:                                              ; preds = %430
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %436 = load i32, ptr %435, align 8, !tbaa !30
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %583, label %438

438:                                              ; preds = %434
  %439 = icmp eq i32 %431, 0
  br i1 %439, label %440, label %481

440:                                              ; preds = %438
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %442 = load i32, ptr %441, align 4, !tbaa !19
  %443 = shl i32 %442, 1
  %444 = zext i32 %443 to i64
  %445 = tail call noalias ptr @malloc(i64 noundef %444) #17
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %445, ptr %446, align 8, !tbaa !20
  %447 = icmp eq ptr %445, null
  br i1 %447, label %448, label %449

448:                                              ; preds = %440
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

449:                                              ; preds = %440
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %451 = load i32, ptr %450, align 8, !tbaa !21
  %452 = icmp eq i32 %451, 0
  %453 = load i32, ptr %441, align 4, !tbaa !19
  br i1 %452, label %455, label %454

454:                                              ; preds = %449
  store i32 %453, ptr %349, align 8, !tbaa !18
  br label %485

455:                                              ; preds = %449
  %456 = zext i32 %453 to i64
  %457 = tail call noalias ptr @malloc(i64 noundef %456) #17
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %457, ptr %458, align 8, !tbaa !22
  %459 = icmp eq ptr %457, null
  br i1 %459, label %460, label %461

460:                                              ; preds = %455
  tail call void @free(ptr noundef nonnull %445) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

461:                                              ; preds = %455
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %462, i8 0, i64 24, i1 false)
  %464 = load i32, ptr %463, align 8, !tbaa !23
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %466 = load i32, ptr %465, align 4, !tbaa !24
  %467 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %464, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %466, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %461
  %470 = load ptr, ptr %458, align 8, !tbaa !22
  tail call void @free(ptr noundef %470) #16
  %471 = load ptr, ptr %446, align 8, !tbaa !20
  tail call void @free(ptr noundef %471) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

472:                                              ; preds = %461
  store ptr null, ptr %6, align 8, !tbaa !25
  %473 = load i32, ptr %450, align 8, !tbaa !21
  %474 = load i32, ptr %441, align 4, !tbaa !19
  store i32 %474, ptr %349, align 8, !tbaa !18
  %475 = icmp eq i32 %473, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %472
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %474, ptr %477, align 8, !tbaa !26
  %478 = load ptr, ptr %458, align 8, !tbaa !22
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %478, ptr %479, align 8, !tbaa !27
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %478, ptr %480, align 8, !tbaa !28
  br label %517

481:                                              ; preds = %438
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %483 = load i32, ptr %482, align 8, !tbaa !21
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %517, label %485

485:                                              ; preds = %481, %472, %454
  %486 = load i32, ptr %435, align 8, !tbaa !30
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %583, label %488

488:                                              ; preds = %485
  %489 = tail call ptr @__errno_location() #18
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %492 = load ptr, ptr %6, align 8, !tbaa !25
  br label %493

493:                                              ; preds = %510, %488
  %494 = phi ptr [ %492, %488 ], [ %515, %510 ]
  store i32 0, ptr %489, align 4, !tbaa !4
  store i32 0, ptr %490, align 4, !tbaa !17
  %495 = load i32, ptr %435, align 8, !tbaa !30
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 1073741824)
  %497 = zext nneg i32 %496 to i64
  %498 = load i32, ptr %491, align 4, !tbaa !31
  %499 = tail call i64 @write(i32 noundef %498, ptr noundef %494, i64 noundef %497) #16
  %500 = trunc i64 %499 to i32
  %501 = icmp slt i32 %500, 0
  br i1 %501, label %502, label %510

502:                                              ; preds = %493
  %503 = load i32, ptr %489, align 4, !tbaa !4
  %504 = icmp eq i32 %503, 11
  br i1 %504, label %505, label %507

505:                                              ; preds = %502
  store i32 1, ptr %490, align 4, !tbaa !17
  %506 = load i32, ptr %489, align 4, !tbaa !4
  br label %507

507:                                              ; preds = %505, %502
  %508 = phi i32 [ %503, %502 ], [ %506, %505 ]
  %509 = tail call ptr @strerror(i32 noundef %508) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %509) #16
  br label %1258

510:                                              ; preds = %493
  %511 = load i32, ptr %435, align 8, !tbaa !30
  %512 = sub i32 %511, %500
  store i32 %512, ptr %435, align 8, !tbaa !30
  %513 = load ptr, ptr %6, align 8, !tbaa !25
  %514 = and i64 %499, 2147483647
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 %514
  store ptr %515, ptr %6, align 8, !tbaa !25
  %516 = icmp eq i32 %511, %500
  br i1 %516, label %583, label %493, !llvm.loop !32

517:                                              ; preds = %481, %476
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %519 = load i32, ptr %518, align 8, !tbaa !34
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %517
  %522 = load i32, ptr %435, align 8, !tbaa !30
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %583, label %524

524:                                              ; preds = %521
  %525 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %518, align 8, !tbaa !34
  br label %526

526:                                              ; preds = %524, %517
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %533 = load i32, ptr %527, align 8, !tbaa !26
  br label %534

534:                                              ; preds = %580, %526
  %535 = phi i32 [ %533, %526 ], [ %581, %580 ]
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %575

537:                                              ; preds = %534
  %538 = load ptr, ptr %528, align 8, !tbaa !27
  %539 = load ptr, ptr %529, align 8, !tbaa !28
  %540 = icmp ugt ptr %538, %539
  br i1 %540, label %541, label %572

541:                                              ; preds = %537
  %542 = tail call ptr @__errno_location() #18
  br label %543

543:                                              ; preds = %563, %541
  %544 = phi ptr [ %539, %541 ], [ %566, %563 ]
  %545 = phi ptr [ %538, %541 ], [ %567, %563 ]
  store i32 0, ptr %542, align 4, !tbaa !4
  store i32 0, ptr %530, align 4, !tbaa !17
  %546 = ptrtoint ptr %545 to i64
  %547 = ptrtoint ptr %544 to i64
  %548 = sub i64 %546, %547
  %549 = tail call i64 @llvm.smin.i64(i64 %548, i64 1073741824)
  %550 = and i64 %549, 4294967295
  %551 = load i32, ptr %531, align 4, !tbaa !31
  %552 = tail call i64 @write(i32 noundef %551, ptr noundef %544, i64 noundef %550) #16
  %553 = and i64 %552, 2147483648
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %563, label %555

555:                                              ; preds = %543
  %556 = load i32, ptr %542, align 4, !tbaa !4
  %557 = icmp eq i32 %556, 11
  br i1 %557, label %558, label %560

558:                                              ; preds = %555
  store i32 1, ptr %530, align 4, !tbaa !17
  %559 = load i32, ptr %542, align 4, !tbaa !4
  br label %560

560:                                              ; preds = %558, %555
  %561 = phi i32 [ %556, %555 ], [ %559, %558 ]
  %562 = tail call ptr @strerror(i32 noundef %561) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %562) #16
  br label %1258

563:                                              ; preds = %543
  %564 = load ptr, ptr %529, align 8, !tbaa !28
  %565 = and i64 %552, 2147483647
  %566 = getelementptr inbounds nuw i8, ptr %564, i64 %565
  store ptr %566, ptr %529, align 8, !tbaa !28
  %567 = load ptr, ptr %528, align 8, !tbaa !27
  %568 = icmp ugt ptr %567, %566
  br i1 %568, label %543, label %569, !llvm.loop !35

569:                                              ; preds = %563
  %570 = load i32, ptr %527, align 8, !tbaa !26
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %569, %537
  %573 = load i32, ptr %349, align 8, !tbaa !18
  store i32 %573, ptr %527, align 8, !tbaa !26
  %574 = load ptr, ptr %532, align 8, !tbaa !22
  store ptr %574, ptr %528, align 8, !tbaa !27
  store ptr %574, ptr %529, align 8, !tbaa !28
  br label %575

575:                                              ; preds = %572, %569, %534
  %576 = phi i32 [ %570, %569 ], [ %573, %572 ], [ %535, %534 ]
  %577 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %578 = icmp eq i32 %577, -2
  br i1 %578, label %579, label %580

579:                                              ; preds = %575
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1258

580:                                              ; preds = %575
  %581 = load i32, ptr %527, align 8, !tbaa !26
  %582 = icmp eq i32 %576, %581
  br i1 %582, label %583, label %534, !llvm.loop !36

583:                                              ; preds = %510, %580, %521, %485, %434
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %585 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %587 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %593 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %597 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %598 = load i64, ptr %19, align 8, !tbaa !29
  br label %599

599:                                              ; preds = %755, %583
  %600 = phi i64 [ %598, %583 ], [ %751, %755 ]
  %601 = phi i1 [ false, %583 ], [ true, %755 ]
  %602 = load i32, ptr %349, align 8, !tbaa !18
  %603 = zext i32 %602 to i64
  %604 = tail call i64 @llvm.smin.i64(i64 %600, i64 %603)
  %605 = trunc i64 %604 to i32
  %606 = load ptr, ptr %584, align 8, !tbaa !20
  br i1 %601, label %611, label %607

607:                                              ; preds = %599
  %608 = and i64 %604, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %606, i8 0, i64 %608, i1 false)
  %609 = load ptr, ptr %584, align 8, !tbaa !20
  %610 = load i32, ptr %349, align 8, !tbaa !18
  br label %611

611:                                              ; preds = %607, %599
  %612 = phi i32 [ %610, %607 ], [ %602, %599 ]
  %613 = phi ptr [ %609, %607 ], [ %606, %599 ]
  store i32 %605, ptr %435, align 8, !tbaa !30
  store ptr %613, ptr %6, align 8, !tbaa !25
  %614 = icmp eq i32 %612, 0
  br i1 %614, label %615, label %646

615:                                              ; preds = %611
  %616 = load i32, ptr %586, align 4, !tbaa !19
  %617 = shl i32 %616, 1
  %618 = zext i32 %617 to i64
  %619 = tail call noalias ptr @malloc(i64 noundef %618) #17
  store ptr %619, ptr %584, align 8, !tbaa !20
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %622

621:                                              ; preds = %615
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %738

622:                                              ; preds = %615
  %623 = load i32, ptr %585, align 8, !tbaa !21
  %624 = icmp eq i32 %623, 0
  %625 = load i32, ptr %586, align 4, !tbaa !19
  br i1 %624, label %627, label %626

626:                                              ; preds = %622
  store i32 %625, ptr %349, align 8, !tbaa !18
  br label %649

627:                                              ; preds = %622
  %628 = zext i32 %625 to i64
  %629 = tail call noalias ptr @malloc(i64 noundef %628) #17
  store ptr %629, ptr %587, align 8, !tbaa !22
  %630 = icmp eq ptr %629, null
  br i1 %630, label %631, label %632

631:                                              ; preds = %627
  tail call void @free(ptr noundef nonnull %619) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %738

632:                                              ; preds = %627
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %588, i8 0, i64 24, i1 false)
  %633 = load i32, ptr %589, align 8, !tbaa !23
  %634 = load i32, ptr %590, align 4, !tbaa !24
  %635 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %633, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %634, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %640, label %637

637:                                              ; preds = %632
  %638 = load ptr, ptr %587, align 8, !tbaa !22
  tail call void @free(ptr noundef %638) #16
  %639 = load ptr, ptr %584, align 8, !tbaa !20
  tail call void @free(ptr noundef %639) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %738

640:                                              ; preds = %632
  store ptr null, ptr %6, align 8, !tbaa !25
  %641 = load i32, ptr %585, align 8, !tbaa !21
  %642 = load i32, ptr %586, align 4, !tbaa !19
  store i32 %642, ptr %349, align 8, !tbaa !18
  %643 = icmp eq i32 %641, 0
  br i1 %643, label %644, label %649

644:                                              ; preds = %640
  store i32 %642, ptr %593, align 8, !tbaa !26
  %645 = load ptr, ptr %587, align 8, !tbaa !22
  store ptr %645, ptr %594, align 8, !tbaa !27
  store ptr %645, ptr %595, align 8, !tbaa !28
  br label %679

646:                                              ; preds = %611
  %647 = load i32, ptr %585, align 8, !tbaa !21
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %679, label %649

649:                                              ; preds = %646, %640, %626
  %650 = phi ptr [ %613, %646 ], [ null, %640 ], [ %613, %626 ]
  %651 = load i32, ptr %435, align 8, !tbaa !30
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %738, label %653

653:                                              ; preds = %649
  %654 = tail call ptr @__errno_location() #18
  br label %655

655:                                              ; preds = %672, %653
  %656 = phi ptr [ %650, %653 ], [ %677, %672 ]
  store i32 0, ptr %654, align 4, !tbaa !4
  store i32 0, ptr %591, align 4, !tbaa !17
  %657 = load i32, ptr %435, align 8, !tbaa !30
  %658 = tail call i32 @llvm.umin.i32(i32 %657, i32 1073741824)
  %659 = zext nneg i32 %658 to i64
  %660 = load i32, ptr %592, align 4, !tbaa !31
  %661 = tail call i64 @write(i32 noundef %660, ptr noundef %656, i64 noundef %659) #16
  %662 = trunc i64 %661 to i32
  %663 = icmp slt i32 %662, 0
  br i1 %663, label %664, label %672

664:                                              ; preds = %655
  %665 = load i32, ptr %654, align 4, !tbaa !4
  %666 = icmp eq i32 %665, 11
  br i1 %666, label %667, label %669

667:                                              ; preds = %664
  store i32 1, ptr %591, align 4, !tbaa !17
  %668 = load i32, ptr %654, align 4, !tbaa !4
  br label %669

669:                                              ; preds = %667, %664
  %670 = phi i32 [ %665, %664 ], [ %668, %667 ]
  %671 = tail call ptr @strerror(i32 noundef %670) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %671) #16
  br label %738

672:                                              ; preds = %655
  %673 = load i32, ptr %435, align 8, !tbaa !30
  %674 = sub i32 %673, %662
  store i32 %674, ptr %435, align 8, !tbaa !30
  %675 = load ptr, ptr %6, align 8, !tbaa !25
  %676 = and i64 %661, 2147483647
  %677 = getelementptr inbounds nuw i8, ptr %675, i64 %676
  store ptr %677, ptr %6, align 8, !tbaa !25
  %678 = icmp eq i32 %673, %662
  br i1 %678, label %738, label %655, !llvm.loop !32

679:                                              ; preds = %646, %644
  %680 = load i32, ptr %596, align 8, !tbaa !34
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %687, label %682

682:                                              ; preds = %679
  %683 = load i32, ptr %435, align 8, !tbaa !30
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %738, label %685

685:                                              ; preds = %682
  %686 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %596, align 8, !tbaa !34
  br label %687

687:                                              ; preds = %685, %679
  %688 = load i32, ptr %593, align 8, !tbaa !26
  br label %689

689:                                              ; preds = %735, %687
  %690 = phi i32 [ %688, %687 ], [ %736, %735 ]
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %730

692:                                              ; preds = %689
  %693 = load ptr, ptr %594, align 8, !tbaa !27
  %694 = load ptr, ptr %595, align 8, !tbaa !28
  %695 = icmp ugt ptr %693, %694
  br i1 %695, label %696, label %727

696:                                              ; preds = %692
  %697 = tail call ptr @__errno_location() #18
  br label %698

698:                                              ; preds = %718, %696
  %699 = phi ptr [ %694, %696 ], [ %721, %718 ]
  %700 = phi ptr [ %693, %696 ], [ %722, %718 ]
  store i32 0, ptr %697, align 4, !tbaa !4
  store i32 0, ptr %591, align 4, !tbaa !17
  %701 = ptrtoint ptr %700 to i64
  %702 = ptrtoint ptr %699 to i64
  %703 = sub i64 %701, %702
  %704 = tail call i64 @llvm.smin.i64(i64 %703, i64 1073741824)
  %705 = and i64 %704, 4294967295
  %706 = load i32, ptr %592, align 4, !tbaa !31
  %707 = tail call i64 @write(i32 noundef %706, ptr noundef %699, i64 noundef %705) #16
  %708 = and i64 %707, 2147483648
  %709 = icmp eq i64 %708, 0
  br i1 %709, label %718, label %710

710:                                              ; preds = %698
  %711 = load i32, ptr %697, align 4, !tbaa !4
  %712 = icmp eq i32 %711, 11
  br i1 %712, label %713, label %715

713:                                              ; preds = %710
  store i32 1, ptr %591, align 4, !tbaa !17
  %714 = load i32, ptr %697, align 4, !tbaa !4
  br label %715

715:                                              ; preds = %713, %710
  %716 = phi i32 [ %711, %710 ], [ %714, %713 ]
  %717 = tail call ptr @strerror(i32 noundef %716) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %717) #16
  br label %738

718:                                              ; preds = %698
  %719 = load ptr, ptr %595, align 8, !tbaa !28
  %720 = and i64 %707, 2147483647
  %721 = getelementptr inbounds nuw i8, ptr %719, i64 %720
  store ptr %721, ptr %595, align 8, !tbaa !28
  %722 = load ptr, ptr %594, align 8, !tbaa !27
  %723 = icmp ugt ptr %722, %721
  br i1 %723, label %698, label %724, !llvm.loop !35

724:                                              ; preds = %718
  %725 = load i32, ptr %593, align 8, !tbaa !26
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %730

727:                                              ; preds = %724, %692
  %728 = load i32, ptr %349, align 8, !tbaa !18
  store i32 %728, ptr %593, align 8, !tbaa !26
  %729 = load ptr, ptr %587, align 8, !tbaa !22
  store ptr %729, ptr %594, align 8, !tbaa !27
  store ptr %729, ptr %595, align 8, !tbaa !28
  br label %730

730:                                              ; preds = %727, %724, %689
  %731 = phi i32 [ %725, %724 ], [ %728, %727 ], [ %690, %689 ]
  %732 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %733 = icmp eq i32 %732, -2
  br i1 %733, label %734, label %735

734:                                              ; preds = %730
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %738

735:                                              ; preds = %730
  %736 = load i32, ptr %593, align 8, !tbaa !26
  %737 = icmp eq i32 %731, %736
  br i1 %737, label %738, label %689, !llvm.loop !36

738:                                              ; preds = %672, %735, %734, %715, %682, %669, %649, %637, %631, %621
  %739 = phi i1 [ false, %682 ], [ true, %669 ], [ false, %649 ], [ true, %631 ], [ true, %715 ], [ true, %734 ], [ false, %735 ], [ true, %621 ], [ true, %637 ], [ false, %672 ]
  %740 = load i32, ptr %435, align 8, !tbaa !30
  %741 = sub i32 %605, %740
  %742 = zext i32 %741 to i64
  %743 = load i64, ptr %597, align 8, !tbaa !37
  %744 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %743, i64 %742), !nosanitize !38
  %745 = extractvalue { i64, i1 } %744, 1, !nosanitize !38
  br i1 %745, label %746, label %747, !prof !39, !nosanitize !38

746:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

747:                                              ; preds = %738
  %748 = extractvalue { i64, i1 } %744, 0, !nosanitize !38
  store i64 %748, ptr %597, align 8, !tbaa !37
  %749 = load i64, ptr %19, align 8, !tbaa !29
  %750 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %749, i64 %742), !nosanitize !38
  %751 = extractvalue { i64, i1 } %750, 0, !nosanitize !38
  %752 = extractvalue { i64, i1 } %750, 1, !nosanitize !38
  br i1 %752, label %753, label %754, !prof !39, !nosanitize !38

753:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

754:                                              ; preds = %747
  store i64 %751, ptr %19, align 8, !tbaa !29
  br i1 %739, label %1258, label %755

755:                                              ; preds = %754
  %756 = icmp eq i64 %751, 0
  br i1 %756, label %757, label %599, !llvm.loop !40

757:                                              ; preds = %755
  %758 = load i32, ptr %349, align 8, !tbaa !18
  br label %759

759:                                              ; preds = %757, %430
  %760 = phi i32 [ %758, %757 ], [ %431, %430 ]
  %761 = icmp ugt i32 %760, 1
  %762 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %761, label %763, label %942

763:                                              ; preds = %759
  %764 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %765 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %766 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %768 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %769 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %770 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %771 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %778

778:                                              ; preds = %885, %763
  %779 = phi ptr [ %3, %763 ], [ %811, %885 ]
  %780 = load i32, ptr %762, align 8, !tbaa !41
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %785, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %6, align 8, !tbaa !42
  %784 = load ptr, ptr %764, align 8, !tbaa !20
  br label %787

785:                                              ; preds = %778
  %786 = load ptr, ptr %764, align 8, !tbaa !20
  store ptr %786, ptr %6, align 8, !tbaa !42
  br label %787

787:                                              ; preds = %785, %782
  %788 = phi ptr [ %784, %782 ], [ %786, %785 ]
  %789 = phi ptr [ %783, %782 ], [ %786, %785 ]
  %790 = zext i32 %780 to i64
  %791 = getelementptr inbounds nuw i8, ptr %789, i64 %790
  %792 = ptrtoint ptr %791 to i64
  %793 = ptrtoint ptr %788 to i64
  %794 = sub i64 %792, %793
  %795 = trunc i64 %794 to i32
  %796 = load i32, ptr %349, align 8, !tbaa !18
  %797 = icmp ne i32 %796, %795
  %798 = zext i1 %797 to i64
  %799 = zext i1 %797 to i32
  %800 = and i64 %794, 4294967295
  %801 = getelementptr inbounds nuw i8, ptr %788, i64 %800
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %801, ptr align 1 %779, i64 %798, i1 false)
  %802 = load i32, ptr %762, align 8, !tbaa !41
  %803 = add i32 %802, %799
  store i32 %803, ptr %762, align 8, !tbaa !41
  %804 = load i64, ptr %765, align 8, !tbaa !37
  %805 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %804, i64 %798), !nosanitize !38
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !38
  br i1 %806, label %807, label %808, !prof !39, !nosanitize !38

807:                                              ; preds = %1234, %787
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

808:                                              ; preds = %787
  %809 = extractvalue { i64, i1 } %805, 0, !nosanitize !38
  store i64 %809, ptr %765, align 8, !tbaa !37
  %810 = zext i1 %797 to i64
  %811 = getelementptr inbounds nuw i8, ptr %779, i64 %810
  br i1 %797, label %1250, label %812

812:                                              ; preds = %808
  %813 = load i32, ptr %349, align 8, !tbaa !18
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %846

815:                                              ; preds = %812
  %816 = load i32, ptr %767, align 4, !tbaa !19
  %817 = shl i32 %816, 1
  %818 = zext i32 %817 to i64
  %819 = tail call noalias ptr @malloc(i64 noundef %818) #17
  store ptr %819, ptr %764, align 8, !tbaa !20
  %820 = icmp eq ptr %819, null
  br i1 %820, label %821, label %822

821:                                              ; preds = %815
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %939

822:                                              ; preds = %815
  %823 = load i32, ptr %766, align 8, !tbaa !21
  %824 = icmp eq i32 %823, 0
  %825 = load i32, ptr %767, align 4, !tbaa !19
  br i1 %824, label %827, label %826

826:                                              ; preds = %822
  store i32 %825, ptr %349, align 8, !tbaa !18
  br label %849

827:                                              ; preds = %822
  %828 = zext i32 %825 to i64
  %829 = tail call noalias ptr @malloc(i64 noundef %828) #17
  store ptr %829, ptr %768, align 8, !tbaa !22
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %832

831:                                              ; preds = %827
  tail call void @free(ptr noundef nonnull %819) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %939

832:                                              ; preds = %827
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %769, i8 0, i64 24, i1 false)
  %833 = load i32, ptr %770, align 8, !tbaa !23
  %834 = load i32, ptr %771, align 4, !tbaa !24
  %835 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %833, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %834, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %840, label %837

837:                                              ; preds = %832
  %838 = load ptr, ptr %768, align 8, !tbaa !22
  tail call void @free(ptr noundef %838) #16
  %839 = load ptr, ptr %764, align 8, !tbaa !20
  tail call void @free(ptr noundef %839) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %939

840:                                              ; preds = %832
  store ptr null, ptr %6, align 8, !tbaa !25
  %841 = load i32, ptr %766, align 8, !tbaa !21
  %842 = load i32, ptr %767, align 4, !tbaa !19
  store i32 %842, ptr %349, align 8, !tbaa !18
  %843 = icmp eq i32 %841, 0
  br i1 %843, label %844, label %849

844:                                              ; preds = %840
  store i32 %842, ptr %774, align 8, !tbaa !26
  %845 = load ptr, ptr %768, align 8, !tbaa !22
  store ptr %845, ptr %775, align 8, !tbaa !27
  store ptr %845, ptr %776, align 8, !tbaa !28
  br label %879

846:                                              ; preds = %812
  %847 = load i32, ptr %766, align 8, !tbaa !21
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %879, label %849

849:                                              ; preds = %846, %840, %826
  %850 = load i32, ptr %762, align 8, !tbaa !30
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %885, label %852

852:                                              ; preds = %849
  %853 = tail call ptr @__errno_location() #18
  %854 = load ptr, ptr %6, align 8, !tbaa !25
  br label %855

855:                                              ; preds = %872, %852
  %856 = phi ptr [ %854, %852 ], [ %877, %872 ]
  store i32 0, ptr %853, align 4, !tbaa !4
  store i32 0, ptr %772, align 4, !tbaa !17
  %857 = load i32, ptr %762, align 8, !tbaa !30
  %858 = tail call i32 @llvm.umin.i32(i32 %857, i32 1073741824)
  %859 = zext nneg i32 %858 to i64
  %860 = load i32, ptr %773, align 4, !tbaa !31
  %861 = tail call i64 @write(i32 noundef %860, ptr noundef %856, i64 noundef %859) #16
  %862 = trunc i64 %861 to i32
  %863 = icmp slt i32 %862, 0
  br i1 %863, label %864, label %872

864:                                              ; preds = %855
  %865 = load i32, ptr %853, align 4, !tbaa !4
  %866 = icmp eq i32 %865, 11
  br i1 %866, label %867, label %869

867:                                              ; preds = %864
  store i32 1, ptr %772, align 4, !tbaa !17
  %868 = load i32, ptr %853, align 4, !tbaa !4
  br label %869

869:                                              ; preds = %867, %864
  %870 = phi i32 [ %865, %864 ], [ %868, %867 ]
  %871 = tail call ptr @strerror(i32 noundef %870) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %871) #16
  br label %939

872:                                              ; preds = %855
  %873 = load i32, ptr %762, align 8, !tbaa !30
  %874 = sub i32 %873, %862
  store i32 %874, ptr %762, align 8, !tbaa !30
  %875 = load ptr, ptr %6, align 8, !tbaa !25
  %876 = and i64 %861, 2147483647
  %877 = getelementptr inbounds nuw i8, ptr %875, i64 %876
  store ptr %877, ptr %6, align 8, !tbaa !25
  %878 = icmp eq i32 %873, %862
  br i1 %878, label %885, label %855, !llvm.loop !32

879:                                              ; preds = %846, %844
  %880 = load i32, ptr %777, align 8, !tbaa !34
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %888, label %882

882:                                              ; preds = %879
  %883 = load i32, ptr %762, align 8, !tbaa !30
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %872, %936, %882, %849
  br label %778

886:                                              ; preds = %882
  %887 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %777, align 8, !tbaa !34
  br label %888

888:                                              ; preds = %886, %879
  %889 = load i32, ptr %774, align 8, !tbaa !26
  br label %890

890:                                              ; preds = %936, %888
  %891 = phi i32 [ %889, %888 ], [ %937, %936 ]
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %931

893:                                              ; preds = %890
  %894 = load ptr, ptr %775, align 8, !tbaa !27
  %895 = load ptr, ptr %776, align 8, !tbaa !28
  %896 = icmp ugt ptr %894, %895
  br i1 %896, label %897, label %928

897:                                              ; preds = %893
  %898 = tail call ptr @__errno_location() #18
  br label %899

899:                                              ; preds = %919, %897
  %900 = phi ptr [ %895, %897 ], [ %922, %919 ]
  %901 = phi ptr [ %894, %897 ], [ %923, %919 ]
  store i32 0, ptr %898, align 4, !tbaa !4
  store i32 0, ptr %772, align 4, !tbaa !17
  %902 = ptrtoint ptr %901 to i64
  %903 = ptrtoint ptr %900 to i64
  %904 = sub i64 %902, %903
  %905 = tail call i64 @llvm.smin.i64(i64 %904, i64 1073741824)
  %906 = and i64 %905, 4294967295
  %907 = load i32, ptr %773, align 4, !tbaa !31
  %908 = tail call i64 @write(i32 noundef %907, ptr noundef %900, i64 noundef %906) #16
  %909 = and i64 %908, 2147483648
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %919, label %911

911:                                              ; preds = %899
  %912 = load i32, ptr %898, align 4, !tbaa !4
  %913 = icmp eq i32 %912, 11
  br i1 %913, label %914, label %916

914:                                              ; preds = %911
  store i32 1, ptr %772, align 4, !tbaa !17
  %915 = load i32, ptr %898, align 4, !tbaa !4
  br label %916

916:                                              ; preds = %914, %911
  %917 = phi i32 [ %912, %911 ], [ %915, %914 ]
  %918 = tail call ptr @strerror(i32 noundef %917) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %918) #16
  br label %939

919:                                              ; preds = %899
  %920 = load ptr, ptr %776, align 8, !tbaa !28
  %921 = and i64 %908, 2147483647
  %922 = getelementptr inbounds nuw i8, ptr %920, i64 %921
  store ptr %922, ptr %776, align 8, !tbaa !28
  %923 = load ptr, ptr %775, align 8, !tbaa !27
  %924 = icmp ugt ptr %923, %922
  br i1 %924, label %899, label %925, !llvm.loop !35

925:                                              ; preds = %919
  %926 = load i32, ptr %774, align 8, !tbaa !26
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %931

928:                                              ; preds = %925, %893
  %929 = load i32, ptr %349, align 8, !tbaa !18
  store i32 %929, ptr %774, align 8, !tbaa !26
  %930 = load ptr, ptr %768, align 8, !tbaa !22
  store ptr %930, ptr %775, align 8, !tbaa !27
  store ptr %930, ptr %776, align 8, !tbaa !28
  br label %931

931:                                              ; preds = %928, %925, %890
  %932 = phi i32 [ %926, %925 ], [ %929, %928 ], [ %891, %890 ]
  %933 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %934 = icmp eq i32 %933, -2
  br i1 %934, label %935, label %936

935:                                              ; preds = %931
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %939

936:                                              ; preds = %931
  %937 = load i32, ptr %774, align 8, !tbaa !26
  %938 = icmp eq i32 %932, %937
  br i1 %938, label %885, label %890, !llvm.loop !36

939:                                              ; preds = %935, %916, %869, %837, %831, %821
  %940 = load i32, ptr %772, align 4, !tbaa !17
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1258, label %1252

942:                                              ; preds = %759
  %943 = load i32, ptr %762, align 8, !tbaa !41
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1090, label %945

945:                                              ; preds = %942
  %946 = icmp eq i32 %760, 0
  br i1 %946, label %947, label %988

947:                                              ; preds = %945
  %948 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %949 = load i32, ptr %948, align 4, !tbaa !19
  %950 = shl i32 %949, 1
  %951 = zext i32 %950 to i64
  %952 = tail call noalias ptr @malloc(i64 noundef %951) #17
  %953 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %952, ptr %953, align 8, !tbaa !20
  %954 = icmp eq ptr %952, null
  br i1 %954, label %955, label %956

955:                                              ; preds = %947
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

956:                                              ; preds = %947
  %957 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %958 = load i32, ptr %957, align 8, !tbaa !21
  %959 = icmp eq i32 %958, 0
  %960 = load i32, ptr %948, align 4, !tbaa !19
  br i1 %959, label %962, label %961

961:                                              ; preds = %956
  store i32 %960, ptr %349, align 8, !tbaa !18
  br label %992

962:                                              ; preds = %956
  %963 = zext i32 %960 to i64
  %964 = tail call noalias ptr @malloc(i64 noundef %963) #17
  %965 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %964, ptr %965, align 8, !tbaa !22
  %966 = icmp eq ptr %964, null
  br i1 %966, label %967, label %968

967:                                              ; preds = %962
  tail call void @free(ptr noundef nonnull %952) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

968:                                              ; preds = %962
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %970 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %969, i8 0, i64 24, i1 false)
  %971 = load i32, ptr %970, align 8, !tbaa !23
  %972 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %973 = load i32, ptr %972, align 4, !tbaa !24
  %974 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %971, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %973, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %979, label %976

976:                                              ; preds = %968
  %977 = load ptr, ptr %965, align 8, !tbaa !22
  tail call void @free(ptr noundef %977) #16
  %978 = load ptr, ptr %953, align 8, !tbaa !20
  tail call void @free(ptr noundef %978) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1258

979:                                              ; preds = %968
  store ptr null, ptr %6, align 8, !tbaa !25
  %980 = load i32, ptr %957, align 8, !tbaa !21
  %981 = load i32, ptr %948, align 4, !tbaa !19
  store i32 %981, ptr %349, align 8, !tbaa !18
  %982 = icmp eq i32 %980, 0
  br i1 %982, label %983, label %992

983:                                              ; preds = %979
  %984 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %981, ptr %984, align 8, !tbaa !26
  %985 = load ptr, ptr %965, align 8, !tbaa !22
  %986 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %985, ptr %986, align 8, !tbaa !27
  %987 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %985, ptr %987, align 8, !tbaa !28
  br label %1024

988:                                              ; preds = %945
  %989 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %990 = load i32, ptr %989, align 8, !tbaa !21
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1024, label %992

992:                                              ; preds = %988, %979, %961
  %993 = load i32, ptr %762, align 8, !tbaa !30
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1090, label %995

995:                                              ; preds = %992
  %996 = tail call ptr @__errno_location() #18
  %997 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %998 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %999 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1000

1000:                                             ; preds = %1017, %995
  %1001 = phi ptr [ %999, %995 ], [ %1022, %1017 ]
  store i32 0, ptr %996, align 4, !tbaa !4
  store i32 0, ptr %997, align 4, !tbaa !17
  %1002 = load i32, ptr %762, align 8, !tbaa !30
  %1003 = tail call i32 @llvm.umin.i32(i32 %1002, i32 1073741824)
  %1004 = zext nneg i32 %1003 to i64
  %1005 = load i32, ptr %998, align 4, !tbaa !31
  %1006 = tail call i64 @write(i32 noundef %1005, ptr noundef %1001, i64 noundef %1004) #16
  %1007 = trunc i64 %1006 to i32
  %1008 = icmp slt i32 %1007, 0
  br i1 %1008, label %1009, label %1017

1009:                                             ; preds = %1000
  %1010 = load i32, ptr %996, align 4, !tbaa !4
  %1011 = icmp eq i32 %1010, 11
  br i1 %1011, label %1012, label %1014

1012:                                             ; preds = %1009
  store i32 1, ptr %997, align 4, !tbaa !17
  %1013 = load i32, ptr %996, align 4, !tbaa !4
  br label %1014

1014:                                             ; preds = %1012, %1009
  %1015 = phi i32 [ %1010, %1009 ], [ %1013, %1012 ]
  %1016 = tail call ptr @strerror(i32 noundef %1015) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1016) #16
  br label %1258

1017:                                             ; preds = %1000
  %1018 = load i32, ptr %762, align 8, !tbaa !30
  %1019 = sub i32 %1018, %1007
  store i32 %1019, ptr %762, align 8, !tbaa !30
  %1020 = load ptr, ptr %6, align 8, !tbaa !25
  %1021 = and i64 %1006, 2147483647
  %1022 = getelementptr inbounds nuw i8, ptr %1020, i64 %1021
  store ptr %1022, ptr %6, align 8, !tbaa !25
  %1023 = icmp eq i32 %1018, %1007
  br i1 %1023, label %1090, label %1000, !llvm.loop !32

1024:                                             ; preds = %988, %983
  %1025 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1026 = load i32, ptr %1025, align 8, !tbaa !34
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1033, label %1028

1028:                                             ; preds = %1024
  %1029 = load i32, ptr %762, align 8, !tbaa !30
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1090, label %1031

1031:                                             ; preds = %1028
  %1032 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %1025, align 8, !tbaa !34
  br label %1033

1033:                                             ; preds = %1031, %1024
  %1034 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1035 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1036 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1037 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1038 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1039 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1040 = load i32, ptr %1034, align 8, !tbaa !26
  br label %1041

1041:                                             ; preds = %1087, %1033
  %1042 = phi i32 [ %1040, %1033 ], [ %1088, %1087 ]
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1082

1044:                                             ; preds = %1041
  %1045 = load ptr, ptr %1035, align 8, !tbaa !27
  %1046 = load ptr, ptr %1036, align 8, !tbaa !28
  %1047 = icmp ugt ptr %1045, %1046
  br i1 %1047, label %1048, label %1079

1048:                                             ; preds = %1044
  %1049 = tail call ptr @__errno_location() #18
  br label %1050

1050:                                             ; preds = %1070, %1048
  %1051 = phi ptr [ %1046, %1048 ], [ %1073, %1070 ]
  %1052 = phi ptr [ %1045, %1048 ], [ %1074, %1070 ]
  store i32 0, ptr %1049, align 4, !tbaa !4
  store i32 0, ptr %1037, align 4, !tbaa !17
  %1053 = ptrtoint ptr %1052 to i64
  %1054 = ptrtoint ptr %1051 to i64
  %1055 = sub i64 %1053, %1054
  %1056 = tail call i64 @llvm.smin.i64(i64 %1055, i64 1073741824)
  %1057 = and i64 %1056, 4294967295
  %1058 = load i32, ptr %1038, align 4, !tbaa !31
  %1059 = tail call i64 @write(i32 noundef %1058, ptr noundef %1051, i64 noundef %1057) #16
  %1060 = and i64 %1059, 2147483648
  %1061 = icmp eq i64 %1060, 0
  br i1 %1061, label %1070, label %1062

1062:                                             ; preds = %1050
  %1063 = load i32, ptr %1049, align 4, !tbaa !4
  %1064 = icmp eq i32 %1063, 11
  br i1 %1064, label %1065, label %1067

1065:                                             ; preds = %1062
  store i32 1, ptr %1037, align 4, !tbaa !17
  %1066 = load i32, ptr %1049, align 4, !tbaa !4
  br label %1067

1067:                                             ; preds = %1065, %1062
  %1068 = phi i32 [ %1063, %1062 ], [ %1066, %1065 ]
  %1069 = tail call ptr @strerror(i32 noundef %1068) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1069) #16
  br label %1258

1070:                                             ; preds = %1050
  %1071 = load ptr, ptr %1036, align 8, !tbaa !28
  %1072 = and i64 %1059, 2147483647
  %1073 = getelementptr inbounds nuw i8, ptr %1071, i64 %1072
  store ptr %1073, ptr %1036, align 8, !tbaa !28
  %1074 = load ptr, ptr %1035, align 8, !tbaa !27
  %1075 = icmp ugt ptr %1074, %1073
  br i1 %1075, label %1050, label %1076, !llvm.loop !35

1076:                                             ; preds = %1070
  %1077 = load i32, ptr %1034, align 8, !tbaa !26
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1079, label %1082

1079:                                             ; preds = %1076, %1044
  %1080 = load i32, ptr %349, align 8, !tbaa !18
  store i32 %1080, ptr %1034, align 8, !tbaa !26
  %1081 = load ptr, ptr %1039, align 8, !tbaa !22
  store ptr %1081, ptr %1035, align 8, !tbaa !27
  store ptr %1081, ptr %1036, align 8, !tbaa !28
  br label %1082

1082:                                             ; preds = %1079, %1076, %1041
  %1083 = phi i32 [ %1077, %1076 ], [ %1080, %1079 ], [ %1042, %1041 ]
  %1084 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %1085 = icmp eq i32 %1084, -2
  br i1 %1085, label %1086, label %1087

1086:                                             ; preds = %1082
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1258

1087:                                             ; preds = %1082
  %1088 = load i32, ptr %1034, align 8, !tbaa !26
  %1089 = icmp eq i32 %1083, %1088
  br i1 %1089, label %1090, label %1041, !llvm.loop !36

1090:                                             ; preds = %1017, %1087, %1028, %992, %942
  store ptr %3, ptr %6, align 8, !tbaa !42
  %1091 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1093 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1094 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1095 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1096 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1097 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1098 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1099 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1100 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1101 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1102 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1103 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1104 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1105

1105:                                             ; preds = %1248, %1090
  %1106 = phi i64 [ 1, %1090 ], [ %1244, %1248 ]
  %1107 = call i64 @llvm.umin.i64(i64 %1106, i64 4294967295)
  %1108 = trunc nuw i64 %1107 to i32
  store i32 %1108, ptr %762, align 8, !tbaa !41
  %1109 = load i32, ptr %349, align 8, !tbaa !18
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1142

1111:                                             ; preds = %1105
  %1112 = load i32, ptr %1092, align 4, !tbaa !19
  %1113 = shl i32 %1112, 1
  %1114 = zext i32 %1113 to i64
  %1115 = call noalias ptr @malloc(i64 noundef %1114) #17
  store ptr %1115, ptr %1093, align 8, !tbaa !20
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1117, label %1118

1117:                                             ; preds = %1111
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1234

1118:                                             ; preds = %1111
  %1119 = load i32, ptr %1091, align 8, !tbaa !21
  %1120 = icmp eq i32 %1119, 0
  %1121 = load i32, ptr %1092, align 4, !tbaa !19
  br i1 %1120, label %1123, label %1122

1122:                                             ; preds = %1118
  store i32 %1121, ptr %349, align 8, !tbaa !18
  br label %1145

1123:                                             ; preds = %1118
  %1124 = zext i32 %1121 to i64
  %1125 = call noalias ptr @malloc(i64 noundef %1124) #17
  store ptr %1125, ptr %1094, align 8, !tbaa !22
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1127, label %1128

1127:                                             ; preds = %1123
  call void @free(ptr noundef nonnull %1115) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1234

1128:                                             ; preds = %1123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1095, i8 0, i64 24, i1 false)
  %1129 = load i32, ptr %1096, align 8, !tbaa !23
  %1130 = load i32, ptr %1097, align 4, !tbaa !24
  %1131 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1129, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1130, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1136, label %1133

1133:                                             ; preds = %1128
  %1134 = load ptr, ptr %1094, align 8, !tbaa !22
  call void @free(ptr noundef %1134) #16
  %1135 = load ptr, ptr %1093, align 8, !tbaa !20
  call void @free(ptr noundef %1135) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1234

1136:                                             ; preds = %1128
  store ptr null, ptr %6, align 8, !tbaa !25
  %1137 = load i32, ptr %1091, align 8, !tbaa !21
  %1138 = load i32, ptr %1092, align 4, !tbaa !19
  store i32 %1138, ptr %349, align 8, !tbaa !18
  %1139 = icmp eq i32 %1137, 0
  br i1 %1139, label %1140, label %1145

1140:                                             ; preds = %1136
  store i32 %1138, ptr %1100, align 8, !tbaa !26
  %1141 = load ptr, ptr %1094, align 8, !tbaa !22
  store ptr %1141, ptr %1101, align 8, !tbaa !27
  store ptr %1141, ptr %1102, align 8, !tbaa !28
  br label %1175

1142:                                             ; preds = %1105
  %1143 = load i32, ptr %1091, align 8, !tbaa !21
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1175, label %1145

1145:                                             ; preds = %1142, %1136, %1122
  %1146 = load i32, ptr %762, align 8, !tbaa !30
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1234, label %1148

1148:                                             ; preds = %1145
  %1149 = tail call ptr @__errno_location() #18
  %1150 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1151

1151:                                             ; preds = %1168, %1148
  %1152 = phi ptr [ %1150, %1148 ], [ %1173, %1168 ]
  store i32 0, ptr %1149, align 4, !tbaa !4
  store i32 0, ptr %1098, align 4, !tbaa !17
  %1153 = load i32, ptr %762, align 8, !tbaa !30
  %1154 = call i32 @llvm.umin.i32(i32 %1153, i32 1073741824)
  %1155 = zext nneg i32 %1154 to i64
  %1156 = load i32, ptr %1099, align 4, !tbaa !31
  %1157 = call i64 @write(i32 noundef %1156, ptr noundef %1152, i64 noundef %1155) #16
  %1158 = trunc i64 %1157 to i32
  %1159 = icmp slt i32 %1158, 0
  br i1 %1159, label %1160, label %1168

1160:                                             ; preds = %1151
  %1161 = load i32, ptr %1149, align 4, !tbaa !4
  %1162 = icmp eq i32 %1161, 11
  br i1 %1162, label %1163, label %1165

1163:                                             ; preds = %1160
  store i32 1, ptr %1098, align 4, !tbaa !17
  %1164 = load i32, ptr %1149, align 4, !tbaa !4
  br label %1165

1165:                                             ; preds = %1163, %1160
  %1166 = phi i32 [ %1161, %1160 ], [ %1164, %1163 ]
  %1167 = call ptr @strerror(i32 noundef %1166) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1167) #16
  br label %1234

1168:                                             ; preds = %1151
  %1169 = load i32, ptr %762, align 8, !tbaa !30
  %1170 = sub i32 %1169, %1158
  store i32 %1170, ptr %762, align 8, !tbaa !30
  %1171 = load ptr, ptr %6, align 8, !tbaa !25
  %1172 = and i64 %1157, 2147483647
  %1173 = getelementptr inbounds nuw i8, ptr %1171, i64 %1172
  store ptr %1173, ptr %6, align 8, !tbaa !25
  %1174 = icmp eq i32 %1169, %1158
  br i1 %1174, label %1234, label %1151, !llvm.loop !32

1175:                                             ; preds = %1142, %1140
  %1176 = load i32, ptr %1103, align 8, !tbaa !34
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1183, label %1178

1178:                                             ; preds = %1175
  %1179 = load i32, ptr %762, align 8, !tbaa !30
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1234, label %1181

1181:                                             ; preds = %1178
  %1182 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %1103, align 8, !tbaa !34
  br label %1183

1183:                                             ; preds = %1181, %1175
  %1184 = load i32, ptr %1100, align 8, !tbaa !26
  br label %1185

1185:                                             ; preds = %1231, %1183
  %1186 = phi i32 [ %1184, %1183 ], [ %1232, %1231 ]
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1226

1188:                                             ; preds = %1185
  %1189 = load ptr, ptr %1101, align 8, !tbaa !27
  %1190 = load ptr, ptr %1102, align 8, !tbaa !28
  %1191 = icmp ugt ptr %1189, %1190
  br i1 %1191, label %1192, label %1223

1192:                                             ; preds = %1188
  %1193 = tail call ptr @__errno_location() #18
  br label %1194

1194:                                             ; preds = %1214, %1192
  %1195 = phi ptr [ %1190, %1192 ], [ %1217, %1214 ]
  %1196 = phi ptr [ %1189, %1192 ], [ %1218, %1214 ]
  store i32 0, ptr %1193, align 4, !tbaa !4
  store i32 0, ptr %1098, align 4, !tbaa !17
  %1197 = ptrtoint ptr %1196 to i64
  %1198 = ptrtoint ptr %1195 to i64
  %1199 = sub i64 %1197, %1198
  %1200 = call i64 @llvm.smin.i64(i64 %1199, i64 1073741824)
  %1201 = and i64 %1200, 4294967295
  %1202 = load i32, ptr %1099, align 4, !tbaa !31
  %1203 = call i64 @write(i32 noundef %1202, ptr noundef %1195, i64 noundef %1201) #16
  %1204 = and i64 %1203, 2147483648
  %1205 = icmp eq i64 %1204, 0
  br i1 %1205, label %1214, label %1206

1206:                                             ; preds = %1194
  %1207 = load i32, ptr %1193, align 4, !tbaa !4
  %1208 = icmp eq i32 %1207, 11
  br i1 %1208, label %1209, label %1211

1209:                                             ; preds = %1206
  store i32 1, ptr %1098, align 4, !tbaa !17
  %1210 = load i32, ptr %1193, align 4, !tbaa !4
  br label %1211

1211:                                             ; preds = %1209, %1206
  %1212 = phi i32 [ %1207, %1206 ], [ %1210, %1209 ]
  %1213 = call ptr @strerror(i32 noundef %1212) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1213) #16
  br label %1234

1214:                                             ; preds = %1194
  %1215 = load ptr, ptr %1102, align 8, !tbaa !28
  %1216 = and i64 %1203, 2147483647
  %1217 = getelementptr inbounds nuw i8, ptr %1215, i64 %1216
  store ptr %1217, ptr %1102, align 8, !tbaa !28
  %1218 = load ptr, ptr %1101, align 8, !tbaa !27
  %1219 = icmp ugt ptr %1218, %1217
  br i1 %1219, label %1194, label %1220, !llvm.loop !35

1220:                                             ; preds = %1214
  %1221 = load i32, ptr %1100, align 8, !tbaa !26
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1226

1223:                                             ; preds = %1220, %1188
  %1224 = load i32, ptr %349, align 8, !tbaa !18
  store i32 %1224, ptr %1100, align 8, !tbaa !26
  %1225 = load ptr, ptr %1094, align 8, !tbaa !22
  store ptr %1225, ptr %1101, align 8, !tbaa !27
  store ptr %1225, ptr %1102, align 8, !tbaa !28
  br label %1226

1226:                                             ; preds = %1223, %1220, %1185
  %1227 = phi i32 [ %1221, %1220 ], [ %1224, %1223 ], [ %1186, %1185 ]
  %1228 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %1229 = icmp eq i32 %1228, -2
  br i1 %1229, label %1230, label %1231

1230:                                             ; preds = %1226
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1234

1231:                                             ; preds = %1226
  %1232 = load i32, ptr %1100, align 8, !tbaa !26
  %1233 = icmp eq i32 %1227, %1232
  br i1 %1233, label %1234, label %1185, !llvm.loop !36

1234:                                             ; preds = %1168, %1231, %1230, %1211, %1178, %1165, %1145, %1133, %1127, %1117
  %1235 = phi i1 [ false, %1178 ], [ true, %1165 ], [ false, %1145 ], [ true, %1127 ], [ true, %1211 ], [ true, %1230 ], [ false, %1231 ], [ true, %1117 ], [ true, %1133 ], [ false, %1168 ]
  %1236 = load i32, ptr %762, align 8, !tbaa !41
  %1237 = sub i32 %1108, %1236
  %1238 = zext i32 %1237 to i64
  %1239 = load i64, ptr %1104, align 8, !tbaa !37
  %1240 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1239, i64 %1238), !nosanitize !38
  %1241 = extractvalue { i64, i1 } %1240, 1, !nosanitize !38
  br i1 %1241, label %807, label %1242, !prof !39, !nosanitize !38

1242:                                             ; preds = %1234
  %1243 = extractvalue { i64, i1 } %1240, 0, !nosanitize !38
  store i64 %1243, ptr %1104, align 8, !tbaa !37
  %1244 = sub i64 %1106, %1238
  br i1 %1235, label %1245, label %1248

1245:                                             ; preds = %1242
  %1246 = load i32, ptr %1098, align 4, !tbaa !17
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1258, label %1252

1248:                                             ; preds = %1242
  %1249 = icmp eq i64 %1244, 0
  br i1 %1249, label %1250, label %1105, !llvm.loop !43

1250:                                             ; preds = %1248, %808
  %1251 = and i32 %1, 255
  br label %1258

1252:                                             ; preds = %939, %1245
  %1253 = phi i64 [ %1244, %1245 ], [ 1, %939 ]
  %1254 = freeze i64 %1253
  %1255 = icmp eq i64 %1254, 0
  %1256 = and i32 %1, 255
  %1257 = select i1 %1255, i32 %1256, i32 -1
  br label %1258

1258:                                             ; preds = %345, %754, %1252, %939, %1245, %955, %1086, %1067, %967, %1014, %579, %560, %460, %507, %469, %448, %418, %397, %409, %976, %169, %150, %50, %97, %59, %38, %1250, %5, %14, %2, %384
  %1259 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %386, %384 ], [ -1, %939 ], [ -1, %754 ], [ %1257, %1252 ], [ %1251, %1250 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %150 ], [ -1, %169 ], [ -1, %1245 ], [ -1, %976 ], [ -1, %409 ], [ -1, %397 ], [ -1, %418 ], [ -1, %448 ], [ -1, %469 ], [ -1, %507 ], [ -1, %460 ], [ -1, %560 ], [ -1, %579 ], [ -1, %1014 ], [ -1, %967 ], [ -1, %1067 ], [ -1, %1086 ], [ -1, %955 ], [ -1, %345 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %1259
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %906, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %906

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %906, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #16
  br label %906

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %899, label %22

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
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #17
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %32, ptr %33, align 8, !tbaa !20
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #17
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %44, ptr %45, align 8, !tbaa !22
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %32) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

48:                                               ; preds = %42
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = tail call i32 @deflateInit2_(ptr noundef nonnull %27, i32 noundef %51, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %53, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !22
  tail call void @free(ptr noundef %57) #16
  %58 = load ptr, ptr %33, align 8, !tbaa !20
  tail call void @free(ptr noundef %58) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  br i1 %72, label %399, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %223, label %78

78:                                               ; preds = %73
  %79 = icmp eq i32 %69, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %78
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %82 = load i32, ptr %81, align 4, !tbaa !19
  %83 = shl i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #17
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %85, ptr %86, align 8, !tbaa !20
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #17
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %97, ptr %98, align 8, !tbaa !22
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  tail call void @free(ptr noundef nonnull %85) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

101:                                              ; preds = %95
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  %104 = load i32, ptr %103, align 8, !tbaa !23
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %104, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %106, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %98, align 8, !tbaa !22
  tail call void @free(ptr noundef %110) #16
  %111 = load ptr, ptr %86, align 8, !tbaa !20
  tail call void @free(ptr noundef %111) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

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
  br i1 %127, label %223, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #18
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
  %139 = tail call i64 @write(i32 noundef %138, ptr noundef %134, i64 noundef %137) #16
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
  %149 = tail call ptr @strerror(i32 noundef %148) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %149) #16
  br label %899

150:                                              ; preds = %133
  %151 = load i32, ptr %75, align 8, !tbaa !30
  %152 = sub i32 %151, %140
  store i32 %152, ptr %75, align 8, !tbaa !30
  %153 = load ptr, ptr %74, align 8, !tbaa !25
  %154 = and i64 %139, 2147483647
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  store ptr %155, ptr %74, align 8, !tbaa !25
  %156 = icmp eq i32 %151, %140
  br i1 %156, label %223, label %133, !llvm.loop !32

157:                                              ; preds = %121, %116
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !34
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %75, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %223, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @deflateReset(ptr noundef nonnull %74) #16
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
  %182 = tail call ptr @__errno_location() #18
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
  %192 = tail call i64 @write(i32 noundef %191, ptr noundef %184, i64 noundef %190) #16
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
  %202 = tail call ptr @strerror(i32 noundef %201) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %202) #16
  br label %899

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
  %217 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #16
  %218 = icmp eq i32 %217, -2
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %899

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp eq i32 %216, %221
  br i1 %222, label %223, label %174, !llvm.loop !36

223:                                              ; preds = %150, %220, %161, %125, %73
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
  %238 = load i64, ptr %70, align 8, !tbaa !29
  br label %239

239:                                              ; preds = %395, %223
  %240 = phi i64 [ %238, %223 ], [ %391, %395 ]
  %241 = phi i1 [ false, %223 ], [ true, %395 ]
  %242 = load i32, ptr %23, align 8, !tbaa !18
  %243 = zext i32 %242 to i64
  %244 = tail call i64 @llvm.smin.i64(i64 %240, i64 %243)
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr %224, align 8, !tbaa !20
  br i1 %241, label %251, label %247

247:                                              ; preds = %239
  %248 = and i64 %244, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %224, align 8, !tbaa !20
  %250 = load i32, ptr %23, align 8, !tbaa !18
  br label %251

251:                                              ; preds = %247, %239
  %252 = phi i32 [ %250, %247 ], [ %242, %239 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %239 ]
  store i32 %245, ptr %75, align 8, !tbaa !30
  store ptr %253, ptr %74, align 8, !tbaa !25
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %251
  %256 = load i32, ptr %226, align 4, !tbaa !19
  %257 = shl i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = tail call noalias ptr @malloc(i64 noundef %258) #17
  store ptr %259, ptr %224, align 8, !tbaa !20
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %378

262:                                              ; preds = %255
  %263 = load i32, ptr %225, align 8, !tbaa !21
  %264 = icmp eq i32 %263, 0
  %265 = load i32, ptr %226, align 4, !tbaa !19
  br i1 %264, label %267, label %266

266:                                              ; preds = %262
  store i32 %265, ptr %23, align 8, !tbaa !18
  br label %289

267:                                              ; preds = %262
  %268 = zext i32 %265 to i64
  %269 = tail call noalias ptr @malloc(i64 noundef %268) #17
  store ptr %269, ptr %227, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  tail call void @free(ptr noundef nonnull %259) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %378

272:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %228, i8 0, i64 24, i1 false)
  %273 = load i32, ptr %229, align 8, !tbaa !23
  %274 = load i32, ptr %230, align 4, !tbaa !24
  %275 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %273, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %274, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %227, align 8, !tbaa !22
  tail call void @free(ptr noundef %278) #16
  %279 = load ptr, ptr %224, align 8, !tbaa !20
  tail call void @free(ptr noundef %279) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %378

280:                                              ; preds = %272
  store ptr null, ptr %74, align 8, !tbaa !25
  %281 = load i32, ptr %225, align 8, !tbaa !21
  %282 = load i32, ptr %226, align 4, !tbaa !19
  store i32 %282, ptr %23, align 8, !tbaa !18
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
  %291 = load i32, ptr %75, align 8, !tbaa !30
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %378, label %293

293:                                              ; preds = %289
  %294 = tail call ptr @__errno_location() #18
  br label %295

295:                                              ; preds = %312, %293
  %296 = phi ptr [ %290, %293 ], [ %317, %312 ]
  store i32 0, ptr %294, align 4, !tbaa !4
  store i32 0, ptr %231, align 4, !tbaa !17
  %297 = load i32, ptr %75, align 8, !tbaa !30
  %298 = tail call i32 @llvm.umin.i32(i32 %297, i32 1073741824)
  %299 = zext nneg i32 %298 to i64
  %300 = load i32, ptr %232, align 4, !tbaa !31
  %301 = tail call i64 @write(i32 noundef %300, ptr noundef %296, i64 noundef %299) #16
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
  %311 = tail call ptr @strerror(i32 noundef %310) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %311) #16
  br label %378

312:                                              ; preds = %295
  %313 = load i32, ptr %75, align 8, !tbaa !30
  %314 = sub i32 %313, %302
  store i32 %314, ptr %75, align 8, !tbaa !30
  %315 = load ptr, ptr %74, align 8, !tbaa !25
  %316 = and i64 %301, 2147483647
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 %316
  store ptr %317, ptr %74, align 8, !tbaa !25
  %318 = icmp eq i32 %313, %302
  br i1 %318, label %378, label %295, !llvm.loop !32

319:                                              ; preds = %286, %284
  %320 = load i32, ptr %236, align 8, !tbaa !34
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %75, align 8, !tbaa !30
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %378, label %325

325:                                              ; preds = %322
  %326 = tail call i32 @deflateReset(ptr noundef nonnull %74) #16
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
  %337 = tail call ptr @__errno_location() #18
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
  %347 = tail call i64 @write(i32 noundef %346, ptr noundef %339, i64 noundef %345) #16
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
  %357 = tail call ptr @strerror(i32 noundef %356) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %357) #16
  br label %378

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
  %368 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %368, ptr %233, align 8, !tbaa !26
  %369 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %369, ptr %234, align 8, !tbaa !27
  store ptr %369, ptr %235, align 8, !tbaa !28
  br label %370

370:                                              ; preds = %367, %364, %329
  %371 = phi i32 [ %365, %364 ], [ %368, %367 ], [ %330, %329 ]
  %372 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #16
  %373 = icmp eq i32 %372, -2
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %378

375:                                              ; preds = %370
  %376 = load i32, ptr %233, align 8, !tbaa !26
  %377 = icmp eq i32 %371, %376
  br i1 %377, label %378, label %329, !llvm.loop !36

378:                                              ; preds = %312, %375, %374, %355, %322, %309, %289, %277, %271, %261
  %379 = phi i1 [ false, %322 ], [ true, %309 ], [ false, %289 ], [ true, %271 ], [ true, %355 ], [ true, %374 ], [ false, %375 ], [ true, %261 ], [ true, %277 ], [ false, %312 ]
  %380 = load i32, ptr %75, align 8, !tbaa !30
  %381 = sub i32 %245, %380
  %382 = zext i32 %381 to i64
  %383 = load i64, ptr %237, align 8, !tbaa !37
  %384 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %383, i64 %382), !nosanitize !38
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !38
  br i1 %385, label %386, label %387, !prof !39, !nosanitize !38

386:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

387:                                              ; preds = %378
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !38
  store i64 %388, ptr %237, align 8, !tbaa !37
  %389 = load i64, ptr %70, align 8, !tbaa !29
  %390 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %389, i64 %382), !nosanitize !38
  %391 = extractvalue { i64, i1 } %390, 0, !nosanitize !38
  %392 = extractvalue { i64, i1 } %390, 1, !nosanitize !38
  br i1 %392, label %393, label %394, !prof !39, !nosanitize !38

393:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

394:                                              ; preds = %387
  store i64 %391, ptr %70, align 8, !tbaa !29
  br i1 %379, label %899, label %395

395:                                              ; preds = %394
  %396 = icmp eq i64 %391, 0
  br i1 %396, label %397, label %239, !llvm.loop !40

397:                                              ; preds = %395
  %398 = load i32, ptr %23, align 8, !tbaa !18
  br label %399

399:                                              ; preds = %397, %68
  %400 = phi i32 [ %398, %397 ], [ %69, %68 ]
  %401 = zext i32 %400 to i64
  %402 = icmp ult i64 %17, %401
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %402, label %405, label %589

405:                                              ; preds = %399
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %420

420:                                              ; preds = %530, %405
  %421 = phi i64 [ %17, %405 ], [ %455, %530 ]
  %422 = phi ptr [ %1, %405 ], [ %454, %530 ]
  %423 = load i32, ptr %404, align 8, !tbaa !41
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %420
  %426 = load ptr, ptr %403, align 8, !tbaa !42
  %427 = load ptr, ptr %406, align 8, !tbaa !20
  br label %430

428:                                              ; preds = %420
  %429 = load ptr, ptr %406, align 8, !tbaa !20
  store ptr %429, ptr %403, align 8, !tbaa !42
  br label %430

430:                                              ; preds = %428, %425
  %431 = phi ptr [ %427, %425 ], [ %429, %428 ]
  %432 = phi ptr [ %426, %425 ], [ %429, %428 ]
  %433 = zext i32 %423 to i64
  %434 = getelementptr inbounds nuw i8, ptr %432, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = ptrtoint ptr %431 to i64
  %437 = sub i64 %435, %436
  %438 = trunc i64 %437 to i32
  %439 = load i32, ptr %23, align 8, !tbaa !18
  %440 = sub i32 %439, %438
  %441 = zext i32 %440 to i64
  %442 = tail call i64 @llvm.umin.i64(i64 %421, i64 %441)
  %443 = trunc nuw i64 %442 to i32
  %444 = and i64 %437, 4294967295
  %445 = getelementptr inbounds nuw i8, ptr %431, i64 %444
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %445, ptr align 1 %422, i64 %442, i1 false)
  %446 = load i32, ptr %404, align 8, !tbaa !41
  %447 = add i32 %446, %443
  store i32 %447, ptr %404, align 8, !tbaa !41
  %448 = load i64, ptr %407, align 8, !tbaa !37
  %449 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %448, i64 %442), !nosanitize !38
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !38
  br i1 %450, label %451, label %452, !prof !39, !nosanitize !38

451:                                              ; preds = %881, %430
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

452:                                              ; preds = %430
  %453 = extractvalue { i64, i1 } %449, 0, !nosanitize !38
  store i64 %453, ptr %407, align 8, !tbaa !37
  %454 = getelementptr inbounds nuw i8, ptr %422, i64 %442
  %455 = sub i64 %421, %442
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %899, label %457

457:                                              ; preds = %452
  %458 = load i32, ptr %23, align 8, !tbaa !18
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %491

460:                                              ; preds = %457
  %461 = load i32, ptr %409, align 4, !tbaa !19
  %462 = shl i32 %461, 1
  %463 = zext i32 %462 to i64
  %464 = tail call noalias ptr @malloc(i64 noundef %463) #17
  store ptr %464, ptr %406, align 8, !tbaa !20
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %467

466:                                              ; preds = %460
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

467:                                              ; preds = %460
  %468 = load i32, ptr %408, align 8, !tbaa !21
  %469 = icmp eq i32 %468, 0
  %470 = load i32, ptr %409, align 4, !tbaa !19
  br i1 %469, label %472, label %471

471:                                              ; preds = %467
  store i32 %470, ptr %23, align 8, !tbaa !18
  br label %494

472:                                              ; preds = %467
  %473 = zext i32 %470 to i64
  %474 = tail call noalias ptr @malloc(i64 noundef %473) #17
  store ptr %474, ptr %410, align 8, !tbaa !22
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %477

476:                                              ; preds = %472
  tail call void @free(ptr noundef nonnull %464) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

477:                                              ; preds = %472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %411, i8 0, i64 24, i1 false)
  %478 = load i32, ptr %412, align 8, !tbaa !23
  %479 = load i32, ptr %413, align 4, !tbaa !24
  %480 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %478, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %479, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr %410, align 8, !tbaa !22
  tail call void @free(ptr noundef %483) #16
  %484 = load ptr, ptr %406, align 8, !tbaa !20
  tail call void @free(ptr noundef %484) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %584

485:                                              ; preds = %477
  store ptr null, ptr %403, align 8, !tbaa !25
  %486 = load i32, ptr %408, align 8, !tbaa !21
  %487 = load i32, ptr %409, align 4, !tbaa !19
  store i32 %487, ptr %23, align 8, !tbaa !18
  %488 = icmp eq i32 %486, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %485
  store i32 %487, ptr %416, align 8, !tbaa !26
  %490 = load ptr, ptr %410, align 8, !tbaa !22
  store ptr %490, ptr %417, align 8, !tbaa !27
  store ptr %490, ptr %418, align 8, !tbaa !28
  br label %524

491:                                              ; preds = %457
  %492 = load i32, ptr %408, align 8, !tbaa !21
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %524, label %494

494:                                              ; preds = %491, %485, %471
  %495 = load i32, ptr %404, align 8, !tbaa !30
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %530, label %497

497:                                              ; preds = %494
  %498 = tail call ptr @__errno_location() #18
  %499 = load ptr, ptr %403, align 8, !tbaa !25
  br label %500

500:                                              ; preds = %517, %497
  %501 = phi ptr [ %499, %497 ], [ %522, %517 ]
  store i32 0, ptr %498, align 4, !tbaa !4
  store i32 0, ptr %414, align 4, !tbaa !17
  %502 = load i32, ptr %404, align 8, !tbaa !30
  %503 = tail call i32 @llvm.umin.i32(i32 %502, i32 1073741824)
  %504 = zext nneg i32 %503 to i64
  %505 = load i32, ptr %415, align 4, !tbaa !31
  %506 = tail call i64 @write(i32 noundef %505, ptr noundef %501, i64 noundef %504) #16
  %507 = trunc i64 %506 to i32
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %517

509:                                              ; preds = %500
  %510 = load i32, ptr %498, align 4, !tbaa !4
  %511 = icmp eq i32 %510, 11
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  store i32 1, ptr %414, align 4, !tbaa !17
  %513 = load i32, ptr %498, align 4, !tbaa !4
  br label %514

514:                                              ; preds = %512, %509
  %515 = phi i32 [ %510, %509 ], [ %513, %512 ]
  %516 = tail call ptr @strerror(i32 noundef %515) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %516) #16
  br label %584

517:                                              ; preds = %500
  %518 = load i32, ptr %404, align 8, !tbaa !30
  %519 = sub i32 %518, %507
  store i32 %519, ptr %404, align 8, !tbaa !30
  %520 = load ptr, ptr %403, align 8, !tbaa !25
  %521 = and i64 %506, 2147483647
  %522 = getelementptr inbounds nuw i8, ptr %520, i64 %521
  store ptr %522, ptr %403, align 8, !tbaa !25
  %523 = icmp eq i32 %518, %507
  br i1 %523, label %530, label %500, !llvm.loop !32

524:                                              ; preds = %491, %489
  %525 = load i32, ptr %419, align 8, !tbaa !34
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %404, align 8, !tbaa !30
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %517, %581, %527, %494
  br label %420

531:                                              ; preds = %527
  %532 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %419, align 8, !tbaa !34
  br label %533

533:                                              ; preds = %531, %524
  %534 = load i32, ptr %416, align 8, !tbaa !26
  br label %535

535:                                              ; preds = %581, %533
  %536 = phi i32 [ %534, %533 ], [ %582, %581 ]
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %576

538:                                              ; preds = %535
  %539 = load ptr, ptr %417, align 8, !tbaa !27
  %540 = load ptr, ptr %418, align 8, !tbaa !28
  %541 = icmp ugt ptr %539, %540
  br i1 %541, label %542, label %573

542:                                              ; preds = %538
  %543 = tail call ptr @__errno_location() #18
  br label %544

544:                                              ; preds = %564, %542
  %545 = phi ptr [ %540, %542 ], [ %567, %564 ]
  %546 = phi ptr [ %539, %542 ], [ %568, %564 ]
  store i32 0, ptr %543, align 4, !tbaa !4
  store i32 0, ptr %414, align 4, !tbaa !17
  %547 = ptrtoint ptr %546 to i64
  %548 = ptrtoint ptr %545 to i64
  %549 = sub i64 %547, %548
  %550 = tail call i64 @llvm.smin.i64(i64 %549, i64 1073741824)
  %551 = and i64 %550, 4294967295
  %552 = load i32, ptr %415, align 4, !tbaa !31
  %553 = tail call i64 @write(i32 noundef %552, ptr noundef %545, i64 noundef %551) #16
  %554 = and i64 %553, 2147483648
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %564, label %556

556:                                              ; preds = %544
  %557 = load i32, ptr %543, align 4, !tbaa !4
  %558 = icmp eq i32 %557, 11
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  store i32 1, ptr %414, align 4, !tbaa !17
  %560 = load i32, ptr %543, align 4, !tbaa !4
  br label %561

561:                                              ; preds = %559, %556
  %562 = phi i32 [ %557, %556 ], [ %560, %559 ]
  %563 = tail call ptr @strerror(i32 noundef %562) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %563) #16
  br label %584

564:                                              ; preds = %544
  %565 = load ptr, ptr %418, align 8, !tbaa !28
  %566 = and i64 %553, 2147483647
  %567 = getelementptr inbounds nuw i8, ptr %565, i64 %566
  store ptr %567, ptr %418, align 8, !tbaa !28
  %568 = load ptr, ptr %417, align 8, !tbaa !27
  %569 = icmp ugt ptr %568, %567
  br i1 %569, label %544, label %570, !llvm.loop !35

570:                                              ; preds = %564
  %571 = load i32, ptr %416, align 8, !tbaa !26
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %570, %538
  %574 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %574, ptr %416, align 8, !tbaa !26
  %575 = load ptr, ptr %410, align 8, !tbaa !22
  store ptr %575, ptr %417, align 8, !tbaa !27
  store ptr %575, ptr %418, align 8, !tbaa !28
  br label %576

576:                                              ; preds = %573, %570, %535
  %577 = phi i32 [ %571, %570 ], [ %574, %573 ], [ %536, %535 ]
  %578 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %579 = icmp eq i32 %578, -2
  br i1 %579, label %580, label %581

580:                                              ; preds = %576
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %584

581:                                              ; preds = %576
  %582 = load i32, ptr %416, align 8, !tbaa !26
  %583 = icmp eq i32 %577, %582
  br i1 %583, label %530, label %535, !llvm.loop !36

584:                                              ; preds = %580, %561, %514, %482, %476, %466
  %585 = load i32, ptr %414, align 4, !tbaa !17
  %586 = icmp eq i32 %585, 0
  %587 = sub i64 %17, %455
  %588 = select i1 %586, i64 0, i64 %587
  br label %899

589:                                              ; preds = %399
  %590 = load i32, ptr %404, align 8, !tbaa !41
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %737, label %592

592:                                              ; preds = %589
  %593 = icmp eq i32 %400, 0
  br i1 %593, label %594, label %635

594:                                              ; preds = %592
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %596 = load i32, ptr %595, align 4, !tbaa !19
  %597 = shl i32 %596, 1
  %598 = zext i32 %597 to i64
  %599 = tail call noalias ptr @malloc(i64 noundef %598) #17
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %599, ptr %600, align 8, !tbaa !20
  %601 = icmp eq ptr %599, null
  br i1 %601, label %602, label %603

602:                                              ; preds = %594
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

603:                                              ; preds = %594
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %605 = load i32, ptr %604, align 8, !tbaa !21
  %606 = icmp eq i32 %605, 0
  %607 = load i32, ptr %595, align 4, !tbaa !19
  br i1 %606, label %609, label %608

608:                                              ; preds = %603
  store i32 %607, ptr %23, align 8, !tbaa !18
  br label %639

609:                                              ; preds = %603
  %610 = zext i32 %607 to i64
  %611 = tail call noalias ptr @malloc(i64 noundef %610) #17
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %611, ptr %612, align 8, !tbaa !22
  %613 = icmp eq ptr %611, null
  br i1 %613, label %614, label %615

614:                                              ; preds = %609
  tail call void @free(ptr noundef nonnull %599) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

615:                                              ; preds = %609
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %616, i8 0, i64 24, i1 false)
  %618 = load i32, ptr %617, align 8, !tbaa !23
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %620 = load i32, ptr %619, align 4, !tbaa !24
  %621 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %618, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %620, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %615
  %624 = load ptr, ptr %612, align 8, !tbaa !22
  tail call void @free(ptr noundef %624) #16
  %625 = load ptr, ptr %600, align 8, !tbaa !20
  tail call void @free(ptr noundef %625) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %899

626:                                              ; preds = %615
  store ptr null, ptr %403, align 8, !tbaa !25
  %627 = load i32, ptr %604, align 8, !tbaa !21
  %628 = load i32, ptr %595, align 4, !tbaa !19
  store i32 %628, ptr %23, align 8, !tbaa !18
  %629 = icmp eq i32 %627, 0
  br i1 %629, label %630, label %639

630:                                              ; preds = %626
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %628, ptr %631, align 8, !tbaa !26
  %632 = load ptr, ptr %612, align 8, !tbaa !22
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %632, ptr %633, align 8, !tbaa !27
  %634 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %632, ptr %634, align 8, !tbaa !28
  br label %671

635:                                              ; preds = %592
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %637 = load i32, ptr %636, align 8, !tbaa !21
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %671, label %639

639:                                              ; preds = %635, %626, %608
  %640 = load i32, ptr %404, align 8, !tbaa !30
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %737, label %642

642:                                              ; preds = %639
  %643 = tail call ptr @__errno_location() #18
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %646 = load ptr, ptr %403, align 8, !tbaa !25
  br label %647

647:                                              ; preds = %664, %642
  %648 = phi ptr [ %646, %642 ], [ %669, %664 ]
  store i32 0, ptr %643, align 4, !tbaa !4
  store i32 0, ptr %644, align 4, !tbaa !17
  %649 = load i32, ptr %404, align 8, !tbaa !30
  %650 = tail call i32 @llvm.umin.i32(i32 %649, i32 1073741824)
  %651 = zext nneg i32 %650 to i64
  %652 = load i32, ptr %645, align 4, !tbaa !31
  %653 = tail call i64 @write(i32 noundef %652, ptr noundef %648, i64 noundef %651) #16
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
  %663 = tail call ptr @strerror(i32 noundef %662) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %663) #16
  br label %899

664:                                              ; preds = %647
  %665 = load i32, ptr %404, align 8, !tbaa !30
  %666 = sub i32 %665, %654
  store i32 %666, ptr %404, align 8, !tbaa !30
  %667 = load ptr, ptr %403, align 8, !tbaa !25
  %668 = and i64 %653, 2147483647
  %669 = getelementptr inbounds nuw i8, ptr %667, i64 %668
  store ptr %669, ptr %403, align 8, !tbaa !25
  %670 = icmp eq i32 %665, %654
  br i1 %670, label %737, label %647, !llvm.loop !32

671:                                              ; preds = %635, %630
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %673 = load i32, ptr %672, align 8, !tbaa !34
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %671
  %676 = load i32, ptr %404, align 8, !tbaa !30
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %737, label %678

678:                                              ; preds = %675
  %679 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %672, align 8, !tbaa !34
  br label %680

680:                                              ; preds = %678, %671
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %685 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %686 = getelementptr inbounds nuw i8, ptr %0, i64 56
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
  %696 = tail call ptr @__errno_location() #18
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
  %706 = tail call i64 @write(i32 noundef %705, ptr noundef %698, i64 noundef %704) #16
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
  %716 = tail call ptr @strerror(i32 noundef %715) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %716) #16
  br label %899

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
  %727 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %727, ptr %681, align 8, !tbaa !26
  %728 = load ptr, ptr %686, align 8, !tbaa !22
  store ptr %728, ptr %682, align 8, !tbaa !27
  store ptr %728, ptr %683, align 8, !tbaa !28
  br label %729

729:                                              ; preds = %726, %723, %688
  %730 = phi i32 [ %724, %723 ], [ %727, %726 ], [ %689, %688 ]
  %731 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %732 = icmp eq i32 %731, -2
  br i1 %732, label %733, label %734

733:                                              ; preds = %729
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %899

734:                                              ; preds = %729
  %735 = load i32, ptr %681, align 8, !tbaa !26
  %736 = icmp eq i32 %730, %735
  br i1 %736, label %737, label %688, !llvm.loop !36

737:                                              ; preds = %664, %734, %675, %639, %589
  store ptr %1, ptr %403, align 8, !tbaa !42
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %743 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %745 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %746 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %747 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %748 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %749 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %751 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %752

752:                                              ; preds = %897, %737
  %753 = phi i64 [ %17, %737 ], [ %891, %897 ]
  %754 = tail call i64 @llvm.umin.i64(i64 %753, i64 4294967295)
  %755 = trunc nuw i64 %754 to i32
  store i32 %755, ptr %404, align 8, !tbaa !41
  %756 = load i32, ptr %23, align 8, !tbaa !18
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %789

758:                                              ; preds = %752
  %759 = load i32, ptr %739, align 4, !tbaa !19
  %760 = shl i32 %759, 1
  %761 = zext i32 %760 to i64
  %762 = tail call noalias ptr @malloc(i64 noundef %761) #17
  store ptr %762, ptr %740, align 8, !tbaa !20
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %765

764:                                              ; preds = %758
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

765:                                              ; preds = %758
  %766 = load i32, ptr %738, align 8, !tbaa !21
  %767 = icmp eq i32 %766, 0
  %768 = load i32, ptr %739, align 4, !tbaa !19
  br i1 %767, label %770, label %769

769:                                              ; preds = %765
  store i32 %768, ptr %23, align 8, !tbaa !18
  br label %792

770:                                              ; preds = %765
  %771 = zext i32 %768 to i64
  %772 = tail call noalias ptr @malloc(i64 noundef %771) #17
  store ptr %772, ptr %741, align 8, !tbaa !22
  %773 = icmp eq ptr %772, null
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @free(ptr noundef nonnull %762) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

775:                                              ; preds = %770
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %742, i8 0, i64 24, i1 false)
  %776 = load i32, ptr %743, align 8, !tbaa !23
  %777 = load i32, ptr %744, align 4, !tbaa !24
  %778 = tail call i32 @deflateInit2_(ptr noundef nonnull %403, i32 noundef %776, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %777, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %783, label %780

780:                                              ; preds = %775
  %781 = load ptr, ptr %741, align 8, !tbaa !22
  tail call void @free(ptr noundef %781) #16
  %782 = load ptr, ptr %740, align 8, !tbaa !20
  tail call void @free(ptr noundef %782) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %881

783:                                              ; preds = %775
  store ptr null, ptr %403, align 8, !tbaa !25
  %784 = load i32, ptr %738, align 8, !tbaa !21
  %785 = load i32, ptr %739, align 4, !tbaa !19
  store i32 %785, ptr %23, align 8, !tbaa !18
  %786 = icmp eq i32 %784, 0
  br i1 %786, label %787, label %792

787:                                              ; preds = %783
  store i32 %785, ptr %747, align 8, !tbaa !26
  %788 = load ptr, ptr %741, align 8, !tbaa !22
  store ptr %788, ptr %748, align 8, !tbaa !27
  store ptr %788, ptr %749, align 8, !tbaa !28
  br label %822

789:                                              ; preds = %752
  %790 = load i32, ptr %738, align 8, !tbaa !21
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %822, label %792

792:                                              ; preds = %789, %783, %769
  %793 = load i32, ptr %404, align 8, !tbaa !30
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %881, label %795

795:                                              ; preds = %792
  %796 = tail call ptr @__errno_location() #18
  %797 = load ptr, ptr %403, align 8, !tbaa !25
  br label %798

798:                                              ; preds = %815, %795
  %799 = phi ptr [ %797, %795 ], [ %820, %815 ]
  store i32 0, ptr %796, align 4, !tbaa !4
  store i32 0, ptr %745, align 4, !tbaa !17
  %800 = load i32, ptr %404, align 8, !tbaa !30
  %801 = tail call i32 @llvm.umin.i32(i32 %800, i32 1073741824)
  %802 = zext nneg i32 %801 to i64
  %803 = load i32, ptr %746, align 4, !tbaa !31
  %804 = tail call i64 @write(i32 noundef %803, ptr noundef %799, i64 noundef %802) #16
  %805 = trunc i64 %804 to i32
  %806 = icmp slt i32 %805, 0
  br i1 %806, label %807, label %815

807:                                              ; preds = %798
  %808 = load i32, ptr %796, align 4, !tbaa !4
  %809 = icmp eq i32 %808, 11
  br i1 %809, label %810, label %812

810:                                              ; preds = %807
  store i32 1, ptr %745, align 4, !tbaa !17
  %811 = load i32, ptr %796, align 4, !tbaa !4
  br label %812

812:                                              ; preds = %810, %807
  %813 = phi i32 [ %808, %807 ], [ %811, %810 ]
  %814 = tail call ptr @strerror(i32 noundef %813) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %814) #16
  br label %881

815:                                              ; preds = %798
  %816 = load i32, ptr %404, align 8, !tbaa !30
  %817 = sub i32 %816, %805
  store i32 %817, ptr %404, align 8, !tbaa !30
  %818 = load ptr, ptr %403, align 8, !tbaa !25
  %819 = and i64 %804, 2147483647
  %820 = getelementptr inbounds nuw i8, ptr %818, i64 %819
  store ptr %820, ptr %403, align 8, !tbaa !25
  %821 = icmp eq i32 %816, %805
  br i1 %821, label %881, label %798, !llvm.loop !32

822:                                              ; preds = %789, %787
  %823 = load i32, ptr %750, align 8, !tbaa !34
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %830, label %825

825:                                              ; preds = %822
  %826 = load i32, ptr %404, align 8, !tbaa !30
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %881, label %828

828:                                              ; preds = %825
  %829 = tail call i32 @deflateReset(ptr noundef nonnull %403) #16
  store i32 0, ptr %750, align 8, !tbaa !34
  br label %830

830:                                              ; preds = %828, %822
  %831 = load i32, ptr %747, align 8, !tbaa !26
  br label %832

832:                                              ; preds = %878, %830
  %833 = phi i32 [ %831, %830 ], [ %879, %878 ]
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %873

835:                                              ; preds = %832
  %836 = load ptr, ptr %748, align 8, !tbaa !27
  %837 = load ptr, ptr %749, align 8, !tbaa !28
  %838 = icmp ugt ptr %836, %837
  br i1 %838, label %839, label %870

839:                                              ; preds = %835
  %840 = tail call ptr @__errno_location() #18
  br label %841

841:                                              ; preds = %861, %839
  %842 = phi ptr [ %837, %839 ], [ %864, %861 ]
  %843 = phi ptr [ %836, %839 ], [ %865, %861 ]
  store i32 0, ptr %840, align 4, !tbaa !4
  store i32 0, ptr %745, align 4, !tbaa !17
  %844 = ptrtoint ptr %843 to i64
  %845 = ptrtoint ptr %842 to i64
  %846 = sub i64 %844, %845
  %847 = tail call i64 @llvm.smin.i64(i64 %846, i64 1073741824)
  %848 = and i64 %847, 4294967295
  %849 = load i32, ptr %746, align 4, !tbaa !31
  %850 = tail call i64 @write(i32 noundef %849, ptr noundef %842, i64 noundef %848) #16
  %851 = and i64 %850, 2147483648
  %852 = icmp eq i64 %851, 0
  br i1 %852, label %861, label %853

853:                                              ; preds = %841
  %854 = load i32, ptr %840, align 4, !tbaa !4
  %855 = icmp eq i32 %854, 11
  br i1 %855, label %856, label %858

856:                                              ; preds = %853
  store i32 1, ptr %745, align 4, !tbaa !17
  %857 = load i32, ptr %840, align 4, !tbaa !4
  br label %858

858:                                              ; preds = %856, %853
  %859 = phi i32 [ %854, %853 ], [ %857, %856 ]
  %860 = tail call ptr @strerror(i32 noundef %859) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %860) #16
  br label %881

861:                                              ; preds = %841
  %862 = load ptr, ptr %749, align 8, !tbaa !28
  %863 = and i64 %850, 2147483647
  %864 = getelementptr inbounds nuw i8, ptr %862, i64 %863
  store ptr %864, ptr %749, align 8, !tbaa !28
  %865 = load ptr, ptr %748, align 8, !tbaa !27
  %866 = icmp ugt ptr %865, %864
  br i1 %866, label %841, label %867, !llvm.loop !35

867:                                              ; preds = %861
  %868 = load i32, ptr %747, align 8, !tbaa !26
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %873

870:                                              ; preds = %867, %835
  %871 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %871, ptr %747, align 8, !tbaa !26
  %872 = load ptr, ptr %741, align 8, !tbaa !22
  store ptr %872, ptr %748, align 8, !tbaa !27
  store ptr %872, ptr %749, align 8, !tbaa !28
  br label %873

873:                                              ; preds = %870, %867, %832
  %874 = phi i32 [ %868, %867 ], [ %871, %870 ], [ %833, %832 ]
  %875 = tail call i32 @deflate(ptr noundef nonnull %403, i32 noundef 0) #16
  %876 = icmp eq i32 %875, -2
  br i1 %876, label %877, label %878

877:                                              ; preds = %873
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %881

878:                                              ; preds = %873
  %879 = load i32, ptr %747, align 8, !tbaa !26
  %880 = icmp eq i32 %874, %879
  br i1 %880, label %881, label %832, !llvm.loop !36

881:                                              ; preds = %815, %878, %877, %858, %825, %812, %792, %780, %774, %764
  %882 = phi i1 [ false, %825 ], [ true, %812 ], [ false, %792 ], [ true, %774 ], [ true, %858 ], [ true, %877 ], [ false, %878 ], [ true, %764 ], [ true, %780 ], [ false, %815 ]
  %883 = load i32, ptr %404, align 8, !tbaa !41
  %884 = sub i32 %755, %883
  %885 = zext i32 %884 to i64
  %886 = load i64, ptr %751, align 8, !tbaa !37
  %887 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %886, i64 %885), !nosanitize !38
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !38
  br i1 %888, label %451, label %889, !prof !39, !nosanitize !38

889:                                              ; preds = %881
  %890 = extractvalue { i64, i1 } %887, 0, !nosanitize !38
  store i64 %890, ptr %751, align 8, !tbaa !37
  %891 = sub i64 %753, %885
  br i1 %882, label %892, label %897

892:                                              ; preds = %889
  %893 = load i32, ptr %745, align 4, !tbaa !17
  %894 = icmp eq i32 %893, 0
  %895 = sub i64 %17, %891
  %896 = select i1 %894, i64 0, i64 %895
  br label %899

897:                                              ; preds = %889
  %898 = icmp eq i64 %891, 0
  br i1 %898, label %899, label %752, !llvm.loop !43

899:                                              ; preds = %394, %897, %452, %20, %35, %47, %56, %88, %100, %109, %147, %200, %219, %584, %602, %614, %623, %661, %714, %733, %892
  %900 = phi i64 [ %896, %892 ], [ 0, %20 ], [ %17, %897 ], [ %588, %584 ], [ 0, %623 ], [ 0, %47 ], [ %17, %452 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %200 ], [ 0, %219 ], [ 0, %661 ], [ 0, %614 ], [ 0, %714 ], [ 0, %733 ], [ 0, %602 ], [ 0, %394 ]
  %901 = icmp ne i64 %17, 0
  %902 = icmp eq i64 %900, 0
  %903 = select i1 %901, i1 %902, i1 false
  %904 = trunc i64 %900 to i32
  %905 = select i1 %903, i32 -1, i32 %904
  br label %906

906:                                              ; preds = %4, %12, %2, %899, %19
  %907 = phi i32 [ %905, %899 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %907
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %634, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %634

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %634, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #17
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
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #17
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
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #16
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

61:                                               ; preds = %36, %49
  %62 = phi ptr [ %51, %49 ], [ %27, %36 ]
  tail call void @free(ptr noundef %62) #16
  br label %63

63:                                               ; preds = %61, %22
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %395, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %219, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %66, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #17
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

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
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #17
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %81) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  tail call void @free(ptr noundef %106) #16
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  tail call void @free(ptr noundef %107) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

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
  br i1 %123, label %219, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #18
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
  %135 = tail call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #16
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
  %145 = tail call ptr @strerror(i32 noundef %144) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #16
  br label %393

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = sub i32 %147, %136
  store i32 %148, ptr %71, align 8, !tbaa !30
  %149 = load ptr, ptr %6, align 8, !tbaa !25
  %150 = and i64 %135, 2147483647
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  store ptr %151, ptr %6, align 8, !tbaa !25
  %152 = icmp eq i32 %147, %136
  br i1 %152, label %219, label %129, !llvm.loop !32

153:                                              ; preds = %117, %112
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %155 = load i32, ptr %154, align 8, !tbaa !34
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %71, align 8, !tbaa !30
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %219, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
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
  %178 = tail call ptr @__errno_location() #18
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
  %188 = tail call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #16
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
  %198 = tail call ptr @strerror(i32 noundef %197) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #16
  br label %393

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
  %213 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %393

216:                                              ; preds = %211
  %217 = load i32, ptr %163, align 8, !tbaa !26
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %219, label %170, !llvm.loop !36

219:                                              ; preds = %146, %216, %157, %121, %70
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %234 = load i64, ptr %67, align 8, !tbaa !29
  br label %235

235:                                              ; preds = %391, %219
  %236 = phi i64 [ %234, %219 ], [ %387, %391 ]
  %237 = phi i1 [ false, %219 ], [ true, %391 ]
  %238 = load i32, ptr %19, align 8, !tbaa !18
  %239 = zext i32 %238 to i64
  %240 = tail call i64 @llvm.smin.i64(i64 %236, i64 %239)
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr %220, align 8, !tbaa !20
  br i1 %237, label %247, label %243

243:                                              ; preds = %235
  %244 = and i64 %240, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %242, i8 0, i64 %244, i1 false)
  %245 = load ptr, ptr %220, align 8, !tbaa !20
  %246 = load i32, ptr %19, align 8, !tbaa !18
  br label %247

247:                                              ; preds = %243, %235
  %248 = phi i32 [ %246, %243 ], [ %238, %235 ]
  %249 = phi ptr [ %245, %243 ], [ %242, %235 ]
  store i32 %241, ptr %71, align 8, !tbaa !30
  store ptr %249, ptr %6, align 8, !tbaa !25
  %250 = icmp eq i32 %248, 0
  br i1 %250, label %251, label %282

251:                                              ; preds = %247
  %252 = load i32, ptr %222, align 4, !tbaa !19
  %253 = shl i32 %252, 1
  %254 = zext i32 %253 to i64
  %255 = tail call noalias ptr @malloc(i64 noundef %254) #17
  store ptr %255, ptr %220, align 8, !tbaa !20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

258:                                              ; preds = %251
  %259 = load i32, ptr %221, align 8, !tbaa !21
  %260 = icmp eq i32 %259, 0
  %261 = load i32, ptr %222, align 4, !tbaa !19
  br i1 %260, label %263, label %262

262:                                              ; preds = %258
  store i32 %261, ptr %19, align 8, !tbaa !18
  br label %285

263:                                              ; preds = %258
  %264 = zext i32 %261 to i64
  %265 = tail call noalias ptr @malloc(i64 noundef %264) #17
  store ptr %265, ptr %223, align 8, !tbaa !22
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  tail call void @free(ptr noundef nonnull %255) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

268:                                              ; preds = %263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  %269 = load i32, ptr %225, align 8, !tbaa !23
  %270 = load i32, ptr %226, align 4, !tbaa !24
  %271 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %269, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %270, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %223, align 8, !tbaa !22
  tail call void @free(ptr noundef %274) #16
  %275 = load ptr, ptr %220, align 8, !tbaa !20
  tail call void @free(ptr noundef %275) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

276:                                              ; preds = %268
  store ptr null, ptr %6, align 8, !tbaa !25
  %277 = load i32, ptr %221, align 8, !tbaa !21
  %278 = load i32, ptr %222, align 4, !tbaa !19
  store i32 %278, ptr %19, align 8, !tbaa !18
  %279 = icmp eq i32 %277, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  store i32 %278, ptr %229, align 8, !tbaa !26
  %281 = load ptr, ptr %223, align 8, !tbaa !22
  store ptr %281, ptr %230, align 8, !tbaa !27
  store ptr %281, ptr %231, align 8, !tbaa !28
  br label %315

282:                                              ; preds = %247
  %283 = load i32, ptr %221, align 8, !tbaa !21
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %315, label %285

285:                                              ; preds = %282, %276, %262
  %286 = phi ptr [ %249, %282 ], [ null, %276 ], [ %249, %262 ]
  %287 = load i32, ptr %71, align 8, !tbaa !30
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %374, label %289

289:                                              ; preds = %285
  %290 = tail call ptr @__errno_location() #18
  br label %291

291:                                              ; preds = %308, %289
  %292 = phi ptr [ %286, %289 ], [ %313, %308 ]
  store i32 0, ptr %290, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = tail call i32 @llvm.umin.i32(i32 %293, i32 1073741824)
  %295 = zext nneg i32 %294 to i64
  %296 = load i32, ptr %228, align 4, !tbaa !31
  %297 = tail call i64 @write(i32 noundef %296, ptr noundef %292, i64 noundef %295) #16
  %298 = trunc i64 %297 to i32
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %291
  %301 = load i32, ptr %290, align 4, !tbaa !4
  %302 = icmp eq i32 %301, 11
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  store i32 1, ptr %227, align 4, !tbaa !17
  %304 = load i32, ptr %290, align 4, !tbaa !4
  br label %305

305:                                              ; preds = %303, %300
  %306 = phi i32 [ %301, %300 ], [ %304, %303 ]
  %307 = tail call ptr @strerror(i32 noundef %306) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %307) #16
  br label %374

308:                                              ; preds = %291
  %309 = load i32, ptr %71, align 8, !tbaa !30
  %310 = sub i32 %309, %298
  store i32 %310, ptr %71, align 8, !tbaa !30
  %311 = load ptr, ptr %6, align 8, !tbaa !25
  %312 = and i64 %297, 2147483647
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %6, align 8, !tbaa !25
  %314 = icmp eq i32 %309, %298
  br i1 %314, label %374, label %291, !llvm.loop !32

315:                                              ; preds = %282, %280
  %316 = load i32, ptr %232, align 8, !tbaa !34
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %315
  %319 = load i32, ptr %71, align 8, !tbaa !30
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %374, label %321

321:                                              ; preds = %318
  %322 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %232, align 8, !tbaa !34
  br label %323

323:                                              ; preds = %321, %315
  %324 = load i32, ptr %229, align 8, !tbaa !26
  br label %325

325:                                              ; preds = %371, %323
  %326 = phi i32 [ %324, %323 ], [ %372, %371 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %366

328:                                              ; preds = %325
  %329 = load ptr, ptr %230, align 8, !tbaa !27
  %330 = load ptr, ptr %231, align 8, !tbaa !28
  %331 = icmp ugt ptr %329, %330
  br i1 %331, label %332, label %363

332:                                              ; preds = %328
  %333 = tail call ptr @__errno_location() #18
  br label %334

334:                                              ; preds = %354, %332
  %335 = phi ptr [ %330, %332 ], [ %357, %354 ]
  %336 = phi ptr [ %329, %332 ], [ %358, %354 ]
  store i32 0, ptr %333, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %337 = ptrtoint ptr %336 to i64
  %338 = ptrtoint ptr %335 to i64
  %339 = sub i64 %337, %338
  %340 = tail call i64 @llvm.smin.i64(i64 %339, i64 1073741824)
  %341 = and i64 %340, 4294967295
  %342 = load i32, ptr %228, align 4, !tbaa !31
  %343 = tail call i64 @write(i32 noundef %342, ptr noundef %335, i64 noundef %341) #16
  %344 = and i64 %343, 2147483648
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %334
  %347 = load i32, ptr %333, align 4, !tbaa !4
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  store i32 1, ptr %227, align 4, !tbaa !17
  %350 = load i32, ptr %333, align 4, !tbaa !4
  br label %351

351:                                              ; preds = %349, %346
  %352 = phi i32 [ %347, %346 ], [ %350, %349 ]
  %353 = tail call ptr @strerror(i32 noundef %352) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %353) #16
  br label %374

354:                                              ; preds = %334
  %355 = load ptr, ptr %231, align 8, !tbaa !28
  %356 = and i64 %343, 2147483647
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store ptr %357, ptr %231, align 8, !tbaa !28
  %358 = load ptr, ptr %230, align 8, !tbaa !27
  %359 = icmp ugt ptr %358, %357
  br i1 %359, label %334, label %360, !llvm.loop !35

360:                                              ; preds = %354
  %361 = load i32, ptr %229, align 8, !tbaa !26
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %360, %328
  %364 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %364, ptr %229, align 8, !tbaa !26
  %365 = load ptr, ptr %223, align 8, !tbaa !22
  store ptr %365, ptr %230, align 8, !tbaa !27
  store ptr %365, ptr %231, align 8, !tbaa !28
  br label %366

366:                                              ; preds = %363, %360, %325
  %367 = phi i32 [ %361, %360 ], [ %364, %363 ], [ %326, %325 ]
  %368 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %369 = icmp eq i32 %368, -2
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %374

371:                                              ; preds = %366
  %372 = load i32, ptr %229, align 8, !tbaa !26
  %373 = icmp eq i32 %367, %372
  br i1 %373, label %374, label %325, !llvm.loop !36

374:                                              ; preds = %308, %371, %370, %351, %318, %305, %285, %273, %267, %257
  %375 = phi i1 [ false, %318 ], [ true, %305 ], [ false, %285 ], [ true, %267 ], [ true, %351 ], [ true, %370 ], [ false, %371 ], [ true, %257 ], [ true, %273 ], [ false, %308 ]
  %376 = load i32, ptr %71, align 8, !tbaa !30
  %377 = sub i32 %241, %376
  %378 = zext i32 %377 to i64
  %379 = load i64, ptr %233, align 8, !tbaa !37
  %380 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %379, i64 %378), !nosanitize !38
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !38
  br i1 %381, label %382, label %383, !prof !39, !nosanitize !38

382:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

383:                                              ; preds = %374
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !38
  store i64 %384, ptr %233, align 8, !tbaa !37
  %385 = load i64, ptr %67, align 8, !tbaa !29
  %386 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %385, i64 %378), !nosanitize !38
  %387 = extractvalue { i64, i1 } %386, 0, !nosanitize !38
  %388 = extractvalue { i64, i1 } %386, 1, !nosanitize !38
  br i1 %388, label %389, label %390, !prof !39, !nosanitize !38

389:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

390:                                              ; preds = %383
  store i64 %387, ptr %67, align 8, !tbaa !29
  br i1 %375, label %393, label %391

391:                                              ; preds = %390
  %392 = icmp eq i64 %387, 0
  br i1 %392, label %395, label %235, !llvm.loop !40

393:                                              ; preds = %390, %84, %105, %143, %96, %196, %215
  %394 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

395:                                              ; preds = %391, %65
  %396 = load ptr, ptr %6, align 8, !tbaa !25
  %397 = icmp eq ptr %396, null
  br i1 %397, label %566, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %400 = load i32, ptr %399, align 8, !tbaa !30
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds nuw i8, ptr %396, i64 %401
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %404 = load ptr, ptr %403, align 8, !tbaa !20
  %405 = load i32, ptr %19, align 8, !tbaa !18
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds nuw i8, ptr %404, i64 %406
  %408 = icmp ugt ptr %402, %407
  br i1 %408, label %409, label %566

409:                                              ; preds = %398
  %410 = icmp eq i32 %405, 0
  br i1 %410, label %411, label %451

411:                                              ; preds = %409
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %413 = load i32, ptr %412, align 4, !tbaa !19
  %414 = shl i32 %413, 1
  %415 = zext i32 %414 to i64
  %416 = tail call noalias ptr @malloc(i64 noundef %415) #17
  store ptr %416, ptr %403, align 8, !tbaa !20
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %419

418:                                              ; preds = %411
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

419:                                              ; preds = %411
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %421 = load i32, ptr %420, align 8, !tbaa !21
  %422 = icmp eq i32 %421, 0
  %423 = load i32, ptr %412, align 4, !tbaa !19
  br i1 %422, label %425, label %424

424:                                              ; preds = %419
  store i32 %423, ptr %19, align 8, !tbaa !18
  br label %455

425:                                              ; preds = %419
  %426 = zext i32 %423 to i64
  %427 = tail call noalias ptr @malloc(i64 noundef %426) #17
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %427, ptr %428, align 8, !tbaa !22
  %429 = icmp eq ptr %427, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  tail call void @free(ptr noundef nonnull %416) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

431:                                              ; preds = %425
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %432, i8 0, i64 24, i1 false)
  %434 = load i32, ptr %433, align 8, !tbaa !23
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %436 = load i32, ptr %435, align 4, !tbaa !24
  %437 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %434, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %436, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %428, align 8, !tbaa !22
  tail call void @free(ptr noundef %440) #16
  %441 = load ptr, ptr %403, align 8, !tbaa !20
  tail call void @free(ptr noundef %441) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

442:                                              ; preds = %431
  store ptr null, ptr %6, align 8, !tbaa !25
  %443 = load i32, ptr %420, align 8, !tbaa !21
  %444 = load i32, ptr %412, align 4, !tbaa !19
  store i32 %444, ptr %19, align 8, !tbaa !18
  %445 = icmp eq i32 %443, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %442
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %444, ptr %447, align 8, !tbaa !26
  %448 = load ptr, ptr %428, align 8, !tbaa !22
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %448, ptr %449, align 8, !tbaa !27
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %448, ptr %450, align 8, !tbaa !28
  br label %487

451:                                              ; preds = %409
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %453 = load i32, ptr %452, align 8, !tbaa !21
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %487, label %455

455:                                              ; preds = %451, %442, %424
  %456 = phi ptr [ %396, %451 ], [ null, %442 ], [ %396, %424 ]
  %457 = load i32, ptr %399, align 8, !tbaa !30
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %556, label %459

459:                                              ; preds = %455
  %460 = tail call ptr @__errno_location() #18
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %463

463:                                              ; preds = %480, %459
  %464 = phi ptr [ %456, %459 ], [ %485, %480 ]
  store i32 0, ptr %460, align 4, !tbaa !4
  store i32 0, ptr %461, align 4, !tbaa !17
  %465 = load i32, ptr %399, align 8, !tbaa !30
  %466 = tail call i32 @llvm.umin.i32(i32 %465, i32 1073741824)
  %467 = zext nneg i32 %466 to i64
  %468 = load i32, ptr %462, align 4, !tbaa !31
  %469 = tail call i64 @write(i32 noundef %468, ptr noundef %464, i64 noundef %467) #16
  %470 = trunc i64 %469 to i32
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %463
  %473 = load i32, ptr %460, align 4, !tbaa !4
  %474 = icmp eq i32 %473, 11
  br i1 %474, label %475, label %477

475:                                              ; preds = %472
  store i32 1, ptr %461, align 4, !tbaa !17
  %476 = load i32, ptr %460, align 4, !tbaa !4
  br label %477

477:                                              ; preds = %475, %472
  %478 = phi i32 [ %473, %472 ], [ %476, %475 ]
  %479 = tail call ptr @strerror(i32 noundef %478) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %479) #16
  br label %553

480:                                              ; preds = %463
  %481 = load i32, ptr %399, align 8, !tbaa !30
  %482 = sub i32 %481, %470
  store i32 %482, ptr %399, align 8, !tbaa !30
  %483 = load ptr, ptr %6, align 8, !tbaa !25
  %484 = and i64 %469, 2147483647
  %485 = getelementptr inbounds nuw i8, ptr %483, i64 %484
  store ptr %485, ptr %6, align 8, !tbaa !25
  %486 = icmp eq i32 %481, %470
  br i1 %486, label %553, label %463, !llvm.loop !32

487:                                              ; preds = %451, %446
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %489 = load i32, ptr %488, align 8, !tbaa !34
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %496, label %491

491:                                              ; preds = %487
  %492 = load i32, ptr %399, align 8, !tbaa !30
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %556, label %494

494:                                              ; preds = %491
  %495 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %488, align 8, !tbaa !34
  br label %496

496:                                              ; preds = %494, %487
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %503 = load i32, ptr %497, align 8, !tbaa !26
  br label %504

504:                                              ; preds = %550, %496
  %505 = phi i32 [ %503, %496 ], [ %551, %550 ]
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %545

507:                                              ; preds = %504
  %508 = load ptr, ptr %498, align 8, !tbaa !27
  %509 = load ptr, ptr %499, align 8, !tbaa !28
  %510 = icmp ugt ptr %508, %509
  br i1 %510, label %511, label %542

511:                                              ; preds = %507
  %512 = tail call ptr @__errno_location() #18
  br label %513

513:                                              ; preds = %533, %511
  %514 = phi ptr [ %509, %511 ], [ %536, %533 ]
  %515 = phi ptr [ %508, %511 ], [ %537, %533 ]
  store i32 0, ptr %512, align 4, !tbaa !4
  store i32 0, ptr %500, align 4, !tbaa !17
  %516 = ptrtoint ptr %515 to i64
  %517 = ptrtoint ptr %514 to i64
  %518 = sub i64 %516, %517
  %519 = tail call i64 @llvm.smin.i64(i64 %518, i64 1073741824)
  %520 = and i64 %519, 4294967295
  %521 = load i32, ptr %501, align 4, !tbaa !31
  %522 = tail call i64 @write(i32 noundef %521, ptr noundef %514, i64 noundef %520) #16
  %523 = and i64 %522, 2147483648
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %533, label %525

525:                                              ; preds = %513
  %526 = load i32, ptr %512, align 4, !tbaa !4
  %527 = icmp eq i32 %526, 11
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  store i32 1, ptr %500, align 4, !tbaa !17
  %529 = load i32, ptr %512, align 4, !tbaa !4
  br label %530

530:                                              ; preds = %528, %525
  %531 = phi i32 [ %526, %525 ], [ %529, %528 ]
  %532 = tail call ptr @strerror(i32 noundef %531) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %532) #16
  br label %553

533:                                              ; preds = %513
  %534 = load ptr, ptr %499, align 8, !tbaa !28
  %535 = and i64 %522, 2147483647
  %536 = getelementptr inbounds nuw i8, ptr %534, i64 %535
  store ptr %536, ptr %499, align 8, !tbaa !28
  %537 = load ptr, ptr %498, align 8, !tbaa !27
  %538 = icmp ugt ptr %537, %536
  br i1 %538, label %513, label %539, !llvm.loop !35

539:                                              ; preds = %533
  %540 = load i32, ptr %497, align 8, !tbaa !26
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %539, %507
  %543 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %543, ptr %497, align 8, !tbaa !26
  %544 = load ptr, ptr %502, align 8, !tbaa !22
  store ptr %544, ptr %498, align 8, !tbaa !27
  store ptr %544, ptr %499, align 8, !tbaa !28
  br label %545

545:                                              ; preds = %542, %539, %504
  %546 = phi i32 [ %540, %539 ], [ %543, %542 ], [ %505, %504 ]
  %547 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %548 = icmp eq i32 %547, -2
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %553

550:                                              ; preds = %545
  %551 = load i32, ptr %497, align 8, !tbaa !26
  %552 = icmp eq i32 %546, %551
  br i1 %552, label %553, label %504, !llvm.loop !36

553:                                              ; preds = %480, %550, %549, %530, %477, %439, %430, %418
  %554 = load i32, ptr %399, align 8, !tbaa !30
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %553, %491, %455
  %557 = load ptr, ptr %403, align 8, !tbaa !20
  store ptr %557, ptr %6, align 8, !tbaa !25
  br label %566

558:                                              ; preds = %553
  %559 = load ptr, ptr %403, align 8, !tbaa !20
  %560 = load ptr, ptr %6, align 8, !tbaa !25
  %561 = zext i32 %554 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %559, ptr align 1 %560, i64 %561, i1 false)
  %562 = load ptr, ptr %403, align 8, !tbaa !20
  store ptr %562, ptr %6, align 8, !tbaa !25
  %563 = load i32, ptr %399, align 8, !tbaa !30
  %564 = load i32, ptr %19, align 8, !tbaa !18
  %565 = icmp ule i32 %563, %564
  br label %566

566:                                              ; preds = %395, %398, %556, %558
  %567 = phi i1 [ %565, %558 ], [ true, %556 ], [ true, %398 ], [ true, %395 ]
  %568 = load i32, ptr %11, align 8, !tbaa !16
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %582, label %570

570:                                              ; preds = %566
  br i1 %567, label %576, label %571

571:                                              ; preds = %570
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %573 = load i32, ptr %572, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %571
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #16
  br label %576

576:                                              ; preds = %575, %571, %570
  %577 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %578 = load i32, ptr %577, align 4, !tbaa !17
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %576
  %581 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

582:                                              ; preds = %576, %566
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %584 = load i32, ptr %583, align 8, !tbaa !30
  %585 = icmp eq i32 %584, 0
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %587 = load ptr, ptr %586, align 8, !tbaa !20
  br i1 %585, label %590, label %588

588:                                              ; preds = %582
  %589 = load ptr, ptr %6, align 8, !tbaa !25
  br label %591

590:                                              ; preds = %582
  store ptr %587, ptr %6, align 8, !tbaa !25
  br label %591

591:                                              ; preds = %588, %590
  %592 = phi ptr [ %589, %588 ], [ %587, %590 ]
  %593 = ptrtoint ptr %592 to i64
  %594 = ptrtoint ptr %587 to i64
  %595 = sub i64 %593, %594
  %596 = getelementptr inbounds i8, ptr %587, i64 %595
  %597 = zext i32 %584 to i64
  %598 = getelementptr inbounds nuw i8, ptr %596, i64 %597
  %599 = load i32, ptr %19, align 8, !tbaa !18
  %600 = add i32 %599, -1
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds nuw i8, ptr %598, i64 %601
  store i8 0, ptr %602, align 1, !tbaa !44
  %603 = load i32, ptr %19, align 8, !tbaa !18
  %604 = zext i32 %603 to i64
  %605 = tail call i32 @vsnprintf(ptr noundef %598, i64 noundef %604, ptr noundef %1, ptr noundef %2) #16
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %634, label %607

607:                                              ; preds = %591
  %608 = load i32, ptr %19, align 8, !tbaa !18
  %609 = icmp ult i32 %605, %608
  br i1 %609, label %610, label %634

610:                                              ; preds = %607
  %611 = add i32 %608, -1
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds nuw i8, ptr %598, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !44
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %616, label %634

616:                                              ; preds = %610
  %617 = load i32, ptr %583, align 8, !tbaa !30
  %618 = add i32 %617, %605
  store i32 %618, ptr %583, align 8, !tbaa !30
  %619 = sext i32 %605 to i64
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %621 = load i64, ptr %620, align 8, !tbaa !37
  %622 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %621, i64 %619), !nosanitize !38
  %623 = extractvalue { i64, i1 } %622, 1, !nosanitize !38
  br i1 %623, label %624, label %625, !prof !39, !nosanitize !38

624:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

625:                                              ; preds = %616
  %626 = extractvalue { i64, i1 } %622, 0, !nosanitize !38
  store i64 %626, ptr %620, align 8, !tbaa !37
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %627 = load i32, ptr %11, align 8, !tbaa !16
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %633, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %631 = load i32, ptr %630, align 4, !tbaa !17
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %629, %625
  br label %634

634:                                              ; preds = %629, %591, %607, %610, %5, %14, %3, %633, %580, %393, %63
  %635 = phi i32 [ %581, %580 ], [ -2, %3 ], [ %64, %63 ], [ %394, %393 ], [ -2, %5 ], [ %605, %633 ], [ 0, %591 ], [ -2, %14 ], [ 0, %610 ], [ 0, %607 ], [ %627, %629 ]
  ret i32 %635
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %170, label %5

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
  br i1 %16, label %17, label %170

17:                                               ; preds = %5
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = shl i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #17
  store ptr %24, ptr %10, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %161

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
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #17
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %35, ptr %36, align 8, !tbaa !22
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %24) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %161

39:                                               ; preds = %33
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %42 = load i32, ptr %41, align 8, !tbaa !23
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %42, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %44, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %36, align 8, !tbaa !22
  tail call void @free(ptr noundef %48) #16
  %49 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void @free(ptr noundef %49) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %161

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
  br i1 %66, label %168, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @__errno_location() #18
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
  %77 = tail call i64 @write(i32 noundef %76, ptr noundef %72, i64 noundef %75) #16
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
  %87 = tail call ptr @strerror(i32 noundef %86) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %87) #16
  br label %161

88:                                               ; preds = %71
  %89 = load i32, ptr %6, align 8, !tbaa !30
  %90 = sub i32 %89, %78
  store i32 %90, ptr %6, align 8, !tbaa !30
  %91 = load ptr, ptr %2, align 8, !tbaa !25
  %92 = and i64 %77, 2147483647
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 %92
  store ptr %93, ptr %2, align 8, !tbaa !25
  %94 = icmp eq i32 %89, %78
  br i1 %94, label %161, label %71, !llvm.loop !32

95:                                               ; preds = %59, %54
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %97 = load i32, ptr %96, align 8, !tbaa !34
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %6, align 8, !tbaa !30
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %168, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @deflateReset(ptr noundef nonnull %2) #16
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
  %120 = tail call ptr @__errno_location() #18
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
  %130 = tail call i64 @write(i32 noundef %129, ptr noundef %122, i64 noundef %128) #16
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
  %140 = tail call ptr @strerror(i32 noundef %139) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %140) #16
  br label %161

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

150:                                              ; preds = %115, %147
  %151 = load i32, ptr %12, align 8, !tbaa !18
  store i32 %151, ptr %105, align 8, !tbaa !26
  %152 = load ptr, ptr %110, align 8, !tbaa !22
  store ptr %152, ptr %106, align 8, !tbaa !27
  store ptr %152, ptr %107, align 8, !tbaa !28
  br label %153

153:                                              ; preds = %112, %150, %147
  %154 = phi i32 [ %148, %147 ], [ %151, %150 ], [ %113, %112 ]
  %155 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #16
  %156 = icmp eq i32 %155, -2
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %161

158:                                              ; preds = %153
  %159 = load i32, ptr %105, align 8, !tbaa !26
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %161, label %112, !llvm.loop !36

161:                                              ; preds = %88, %158, %26, %38, %47, %85, %138, %157
  %162 = load i32, ptr %6, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %10, align 8, !tbaa !20
  %166 = load ptr, ptr %2, align 8, !tbaa !25
  %167 = zext i32 %162 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %165, ptr align 1 %166, i64 %167, i1 false)
  br label %168

168:                                              ; preds = %161, %63, %99, %164
  %169 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %169, ptr %2, align 8, !tbaa !25
  br label %170

170:                                              ; preds = %168, %1, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %634, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %634

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %634, label %18

18:                                               ; preds = %14, %10
  call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call noalias ptr @malloc(i64 noundef %26) #17
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
  %38 = call noalias ptr @malloc(i64 noundef %37) #17
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
  %47 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  call void @free(ptr noundef %50) #16
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
  call void @free(ptr noundef %62) #16
  br label %63

63:                                               ; preds = %61, %22
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %395, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %219, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %66, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = call noalias ptr @malloc(i64 noundef %80) #17
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

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
  %93 = call noalias ptr @malloc(i64 noundef %92) #17
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  call void @free(ptr noundef nonnull %81) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  call void @free(ptr noundef %106) #16
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  call void @free(ptr noundef %107) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %393

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
  br i1 %123, label %219, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #18
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
  %135 = call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #16
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
  %145 = call ptr @strerror(i32 noundef %144) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #16
  br label %393

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = sub i32 %147, %136
  store i32 %148, ptr %71, align 8, !tbaa !30
  %149 = load ptr, ptr %6, align 8, !tbaa !25
  %150 = and i64 %135, 2147483647
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  store ptr %151, ptr %6, align 8, !tbaa !25
  %152 = icmp eq i32 %147, %136
  br i1 %152, label %219, label %129, !llvm.loop !32

153:                                              ; preds = %117, %112
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %155 = load i32, ptr %154, align 8, !tbaa !34
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %71, align 8, !tbaa !30
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %219, label %160

160:                                              ; preds = %157
  %161 = call i32 @deflateReset(ptr noundef nonnull %6) #16
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
  %178 = tail call ptr @__errno_location() #18
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
  %188 = call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #16
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
  %198 = call ptr @strerror(i32 noundef %197) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #16
  br label %393

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
  %213 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %393

216:                                              ; preds = %211
  %217 = load i32, ptr %163, align 8, !tbaa !26
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %219, label %170, !llvm.loop !36

219:                                              ; preds = %146, %216, %157, %121, %70
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %234 = load i64, ptr %67, align 8, !tbaa !29
  br label %235

235:                                              ; preds = %391, %219
  %236 = phi i64 [ %234, %219 ], [ %387, %391 ]
  %237 = phi i1 [ false, %219 ], [ true, %391 ]
  %238 = load i32, ptr %19, align 8, !tbaa !18
  %239 = zext i32 %238 to i64
  %240 = call i64 @llvm.smin.i64(i64 %236, i64 %239)
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr %220, align 8, !tbaa !20
  br i1 %237, label %247, label %243

243:                                              ; preds = %235
  %244 = and i64 %240, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %242, i8 0, i64 %244, i1 false)
  %245 = load ptr, ptr %220, align 8, !tbaa !20
  %246 = load i32, ptr %19, align 8, !tbaa !18
  br label %247

247:                                              ; preds = %243, %235
  %248 = phi i32 [ %246, %243 ], [ %238, %235 ]
  %249 = phi ptr [ %245, %243 ], [ %242, %235 ]
  store i32 %241, ptr %71, align 8, !tbaa !30
  store ptr %249, ptr %6, align 8, !tbaa !25
  %250 = icmp eq i32 %248, 0
  br i1 %250, label %251, label %282

251:                                              ; preds = %247
  %252 = load i32, ptr %222, align 4, !tbaa !19
  %253 = shl i32 %252, 1
  %254 = zext i32 %253 to i64
  %255 = call noalias ptr @malloc(i64 noundef %254) #17
  store ptr %255, ptr %220, align 8, !tbaa !20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

258:                                              ; preds = %251
  %259 = load i32, ptr %221, align 8, !tbaa !21
  %260 = icmp eq i32 %259, 0
  %261 = load i32, ptr %222, align 4, !tbaa !19
  br i1 %260, label %263, label %262

262:                                              ; preds = %258
  store i32 %261, ptr %19, align 8, !tbaa !18
  br label %285

263:                                              ; preds = %258
  %264 = zext i32 %261 to i64
  %265 = call noalias ptr @malloc(i64 noundef %264) #17
  store ptr %265, ptr %223, align 8, !tbaa !22
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  call void @free(ptr noundef nonnull %255) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

268:                                              ; preds = %263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  %269 = load i32, ptr %225, align 8, !tbaa !23
  %270 = load i32, ptr %226, align 4, !tbaa !24
  %271 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %269, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %270, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %223, align 8, !tbaa !22
  call void @free(ptr noundef %274) #16
  %275 = load ptr, ptr %220, align 8, !tbaa !20
  call void @free(ptr noundef %275) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %374

276:                                              ; preds = %268
  store ptr null, ptr %6, align 8, !tbaa !25
  %277 = load i32, ptr %221, align 8, !tbaa !21
  %278 = load i32, ptr %222, align 4, !tbaa !19
  store i32 %278, ptr %19, align 8, !tbaa !18
  %279 = icmp eq i32 %277, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  store i32 %278, ptr %229, align 8, !tbaa !26
  %281 = load ptr, ptr %223, align 8, !tbaa !22
  store ptr %281, ptr %230, align 8, !tbaa !27
  store ptr %281, ptr %231, align 8, !tbaa !28
  br label %315

282:                                              ; preds = %247
  %283 = load i32, ptr %221, align 8, !tbaa !21
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %315, label %285

285:                                              ; preds = %282, %276, %262
  %286 = phi ptr [ %249, %282 ], [ null, %276 ], [ %249, %262 ]
  %287 = load i32, ptr %71, align 8, !tbaa !30
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %374, label %289

289:                                              ; preds = %285
  %290 = tail call ptr @__errno_location() #18
  br label %291

291:                                              ; preds = %308, %289
  %292 = phi ptr [ %286, %289 ], [ %313, %308 ]
  store i32 0, ptr %290, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = call i32 @llvm.umin.i32(i32 %293, i32 1073741824)
  %295 = zext nneg i32 %294 to i64
  %296 = load i32, ptr %228, align 4, !tbaa !31
  %297 = call i64 @write(i32 noundef %296, ptr noundef %292, i64 noundef %295) #16
  %298 = trunc i64 %297 to i32
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %291
  %301 = load i32, ptr %290, align 4, !tbaa !4
  %302 = icmp eq i32 %301, 11
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  store i32 1, ptr %227, align 4, !tbaa !17
  %304 = load i32, ptr %290, align 4, !tbaa !4
  br label %305

305:                                              ; preds = %303, %300
  %306 = phi i32 [ %301, %300 ], [ %304, %303 ]
  %307 = call ptr @strerror(i32 noundef %306) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %307) #16
  br label %374

308:                                              ; preds = %291
  %309 = load i32, ptr %71, align 8, !tbaa !30
  %310 = sub i32 %309, %298
  store i32 %310, ptr %71, align 8, !tbaa !30
  %311 = load ptr, ptr %6, align 8, !tbaa !25
  %312 = and i64 %297, 2147483647
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %6, align 8, !tbaa !25
  %314 = icmp eq i32 %309, %298
  br i1 %314, label %374, label %291, !llvm.loop !32

315:                                              ; preds = %282, %280
  %316 = load i32, ptr %232, align 8, !tbaa !34
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %315
  %319 = load i32, ptr %71, align 8, !tbaa !30
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %374, label %321

321:                                              ; preds = %318
  %322 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %232, align 8, !tbaa !34
  br label %323

323:                                              ; preds = %321, %315
  %324 = load i32, ptr %229, align 8, !tbaa !26
  br label %325

325:                                              ; preds = %371, %323
  %326 = phi i32 [ %324, %323 ], [ %372, %371 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %366

328:                                              ; preds = %325
  %329 = load ptr, ptr %230, align 8, !tbaa !27
  %330 = load ptr, ptr %231, align 8, !tbaa !28
  %331 = icmp ugt ptr %329, %330
  br i1 %331, label %332, label %363

332:                                              ; preds = %328
  %333 = tail call ptr @__errno_location() #18
  br label %334

334:                                              ; preds = %354, %332
  %335 = phi ptr [ %330, %332 ], [ %357, %354 ]
  %336 = phi ptr [ %329, %332 ], [ %358, %354 ]
  store i32 0, ptr %333, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %337 = ptrtoint ptr %336 to i64
  %338 = ptrtoint ptr %335 to i64
  %339 = sub i64 %337, %338
  %340 = call i64 @llvm.smin.i64(i64 %339, i64 1073741824)
  %341 = and i64 %340, 4294967295
  %342 = load i32, ptr %228, align 4, !tbaa !31
  %343 = call i64 @write(i32 noundef %342, ptr noundef %335, i64 noundef %341) #16
  %344 = and i64 %343, 2147483648
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %334
  %347 = load i32, ptr %333, align 4, !tbaa !4
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  store i32 1, ptr %227, align 4, !tbaa !17
  %350 = load i32, ptr %333, align 4, !tbaa !4
  br label %351

351:                                              ; preds = %349, %346
  %352 = phi i32 [ %347, %346 ], [ %350, %349 ]
  %353 = call ptr @strerror(i32 noundef %352) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %353) #16
  br label %374

354:                                              ; preds = %334
  %355 = load ptr, ptr %231, align 8, !tbaa !28
  %356 = and i64 %343, 2147483647
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store ptr %357, ptr %231, align 8, !tbaa !28
  %358 = load ptr, ptr %230, align 8, !tbaa !27
  %359 = icmp ugt ptr %358, %357
  br i1 %359, label %334, label %360, !llvm.loop !35

360:                                              ; preds = %354
  %361 = load i32, ptr %229, align 8, !tbaa !26
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %360, %328
  %364 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %364, ptr %229, align 8, !tbaa !26
  %365 = load ptr, ptr %223, align 8, !tbaa !22
  store ptr %365, ptr %230, align 8, !tbaa !27
  store ptr %365, ptr %231, align 8, !tbaa !28
  br label %366

366:                                              ; preds = %363, %360, %325
  %367 = phi i32 [ %361, %360 ], [ %364, %363 ], [ %326, %325 ]
  %368 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %369 = icmp eq i32 %368, -2
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %374

371:                                              ; preds = %366
  %372 = load i32, ptr %229, align 8, !tbaa !26
  %373 = icmp eq i32 %367, %372
  br i1 %373, label %374, label %325, !llvm.loop !36

374:                                              ; preds = %308, %371, %370, %351, %318, %305, %285, %273, %267, %257
  %375 = phi i1 [ false, %318 ], [ true, %305 ], [ false, %285 ], [ true, %267 ], [ true, %351 ], [ true, %370 ], [ false, %371 ], [ true, %257 ], [ true, %273 ], [ false, %308 ]
  %376 = load i32, ptr %71, align 8, !tbaa !30
  %377 = sub i32 %241, %376
  %378 = zext i32 %377 to i64
  %379 = load i64, ptr %233, align 8, !tbaa !37
  %380 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %379, i64 %378), !nosanitize !38
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !38
  br i1 %381, label %382, label %383, !prof !39, !nosanitize !38

382:                                              ; preds = %374
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

383:                                              ; preds = %374
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !38
  store i64 %384, ptr %233, align 8, !tbaa !37
  %385 = load i64, ptr %67, align 8, !tbaa !29
  %386 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %385, i64 %378), !nosanitize !38
  %387 = extractvalue { i64, i1 } %386, 0, !nosanitize !38
  %388 = extractvalue { i64, i1 } %386, 1, !nosanitize !38
  br i1 %388, label %389, label %390, !prof !39, !nosanitize !38

389:                                              ; preds = %383
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

390:                                              ; preds = %383
  store i64 %387, ptr %67, align 8, !tbaa !29
  br i1 %375, label %393, label %391

391:                                              ; preds = %390
  %392 = icmp eq i64 %387, 0
  br i1 %392, label %395, label %235, !llvm.loop !40

393:                                              ; preds = %390, %215, %196, %143, %105, %96, %84
  %394 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

395:                                              ; preds = %391, %65
  %396 = load ptr, ptr %6, align 8, !tbaa !25
  %397 = icmp eq ptr %396, null
  br i1 %397, label %566, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %400 = load i32, ptr %399, align 8, !tbaa !30
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds nuw i8, ptr %396, i64 %401
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %404 = load ptr, ptr %403, align 8, !tbaa !20
  %405 = load i32, ptr %19, align 8, !tbaa !18
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds nuw i8, ptr %404, i64 %406
  %408 = icmp ugt ptr %402, %407
  br i1 %408, label %409, label %566

409:                                              ; preds = %398
  %410 = icmp eq i32 %405, 0
  br i1 %410, label %411, label %451

411:                                              ; preds = %409
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %413 = load i32, ptr %412, align 4, !tbaa !19
  %414 = shl i32 %413, 1
  %415 = zext i32 %414 to i64
  %416 = call noalias ptr @malloc(i64 noundef %415) #17
  store ptr %416, ptr %403, align 8, !tbaa !20
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %419

418:                                              ; preds = %411
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

419:                                              ; preds = %411
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %421 = load i32, ptr %420, align 8, !tbaa !21
  %422 = icmp eq i32 %421, 0
  %423 = load i32, ptr %412, align 4, !tbaa !19
  br i1 %422, label %425, label %424

424:                                              ; preds = %419
  store i32 %423, ptr %19, align 8, !tbaa !18
  br label %455

425:                                              ; preds = %419
  %426 = zext i32 %423 to i64
  %427 = call noalias ptr @malloc(i64 noundef %426) #17
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %427, ptr %428, align 8, !tbaa !22
  %429 = icmp eq ptr %427, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  call void @free(ptr noundef nonnull %416) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

431:                                              ; preds = %425
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %432, i8 0, i64 24, i1 false)
  %434 = load i32, ptr %433, align 8, !tbaa !23
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %436 = load i32, ptr %435, align 4, !tbaa !24
  %437 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %434, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %436, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %428, align 8, !tbaa !22
  call void @free(ptr noundef %440) #16
  %441 = load ptr, ptr %403, align 8, !tbaa !20
  call void @free(ptr noundef %441) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %553

442:                                              ; preds = %431
  store ptr null, ptr %6, align 8, !tbaa !25
  %443 = load i32, ptr %420, align 8, !tbaa !21
  %444 = load i32, ptr %412, align 4, !tbaa !19
  store i32 %444, ptr %19, align 8, !tbaa !18
  %445 = icmp eq i32 %443, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %442
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %444, ptr %447, align 8, !tbaa !26
  %448 = load ptr, ptr %428, align 8, !tbaa !22
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %448, ptr %449, align 8, !tbaa !27
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %448, ptr %450, align 8, !tbaa !28
  br label %487

451:                                              ; preds = %409
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %453 = load i32, ptr %452, align 8, !tbaa !21
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %487, label %455

455:                                              ; preds = %451, %442, %424
  %456 = phi ptr [ %396, %451 ], [ null, %442 ], [ %396, %424 ]
  %457 = load i32, ptr %399, align 8, !tbaa !30
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %556, label %459

459:                                              ; preds = %455
  %460 = tail call ptr @__errno_location() #18
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %463

463:                                              ; preds = %480, %459
  %464 = phi ptr [ %456, %459 ], [ %485, %480 ]
  store i32 0, ptr %460, align 4, !tbaa !4
  store i32 0, ptr %461, align 4, !tbaa !17
  %465 = load i32, ptr %399, align 8, !tbaa !30
  %466 = call i32 @llvm.umin.i32(i32 %465, i32 1073741824)
  %467 = zext nneg i32 %466 to i64
  %468 = load i32, ptr %462, align 4, !tbaa !31
  %469 = call i64 @write(i32 noundef %468, ptr noundef %464, i64 noundef %467) #16
  %470 = trunc i64 %469 to i32
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %463
  %473 = load i32, ptr %460, align 4, !tbaa !4
  %474 = icmp eq i32 %473, 11
  br i1 %474, label %475, label %477

475:                                              ; preds = %472
  store i32 1, ptr %461, align 4, !tbaa !17
  %476 = load i32, ptr %460, align 4, !tbaa !4
  br label %477

477:                                              ; preds = %475, %472
  %478 = phi i32 [ %473, %472 ], [ %476, %475 ]
  %479 = call ptr @strerror(i32 noundef %478) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %479) #16
  br label %553

480:                                              ; preds = %463
  %481 = load i32, ptr %399, align 8, !tbaa !30
  %482 = sub i32 %481, %470
  store i32 %482, ptr %399, align 8, !tbaa !30
  %483 = load ptr, ptr %6, align 8, !tbaa !25
  %484 = and i64 %469, 2147483647
  %485 = getelementptr inbounds nuw i8, ptr %483, i64 %484
  store ptr %485, ptr %6, align 8, !tbaa !25
  %486 = icmp eq i32 %481, %470
  br i1 %486, label %553, label %463, !llvm.loop !32

487:                                              ; preds = %451, %446
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %489 = load i32, ptr %488, align 8, !tbaa !34
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %496, label %491

491:                                              ; preds = %487
  %492 = load i32, ptr %399, align 8, !tbaa !30
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %556, label %494

494:                                              ; preds = %491
  %495 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %488, align 8, !tbaa !34
  br label %496

496:                                              ; preds = %494, %487
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %503 = load i32, ptr %497, align 8, !tbaa !26
  br label %504

504:                                              ; preds = %550, %496
  %505 = phi i32 [ %503, %496 ], [ %551, %550 ]
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %545

507:                                              ; preds = %504
  %508 = load ptr, ptr %498, align 8, !tbaa !27
  %509 = load ptr, ptr %499, align 8, !tbaa !28
  %510 = icmp ugt ptr %508, %509
  br i1 %510, label %511, label %542

511:                                              ; preds = %507
  %512 = tail call ptr @__errno_location() #18
  br label %513

513:                                              ; preds = %533, %511
  %514 = phi ptr [ %509, %511 ], [ %536, %533 ]
  %515 = phi ptr [ %508, %511 ], [ %537, %533 ]
  store i32 0, ptr %512, align 4, !tbaa !4
  store i32 0, ptr %500, align 4, !tbaa !17
  %516 = ptrtoint ptr %515 to i64
  %517 = ptrtoint ptr %514 to i64
  %518 = sub i64 %516, %517
  %519 = call i64 @llvm.smin.i64(i64 %518, i64 1073741824)
  %520 = and i64 %519, 4294967295
  %521 = load i32, ptr %501, align 4, !tbaa !31
  %522 = call i64 @write(i32 noundef %521, ptr noundef %514, i64 noundef %520) #16
  %523 = and i64 %522, 2147483648
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %533, label %525

525:                                              ; preds = %513
  %526 = load i32, ptr %512, align 4, !tbaa !4
  %527 = icmp eq i32 %526, 11
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  store i32 1, ptr %500, align 4, !tbaa !17
  %529 = load i32, ptr %512, align 4, !tbaa !4
  br label %530

530:                                              ; preds = %528, %525
  %531 = phi i32 [ %526, %525 ], [ %529, %528 ]
  %532 = call ptr @strerror(i32 noundef %531) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %532) #16
  br label %553

533:                                              ; preds = %513
  %534 = load ptr, ptr %499, align 8, !tbaa !28
  %535 = and i64 %522, 2147483647
  %536 = getelementptr inbounds nuw i8, ptr %534, i64 %535
  store ptr %536, ptr %499, align 8, !tbaa !28
  %537 = load ptr, ptr %498, align 8, !tbaa !27
  %538 = icmp ugt ptr %537, %536
  br i1 %538, label %513, label %539, !llvm.loop !35

539:                                              ; preds = %533
  %540 = load i32, ptr %497, align 8, !tbaa !26
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %539, %507
  %543 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %543, ptr %497, align 8, !tbaa !26
  %544 = load ptr, ptr %502, align 8, !tbaa !22
  store ptr %544, ptr %498, align 8, !tbaa !27
  store ptr %544, ptr %499, align 8, !tbaa !28
  br label %545

545:                                              ; preds = %542, %539, %504
  %546 = phi i32 [ %540, %539 ], [ %543, %542 ], [ %505, %504 ]
  %547 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %548 = icmp eq i32 %547, -2
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %553

550:                                              ; preds = %545
  %551 = load i32, ptr %497, align 8, !tbaa !26
  %552 = icmp eq i32 %546, %551
  br i1 %552, label %553, label %504, !llvm.loop !36

553:                                              ; preds = %480, %550, %549, %530, %477, %439, %430, %418
  %554 = load i32, ptr %399, align 8, !tbaa !30
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %553, %491, %455
  %557 = load ptr, ptr %403, align 8, !tbaa !20
  store ptr %557, ptr %6, align 8, !tbaa !25
  br label %566

558:                                              ; preds = %553
  %559 = load ptr, ptr %403, align 8, !tbaa !20
  %560 = load ptr, ptr %6, align 8, !tbaa !25
  %561 = zext i32 %554 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %559, ptr align 1 %560, i64 %561, i1 false)
  %562 = load ptr, ptr %403, align 8, !tbaa !20
  store ptr %562, ptr %6, align 8, !tbaa !25
  %563 = load i32, ptr %399, align 8, !tbaa !30
  %564 = load i32, ptr %19, align 8, !tbaa !18
  %565 = icmp ule i32 %563, %564
  br label %566

566:                                              ; preds = %558, %556, %398, %395
  %567 = phi i1 [ %565, %558 ], [ true, %556 ], [ true, %398 ], [ true, %395 ]
  %568 = load i32, ptr %11, align 8, !tbaa !16
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %582, label %570

570:                                              ; preds = %566
  br i1 %567, label %576, label %571

571:                                              ; preds = %570
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %573 = load i32, ptr %572, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %571
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #16
  br label %576

576:                                              ; preds = %575, %571, %570
  %577 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %578 = load i32, ptr %577, align 4, !tbaa !17
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %576
  %581 = load i32, ptr %11, align 8, !tbaa !16
  br label %634

582:                                              ; preds = %576, %566
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %584 = load i32, ptr %583, align 8, !tbaa !30
  %585 = icmp eq i32 %584, 0
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %587 = load ptr, ptr %586, align 8, !tbaa !20
  br i1 %585, label %590, label %588

588:                                              ; preds = %582
  %589 = load ptr, ptr %6, align 8, !tbaa !25
  br label %591

590:                                              ; preds = %582
  store ptr %587, ptr %6, align 8, !tbaa !25
  br label %591

591:                                              ; preds = %590, %588
  %592 = phi ptr [ %589, %588 ], [ %587, %590 ]
  %593 = ptrtoint ptr %592 to i64
  %594 = ptrtoint ptr %587 to i64
  %595 = sub i64 %593, %594
  %596 = getelementptr inbounds i8, ptr %587, i64 %595
  %597 = zext i32 %584 to i64
  %598 = getelementptr inbounds nuw i8, ptr %596, i64 %597
  %599 = load i32, ptr %19, align 8, !tbaa !18
  %600 = add i32 %599, -1
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds nuw i8, ptr %598, i64 %601
  store i8 0, ptr %602, align 1, !tbaa !44
  %603 = load i32, ptr %19, align 8, !tbaa !18
  %604 = zext i32 %603 to i64
  %605 = call i32 @vsnprintf(ptr noundef %598, i64 noundef %604, ptr noundef readonly %1, ptr noundef nonnull %3) #16
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %634, label %607

607:                                              ; preds = %591
  %608 = load i32, ptr %19, align 8, !tbaa !18
  %609 = icmp ult i32 %605, %608
  br i1 %609, label %610, label %634

610:                                              ; preds = %607
  %611 = add i32 %608, -1
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds nuw i8, ptr %598, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !44
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %616, label %634

616:                                              ; preds = %610
  %617 = load i32, ptr %583, align 8, !tbaa !30
  %618 = add i32 %617, %605
  store i32 %618, ptr %583, align 8, !tbaa !30
  %619 = sext i32 %605 to i64
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %621 = load i64, ptr %620, align 8, !tbaa !37
  %622 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %621, i64 %619), !nosanitize !38
  %623 = extractvalue { i64, i1 } %622, 1, !nosanitize !38
  br i1 %623, label %624, label %625, !prof !39, !nosanitize !38

624:                                              ; preds = %616
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

625:                                              ; preds = %616
  %626 = extractvalue { i64, i1 } %622, 0, !nosanitize !38
  store i64 %626, ptr %620, align 8, !tbaa !37
  call fastcc void @gz_vacate(ptr noundef %0)
  %627 = load i32, ptr %11, align 8, !tbaa !16
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %633, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %631 = load i32, ptr %630, align 4, !tbaa !17
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %629, %625
  br label %634

634:                                              ; preds = %2, %5, %14, %63, %393, %580, %591, %607, %610, %629, %633
  %635 = phi i32 [ %581, %580 ], [ -2, %2 ], [ %64, %63 ], [ %394, %393 ], [ -2, %5 ], [ %605, %633 ], [ 0, %591 ], [ -2, %14 ], [ 0, %610 ], [ 0, %607 ], [ %627, %629 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %635
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %514, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %514

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %514, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %514, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %349, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %174, label %27

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
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #17
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %36, ptr %37, align 8, !tbaa !20
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

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
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #17
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %48, ptr %49, align 8, !tbaa !22
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %36) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %57 = load i32, ptr %56, align 4, !tbaa !24
  %58 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %55, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %57, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %49, align 8, !tbaa !22
  tail call void @free(ptr noundef %61) #16
  %62 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @free(ptr noundef %62) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

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
  br i1 %78, label %174, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @__errno_location() #18
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
  %90 = tail call i64 @write(i32 noundef %89, ptr noundef %85, i64 noundef %88) #16
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
  %100 = tail call ptr @strerror(i32 noundef %99) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %100) #16
  br label %512

101:                                              ; preds = %84
  %102 = load i32, ptr %24, align 8, !tbaa !30
  %103 = sub i32 %102, %91
  store i32 %103, ptr %24, align 8, !tbaa !30
  %104 = load ptr, ptr %23, align 8, !tbaa !25
  %105 = and i64 %90, 2147483647
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 %105
  store ptr %106, ptr %23, align 8, !tbaa !25
  %107 = icmp eq i32 %102, %91
  br i1 %107, label %174, label %84, !llvm.loop !32

108:                                              ; preds = %72, %67
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %110 = load i32, ptr %109, align 8, !tbaa !34
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %24, align 8, !tbaa !30
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %174, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @deflateReset(ptr noundef nonnull %23) #16
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
  %133 = tail call ptr @__errno_location() #18
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
  %143 = tail call i64 @write(i32 noundef %142, ptr noundef %135, i64 noundef %141) #16
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
  %153 = tail call ptr @strerror(i32 noundef %152) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %153) #16
  br label %512

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
  %168 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #16
  %169 = icmp eq i32 %168, -2
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %512

171:                                              ; preds = %166
  %172 = load i32, ptr %118, align 8, !tbaa !26
  %173 = icmp eq i32 %167, %172
  br i1 %173, label %174, label %125, !llvm.loop !36

174:                                              ; preds = %101, %171, %112, %76, %22
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %190 = load i64, ptr %19, align 8, !tbaa !29
  br label %191

191:                                              ; preds = %347, %174
  %192 = phi i64 [ %190, %174 ], [ %343, %347 ]
  %193 = phi i1 [ false, %174 ], [ true, %347 ]
  %194 = load i32, ptr %175, align 8, !tbaa !18
  %195 = zext i32 %194 to i64
  %196 = tail call i64 @llvm.smin.i64(i64 %192, i64 %195)
  %197 = trunc i64 %196 to i32
  %198 = load ptr, ptr %176, align 8, !tbaa !20
  br i1 %193, label %203, label %199

199:                                              ; preds = %191
  %200 = and i64 %196, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %198, i8 0, i64 %200, i1 false)
  %201 = load ptr, ptr %176, align 8, !tbaa !20
  %202 = load i32, ptr %175, align 8, !tbaa !18
  br label %203

203:                                              ; preds = %199, %191
  %204 = phi i32 [ %202, %199 ], [ %194, %191 ]
  %205 = phi ptr [ %201, %199 ], [ %198, %191 ]
  store i32 %197, ptr %24, align 8, !tbaa !30
  store ptr %205, ptr %23, align 8, !tbaa !25
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %207, label %238

207:                                              ; preds = %203
  %208 = load i32, ptr %178, align 4, !tbaa !19
  %209 = shl i32 %208, 1
  %210 = zext i32 %209 to i64
  %211 = tail call noalias ptr @malloc(i64 noundef %210) #17
  store ptr %211, ptr %176, align 8, !tbaa !20
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %330

214:                                              ; preds = %207
  %215 = load i32, ptr %177, align 8, !tbaa !21
  %216 = icmp eq i32 %215, 0
  %217 = load i32, ptr %178, align 4, !tbaa !19
  br i1 %216, label %219, label %218

218:                                              ; preds = %214
  store i32 %217, ptr %175, align 8, !tbaa !18
  br label %241

219:                                              ; preds = %214
  %220 = zext i32 %217 to i64
  %221 = tail call noalias ptr @malloc(i64 noundef %220) #17
  store ptr %221, ptr %179, align 8, !tbaa !22
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  tail call void @free(ptr noundef nonnull %211) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %330

224:                                              ; preds = %219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %180, i8 0, i64 24, i1 false)
  %225 = load i32, ptr %181, align 8, !tbaa !23
  %226 = load i32, ptr %182, align 4, !tbaa !24
  %227 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %225, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %226, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load ptr, ptr %179, align 8, !tbaa !22
  tail call void @free(ptr noundef %230) #16
  %231 = load ptr, ptr %176, align 8, !tbaa !20
  tail call void @free(ptr noundef %231) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %330

232:                                              ; preds = %224
  store ptr null, ptr %23, align 8, !tbaa !25
  %233 = load i32, ptr %177, align 8, !tbaa !21
  %234 = load i32, ptr %178, align 4, !tbaa !19
  store i32 %234, ptr %175, align 8, !tbaa !18
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  store i32 %234, ptr %185, align 8, !tbaa !26
  %237 = load ptr, ptr %179, align 8, !tbaa !22
  store ptr %237, ptr %186, align 8, !tbaa !27
  store ptr %237, ptr %187, align 8, !tbaa !28
  br label %271

238:                                              ; preds = %203
  %239 = load i32, ptr %177, align 8, !tbaa !21
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %271, label %241

241:                                              ; preds = %238, %232, %218
  %242 = phi ptr [ %205, %238 ], [ null, %232 ], [ %205, %218 ]
  %243 = load i32, ptr %24, align 8, !tbaa !30
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %330, label %245

245:                                              ; preds = %241
  %246 = tail call ptr @__errno_location() #18
  br label %247

247:                                              ; preds = %264, %245
  %248 = phi ptr [ %242, %245 ], [ %269, %264 ]
  store i32 0, ptr %246, align 4, !tbaa !4
  store i32 0, ptr %183, align 4, !tbaa !17
  %249 = load i32, ptr %24, align 8, !tbaa !30
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1073741824)
  %251 = zext nneg i32 %250 to i64
  %252 = load i32, ptr %184, align 4, !tbaa !31
  %253 = tail call i64 @write(i32 noundef %252, ptr noundef %248, i64 noundef %251) #16
  %254 = trunc i64 %253 to i32
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %247
  %257 = load i32, ptr %246, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  store i32 1, ptr %183, align 4, !tbaa !17
  %260 = load i32, ptr %246, align 4, !tbaa !4
  br label %261

261:                                              ; preds = %259, %256
  %262 = phi i32 [ %257, %256 ], [ %260, %259 ]
  %263 = tail call ptr @strerror(i32 noundef %262) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %263) #16
  br label %330

264:                                              ; preds = %247
  %265 = load i32, ptr %24, align 8, !tbaa !30
  %266 = sub i32 %265, %254
  store i32 %266, ptr %24, align 8, !tbaa !30
  %267 = load ptr, ptr %23, align 8, !tbaa !25
  %268 = and i64 %253, 2147483647
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  store ptr %269, ptr %23, align 8, !tbaa !25
  %270 = icmp eq i32 %265, %254
  br i1 %270, label %330, label %247, !llvm.loop !32

271:                                              ; preds = %238, %236
  %272 = load i32, ptr %188, align 8, !tbaa !34
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %24, align 8, !tbaa !30
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %330, label %277

277:                                              ; preds = %274
  %278 = tail call i32 @deflateReset(ptr noundef nonnull %23) #16
  store i32 0, ptr %188, align 8, !tbaa !34
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i32, ptr %185, align 8, !tbaa !26
  br label %281

281:                                              ; preds = %327, %279
  %282 = phi i32 [ %280, %279 ], [ %328, %327 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %322

284:                                              ; preds = %281
  %285 = load ptr, ptr %186, align 8, !tbaa !27
  %286 = load ptr, ptr %187, align 8, !tbaa !28
  %287 = icmp ugt ptr %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #18
  br label %290

290:                                              ; preds = %310, %288
  %291 = phi ptr [ %286, %288 ], [ %313, %310 ]
  %292 = phi ptr [ %285, %288 ], [ %314, %310 ]
  store i32 0, ptr %289, align 4, !tbaa !4
  store i32 0, ptr %183, align 4, !tbaa !17
  %293 = ptrtoint ptr %292 to i64
  %294 = ptrtoint ptr %291 to i64
  %295 = sub i64 %293, %294
  %296 = tail call i64 @llvm.smin.i64(i64 %295, i64 1073741824)
  %297 = and i64 %296, 4294967295
  %298 = load i32, ptr %184, align 4, !tbaa !31
  %299 = tail call i64 @write(i32 noundef %298, ptr noundef %291, i64 noundef %297) #16
  %300 = and i64 %299, 2147483648
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %290
  %303 = load i32, ptr %289, align 4, !tbaa !4
  %304 = icmp eq i32 %303, 11
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  store i32 1, ptr %183, align 4, !tbaa !17
  %306 = load i32, ptr %289, align 4, !tbaa !4
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %303, %302 ], [ %306, %305 ]
  %309 = tail call ptr @strerror(i32 noundef %308) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %309) #16
  br label %330

310:                                              ; preds = %290
  %311 = load ptr, ptr %187, align 8, !tbaa !28
  %312 = and i64 %299, 2147483647
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %187, align 8, !tbaa !28
  %314 = load ptr, ptr %186, align 8, !tbaa !27
  %315 = icmp ugt ptr %314, %313
  br i1 %315, label %290, label %316, !llvm.loop !35

316:                                              ; preds = %310
  %317 = load i32, ptr %185, align 8, !tbaa !26
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316, %284
  %320 = load i32, ptr %175, align 8, !tbaa !18
  store i32 %320, ptr %185, align 8, !tbaa !26
  %321 = load ptr, ptr %179, align 8, !tbaa !22
  store ptr %321, ptr %186, align 8, !tbaa !27
  store ptr %321, ptr %187, align 8, !tbaa !28
  br label %322

322:                                              ; preds = %319, %316, %281
  %323 = phi i32 [ %317, %316 ], [ %320, %319 ], [ %282, %281 ]
  %324 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #16
  %325 = icmp eq i32 %324, -2
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %330

327:                                              ; preds = %322
  %328 = load i32, ptr %185, align 8, !tbaa !26
  %329 = icmp eq i32 %323, %328
  br i1 %329, label %330, label %281, !llvm.loop !36

330:                                              ; preds = %264, %327, %326, %307, %274, %261, %241, %229, %223, %213
  %331 = phi i1 [ false, %274 ], [ true, %261 ], [ false, %241 ], [ true, %223 ], [ true, %307 ], [ true, %326 ], [ false, %327 ], [ true, %213 ], [ true, %229 ], [ false, %264 ]
  %332 = load i32, ptr %24, align 8, !tbaa !30
  %333 = sub i32 %197, %332
  %334 = zext i32 %333 to i64
  %335 = load i64, ptr %189, align 8, !tbaa !37
  %336 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %335, i64 %334), !nosanitize !38
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !38
  br i1 %337, label %338, label %339, !prof !39, !nosanitize !38

338:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

339:                                              ; preds = %330
  %340 = extractvalue { i64, i1 } %336, 0, !nosanitize !38
  store i64 %340, ptr %189, align 8, !tbaa !37
  %341 = load i64, ptr %19, align 8, !tbaa !29
  %342 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %341, i64 %334), !nosanitize !38
  %343 = extractvalue { i64, i1 } %342, 0, !nosanitize !38
  %344 = extractvalue { i64, i1 } %342, 1, !nosanitize !38
  br i1 %344, label %345, label %346, !prof !39, !nosanitize !38

345:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

346:                                              ; preds = %339
  store i64 %343, ptr %19, align 8, !tbaa !29
  br i1 %331, label %512, label %347

347:                                              ; preds = %346
  %348 = icmp eq i64 %343, 0
  br i1 %348, label %349, label %191, !llvm.loop !40

349:                                              ; preds = %347, %18
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %352 = load i32, ptr %351, align 8, !tbaa !18
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %395

354:                                              ; preds = %349
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %356 = load i32, ptr %355, align 4, !tbaa !19
  %357 = shl i32 %356, 1
  %358 = zext i32 %357 to i64
  %359 = tail call noalias ptr @malloc(i64 noundef %358) #17
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %359, ptr %360, align 8, !tbaa !20
  %361 = icmp eq ptr %359, null
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

363:                                              ; preds = %354
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %365 = load i32, ptr %364, align 8, !tbaa !21
  %366 = icmp eq i32 %365, 0
  %367 = load i32, ptr %355, align 4, !tbaa !19
  br i1 %366, label %369, label %368

368:                                              ; preds = %363
  store i32 %367, ptr %351, align 8, !tbaa !18
  br label %399

369:                                              ; preds = %363
  %370 = zext i32 %367 to i64
  %371 = tail call noalias ptr @malloc(i64 noundef %370) #17
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %371, ptr %372, align 8, !tbaa !22
  %373 = icmp eq ptr %371, null
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  tail call void @free(ptr noundef nonnull %359) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

375:                                              ; preds = %369
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %376, i8 0, i64 24, i1 false)
  %378 = load i32, ptr %377, align 8, !tbaa !23
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %380 = load i32, ptr %379, align 4, !tbaa !24
  %381 = tail call i32 @deflateInit2_(ptr noundef nonnull %350, i32 noundef %378, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %380, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %375
  %384 = load ptr, ptr %372, align 8, !tbaa !22
  tail call void @free(ptr noundef %384) #16
  %385 = load ptr, ptr %360, align 8, !tbaa !20
  tail call void @free(ptr noundef %385) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %512

386:                                              ; preds = %375
  store ptr null, ptr %350, align 8, !tbaa !25
  %387 = load i32, ptr %364, align 8, !tbaa !21
  %388 = load i32, ptr %355, align 4, !tbaa !19
  store i32 %388, ptr %351, align 8, !tbaa !18
  %389 = icmp eq i32 %387, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %386
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %388, ptr %391, align 8, !tbaa !26
  %392 = load ptr, ptr %372, align 8, !tbaa !22
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %392, ptr %393, align 8, !tbaa !27
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %392, ptr %394, align 8, !tbaa !28
  br label %432

395:                                              ; preds = %349
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %397 = load i32, ptr %396, align 8, !tbaa !21
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %432, label %399

399:                                              ; preds = %395, %386, %368
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %401 = load i32, ptr %400, align 8, !tbaa !30
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %512, label %403

403:                                              ; preds = %399
  %404 = tail call ptr @__errno_location() #18
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %407 = load ptr, ptr %350, align 8, !tbaa !25
  br label %408

408:                                              ; preds = %425, %403
  %409 = phi ptr [ %407, %403 ], [ %430, %425 ]
  store i32 0, ptr %404, align 4, !tbaa !4
  store i32 0, ptr %405, align 4, !tbaa !17
  %410 = load i32, ptr %400, align 8, !tbaa !30
  %411 = tail call i32 @llvm.umin.i32(i32 %410, i32 1073741824)
  %412 = zext nneg i32 %411 to i64
  %413 = load i32, ptr %406, align 4, !tbaa !31
  %414 = tail call i64 @write(i32 noundef %413, ptr noundef %409, i64 noundef %412) #16
  %415 = trunc i64 %414 to i32
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %408
  %418 = load i32, ptr %404, align 4, !tbaa !4
  %419 = icmp eq i32 %418, 11
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  store i32 1, ptr %405, align 4, !tbaa !17
  %421 = load i32, ptr %404, align 4, !tbaa !4
  br label %422

422:                                              ; preds = %420, %417
  %423 = phi i32 [ %418, %417 ], [ %421, %420 ]
  %424 = tail call ptr @strerror(i32 noundef %423) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %424) #16
  br label %512

425:                                              ; preds = %408
  %426 = load i32, ptr %400, align 8, !tbaa !30
  %427 = sub i32 %426, %415
  store i32 %427, ptr %400, align 8, !tbaa !30
  %428 = load ptr, ptr %350, align 8, !tbaa !25
  %429 = and i64 %414, 2147483647
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 %429
  store ptr %430, ptr %350, align 8, !tbaa !25
  %431 = icmp eq i32 %426, %415
  br i1 %431, label %512, label %408, !llvm.loop !32

432:                                              ; preds = %395, %390
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %434 = load i32, ptr %433, align 8, !tbaa !34
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %438 = load i32, ptr %437, align 8, !tbaa !30
  %439 = or i32 %438, %1
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %512, label %441

441:                                              ; preds = %436
  %442 = tail call i32 @deflateReset(ptr noundef nonnull %350) #16
  store i32 0, ptr %433, align 8, !tbaa !34
  br label %443

443:                                              ; preds = %441, %432
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %445 = icmp ne i32 %1, 0
  %446 = icmp ne i32 %1, 4
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %452 = load i32, ptr %444, align 8, !tbaa !26
  br label %453

453:                                              ; preds = %506, %443
  %454 = phi i32 [ %452, %443 ], [ %507, %506 ]
  %455 = phi i32 [ 0, %443 ], [ %503, %506 ]
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %461, label %457

457:                                              ; preds = %453
  %458 = icmp eq i32 %455, 1
  %459 = or i1 %446, %458
  %460 = and i1 %445, %459
  br i1 %460, label %461, label %501

461:                                              ; preds = %457, %453
  %462 = load ptr, ptr %447, align 8, !tbaa !27
  %463 = load ptr, ptr %448, align 8, !tbaa !28
  %464 = icmp ugt ptr %462, %463
  br i1 %464, label %465, label %495

465:                                              ; preds = %461
  %466 = tail call ptr @__errno_location() #18
  br label %467

467:                                              ; preds = %487, %465
  %468 = phi ptr [ %463, %465 ], [ %490, %487 ]
  %469 = phi ptr [ %462, %465 ], [ %491, %487 ]
  store i32 0, ptr %466, align 4, !tbaa !4
  store i32 0, ptr %449, align 4, !tbaa !17
  %470 = ptrtoint ptr %469 to i64
  %471 = ptrtoint ptr %468 to i64
  %472 = sub i64 %470, %471
  %473 = tail call i64 @llvm.smin.i64(i64 %472, i64 1073741824)
  %474 = and i64 %473, 4294967295
  %475 = load i32, ptr %450, align 4, !tbaa !31
  %476 = tail call i64 @write(i32 noundef %475, ptr noundef %468, i64 noundef %474) #16
  %477 = and i64 %476, 2147483648
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %487, label %479

479:                                              ; preds = %467
  %480 = load i32, ptr %466, align 4, !tbaa !4
  %481 = icmp eq i32 %480, 11
  br i1 %481, label %482, label %484

482:                                              ; preds = %479
  store i32 1, ptr %449, align 4, !tbaa !17
  %483 = load i32, ptr %466, align 4, !tbaa !4
  br label %484

484:                                              ; preds = %482, %479
  %485 = phi i32 [ %480, %479 ], [ %483, %482 ]
  %486 = tail call ptr @strerror(i32 noundef %485) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %486) #16
  br label %512

487:                                              ; preds = %467
  %488 = load ptr, ptr %448, align 8, !tbaa !28
  %489 = and i64 %476, 2147483647
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 %489
  store ptr %490, ptr %448, align 8, !tbaa !28
  %491 = load ptr, ptr %447, align 8, !tbaa !27
  %492 = icmp ugt ptr %491, %490
  br i1 %492, label %467, label %493, !llvm.loop !35

493:                                              ; preds = %487
  %494 = load i32, ptr %444, align 8, !tbaa !26
  br label %495

495:                                              ; preds = %493, %461
  %496 = phi i32 [ %494, %493 ], [ %454, %461 ]
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %495
  %499 = load i32, ptr %351, align 8, !tbaa !18
  store i32 %499, ptr %444, align 8, !tbaa !26
  %500 = load ptr, ptr %451, align 8, !tbaa !22
  store ptr %500, ptr %447, align 8, !tbaa !27
  store ptr %500, ptr %448, align 8, !tbaa !28
  br label %501

501:                                              ; preds = %498, %495, %457
  %502 = phi i32 [ %496, %495 ], [ %499, %498 ], [ %454, %457 ]
  %503 = tail call i32 @deflate(ptr noundef nonnull %350, i32 noundef range(i32 0, 6) %1) #16
  %504 = icmp eq i32 %503, -2
  br i1 %504, label %505, label %506

505:                                              ; preds = %501
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %512

506:                                              ; preds = %501
  %507 = load i32, ptr %444, align 8, !tbaa !26
  %508 = icmp eq i32 %502, %507
  br i1 %508, label %509, label %453, !llvm.loop !36

509:                                              ; preds = %506
  %510 = icmp eq i32 %1, 4
  br i1 %510, label %511, label %512

511:                                              ; preds = %509
  store i32 1, ptr %433, align 8, !tbaa !34
  br label %512

512:                                              ; preds = %346, %425, %511, %509, %505, %484, %436, %422, %399, %383, %374, %362, %170, %151, %51, %98, %60, %39
  %513 = load i32, ptr %9, align 8, !tbaa !16
  br label %514

514:                                              ; preds = %512, %16, %4, %12, %2
  %515 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %513, %512 ]
  ret i32 %515
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %466, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %466

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %466, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %466

22:                                               ; preds = %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %1, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = icmp eq i32 %2, %28
  br i1 %29, label %466, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %357, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %182, label %38

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
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #17
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !20
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %355

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
  %58 = tail call noalias ptr @malloc(i64 noundef %57) #17
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %58, ptr %59, align 8, !tbaa !22
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @free(ptr noundef nonnull %47) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %355

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  %64 = load i32, ptr %23, align 8, !tbaa !23
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %66 = load i32, ptr %65, align 4, !tbaa !24
  %67 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %64, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %66, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %59, align 8, !tbaa !22
  tail call void @free(ptr noundef %70) #16
  %71 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void @free(ptr noundef %71) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %355

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
  br i1 %86, label %182, label %87

87:                                               ; preds = %84
  %88 = tail call ptr @__errno_location() #18
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
  %98 = tail call i64 @write(i32 noundef %97, ptr noundef %93, i64 noundef %96) #16
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
  %108 = tail call ptr @strerror(i32 noundef %107) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %108) #16
  br label %355

109:                                              ; preds = %92
  %110 = load i32, ptr %35, align 8, !tbaa !30
  %111 = sub i32 %110, %99
  store i32 %111, ptr %35, align 8, !tbaa !30
  %112 = load ptr, ptr %6, align 8, !tbaa !25
  %113 = and i64 %98, 2147483647
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  store ptr %114, ptr %6, align 8, !tbaa !25
  %115 = icmp eq i32 %110, %99
  br i1 %115, label %182, label %92, !llvm.loop !32

116:                                              ; preds = %81, %76
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %118 = load i32, ptr %117, align 8, !tbaa !34
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %35, align 8, !tbaa !30
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %182, label %123

123:                                              ; preds = %120
  %124 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
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
  %141 = tail call ptr @__errno_location() #18
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
  %151 = tail call i64 @write(i32 noundef %150, ptr noundef %143, i64 noundef %149) #16
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
  %161 = tail call ptr @strerror(i32 noundef %160) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %161) #16
  br label %355

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
  %176 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %177 = icmp eq i32 %176, -2
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %355

179:                                              ; preds = %174
  %180 = load i32, ptr %126, align 8, !tbaa !26
  %181 = icmp eq i32 %175, %180
  br i1 %181, label %182, label %133, !llvm.loop !36

182:                                              ; preds = %109, %179, %120, %84, %34
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %196 = load i64, ptr %31, align 8, !tbaa !29
  br label %197

197:                                              ; preds = %353, %182
  %198 = phi i64 [ %196, %182 ], [ %349, %353 ]
  %199 = phi i1 [ false, %182 ], [ true, %353 ]
  %200 = load i32, ptr %183, align 8, !tbaa !18
  %201 = zext i32 %200 to i64
  %202 = tail call i64 @llvm.smin.i64(i64 %198, i64 %201)
  %203 = trunc i64 %202 to i32
  %204 = load ptr, ptr %184, align 8, !tbaa !20
  br i1 %199, label %209, label %205

205:                                              ; preds = %197
  %206 = and i64 %202, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %204, i8 0, i64 %206, i1 false)
  %207 = load ptr, ptr %184, align 8, !tbaa !20
  %208 = load i32, ptr %183, align 8, !tbaa !18
  br label %209

209:                                              ; preds = %205, %197
  %210 = phi i32 [ %208, %205 ], [ %200, %197 ]
  %211 = phi ptr [ %207, %205 ], [ %204, %197 ]
  store i32 %203, ptr %35, align 8, !tbaa !30
  store ptr %211, ptr %6, align 8, !tbaa !25
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %209
  %214 = load i32, ptr %185, align 4, !tbaa !19
  %215 = shl i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #17
  store ptr %217, ptr %184, align 8, !tbaa !20
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %336

220:                                              ; preds = %213
  %221 = load i32, ptr %19, align 8, !tbaa !21
  %222 = icmp eq i32 %221, 0
  %223 = load i32, ptr %185, align 4, !tbaa !19
  br i1 %222, label %225, label %224

224:                                              ; preds = %220
  store i32 %223, ptr %183, align 8, !tbaa !18
  br label %247

225:                                              ; preds = %220
  %226 = zext i32 %223 to i64
  %227 = tail call noalias ptr @malloc(i64 noundef %226) #17
  store ptr %227, ptr %186, align 8, !tbaa !22
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  tail call void @free(ptr noundef nonnull %217) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %336

230:                                              ; preds = %225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %187, i8 0, i64 24, i1 false)
  %231 = load i32, ptr %23, align 8, !tbaa !23
  %232 = load i32, ptr %188, align 4, !tbaa !24
  %233 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %231, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %232, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %186, align 8, !tbaa !22
  tail call void @free(ptr noundef %236) #16
  %237 = load ptr, ptr %184, align 8, !tbaa !20
  tail call void @free(ptr noundef %237) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %336

238:                                              ; preds = %230
  store ptr null, ptr %6, align 8, !tbaa !25
  %239 = load i32, ptr %19, align 8, !tbaa !21
  %240 = load i32, ptr %185, align 4, !tbaa !19
  store i32 %240, ptr %183, align 8, !tbaa !18
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  store i32 %240, ptr %191, align 8, !tbaa !26
  %243 = load ptr, ptr %186, align 8, !tbaa !22
  store ptr %243, ptr %192, align 8, !tbaa !27
  store ptr %243, ptr %193, align 8, !tbaa !28
  br label %277

244:                                              ; preds = %209
  %245 = load i32, ptr %19, align 8, !tbaa !21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %277, label %247

247:                                              ; preds = %244, %238, %224
  %248 = phi ptr [ %211, %244 ], [ null, %238 ], [ %211, %224 ]
  %249 = load i32, ptr %35, align 8, !tbaa !30
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %336, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #18
  br label %253

253:                                              ; preds = %270, %251
  %254 = phi ptr [ %248, %251 ], [ %275, %270 ]
  store i32 0, ptr %252, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %255 = load i32, ptr %35, align 8, !tbaa !30
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = zext nneg i32 %256 to i64
  %258 = load i32, ptr %190, align 4, !tbaa !31
  %259 = tail call i64 @write(i32 noundef %258, ptr noundef %254, i64 noundef %257) #16
  %260 = trunc i64 %259 to i32
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %253
  %263 = load i32, ptr %252, align 4, !tbaa !4
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  store i32 1, ptr %189, align 4, !tbaa !17
  %266 = load i32, ptr %252, align 4, !tbaa !4
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi i32 [ %263, %262 ], [ %266, %265 ]
  %269 = tail call ptr @strerror(i32 noundef %268) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #16
  br label %336

270:                                              ; preds = %253
  %271 = load i32, ptr %35, align 8, !tbaa !30
  %272 = sub i32 %271, %260
  store i32 %272, ptr %35, align 8, !tbaa !30
  %273 = load ptr, ptr %6, align 8, !tbaa !25
  %274 = and i64 %259, 2147483647
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 %274
  store ptr %275, ptr %6, align 8, !tbaa !25
  %276 = icmp eq i32 %271, %260
  br i1 %276, label %336, label %253, !llvm.loop !32

277:                                              ; preds = %244, %242
  %278 = load i32, ptr %194, align 8, !tbaa !34
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %35, align 8, !tbaa !30
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %336, label %283

283:                                              ; preds = %280
  %284 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %194, align 8, !tbaa !34
  br label %285

285:                                              ; preds = %283, %277
  %286 = load i32, ptr %191, align 8, !tbaa !26
  br label %287

287:                                              ; preds = %333, %285
  %288 = phi i32 [ %286, %285 ], [ %334, %333 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %328

290:                                              ; preds = %287
  %291 = load ptr, ptr %192, align 8, !tbaa !27
  %292 = load ptr, ptr %193, align 8, !tbaa !28
  %293 = icmp ugt ptr %291, %292
  br i1 %293, label %294, label %325

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #18
  br label %296

296:                                              ; preds = %316, %294
  %297 = phi ptr [ %292, %294 ], [ %319, %316 ]
  %298 = phi ptr [ %291, %294 ], [ %320, %316 ]
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %299 = ptrtoint ptr %298 to i64
  %300 = ptrtoint ptr %297 to i64
  %301 = sub i64 %299, %300
  %302 = tail call i64 @llvm.smin.i64(i64 %301, i64 1073741824)
  %303 = and i64 %302, 4294967295
  %304 = load i32, ptr %190, align 4, !tbaa !31
  %305 = tail call i64 @write(i32 noundef %304, ptr noundef %297, i64 noundef %303) #16
  %306 = and i64 %305, 2147483648
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %316, label %308

308:                                              ; preds = %296
  %309 = load i32, ptr %295, align 4, !tbaa !4
  %310 = icmp eq i32 %309, 11
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  store i32 1, ptr %189, align 4, !tbaa !17
  %312 = load i32, ptr %295, align 4, !tbaa !4
  br label %313

313:                                              ; preds = %311, %308
  %314 = phi i32 [ %309, %308 ], [ %312, %311 ]
  %315 = tail call ptr @strerror(i32 noundef %314) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %315) #16
  br label %336

316:                                              ; preds = %296
  %317 = load ptr, ptr %193, align 8, !tbaa !28
  %318 = and i64 %305, 2147483647
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 %318
  store ptr %319, ptr %193, align 8, !tbaa !28
  %320 = load ptr, ptr %192, align 8, !tbaa !27
  %321 = icmp ugt ptr %320, %319
  br i1 %321, label %296, label %322, !llvm.loop !35

322:                                              ; preds = %316
  %323 = load i32, ptr %191, align 8, !tbaa !26
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322, %290
  %326 = load i32, ptr %183, align 8, !tbaa !18
  store i32 %326, ptr %191, align 8, !tbaa !26
  %327 = load ptr, ptr %186, align 8, !tbaa !22
  store ptr %327, ptr %192, align 8, !tbaa !27
  store ptr %327, ptr %193, align 8, !tbaa !28
  br label %328

328:                                              ; preds = %325, %322, %287
  %329 = phi i32 [ %323, %322 ], [ %326, %325 ], [ %288, %287 ]
  %330 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %331 = icmp eq i32 %330, -2
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %336

333:                                              ; preds = %328
  %334 = load i32, ptr %191, align 8, !tbaa !26
  %335 = icmp eq i32 %329, %334
  br i1 %335, label %336, label %287, !llvm.loop !36

336:                                              ; preds = %270, %333, %332, %313, %280, %267, %247, %235, %229, %219
  %337 = phi i1 [ false, %280 ], [ true, %267 ], [ false, %247 ], [ true, %229 ], [ true, %313 ], [ true, %332 ], [ false, %333 ], [ true, %219 ], [ true, %235 ], [ false, %270 ]
  %338 = load i32, ptr %35, align 8, !tbaa !30
  %339 = sub i32 %203, %338
  %340 = zext i32 %339 to i64
  %341 = load i64, ptr %195, align 8, !tbaa !37
  %342 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %341, i64 %340), !nosanitize !38
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !38
  br i1 %343, label %344, label %345, !prof !39, !nosanitize !38

344:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

345:                                              ; preds = %336
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !38
  store i64 %346, ptr %195, align 8, !tbaa !37
  %347 = load i64, ptr %31, align 8, !tbaa !29
  %348 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %347, i64 %340), !nosanitize !38
  %349 = extractvalue { i64, i1 } %348, 0, !nosanitize !38
  %350 = extractvalue { i64, i1 } %348, 1, !nosanitize !38
  br i1 %350, label %351, label %352, !prof !39, !nosanitize !38

351:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

352:                                              ; preds = %345
  store i64 %349, ptr %31, align 8, !tbaa !29
  br i1 %337, label %355, label %353

353:                                              ; preds = %352
  %354 = icmp eq i64 %349, 0
  br i1 %354, label %357, label %197, !llvm.loop !40

355:                                              ; preds = %352, %50, %69, %106, %61, %159, %178
  %356 = load i32, ptr %11, align 8, !tbaa !16
  br label %466

357:                                              ; preds = %353, %30
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %359 = load i32, ptr %358, align 8, !tbaa !18
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %464, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %363 = load i32, ptr %362, align 8, !tbaa !30
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %462, label %365

365:                                              ; preds = %361
  %366 = load i32, ptr %19, align 8, !tbaa !21
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %397, label %368

368:                                              ; preds = %365
  %369 = tail call ptr @__errno_location() #18
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %372 = load ptr, ptr %6, align 8, !tbaa !25
  br label %373

373:                                              ; preds = %390, %368
  %374 = phi ptr [ %372, %368 ], [ %395, %390 ]
  store i32 0, ptr %369, align 4, !tbaa !4
  store i32 0, ptr %370, align 4, !tbaa !17
  %375 = load i32, ptr %362, align 8, !tbaa !30
  %376 = tail call i32 @llvm.umin.i32(i32 %375, i32 1073741824)
  %377 = zext nneg i32 %376 to i64
  %378 = load i32, ptr %371, align 4, !tbaa !31
  %379 = tail call i64 @write(i32 noundef %378, ptr noundef %374, i64 noundef %377) #16
  %380 = trunc i64 %379 to i32
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %373
  %383 = load i32, ptr %369, align 4, !tbaa !4
  %384 = icmp eq i32 %383, 11
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  store i32 1, ptr %370, align 4, !tbaa !17
  %386 = load i32, ptr %369, align 4, !tbaa !4
  br label %387

387:                                              ; preds = %385, %382
  %388 = phi i32 [ %383, %382 ], [ %386, %385 ]
  %389 = tail call ptr @strerror(i32 noundef %388) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %389) #16
  br label %460

390:                                              ; preds = %373
  %391 = load i32, ptr %362, align 8, !tbaa !30
  %392 = sub i32 %391, %380
  store i32 %392, ptr %362, align 8, !tbaa !30
  %393 = load ptr, ptr %6, align 8, !tbaa !25
  %394 = and i64 %379, 2147483647
  %395 = getelementptr inbounds nuw i8, ptr %393, i64 %394
  store ptr %395, ptr %6, align 8, !tbaa !25
  %396 = icmp eq i32 %391, %380
  br i1 %396, label %462, label %373, !llvm.loop !32

397:                                              ; preds = %365
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %399 = load i32, ptr %398, align 8, !tbaa !34
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %398, align 8, !tbaa !34
  br label %403

403:                                              ; preds = %401, %397
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %410 = load i32, ptr %404, align 8, !tbaa !26
  br label %411

411:                                              ; preds = %457, %403
  %412 = phi i32 [ %410, %403 ], [ %458, %457 ]
  %413 = load ptr, ptr %405, align 8, !tbaa !27
  %414 = load ptr, ptr %406, align 8, !tbaa !28
  %415 = icmp ugt ptr %413, %414
  br i1 %415, label %416, label %446

416:                                              ; preds = %411
  %417 = tail call ptr @__errno_location() #18
  br label %418

418:                                              ; preds = %438, %416
  %419 = phi ptr [ %414, %416 ], [ %441, %438 ]
  %420 = phi ptr [ %413, %416 ], [ %442, %438 ]
  store i32 0, ptr %417, align 4, !tbaa !4
  store i32 0, ptr %407, align 4, !tbaa !17
  %421 = ptrtoint ptr %420 to i64
  %422 = ptrtoint ptr %419 to i64
  %423 = sub i64 %421, %422
  %424 = tail call i64 @llvm.smin.i64(i64 %423, i64 1073741824)
  %425 = and i64 %424, 4294967295
  %426 = load i32, ptr %408, align 4, !tbaa !31
  %427 = tail call i64 @write(i32 noundef %426, ptr noundef %419, i64 noundef %425) #16
  %428 = and i64 %427, 2147483648
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %438, label %430

430:                                              ; preds = %418
  %431 = load i32, ptr %417, align 4, !tbaa !4
  %432 = icmp eq i32 %431, 11
  br i1 %432, label %433, label %435

433:                                              ; preds = %430
  store i32 1, ptr %407, align 4, !tbaa !17
  %434 = load i32, ptr %417, align 4, !tbaa !4
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi i32 [ %431, %430 ], [ %434, %433 ]
  %437 = tail call ptr @strerror(i32 noundef %436) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %437) #16
  br label %460

438:                                              ; preds = %418
  %439 = load ptr, ptr %406, align 8, !tbaa !28
  %440 = and i64 %427, 2147483647
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  store ptr %441, ptr %406, align 8, !tbaa !28
  %442 = load ptr, ptr %405, align 8, !tbaa !27
  %443 = icmp ugt ptr %442, %441
  br i1 %443, label %418, label %444, !llvm.loop !35

444:                                              ; preds = %438
  %445 = load i32, ptr %404, align 8, !tbaa !26
  br label %446

446:                                              ; preds = %444, %411
  %447 = phi i32 [ %445, %444 ], [ %412, %411 ]
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = load i32, ptr %358, align 8, !tbaa !18
  store i32 %450, ptr %404, align 8, !tbaa !26
  %451 = load ptr, ptr %409, align 8, !tbaa !22
  store ptr %451, ptr %405, align 8, !tbaa !27
  store ptr %451, ptr %406, align 8, !tbaa !28
  br label %452

452:                                              ; preds = %449, %446
  %453 = phi i32 [ %447, %446 ], [ %450, %449 ]
  %454 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #16
  %455 = icmp eq i32 %454, -2
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %460

457:                                              ; preds = %452
  %458 = load i32, ptr %404, align 8, !tbaa !26
  %459 = icmp eq i32 %453, %458
  br i1 %459, label %462, label %411, !llvm.loop !36

460:                                              ; preds = %387, %456, %435
  %461 = load i32, ptr %11, align 8, !tbaa !16
  br label %466

462:                                              ; preds = %390, %457, %361
  %463 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #16
  br label %464

464:                                              ; preds = %462, %357
  store i32 %1, ptr %23, align 8, !tbaa !23
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %465, align 4, !tbaa !24
  br label %466

466:                                              ; preds = %26, %5, %14, %18, %3, %464, %460, %355
  %467 = phi i32 [ 0, %464 ], [ -2, %3 ], [ -2, %5 ], [ %356, %355 ], [ %461, %460 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %467
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %520, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %520

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %341, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %163, label %16

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
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %338

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
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #17
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %25) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %338

41:                                               ; preds = %35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %38, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #16
  %51 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void @free(ptr noundef %51) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %338

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
  br i1 %67, label %163, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @__errno_location() #18
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
  %79 = tail call i64 @write(i32 noundef %78, ptr noundef %74, i64 noundef %77) #16
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
  %89 = tail call ptr @strerror(i32 noundef %88) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %89) #16
  br label %338

90:                                               ; preds = %73
  %91 = load i32, ptr %13, align 8, !tbaa !30
  %92 = sub i32 %91, %80
  store i32 %92, ptr %13, align 8, !tbaa !30
  %93 = load ptr, ptr %12, align 8, !tbaa !25
  %94 = and i64 %79, 2147483647
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 %94
  store ptr %95, ptr %12, align 8, !tbaa !25
  %96 = icmp eq i32 %91, %80
  br i1 %96, label %163, label %73, !llvm.loop !32

97:                                               ; preds = %61, %56
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %99 = load i32, ptr %98, align 8, !tbaa !34
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %13, align 8, !tbaa !30
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %163, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @deflateReset(ptr noundef nonnull %12) #16
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
  %122 = tail call ptr @__errno_location() #18
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
  %132 = tail call i64 @write(i32 noundef %131, ptr noundef %124, i64 noundef %130) #16
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
  %142 = tail call ptr @strerror(i32 noundef %141) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %142) #16
  br label %338

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
  %157 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #16
  %158 = icmp eq i32 %157, -2
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %338

160:                                              ; preds = %155
  %161 = load i32, ptr %107, align 8, !tbaa !26
  %162 = icmp eq i32 %156, %161
  br i1 %162, label %163, label %114, !llvm.loop !36

163:                                              ; preds = %90, %160, %101, %65, %11
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %179 = load i64, ptr %8, align 8, !tbaa !29
  br label %180

180:                                              ; preds = %336, %163
  %181 = phi i64 [ %179, %163 ], [ %332, %336 ]
  %182 = phi i1 [ false, %163 ], [ true, %336 ]
  %183 = load i32, ptr %164, align 8, !tbaa !18
  %184 = zext i32 %183 to i64
  %185 = tail call i64 @llvm.smin.i64(i64 %181, i64 %184)
  %186 = trunc i64 %185 to i32
  %187 = load ptr, ptr %165, align 8, !tbaa !20
  br i1 %182, label %192, label %188

188:                                              ; preds = %180
  %189 = and i64 %185, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %187, i8 0, i64 %189, i1 false)
  %190 = load ptr, ptr %165, align 8, !tbaa !20
  %191 = load i32, ptr %164, align 8, !tbaa !18
  br label %192

192:                                              ; preds = %188, %180
  %193 = phi i32 [ %191, %188 ], [ %183, %180 ]
  %194 = phi ptr [ %190, %188 ], [ %187, %180 ]
  store i32 %186, ptr %13, align 8, !tbaa !30
  store ptr %194, ptr %12, align 8, !tbaa !25
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %227

196:                                              ; preds = %192
  %197 = load i32, ptr %167, align 4, !tbaa !19
  %198 = shl i32 %197, 1
  %199 = zext i32 %198 to i64
  %200 = tail call noalias ptr @malloc(i64 noundef %199) #17
  store ptr %200, ptr %165, align 8, !tbaa !20
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %319

203:                                              ; preds = %196
  %204 = load i32, ptr %166, align 8, !tbaa !21
  %205 = icmp eq i32 %204, 0
  %206 = load i32, ptr %167, align 4, !tbaa !19
  br i1 %205, label %208, label %207

207:                                              ; preds = %203
  store i32 %206, ptr %164, align 8, !tbaa !18
  br label %230

208:                                              ; preds = %203
  %209 = zext i32 %206 to i64
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #17
  store ptr %210, ptr %168, align 8, !tbaa !22
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  tail call void @free(ptr noundef nonnull %200) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %319

213:                                              ; preds = %208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %169, i8 0, i64 24, i1 false)
  %214 = load i32, ptr %170, align 8, !tbaa !23
  %215 = load i32, ptr %171, align 4, !tbaa !24
  %216 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %214, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %215, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr %168, align 8, !tbaa !22
  tail call void @free(ptr noundef %219) #16
  %220 = load ptr, ptr %165, align 8, !tbaa !20
  tail call void @free(ptr noundef %220) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %319

221:                                              ; preds = %213
  store ptr null, ptr %12, align 8, !tbaa !25
  %222 = load i32, ptr %166, align 8, !tbaa !21
  %223 = load i32, ptr %167, align 4, !tbaa !19
  store i32 %223, ptr %164, align 8, !tbaa !18
  %224 = icmp eq i32 %222, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  store i32 %223, ptr %174, align 8, !tbaa !26
  %226 = load ptr, ptr %168, align 8, !tbaa !22
  store ptr %226, ptr %175, align 8, !tbaa !27
  store ptr %226, ptr %176, align 8, !tbaa !28
  br label %260

227:                                              ; preds = %192
  %228 = load i32, ptr %166, align 8, !tbaa !21
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %260, label %230

230:                                              ; preds = %227, %221, %207
  %231 = phi ptr [ %194, %227 ], [ null, %221 ], [ %194, %207 ]
  %232 = load i32, ptr %13, align 8, !tbaa !30
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %319, label %234

234:                                              ; preds = %230
  %235 = tail call ptr @__errno_location() #18
  br label %236

236:                                              ; preds = %253, %234
  %237 = phi ptr [ %231, %234 ], [ %258, %253 ]
  store i32 0, ptr %235, align 4, !tbaa !4
  store i32 0, ptr %172, align 4, !tbaa !17
  %238 = load i32, ptr %13, align 8, !tbaa !30
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = zext nneg i32 %239 to i64
  %241 = load i32, ptr %173, align 4, !tbaa !31
  %242 = tail call i64 @write(i32 noundef %241, ptr noundef %237, i64 noundef %240) #16
  %243 = trunc i64 %242 to i32
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %236
  %246 = load i32, ptr %235, align 4, !tbaa !4
  %247 = icmp eq i32 %246, 11
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  store i32 1, ptr %172, align 4, !tbaa !17
  %249 = load i32, ptr %235, align 4, !tbaa !4
  br label %250

250:                                              ; preds = %248, %245
  %251 = phi i32 [ %246, %245 ], [ %249, %248 ]
  %252 = tail call ptr @strerror(i32 noundef %251) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %252) #16
  br label %319

253:                                              ; preds = %236
  %254 = load i32, ptr %13, align 8, !tbaa !30
  %255 = sub i32 %254, %243
  store i32 %255, ptr %13, align 8, !tbaa !30
  %256 = load ptr, ptr %12, align 8, !tbaa !25
  %257 = and i64 %242, 2147483647
  %258 = getelementptr inbounds nuw i8, ptr %256, i64 %257
  store ptr %258, ptr %12, align 8, !tbaa !25
  %259 = icmp eq i32 %254, %243
  br i1 %259, label %319, label %236, !llvm.loop !32

260:                                              ; preds = %227, %225
  %261 = load i32, ptr %177, align 8, !tbaa !34
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %13, align 8, !tbaa !30
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %319, label %266

266:                                              ; preds = %263
  %267 = tail call i32 @deflateReset(ptr noundef nonnull %12) #16
  store i32 0, ptr %177, align 8, !tbaa !34
  br label %268

268:                                              ; preds = %266, %260
  %269 = load i32, ptr %174, align 8, !tbaa !26
  br label %270

270:                                              ; preds = %316, %268
  %271 = phi i32 [ %269, %268 ], [ %317, %316 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %311

273:                                              ; preds = %270
  %274 = load ptr, ptr %175, align 8, !tbaa !27
  %275 = load ptr, ptr %176, align 8, !tbaa !28
  %276 = icmp ugt ptr %274, %275
  br i1 %276, label %277, label %308

277:                                              ; preds = %273
  %278 = tail call ptr @__errno_location() #18
  br label %279

279:                                              ; preds = %299, %277
  %280 = phi ptr [ %275, %277 ], [ %302, %299 ]
  %281 = phi ptr [ %274, %277 ], [ %303, %299 ]
  store i32 0, ptr %278, align 4, !tbaa !4
  store i32 0, ptr %172, align 4, !tbaa !17
  %282 = ptrtoint ptr %281 to i64
  %283 = ptrtoint ptr %280 to i64
  %284 = sub i64 %282, %283
  %285 = tail call i64 @llvm.smin.i64(i64 %284, i64 1073741824)
  %286 = and i64 %285, 4294967295
  %287 = load i32, ptr %173, align 4, !tbaa !31
  %288 = tail call i64 @write(i32 noundef %287, ptr noundef %280, i64 noundef %286) #16
  %289 = and i64 %288, 2147483648
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %279
  %292 = load i32, ptr %278, align 4, !tbaa !4
  %293 = icmp eq i32 %292, 11
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  store i32 1, ptr %172, align 4, !tbaa !17
  %295 = load i32, ptr %278, align 4, !tbaa !4
  br label %296

296:                                              ; preds = %294, %291
  %297 = phi i32 [ %292, %291 ], [ %295, %294 ]
  %298 = tail call ptr @strerror(i32 noundef %297) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %298) #16
  br label %319

299:                                              ; preds = %279
  %300 = load ptr, ptr %176, align 8, !tbaa !28
  %301 = and i64 %288, 2147483647
  %302 = getelementptr inbounds nuw i8, ptr %300, i64 %301
  store ptr %302, ptr %176, align 8, !tbaa !28
  %303 = load ptr, ptr %175, align 8, !tbaa !27
  %304 = icmp ugt ptr %303, %302
  br i1 %304, label %279, label %305, !llvm.loop !35

305:                                              ; preds = %299
  %306 = load i32, ptr %174, align 8, !tbaa !26
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305, %273
  %309 = load i32, ptr %164, align 8, !tbaa !18
  store i32 %309, ptr %174, align 8, !tbaa !26
  %310 = load ptr, ptr %168, align 8, !tbaa !22
  store ptr %310, ptr %175, align 8, !tbaa !27
  store ptr %310, ptr %176, align 8, !tbaa !28
  br label %311

311:                                              ; preds = %308, %305, %270
  %312 = phi i32 [ %306, %305 ], [ %309, %308 ], [ %271, %270 ]
  %313 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #16
  %314 = icmp eq i32 %313, -2
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %319

316:                                              ; preds = %311
  %317 = load i32, ptr %174, align 8, !tbaa !26
  %318 = icmp eq i32 %312, %317
  br i1 %318, label %319, label %270, !llvm.loop !36

319:                                              ; preds = %253, %316, %315, %296, %263, %250, %230, %218, %212, %202
  %320 = phi i1 [ false, %263 ], [ true, %250 ], [ false, %230 ], [ true, %212 ], [ true, %296 ], [ true, %315 ], [ false, %316 ], [ true, %202 ], [ true, %218 ], [ false, %253 ]
  %321 = load i32, ptr %13, align 8, !tbaa !30
  %322 = sub i32 %186, %321
  %323 = zext i32 %322 to i64
  %324 = load i64, ptr %178, align 8, !tbaa !37
  %325 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %324, i64 %323), !nosanitize !38
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !38
  br i1 %326, label %327, label %328, !prof !39, !nosanitize !38

327:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !38
  unreachable, !nosanitize !38

328:                                              ; preds = %319
  %329 = extractvalue { i64, i1 } %325, 0, !nosanitize !38
  store i64 %329, ptr %178, align 8, !tbaa !37
  %330 = load i64, ptr %8, align 8, !tbaa !29
  %331 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %330, i64 %323), !nosanitize !38
  %332 = extractvalue { i64, i1 } %331, 0, !nosanitize !38
  %333 = extractvalue { i64, i1 } %331, 1, !nosanitize !38
  br i1 %333, label %334, label %335, !prof !39, !nosanitize !38

334:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !38
  unreachable, !nosanitize !38

335:                                              ; preds = %328
  store i64 %332, ptr %8, align 8, !tbaa !29
  br i1 %320, label %338, label %336

336:                                              ; preds = %335
  %337 = icmp eq i64 %332, 0
  br i1 %337, label %341, label %180, !llvm.loop !40

338:                                              ; preds = %335, %28, %49, %87, %40, %140, %159
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %340 = load i32, ptr %339, align 8, !tbaa !16
  br label %341

341:                                              ; preds = %336, %338, %7
  %342 = phi i32 [ %340, %338 ], [ 0, %7 ], [ 0, %336 ]
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %345 = load i32, ptr %344, align 8, !tbaa !18
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %388

347:                                              ; preds = %341
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %349 = load i32, ptr %348, align 4, !tbaa !19
  %350 = shl i32 %349, 1
  %351 = zext i32 %350 to i64
  %352 = tail call noalias ptr @malloc(i64 noundef %351) #17
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %352, ptr %353, align 8, !tbaa !20
  %354 = icmp eq ptr %352, null
  br i1 %354, label %355, label %356

355:                                              ; preds = %347
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %494

356:                                              ; preds = %347
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %358 = load i32, ptr %357, align 8, !tbaa !21
  %359 = icmp eq i32 %358, 0
  %360 = load i32, ptr %348, align 4, !tbaa !19
  br i1 %359, label %362, label %361

361:                                              ; preds = %356
  store i32 %360, ptr %344, align 8, !tbaa !18
  br label %392

362:                                              ; preds = %356
  %363 = zext i32 %360 to i64
  %364 = tail call noalias ptr @malloc(i64 noundef %363) #17
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %364, ptr %365, align 8, !tbaa !22
  %366 = icmp eq ptr %364, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  tail call void @free(ptr noundef nonnull %352) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %494

368:                                              ; preds = %362
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %369, i8 0, i64 24, i1 false)
  %371 = load i32, ptr %370, align 8, !tbaa !23
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %373 = load i32, ptr %372, align 4, !tbaa !24
  %374 = tail call i32 @deflateInit2_(ptr noundef nonnull %343, i32 noundef %371, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %373, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %368
  %377 = load ptr, ptr %365, align 8, !tbaa !22
  tail call void @free(ptr noundef %377) #16
  %378 = load ptr, ptr %353, align 8, !tbaa !20
  tail call void @free(ptr noundef %378) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %494

379:                                              ; preds = %368
  store ptr null, ptr %343, align 8, !tbaa !25
  %380 = load i32, ptr %357, align 8, !tbaa !21
  %381 = load i32, ptr %348, align 4, !tbaa !19
  store i32 %381, ptr %344, align 8, !tbaa !18
  %382 = icmp eq i32 %380, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %381, ptr %384, align 8, !tbaa !26
  %385 = load ptr, ptr %365, align 8, !tbaa !22
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %385, ptr %386, align 8, !tbaa !27
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %385, ptr %387, align 8, !tbaa !28
  br label %425

388:                                              ; preds = %341
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %390 = load i32, ptr %389, align 8, !tbaa !21
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %425, label %392

392:                                              ; preds = %388, %379, %361
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %394 = load i32, ptr %393, align 8, !tbaa !30
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %497, label %396

396:                                              ; preds = %392
  %397 = tail call ptr @__errno_location() #18
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %400 = load ptr, ptr %343, align 8, !tbaa !25
  br label %401

401:                                              ; preds = %418, %396
  %402 = phi ptr [ %400, %396 ], [ %423, %418 ]
  store i32 0, ptr %397, align 4, !tbaa !4
  store i32 0, ptr %398, align 4, !tbaa !17
  %403 = load i32, ptr %393, align 8, !tbaa !30
  %404 = tail call i32 @llvm.umin.i32(i32 %403, i32 1073741824)
  %405 = zext nneg i32 %404 to i64
  %406 = load i32, ptr %399, align 4, !tbaa !31
  %407 = tail call i64 @write(i32 noundef %406, ptr noundef %402, i64 noundef %405) #16
  %408 = trunc i64 %407 to i32
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %401
  %411 = load i32, ptr %397, align 4, !tbaa !4
  %412 = icmp eq i32 %411, 11
  br i1 %412, label %413, label %415

413:                                              ; preds = %410
  store i32 1, ptr %398, align 4, !tbaa !17
  %414 = load i32, ptr %397, align 4, !tbaa !4
  br label %415

415:                                              ; preds = %413, %410
  %416 = phi i32 [ %411, %410 ], [ %414, %413 ]
  %417 = tail call ptr @strerror(i32 noundef %416) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %417) #16
  br label %494

418:                                              ; preds = %401
  %419 = load i32, ptr %393, align 8, !tbaa !30
  %420 = sub i32 %419, %408
  store i32 %420, ptr %393, align 8, !tbaa !30
  %421 = load ptr, ptr %343, align 8, !tbaa !25
  %422 = and i64 %407, 2147483647
  %423 = getelementptr inbounds nuw i8, ptr %421, i64 %422
  store ptr %423, ptr %343, align 8, !tbaa !25
  %424 = icmp eq i32 %419, %408
  br i1 %424, label %497, label %401, !llvm.loop !32

425:                                              ; preds = %388, %383
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %427 = load i32, ptr %426, align 8, !tbaa !34
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %425
  %430 = tail call i32 @deflateReset(ptr noundef nonnull %343) #16
  store i32 0, ptr %426, align 8, !tbaa !34
  br label %431

431:                                              ; preds = %429, %425
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %438 = load i32, ptr %432, align 8, !tbaa !26
  br label %439

439:                                              ; preds = %490, %431
  %440 = phi i32 [ %438, %431 ], [ %491, %490 ]
  %441 = phi i32 [ 0, %431 ], [ %487, %490 ]
  %442 = icmp eq i32 %440, 0
  %443 = icmp eq i32 %441, 1
  %444 = or i1 %442, %443
  br i1 %444, label %445, label %485

445:                                              ; preds = %439
  %446 = load ptr, ptr %433, align 8, !tbaa !27
  %447 = load ptr, ptr %434, align 8, !tbaa !28
  %448 = icmp ugt ptr %446, %447
  br i1 %448, label %449, label %479

449:                                              ; preds = %445
  %450 = tail call ptr @__errno_location() #18
  br label %451

451:                                              ; preds = %471, %449
  %452 = phi ptr [ %447, %449 ], [ %474, %471 ]
  %453 = phi ptr [ %446, %449 ], [ %475, %471 ]
  store i32 0, ptr %450, align 4, !tbaa !4
  store i32 0, ptr %435, align 4, !tbaa !17
  %454 = ptrtoint ptr %453 to i64
  %455 = ptrtoint ptr %452 to i64
  %456 = sub i64 %454, %455
  %457 = tail call i64 @llvm.smin.i64(i64 %456, i64 1073741824)
  %458 = and i64 %457, 4294967295
  %459 = load i32, ptr %436, align 4, !tbaa !31
  %460 = tail call i64 @write(i32 noundef %459, ptr noundef %452, i64 noundef %458) #16
  %461 = and i64 %460, 2147483648
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %471, label %463

463:                                              ; preds = %451
  %464 = load i32, ptr %450, align 4, !tbaa !4
  %465 = icmp eq i32 %464, 11
  br i1 %465, label %466, label %468

466:                                              ; preds = %463
  store i32 1, ptr %435, align 4, !tbaa !17
  %467 = load i32, ptr %450, align 4, !tbaa !4
  br label %468

468:                                              ; preds = %466, %463
  %469 = phi i32 [ %464, %463 ], [ %467, %466 ]
  %470 = tail call ptr @strerror(i32 noundef %469) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %470) #16
  br label %494

471:                                              ; preds = %451
  %472 = load ptr, ptr %434, align 8, !tbaa !28
  %473 = and i64 %460, 2147483647
  %474 = getelementptr inbounds nuw i8, ptr %472, i64 %473
  store ptr %474, ptr %434, align 8, !tbaa !28
  %475 = load ptr, ptr %433, align 8, !tbaa !27
  %476 = icmp ugt ptr %475, %474
  br i1 %476, label %451, label %477, !llvm.loop !35

477:                                              ; preds = %471
  %478 = load i32, ptr %432, align 8, !tbaa !26
  br label %479

479:                                              ; preds = %477, %445
  %480 = phi i32 [ %478, %477 ], [ %440, %445 ]
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load i32, ptr %344, align 8, !tbaa !18
  store i32 %483, ptr %432, align 8, !tbaa !26
  %484 = load ptr, ptr %437, align 8, !tbaa !22
  store ptr %484, ptr %433, align 8, !tbaa !27
  store ptr %484, ptr %434, align 8, !tbaa !28
  br label %485

485:                                              ; preds = %439, %482, %479
  %486 = phi i32 [ %480, %479 ], [ %483, %482 ], [ %440, %439 ]
  %487 = tail call i32 @deflate(ptr noundef nonnull %343, i32 noundef 4) #16
  %488 = icmp eq i32 %487, -2
  br i1 %488, label %489, label %490

489:                                              ; preds = %485
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %494

490:                                              ; preds = %485
  %491 = load i32, ptr %432, align 8, !tbaa !26
  %492 = icmp eq i32 %486, %491
  br i1 %492, label %493, label %439, !llvm.loop !36

493:                                              ; preds = %490
  store i32 1, ptr %426, align 8, !tbaa !34
  br label %497

494:                                              ; preds = %415, %367, %468, %489, %355, %376
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %496 = load i32, ptr %495, align 8, !tbaa !16
  br label %497

497:                                              ; preds = %418, %493, %392, %494
  %498 = phi i32 [ %496, %494 ], [ %342, %392 ], [ %342, %493 ], [ %342, %418 ]
  %499 = load i32, ptr %344, align 8, !tbaa !18
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %512, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %503 = load i32, ptr %502, align 8, !tbaa !21
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %501
  %506 = tail call i32 @deflateEnd(ptr noundef nonnull %343) #16
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %508 = load ptr, ptr %507, align 8, !tbaa !22
  tail call void @free(ptr noundef %508) #16
  br label %509

509:                                              ; preds = %505, %501
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %511 = load ptr, ptr %510, align 8, !tbaa !20
  tail call void @free(ptr noundef %511) #16
  br label %512

512:                                              ; preds = %509, %497
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %514 = load ptr, ptr %513, align 8, !tbaa !45
  tail call void @free(ptr noundef %514) #16
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %516 = load i32, ptr %515, align 4, !tbaa !31
  %517 = tail call i32 @close(i32 noundef %516) #16
  %518 = icmp eq i32 %517, -1
  %519 = select i1 %518, i32 -1, i32 %498
  tail call void @free(ptr noundef nonnull %0) #16
  br label %520

520:                                              ; preds = %3, %1, %512
  %521 = phi i32 [ %519, %512 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %521
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

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
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

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
