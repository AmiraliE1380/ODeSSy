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
  br i1 %4, label %893, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %893

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %893, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #14
  br label %893

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %890, label %23

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
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #15
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %33, ptr %34, align 8, !tbaa !20
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %45 = tail call noalias ptr @malloc(i64 noundef %44) #15
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %45, ptr %46, align 8, !tbaa !22
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %33) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

49:                                               ; preds = %43
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %52 = load i32, ptr %51, align 8, !tbaa !23
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %54 = load i32, ptr %53, align 4, !tbaa !24
  %55 = tail call i32 @deflateInit2_(ptr noundef nonnull %28, i32 noundef %52, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %54, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %46, align 8, !tbaa !22
  tail call void @free(ptr noundef %58) #14
  %59 = load ptr, ptr %34, align 8, !tbaa !20
  tail call void @free(ptr noundef %59) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  br i1 %73, label %392, label %74

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
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #15
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %86, ptr %87, align 8, !tbaa !20
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #15
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %98, ptr %99, align 8, !tbaa !22
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  tail call void @free(ptr noundef nonnull %86) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, i8 0, i64 24, i1 false)
  %105 = load i32, ptr %104, align 8, !tbaa !23
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %107 = load i32, ptr %106, align 4, !tbaa !24
  %108 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %105, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %107, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %99, align 8, !tbaa !22
  tail call void @free(ptr noundef %111) #14
  %112 = load ptr, ptr %87, align 8, !tbaa !20
  tail call void @free(ptr noundef %112) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %130 = tail call ptr @__errno_location() #16
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
  %140 = tail call i64 @write(i32 noundef %139, ptr noundef %135, i64 noundef %138) #14
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
  %150 = tail call ptr @strerror(i32 noundef %149) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %150) #14
  br label %890

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
  %166 = tail call i32 @deflateReset(ptr noundef nonnull %75) #14
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
  %183 = tail call ptr @__errno_location() #16
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
  %193 = tail call i64 @write(i32 noundef %192, ptr noundef %185, i64 noundef %191) #14
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
  %203 = tail call ptr @strerror(i32 noundef %202) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %203) #14
  br label %890

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
  %218 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #14
  %219 = icmp eq i32 %218, -2
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %890

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

240:                                              ; preds = %388, %224
  %241 = phi i64 [ %239, %224 ], [ %387, %388 ]
  %242 = phi i1 [ false, %224 ], [ true, %388 ]
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
  %260 = tail call noalias ptr @malloc(i64 noundef %259) #15
  store ptr %260, ptr %225, align 8, !tbaa !20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %270 = tail call noalias ptr @malloc(i64 noundef %269) #15
  store ptr %270, ptr %228, align 8, !tbaa !22
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  tail call void @free(ptr noundef nonnull %260) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %379

273:                                              ; preds = %268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false)
  %274 = load i32, ptr %230, align 8, !tbaa !23
  %275 = load i32, ptr %231, align 4, !tbaa !24
  %276 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %274, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %275, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %228, align 8, !tbaa !22
  tail call void @free(ptr noundef %279) #14
  %280 = load ptr, ptr %225, align 8, !tbaa !20
  tail call void @free(ptr noundef %280) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %295 = tail call ptr @__errno_location() #16
  br label %296

296:                                              ; preds = %313, %294
  %297 = phi ptr [ %291, %294 ], [ %318, %313 ]
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %232, align 4, !tbaa !17
  %298 = load i32, ptr %76, align 8, !tbaa !30
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = zext nneg i32 %299 to i64
  %301 = load i32, ptr %233, align 4, !tbaa !31
  %302 = tail call i64 @write(i32 noundef %301, ptr noundef %297, i64 noundef %300) #14
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
  %312 = tail call ptr @strerror(i32 noundef %311) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #14
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
  %327 = tail call i32 @deflateReset(ptr noundef nonnull %75) #14
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
  %338 = tail call ptr @__errno_location() #16
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
  %348 = tail call i64 @write(i32 noundef %347, ptr noundef %340, i64 noundef %346) #14
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
  %358 = tail call ptr @strerror(i32 noundef %357) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #14
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
  %373 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #14
  %374 = icmp eq i32 %373, -2
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %385 = add nsw i64 %384, %383
  store i64 %385, ptr %238, align 8, !tbaa !37
  %386 = load i64, ptr %71, align 8, !tbaa !29
  %387 = sub nsw i64 %386, %383
  store i64 %387, ptr %71, align 8, !tbaa !29
  br i1 %380, label %890, label %388

388:                                              ; preds = %379
  %389 = icmp eq i64 %386, %383
  br i1 %389, label %390, label %240, !llvm.loop !38

390:                                              ; preds = %388
  %391 = load i32, ptr %24, align 8, !tbaa !18
  br label %392

392:                                              ; preds = %390, %69
  %393 = phi i32 [ %391, %390 ], [ %70, %69 ]
  %394 = icmp ult i32 %2, %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %394, label %397, label %577

397:                                              ; preds = %392
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %412

412:                                              ; preds = %518, %397
  %413 = phi i64 [ %21, %397 ], [ %443, %518 ]
  %414 = phi ptr [ %1, %397 ], [ %442, %518 ]
  %415 = load i32, ptr %396, align 8, !tbaa !39
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %412
  %418 = load ptr, ptr %395, align 8, !tbaa !40
  %419 = load ptr, ptr %398, align 8, !tbaa !20
  br label %422

420:                                              ; preds = %412
  %421 = load ptr, ptr %398, align 8, !tbaa !20
  store ptr %421, ptr %395, align 8, !tbaa !40
  br label %422

422:                                              ; preds = %420, %417
  %423 = phi ptr [ %419, %417 ], [ %421, %420 ]
  %424 = phi ptr [ %418, %417 ], [ %421, %420 ]
  %425 = zext i32 %415 to i64
  %426 = getelementptr inbounds nuw i8, ptr %424, i64 %425
  %427 = ptrtoint ptr %426 to i64
  %428 = ptrtoint ptr %423 to i64
  %429 = sub i64 %427, %428
  %430 = trunc i64 %429 to i32
  %431 = load i32, ptr %24, align 8, !tbaa !18
  %432 = sub i32 %431, %430
  %433 = zext i32 %432 to i64
  %434 = tail call i64 @llvm.umin.i64(i64 %413, i64 %433)
  %435 = trunc nuw i64 %434 to i32
  %436 = and i64 %429, 4294967295
  %437 = getelementptr inbounds nuw i8, ptr %423, i64 %436
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %437, ptr align 1 %414, i64 %434, i1 false)
  %438 = load i32, ptr %396, align 8, !tbaa !39
  %439 = add i32 %438, %435
  store i32 %439, ptr %396, align 8, !tbaa !39
  %440 = load i64, ptr %399, align 8, !tbaa !37
  %441 = add nsw i64 %434, %440
  store i64 %441, ptr %399, align 8, !tbaa !37
  %442 = getelementptr inbounds nuw i8, ptr %414, i64 %434
  %443 = sub i64 %413, %434
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %890, label %445

445:                                              ; preds = %422
  %446 = load i32, ptr %24, align 8, !tbaa !18
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %479

448:                                              ; preds = %445
  %449 = load i32, ptr %401, align 4, !tbaa !19
  %450 = shl i32 %449, 1
  %451 = zext i32 %450 to i64
  %452 = tail call noalias ptr @malloc(i64 noundef %451) #15
  store ptr %452, ptr %398, align 8, !tbaa !20
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %455

454:                                              ; preds = %448
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

455:                                              ; preds = %448
  %456 = load i32, ptr %400, align 8, !tbaa !21
  %457 = icmp eq i32 %456, 0
  %458 = load i32, ptr %401, align 4, !tbaa !19
  br i1 %457, label %460, label %459

459:                                              ; preds = %455
  store i32 %458, ptr %24, align 8, !tbaa !18
  br label %482

460:                                              ; preds = %455
  %461 = zext i32 %458 to i64
  %462 = tail call noalias ptr @malloc(i64 noundef %461) #15
  store ptr %462, ptr %402, align 8, !tbaa !22
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %465

464:                                              ; preds = %460
  tail call void @free(ptr noundef nonnull %452) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

465:                                              ; preds = %460
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %403, i8 0, i64 24, i1 false)
  %466 = load i32, ptr %404, align 8, !tbaa !23
  %467 = load i32, ptr %405, align 4, !tbaa !24
  %468 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %466, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %467, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %465
  %471 = load ptr, ptr %402, align 8, !tbaa !22
  tail call void @free(ptr noundef %471) #14
  %472 = load ptr, ptr %398, align 8, !tbaa !20
  tail call void @free(ptr noundef %472) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

473:                                              ; preds = %465
  store ptr null, ptr %395, align 8, !tbaa !25
  %474 = load i32, ptr %400, align 8, !tbaa !21
  %475 = load i32, ptr %401, align 4, !tbaa !19
  store i32 %475, ptr %24, align 8, !tbaa !18
  %476 = icmp eq i32 %474, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %473
  store i32 %475, ptr %408, align 8, !tbaa !26
  %478 = load ptr, ptr %402, align 8, !tbaa !22
  store ptr %478, ptr %409, align 8, !tbaa !27
  store ptr %478, ptr %410, align 8, !tbaa !28
  br label %512

479:                                              ; preds = %445
  %480 = load i32, ptr %400, align 8, !tbaa !21
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %512, label %482

482:                                              ; preds = %479, %473, %459
  %483 = load i32, ptr %396, align 8, !tbaa !30
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %518, label %485

485:                                              ; preds = %482
  %486 = tail call ptr @__errno_location() #16
  %487 = load ptr, ptr %395, align 8, !tbaa !25
  br label %488

488:                                              ; preds = %505, %485
  %489 = phi ptr [ %487, %485 ], [ %510, %505 ]
  store i32 0, ptr %486, align 4, !tbaa !4
  store i32 0, ptr %406, align 4, !tbaa !17
  %490 = load i32, ptr %396, align 8, !tbaa !30
  %491 = tail call i32 @llvm.umin.i32(i32 %490, i32 1073741824)
  %492 = zext nneg i32 %491 to i64
  %493 = load i32, ptr %407, align 4, !tbaa !31
  %494 = tail call i64 @write(i32 noundef %493, ptr noundef %489, i64 noundef %492) #14
  %495 = trunc i64 %494 to i32
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %488
  %498 = load i32, ptr %486, align 4, !tbaa !4
  %499 = icmp eq i32 %498, 11
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  store i32 1, ptr %406, align 4, !tbaa !17
  %501 = load i32, ptr %486, align 4, !tbaa !4
  br label %502

502:                                              ; preds = %500, %497
  %503 = phi i32 [ %498, %497 ], [ %501, %500 ]
  %504 = tail call ptr @strerror(i32 noundef %503) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %504) #14
  br label %572

505:                                              ; preds = %488
  %506 = load i32, ptr %396, align 8, !tbaa !30
  %507 = sub i32 %506, %495
  store i32 %507, ptr %396, align 8, !tbaa !30
  %508 = load ptr, ptr %395, align 8, !tbaa !25
  %509 = and i64 %494, 2147483647
  %510 = getelementptr inbounds nuw i8, ptr %508, i64 %509
  store ptr %510, ptr %395, align 8, !tbaa !25
  %511 = icmp eq i32 %506, %495
  br i1 %511, label %518, label %488, !llvm.loop !32

512:                                              ; preds = %479, %477
  %513 = load i32, ptr %411, align 8, !tbaa !34
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %521, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %396, align 8, !tbaa !30
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %505, %569, %515, %482
  br label %412

519:                                              ; preds = %515
  %520 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %411, align 8, !tbaa !34
  br label %521

521:                                              ; preds = %519, %512
  %522 = load i32, ptr %408, align 8, !tbaa !26
  br label %523

523:                                              ; preds = %569, %521
  %524 = phi i32 [ %522, %521 ], [ %570, %569 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %564

526:                                              ; preds = %523
  %527 = load ptr, ptr %409, align 8, !tbaa !27
  %528 = load ptr, ptr %410, align 8, !tbaa !28
  %529 = icmp ugt ptr %527, %528
  br i1 %529, label %530, label %561

530:                                              ; preds = %526
  %531 = tail call ptr @__errno_location() #16
  br label %532

532:                                              ; preds = %552, %530
  %533 = phi ptr [ %528, %530 ], [ %555, %552 ]
  %534 = phi ptr [ %527, %530 ], [ %556, %552 ]
  store i32 0, ptr %531, align 4, !tbaa !4
  store i32 0, ptr %406, align 4, !tbaa !17
  %535 = ptrtoint ptr %534 to i64
  %536 = ptrtoint ptr %533 to i64
  %537 = sub i64 %535, %536
  %538 = tail call i64 @llvm.smin.i64(i64 %537, i64 1073741824)
  %539 = and i64 %538, 4294967295
  %540 = load i32, ptr %407, align 4, !tbaa !31
  %541 = tail call i64 @write(i32 noundef %540, ptr noundef %533, i64 noundef %539) #14
  %542 = and i64 %541, 2147483648
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %552, label %544

544:                                              ; preds = %532
  %545 = load i32, ptr %531, align 4, !tbaa !4
  %546 = icmp eq i32 %545, 11
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  store i32 1, ptr %406, align 4, !tbaa !17
  %548 = load i32, ptr %531, align 4, !tbaa !4
  br label %549

549:                                              ; preds = %547, %544
  %550 = phi i32 [ %545, %544 ], [ %548, %547 ]
  %551 = tail call ptr @strerror(i32 noundef %550) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %551) #14
  br label %572

552:                                              ; preds = %532
  %553 = load ptr, ptr %410, align 8, !tbaa !28
  %554 = and i64 %541, 2147483647
  %555 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  store ptr %555, ptr %410, align 8, !tbaa !28
  %556 = load ptr, ptr %409, align 8, !tbaa !27
  %557 = icmp ugt ptr %556, %555
  br i1 %557, label %532, label %558, !llvm.loop !35

558:                                              ; preds = %552
  %559 = load i32, ptr %408, align 8, !tbaa !26
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558, %526
  %562 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %562, ptr %408, align 8, !tbaa !26
  %563 = load ptr, ptr %402, align 8, !tbaa !22
  store ptr %563, ptr %409, align 8, !tbaa !27
  store ptr %563, ptr %410, align 8, !tbaa !28
  br label %564

564:                                              ; preds = %561, %558, %523
  %565 = phi i32 [ %559, %558 ], [ %562, %561 ], [ %524, %523 ]
  %566 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %567 = icmp eq i32 %566, -2
  br i1 %567, label %568, label %569

568:                                              ; preds = %564
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %572

569:                                              ; preds = %564
  %570 = load i32, ptr %408, align 8, !tbaa !26
  %571 = icmp eq i32 %565, %570
  br i1 %571, label %518, label %523, !llvm.loop !36

572:                                              ; preds = %568, %549, %502, %470, %464, %454
  %573 = load i32, ptr %406, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  %575 = sub i64 %21, %443
  %576 = select i1 %574, i64 0, i64 %575
  br label %890

577:                                              ; preds = %392
  %578 = load i32, ptr %396, align 8, !tbaa !39
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %725, label %580

580:                                              ; preds = %577
  %581 = icmp eq i32 %393, 0
  br i1 %581, label %582, label %623

582:                                              ; preds = %580
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %584 = load i32, ptr %583, align 4, !tbaa !19
  %585 = shl i32 %584, 1
  %586 = zext i32 %585 to i64
  %587 = tail call noalias ptr @malloc(i64 noundef %586) #15
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %587, ptr %588, align 8, !tbaa !20
  %589 = icmp eq ptr %587, null
  br i1 %589, label %590, label %591

590:                                              ; preds = %582
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

591:                                              ; preds = %582
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %593 = load i32, ptr %592, align 8, !tbaa !21
  %594 = icmp eq i32 %593, 0
  %595 = load i32, ptr %583, align 4, !tbaa !19
  br i1 %594, label %597, label %596

596:                                              ; preds = %591
  store i32 %595, ptr %24, align 8, !tbaa !18
  br label %627

597:                                              ; preds = %591
  %598 = zext i32 %595 to i64
  %599 = tail call noalias ptr @malloc(i64 noundef %598) #15
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %599, ptr %600, align 8, !tbaa !22
  %601 = icmp eq ptr %599, null
  br i1 %601, label %602, label %603

602:                                              ; preds = %597
  tail call void @free(ptr noundef nonnull %587) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

603:                                              ; preds = %597
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %604, i8 0, i64 24, i1 false)
  %606 = load i32, ptr %605, align 8, !tbaa !23
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %608 = load i32, ptr %607, align 4, !tbaa !24
  %609 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %606, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %608, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %614, label %611

611:                                              ; preds = %603
  %612 = load ptr, ptr %600, align 8, !tbaa !22
  tail call void @free(ptr noundef %612) #14
  %613 = load ptr, ptr %588, align 8, !tbaa !20
  tail call void @free(ptr noundef %613) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

614:                                              ; preds = %603
  store ptr null, ptr %395, align 8, !tbaa !25
  %615 = load i32, ptr %592, align 8, !tbaa !21
  %616 = load i32, ptr %583, align 4, !tbaa !19
  store i32 %616, ptr %24, align 8, !tbaa !18
  %617 = icmp eq i32 %615, 0
  br i1 %617, label %618, label %627

618:                                              ; preds = %614
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %616, ptr %619, align 8, !tbaa !26
  %620 = load ptr, ptr %600, align 8, !tbaa !22
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %620, ptr %621, align 8, !tbaa !27
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %620, ptr %622, align 8, !tbaa !28
  br label %659

623:                                              ; preds = %580
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %625 = load i32, ptr %624, align 8, !tbaa !21
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %659, label %627

627:                                              ; preds = %623, %614, %596
  %628 = load i32, ptr %396, align 8, !tbaa !30
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %725, label %630

630:                                              ; preds = %627
  %631 = tail call ptr @__errno_location() #16
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %634 = load ptr, ptr %395, align 8, !tbaa !25
  br label %635

635:                                              ; preds = %652, %630
  %636 = phi ptr [ %634, %630 ], [ %657, %652 ]
  store i32 0, ptr %631, align 4, !tbaa !4
  store i32 0, ptr %632, align 4, !tbaa !17
  %637 = load i32, ptr %396, align 8, !tbaa !30
  %638 = tail call i32 @llvm.umin.i32(i32 %637, i32 1073741824)
  %639 = zext nneg i32 %638 to i64
  %640 = load i32, ptr %633, align 4, !tbaa !31
  %641 = tail call i64 @write(i32 noundef %640, ptr noundef %636, i64 noundef %639) #14
  %642 = trunc i64 %641 to i32
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %644, label %652

644:                                              ; preds = %635
  %645 = load i32, ptr %631, align 4, !tbaa !4
  %646 = icmp eq i32 %645, 11
  br i1 %646, label %647, label %649

647:                                              ; preds = %644
  store i32 1, ptr %632, align 4, !tbaa !17
  %648 = load i32, ptr %631, align 4, !tbaa !4
  br label %649

649:                                              ; preds = %647, %644
  %650 = phi i32 [ %645, %644 ], [ %648, %647 ]
  %651 = tail call ptr @strerror(i32 noundef %650) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %651) #14
  br label %890

652:                                              ; preds = %635
  %653 = load i32, ptr %396, align 8, !tbaa !30
  %654 = sub i32 %653, %642
  store i32 %654, ptr %396, align 8, !tbaa !30
  %655 = load ptr, ptr %395, align 8, !tbaa !25
  %656 = and i64 %641, 2147483647
  %657 = getelementptr inbounds nuw i8, ptr %655, i64 %656
  store ptr %657, ptr %395, align 8, !tbaa !25
  %658 = icmp eq i32 %653, %642
  br i1 %658, label %725, label %635, !llvm.loop !32

659:                                              ; preds = %623, %618
  %660 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %661 = load i32, ptr %660, align 8, !tbaa !34
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %659
  %664 = load i32, ptr %396, align 8, !tbaa !30
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %725, label %666

666:                                              ; preds = %663
  %667 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %660, align 8, !tbaa !34
  br label %668

668:                                              ; preds = %666, %659
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %675 = load i32, ptr %669, align 8, !tbaa !26
  br label %676

676:                                              ; preds = %722, %668
  %677 = phi i32 [ %675, %668 ], [ %723, %722 ]
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %717

679:                                              ; preds = %676
  %680 = load ptr, ptr %670, align 8, !tbaa !27
  %681 = load ptr, ptr %671, align 8, !tbaa !28
  %682 = icmp ugt ptr %680, %681
  br i1 %682, label %683, label %714

683:                                              ; preds = %679
  %684 = tail call ptr @__errno_location() #16
  br label %685

685:                                              ; preds = %705, %683
  %686 = phi ptr [ %681, %683 ], [ %708, %705 ]
  %687 = phi ptr [ %680, %683 ], [ %709, %705 ]
  store i32 0, ptr %684, align 4, !tbaa !4
  store i32 0, ptr %672, align 4, !tbaa !17
  %688 = ptrtoint ptr %687 to i64
  %689 = ptrtoint ptr %686 to i64
  %690 = sub i64 %688, %689
  %691 = tail call i64 @llvm.smin.i64(i64 %690, i64 1073741824)
  %692 = and i64 %691, 4294967295
  %693 = load i32, ptr %673, align 4, !tbaa !31
  %694 = tail call i64 @write(i32 noundef %693, ptr noundef %686, i64 noundef %692) #14
  %695 = and i64 %694, 2147483648
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %705, label %697

697:                                              ; preds = %685
  %698 = load i32, ptr %684, align 4, !tbaa !4
  %699 = icmp eq i32 %698, 11
  br i1 %699, label %700, label %702

700:                                              ; preds = %697
  store i32 1, ptr %672, align 4, !tbaa !17
  %701 = load i32, ptr %684, align 4, !tbaa !4
  br label %702

702:                                              ; preds = %700, %697
  %703 = phi i32 [ %698, %697 ], [ %701, %700 ]
  %704 = tail call ptr @strerror(i32 noundef %703) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %704) #14
  br label %890

705:                                              ; preds = %685
  %706 = load ptr, ptr %671, align 8, !tbaa !28
  %707 = and i64 %694, 2147483647
  %708 = getelementptr inbounds nuw i8, ptr %706, i64 %707
  store ptr %708, ptr %671, align 8, !tbaa !28
  %709 = load ptr, ptr %670, align 8, !tbaa !27
  %710 = icmp ugt ptr %709, %708
  br i1 %710, label %685, label %711, !llvm.loop !35

711:                                              ; preds = %705
  %712 = load i32, ptr %669, align 8, !tbaa !26
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %717

714:                                              ; preds = %711, %679
  %715 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %715, ptr %669, align 8, !tbaa !26
  %716 = load ptr, ptr %674, align 8, !tbaa !22
  store ptr %716, ptr %670, align 8, !tbaa !27
  store ptr %716, ptr %671, align 8, !tbaa !28
  br label %717

717:                                              ; preds = %714, %711, %676
  %718 = phi i32 [ %712, %711 ], [ %715, %714 ], [ %677, %676 ]
  %719 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %720 = icmp eq i32 %719, -2
  br i1 %720, label %721, label %722

721:                                              ; preds = %717
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %890

722:                                              ; preds = %717
  %723 = load i32, ptr %669, align 8, !tbaa !26
  %724 = icmp eq i32 %718, %723
  br i1 %724, label %725, label %676, !llvm.loop !36

725:                                              ; preds = %652, %722, %663, %627, %577
  store ptr %1, ptr %395, align 8, !tbaa !40
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %730 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %731 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %732 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %736 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %737 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %740

740:                                              ; preds = %882, %725
  %741 = phi i64 [ %21, %725 ], [ %888, %882 ]
  %742 = tail call i64 @llvm.umin.i64(i64 %741, i64 4294967295)
  %743 = trunc nuw i64 %742 to i32
  store i32 %743, ptr %396, align 8, !tbaa !39
  %744 = load i32, ptr %24, align 8, !tbaa !18
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %777

746:                                              ; preds = %740
  %747 = load i32, ptr %727, align 4, !tbaa !19
  %748 = shl i32 %747, 1
  %749 = zext i32 %748 to i64
  %750 = tail call noalias ptr @malloc(i64 noundef %749) #15
  store ptr %750, ptr %728, align 8, !tbaa !20
  %751 = icmp eq ptr %750, null
  br i1 %751, label %752, label %753

752:                                              ; preds = %746
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

753:                                              ; preds = %746
  %754 = load i32, ptr %726, align 8, !tbaa !21
  %755 = icmp eq i32 %754, 0
  %756 = load i32, ptr %727, align 4, !tbaa !19
  br i1 %755, label %758, label %757

757:                                              ; preds = %753
  store i32 %756, ptr %24, align 8, !tbaa !18
  br label %780

758:                                              ; preds = %753
  %759 = zext i32 %756 to i64
  %760 = tail call noalias ptr @malloc(i64 noundef %759) #15
  store ptr %760, ptr %729, align 8, !tbaa !22
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %763

762:                                              ; preds = %758
  tail call void @free(ptr noundef nonnull %750) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

763:                                              ; preds = %758
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %730, i8 0, i64 24, i1 false)
  %764 = load i32, ptr %731, align 8, !tbaa !23
  %765 = load i32, ptr %732, align 4, !tbaa !24
  %766 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %764, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %765, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %771, label %768

768:                                              ; preds = %763
  %769 = load ptr, ptr %729, align 8, !tbaa !22
  tail call void @free(ptr noundef %769) #14
  %770 = load ptr, ptr %728, align 8, !tbaa !20
  tail call void @free(ptr noundef %770) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

771:                                              ; preds = %763
  store ptr null, ptr %395, align 8, !tbaa !25
  %772 = load i32, ptr %726, align 8, !tbaa !21
  %773 = load i32, ptr %727, align 4, !tbaa !19
  store i32 %773, ptr %24, align 8, !tbaa !18
  %774 = icmp eq i32 %772, 0
  br i1 %774, label %775, label %780

775:                                              ; preds = %771
  store i32 %773, ptr %735, align 8, !tbaa !26
  %776 = load ptr, ptr %729, align 8, !tbaa !22
  store ptr %776, ptr %736, align 8, !tbaa !27
  store ptr %776, ptr %737, align 8, !tbaa !28
  br label %810

777:                                              ; preds = %740
  %778 = load i32, ptr %726, align 8, !tbaa !21
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %810, label %780

780:                                              ; preds = %777, %771, %757
  %781 = load i32, ptr %396, align 8, !tbaa !30
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %882, label %783

783:                                              ; preds = %780
  %784 = tail call ptr @__errno_location() #16
  %785 = load ptr, ptr %395, align 8, !tbaa !25
  br label %786

786:                                              ; preds = %803, %783
  %787 = phi ptr [ %785, %783 ], [ %808, %803 ]
  store i32 0, ptr %784, align 4, !tbaa !4
  store i32 0, ptr %733, align 4, !tbaa !17
  %788 = load i32, ptr %396, align 8, !tbaa !30
  %789 = tail call i32 @llvm.umin.i32(i32 %788, i32 1073741824)
  %790 = zext nneg i32 %789 to i64
  %791 = load i32, ptr %734, align 4, !tbaa !31
  %792 = tail call i64 @write(i32 noundef %791, ptr noundef %787, i64 noundef %790) #14
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 0
  br i1 %794, label %795, label %803

795:                                              ; preds = %786
  %796 = load i32, ptr %784, align 4, !tbaa !4
  %797 = icmp eq i32 %796, 11
  br i1 %797, label %798, label %800

798:                                              ; preds = %795
  store i32 1, ptr %733, align 4, !tbaa !17
  %799 = load i32, ptr %784, align 4, !tbaa !4
  br label %800

800:                                              ; preds = %798, %795
  %801 = phi i32 [ %796, %795 ], [ %799, %798 ]
  %802 = tail call ptr @strerror(i32 noundef %801) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %802) #14
  br label %869

803:                                              ; preds = %786
  %804 = load i32, ptr %396, align 8, !tbaa !30
  %805 = sub i32 %804, %793
  store i32 %805, ptr %396, align 8, !tbaa !30
  %806 = load ptr, ptr %395, align 8, !tbaa !25
  %807 = and i64 %792, 2147483647
  %808 = getelementptr inbounds nuw i8, ptr %806, i64 %807
  store ptr %808, ptr %395, align 8, !tbaa !25
  %809 = icmp eq i32 %804, %793
  br i1 %809, label %882, label %786, !llvm.loop !32

810:                                              ; preds = %777, %775
  %811 = load i32, ptr %738, align 8, !tbaa !34
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %818, label %813

813:                                              ; preds = %810
  %814 = load i32, ptr %396, align 8, !tbaa !30
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %882, label %816

816:                                              ; preds = %813
  %817 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %738, align 8, !tbaa !34
  br label %818

818:                                              ; preds = %816, %810
  %819 = load i32, ptr %735, align 8, !tbaa !26
  br label %820

820:                                              ; preds = %866, %818
  %821 = phi i32 [ %819, %818 ], [ %867, %866 ]
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %861

823:                                              ; preds = %820
  %824 = load ptr, ptr %736, align 8, !tbaa !27
  %825 = load ptr, ptr %737, align 8, !tbaa !28
  %826 = icmp ugt ptr %824, %825
  br i1 %826, label %827, label %858

827:                                              ; preds = %823
  %828 = tail call ptr @__errno_location() #16
  br label %829

829:                                              ; preds = %849, %827
  %830 = phi ptr [ %825, %827 ], [ %852, %849 ]
  %831 = phi ptr [ %824, %827 ], [ %853, %849 ]
  store i32 0, ptr %828, align 4, !tbaa !4
  store i32 0, ptr %733, align 4, !tbaa !17
  %832 = ptrtoint ptr %831 to i64
  %833 = ptrtoint ptr %830 to i64
  %834 = sub i64 %832, %833
  %835 = tail call i64 @llvm.smin.i64(i64 %834, i64 1073741824)
  %836 = and i64 %835, 4294967295
  %837 = load i32, ptr %734, align 4, !tbaa !31
  %838 = tail call i64 @write(i32 noundef %837, ptr noundef %830, i64 noundef %836) #14
  %839 = and i64 %838, 2147483648
  %840 = icmp eq i64 %839, 0
  br i1 %840, label %849, label %841

841:                                              ; preds = %829
  %842 = load i32, ptr %828, align 4, !tbaa !4
  %843 = icmp eq i32 %842, 11
  br i1 %843, label %844, label %846

844:                                              ; preds = %841
  store i32 1, ptr %733, align 4, !tbaa !17
  %845 = load i32, ptr %828, align 4, !tbaa !4
  br label %846

846:                                              ; preds = %844, %841
  %847 = phi i32 [ %842, %841 ], [ %845, %844 ]
  %848 = tail call ptr @strerror(i32 noundef %847) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %848) #14
  br label %869

849:                                              ; preds = %829
  %850 = load ptr, ptr %737, align 8, !tbaa !28
  %851 = and i64 %838, 2147483647
  %852 = getelementptr inbounds nuw i8, ptr %850, i64 %851
  store ptr %852, ptr %737, align 8, !tbaa !28
  %853 = load ptr, ptr %736, align 8, !tbaa !27
  %854 = icmp ugt ptr %853, %852
  br i1 %854, label %829, label %855, !llvm.loop !35

855:                                              ; preds = %849
  %856 = load i32, ptr %735, align 8, !tbaa !26
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %861

858:                                              ; preds = %855, %823
  %859 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %859, ptr %735, align 8, !tbaa !26
  %860 = load ptr, ptr %729, align 8, !tbaa !22
  store ptr %860, ptr %736, align 8, !tbaa !27
  store ptr %860, ptr %737, align 8, !tbaa !28
  br label %861

861:                                              ; preds = %858, %855, %820
  %862 = phi i32 [ %856, %855 ], [ %859, %858 ], [ %821, %820 ]
  %863 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %864 = icmp eq i32 %863, -2
  br i1 %864, label %865, label %866

865:                                              ; preds = %861
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %869

866:                                              ; preds = %861
  %867 = load i32, ptr %735, align 8, !tbaa !26
  %868 = icmp eq i32 %862, %867
  br i1 %868, label %880, label %820, !llvm.loop !36

869:                                              ; preds = %865, %846, %800, %768, %762, %752
  %870 = load i32, ptr %396, align 8, !tbaa !39
  %871 = sub i32 %743, %870
  %872 = zext i32 %871 to i64
  %873 = load i64, ptr %739, align 8, !tbaa !37
  %874 = add nsw i64 %873, %872
  store i64 %874, ptr %739, align 8, !tbaa !37
  %875 = load i32, ptr %733, align 4, !tbaa !17
  %876 = icmp eq i32 %875, 0
  %877 = sub i64 %21, %741
  %878 = add i64 %877, %872
  %879 = select i1 %876, i64 0, i64 %878
  br label %890

880:                                              ; preds = %866
  %881 = load i32, ptr %396, align 8, !tbaa !39
  br label %882

882:                                              ; preds = %803, %880, %813, %780
  %883 = phi i32 [ 0, %780 ], [ %881, %880 ], [ 0, %813 ], [ 0, %803 ]
  %884 = sub i32 %743, %883
  %885 = zext i32 %884 to i64
  %886 = load i64, ptr %739, align 8, !tbaa !37
  %887 = add nsw i64 %886, %885
  store i64 %887, ptr %739, align 8, !tbaa !37
  %888 = sub i64 %741, %885
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %890, label %740, !llvm.loop !41

890:                                              ; preds = %379, %882, %422, %20, %36, %48, %57, %89, %101, %110, %148, %201, %220, %572, %590, %602, %611, %649, %702, %721, %869
  %891 = phi i64 [ %879, %869 ], [ 0, %20 ], [ %21, %882 ], [ %576, %572 ], [ 0, %611 ], [ 0, %48 ], [ %21, %422 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %201 ], [ 0, %220 ], [ 0, %649 ], [ 0, %602 ], [ 0, %702 ], [ 0, %721 ], [ 0, %590 ], [ 0, %379 ]
  %892 = trunc i64 %891 to i32
  br label %893

893:                                              ; preds = %5, %13, %3, %890, %19
  %894 = phi i32 [ %892, %890 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %894
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %898, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %898

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %898, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #14
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = extractvalue { i64, i1 } %19, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #14
  br label %898

25:                                               ; preds = %22, %18
  %26 = icmp eq i64 %20, 0
  br i1 %26, label %898, label %27

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
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #15
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %37, ptr %38, align 8, !tbaa !20
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

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
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #15
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %49, ptr %50, align 8, !tbaa !22
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %37) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %56 = load i32, ptr %55, align 8, !tbaa !23
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %58 = load i32, ptr %57, align 4, !tbaa !24
  %59 = tail call i32 @deflateInit2_(ptr noundef nonnull %32, i32 noundef %56, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %58, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %50, align 8, !tbaa !22
  tail call void @free(ptr noundef %62) #14
  %63 = load ptr, ptr %38, align 8, !tbaa !20
  tail call void @free(ptr noundef %63) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

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
  br i1 %77, label %396, label %78

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
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #15
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !20
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

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
  %102 = tail call noalias ptr @malloc(i64 noundef %101) #15
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %102, ptr %103, align 8, !tbaa !22
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @free(ptr noundef nonnull %90) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %107, i8 0, i64 24, i1 false)
  %109 = load i32, ptr %108, align 8, !tbaa !23
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %109, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %111, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr %103, align 8, !tbaa !22
  tail call void @free(ptr noundef %115) #14
  %116 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @free(ptr noundef %116) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

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
  %134 = tail call ptr @__errno_location() #16
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
  %144 = tail call i64 @write(i32 noundef %143, ptr noundef %139, i64 noundef %142) #14
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
  %154 = tail call ptr @strerror(i32 noundef %153) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %154) #14
  br label %895

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
  %170 = tail call i32 @deflateReset(ptr noundef nonnull %79) #14
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
  %187 = tail call ptr @__errno_location() #16
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
  %197 = tail call i64 @write(i32 noundef %196, ptr noundef %189, i64 noundef %195) #14
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
  %207 = tail call ptr @strerror(i32 noundef %206) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %207) #14
  br label %895

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
  %222 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #14
  %223 = icmp eq i32 %222, -2
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %895

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

244:                                              ; preds = %392, %228
  %245 = phi i64 [ %243, %228 ], [ %391, %392 ]
  %246 = phi i1 [ false, %228 ], [ true, %392 ]
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
  %264 = tail call noalias ptr @malloc(i64 noundef %263) #15
  store ptr %264, ptr %229, align 8, !tbaa !20
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %274 = tail call noalias ptr @malloc(i64 noundef %273) #15
  store ptr %274, ptr %232, align 8, !tbaa !22
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  tail call void @free(ptr noundef nonnull %264) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %383

277:                                              ; preds = %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %233, i8 0, i64 24, i1 false)
  %278 = load i32, ptr %234, align 8, !tbaa !23
  %279 = load i32, ptr %235, align 4, !tbaa !24
  %280 = tail call i32 @deflateInit2_(ptr noundef nonnull %79, i32 noundef %278, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %279, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %232, align 8, !tbaa !22
  tail call void @free(ptr noundef %283) #14
  %284 = load ptr, ptr %229, align 8, !tbaa !20
  tail call void @free(ptr noundef %284) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %299 = tail call ptr @__errno_location() #16
  br label %300

300:                                              ; preds = %317, %298
  %301 = phi ptr [ %295, %298 ], [ %322, %317 ]
  store i32 0, ptr %299, align 4, !tbaa !4
  store i32 0, ptr %236, align 4, !tbaa !17
  %302 = load i32, ptr %80, align 8, !tbaa !30
  %303 = tail call i32 @llvm.umin.i32(i32 %302, i32 1073741824)
  %304 = zext nneg i32 %303 to i64
  %305 = load i32, ptr %237, align 4, !tbaa !31
  %306 = tail call i64 @write(i32 noundef %305, ptr noundef %301, i64 noundef %304) #14
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
  %316 = tail call ptr @strerror(i32 noundef %315) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %316) #14
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
  %331 = tail call i32 @deflateReset(ptr noundef nonnull %79) #14
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
  %342 = tail call ptr @__errno_location() #16
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
  %352 = tail call i64 @write(i32 noundef %351, ptr noundef %344, i64 noundef %350) #14
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
  %362 = tail call ptr @strerror(i32 noundef %361) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %362) #14
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
  %377 = tail call i32 @deflate(ptr noundef nonnull %79, i32 noundef 0) #14
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %389 = add nsw i64 %388, %387
  store i64 %389, ptr %242, align 8, !tbaa !37
  %390 = load i64, ptr %75, align 8, !tbaa !29
  %391 = sub nsw i64 %390, %387
  store i64 %391, ptr %75, align 8, !tbaa !29
  br i1 %384, label %895, label %392

392:                                              ; preds = %383
  %393 = icmp eq i64 %390, %387
  br i1 %393, label %394, label %244, !llvm.loop !38

394:                                              ; preds = %392
  %395 = load i32, ptr %28, align 8, !tbaa !18
  br label %396

396:                                              ; preds = %394, %73
  %397 = phi i32 [ %395, %394 ], [ %74, %73 ]
  %398 = zext i32 %397 to i64
  %399 = icmp ult i64 %20, %398
  %400 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %401 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %399, label %402, label %582

402:                                              ; preds = %396
  %403 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %404 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %405 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %406 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %407 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %408 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %409 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %410 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %411 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %413 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %414 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %415 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %416 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %417

417:                                              ; preds = %523, %402
  %418 = phi i64 [ %20, %402 ], [ %448, %523 ]
  %419 = phi ptr [ %0, %402 ], [ %447, %523 ]
  %420 = load i32, ptr %401, align 8, !tbaa !39
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %417
  %423 = load ptr, ptr %400, align 8, !tbaa !40
  %424 = load ptr, ptr %403, align 8, !tbaa !20
  br label %427

425:                                              ; preds = %417
  %426 = load ptr, ptr %403, align 8, !tbaa !20
  store ptr %426, ptr %400, align 8, !tbaa !40
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
  %436 = load i32, ptr %28, align 8, !tbaa !18
  %437 = sub i32 %436, %435
  %438 = zext i32 %437 to i64
  %439 = tail call i64 @llvm.umin.i64(i64 %418, i64 %438)
  %440 = trunc nuw i64 %439 to i32
  %441 = and i64 %434, 4294967295
  %442 = getelementptr inbounds nuw i8, ptr %428, i64 %441
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %419, i64 %439, i1 false)
  %443 = load i32, ptr %401, align 8, !tbaa !39
  %444 = add i32 %443, %440
  store i32 %444, ptr %401, align 8, !tbaa !39
  %445 = load i64, ptr %404, align 8, !tbaa !37
  %446 = add nsw i64 %439, %445
  store i64 %446, ptr %404, align 8, !tbaa !37
  %447 = getelementptr inbounds nuw i8, ptr %419, i64 %439
  %448 = sub i64 %418, %439
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %895, label %450

450:                                              ; preds = %427
  %451 = load i32, ptr %28, align 8, !tbaa !18
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %484

453:                                              ; preds = %450
  %454 = load i32, ptr %406, align 4, !tbaa !19
  %455 = shl i32 %454, 1
  %456 = zext i32 %455 to i64
  %457 = tail call noalias ptr @malloc(i64 noundef %456) #15
  store ptr %457, ptr %403, align 8, !tbaa !20
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %577

460:                                              ; preds = %453
  %461 = load i32, ptr %405, align 8, !tbaa !21
  %462 = icmp eq i32 %461, 0
  %463 = load i32, ptr %406, align 4, !tbaa !19
  br i1 %462, label %465, label %464

464:                                              ; preds = %460
  store i32 %463, ptr %28, align 8, !tbaa !18
  br label %487

465:                                              ; preds = %460
  %466 = zext i32 %463 to i64
  %467 = tail call noalias ptr @malloc(i64 noundef %466) #15
  store ptr %467, ptr %407, align 8, !tbaa !22
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %470

469:                                              ; preds = %465
  tail call void @free(ptr noundef nonnull %457) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %577

470:                                              ; preds = %465
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %408, i8 0, i64 24, i1 false)
  %471 = load i32, ptr %409, align 8, !tbaa !23
  %472 = load i32, ptr %410, align 4, !tbaa !24
  %473 = tail call i32 @deflateInit2_(ptr noundef nonnull %400, i32 noundef %471, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %472, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %470
  %476 = load ptr, ptr %407, align 8, !tbaa !22
  tail call void @free(ptr noundef %476) #14
  %477 = load ptr, ptr %403, align 8, !tbaa !20
  tail call void @free(ptr noundef %477) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %577

478:                                              ; preds = %470
  store ptr null, ptr %400, align 8, !tbaa !25
  %479 = load i32, ptr %405, align 8, !tbaa !21
  %480 = load i32, ptr %406, align 4, !tbaa !19
  store i32 %480, ptr %28, align 8, !tbaa !18
  %481 = icmp eq i32 %479, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %478
  store i32 %480, ptr %413, align 8, !tbaa !26
  %483 = load ptr, ptr %407, align 8, !tbaa !22
  store ptr %483, ptr %414, align 8, !tbaa !27
  store ptr %483, ptr %415, align 8, !tbaa !28
  br label %517

484:                                              ; preds = %450
  %485 = load i32, ptr %405, align 8, !tbaa !21
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %517, label %487

487:                                              ; preds = %484, %478, %464
  %488 = load i32, ptr %401, align 8, !tbaa !30
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %523, label %490

490:                                              ; preds = %487
  %491 = tail call ptr @__errno_location() #16
  %492 = load ptr, ptr %400, align 8, !tbaa !25
  br label %493

493:                                              ; preds = %510, %490
  %494 = phi ptr [ %492, %490 ], [ %515, %510 ]
  store i32 0, ptr %491, align 4, !tbaa !4
  store i32 0, ptr %411, align 4, !tbaa !17
  %495 = load i32, ptr %401, align 8, !tbaa !30
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 1073741824)
  %497 = zext nneg i32 %496 to i64
  %498 = load i32, ptr %412, align 4, !tbaa !31
  %499 = tail call i64 @write(i32 noundef %498, ptr noundef %494, i64 noundef %497) #14
  %500 = trunc i64 %499 to i32
  %501 = icmp slt i32 %500, 0
  br i1 %501, label %502, label %510

502:                                              ; preds = %493
  %503 = load i32, ptr %491, align 4, !tbaa !4
  %504 = icmp eq i32 %503, 11
  br i1 %504, label %505, label %507

505:                                              ; preds = %502
  store i32 1, ptr %411, align 4, !tbaa !17
  %506 = load i32, ptr %491, align 4, !tbaa !4
  br label %507

507:                                              ; preds = %505, %502
  %508 = phi i32 [ %503, %502 ], [ %506, %505 ]
  %509 = tail call ptr @strerror(i32 noundef %508) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %509) #14
  br label %577

510:                                              ; preds = %493
  %511 = load i32, ptr %401, align 8, !tbaa !30
  %512 = sub i32 %511, %500
  store i32 %512, ptr %401, align 8, !tbaa !30
  %513 = load ptr, ptr %400, align 8, !tbaa !25
  %514 = and i64 %499, 2147483647
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 %514
  store ptr %515, ptr %400, align 8, !tbaa !25
  %516 = icmp eq i32 %511, %500
  br i1 %516, label %523, label %493, !llvm.loop !32

517:                                              ; preds = %484, %482
  %518 = load i32, ptr %416, align 8, !tbaa !34
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %526, label %520

520:                                              ; preds = %517
  %521 = load i32, ptr %401, align 8, !tbaa !30
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %510, %574, %520, %487
  br label %417

524:                                              ; preds = %520
  %525 = tail call i32 @deflateReset(ptr noundef nonnull %400) #14
  store i32 0, ptr %416, align 8, !tbaa !34
  br label %526

526:                                              ; preds = %524, %517
  %527 = load i32, ptr %413, align 8, !tbaa !26
  br label %528

528:                                              ; preds = %574, %526
  %529 = phi i32 [ %527, %526 ], [ %575, %574 ]
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %569

531:                                              ; preds = %528
  %532 = load ptr, ptr %414, align 8, !tbaa !27
  %533 = load ptr, ptr %415, align 8, !tbaa !28
  %534 = icmp ugt ptr %532, %533
  br i1 %534, label %535, label %566

535:                                              ; preds = %531
  %536 = tail call ptr @__errno_location() #16
  br label %537

537:                                              ; preds = %557, %535
  %538 = phi ptr [ %533, %535 ], [ %560, %557 ]
  %539 = phi ptr [ %532, %535 ], [ %561, %557 ]
  store i32 0, ptr %536, align 4, !tbaa !4
  store i32 0, ptr %411, align 4, !tbaa !17
  %540 = ptrtoint ptr %539 to i64
  %541 = ptrtoint ptr %538 to i64
  %542 = sub i64 %540, %541
  %543 = tail call i64 @llvm.smin.i64(i64 %542, i64 1073741824)
  %544 = and i64 %543, 4294967295
  %545 = load i32, ptr %412, align 4, !tbaa !31
  %546 = tail call i64 @write(i32 noundef %545, ptr noundef %538, i64 noundef %544) #14
  %547 = and i64 %546, 2147483648
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %557, label %549

549:                                              ; preds = %537
  %550 = load i32, ptr %536, align 4, !tbaa !4
  %551 = icmp eq i32 %550, 11
  br i1 %551, label %552, label %554

552:                                              ; preds = %549
  store i32 1, ptr %411, align 4, !tbaa !17
  %553 = load i32, ptr %536, align 4, !tbaa !4
  br label %554

554:                                              ; preds = %552, %549
  %555 = phi i32 [ %550, %549 ], [ %553, %552 ]
  %556 = tail call ptr @strerror(i32 noundef %555) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %556) #14
  br label %577

557:                                              ; preds = %537
  %558 = load ptr, ptr %415, align 8, !tbaa !28
  %559 = and i64 %546, 2147483647
  %560 = getelementptr inbounds nuw i8, ptr %558, i64 %559
  store ptr %560, ptr %415, align 8, !tbaa !28
  %561 = load ptr, ptr %414, align 8, !tbaa !27
  %562 = icmp ugt ptr %561, %560
  br i1 %562, label %537, label %563, !llvm.loop !35

563:                                              ; preds = %557
  %564 = load i32, ptr %413, align 8, !tbaa !26
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %569

566:                                              ; preds = %563, %531
  %567 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %567, ptr %413, align 8, !tbaa !26
  %568 = load ptr, ptr %407, align 8, !tbaa !22
  store ptr %568, ptr %414, align 8, !tbaa !27
  store ptr %568, ptr %415, align 8, !tbaa !28
  br label %569

569:                                              ; preds = %566, %563, %528
  %570 = phi i32 [ %564, %563 ], [ %567, %566 ], [ %529, %528 ]
  %571 = tail call i32 @deflate(ptr noundef nonnull %400, i32 noundef 0) #14
  %572 = icmp eq i32 %571, -2
  br i1 %572, label %573, label %574

573:                                              ; preds = %569
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %577

574:                                              ; preds = %569
  %575 = load i32, ptr %413, align 8, !tbaa !26
  %576 = icmp eq i32 %570, %575
  br i1 %576, label %523, label %528, !llvm.loop !36

577:                                              ; preds = %573, %554, %507, %475, %469, %459
  %578 = load i32, ptr %411, align 4, !tbaa !17
  %579 = icmp eq i32 %578, 0
  %580 = sub i64 %20, %448
  %581 = select i1 %579, i64 0, i64 %580
  br label %895

582:                                              ; preds = %396
  %583 = load i32, ptr %401, align 8, !tbaa !39
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %730, label %585

585:                                              ; preds = %582
  %586 = icmp eq i32 %397, 0
  br i1 %586, label %587, label %628

587:                                              ; preds = %585
  %588 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %589 = load i32, ptr %588, align 4, !tbaa !19
  %590 = shl i32 %589, 1
  %591 = zext i32 %590 to i64
  %592 = tail call noalias ptr @malloc(i64 noundef %591) #15
  %593 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %592, ptr %593, align 8, !tbaa !20
  %594 = icmp eq ptr %592, null
  br i1 %594, label %595, label %596

595:                                              ; preds = %587
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

596:                                              ; preds = %587
  %597 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %598 = load i32, ptr %597, align 8, !tbaa !21
  %599 = icmp eq i32 %598, 0
  %600 = load i32, ptr %588, align 4, !tbaa !19
  br i1 %599, label %602, label %601

601:                                              ; preds = %596
  store i32 %600, ptr %28, align 8, !tbaa !18
  br label %632

602:                                              ; preds = %596
  %603 = zext i32 %600 to i64
  %604 = tail call noalias ptr @malloc(i64 noundef %603) #15
  %605 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %604, ptr %605, align 8, !tbaa !22
  %606 = icmp eq ptr %604, null
  br i1 %606, label %607, label %608

607:                                              ; preds = %602
  tail call void @free(ptr noundef nonnull %592) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

608:                                              ; preds = %602
  %609 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %610 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %609, i8 0, i64 24, i1 false)
  %611 = load i32, ptr %610, align 8, !tbaa !23
  %612 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %613 = load i32, ptr %612, align 4, !tbaa !24
  %614 = tail call i32 @deflateInit2_(ptr noundef nonnull %400, i32 noundef %611, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %613, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %619, label %616

616:                                              ; preds = %608
  %617 = load ptr, ptr %605, align 8, !tbaa !22
  tail call void @free(ptr noundef %617) #14
  %618 = load ptr, ptr %593, align 8, !tbaa !20
  tail call void @free(ptr noundef %618) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %895

619:                                              ; preds = %608
  store ptr null, ptr %400, align 8, !tbaa !25
  %620 = load i32, ptr %597, align 8, !tbaa !21
  %621 = load i32, ptr %588, align 4, !tbaa !19
  store i32 %621, ptr %28, align 8, !tbaa !18
  %622 = icmp eq i32 %620, 0
  br i1 %622, label %623, label %632

623:                                              ; preds = %619
  %624 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %621, ptr %624, align 8, !tbaa !26
  %625 = load ptr, ptr %605, align 8, !tbaa !22
  %626 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %625, ptr %626, align 8, !tbaa !27
  %627 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %625, ptr %627, align 8, !tbaa !28
  br label %664

628:                                              ; preds = %585
  %629 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %630 = load i32, ptr %629, align 8, !tbaa !21
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %664, label %632

632:                                              ; preds = %628, %619, %601
  %633 = load i32, ptr %401, align 8, !tbaa !30
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %730, label %635

635:                                              ; preds = %632
  %636 = tail call ptr @__errno_location() #16
  %637 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %638 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %639 = load ptr, ptr %400, align 8, !tbaa !25
  br label %640

640:                                              ; preds = %657, %635
  %641 = phi ptr [ %639, %635 ], [ %662, %657 ]
  store i32 0, ptr %636, align 4, !tbaa !4
  store i32 0, ptr %637, align 4, !tbaa !17
  %642 = load i32, ptr %401, align 8, !tbaa !30
  %643 = tail call i32 @llvm.umin.i32(i32 %642, i32 1073741824)
  %644 = zext nneg i32 %643 to i64
  %645 = load i32, ptr %638, align 4, !tbaa !31
  %646 = tail call i64 @write(i32 noundef %645, ptr noundef %641, i64 noundef %644) #14
  %647 = trunc i64 %646 to i32
  %648 = icmp slt i32 %647, 0
  br i1 %648, label %649, label %657

649:                                              ; preds = %640
  %650 = load i32, ptr %636, align 4, !tbaa !4
  %651 = icmp eq i32 %650, 11
  br i1 %651, label %652, label %654

652:                                              ; preds = %649
  store i32 1, ptr %637, align 4, !tbaa !17
  %653 = load i32, ptr %636, align 4, !tbaa !4
  br label %654

654:                                              ; preds = %652, %649
  %655 = phi i32 [ %650, %649 ], [ %653, %652 ]
  %656 = tail call ptr @strerror(i32 noundef %655) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %656) #14
  br label %895

657:                                              ; preds = %640
  %658 = load i32, ptr %401, align 8, !tbaa !30
  %659 = sub i32 %658, %647
  store i32 %659, ptr %401, align 8, !tbaa !30
  %660 = load ptr, ptr %400, align 8, !tbaa !25
  %661 = and i64 %646, 2147483647
  %662 = getelementptr inbounds nuw i8, ptr %660, i64 %661
  store ptr %662, ptr %400, align 8, !tbaa !25
  %663 = icmp eq i32 %658, %647
  br i1 %663, label %730, label %640, !llvm.loop !32

664:                                              ; preds = %628, %623
  %665 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %666 = load i32, ptr %665, align 8, !tbaa !34
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %673, label %668

668:                                              ; preds = %664
  %669 = load i32, ptr %401, align 8, !tbaa !30
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %730, label %671

671:                                              ; preds = %668
  %672 = tail call i32 @deflateReset(ptr noundef nonnull %400) #14
  store i32 0, ptr %665, align 8, !tbaa !34
  br label %673

673:                                              ; preds = %671, %664
  %674 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %675 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %676 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %677 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %678 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %679 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %680 = load i32, ptr %674, align 8, !tbaa !26
  br label %681

681:                                              ; preds = %727, %673
  %682 = phi i32 [ %680, %673 ], [ %728, %727 ]
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %722

684:                                              ; preds = %681
  %685 = load ptr, ptr %675, align 8, !tbaa !27
  %686 = load ptr, ptr %676, align 8, !tbaa !28
  %687 = icmp ugt ptr %685, %686
  br i1 %687, label %688, label %719

688:                                              ; preds = %684
  %689 = tail call ptr @__errno_location() #16
  br label %690

690:                                              ; preds = %710, %688
  %691 = phi ptr [ %686, %688 ], [ %713, %710 ]
  %692 = phi ptr [ %685, %688 ], [ %714, %710 ]
  store i32 0, ptr %689, align 4, !tbaa !4
  store i32 0, ptr %677, align 4, !tbaa !17
  %693 = ptrtoint ptr %692 to i64
  %694 = ptrtoint ptr %691 to i64
  %695 = sub i64 %693, %694
  %696 = tail call i64 @llvm.smin.i64(i64 %695, i64 1073741824)
  %697 = and i64 %696, 4294967295
  %698 = load i32, ptr %678, align 4, !tbaa !31
  %699 = tail call i64 @write(i32 noundef %698, ptr noundef %691, i64 noundef %697) #14
  %700 = and i64 %699, 2147483648
  %701 = icmp eq i64 %700, 0
  br i1 %701, label %710, label %702

702:                                              ; preds = %690
  %703 = load i32, ptr %689, align 4, !tbaa !4
  %704 = icmp eq i32 %703, 11
  br i1 %704, label %705, label %707

705:                                              ; preds = %702
  store i32 1, ptr %677, align 4, !tbaa !17
  %706 = load i32, ptr %689, align 4, !tbaa !4
  br label %707

707:                                              ; preds = %705, %702
  %708 = phi i32 [ %703, %702 ], [ %706, %705 ]
  %709 = tail call ptr @strerror(i32 noundef %708) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %709) #14
  br label %895

710:                                              ; preds = %690
  %711 = load ptr, ptr %676, align 8, !tbaa !28
  %712 = and i64 %699, 2147483647
  %713 = getelementptr inbounds nuw i8, ptr %711, i64 %712
  store ptr %713, ptr %676, align 8, !tbaa !28
  %714 = load ptr, ptr %675, align 8, !tbaa !27
  %715 = icmp ugt ptr %714, %713
  br i1 %715, label %690, label %716, !llvm.loop !35

716:                                              ; preds = %710
  %717 = load i32, ptr %674, align 8, !tbaa !26
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %722

719:                                              ; preds = %716, %684
  %720 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %720, ptr %674, align 8, !tbaa !26
  %721 = load ptr, ptr %679, align 8, !tbaa !22
  store ptr %721, ptr %675, align 8, !tbaa !27
  store ptr %721, ptr %676, align 8, !tbaa !28
  br label %722

722:                                              ; preds = %719, %716, %681
  %723 = phi i32 [ %717, %716 ], [ %720, %719 ], [ %682, %681 ]
  %724 = tail call i32 @deflate(ptr noundef nonnull %400, i32 noundef 0) #14
  %725 = icmp eq i32 %724, -2
  br i1 %725, label %726, label %727

726:                                              ; preds = %722
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %895

727:                                              ; preds = %722
  %728 = load i32, ptr %674, align 8, !tbaa !26
  %729 = icmp eq i32 %723, %728
  br i1 %729, label %730, label %681, !llvm.loop !36

730:                                              ; preds = %657, %727, %668, %632, %582
  store ptr %0, ptr %400, align 8, !tbaa !40
  %731 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %732 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %733 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %735 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %736 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %737 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %738 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %739 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %740 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %741 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %742 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %743 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %744 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %745

745:                                              ; preds = %887, %730
  %746 = phi i64 [ %20, %730 ], [ %893, %887 ]
  %747 = tail call i64 @llvm.umin.i64(i64 %746, i64 4294967295)
  %748 = trunc nuw i64 %747 to i32
  store i32 %748, ptr %401, align 8, !tbaa !39
  %749 = load i32, ptr %28, align 8, !tbaa !18
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %782

751:                                              ; preds = %745
  %752 = load i32, ptr %732, align 4, !tbaa !19
  %753 = shl i32 %752, 1
  %754 = zext i32 %753 to i64
  %755 = tail call noalias ptr @malloc(i64 noundef %754) #15
  store ptr %755, ptr %733, align 8, !tbaa !20
  %756 = icmp eq ptr %755, null
  br i1 %756, label %757, label %758

757:                                              ; preds = %751
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %874

758:                                              ; preds = %751
  %759 = load i32, ptr %731, align 8, !tbaa !21
  %760 = icmp eq i32 %759, 0
  %761 = load i32, ptr %732, align 4, !tbaa !19
  br i1 %760, label %763, label %762

762:                                              ; preds = %758
  store i32 %761, ptr %28, align 8, !tbaa !18
  br label %785

763:                                              ; preds = %758
  %764 = zext i32 %761 to i64
  %765 = tail call noalias ptr @malloc(i64 noundef %764) #15
  store ptr %765, ptr %734, align 8, !tbaa !22
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %768

767:                                              ; preds = %763
  tail call void @free(ptr noundef nonnull %755) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %874

768:                                              ; preds = %763
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %735, i8 0, i64 24, i1 false)
  %769 = load i32, ptr %736, align 8, !tbaa !23
  %770 = load i32, ptr %737, align 4, !tbaa !24
  %771 = tail call i32 @deflateInit2_(ptr noundef nonnull %400, i32 noundef %769, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %770, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %776, label %773

773:                                              ; preds = %768
  %774 = load ptr, ptr %734, align 8, !tbaa !22
  tail call void @free(ptr noundef %774) #14
  %775 = load ptr, ptr %733, align 8, !tbaa !20
  tail call void @free(ptr noundef %775) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %874

776:                                              ; preds = %768
  store ptr null, ptr %400, align 8, !tbaa !25
  %777 = load i32, ptr %731, align 8, !tbaa !21
  %778 = load i32, ptr %732, align 4, !tbaa !19
  store i32 %778, ptr %28, align 8, !tbaa !18
  %779 = icmp eq i32 %777, 0
  br i1 %779, label %780, label %785

780:                                              ; preds = %776
  store i32 %778, ptr %740, align 8, !tbaa !26
  %781 = load ptr, ptr %734, align 8, !tbaa !22
  store ptr %781, ptr %741, align 8, !tbaa !27
  store ptr %781, ptr %742, align 8, !tbaa !28
  br label %815

782:                                              ; preds = %745
  %783 = load i32, ptr %731, align 8, !tbaa !21
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %815, label %785

785:                                              ; preds = %782, %776, %762
  %786 = load i32, ptr %401, align 8, !tbaa !30
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %887, label %788

788:                                              ; preds = %785
  %789 = tail call ptr @__errno_location() #16
  %790 = load ptr, ptr %400, align 8, !tbaa !25
  br label %791

791:                                              ; preds = %808, %788
  %792 = phi ptr [ %790, %788 ], [ %813, %808 ]
  store i32 0, ptr %789, align 4, !tbaa !4
  store i32 0, ptr %738, align 4, !tbaa !17
  %793 = load i32, ptr %401, align 8, !tbaa !30
  %794 = tail call i32 @llvm.umin.i32(i32 %793, i32 1073741824)
  %795 = zext nneg i32 %794 to i64
  %796 = load i32, ptr %739, align 4, !tbaa !31
  %797 = tail call i64 @write(i32 noundef %796, ptr noundef %792, i64 noundef %795) #14
  %798 = trunc i64 %797 to i32
  %799 = icmp slt i32 %798, 0
  br i1 %799, label %800, label %808

800:                                              ; preds = %791
  %801 = load i32, ptr %789, align 4, !tbaa !4
  %802 = icmp eq i32 %801, 11
  br i1 %802, label %803, label %805

803:                                              ; preds = %800
  store i32 1, ptr %738, align 4, !tbaa !17
  %804 = load i32, ptr %789, align 4, !tbaa !4
  br label %805

805:                                              ; preds = %803, %800
  %806 = phi i32 [ %801, %800 ], [ %804, %803 ]
  %807 = tail call ptr @strerror(i32 noundef %806) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %807) #14
  br label %874

808:                                              ; preds = %791
  %809 = load i32, ptr %401, align 8, !tbaa !30
  %810 = sub i32 %809, %798
  store i32 %810, ptr %401, align 8, !tbaa !30
  %811 = load ptr, ptr %400, align 8, !tbaa !25
  %812 = and i64 %797, 2147483647
  %813 = getelementptr inbounds nuw i8, ptr %811, i64 %812
  store ptr %813, ptr %400, align 8, !tbaa !25
  %814 = icmp eq i32 %809, %798
  br i1 %814, label %887, label %791, !llvm.loop !32

815:                                              ; preds = %782, %780
  %816 = load i32, ptr %743, align 8, !tbaa !34
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %823, label %818

818:                                              ; preds = %815
  %819 = load i32, ptr %401, align 8, !tbaa !30
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %887, label %821

821:                                              ; preds = %818
  %822 = tail call i32 @deflateReset(ptr noundef nonnull %400) #14
  store i32 0, ptr %743, align 8, !tbaa !34
  br label %823

823:                                              ; preds = %821, %815
  %824 = load i32, ptr %740, align 8, !tbaa !26
  br label %825

825:                                              ; preds = %871, %823
  %826 = phi i32 [ %824, %823 ], [ %872, %871 ]
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %866

828:                                              ; preds = %825
  %829 = load ptr, ptr %741, align 8, !tbaa !27
  %830 = load ptr, ptr %742, align 8, !tbaa !28
  %831 = icmp ugt ptr %829, %830
  br i1 %831, label %832, label %863

832:                                              ; preds = %828
  %833 = tail call ptr @__errno_location() #16
  br label %834

834:                                              ; preds = %854, %832
  %835 = phi ptr [ %830, %832 ], [ %857, %854 ]
  %836 = phi ptr [ %829, %832 ], [ %858, %854 ]
  store i32 0, ptr %833, align 4, !tbaa !4
  store i32 0, ptr %738, align 4, !tbaa !17
  %837 = ptrtoint ptr %836 to i64
  %838 = ptrtoint ptr %835 to i64
  %839 = sub i64 %837, %838
  %840 = tail call i64 @llvm.smin.i64(i64 %839, i64 1073741824)
  %841 = and i64 %840, 4294967295
  %842 = load i32, ptr %739, align 4, !tbaa !31
  %843 = tail call i64 @write(i32 noundef %842, ptr noundef %835, i64 noundef %841) #14
  %844 = and i64 %843, 2147483648
  %845 = icmp eq i64 %844, 0
  br i1 %845, label %854, label %846

846:                                              ; preds = %834
  %847 = load i32, ptr %833, align 4, !tbaa !4
  %848 = icmp eq i32 %847, 11
  br i1 %848, label %849, label %851

849:                                              ; preds = %846
  store i32 1, ptr %738, align 4, !tbaa !17
  %850 = load i32, ptr %833, align 4, !tbaa !4
  br label %851

851:                                              ; preds = %849, %846
  %852 = phi i32 [ %847, %846 ], [ %850, %849 ]
  %853 = tail call ptr @strerror(i32 noundef %852) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %853) #14
  br label %874

854:                                              ; preds = %834
  %855 = load ptr, ptr %742, align 8, !tbaa !28
  %856 = and i64 %843, 2147483647
  %857 = getelementptr inbounds nuw i8, ptr %855, i64 %856
  store ptr %857, ptr %742, align 8, !tbaa !28
  %858 = load ptr, ptr %741, align 8, !tbaa !27
  %859 = icmp ugt ptr %858, %857
  br i1 %859, label %834, label %860, !llvm.loop !35

860:                                              ; preds = %854
  %861 = load i32, ptr %740, align 8, !tbaa !26
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %866

863:                                              ; preds = %860, %828
  %864 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %864, ptr %740, align 8, !tbaa !26
  %865 = load ptr, ptr %734, align 8, !tbaa !22
  store ptr %865, ptr %741, align 8, !tbaa !27
  store ptr %865, ptr %742, align 8, !tbaa !28
  br label %866

866:                                              ; preds = %863, %860, %825
  %867 = phi i32 [ %861, %860 ], [ %864, %863 ], [ %826, %825 ]
  %868 = tail call i32 @deflate(ptr noundef nonnull %400, i32 noundef 0) #14
  %869 = icmp eq i32 %868, -2
  br i1 %869, label %870, label %871

870:                                              ; preds = %866
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %874

871:                                              ; preds = %866
  %872 = load i32, ptr %740, align 8, !tbaa !26
  %873 = icmp eq i32 %867, %872
  br i1 %873, label %885, label %825, !llvm.loop !36

874:                                              ; preds = %870, %851, %805, %773, %767, %757
  %875 = load i32, ptr %401, align 8, !tbaa !39
  %876 = sub i32 %748, %875
  %877 = zext i32 %876 to i64
  %878 = load i64, ptr %744, align 8, !tbaa !37
  %879 = add nsw i64 %878, %877
  store i64 %879, ptr %744, align 8, !tbaa !37
  %880 = load i32, ptr %738, align 4, !tbaa !17
  %881 = icmp eq i32 %880, 0
  %882 = sub i64 %20, %746
  %883 = add i64 %882, %877
  %884 = select i1 %881, i64 0, i64 %883
  br label %895

885:                                              ; preds = %871
  %886 = load i32, ptr %401, align 8, !tbaa !39
  br label %887

887:                                              ; preds = %808, %885, %818, %785
  %888 = phi i32 [ 0, %785 ], [ %886, %885 ], [ 0, %818 ], [ 0, %808 ]
  %889 = sub i32 %748, %888
  %890 = zext i32 %889 to i64
  %891 = load i64, ptr %744, align 8, !tbaa !37
  %892 = add nsw i64 %891, %890
  store i64 %892, ptr %744, align 8, !tbaa !37
  %893 = sub i64 %746, %890
  %894 = icmp eq i64 %893, 0
  br i1 %894, label %895, label %745, !llvm.loop !41

895:                                              ; preds = %383, %887, %427, %40, %52, %61, %93, %105, %114, %152, %205, %224, %577, %595, %607, %616, %654, %707, %726, %874
  %896 = phi i64 [ %884, %874 ], [ %20, %427 ], [ %20, %887 ], [ %581, %577 ], [ 0, %616 ], [ 0, %52 ], [ 0, %595 ], [ 0, %40 ], [ 0, %61 ], [ 0, %93 ], [ 0, %114 ], [ 0, %152 ], [ 0, %105 ], [ 0, %205 ], [ 0, %224 ], [ 0, %654 ], [ 0, %607 ], [ 0, %707 ], [ 0, %726 ], [ 0, %383 ]
  %897 = udiv i64 %896, %1
  br label %898

898:                                              ; preds = %895, %25, %6, %14, %4, %24
  %899 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %24 ], [ 0, %14 ], [ %897, %895 ], [ 0, %25 ]
  ret i64 %899
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1238, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1238

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1238, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %340, label %22

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
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #15
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %35, ptr %36, align 8, !tbaa !20
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

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
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #15
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %47, ptr %48, align 8, !tbaa !22
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %35) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %54, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !22
  tail call void @free(ptr noundef %60) #14
  %61 = load ptr, ptr %36, align 8, !tbaa !20
  tail call void @free(ptr noundef %61) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

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
  %79 = tail call ptr @__errno_location() #16
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
  %89 = tail call i64 @write(i32 noundef %88, ptr noundef %84, i64 noundef %87) #14
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
  %99 = tail call ptr @strerror(i32 noundef %98) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %99) #14
  br label %1238

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
  %115 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %132 = tail call ptr @__errno_location() #16
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
  %142 = tail call i64 @write(i32 noundef %141, ptr noundef %134, i64 noundef %140) #14
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
  %152 = tail call ptr @strerror(i32 noundef %151) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %152) #14
  br label %1238

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
  %167 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %168 = icmp eq i32 %167, -2
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %1238

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

190:                                              ; preds = %338, %173
  %191 = phi i64 [ %189, %173 ], [ %337, %338 ]
  %192 = phi i1 [ false, %173 ], [ true, %338 ]
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
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #15
  store ptr %210, ptr %175, align 8, !tbaa !20
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #15
  store ptr %220, ptr %178, align 8, !tbaa !22
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @free(ptr noundef nonnull %210) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %329

223:                                              ; preds = %218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %179, i8 0, i64 24, i1 false)
  %224 = load i32, ptr %180, align 8, !tbaa !23
  %225 = load i32, ptr %181, align 4, !tbaa !24
  %226 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %224, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %225, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %178, align 8, !tbaa !22
  tail call void @free(ptr noundef %229) #14
  %230 = load ptr, ptr %175, align 8, !tbaa !20
  tail call void @free(ptr noundef %230) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %245 = tail call ptr @__errno_location() #16
  br label %246

246:                                              ; preds = %263, %244
  %247 = phi ptr [ %241, %244 ], [ %268, %263 ]
  store i32 0, ptr %245, align 4, !tbaa !4
  store i32 0, ptr %182, align 4, !tbaa !17
  %248 = load i32, ptr %23, align 8, !tbaa !30
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 1073741824)
  %250 = zext nneg i32 %249 to i64
  %251 = load i32, ptr %183, align 4, !tbaa !31
  %252 = tail call i64 @write(i32 noundef %251, ptr noundef %247, i64 noundef %250) #14
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
  %262 = tail call ptr @strerror(i32 noundef %261) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %262) #14
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
  %277 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %288 = tail call ptr @__errno_location() #16
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
  %298 = tail call i64 @write(i32 noundef %297, ptr noundef %290, i64 noundef %296) #14
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
  %308 = tail call ptr @strerror(i32 noundef %307) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %308) #14
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
  %323 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %324 = icmp eq i32 %323, -2
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %335 = add nsw i64 %334, %333
  store i64 %335, ptr %188, align 8, !tbaa !37
  %336 = load i64, ptr %19, align 8, !tbaa !29
  %337 = sub nsw i64 %336, %333
  store i64 %337, ptr %19, align 8, !tbaa !29
  br i1 %330, label %1238, label %338

338:                                              ; preds = %329
  %339 = icmp eq i64 %336, %333
  br i1 %339, label %340, label %190, !llvm.loop !38

340:                                              ; preds = %338, %18
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %342 = load i32, ptr %341, align 8, !tbaa !18
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %376, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %346 = load i32, ptr %345, align 8, !tbaa !30
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = load ptr, ptr %6, align 8, !tbaa !25
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %351 = load ptr, ptr %350, align 8, !tbaa !20
  br label %355

352:                                              ; preds = %344
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %354 = load ptr, ptr %353, align 8, !tbaa !20
  store ptr %354, ptr %6, align 8, !tbaa !25
  br label %355

355:                                              ; preds = %348, %352
  %356 = phi ptr [ %351, %348 ], [ %354, %352 ]
  %357 = phi ptr [ %349, %348 ], [ %354, %352 ]
  %358 = zext i32 %346 to i64
  %359 = getelementptr inbounds nuw i8, ptr %357, i64 %358
  %360 = ptrtoint ptr %359 to i64
  %361 = ptrtoint ptr %356 to i64
  %362 = sub i64 %360, %361
  %363 = trunc i64 %362 to i32
  %364 = icmp ugt i32 %342, %363
  %365 = trunc i32 %1 to i8
  br i1 %364, label %366, label %375

366:                                              ; preds = %355
  %367 = and i64 %362, 4294967295
  %368 = getelementptr inbounds nuw i8, ptr %356, i64 %367
  store i8 %365, ptr %368, align 1, !tbaa !42
  %369 = load i32, ptr %345, align 8, !tbaa !30
  %370 = add i32 %369, 1
  store i32 %370, ptr %345, align 8, !tbaa !30
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %372 = load i64, ptr %371, align 8, !tbaa !37
  %373 = add nsw i64 %372, 1
  store i64 %373, ptr %371, align 8, !tbaa !37
  %374 = and i32 %1, 255
  br label %1238

375:                                              ; preds = %355
  store i8 %365, ptr %3, align 1, !tbaa !42
  br label %418

376:                                              ; preds = %340
  %377 = trunc i32 %1 to i8
  store i8 %377, ptr %3, align 1, !tbaa !42
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %379 = load i32, ptr %378, align 4, !tbaa !19
  %380 = shl i32 %379, 1
  %381 = zext i32 %380 to i64
  %382 = tail call noalias ptr @malloc(i64 noundef %381) #15
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %382, ptr %383, align 8, !tbaa !20
  %384 = icmp eq ptr %382, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %376
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

386:                                              ; preds = %376
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %388 = load i32, ptr %387, align 8, !tbaa !21
  %389 = icmp eq i32 %388, 0
  %390 = load i32, ptr %378, align 4, !tbaa !19
  br i1 %389, label %392, label %391

391:                                              ; preds = %386
  store i32 %390, ptr %341, align 8, !tbaa !18
  br label %418

392:                                              ; preds = %386
  %393 = zext i32 %390 to i64
  %394 = tail call noalias ptr @malloc(i64 noundef %393) #15
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %394, ptr %395, align 8, !tbaa !22
  %396 = icmp eq ptr %394, null
  br i1 %396, label %397, label %398

397:                                              ; preds = %392
  tail call void @free(ptr noundef nonnull %382) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

398:                                              ; preds = %392
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %399, i8 0, i64 24, i1 false)
  %401 = load i32, ptr %400, align 8, !tbaa !23
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %403 = load i32, ptr %402, align 4, !tbaa !24
  %404 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %401, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %403, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %398
  %407 = load ptr, ptr %395, align 8, !tbaa !22
  tail call void @free(ptr noundef %407) #14
  %408 = load ptr, ptr %383, align 8, !tbaa !20
  tail call void @free(ptr noundef %408) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

409:                                              ; preds = %398
  store ptr null, ptr %6, align 8, !tbaa !25
  %410 = load i32, ptr %387, align 8, !tbaa !21
  %411 = load i32, ptr %378, align 4, !tbaa !19
  store i32 %411, ptr %341, align 8, !tbaa !18
  %412 = icmp eq i32 %410, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %409
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %411, ptr %414, align 8, !tbaa !26
  %415 = load ptr, ptr %395, align 8, !tbaa !22
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %415, ptr %416, align 8, !tbaa !27
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %415, ptr %417, align 8, !tbaa !28
  br label %418

418:                                              ; preds = %375, %413, %409, %391
  %419 = phi i32 [ %411, %413 ], [ %411, %409 ], [ %390, %391 ], [ %342, %375 ]
  %420 = load i64, ptr %19, align 8, !tbaa !29
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %739, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %424 = load i32, ptr %423, align 8, !tbaa !30
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %571, label %426

426:                                              ; preds = %422
  %427 = icmp eq i32 %419, 0
  br i1 %427, label %428, label %469

428:                                              ; preds = %426
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %430 = load i32, ptr %429, align 4, !tbaa !19
  %431 = shl i32 %430, 1
  %432 = zext i32 %431 to i64
  %433 = tail call noalias ptr @malloc(i64 noundef %432) #15
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %433, ptr %434, align 8, !tbaa !20
  %435 = icmp eq ptr %433, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

437:                                              ; preds = %428
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %439 = load i32, ptr %438, align 8, !tbaa !21
  %440 = icmp eq i32 %439, 0
  %441 = load i32, ptr %429, align 4, !tbaa !19
  br i1 %440, label %443, label %442

442:                                              ; preds = %437
  store i32 %441, ptr %341, align 8, !tbaa !18
  br label %473

443:                                              ; preds = %437
  %444 = zext i32 %441 to i64
  %445 = tail call noalias ptr @malloc(i64 noundef %444) #15
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %445, ptr %446, align 8, !tbaa !22
  %447 = icmp eq ptr %445, null
  br i1 %447, label %448, label %449

448:                                              ; preds = %443
  tail call void @free(ptr noundef nonnull %433) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

449:                                              ; preds = %443
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %450, i8 0, i64 24, i1 false)
  %452 = load i32, ptr %451, align 8, !tbaa !23
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %454 = load i32, ptr %453, align 4, !tbaa !24
  %455 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %452, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %454, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %449
  %458 = load ptr, ptr %446, align 8, !tbaa !22
  tail call void @free(ptr noundef %458) #14
  %459 = load ptr, ptr %434, align 8, !tbaa !20
  tail call void @free(ptr noundef %459) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

460:                                              ; preds = %449
  store ptr null, ptr %6, align 8, !tbaa !25
  %461 = load i32, ptr %438, align 8, !tbaa !21
  %462 = load i32, ptr %429, align 4, !tbaa !19
  store i32 %462, ptr %341, align 8, !tbaa !18
  %463 = icmp eq i32 %461, 0
  br i1 %463, label %464, label %473

464:                                              ; preds = %460
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %462, ptr %465, align 8, !tbaa !26
  %466 = load ptr, ptr %446, align 8, !tbaa !22
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %466, ptr %467, align 8, !tbaa !27
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %466, ptr %468, align 8, !tbaa !28
  br label %505

469:                                              ; preds = %426
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %471 = load i32, ptr %470, align 8, !tbaa !21
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %505, label %473

473:                                              ; preds = %469, %460, %442
  %474 = load i32, ptr %423, align 8, !tbaa !30
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %571, label %476

476:                                              ; preds = %473
  %477 = tail call ptr @__errno_location() #16
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %480 = load ptr, ptr %6, align 8, !tbaa !25
  br label %481

481:                                              ; preds = %498, %476
  %482 = phi ptr [ %480, %476 ], [ %503, %498 ]
  store i32 0, ptr %477, align 4, !tbaa !4
  store i32 0, ptr %478, align 4, !tbaa !17
  %483 = load i32, ptr %423, align 8, !tbaa !30
  %484 = tail call i32 @llvm.umin.i32(i32 %483, i32 1073741824)
  %485 = zext nneg i32 %484 to i64
  %486 = load i32, ptr %479, align 4, !tbaa !31
  %487 = tail call i64 @write(i32 noundef %486, ptr noundef %482, i64 noundef %485) #14
  %488 = trunc i64 %487 to i32
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %481
  %491 = load i32, ptr %477, align 4, !tbaa !4
  %492 = icmp eq i32 %491, 11
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  store i32 1, ptr %478, align 4, !tbaa !17
  %494 = load i32, ptr %477, align 4, !tbaa !4
  br label %495

495:                                              ; preds = %493, %490
  %496 = phi i32 [ %491, %490 ], [ %494, %493 ]
  %497 = tail call ptr @strerror(i32 noundef %496) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %497) #14
  br label %1238

498:                                              ; preds = %481
  %499 = load i32, ptr %423, align 8, !tbaa !30
  %500 = sub i32 %499, %488
  store i32 %500, ptr %423, align 8, !tbaa !30
  %501 = load ptr, ptr %6, align 8, !tbaa !25
  %502 = and i64 %487, 2147483647
  %503 = getelementptr inbounds nuw i8, ptr %501, i64 %502
  store ptr %503, ptr %6, align 8, !tbaa !25
  %504 = icmp eq i32 %499, %488
  br i1 %504, label %571, label %481, !llvm.loop !32

505:                                              ; preds = %469, %464
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %507 = load i32, ptr %506, align 8, !tbaa !34
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %514, label %509

509:                                              ; preds = %505
  %510 = load i32, ptr %423, align 8, !tbaa !30
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %571, label %512

512:                                              ; preds = %509
  %513 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %506, align 8, !tbaa !34
  br label %514

514:                                              ; preds = %512, %505
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %521 = load i32, ptr %515, align 8, !tbaa !26
  br label %522

522:                                              ; preds = %568, %514
  %523 = phi i32 [ %521, %514 ], [ %569, %568 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %563

525:                                              ; preds = %522
  %526 = load ptr, ptr %516, align 8, !tbaa !27
  %527 = load ptr, ptr %517, align 8, !tbaa !28
  %528 = icmp ugt ptr %526, %527
  br i1 %528, label %529, label %560

529:                                              ; preds = %525
  %530 = tail call ptr @__errno_location() #16
  br label %531

531:                                              ; preds = %551, %529
  %532 = phi ptr [ %527, %529 ], [ %554, %551 ]
  %533 = phi ptr [ %526, %529 ], [ %555, %551 ]
  store i32 0, ptr %530, align 4, !tbaa !4
  store i32 0, ptr %518, align 4, !tbaa !17
  %534 = ptrtoint ptr %533 to i64
  %535 = ptrtoint ptr %532 to i64
  %536 = sub i64 %534, %535
  %537 = tail call i64 @llvm.smin.i64(i64 %536, i64 1073741824)
  %538 = and i64 %537, 4294967295
  %539 = load i32, ptr %519, align 4, !tbaa !31
  %540 = tail call i64 @write(i32 noundef %539, ptr noundef %532, i64 noundef %538) #14
  %541 = and i64 %540, 2147483648
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %551, label %543

543:                                              ; preds = %531
  %544 = load i32, ptr %530, align 4, !tbaa !4
  %545 = icmp eq i32 %544, 11
  br i1 %545, label %546, label %548

546:                                              ; preds = %543
  store i32 1, ptr %518, align 4, !tbaa !17
  %547 = load i32, ptr %530, align 4, !tbaa !4
  br label %548

548:                                              ; preds = %546, %543
  %549 = phi i32 [ %544, %543 ], [ %547, %546 ]
  %550 = tail call ptr @strerror(i32 noundef %549) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %550) #14
  br label %1238

551:                                              ; preds = %531
  %552 = load ptr, ptr %517, align 8, !tbaa !28
  %553 = and i64 %540, 2147483647
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  store ptr %554, ptr %517, align 8, !tbaa !28
  %555 = load ptr, ptr %516, align 8, !tbaa !27
  %556 = icmp ugt ptr %555, %554
  br i1 %556, label %531, label %557, !llvm.loop !35

557:                                              ; preds = %551
  %558 = load i32, ptr %515, align 8, !tbaa !26
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %557, %525
  %561 = load i32, ptr %341, align 8, !tbaa !18
  store i32 %561, ptr %515, align 8, !tbaa !26
  %562 = load ptr, ptr %520, align 8, !tbaa !22
  store ptr %562, ptr %516, align 8, !tbaa !27
  store ptr %562, ptr %517, align 8, !tbaa !28
  br label %563

563:                                              ; preds = %560, %557, %522
  %564 = phi i32 [ %558, %557 ], [ %561, %560 ], [ %523, %522 ]
  %565 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %566 = icmp eq i32 %565, -2
  br i1 %566, label %567, label %568

567:                                              ; preds = %563
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %1238

568:                                              ; preds = %563
  %569 = load i32, ptr %515, align 8, !tbaa !26
  %570 = icmp eq i32 %564, %569
  br i1 %570, label %571, label %522, !llvm.loop !36

571:                                              ; preds = %498, %568, %509, %473, %422
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %573 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %574 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %575 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %576 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %577 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %579 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %580 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %581 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %585 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %586 = load i64, ptr %19, align 8, !tbaa !29
  br label %587

587:                                              ; preds = %735, %571
  %588 = phi i64 [ %586, %571 ], [ %734, %735 ]
  %589 = phi i1 [ false, %571 ], [ true, %735 ]
  %590 = load i32, ptr %341, align 8, !tbaa !18
  %591 = zext i32 %590 to i64
  %592 = tail call i64 @llvm.smin.i64(i64 %588, i64 %591)
  %593 = trunc i64 %592 to i32
  %594 = load ptr, ptr %572, align 8, !tbaa !20
  br i1 %589, label %599, label %595

595:                                              ; preds = %587
  %596 = and i64 %592, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %594, i8 0, i64 %596, i1 false)
  %597 = load ptr, ptr %572, align 8, !tbaa !20
  %598 = load i32, ptr %341, align 8, !tbaa !18
  br label %599

599:                                              ; preds = %595, %587
  %600 = phi i32 [ %598, %595 ], [ %590, %587 ]
  %601 = phi ptr [ %597, %595 ], [ %594, %587 ]
  store i32 %593, ptr %423, align 8, !tbaa !30
  store ptr %601, ptr %6, align 8, !tbaa !25
  %602 = icmp eq i32 %600, 0
  br i1 %602, label %603, label %634

603:                                              ; preds = %599
  %604 = load i32, ptr %574, align 4, !tbaa !19
  %605 = shl i32 %604, 1
  %606 = zext i32 %605 to i64
  %607 = tail call noalias ptr @malloc(i64 noundef %606) #15
  store ptr %607, ptr %572, align 8, !tbaa !20
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %610

609:                                              ; preds = %603
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %726

610:                                              ; preds = %603
  %611 = load i32, ptr %573, align 8, !tbaa !21
  %612 = icmp eq i32 %611, 0
  %613 = load i32, ptr %574, align 4, !tbaa !19
  br i1 %612, label %615, label %614

614:                                              ; preds = %610
  store i32 %613, ptr %341, align 8, !tbaa !18
  br label %637

615:                                              ; preds = %610
  %616 = zext i32 %613 to i64
  %617 = tail call noalias ptr @malloc(i64 noundef %616) #15
  store ptr %617, ptr %575, align 8, !tbaa !22
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %620

619:                                              ; preds = %615
  tail call void @free(ptr noundef nonnull %607) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %726

620:                                              ; preds = %615
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %576, i8 0, i64 24, i1 false)
  %621 = load i32, ptr %577, align 8, !tbaa !23
  %622 = load i32, ptr %578, align 4, !tbaa !24
  %623 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %621, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %622, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %620
  %626 = load ptr, ptr %575, align 8, !tbaa !22
  tail call void @free(ptr noundef %626) #14
  %627 = load ptr, ptr %572, align 8, !tbaa !20
  tail call void @free(ptr noundef %627) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %726

628:                                              ; preds = %620
  store ptr null, ptr %6, align 8, !tbaa !25
  %629 = load i32, ptr %573, align 8, !tbaa !21
  %630 = load i32, ptr %574, align 4, !tbaa !19
  store i32 %630, ptr %341, align 8, !tbaa !18
  %631 = icmp eq i32 %629, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %628
  store i32 %630, ptr %581, align 8, !tbaa !26
  %633 = load ptr, ptr %575, align 8, !tbaa !22
  store ptr %633, ptr %582, align 8, !tbaa !27
  store ptr %633, ptr %583, align 8, !tbaa !28
  br label %667

634:                                              ; preds = %599
  %635 = load i32, ptr %573, align 8, !tbaa !21
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %667, label %637

637:                                              ; preds = %634, %628, %614
  %638 = phi ptr [ %601, %634 ], [ null, %628 ], [ %601, %614 ]
  %639 = load i32, ptr %423, align 8, !tbaa !30
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %726, label %641

641:                                              ; preds = %637
  %642 = tail call ptr @__errno_location() #16
  br label %643

643:                                              ; preds = %660, %641
  %644 = phi ptr [ %638, %641 ], [ %665, %660 ]
  store i32 0, ptr %642, align 4, !tbaa !4
  store i32 0, ptr %579, align 4, !tbaa !17
  %645 = load i32, ptr %423, align 8, !tbaa !30
  %646 = tail call i32 @llvm.umin.i32(i32 %645, i32 1073741824)
  %647 = zext nneg i32 %646 to i64
  %648 = load i32, ptr %580, align 4, !tbaa !31
  %649 = tail call i64 @write(i32 noundef %648, ptr noundef %644, i64 noundef %647) #14
  %650 = trunc i64 %649 to i32
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %660

652:                                              ; preds = %643
  %653 = load i32, ptr %642, align 4, !tbaa !4
  %654 = icmp eq i32 %653, 11
  br i1 %654, label %655, label %657

655:                                              ; preds = %652
  store i32 1, ptr %579, align 4, !tbaa !17
  %656 = load i32, ptr %642, align 4, !tbaa !4
  br label %657

657:                                              ; preds = %655, %652
  %658 = phi i32 [ %653, %652 ], [ %656, %655 ]
  %659 = tail call ptr @strerror(i32 noundef %658) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %659) #14
  br label %726

660:                                              ; preds = %643
  %661 = load i32, ptr %423, align 8, !tbaa !30
  %662 = sub i32 %661, %650
  store i32 %662, ptr %423, align 8, !tbaa !30
  %663 = load ptr, ptr %6, align 8, !tbaa !25
  %664 = and i64 %649, 2147483647
  %665 = getelementptr inbounds nuw i8, ptr %663, i64 %664
  store ptr %665, ptr %6, align 8, !tbaa !25
  %666 = icmp eq i32 %661, %650
  br i1 %666, label %726, label %643, !llvm.loop !32

667:                                              ; preds = %634, %632
  %668 = load i32, ptr %584, align 8, !tbaa !34
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %675, label %670

670:                                              ; preds = %667
  %671 = load i32, ptr %423, align 8, !tbaa !30
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %726, label %673

673:                                              ; preds = %670
  %674 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %584, align 8, !tbaa !34
  br label %675

675:                                              ; preds = %673, %667
  %676 = load i32, ptr %581, align 8, !tbaa !26
  br label %677

677:                                              ; preds = %723, %675
  %678 = phi i32 [ %676, %675 ], [ %724, %723 ]
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %718

680:                                              ; preds = %677
  %681 = load ptr, ptr %582, align 8, !tbaa !27
  %682 = load ptr, ptr %583, align 8, !tbaa !28
  %683 = icmp ugt ptr %681, %682
  br i1 %683, label %684, label %715

684:                                              ; preds = %680
  %685 = tail call ptr @__errno_location() #16
  br label %686

686:                                              ; preds = %706, %684
  %687 = phi ptr [ %682, %684 ], [ %709, %706 ]
  %688 = phi ptr [ %681, %684 ], [ %710, %706 ]
  store i32 0, ptr %685, align 4, !tbaa !4
  store i32 0, ptr %579, align 4, !tbaa !17
  %689 = ptrtoint ptr %688 to i64
  %690 = ptrtoint ptr %687 to i64
  %691 = sub i64 %689, %690
  %692 = tail call i64 @llvm.smin.i64(i64 %691, i64 1073741824)
  %693 = and i64 %692, 4294967295
  %694 = load i32, ptr %580, align 4, !tbaa !31
  %695 = tail call i64 @write(i32 noundef %694, ptr noundef %687, i64 noundef %693) #14
  %696 = and i64 %695, 2147483648
  %697 = icmp eq i64 %696, 0
  br i1 %697, label %706, label %698

698:                                              ; preds = %686
  %699 = load i32, ptr %685, align 4, !tbaa !4
  %700 = icmp eq i32 %699, 11
  br i1 %700, label %701, label %703

701:                                              ; preds = %698
  store i32 1, ptr %579, align 4, !tbaa !17
  %702 = load i32, ptr %685, align 4, !tbaa !4
  br label %703

703:                                              ; preds = %701, %698
  %704 = phi i32 [ %699, %698 ], [ %702, %701 ]
  %705 = tail call ptr @strerror(i32 noundef %704) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %705) #14
  br label %726

706:                                              ; preds = %686
  %707 = load ptr, ptr %583, align 8, !tbaa !28
  %708 = and i64 %695, 2147483647
  %709 = getelementptr inbounds nuw i8, ptr %707, i64 %708
  store ptr %709, ptr %583, align 8, !tbaa !28
  %710 = load ptr, ptr %582, align 8, !tbaa !27
  %711 = icmp ugt ptr %710, %709
  br i1 %711, label %686, label %712, !llvm.loop !35

712:                                              ; preds = %706
  %713 = load i32, ptr %581, align 8, !tbaa !26
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %718

715:                                              ; preds = %712, %680
  %716 = load i32, ptr %341, align 8, !tbaa !18
  store i32 %716, ptr %581, align 8, !tbaa !26
  %717 = load ptr, ptr %575, align 8, !tbaa !22
  store ptr %717, ptr %582, align 8, !tbaa !27
  store ptr %717, ptr %583, align 8, !tbaa !28
  br label %718

718:                                              ; preds = %715, %712, %677
  %719 = phi i32 [ %713, %712 ], [ %716, %715 ], [ %678, %677 ]
  %720 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %721 = icmp eq i32 %720, -2
  br i1 %721, label %722, label %723

722:                                              ; preds = %718
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %726

723:                                              ; preds = %718
  %724 = load i32, ptr %581, align 8, !tbaa !26
  %725 = icmp eq i32 %719, %724
  br i1 %725, label %726, label %677, !llvm.loop !36

726:                                              ; preds = %660, %723, %722, %703, %670, %657, %637, %625, %619, %609
  %727 = phi i1 [ false, %670 ], [ true, %657 ], [ false, %637 ], [ true, %619 ], [ true, %703 ], [ true, %722 ], [ false, %723 ], [ true, %609 ], [ true, %625 ], [ false, %660 ]
  %728 = load i32, ptr %423, align 8, !tbaa !30
  %729 = sub i32 %593, %728
  %730 = zext i32 %729 to i64
  %731 = load i64, ptr %585, align 8, !tbaa !37
  %732 = add nsw i64 %731, %730
  store i64 %732, ptr %585, align 8, !tbaa !37
  %733 = load i64, ptr %19, align 8, !tbaa !29
  %734 = sub nsw i64 %733, %730
  store i64 %734, ptr %19, align 8, !tbaa !29
  br i1 %727, label %1238, label %735

735:                                              ; preds = %726
  %736 = icmp eq i64 %733, %730
  br i1 %736, label %737, label %587, !llvm.loop !38

737:                                              ; preds = %735
  %738 = load i32, ptr %341, align 8, !tbaa !18
  br label %739

739:                                              ; preds = %737, %418
  %740 = phi i32 [ %738, %737 ], [ %419, %418 ]
  %741 = icmp ugt i32 %740, 1
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %741, label %743, label %918

743:                                              ; preds = %739
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %745 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %746 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %747 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %748 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %749 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %751 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %752 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %753 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %754 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %755 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %756 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %757 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %758

758:                                              ; preds = %861, %743
  %759 = phi ptr [ %3, %743 ], [ %787, %861 ]
  %760 = load i32, ptr %742, align 8, !tbaa !39
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %765, label %762

762:                                              ; preds = %758
  %763 = load ptr, ptr %6, align 8, !tbaa !40
  %764 = load ptr, ptr %744, align 8, !tbaa !20
  br label %767

765:                                              ; preds = %758
  %766 = load ptr, ptr %744, align 8, !tbaa !20
  store ptr %766, ptr %6, align 8, !tbaa !40
  br label %767

767:                                              ; preds = %765, %762
  %768 = phi ptr [ %764, %762 ], [ %766, %765 ]
  %769 = phi ptr [ %763, %762 ], [ %766, %765 ]
  %770 = zext i32 %760 to i64
  %771 = getelementptr inbounds nuw i8, ptr %769, i64 %770
  %772 = ptrtoint ptr %771 to i64
  %773 = ptrtoint ptr %768 to i64
  %774 = sub i64 %772, %773
  %775 = trunc i64 %774 to i32
  %776 = load i32, ptr %341, align 8, !tbaa !18
  %777 = icmp ne i32 %776, %775
  %778 = zext i1 %777 to i64
  %779 = zext i1 %777 to i32
  %780 = and i64 %774, 4294967295
  %781 = getelementptr inbounds nuw i8, ptr %768, i64 %780
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %781, ptr align 1 %759, i64 %778, i1 false)
  %782 = load i32, ptr %742, align 8, !tbaa !39
  %783 = add i32 %782, %779
  store i32 %783, ptr %742, align 8, !tbaa !39
  %784 = load i64, ptr %745, align 8, !tbaa !37
  %785 = add nsw i64 %784, %778
  store i64 %785, ptr %745, align 8, !tbaa !37
  %786 = zext i1 %777 to i64
  %787 = getelementptr inbounds nuw i8, ptr %759, i64 %786
  br i1 %777, label %1230, label %788

788:                                              ; preds = %767
  %789 = load i32, ptr %341, align 8, !tbaa !18
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %822

791:                                              ; preds = %788
  %792 = load i32, ptr %747, align 4, !tbaa !19
  %793 = shl i32 %792, 1
  %794 = zext i32 %793 to i64
  %795 = tail call noalias ptr @malloc(i64 noundef %794) #15
  store ptr %795, ptr %744, align 8, !tbaa !20
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %798

797:                                              ; preds = %791
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %915

798:                                              ; preds = %791
  %799 = load i32, ptr %746, align 8, !tbaa !21
  %800 = icmp eq i32 %799, 0
  %801 = load i32, ptr %747, align 4, !tbaa !19
  br i1 %800, label %803, label %802

802:                                              ; preds = %798
  store i32 %801, ptr %341, align 8, !tbaa !18
  br label %825

803:                                              ; preds = %798
  %804 = zext i32 %801 to i64
  %805 = tail call noalias ptr @malloc(i64 noundef %804) #15
  store ptr %805, ptr %748, align 8, !tbaa !22
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %808

807:                                              ; preds = %803
  tail call void @free(ptr noundef nonnull %795) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %915

808:                                              ; preds = %803
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %749, i8 0, i64 24, i1 false)
  %809 = load i32, ptr %750, align 8, !tbaa !23
  %810 = load i32, ptr %751, align 4, !tbaa !24
  %811 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %809, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %810, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %808
  %814 = load ptr, ptr %748, align 8, !tbaa !22
  tail call void @free(ptr noundef %814) #14
  %815 = load ptr, ptr %744, align 8, !tbaa !20
  tail call void @free(ptr noundef %815) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %915

816:                                              ; preds = %808
  store ptr null, ptr %6, align 8, !tbaa !25
  %817 = load i32, ptr %746, align 8, !tbaa !21
  %818 = load i32, ptr %747, align 4, !tbaa !19
  store i32 %818, ptr %341, align 8, !tbaa !18
  %819 = icmp eq i32 %817, 0
  br i1 %819, label %820, label %825

820:                                              ; preds = %816
  store i32 %818, ptr %754, align 8, !tbaa !26
  %821 = load ptr, ptr %748, align 8, !tbaa !22
  store ptr %821, ptr %755, align 8, !tbaa !27
  store ptr %821, ptr %756, align 8, !tbaa !28
  br label %855

822:                                              ; preds = %788
  %823 = load i32, ptr %746, align 8, !tbaa !21
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %855, label %825

825:                                              ; preds = %822, %816, %802
  %826 = load i32, ptr %742, align 8, !tbaa !30
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %861, label %828

828:                                              ; preds = %825
  %829 = tail call ptr @__errno_location() #16
  %830 = load ptr, ptr %6, align 8, !tbaa !25
  br label %831

831:                                              ; preds = %848, %828
  %832 = phi ptr [ %830, %828 ], [ %853, %848 ]
  store i32 0, ptr %829, align 4, !tbaa !4
  store i32 0, ptr %752, align 4, !tbaa !17
  %833 = load i32, ptr %742, align 8, !tbaa !30
  %834 = tail call i32 @llvm.umin.i32(i32 %833, i32 1073741824)
  %835 = zext nneg i32 %834 to i64
  %836 = load i32, ptr %753, align 4, !tbaa !31
  %837 = tail call i64 @write(i32 noundef %836, ptr noundef %832, i64 noundef %835) #14
  %838 = trunc i64 %837 to i32
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %848

840:                                              ; preds = %831
  %841 = load i32, ptr %829, align 4, !tbaa !4
  %842 = icmp eq i32 %841, 11
  br i1 %842, label %843, label %845

843:                                              ; preds = %840
  store i32 1, ptr %752, align 4, !tbaa !17
  %844 = load i32, ptr %829, align 4, !tbaa !4
  br label %845

845:                                              ; preds = %843, %840
  %846 = phi i32 [ %841, %840 ], [ %844, %843 ]
  %847 = tail call ptr @strerror(i32 noundef %846) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %847) #14
  br label %915

848:                                              ; preds = %831
  %849 = load i32, ptr %742, align 8, !tbaa !30
  %850 = sub i32 %849, %838
  store i32 %850, ptr %742, align 8, !tbaa !30
  %851 = load ptr, ptr %6, align 8, !tbaa !25
  %852 = and i64 %837, 2147483647
  %853 = getelementptr inbounds nuw i8, ptr %851, i64 %852
  store ptr %853, ptr %6, align 8, !tbaa !25
  %854 = icmp eq i32 %849, %838
  br i1 %854, label %861, label %831, !llvm.loop !32

855:                                              ; preds = %822, %820
  %856 = load i32, ptr %757, align 8, !tbaa !34
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %864, label %858

858:                                              ; preds = %855
  %859 = load i32, ptr %742, align 8, !tbaa !30
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %862

861:                                              ; preds = %848, %912, %858, %825
  br label %758

862:                                              ; preds = %858
  %863 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %757, align 8, !tbaa !34
  br label %864

864:                                              ; preds = %862, %855
  %865 = load i32, ptr %754, align 8, !tbaa !26
  br label %866

866:                                              ; preds = %912, %864
  %867 = phi i32 [ %865, %864 ], [ %913, %912 ]
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %907

869:                                              ; preds = %866
  %870 = load ptr, ptr %755, align 8, !tbaa !27
  %871 = load ptr, ptr %756, align 8, !tbaa !28
  %872 = icmp ugt ptr %870, %871
  br i1 %872, label %873, label %904

873:                                              ; preds = %869
  %874 = tail call ptr @__errno_location() #16
  br label %875

875:                                              ; preds = %895, %873
  %876 = phi ptr [ %871, %873 ], [ %898, %895 ]
  %877 = phi ptr [ %870, %873 ], [ %899, %895 ]
  store i32 0, ptr %874, align 4, !tbaa !4
  store i32 0, ptr %752, align 4, !tbaa !17
  %878 = ptrtoint ptr %877 to i64
  %879 = ptrtoint ptr %876 to i64
  %880 = sub i64 %878, %879
  %881 = tail call i64 @llvm.smin.i64(i64 %880, i64 1073741824)
  %882 = and i64 %881, 4294967295
  %883 = load i32, ptr %753, align 4, !tbaa !31
  %884 = tail call i64 @write(i32 noundef %883, ptr noundef %876, i64 noundef %882) #14
  %885 = and i64 %884, 2147483648
  %886 = icmp eq i64 %885, 0
  br i1 %886, label %895, label %887

887:                                              ; preds = %875
  %888 = load i32, ptr %874, align 4, !tbaa !4
  %889 = icmp eq i32 %888, 11
  br i1 %889, label %890, label %892

890:                                              ; preds = %887
  store i32 1, ptr %752, align 4, !tbaa !17
  %891 = load i32, ptr %874, align 4, !tbaa !4
  br label %892

892:                                              ; preds = %890, %887
  %893 = phi i32 [ %888, %887 ], [ %891, %890 ]
  %894 = tail call ptr @strerror(i32 noundef %893) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %894) #14
  br label %915

895:                                              ; preds = %875
  %896 = load ptr, ptr %756, align 8, !tbaa !28
  %897 = and i64 %884, 2147483647
  %898 = getelementptr inbounds nuw i8, ptr %896, i64 %897
  store ptr %898, ptr %756, align 8, !tbaa !28
  %899 = load ptr, ptr %755, align 8, !tbaa !27
  %900 = icmp ugt ptr %899, %898
  br i1 %900, label %875, label %901, !llvm.loop !35

901:                                              ; preds = %895
  %902 = load i32, ptr %754, align 8, !tbaa !26
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %907

904:                                              ; preds = %901, %869
  %905 = load i32, ptr %341, align 8, !tbaa !18
  store i32 %905, ptr %754, align 8, !tbaa !26
  %906 = load ptr, ptr %748, align 8, !tbaa !22
  store ptr %906, ptr %755, align 8, !tbaa !27
  store ptr %906, ptr %756, align 8, !tbaa !28
  br label %907

907:                                              ; preds = %904, %901, %866
  %908 = phi i32 [ %902, %901 ], [ %905, %904 ], [ %867, %866 ]
  %909 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %910 = icmp eq i32 %909, -2
  br i1 %910, label %911, label %912

911:                                              ; preds = %907
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %915

912:                                              ; preds = %907
  %913 = load i32, ptr %754, align 8, !tbaa !26
  %914 = icmp eq i32 %908, %913
  br i1 %914, label %861, label %866, !llvm.loop !36

915:                                              ; preds = %911, %892, %845, %813, %807, %797
  %916 = load i32, ptr %752, align 4, !tbaa !17
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1238, label %1232

918:                                              ; preds = %739
  %919 = load i32, ptr %742, align 8, !tbaa !39
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %1066, label %921

921:                                              ; preds = %918
  %922 = icmp eq i32 %740, 0
  br i1 %922, label %923, label %964

923:                                              ; preds = %921
  %924 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %925 = load i32, ptr %924, align 4, !tbaa !19
  %926 = shl i32 %925, 1
  %927 = zext i32 %926 to i64
  %928 = tail call noalias ptr @malloc(i64 noundef %927) #15
  %929 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %928, ptr %929, align 8, !tbaa !20
  %930 = icmp eq ptr %928, null
  br i1 %930, label %931, label %932

931:                                              ; preds = %923
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

932:                                              ; preds = %923
  %933 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %934 = load i32, ptr %933, align 8, !tbaa !21
  %935 = icmp eq i32 %934, 0
  %936 = load i32, ptr %924, align 4, !tbaa !19
  br i1 %935, label %938, label %937

937:                                              ; preds = %932
  store i32 %936, ptr %341, align 8, !tbaa !18
  br label %968

938:                                              ; preds = %932
  %939 = zext i32 %936 to i64
  %940 = tail call noalias ptr @malloc(i64 noundef %939) #15
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %940, ptr %941, align 8, !tbaa !22
  %942 = icmp eq ptr %940, null
  br i1 %942, label %943, label %944

943:                                              ; preds = %938
  tail call void @free(ptr noundef nonnull %928) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

944:                                              ; preds = %938
  %945 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %946 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %945, i8 0, i64 24, i1 false)
  %947 = load i32, ptr %946, align 8, !tbaa !23
  %948 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %949 = load i32, ptr %948, align 4, !tbaa !24
  %950 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %947, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %949, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %955, label %952

952:                                              ; preds = %944
  %953 = load ptr, ptr %941, align 8, !tbaa !22
  tail call void @free(ptr noundef %953) #14
  %954 = load ptr, ptr %929, align 8, !tbaa !20
  tail call void @free(ptr noundef %954) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1238

955:                                              ; preds = %944
  store ptr null, ptr %6, align 8, !tbaa !25
  %956 = load i32, ptr %933, align 8, !tbaa !21
  %957 = load i32, ptr %924, align 4, !tbaa !19
  store i32 %957, ptr %341, align 8, !tbaa !18
  %958 = icmp eq i32 %956, 0
  br i1 %958, label %959, label %968

959:                                              ; preds = %955
  %960 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %957, ptr %960, align 8, !tbaa !26
  %961 = load ptr, ptr %941, align 8, !tbaa !22
  %962 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %961, ptr %962, align 8, !tbaa !27
  %963 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %961, ptr %963, align 8, !tbaa !28
  br label %1000

964:                                              ; preds = %921
  %965 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %966 = load i32, ptr %965, align 8, !tbaa !21
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1000, label %968

968:                                              ; preds = %964, %955, %937
  %969 = load i32, ptr %742, align 8, !tbaa !30
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %1066, label %971

971:                                              ; preds = %968
  %972 = tail call ptr @__errno_location() #16
  %973 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %974 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %975 = load ptr, ptr %6, align 8, !tbaa !25
  br label %976

976:                                              ; preds = %993, %971
  %977 = phi ptr [ %975, %971 ], [ %998, %993 ]
  store i32 0, ptr %972, align 4, !tbaa !4
  store i32 0, ptr %973, align 4, !tbaa !17
  %978 = load i32, ptr %742, align 8, !tbaa !30
  %979 = tail call i32 @llvm.umin.i32(i32 %978, i32 1073741824)
  %980 = zext nneg i32 %979 to i64
  %981 = load i32, ptr %974, align 4, !tbaa !31
  %982 = tail call i64 @write(i32 noundef %981, ptr noundef %977, i64 noundef %980) #14
  %983 = trunc i64 %982 to i32
  %984 = icmp slt i32 %983, 0
  br i1 %984, label %985, label %993

985:                                              ; preds = %976
  %986 = load i32, ptr %972, align 4, !tbaa !4
  %987 = icmp eq i32 %986, 11
  br i1 %987, label %988, label %990

988:                                              ; preds = %985
  store i32 1, ptr %973, align 4, !tbaa !17
  %989 = load i32, ptr %972, align 4, !tbaa !4
  br label %990

990:                                              ; preds = %988, %985
  %991 = phi i32 [ %986, %985 ], [ %989, %988 ]
  %992 = tail call ptr @strerror(i32 noundef %991) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %992) #14
  br label %1238

993:                                              ; preds = %976
  %994 = load i32, ptr %742, align 8, !tbaa !30
  %995 = sub i32 %994, %983
  store i32 %995, ptr %742, align 8, !tbaa !30
  %996 = load ptr, ptr %6, align 8, !tbaa !25
  %997 = and i64 %982, 2147483647
  %998 = getelementptr inbounds nuw i8, ptr %996, i64 %997
  store ptr %998, ptr %6, align 8, !tbaa !25
  %999 = icmp eq i32 %994, %983
  br i1 %999, label %1066, label %976, !llvm.loop !32

1000:                                             ; preds = %964, %959
  %1001 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1002 = load i32, ptr %1001, align 8, !tbaa !34
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1009, label %1004

1004:                                             ; preds = %1000
  %1005 = load i32, ptr %742, align 8, !tbaa !30
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1066, label %1007

1007:                                             ; preds = %1004
  %1008 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %1001, align 8, !tbaa !34
  br label %1009

1009:                                             ; preds = %1007, %1000
  %1010 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1011 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1012 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1013 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1014 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1015 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1016 = load i32, ptr %1010, align 8, !tbaa !26
  br label %1017

1017:                                             ; preds = %1063, %1009
  %1018 = phi i32 [ %1016, %1009 ], [ %1064, %1063 ]
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1058

1020:                                             ; preds = %1017
  %1021 = load ptr, ptr %1011, align 8, !tbaa !27
  %1022 = load ptr, ptr %1012, align 8, !tbaa !28
  %1023 = icmp ugt ptr %1021, %1022
  br i1 %1023, label %1024, label %1055

1024:                                             ; preds = %1020
  %1025 = tail call ptr @__errno_location() #16
  br label %1026

1026:                                             ; preds = %1046, %1024
  %1027 = phi ptr [ %1022, %1024 ], [ %1049, %1046 ]
  %1028 = phi ptr [ %1021, %1024 ], [ %1050, %1046 ]
  store i32 0, ptr %1025, align 4, !tbaa !4
  store i32 0, ptr %1013, align 4, !tbaa !17
  %1029 = ptrtoint ptr %1028 to i64
  %1030 = ptrtoint ptr %1027 to i64
  %1031 = sub i64 %1029, %1030
  %1032 = tail call i64 @llvm.smin.i64(i64 %1031, i64 1073741824)
  %1033 = and i64 %1032, 4294967295
  %1034 = load i32, ptr %1014, align 4, !tbaa !31
  %1035 = tail call i64 @write(i32 noundef %1034, ptr noundef %1027, i64 noundef %1033) #14
  %1036 = and i64 %1035, 2147483648
  %1037 = icmp eq i64 %1036, 0
  br i1 %1037, label %1046, label %1038

1038:                                             ; preds = %1026
  %1039 = load i32, ptr %1025, align 4, !tbaa !4
  %1040 = icmp eq i32 %1039, 11
  br i1 %1040, label %1041, label %1043

1041:                                             ; preds = %1038
  store i32 1, ptr %1013, align 4, !tbaa !17
  %1042 = load i32, ptr %1025, align 4, !tbaa !4
  br label %1043

1043:                                             ; preds = %1041, %1038
  %1044 = phi i32 [ %1039, %1038 ], [ %1042, %1041 ]
  %1045 = tail call ptr @strerror(i32 noundef %1044) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1045) #14
  br label %1238

1046:                                             ; preds = %1026
  %1047 = load ptr, ptr %1012, align 8, !tbaa !28
  %1048 = and i64 %1035, 2147483647
  %1049 = getelementptr inbounds nuw i8, ptr %1047, i64 %1048
  store ptr %1049, ptr %1012, align 8, !tbaa !28
  %1050 = load ptr, ptr %1011, align 8, !tbaa !27
  %1051 = icmp ugt ptr %1050, %1049
  br i1 %1051, label %1026, label %1052, !llvm.loop !35

1052:                                             ; preds = %1046
  %1053 = load i32, ptr %1010, align 8, !tbaa !26
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1055, label %1058

1055:                                             ; preds = %1052, %1020
  %1056 = load i32, ptr %341, align 8, !tbaa !18
  store i32 %1056, ptr %1010, align 8, !tbaa !26
  %1057 = load ptr, ptr %1015, align 8, !tbaa !22
  store ptr %1057, ptr %1011, align 8, !tbaa !27
  store ptr %1057, ptr %1012, align 8, !tbaa !28
  br label %1058

1058:                                             ; preds = %1055, %1052, %1017
  %1059 = phi i32 [ %1053, %1052 ], [ %1056, %1055 ], [ %1018, %1017 ]
  %1060 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %1061 = icmp eq i32 %1060, -2
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1058
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %1238

1063:                                             ; preds = %1058
  %1064 = load i32, ptr %1010, align 8, !tbaa !26
  %1065 = icmp eq i32 %1059, %1064
  br i1 %1065, label %1066, label %1017, !llvm.loop !36

1066:                                             ; preds = %993, %1063, %1004, %968, %918
  store ptr %3, ptr %6, align 8, !tbaa !40
  %1067 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1068 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1069 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1070 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1071 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1072 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1073 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1074 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1076 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1077 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1078 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1079 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1080 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1081

1081:                                             ; preds = %1222, %1066
  %1082 = phi i64 [ 1, %1066 ], [ %1228, %1222 ]
  %1083 = call i64 @llvm.umin.i64(i64 %1082, i64 4294967295)
  %1084 = trunc nuw i64 %1083 to i32
  store i32 %1084, ptr %742, align 8, !tbaa !39
  %1085 = load i32, ptr %341, align 8, !tbaa !18
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1118

1087:                                             ; preds = %1081
  %1088 = load i32, ptr %1068, align 4, !tbaa !19
  %1089 = shl i32 %1088, 1
  %1090 = zext i32 %1089 to i64
  %1091 = call noalias ptr @malloc(i64 noundef %1090) #15
  store ptr %1091, ptr %1069, align 8, !tbaa !20
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1093, label %1094

1093:                                             ; preds = %1087
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1210

1094:                                             ; preds = %1087
  %1095 = load i32, ptr %1067, align 8, !tbaa !21
  %1096 = icmp eq i32 %1095, 0
  %1097 = load i32, ptr %1068, align 4, !tbaa !19
  br i1 %1096, label %1099, label %1098

1098:                                             ; preds = %1094
  store i32 %1097, ptr %341, align 8, !tbaa !18
  br label %1121

1099:                                             ; preds = %1094
  %1100 = zext i32 %1097 to i64
  %1101 = call noalias ptr @malloc(i64 noundef %1100) #15
  store ptr %1101, ptr %1070, align 8, !tbaa !22
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1103, label %1104

1103:                                             ; preds = %1099
  call void @free(ptr noundef nonnull %1091) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1210

1104:                                             ; preds = %1099
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1071, i8 0, i64 24, i1 false)
  %1105 = load i32, ptr %1072, align 8, !tbaa !23
  %1106 = load i32, ptr %1073, align 4, !tbaa !24
  %1107 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1105, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1106, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1112, label %1109

1109:                                             ; preds = %1104
  %1110 = load ptr, ptr %1070, align 8, !tbaa !22
  call void @free(ptr noundef %1110) #14
  %1111 = load ptr, ptr %1069, align 8, !tbaa !20
  call void @free(ptr noundef %1111) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %1210

1112:                                             ; preds = %1104
  store ptr null, ptr %6, align 8, !tbaa !25
  %1113 = load i32, ptr %1067, align 8, !tbaa !21
  %1114 = load i32, ptr %1068, align 4, !tbaa !19
  store i32 %1114, ptr %341, align 8, !tbaa !18
  %1115 = icmp eq i32 %1113, 0
  br i1 %1115, label %1116, label %1121

1116:                                             ; preds = %1112
  store i32 %1114, ptr %1076, align 8, !tbaa !26
  %1117 = load ptr, ptr %1070, align 8, !tbaa !22
  store ptr %1117, ptr %1077, align 8, !tbaa !27
  store ptr %1117, ptr %1078, align 8, !tbaa !28
  br label %1151

1118:                                             ; preds = %1081
  %1119 = load i32, ptr %1067, align 8, !tbaa !21
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1151, label %1121

1121:                                             ; preds = %1118, %1112, %1098
  %1122 = load i32, ptr %742, align 8, !tbaa !30
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1222, label %1124

1124:                                             ; preds = %1121
  %1125 = tail call ptr @__errno_location() #16
  %1126 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1127

1127:                                             ; preds = %1144, %1124
  %1128 = phi ptr [ %1126, %1124 ], [ %1149, %1144 ]
  store i32 0, ptr %1125, align 4, !tbaa !4
  store i32 0, ptr %1074, align 4, !tbaa !17
  %1129 = load i32, ptr %742, align 8, !tbaa !30
  %1130 = call i32 @llvm.umin.i32(i32 %1129, i32 1073741824)
  %1131 = zext nneg i32 %1130 to i64
  %1132 = load i32, ptr %1075, align 4, !tbaa !31
  %1133 = call i64 @write(i32 noundef %1132, ptr noundef %1128, i64 noundef %1131) #14
  %1134 = trunc i64 %1133 to i32
  %1135 = icmp slt i32 %1134, 0
  br i1 %1135, label %1136, label %1144

1136:                                             ; preds = %1127
  %1137 = load i32, ptr %1125, align 4, !tbaa !4
  %1138 = icmp eq i32 %1137, 11
  br i1 %1138, label %1139, label %1141

1139:                                             ; preds = %1136
  store i32 1, ptr %1074, align 4, !tbaa !17
  %1140 = load i32, ptr %1125, align 4, !tbaa !4
  br label %1141

1141:                                             ; preds = %1139, %1136
  %1142 = phi i32 [ %1137, %1136 ], [ %1140, %1139 ]
  %1143 = call ptr @strerror(i32 noundef %1142) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1143) #14
  br label %1210

1144:                                             ; preds = %1127
  %1145 = load i32, ptr %742, align 8, !tbaa !30
  %1146 = sub i32 %1145, %1134
  store i32 %1146, ptr %742, align 8, !tbaa !30
  %1147 = load ptr, ptr %6, align 8, !tbaa !25
  %1148 = and i64 %1133, 2147483647
  %1149 = getelementptr inbounds nuw i8, ptr %1147, i64 %1148
  store ptr %1149, ptr %6, align 8, !tbaa !25
  %1150 = icmp eq i32 %1145, %1134
  br i1 %1150, label %1222, label %1127, !llvm.loop !32

1151:                                             ; preds = %1118, %1116
  %1152 = load i32, ptr %1079, align 8, !tbaa !34
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1159, label %1154

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %742, align 8, !tbaa !30
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1222, label %1157

1157:                                             ; preds = %1154
  %1158 = call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %1079, align 8, !tbaa !34
  br label %1159

1159:                                             ; preds = %1157, %1151
  %1160 = load i32, ptr %1076, align 8, !tbaa !26
  br label %1161

1161:                                             ; preds = %1207, %1159
  %1162 = phi i32 [ %1160, %1159 ], [ %1208, %1207 ]
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1164, label %1202

1164:                                             ; preds = %1161
  %1165 = load ptr, ptr %1077, align 8, !tbaa !27
  %1166 = load ptr, ptr %1078, align 8, !tbaa !28
  %1167 = icmp ugt ptr %1165, %1166
  br i1 %1167, label %1168, label %1199

1168:                                             ; preds = %1164
  %1169 = tail call ptr @__errno_location() #16
  br label %1170

1170:                                             ; preds = %1190, %1168
  %1171 = phi ptr [ %1166, %1168 ], [ %1193, %1190 ]
  %1172 = phi ptr [ %1165, %1168 ], [ %1194, %1190 ]
  store i32 0, ptr %1169, align 4, !tbaa !4
  store i32 0, ptr %1074, align 4, !tbaa !17
  %1173 = ptrtoint ptr %1172 to i64
  %1174 = ptrtoint ptr %1171 to i64
  %1175 = sub i64 %1173, %1174
  %1176 = call i64 @llvm.smin.i64(i64 %1175, i64 1073741824)
  %1177 = and i64 %1176, 4294967295
  %1178 = load i32, ptr %1075, align 4, !tbaa !31
  %1179 = call i64 @write(i32 noundef %1178, ptr noundef %1171, i64 noundef %1177) #14
  %1180 = and i64 %1179, 2147483648
  %1181 = icmp eq i64 %1180, 0
  br i1 %1181, label %1190, label %1182

1182:                                             ; preds = %1170
  %1183 = load i32, ptr %1169, align 4, !tbaa !4
  %1184 = icmp eq i32 %1183, 11
  br i1 %1184, label %1185, label %1187

1185:                                             ; preds = %1182
  store i32 1, ptr %1074, align 4, !tbaa !17
  %1186 = load i32, ptr %1169, align 4, !tbaa !4
  br label %1187

1187:                                             ; preds = %1185, %1182
  %1188 = phi i32 [ %1183, %1182 ], [ %1186, %1185 ]
  %1189 = call ptr @strerror(i32 noundef %1188) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1189) #14
  br label %1210

1190:                                             ; preds = %1170
  %1191 = load ptr, ptr %1078, align 8, !tbaa !28
  %1192 = and i64 %1179, 2147483647
  %1193 = getelementptr inbounds nuw i8, ptr %1191, i64 %1192
  store ptr %1193, ptr %1078, align 8, !tbaa !28
  %1194 = load ptr, ptr %1077, align 8, !tbaa !27
  %1195 = icmp ugt ptr %1194, %1193
  br i1 %1195, label %1170, label %1196, !llvm.loop !35

1196:                                             ; preds = %1190
  %1197 = load i32, ptr %1076, align 8, !tbaa !26
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1202

1199:                                             ; preds = %1196, %1164
  %1200 = load i32, ptr %341, align 8, !tbaa !18
  store i32 %1200, ptr %1076, align 8, !tbaa !26
  %1201 = load ptr, ptr %1070, align 8, !tbaa !22
  store ptr %1201, ptr %1077, align 8, !tbaa !27
  store ptr %1201, ptr %1078, align 8, !tbaa !28
  br label %1202

1202:                                             ; preds = %1199, %1196, %1161
  %1203 = phi i32 [ %1197, %1196 ], [ %1200, %1199 ], [ %1162, %1161 ]
  %1204 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %1205 = icmp eq i32 %1204, -2
  br i1 %1205, label %1206, label %1207

1206:                                             ; preds = %1202
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %1210

1207:                                             ; preds = %1202
  %1208 = load i32, ptr %1076, align 8, !tbaa !26
  %1209 = icmp eq i32 %1203, %1208
  br i1 %1209, label %1220, label %1161, !llvm.loop !36

1210:                                             ; preds = %1206, %1187, %1141, %1109, %1103, %1093
  %1211 = load i32, ptr %742, align 8, !tbaa !39
  %1212 = sub i32 %1084, %1211
  %1213 = zext i32 %1212 to i64
  %1214 = load i64, ptr %1080, align 8, !tbaa !37
  %1215 = add nsw i64 %1214, %1213
  store i64 %1215, ptr %1080, align 8, !tbaa !37
  %1216 = load i32, ptr %1074, align 4, !tbaa !17
  %1217 = icmp eq i32 %1216, 0
  %1218 = sub i64 %1213, %1082
  %1219 = add i64 %1218, 1
  br i1 %1217, label %1238, label %1232

1220:                                             ; preds = %1207
  %1221 = load i32, ptr %742, align 8, !tbaa !39
  br label %1222

1222:                                             ; preds = %1144, %1220, %1154, %1121
  %1223 = phi i32 [ 0, %1121 ], [ %1221, %1220 ], [ 0, %1154 ], [ 0, %1144 ]
  %1224 = sub i32 %1084, %1223
  %1225 = zext i32 %1224 to i64
  %1226 = load i64, ptr %1080, align 8, !tbaa !37
  %1227 = add nsw i64 %1226, %1225
  store i64 %1227, ptr %1080, align 8, !tbaa !37
  %1228 = sub i64 %1082, %1225
  %1229 = icmp eq i64 %1228, 0
  br i1 %1229, label %1230, label %1081, !llvm.loop !41

1230:                                             ; preds = %1222, %767
  %1231 = and i32 %1, 255
  br label %1238

1232:                                             ; preds = %915, %1210
  %1233 = phi i64 [ %1219, %1210 ], [ 0, %915 ]
  %1234 = freeze i64 %1233
  %1235 = icmp eq i64 %1234, 1
  %1236 = and i32 %1, 255
  %1237 = select i1 %1235, i32 %1236, i32 -1
  br label %1238

1238:                                             ; preds = %329, %726, %1232, %915, %1210, %931, %1062, %1043, %943, %990, %567, %548, %448, %495, %457, %436, %406, %385, %397, %952, %169, %150, %50, %97, %59, %38, %1230, %5, %14, %2, %366
  %1239 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %374, %366 ], [ -1, %915 ], [ -1, %726 ], [ %1237, %1232 ], [ %1231, %1230 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %150 ], [ -1, %169 ], [ -1, %1210 ], [ -1, %952 ], [ -1, %397 ], [ -1, %385 ], [ -1, %406 ], [ -1, %436 ], [ -1, %457 ], [ -1, %495 ], [ -1, %448 ], [ -1, %548 ], [ -1, %567 ], [ -1, %990 ], [ -1, %943 ], [ -1, %1043 ], [ -1, %1062 ], [ -1, %931 ], [ -1, %329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %1239
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %897, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %897

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %897, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #14
  br label %897

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %890, label %22

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
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %32, ptr %33, align 8, !tbaa !20
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #15
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %44, ptr %45, align 8, !tbaa !22
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %32) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

48:                                               ; preds = %42
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = tail call i32 @deflateInit2_(ptr noundef nonnull %27, i32 noundef %51, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %53, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !22
  tail call void @free(ptr noundef %57) #14
  %58 = load ptr, ptr %33, align 8, !tbaa !20
  tail call void @free(ptr noundef %58) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  br i1 %72, label %391, label %73

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
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #15
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %85, ptr %86, align 8, !tbaa !20
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #15
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %97, ptr %98, align 8, !tbaa !22
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  tail call void @free(ptr noundef nonnull %85) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

101:                                              ; preds = %95
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  %104 = load i32, ptr %103, align 8, !tbaa !23
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %104, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %106, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %98, align 8, !tbaa !22
  tail call void @free(ptr noundef %110) #14
  %111 = load ptr, ptr %86, align 8, !tbaa !20
  tail call void @free(ptr noundef %111) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

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
  %129 = tail call ptr @__errno_location() #16
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
  %139 = tail call i64 @write(i32 noundef %138, ptr noundef %134, i64 noundef %137) #14
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
  %149 = tail call ptr @strerror(i32 noundef %148) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %149) #14
  br label %890

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
  %165 = tail call i32 @deflateReset(ptr noundef nonnull %74) #14
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
  %182 = tail call ptr @__errno_location() #16
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
  %192 = tail call i64 @write(i32 noundef %191, ptr noundef %184, i64 noundef %190) #14
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
  %202 = tail call ptr @strerror(i32 noundef %201) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %202) #14
  br label %890

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
  %217 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #14
  %218 = icmp eq i32 %217, -2
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %890

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

239:                                              ; preds = %387, %223
  %240 = phi i64 [ %238, %223 ], [ %386, %387 ]
  %241 = phi i1 [ false, %223 ], [ true, %387 ]
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
  %259 = tail call noalias ptr @malloc(i64 noundef %258) #15
  store ptr %259, ptr %224, align 8, !tbaa !20
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %269 = tail call noalias ptr @malloc(i64 noundef %268) #15
  store ptr %269, ptr %227, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  tail call void @free(ptr noundef nonnull %259) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %378

272:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %228, i8 0, i64 24, i1 false)
  %273 = load i32, ptr %229, align 8, !tbaa !23
  %274 = load i32, ptr %230, align 4, !tbaa !24
  %275 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %273, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %274, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %227, align 8, !tbaa !22
  tail call void @free(ptr noundef %278) #14
  %279 = load ptr, ptr %224, align 8, !tbaa !20
  tail call void @free(ptr noundef %279) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %294 = tail call ptr @__errno_location() #16
  br label %295

295:                                              ; preds = %312, %293
  %296 = phi ptr [ %290, %293 ], [ %317, %312 ]
  store i32 0, ptr %294, align 4, !tbaa !4
  store i32 0, ptr %231, align 4, !tbaa !17
  %297 = load i32, ptr %75, align 8, !tbaa !30
  %298 = tail call i32 @llvm.umin.i32(i32 %297, i32 1073741824)
  %299 = zext nneg i32 %298 to i64
  %300 = load i32, ptr %232, align 4, !tbaa !31
  %301 = tail call i64 @write(i32 noundef %300, ptr noundef %296, i64 noundef %299) #14
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
  %311 = tail call ptr @strerror(i32 noundef %310) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %311) #14
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
  %326 = tail call i32 @deflateReset(ptr noundef nonnull %74) #14
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
  %337 = tail call ptr @__errno_location() #16
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
  %347 = tail call i64 @write(i32 noundef %346, ptr noundef %339, i64 noundef %345) #14
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
  %357 = tail call ptr @strerror(i32 noundef %356) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %357) #14
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
  %372 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #14
  %373 = icmp eq i32 %372, -2
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %384 = add nsw i64 %383, %382
  store i64 %384, ptr %237, align 8, !tbaa !37
  %385 = load i64, ptr %70, align 8, !tbaa !29
  %386 = sub nsw i64 %385, %382
  store i64 %386, ptr %70, align 8, !tbaa !29
  br i1 %379, label %890, label %387

387:                                              ; preds = %378
  %388 = icmp eq i64 %385, %382
  br i1 %388, label %389, label %239, !llvm.loop !38

389:                                              ; preds = %387
  %390 = load i32, ptr %23, align 8, !tbaa !18
  br label %391

391:                                              ; preds = %389, %68
  %392 = phi i32 [ %390, %389 ], [ %69, %68 ]
  %393 = zext i32 %392 to i64
  %394 = icmp ult i64 %17, %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %394, label %397, label %577

397:                                              ; preds = %391
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %412

412:                                              ; preds = %518, %397
  %413 = phi i64 [ %17, %397 ], [ %443, %518 ]
  %414 = phi ptr [ %1, %397 ], [ %442, %518 ]
  %415 = load i32, ptr %396, align 8, !tbaa !39
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %412
  %418 = load ptr, ptr %395, align 8, !tbaa !40
  %419 = load ptr, ptr %398, align 8, !tbaa !20
  br label %422

420:                                              ; preds = %412
  %421 = load ptr, ptr %398, align 8, !tbaa !20
  store ptr %421, ptr %395, align 8, !tbaa !40
  br label %422

422:                                              ; preds = %420, %417
  %423 = phi ptr [ %419, %417 ], [ %421, %420 ]
  %424 = phi ptr [ %418, %417 ], [ %421, %420 ]
  %425 = zext i32 %415 to i64
  %426 = getelementptr inbounds nuw i8, ptr %424, i64 %425
  %427 = ptrtoint ptr %426 to i64
  %428 = ptrtoint ptr %423 to i64
  %429 = sub i64 %427, %428
  %430 = trunc i64 %429 to i32
  %431 = load i32, ptr %23, align 8, !tbaa !18
  %432 = sub i32 %431, %430
  %433 = zext i32 %432 to i64
  %434 = tail call i64 @llvm.umin.i64(i64 %413, i64 %433)
  %435 = trunc nuw i64 %434 to i32
  %436 = and i64 %429, 4294967295
  %437 = getelementptr inbounds nuw i8, ptr %423, i64 %436
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %437, ptr align 1 %414, i64 %434, i1 false)
  %438 = load i32, ptr %396, align 8, !tbaa !39
  %439 = add i32 %438, %435
  store i32 %439, ptr %396, align 8, !tbaa !39
  %440 = load i64, ptr %399, align 8, !tbaa !37
  %441 = add nsw i64 %434, %440
  store i64 %441, ptr %399, align 8, !tbaa !37
  %442 = getelementptr inbounds nuw i8, ptr %414, i64 %434
  %443 = sub i64 %413, %434
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %890, label %445

445:                                              ; preds = %422
  %446 = load i32, ptr %23, align 8, !tbaa !18
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %479

448:                                              ; preds = %445
  %449 = load i32, ptr %401, align 4, !tbaa !19
  %450 = shl i32 %449, 1
  %451 = zext i32 %450 to i64
  %452 = tail call noalias ptr @malloc(i64 noundef %451) #15
  store ptr %452, ptr %398, align 8, !tbaa !20
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %455

454:                                              ; preds = %448
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

455:                                              ; preds = %448
  %456 = load i32, ptr %400, align 8, !tbaa !21
  %457 = icmp eq i32 %456, 0
  %458 = load i32, ptr %401, align 4, !tbaa !19
  br i1 %457, label %460, label %459

459:                                              ; preds = %455
  store i32 %458, ptr %23, align 8, !tbaa !18
  br label %482

460:                                              ; preds = %455
  %461 = zext i32 %458 to i64
  %462 = tail call noalias ptr @malloc(i64 noundef %461) #15
  store ptr %462, ptr %402, align 8, !tbaa !22
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %465

464:                                              ; preds = %460
  tail call void @free(ptr noundef nonnull %452) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

465:                                              ; preds = %460
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %403, i8 0, i64 24, i1 false)
  %466 = load i32, ptr %404, align 8, !tbaa !23
  %467 = load i32, ptr %405, align 4, !tbaa !24
  %468 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %466, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %467, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %465
  %471 = load ptr, ptr %402, align 8, !tbaa !22
  tail call void @free(ptr noundef %471) #14
  %472 = load ptr, ptr %398, align 8, !tbaa !20
  tail call void @free(ptr noundef %472) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %572

473:                                              ; preds = %465
  store ptr null, ptr %395, align 8, !tbaa !25
  %474 = load i32, ptr %400, align 8, !tbaa !21
  %475 = load i32, ptr %401, align 4, !tbaa !19
  store i32 %475, ptr %23, align 8, !tbaa !18
  %476 = icmp eq i32 %474, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %473
  store i32 %475, ptr %408, align 8, !tbaa !26
  %478 = load ptr, ptr %402, align 8, !tbaa !22
  store ptr %478, ptr %409, align 8, !tbaa !27
  store ptr %478, ptr %410, align 8, !tbaa !28
  br label %512

479:                                              ; preds = %445
  %480 = load i32, ptr %400, align 8, !tbaa !21
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %512, label %482

482:                                              ; preds = %479, %473, %459
  %483 = load i32, ptr %396, align 8, !tbaa !30
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %518, label %485

485:                                              ; preds = %482
  %486 = tail call ptr @__errno_location() #16
  %487 = load ptr, ptr %395, align 8, !tbaa !25
  br label %488

488:                                              ; preds = %505, %485
  %489 = phi ptr [ %487, %485 ], [ %510, %505 ]
  store i32 0, ptr %486, align 4, !tbaa !4
  store i32 0, ptr %406, align 4, !tbaa !17
  %490 = load i32, ptr %396, align 8, !tbaa !30
  %491 = tail call i32 @llvm.umin.i32(i32 %490, i32 1073741824)
  %492 = zext nneg i32 %491 to i64
  %493 = load i32, ptr %407, align 4, !tbaa !31
  %494 = tail call i64 @write(i32 noundef %493, ptr noundef %489, i64 noundef %492) #14
  %495 = trunc i64 %494 to i32
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %488
  %498 = load i32, ptr %486, align 4, !tbaa !4
  %499 = icmp eq i32 %498, 11
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  store i32 1, ptr %406, align 4, !tbaa !17
  %501 = load i32, ptr %486, align 4, !tbaa !4
  br label %502

502:                                              ; preds = %500, %497
  %503 = phi i32 [ %498, %497 ], [ %501, %500 ]
  %504 = tail call ptr @strerror(i32 noundef %503) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %504) #14
  br label %572

505:                                              ; preds = %488
  %506 = load i32, ptr %396, align 8, !tbaa !30
  %507 = sub i32 %506, %495
  store i32 %507, ptr %396, align 8, !tbaa !30
  %508 = load ptr, ptr %395, align 8, !tbaa !25
  %509 = and i64 %494, 2147483647
  %510 = getelementptr inbounds nuw i8, ptr %508, i64 %509
  store ptr %510, ptr %395, align 8, !tbaa !25
  %511 = icmp eq i32 %506, %495
  br i1 %511, label %518, label %488, !llvm.loop !32

512:                                              ; preds = %479, %477
  %513 = load i32, ptr %411, align 8, !tbaa !34
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %521, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %396, align 8, !tbaa !30
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %505, %569, %515, %482
  br label %412

519:                                              ; preds = %515
  %520 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %411, align 8, !tbaa !34
  br label %521

521:                                              ; preds = %519, %512
  %522 = load i32, ptr %408, align 8, !tbaa !26
  br label %523

523:                                              ; preds = %569, %521
  %524 = phi i32 [ %522, %521 ], [ %570, %569 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %564

526:                                              ; preds = %523
  %527 = load ptr, ptr %409, align 8, !tbaa !27
  %528 = load ptr, ptr %410, align 8, !tbaa !28
  %529 = icmp ugt ptr %527, %528
  br i1 %529, label %530, label %561

530:                                              ; preds = %526
  %531 = tail call ptr @__errno_location() #16
  br label %532

532:                                              ; preds = %552, %530
  %533 = phi ptr [ %528, %530 ], [ %555, %552 ]
  %534 = phi ptr [ %527, %530 ], [ %556, %552 ]
  store i32 0, ptr %531, align 4, !tbaa !4
  store i32 0, ptr %406, align 4, !tbaa !17
  %535 = ptrtoint ptr %534 to i64
  %536 = ptrtoint ptr %533 to i64
  %537 = sub i64 %535, %536
  %538 = tail call i64 @llvm.smin.i64(i64 %537, i64 1073741824)
  %539 = and i64 %538, 4294967295
  %540 = load i32, ptr %407, align 4, !tbaa !31
  %541 = tail call i64 @write(i32 noundef %540, ptr noundef %533, i64 noundef %539) #14
  %542 = and i64 %541, 2147483648
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %552, label %544

544:                                              ; preds = %532
  %545 = load i32, ptr %531, align 4, !tbaa !4
  %546 = icmp eq i32 %545, 11
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  store i32 1, ptr %406, align 4, !tbaa !17
  %548 = load i32, ptr %531, align 4, !tbaa !4
  br label %549

549:                                              ; preds = %547, %544
  %550 = phi i32 [ %545, %544 ], [ %548, %547 ]
  %551 = tail call ptr @strerror(i32 noundef %550) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %551) #14
  br label %572

552:                                              ; preds = %532
  %553 = load ptr, ptr %410, align 8, !tbaa !28
  %554 = and i64 %541, 2147483647
  %555 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  store ptr %555, ptr %410, align 8, !tbaa !28
  %556 = load ptr, ptr %409, align 8, !tbaa !27
  %557 = icmp ugt ptr %556, %555
  br i1 %557, label %532, label %558, !llvm.loop !35

558:                                              ; preds = %552
  %559 = load i32, ptr %408, align 8, !tbaa !26
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558, %526
  %562 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %562, ptr %408, align 8, !tbaa !26
  %563 = load ptr, ptr %402, align 8, !tbaa !22
  store ptr %563, ptr %409, align 8, !tbaa !27
  store ptr %563, ptr %410, align 8, !tbaa !28
  br label %564

564:                                              ; preds = %561, %558, %523
  %565 = phi i32 [ %559, %558 ], [ %562, %561 ], [ %524, %523 ]
  %566 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %567 = icmp eq i32 %566, -2
  br i1 %567, label %568, label %569

568:                                              ; preds = %564
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %572

569:                                              ; preds = %564
  %570 = load i32, ptr %408, align 8, !tbaa !26
  %571 = icmp eq i32 %565, %570
  br i1 %571, label %518, label %523, !llvm.loop !36

572:                                              ; preds = %568, %549, %502, %470, %464, %454
  %573 = load i32, ptr %406, align 4, !tbaa !17
  %574 = icmp eq i32 %573, 0
  %575 = sub i64 %17, %443
  %576 = select i1 %574, i64 0, i64 %575
  br label %890

577:                                              ; preds = %391
  %578 = load i32, ptr %396, align 8, !tbaa !39
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %725, label %580

580:                                              ; preds = %577
  %581 = icmp eq i32 %392, 0
  br i1 %581, label %582, label %623

582:                                              ; preds = %580
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %584 = load i32, ptr %583, align 4, !tbaa !19
  %585 = shl i32 %584, 1
  %586 = zext i32 %585 to i64
  %587 = tail call noalias ptr @malloc(i64 noundef %586) #15
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %587, ptr %588, align 8, !tbaa !20
  %589 = icmp eq ptr %587, null
  br i1 %589, label %590, label %591

590:                                              ; preds = %582
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

591:                                              ; preds = %582
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %593 = load i32, ptr %592, align 8, !tbaa !21
  %594 = icmp eq i32 %593, 0
  %595 = load i32, ptr %583, align 4, !tbaa !19
  br i1 %594, label %597, label %596

596:                                              ; preds = %591
  store i32 %595, ptr %23, align 8, !tbaa !18
  br label %627

597:                                              ; preds = %591
  %598 = zext i32 %595 to i64
  %599 = tail call noalias ptr @malloc(i64 noundef %598) #15
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %599, ptr %600, align 8, !tbaa !22
  %601 = icmp eq ptr %599, null
  br i1 %601, label %602, label %603

602:                                              ; preds = %597
  tail call void @free(ptr noundef nonnull %587) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

603:                                              ; preds = %597
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %604, i8 0, i64 24, i1 false)
  %606 = load i32, ptr %605, align 8, !tbaa !23
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %608 = load i32, ptr %607, align 4, !tbaa !24
  %609 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %606, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %608, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %614, label %611

611:                                              ; preds = %603
  %612 = load ptr, ptr %600, align 8, !tbaa !22
  tail call void @free(ptr noundef %612) #14
  %613 = load ptr, ptr %588, align 8, !tbaa !20
  tail call void @free(ptr noundef %613) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %890

614:                                              ; preds = %603
  store ptr null, ptr %395, align 8, !tbaa !25
  %615 = load i32, ptr %592, align 8, !tbaa !21
  %616 = load i32, ptr %583, align 4, !tbaa !19
  store i32 %616, ptr %23, align 8, !tbaa !18
  %617 = icmp eq i32 %615, 0
  br i1 %617, label %618, label %627

618:                                              ; preds = %614
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %616, ptr %619, align 8, !tbaa !26
  %620 = load ptr, ptr %600, align 8, !tbaa !22
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %620, ptr %621, align 8, !tbaa !27
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %620, ptr %622, align 8, !tbaa !28
  br label %659

623:                                              ; preds = %580
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %625 = load i32, ptr %624, align 8, !tbaa !21
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %659, label %627

627:                                              ; preds = %623, %614, %596
  %628 = load i32, ptr %396, align 8, !tbaa !30
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %725, label %630

630:                                              ; preds = %627
  %631 = tail call ptr @__errno_location() #16
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %634 = load ptr, ptr %395, align 8, !tbaa !25
  br label %635

635:                                              ; preds = %652, %630
  %636 = phi ptr [ %634, %630 ], [ %657, %652 ]
  store i32 0, ptr %631, align 4, !tbaa !4
  store i32 0, ptr %632, align 4, !tbaa !17
  %637 = load i32, ptr %396, align 8, !tbaa !30
  %638 = tail call i32 @llvm.umin.i32(i32 %637, i32 1073741824)
  %639 = zext nneg i32 %638 to i64
  %640 = load i32, ptr %633, align 4, !tbaa !31
  %641 = tail call i64 @write(i32 noundef %640, ptr noundef %636, i64 noundef %639) #14
  %642 = trunc i64 %641 to i32
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %644, label %652

644:                                              ; preds = %635
  %645 = load i32, ptr %631, align 4, !tbaa !4
  %646 = icmp eq i32 %645, 11
  br i1 %646, label %647, label %649

647:                                              ; preds = %644
  store i32 1, ptr %632, align 4, !tbaa !17
  %648 = load i32, ptr %631, align 4, !tbaa !4
  br label %649

649:                                              ; preds = %647, %644
  %650 = phi i32 [ %645, %644 ], [ %648, %647 ]
  %651 = tail call ptr @strerror(i32 noundef %650) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %651) #14
  br label %890

652:                                              ; preds = %635
  %653 = load i32, ptr %396, align 8, !tbaa !30
  %654 = sub i32 %653, %642
  store i32 %654, ptr %396, align 8, !tbaa !30
  %655 = load ptr, ptr %395, align 8, !tbaa !25
  %656 = and i64 %641, 2147483647
  %657 = getelementptr inbounds nuw i8, ptr %655, i64 %656
  store ptr %657, ptr %395, align 8, !tbaa !25
  %658 = icmp eq i32 %653, %642
  br i1 %658, label %725, label %635, !llvm.loop !32

659:                                              ; preds = %623, %618
  %660 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %661 = load i32, ptr %660, align 8, !tbaa !34
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %659
  %664 = load i32, ptr %396, align 8, !tbaa !30
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %725, label %666

666:                                              ; preds = %663
  %667 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %660, align 8, !tbaa !34
  br label %668

668:                                              ; preds = %666, %659
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %675 = load i32, ptr %669, align 8, !tbaa !26
  br label %676

676:                                              ; preds = %722, %668
  %677 = phi i32 [ %675, %668 ], [ %723, %722 ]
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %717

679:                                              ; preds = %676
  %680 = load ptr, ptr %670, align 8, !tbaa !27
  %681 = load ptr, ptr %671, align 8, !tbaa !28
  %682 = icmp ugt ptr %680, %681
  br i1 %682, label %683, label %714

683:                                              ; preds = %679
  %684 = tail call ptr @__errno_location() #16
  br label %685

685:                                              ; preds = %705, %683
  %686 = phi ptr [ %681, %683 ], [ %708, %705 ]
  %687 = phi ptr [ %680, %683 ], [ %709, %705 ]
  store i32 0, ptr %684, align 4, !tbaa !4
  store i32 0, ptr %672, align 4, !tbaa !17
  %688 = ptrtoint ptr %687 to i64
  %689 = ptrtoint ptr %686 to i64
  %690 = sub i64 %688, %689
  %691 = tail call i64 @llvm.smin.i64(i64 %690, i64 1073741824)
  %692 = and i64 %691, 4294967295
  %693 = load i32, ptr %673, align 4, !tbaa !31
  %694 = tail call i64 @write(i32 noundef %693, ptr noundef %686, i64 noundef %692) #14
  %695 = and i64 %694, 2147483648
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %705, label %697

697:                                              ; preds = %685
  %698 = load i32, ptr %684, align 4, !tbaa !4
  %699 = icmp eq i32 %698, 11
  br i1 %699, label %700, label %702

700:                                              ; preds = %697
  store i32 1, ptr %672, align 4, !tbaa !17
  %701 = load i32, ptr %684, align 4, !tbaa !4
  br label %702

702:                                              ; preds = %700, %697
  %703 = phi i32 [ %698, %697 ], [ %701, %700 ]
  %704 = tail call ptr @strerror(i32 noundef %703) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %704) #14
  br label %890

705:                                              ; preds = %685
  %706 = load ptr, ptr %671, align 8, !tbaa !28
  %707 = and i64 %694, 2147483647
  %708 = getelementptr inbounds nuw i8, ptr %706, i64 %707
  store ptr %708, ptr %671, align 8, !tbaa !28
  %709 = load ptr, ptr %670, align 8, !tbaa !27
  %710 = icmp ugt ptr %709, %708
  br i1 %710, label %685, label %711, !llvm.loop !35

711:                                              ; preds = %705
  %712 = load i32, ptr %669, align 8, !tbaa !26
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %717

714:                                              ; preds = %711, %679
  %715 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %715, ptr %669, align 8, !tbaa !26
  %716 = load ptr, ptr %674, align 8, !tbaa !22
  store ptr %716, ptr %670, align 8, !tbaa !27
  store ptr %716, ptr %671, align 8, !tbaa !28
  br label %717

717:                                              ; preds = %714, %711, %676
  %718 = phi i32 [ %712, %711 ], [ %715, %714 ], [ %677, %676 ]
  %719 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %720 = icmp eq i32 %719, -2
  br i1 %720, label %721, label %722

721:                                              ; preds = %717
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %890

722:                                              ; preds = %717
  %723 = load i32, ptr %669, align 8, !tbaa !26
  %724 = icmp eq i32 %718, %723
  br i1 %724, label %725, label %676, !llvm.loop !36

725:                                              ; preds = %652, %722, %663, %627, %577
  store ptr %1, ptr %395, align 8, !tbaa !40
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %730 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %731 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %732 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %736 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %737 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %740

740:                                              ; preds = %882, %725
  %741 = phi i64 [ %17, %725 ], [ %888, %882 ]
  %742 = tail call i64 @llvm.umin.i64(i64 %741, i64 4294967295)
  %743 = trunc nuw i64 %742 to i32
  store i32 %743, ptr %396, align 8, !tbaa !39
  %744 = load i32, ptr %23, align 8, !tbaa !18
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %777

746:                                              ; preds = %740
  %747 = load i32, ptr %727, align 4, !tbaa !19
  %748 = shl i32 %747, 1
  %749 = zext i32 %748 to i64
  %750 = tail call noalias ptr @malloc(i64 noundef %749) #15
  store ptr %750, ptr %728, align 8, !tbaa !20
  %751 = icmp eq ptr %750, null
  br i1 %751, label %752, label %753

752:                                              ; preds = %746
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

753:                                              ; preds = %746
  %754 = load i32, ptr %726, align 8, !tbaa !21
  %755 = icmp eq i32 %754, 0
  %756 = load i32, ptr %727, align 4, !tbaa !19
  br i1 %755, label %758, label %757

757:                                              ; preds = %753
  store i32 %756, ptr %23, align 8, !tbaa !18
  br label %780

758:                                              ; preds = %753
  %759 = zext i32 %756 to i64
  %760 = tail call noalias ptr @malloc(i64 noundef %759) #15
  store ptr %760, ptr %729, align 8, !tbaa !22
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %763

762:                                              ; preds = %758
  tail call void @free(ptr noundef nonnull %750) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

763:                                              ; preds = %758
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %730, i8 0, i64 24, i1 false)
  %764 = load i32, ptr %731, align 8, !tbaa !23
  %765 = load i32, ptr %732, align 4, !tbaa !24
  %766 = tail call i32 @deflateInit2_(ptr noundef nonnull %395, i32 noundef %764, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %765, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %771, label %768

768:                                              ; preds = %763
  %769 = load ptr, ptr %729, align 8, !tbaa !22
  tail call void @free(ptr noundef %769) #14
  %770 = load ptr, ptr %728, align 8, !tbaa !20
  tail call void @free(ptr noundef %770) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %869

771:                                              ; preds = %763
  store ptr null, ptr %395, align 8, !tbaa !25
  %772 = load i32, ptr %726, align 8, !tbaa !21
  %773 = load i32, ptr %727, align 4, !tbaa !19
  store i32 %773, ptr %23, align 8, !tbaa !18
  %774 = icmp eq i32 %772, 0
  br i1 %774, label %775, label %780

775:                                              ; preds = %771
  store i32 %773, ptr %735, align 8, !tbaa !26
  %776 = load ptr, ptr %729, align 8, !tbaa !22
  store ptr %776, ptr %736, align 8, !tbaa !27
  store ptr %776, ptr %737, align 8, !tbaa !28
  br label %810

777:                                              ; preds = %740
  %778 = load i32, ptr %726, align 8, !tbaa !21
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %810, label %780

780:                                              ; preds = %777, %771, %757
  %781 = load i32, ptr %396, align 8, !tbaa !30
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %882, label %783

783:                                              ; preds = %780
  %784 = tail call ptr @__errno_location() #16
  %785 = load ptr, ptr %395, align 8, !tbaa !25
  br label %786

786:                                              ; preds = %803, %783
  %787 = phi ptr [ %785, %783 ], [ %808, %803 ]
  store i32 0, ptr %784, align 4, !tbaa !4
  store i32 0, ptr %733, align 4, !tbaa !17
  %788 = load i32, ptr %396, align 8, !tbaa !30
  %789 = tail call i32 @llvm.umin.i32(i32 %788, i32 1073741824)
  %790 = zext nneg i32 %789 to i64
  %791 = load i32, ptr %734, align 4, !tbaa !31
  %792 = tail call i64 @write(i32 noundef %791, ptr noundef %787, i64 noundef %790) #14
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 0
  br i1 %794, label %795, label %803

795:                                              ; preds = %786
  %796 = load i32, ptr %784, align 4, !tbaa !4
  %797 = icmp eq i32 %796, 11
  br i1 %797, label %798, label %800

798:                                              ; preds = %795
  store i32 1, ptr %733, align 4, !tbaa !17
  %799 = load i32, ptr %784, align 4, !tbaa !4
  br label %800

800:                                              ; preds = %798, %795
  %801 = phi i32 [ %796, %795 ], [ %799, %798 ]
  %802 = tail call ptr @strerror(i32 noundef %801) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %802) #14
  br label %869

803:                                              ; preds = %786
  %804 = load i32, ptr %396, align 8, !tbaa !30
  %805 = sub i32 %804, %793
  store i32 %805, ptr %396, align 8, !tbaa !30
  %806 = load ptr, ptr %395, align 8, !tbaa !25
  %807 = and i64 %792, 2147483647
  %808 = getelementptr inbounds nuw i8, ptr %806, i64 %807
  store ptr %808, ptr %395, align 8, !tbaa !25
  %809 = icmp eq i32 %804, %793
  br i1 %809, label %882, label %786, !llvm.loop !32

810:                                              ; preds = %777, %775
  %811 = load i32, ptr %738, align 8, !tbaa !34
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %818, label %813

813:                                              ; preds = %810
  %814 = load i32, ptr %396, align 8, !tbaa !30
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %882, label %816

816:                                              ; preds = %813
  %817 = tail call i32 @deflateReset(ptr noundef nonnull %395) #14
  store i32 0, ptr %738, align 8, !tbaa !34
  br label %818

818:                                              ; preds = %816, %810
  %819 = load i32, ptr %735, align 8, !tbaa !26
  br label %820

820:                                              ; preds = %866, %818
  %821 = phi i32 [ %819, %818 ], [ %867, %866 ]
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %861

823:                                              ; preds = %820
  %824 = load ptr, ptr %736, align 8, !tbaa !27
  %825 = load ptr, ptr %737, align 8, !tbaa !28
  %826 = icmp ugt ptr %824, %825
  br i1 %826, label %827, label %858

827:                                              ; preds = %823
  %828 = tail call ptr @__errno_location() #16
  br label %829

829:                                              ; preds = %849, %827
  %830 = phi ptr [ %825, %827 ], [ %852, %849 ]
  %831 = phi ptr [ %824, %827 ], [ %853, %849 ]
  store i32 0, ptr %828, align 4, !tbaa !4
  store i32 0, ptr %733, align 4, !tbaa !17
  %832 = ptrtoint ptr %831 to i64
  %833 = ptrtoint ptr %830 to i64
  %834 = sub i64 %832, %833
  %835 = tail call i64 @llvm.smin.i64(i64 %834, i64 1073741824)
  %836 = and i64 %835, 4294967295
  %837 = load i32, ptr %734, align 4, !tbaa !31
  %838 = tail call i64 @write(i32 noundef %837, ptr noundef %830, i64 noundef %836) #14
  %839 = and i64 %838, 2147483648
  %840 = icmp eq i64 %839, 0
  br i1 %840, label %849, label %841

841:                                              ; preds = %829
  %842 = load i32, ptr %828, align 4, !tbaa !4
  %843 = icmp eq i32 %842, 11
  br i1 %843, label %844, label %846

844:                                              ; preds = %841
  store i32 1, ptr %733, align 4, !tbaa !17
  %845 = load i32, ptr %828, align 4, !tbaa !4
  br label %846

846:                                              ; preds = %844, %841
  %847 = phi i32 [ %842, %841 ], [ %845, %844 ]
  %848 = tail call ptr @strerror(i32 noundef %847) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %848) #14
  br label %869

849:                                              ; preds = %829
  %850 = load ptr, ptr %737, align 8, !tbaa !28
  %851 = and i64 %838, 2147483647
  %852 = getelementptr inbounds nuw i8, ptr %850, i64 %851
  store ptr %852, ptr %737, align 8, !tbaa !28
  %853 = load ptr, ptr %736, align 8, !tbaa !27
  %854 = icmp ugt ptr %853, %852
  br i1 %854, label %829, label %855, !llvm.loop !35

855:                                              ; preds = %849
  %856 = load i32, ptr %735, align 8, !tbaa !26
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %861

858:                                              ; preds = %855, %823
  %859 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %859, ptr %735, align 8, !tbaa !26
  %860 = load ptr, ptr %729, align 8, !tbaa !22
  store ptr %860, ptr %736, align 8, !tbaa !27
  store ptr %860, ptr %737, align 8, !tbaa !28
  br label %861

861:                                              ; preds = %858, %855, %820
  %862 = phi i32 [ %856, %855 ], [ %859, %858 ], [ %821, %820 ]
  %863 = tail call i32 @deflate(ptr noundef nonnull %395, i32 noundef 0) #14
  %864 = icmp eq i32 %863, -2
  br i1 %864, label %865, label %866

865:                                              ; preds = %861
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %869

866:                                              ; preds = %861
  %867 = load i32, ptr %735, align 8, !tbaa !26
  %868 = icmp eq i32 %862, %867
  br i1 %868, label %880, label %820, !llvm.loop !36

869:                                              ; preds = %865, %846, %800, %768, %762, %752
  %870 = load i32, ptr %396, align 8, !tbaa !39
  %871 = sub i32 %743, %870
  %872 = zext i32 %871 to i64
  %873 = load i64, ptr %739, align 8, !tbaa !37
  %874 = add nsw i64 %873, %872
  store i64 %874, ptr %739, align 8, !tbaa !37
  %875 = load i32, ptr %733, align 4, !tbaa !17
  %876 = icmp eq i32 %875, 0
  %877 = sub i64 %17, %741
  %878 = add i64 %877, %872
  %879 = select i1 %876, i64 0, i64 %878
  br label %890

880:                                              ; preds = %866
  %881 = load i32, ptr %396, align 8, !tbaa !39
  br label %882

882:                                              ; preds = %803, %880, %813, %780
  %883 = phi i32 [ 0, %780 ], [ %881, %880 ], [ 0, %813 ], [ 0, %803 ]
  %884 = sub i32 %743, %883
  %885 = zext i32 %884 to i64
  %886 = load i64, ptr %739, align 8, !tbaa !37
  %887 = add nsw i64 %886, %885
  store i64 %887, ptr %739, align 8, !tbaa !37
  %888 = sub i64 %741, %885
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %890, label %740, !llvm.loop !41

890:                                              ; preds = %378, %882, %422, %20, %35, %47, %56, %88, %100, %109, %147, %200, %219, %572, %590, %602, %611, %649, %702, %721, %869
  %891 = phi i64 [ %879, %869 ], [ 0, %20 ], [ %17, %882 ], [ %576, %572 ], [ 0, %611 ], [ 0, %47 ], [ %17, %422 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %200 ], [ 0, %219 ], [ 0, %649 ], [ 0, %602 ], [ 0, %702 ], [ 0, %721 ], [ 0, %590 ], [ 0, %378 ]
  %892 = icmp ne i64 %17, 0
  %893 = icmp eq i64 %891, 0
  %894 = select i1 %892, i1 %893, i1 false
  %895 = trunc i64 %891 to i32
  %896 = select i1 %894, i32 -1, i32 %895
  br label %897

897:                                              ; preds = %4, %12, %2, %890, %19
  %898 = phi i32 [ %896, %890 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %898
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %622, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %622

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %622, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #15
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
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #15
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
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #14
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
  tail call void @free(ptr noundef %62) #14
  br label %63

63:                                               ; preds = %61, %22
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %387, label %70

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
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #15
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

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
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #15
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %81) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  tail call void @free(ptr noundef %106) #14
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  tail call void @free(ptr noundef %107) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

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
  %125 = tail call ptr @__errno_location() #16
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
  %135 = tail call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #14
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
  %145 = tail call ptr @strerror(i32 noundef %144) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #14
  br label %385

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
  %161 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %178 = tail call ptr @__errno_location() #16
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
  %188 = tail call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #14
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
  %198 = tail call ptr @strerror(i32 noundef %197) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #14
  br label %385

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
  %213 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %385

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

235:                                              ; preds = %383, %219
  %236 = phi i64 [ %234, %219 ], [ %382, %383 ]
  %237 = phi i1 [ false, %219 ], [ true, %383 ]
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
  %255 = tail call noalias ptr @malloc(i64 noundef %254) #15
  store ptr %255, ptr %220, align 8, !tbaa !20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %265 = tail call noalias ptr @malloc(i64 noundef %264) #15
  store ptr %265, ptr %223, align 8, !tbaa !22
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  tail call void @free(ptr noundef nonnull %255) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %374

268:                                              ; preds = %263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  %269 = load i32, ptr %225, align 8, !tbaa !23
  %270 = load i32, ptr %226, align 4, !tbaa !24
  %271 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %269, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %270, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %223, align 8, !tbaa !22
  tail call void @free(ptr noundef %274) #14
  %275 = load ptr, ptr %220, align 8, !tbaa !20
  tail call void @free(ptr noundef %275) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %290 = tail call ptr @__errno_location() #16
  br label %291

291:                                              ; preds = %308, %289
  %292 = phi ptr [ %286, %289 ], [ %313, %308 ]
  store i32 0, ptr %290, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = tail call i32 @llvm.umin.i32(i32 %293, i32 1073741824)
  %295 = zext nneg i32 %294 to i64
  %296 = load i32, ptr %228, align 4, !tbaa !31
  %297 = tail call i64 @write(i32 noundef %296, ptr noundef %292, i64 noundef %295) #14
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
  %307 = tail call ptr @strerror(i32 noundef %306) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %307) #14
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
  %322 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %333 = tail call ptr @__errno_location() #16
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
  %343 = tail call i64 @write(i32 noundef %342, ptr noundef %335, i64 noundef %341) #14
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
  %353 = tail call ptr @strerror(i32 noundef %352) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %353) #14
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
  %368 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %369 = icmp eq i32 %368, -2
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %380 = add nsw i64 %379, %378
  store i64 %380, ptr %233, align 8, !tbaa !37
  %381 = load i64, ptr %67, align 8, !tbaa !29
  %382 = sub nsw i64 %381, %378
  store i64 %382, ptr %67, align 8, !tbaa !29
  br i1 %375, label %385, label %383

383:                                              ; preds = %374
  %384 = icmp eq i64 %381, %378
  br i1 %384, label %387, label %235, !llvm.loop !38

385:                                              ; preds = %374, %84, %105, %143, %96, %196, %215
  %386 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

387:                                              ; preds = %383, %65
  %388 = load ptr, ptr %6, align 8, !tbaa !25
  %389 = icmp eq ptr %388, null
  br i1 %389, label %558, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %392 = load i32, ptr %391, align 8, !tbaa !30
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds nuw i8, ptr %388, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %396 = load ptr, ptr %395, align 8, !tbaa !20
  %397 = load i32, ptr %19, align 8, !tbaa !18
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds nuw i8, ptr %396, i64 %398
  %400 = icmp ugt ptr %394, %399
  br i1 %400, label %401, label %558

401:                                              ; preds = %390
  %402 = icmp eq i32 %397, 0
  br i1 %402, label %403, label %443

403:                                              ; preds = %401
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %405 = load i32, ptr %404, align 4, !tbaa !19
  %406 = shl i32 %405, 1
  %407 = zext i32 %406 to i64
  %408 = tail call noalias ptr @malloc(i64 noundef %407) #15
  store ptr %408, ptr %395, align 8, !tbaa !20
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

411:                                              ; preds = %403
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %413 = load i32, ptr %412, align 8, !tbaa !21
  %414 = icmp eq i32 %413, 0
  %415 = load i32, ptr %404, align 4, !tbaa !19
  br i1 %414, label %417, label %416

416:                                              ; preds = %411
  store i32 %415, ptr %19, align 8, !tbaa !18
  br label %447

417:                                              ; preds = %411
  %418 = zext i32 %415 to i64
  %419 = tail call noalias ptr @malloc(i64 noundef %418) #15
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %419, ptr %420, align 8, !tbaa !22
  %421 = icmp eq ptr %419, null
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  tail call void @free(ptr noundef nonnull %408) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

423:                                              ; preds = %417
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %424, i8 0, i64 24, i1 false)
  %426 = load i32, ptr %425, align 8, !tbaa !23
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %428 = load i32, ptr %427, align 4, !tbaa !24
  %429 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %426, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %428, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %423
  %432 = load ptr, ptr %420, align 8, !tbaa !22
  tail call void @free(ptr noundef %432) #14
  %433 = load ptr, ptr %395, align 8, !tbaa !20
  tail call void @free(ptr noundef %433) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

434:                                              ; preds = %423
  store ptr null, ptr %6, align 8, !tbaa !25
  %435 = load i32, ptr %412, align 8, !tbaa !21
  %436 = load i32, ptr %404, align 4, !tbaa !19
  store i32 %436, ptr %19, align 8, !tbaa !18
  %437 = icmp eq i32 %435, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %434
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %436, ptr %439, align 8, !tbaa !26
  %440 = load ptr, ptr %420, align 8, !tbaa !22
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %440, ptr %441, align 8, !tbaa !27
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %440, ptr %442, align 8, !tbaa !28
  br label %479

443:                                              ; preds = %401
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %445 = load i32, ptr %444, align 8, !tbaa !21
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %479, label %447

447:                                              ; preds = %443, %434, %416
  %448 = phi ptr [ %388, %443 ], [ null, %434 ], [ %388, %416 ]
  %449 = load i32, ptr %391, align 8, !tbaa !30
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %548, label %451

451:                                              ; preds = %447
  %452 = tail call ptr @__errno_location() #16
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %455

455:                                              ; preds = %472, %451
  %456 = phi ptr [ %448, %451 ], [ %477, %472 ]
  store i32 0, ptr %452, align 4, !tbaa !4
  store i32 0, ptr %453, align 4, !tbaa !17
  %457 = load i32, ptr %391, align 8, !tbaa !30
  %458 = tail call i32 @llvm.umin.i32(i32 %457, i32 1073741824)
  %459 = zext nneg i32 %458 to i64
  %460 = load i32, ptr %454, align 4, !tbaa !31
  %461 = tail call i64 @write(i32 noundef %460, ptr noundef %456, i64 noundef %459) #14
  %462 = trunc i64 %461 to i32
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %455
  %465 = load i32, ptr %452, align 4, !tbaa !4
  %466 = icmp eq i32 %465, 11
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  store i32 1, ptr %453, align 4, !tbaa !17
  %468 = load i32, ptr %452, align 4, !tbaa !4
  br label %469

469:                                              ; preds = %467, %464
  %470 = phi i32 [ %465, %464 ], [ %468, %467 ]
  %471 = tail call ptr @strerror(i32 noundef %470) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %471) #14
  br label %545

472:                                              ; preds = %455
  %473 = load i32, ptr %391, align 8, !tbaa !30
  %474 = sub i32 %473, %462
  store i32 %474, ptr %391, align 8, !tbaa !30
  %475 = load ptr, ptr %6, align 8, !tbaa !25
  %476 = and i64 %461, 2147483647
  %477 = getelementptr inbounds nuw i8, ptr %475, i64 %476
  store ptr %477, ptr %6, align 8, !tbaa !25
  %478 = icmp eq i32 %473, %462
  br i1 %478, label %545, label %455, !llvm.loop !32

479:                                              ; preds = %443, %438
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %481 = load i32, ptr %480, align 8, !tbaa !34
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %488, label %483

483:                                              ; preds = %479
  %484 = load i32, ptr %391, align 8, !tbaa !30
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %548, label %486

486:                                              ; preds = %483
  %487 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %480, align 8, !tbaa !34
  br label %488

488:                                              ; preds = %486, %479
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %495 = load i32, ptr %489, align 8, !tbaa !26
  br label %496

496:                                              ; preds = %542, %488
  %497 = phi i32 [ %495, %488 ], [ %543, %542 ]
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %537

499:                                              ; preds = %496
  %500 = load ptr, ptr %490, align 8, !tbaa !27
  %501 = load ptr, ptr %491, align 8, !tbaa !28
  %502 = icmp ugt ptr %500, %501
  br i1 %502, label %503, label %534

503:                                              ; preds = %499
  %504 = tail call ptr @__errno_location() #16
  br label %505

505:                                              ; preds = %525, %503
  %506 = phi ptr [ %501, %503 ], [ %528, %525 ]
  %507 = phi ptr [ %500, %503 ], [ %529, %525 ]
  store i32 0, ptr %504, align 4, !tbaa !4
  store i32 0, ptr %492, align 4, !tbaa !17
  %508 = ptrtoint ptr %507 to i64
  %509 = ptrtoint ptr %506 to i64
  %510 = sub i64 %508, %509
  %511 = tail call i64 @llvm.smin.i64(i64 %510, i64 1073741824)
  %512 = and i64 %511, 4294967295
  %513 = load i32, ptr %493, align 4, !tbaa !31
  %514 = tail call i64 @write(i32 noundef %513, ptr noundef %506, i64 noundef %512) #14
  %515 = and i64 %514, 2147483648
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %505
  %518 = load i32, ptr %504, align 4, !tbaa !4
  %519 = icmp eq i32 %518, 11
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  store i32 1, ptr %492, align 4, !tbaa !17
  %521 = load i32, ptr %504, align 4, !tbaa !4
  br label %522

522:                                              ; preds = %520, %517
  %523 = phi i32 [ %518, %517 ], [ %521, %520 ]
  %524 = tail call ptr @strerror(i32 noundef %523) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %524) #14
  br label %545

525:                                              ; preds = %505
  %526 = load ptr, ptr %491, align 8, !tbaa !28
  %527 = and i64 %514, 2147483647
  %528 = getelementptr inbounds nuw i8, ptr %526, i64 %527
  store ptr %528, ptr %491, align 8, !tbaa !28
  %529 = load ptr, ptr %490, align 8, !tbaa !27
  %530 = icmp ugt ptr %529, %528
  br i1 %530, label %505, label %531, !llvm.loop !35

531:                                              ; preds = %525
  %532 = load i32, ptr %489, align 8, !tbaa !26
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %531, %499
  %535 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %535, ptr %489, align 8, !tbaa !26
  %536 = load ptr, ptr %494, align 8, !tbaa !22
  store ptr %536, ptr %490, align 8, !tbaa !27
  store ptr %536, ptr %491, align 8, !tbaa !28
  br label %537

537:                                              ; preds = %534, %531, %496
  %538 = phi i32 [ %532, %531 ], [ %535, %534 ], [ %497, %496 ]
  %539 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %540 = icmp eq i32 %539, -2
  br i1 %540, label %541, label %542

541:                                              ; preds = %537
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %545

542:                                              ; preds = %537
  %543 = load i32, ptr %489, align 8, !tbaa !26
  %544 = icmp eq i32 %538, %543
  br i1 %544, label %545, label %496, !llvm.loop !36

545:                                              ; preds = %472, %542, %541, %522, %469, %431, %422, %410
  %546 = load i32, ptr %391, align 8, !tbaa !30
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %545, %483, %447
  %549 = load ptr, ptr %395, align 8, !tbaa !20
  store ptr %549, ptr %6, align 8, !tbaa !25
  br label %558

550:                                              ; preds = %545
  %551 = load ptr, ptr %395, align 8, !tbaa !20
  %552 = load ptr, ptr %6, align 8, !tbaa !25
  %553 = zext i32 %546 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %551, ptr align 1 %552, i64 %553, i1 false)
  %554 = load ptr, ptr %395, align 8, !tbaa !20
  store ptr %554, ptr %6, align 8, !tbaa !25
  %555 = load i32, ptr %391, align 8, !tbaa !30
  %556 = load i32, ptr %19, align 8, !tbaa !18
  %557 = icmp ule i32 %555, %556
  br label %558

558:                                              ; preds = %387, %390, %548, %550
  %559 = phi i1 [ %557, %550 ], [ true, %548 ], [ true, %390 ], [ true, %387 ]
  %560 = load i32, ptr %11, align 8, !tbaa !16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %574, label %562

562:                                              ; preds = %558
  br i1 %559, label %568, label %563

563:                                              ; preds = %562
  %564 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %565 = load i32, ptr %564, align 4, !tbaa !17
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %563
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %568

568:                                              ; preds = %567, %563, %562
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %570 = load i32, ptr %569, align 4, !tbaa !17
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %568
  %573 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

574:                                              ; preds = %568, %558
  %575 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %576 = load i32, ptr %575, align 8, !tbaa !30
  %577 = icmp eq i32 %576, 0
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %579 = load ptr, ptr %578, align 8, !tbaa !20
  br i1 %577, label %582, label %580

580:                                              ; preds = %574
  %581 = load ptr, ptr %6, align 8, !tbaa !25
  br label %583

582:                                              ; preds = %574
  store ptr %579, ptr %6, align 8, !tbaa !25
  br label %583

583:                                              ; preds = %580, %582
  %584 = phi ptr [ %581, %580 ], [ %579, %582 ]
  %585 = ptrtoint ptr %584 to i64
  %586 = ptrtoint ptr %579 to i64
  %587 = sub i64 %585, %586
  %588 = getelementptr inbounds i8, ptr %579, i64 %587
  %589 = zext i32 %576 to i64
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  %591 = load i32, ptr %19, align 8, !tbaa !18
  %592 = add i32 %591, -1
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds nuw i8, ptr %590, i64 %593
  store i8 0, ptr %594, align 1, !tbaa !42
  %595 = load i32, ptr %19, align 8, !tbaa !18
  %596 = zext i32 %595 to i64
  %597 = tail call i32 @vsnprintf(ptr noundef %590, i64 noundef %596, ptr noundef %1, ptr noundef %2) #14
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %622, label %599

599:                                              ; preds = %583
  %600 = load i32, ptr %19, align 8, !tbaa !18
  %601 = icmp ult i32 %597, %600
  br i1 %601, label %602, label %622

602:                                              ; preds = %599
  %603 = add i32 %600, -1
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds nuw i8, ptr %590, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !42
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %622

608:                                              ; preds = %602
  %609 = load i32, ptr %575, align 8, !tbaa !30
  %610 = add i32 %609, %597
  store i32 %610, ptr %575, align 8, !tbaa !30
  %611 = sext i32 %597 to i64
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %613 = load i64, ptr %612, align 8, !tbaa !37
  %614 = add nsw i64 %613, %611
  store i64 %614, ptr %612, align 8, !tbaa !37
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %615 = load i32, ptr %11, align 8, !tbaa !16
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %621, label %617

617:                                              ; preds = %608
  %618 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %619 = load i32, ptr %618, align 4, !tbaa !17
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %617, %608
  br label %622

622:                                              ; preds = %617, %583, %599, %602, %5, %14, %3, %621, %572, %385, %63
  %623 = phi i32 [ %573, %572 ], [ -2, %3 ], [ %64, %63 ], [ %386, %385 ], [ -2, %5 ], [ %597, %621 ], [ 0, %583 ], [ -2, %14 ], [ 0, %602 ], [ 0, %599 ], [ %615, %617 ]
  ret i32 %623
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
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #15
  store ptr %24, ptr %10, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #15
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %35, ptr %36, align 8, !tbaa !22
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %24) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %161

39:                                               ; preds = %33
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %42 = load i32, ptr %41, align 8, !tbaa !23
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %42, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %44, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %36, align 8, !tbaa !22
  tail call void @free(ptr noundef %48) #14
  %49 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void @free(ptr noundef %49) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %68 = tail call ptr @__errno_location() #16
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
  %77 = tail call i64 @write(i32 noundef %76, ptr noundef %72, i64 noundef %75) #14
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
  %87 = tail call ptr @strerror(i32 noundef %86) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %87) #14
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
  %103 = tail call i32 @deflateReset(ptr noundef nonnull %2) #14
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
  %120 = tail call ptr @__errno_location() #16
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
  %130 = tail call i64 @write(i32 noundef %129, ptr noundef %122, i64 noundef %128) #14
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
  %140 = tail call ptr @strerror(i32 noundef %139) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %140) #14
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
  %155 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #14
  %156 = icmp eq i32 %155, -2
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %622, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %622

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %622, label %18

18:                                               ; preds = %14, %10
  call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call noalias ptr @malloc(i64 noundef %26) #15
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
  %38 = call noalias ptr @malloc(i64 noundef %37) #15
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
  %47 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %39, align 8, !tbaa !22
  call void @free(ptr noundef %50) #14
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
  call void @free(ptr noundef %62) #14
  br label %63

63:                                               ; preds = %61, %22
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  %64 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %387, label %70

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
  %81 = call noalias ptr @malloc(i64 noundef %80) #15
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %81, ptr %82, align 8, !tbaa !20
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

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
  %93 = call noalias ptr @malloc(i64 noundef %92) #15
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %93, ptr %94, align 8, !tbaa !22
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  call void @free(ptr noundef nonnull %81) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %100, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %102, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %94, align 8, !tbaa !22
  call void @free(ptr noundef %106) #14
  %107 = load ptr, ptr %82, align 8, !tbaa !20
  call void @free(ptr noundef %107) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %385

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
  %125 = tail call ptr @__errno_location() #16
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
  %135 = call i64 @write(i32 noundef %134, ptr noundef %130, i64 noundef %133) #14
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
  %145 = call ptr @strerror(i32 noundef %144) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #14
  br label %385

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
  %161 = call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %178 = tail call ptr @__errno_location() #16
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
  %188 = call i64 @write(i32 noundef %187, ptr noundef %180, i64 noundef %186) #14
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
  %198 = call ptr @strerror(i32 noundef %197) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %198) #14
  br label %385

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
  %213 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %385

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

235:                                              ; preds = %383, %219
  %236 = phi i64 [ %234, %219 ], [ %382, %383 ]
  %237 = phi i1 [ false, %219 ], [ true, %383 ]
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
  %255 = call noalias ptr @malloc(i64 noundef %254) #15
  store ptr %255, ptr %220, align 8, !tbaa !20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %265 = call noalias ptr @malloc(i64 noundef %264) #15
  store ptr %265, ptr %223, align 8, !tbaa !22
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  call void @free(ptr noundef nonnull %255) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %374

268:                                              ; preds = %263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  %269 = load i32, ptr %225, align 8, !tbaa !23
  %270 = load i32, ptr %226, align 4, !tbaa !24
  %271 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %269, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %270, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %223, align 8, !tbaa !22
  call void @free(ptr noundef %274) #14
  %275 = load ptr, ptr %220, align 8, !tbaa !20
  call void @free(ptr noundef %275) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %290 = tail call ptr @__errno_location() #16
  br label %291

291:                                              ; preds = %308, %289
  %292 = phi ptr [ %286, %289 ], [ %313, %308 ]
  store i32 0, ptr %290, align 4, !tbaa !4
  store i32 0, ptr %227, align 4, !tbaa !17
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = call i32 @llvm.umin.i32(i32 %293, i32 1073741824)
  %295 = zext nneg i32 %294 to i64
  %296 = load i32, ptr %228, align 4, !tbaa !31
  %297 = call i64 @write(i32 noundef %296, ptr noundef %292, i64 noundef %295) #14
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
  %307 = call ptr @strerror(i32 noundef %306) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %307) #14
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
  %322 = call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %333 = tail call ptr @__errno_location() #16
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
  %343 = call i64 @write(i32 noundef %342, ptr noundef %335, i64 noundef %341) #14
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
  %353 = call ptr @strerror(i32 noundef %352) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %353) #14
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
  %368 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %369 = icmp eq i32 %368, -2
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %380 = add nsw i64 %379, %378
  store i64 %380, ptr %233, align 8, !tbaa !37
  %381 = load i64, ptr %67, align 8, !tbaa !29
  %382 = sub nsw i64 %381, %378
  store i64 %382, ptr %67, align 8, !tbaa !29
  br i1 %375, label %385, label %383

383:                                              ; preds = %374
  %384 = icmp eq i64 %381, %378
  br i1 %384, label %387, label %235, !llvm.loop !38

385:                                              ; preds = %374, %215, %196, %143, %105, %96, %84
  %386 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

387:                                              ; preds = %383, %65
  %388 = load ptr, ptr %6, align 8, !tbaa !25
  %389 = icmp eq ptr %388, null
  br i1 %389, label %558, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %392 = load i32, ptr %391, align 8, !tbaa !30
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds nuw i8, ptr %388, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %396 = load ptr, ptr %395, align 8, !tbaa !20
  %397 = load i32, ptr %19, align 8, !tbaa !18
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds nuw i8, ptr %396, i64 %398
  %400 = icmp ugt ptr %394, %399
  br i1 %400, label %401, label %558

401:                                              ; preds = %390
  %402 = icmp eq i32 %397, 0
  br i1 %402, label %403, label %443

403:                                              ; preds = %401
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %405 = load i32, ptr %404, align 4, !tbaa !19
  %406 = shl i32 %405, 1
  %407 = zext i32 %406 to i64
  %408 = call noalias ptr @malloc(i64 noundef %407) #15
  store ptr %408, ptr %395, align 8, !tbaa !20
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

411:                                              ; preds = %403
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %413 = load i32, ptr %412, align 8, !tbaa !21
  %414 = icmp eq i32 %413, 0
  %415 = load i32, ptr %404, align 4, !tbaa !19
  br i1 %414, label %417, label %416

416:                                              ; preds = %411
  store i32 %415, ptr %19, align 8, !tbaa !18
  br label %447

417:                                              ; preds = %411
  %418 = zext i32 %415 to i64
  %419 = call noalias ptr @malloc(i64 noundef %418) #15
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %419, ptr %420, align 8, !tbaa !22
  %421 = icmp eq ptr %419, null
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  call void @free(ptr noundef nonnull %408) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

423:                                              ; preds = %417
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %424, i8 0, i64 24, i1 false)
  %426 = load i32, ptr %425, align 8, !tbaa !23
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %428 = load i32, ptr %427, align 4, !tbaa !24
  %429 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %426, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %428, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %423
  %432 = load ptr, ptr %420, align 8, !tbaa !22
  call void @free(ptr noundef %432) #14
  %433 = load ptr, ptr %395, align 8, !tbaa !20
  call void @free(ptr noundef %433) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %545

434:                                              ; preds = %423
  store ptr null, ptr %6, align 8, !tbaa !25
  %435 = load i32, ptr %412, align 8, !tbaa !21
  %436 = load i32, ptr %404, align 4, !tbaa !19
  store i32 %436, ptr %19, align 8, !tbaa !18
  %437 = icmp eq i32 %435, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %434
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %436, ptr %439, align 8, !tbaa !26
  %440 = load ptr, ptr %420, align 8, !tbaa !22
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %440, ptr %441, align 8, !tbaa !27
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %440, ptr %442, align 8, !tbaa !28
  br label %479

443:                                              ; preds = %401
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %445 = load i32, ptr %444, align 8, !tbaa !21
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %479, label %447

447:                                              ; preds = %443, %434, %416
  %448 = phi ptr [ %388, %443 ], [ null, %434 ], [ %388, %416 ]
  %449 = load i32, ptr %391, align 8, !tbaa !30
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %548, label %451

451:                                              ; preds = %447
  %452 = tail call ptr @__errno_location() #16
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %455

455:                                              ; preds = %472, %451
  %456 = phi ptr [ %448, %451 ], [ %477, %472 ]
  store i32 0, ptr %452, align 4, !tbaa !4
  store i32 0, ptr %453, align 4, !tbaa !17
  %457 = load i32, ptr %391, align 8, !tbaa !30
  %458 = call i32 @llvm.umin.i32(i32 %457, i32 1073741824)
  %459 = zext nneg i32 %458 to i64
  %460 = load i32, ptr %454, align 4, !tbaa !31
  %461 = call i64 @write(i32 noundef %460, ptr noundef %456, i64 noundef %459) #14
  %462 = trunc i64 %461 to i32
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %455
  %465 = load i32, ptr %452, align 4, !tbaa !4
  %466 = icmp eq i32 %465, 11
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  store i32 1, ptr %453, align 4, !tbaa !17
  %468 = load i32, ptr %452, align 4, !tbaa !4
  br label %469

469:                                              ; preds = %467, %464
  %470 = phi i32 [ %465, %464 ], [ %468, %467 ]
  %471 = call ptr @strerror(i32 noundef %470) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %471) #14
  br label %545

472:                                              ; preds = %455
  %473 = load i32, ptr %391, align 8, !tbaa !30
  %474 = sub i32 %473, %462
  store i32 %474, ptr %391, align 8, !tbaa !30
  %475 = load ptr, ptr %6, align 8, !tbaa !25
  %476 = and i64 %461, 2147483647
  %477 = getelementptr inbounds nuw i8, ptr %475, i64 %476
  store ptr %477, ptr %6, align 8, !tbaa !25
  %478 = icmp eq i32 %473, %462
  br i1 %478, label %545, label %455, !llvm.loop !32

479:                                              ; preds = %443, %438
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %481 = load i32, ptr %480, align 8, !tbaa !34
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %488, label %483

483:                                              ; preds = %479
  %484 = load i32, ptr %391, align 8, !tbaa !30
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %548, label %486

486:                                              ; preds = %483
  %487 = call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %480, align 8, !tbaa !34
  br label %488

488:                                              ; preds = %486, %479
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %495 = load i32, ptr %489, align 8, !tbaa !26
  br label %496

496:                                              ; preds = %542, %488
  %497 = phi i32 [ %495, %488 ], [ %543, %542 ]
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %537

499:                                              ; preds = %496
  %500 = load ptr, ptr %490, align 8, !tbaa !27
  %501 = load ptr, ptr %491, align 8, !tbaa !28
  %502 = icmp ugt ptr %500, %501
  br i1 %502, label %503, label %534

503:                                              ; preds = %499
  %504 = tail call ptr @__errno_location() #16
  br label %505

505:                                              ; preds = %525, %503
  %506 = phi ptr [ %501, %503 ], [ %528, %525 ]
  %507 = phi ptr [ %500, %503 ], [ %529, %525 ]
  store i32 0, ptr %504, align 4, !tbaa !4
  store i32 0, ptr %492, align 4, !tbaa !17
  %508 = ptrtoint ptr %507 to i64
  %509 = ptrtoint ptr %506 to i64
  %510 = sub i64 %508, %509
  %511 = call i64 @llvm.smin.i64(i64 %510, i64 1073741824)
  %512 = and i64 %511, 4294967295
  %513 = load i32, ptr %493, align 4, !tbaa !31
  %514 = call i64 @write(i32 noundef %513, ptr noundef %506, i64 noundef %512) #14
  %515 = and i64 %514, 2147483648
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %505
  %518 = load i32, ptr %504, align 4, !tbaa !4
  %519 = icmp eq i32 %518, 11
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  store i32 1, ptr %492, align 4, !tbaa !17
  %521 = load i32, ptr %504, align 4, !tbaa !4
  br label %522

522:                                              ; preds = %520, %517
  %523 = phi i32 [ %518, %517 ], [ %521, %520 ]
  %524 = call ptr @strerror(i32 noundef %523) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %524) #14
  br label %545

525:                                              ; preds = %505
  %526 = load ptr, ptr %491, align 8, !tbaa !28
  %527 = and i64 %514, 2147483647
  %528 = getelementptr inbounds nuw i8, ptr %526, i64 %527
  store ptr %528, ptr %491, align 8, !tbaa !28
  %529 = load ptr, ptr %490, align 8, !tbaa !27
  %530 = icmp ugt ptr %529, %528
  br i1 %530, label %505, label %531, !llvm.loop !35

531:                                              ; preds = %525
  %532 = load i32, ptr %489, align 8, !tbaa !26
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %531, %499
  %535 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %535, ptr %489, align 8, !tbaa !26
  %536 = load ptr, ptr %494, align 8, !tbaa !22
  store ptr %536, ptr %490, align 8, !tbaa !27
  store ptr %536, ptr %491, align 8, !tbaa !28
  br label %537

537:                                              ; preds = %534, %531, %496
  %538 = phi i32 [ %532, %531 ], [ %535, %534 ], [ %497, %496 ]
  %539 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %540 = icmp eq i32 %539, -2
  br i1 %540, label %541, label %542

541:                                              ; preds = %537
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %545

542:                                              ; preds = %537
  %543 = load i32, ptr %489, align 8, !tbaa !26
  %544 = icmp eq i32 %538, %543
  br i1 %544, label %545, label %496, !llvm.loop !36

545:                                              ; preds = %472, %542, %541, %522, %469, %431, %422, %410
  %546 = load i32, ptr %391, align 8, !tbaa !30
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %545, %483, %447
  %549 = load ptr, ptr %395, align 8, !tbaa !20
  store ptr %549, ptr %6, align 8, !tbaa !25
  br label %558

550:                                              ; preds = %545
  %551 = load ptr, ptr %395, align 8, !tbaa !20
  %552 = load ptr, ptr %6, align 8, !tbaa !25
  %553 = zext i32 %546 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %551, ptr align 1 %552, i64 %553, i1 false)
  %554 = load ptr, ptr %395, align 8, !tbaa !20
  store ptr %554, ptr %6, align 8, !tbaa !25
  %555 = load i32, ptr %391, align 8, !tbaa !30
  %556 = load i32, ptr %19, align 8, !tbaa !18
  %557 = icmp ule i32 %555, %556
  br label %558

558:                                              ; preds = %550, %548, %390, %387
  %559 = phi i1 [ %557, %550 ], [ true, %548 ], [ true, %390 ], [ true, %387 ]
  %560 = load i32, ptr %11, align 8, !tbaa !16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %574, label %562

562:                                              ; preds = %558
  br i1 %559, label %568, label %563

563:                                              ; preds = %562
  %564 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %565 = load i32, ptr %564, align 4, !tbaa !17
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %563
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %568

568:                                              ; preds = %567, %563, %562
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %570 = load i32, ptr %569, align 4, !tbaa !17
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %568
  %573 = load i32, ptr %11, align 8, !tbaa !16
  br label %622

574:                                              ; preds = %568, %558
  %575 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %576 = load i32, ptr %575, align 8, !tbaa !30
  %577 = icmp eq i32 %576, 0
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %579 = load ptr, ptr %578, align 8, !tbaa !20
  br i1 %577, label %582, label %580

580:                                              ; preds = %574
  %581 = load ptr, ptr %6, align 8, !tbaa !25
  br label %583

582:                                              ; preds = %574
  store ptr %579, ptr %6, align 8, !tbaa !25
  br label %583

583:                                              ; preds = %582, %580
  %584 = phi ptr [ %581, %580 ], [ %579, %582 ]
  %585 = ptrtoint ptr %584 to i64
  %586 = ptrtoint ptr %579 to i64
  %587 = sub i64 %585, %586
  %588 = getelementptr inbounds i8, ptr %579, i64 %587
  %589 = zext i32 %576 to i64
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  %591 = load i32, ptr %19, align 8, !tbaa !18
  %592 = add i32 %591, -1
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds nuw i8, ptr %590, i64 %593
  store i8 0, ptr %594, align 1, !tbaa !42
  %595 = load i32, ptr %19, align 8, !tbaa !18
  %596 = zext i32 %595 to i64
  %597 = call i32 @vsnprintf(ptr noundef %590, i64 noundef %596, ptr noundef readonly %1, ptr noundef nonnull %3) #14
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %622, label %599

599:                                              ; preds = %583
  %600 = load i32, ptr %19, align 8, !tbaa !18
  %601 = icmp ult i32 %597, %600
  br i1 %601, label %602, label %622

602:                                              ; preds = %599
  %603 = add i32 %600, -1
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds nuw i8, ptr %590, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !42
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %622

608:                                              ; preds = %602
  %609 = load i32, ptr %575, align 8, !tbaa !30
  %610 = add i32 %609, %597
  store i32 %610, ptr %575, align 8, !tbaa !30
  %611 = sext i32 %597 to i64
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %613 = load i64, ptr %612, align 8, !tbaa !37
  %614 = add nsw i64 %613, %611
  store i64 %614, ptr %612, align 8, !tbaa !37
  call fastcc void @gz_vacate(ptr noundef %0)
  %615 = load i32, ptr %11, align 8, !tbaa !16
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %621, label %617

617:                                              ; preds = %608
  %618 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %619 = load i32, ptr %618, align 4, !tbaa !17
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %617, %608
  br label %622

622:                                              ; preds = %2, %5, %14, %63, %385, %572, %583, %599, %602, %617, %621
  %623 = phi i32 [ %573, %572 ], [ -2, %2 ], [ %64, %63 ], [ %386, %385 ], [ -2, %5 ], [ %597, %621 ], [ 0, %583 ], [ -2, %14 ], [ 0, %602 ], [ 0, %599 ], [ %615, %617 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %623
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %506, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %506

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %506, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %506, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %341, label %22

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
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #15
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %36, ptr %37, align 8, !tbaa !20
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

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
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #15
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %48, ptr %49, align 8, !tbaa !22
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %36) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %57 = load i32, ptr %56, align 4, !tbaa !24
  %58 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %55, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %57, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %49, align 8, !tbaa !22
  tail call void @free(ptr noundef %61) #14
  %62 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @free(ptr noundef %62) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

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
  %80 = tail call ptr @__errno_location() #16
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
  %90 = tail call i64 @write(i32 noundef %89, ptr noundef %85, i64 noundef %88) #14
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
  %100 = tail call ptr @strerror(i32 noundef %99) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %100) #14
  br label %504

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
  %116 = tail call i32 @deflateReset(ptr noundef nonnull %23) #14
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
  %133 = tail call ptr @__errno_location() #16
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
  %143 = tail call i64 @write(i32 noundef %142, ptr noundef %135, i64 noundef %141) #14
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
  %153 = tail call ptr @strerror(i32 noundef %152) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %153) #14
  br label %504

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
  %168 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #14
  %169 = icmp eq i32 %168, -2
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %504

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

191:                                              ; preds = %339, %174
  %192 = phi i64 [ %190, %174 ], [ %338, %339 ]
  %193 = phi i1 [ false, %174 ], [ true, %339 ]
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
  %211 = tail call noalias ptr @malloc(i64 noundef %210) #15
  store ptr %211, ptr %176, align 8, !tbaa !20
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %221 = tail call noalias ptr @malloc(i64 noundef %220) #15
  store ptr %221, ptr %179, align 8, !tbaa !22
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  tail call void @free(ptr noundef nonnull %211) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %330

224:                                              ; preds = %219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %180, i8 0, i64 24, i1 false)
  %225 = load i32, ptr %181, align 8, !tbaa !23
  %226 = load i32, ptr %182, align 4, !tbaa !24
  %227 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %225, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %226, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load ptr, ptr %179, align 8, !tbaa !22
  tail call void @free(ptr noundef %230) #14
  %231 = load ptr, ptr %176, align 8, !tbaa !20
  tail call void @free(ptr noundef %231) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %246 = tail call ptr @__errno_location() #16
  br label %247

247:                                              ; preds = %264, %245
  %248 = phi ptr [ %242, %245 ], [ %269, %264 ]
  store i32 0, ptr %246, align 4, !tbaa !4
  store i32 0, ptr %183, align 4, !tbaa !17
  %249 = load i32, ptr %24, align 8, !tbaa !30
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1073741824)
  %251 = zext nneg i32 %250 to i64
  %252 = load i32, ptr %184, align 4, !tbaa !31
  %253 = tail call i64 @write(i32 noundef %252, ptr noundef %248, i64 noundef %251) #14
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
  %263 = tail call ptr @strerror(i32 noundef %262) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %263) #14
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
  %278 = tail call i32 @deflateReset(ptr noundef nonnull %23) #14
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
  %289 = tail call ptr @__errno_location() #16
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
  %299 = tail call i64 @write(i32 noundef %298, ptr noundef %291, i64 noundef %297) #14
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
  %309 = tail call ptr @strerror(i32 noundef %308) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %309) #14
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
  %324 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #14
  %325 = icmp eq i32 %324, -2
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %336 = add nsw i64 %335, %334
  store i64 %336, ptr %189, align 8, !tbaa !37
  %337 = load i64, ptr %19, align 8, !tbaa !29
  %338 = sub nsw i64 %337, %334
  store i64 %338, ptr %19, align 8, !tbaa !29
  br i1 %331, label %504, label %339

339:                                              ; preds = %330
  %340 = icmp eq i64 %337, %334
  br i1 %340, label %341, label %191, !llvm.loop !38

341:                                              ; preds = %339, %18
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %344 = load i32, ptr %343, align 8, !tbaa !18
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %387

346:                                              ; preds = %341
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %348 = load i32, ptr %347, align 4, !tbaa !19
  %349 = shl i32 %348, 1
  %350 = zext i32 %349 to i64
  %351 = tail call noalias ptr @malloc(i64 noundef %350) #15
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %351, ptr %352, align 8, !tbaa !20
  %353 = icmp eq ptr %351, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %346
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

355:                                              ; preds = %346
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %357 = load i32, ptr %356, align 8, !tbaa !21
  %358 = icmp eq i32 %357, 0
  %359 = load i32, ptr %347, align 4, !tbaa !19
  br i1 %358, label %361, label %360

360:                                              ; preds = %355
  store i32 %359, ptr %343, align 8, !tbaa !18
  br label %391

361:                                              ; preds = %355
  %362 = zext i32 %359 to i64
  %363 = tail call noalias ptr @malloc(i64 noundef %362) #15
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %363, ptr %364, align 8, !tbaa !22
  %365 = icmp eq ptr %363, null
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  tail call void @free(ptr noundef nonnull %351) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

367:                                              ; preds = %361
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %368, i8 0, i64 24, i1 false)
  %370 = load i32, ptr %369, align 8, !tbaa !23
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %372 = load i32, ptr %371, align 4, !tbaa !24
  %373 = tail call i32 @deflateInit2_(ptr noundef nonnull %342, i32 noundef %370, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %372, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %367
  %376 = load ptr, ptr %364, align 8, !tbaa !22
  tail call void @free(ptr noundef %376) #14
  %377 = load ptr, ptr %352, align 8, !tbaa !20
  tail call void @free(ptr noundef %377) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %504

378:                                              ; preds = %367
  store ptr null, ptr %342, align 8, !tbaa !25
  %379 = load i32, ptr %356, align 8, !tbaa !21
  %380 = load i32, ptr %347, align 4, !tbaa !19
  store i32 %380, ptr %343, align 8, !tbaa !18
  %381 = icmp eq i32 %379, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %378
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %380, ptr %383, align 8, !tbaa !26
  %384 = load ptr, ptr %364, align 8, !tbaa !22
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %384, ptr %385, align 8, !tbaa !27
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %384, ptr %386, align 8, !tbaa !28
  br label %424

387:                                              ; preds = %341
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %389 = load i32, ptr %388, align 8, !tbaa !21
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %424, label %391

391:                                              ; preds = %387, %378, %360
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %393 = load i32, ptr %392, align 8, !tbaa !30
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %504, label %395

395:                                              ; preds = %391
  %396 = tail call ptr @__errno_location() #16
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %399 = load ptr, ptr %342, align 8, !tbaa !25
  br label %400

400:                                              ; preds = %417, %395
  %401 = phi ptr [ %399, %395 ], [ %422, %417 ]
  store i32 0, ptr %396, align 4, !tbaa !4
  store i32 0, ptr %397, align 4, !tbaa !17
  %402 = load i32, ptr %392, align 8, !tbaa !30
  %403 = tail call i32 @llvm.umin.i32(i32 %402, i32 1073741824)
  %404 = zext nneg i32 %403 to i64
  %405 = load i32, ptr %398, align 4, !tbaa !31
  %406 = tail call i64 @write(i32 noundef %405, ptr noundef %401, i64 noundef %404) #14
  %407 = trunc i64 %406 to i32
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %400
  %410 = load i32, ptr %396, align 4, !tbaa !4
  %411 = icmp eq i32 %410, 11
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  store i32 1, ptr %397, align 4, !tbaa !17
  %413 = load i32, ptr %396, align 4, !tbaa !4
  br label %414

414:                                              ; preds = %412, %409
  %415 = phi i32 [ %410, %409 ], [ %413, %412 ]
  %416 = tail call ptr @strerror(i32 noundef %415) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %416) #14
  br label %504

417:                                              ; preds = %400
  %418 = load i32, ptr %392, align 8, !tbaa !30
  %419 = sub i32 %418, %407
  store i32 %419, ptr %392, align 8, !tbaa !30
  %420 = load ptr, ptr %342, align 8, !tbaa !25
  %421 = and i64 %406, 2147483647
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  store ptr %422, ptr %342, align 8, !tbaa !25
  %423 = icmp eq i32 %418, %407
  br i1 %423, label %504, label %400, !llvm.loop !32

424:                                              ; preds = %387, %382
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %426 = load i32, ptr %425, align 8, !tbaa !34
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %424
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %430 = load i32, ptr %429, align 8, !tbaa !30
  %431 = or i32 %430, %1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %504, label %433

433:                                              ; preds = %428
  %434 = tail call i32 @deflateReset(ptr noundef nonnull %342) #14
  store i32 0, ptr %425, align 8, !tbaa !34
  br label %435

435:                                              ; preds = %433, %424
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %437 = icmp ne i32 %1, 0
  %438 = icmp ne i32 %1, 4
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %444 = load i32, ptr %436, align 8, !tbaa !26
  br label %445

445:                                              ; preds = %498, %435
  %446 = phi i32 [ %444, %435 ], [ %499, %498 ]
  %447 = phi i32 [ 0, %435 ], [ %495, %498 ]
  %448 = icmp eq i32 %446, 0
  br i1 %448, label %453, label %449

449:                                              ; preds = %445
  %450 = icmp eq i32 %447, 1
  %451 = or i1 %438, %450
  %452 = and i1 %437, %451
  br i1 %452, label %453, label %493

453:                                              ; preds = %449, %445
  %454 = load ptr, ptr %439, align 8, !tbaa !27
  %455 = load ptr, ptr %440, align 8, !tbaa !28
  %456 = icmp ugt ptr %454, %455
  br i1 %456, label %457, label %487

457:                                              ; preds = %453
  %458 = tail call ptr @__errno_location() #16
  br label %459

459:                                              ; preds = %479, %457
  %460 = phi ptr [ %455, %457 ], [ %482, %479 ]
  %461 = phi ptr [ %454, %457 ], [ %483, %479 ]
  store i32 0, ptr %458, align 4, !tbaa !4
  store i32 0, ptr %441, align 4, !tbaa !17
  %462 = ptrtoint ptr %461 to i64
  %463 = ptrtoint ptr %460 to i64
  %464 = sub i64 %462, %463
  %465 = tail call i64 @llvm.smin.i64(i64 %464, i64 1073741824)
  %466 = and i64 %465, 4294967295
  %467 = load i32, ptr %442, align 4, !tbaa !31
  %468 = tail call i64 @write(i32 noundef %467, ptr noundef %460, i64 noundef %466) #14
  %469 = and i64 %468, 2147483648
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %459
  %472 = load i32, ptr %458, align 4, !tbaa !4
  %473 = icmp eq i32 %472, 11
  br i1 %473, label %474, label %476

474:                                              ; preds = %471
  store i32 1, ptr %441, align 4, !tbaa !17
  %475 = load i32, ptr %458, align 4, !tbaa !4
  br label %476

476:                                              ; preds = %474, %471
  %477 = phi i32 [ %472, %471 ], [ %475, %474 ]
  %478 = tail call ptr @strerror(i32 noundef %477) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %478) #14
  br label %504

479:                                              ; preds = %459
  %480 = load ptr, ptr %440, align 8, !tbaa !28
  %481 = and i64 %468, 2147483647
  %482 = getelementptr inbounds nuw i8, ptr %480, i64 %481
  store ptr %482, ptr %440, align 8, !tbaa !28
  %483 = load ptr, ptr %439, align 8, !tbaa !27
  %484 = icmp ugt ptr %483, %482
  br i1 %484, label %459, label %485, !llvm.loop !35

485:                                              ; preds = %479
  %486 = load i32, ptr %436, align 8, !tbaa !26
  br label %487

487:                                              ; preds = %485, %453
  %488 = phi i32 [ %486, %485 ], [ %446, %453 ]
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = load i32, ptr %343, align 8, !tbaa !18
  store i32 %491, ptr %436, align 8, !tbaa !26
  %492 = load ptr, ptr %443, align 8, !tbaa !22
  store ptr %492, ptr %439, align 8, !tbaa !27
  store ptr %492, ptr %440, align 8, !tbaa !28
  br label %493

493:                                              ; preds = %490, %487, %449
  %494 = phi i32 [ %488, %487 ], [ %491, %490 ], [ %446, %449 ]
  %495 = tail call i32 @deflate(ptr noundef nonnull %342, i32 noundef range(i32 0, 6) %1) #14
  %496 = icmp eq i32 %495, -2
  br i1 %496, label %497, label %498

497:                                              ; preds = %493
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %504

498:                                              ; preds = %493
  %499 = load i32, ptr %436, align 8, !tbaa !26
  %500 = icmp eq i32 %494, %499
  br i1 %500, label %501, label %445, !llvm.loop !36

501:                                              ; preds = %498
  %502 = icmp eq i32 %1, 4
  br i1 %502, label %503, label %504

503:                                              ; preds = %501
  store i32 1, ptr %425, align 8, !tbaa !34
  br label %504

504:                                              ; preds = %330, %417, %503, %501, %497, %476, %428, %414, %391, %375, %366, %354, %170, %151, %51, %98, %60, %39
  %505 = load i32, ptr %9, align 8, !tbaa !16
  br label %506

506:                                              ; preds = %504, %16, %4, %12, %2
  %507 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %505, %504 ]
  ret i32 %507
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %458, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %458

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %458, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %458

22:                                               ; preds = %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %1, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = icmp eq i32 %2, %28
  br i1 %29, label %458, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %349, label %34

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
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #15
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !20
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %347

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
  %58 = tail call noalias ptr @malloc(i64 noundef %57) #15
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %58, ptr %59, align 8, !tbaa !22
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @free(ptr noundef nonnull %47) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %347

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  %64 = load i32, ptr %23, align 8, !tbaa !23
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %66 = load i32, ptr %65, align 4, !tbaa !24
  %67 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %64, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %66, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %59, align 8, !tbaa !22
  tail call void @free(ptr noundef %70) #14
  %71 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void @free(ptr noundef %71) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %347

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
  %88 = tail call ptr @__errno_location() #16
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
  %98 = tail call i64 @write(i32 noundef %97, ptr noundef %93, i64 noundef %96) #14
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
  %108 = tail call ptr @strerror(i32 noundef %107) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %108) #14
  br label %347

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
  %124 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %141 = tail call ptr @__errno_location() #16
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
  %151 = tail call i64 @write(i32 noundef %150, ptr noundef %143, i64 noundef %149) #14
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
  %161 = tail call ptr @strerror(i32 noundef %160) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %161) #14
  br label %347

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
  %176 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %177 = icmp eq i32 %176, -2
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %347

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

197:                                              ; preds = %345, %182
  %198 = phi i64 [ %196, %182 ], [ %344, %345 ]
  %199 = phi i1 [ false, %182 ], [ true, %345 ]
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
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #15
  store ptr %217, ptr %184, align 8, !tbaa !20
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %227 = tail call noalias ptr @malloc(i64 noundef %226) #15
  store ptr %227, ptr %186, align 8, !tbaa !22
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  tail call void @free(ptr noundef nonnull %217) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %336

230:                                              ; preds = %225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %187, i8 0, i64 24, i1 false)
  %231 = load i32, ptr %23, align 8, !tbaa !23
  %232 = load i32, ptr %188, align 4, !tbaa !24
  %233 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %231, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %232, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %186, align 8, !tbaa !22
  tail call void @free(ptr noundef %236) #14
  %237 = load ptr, ptr %184, align 8, !tbaa !20
  tail call void @free(ptr noundef %237) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %252 = tail call ptr @__errno_location() #16
  br label %253

253:                                              ; preds = %270, %251
  %254 = phi ptr [ %248, %251 ], [ %275, %270 ]
  store i32 0, ptr %252, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %255 = load i32, ptr %35, align 8, !tbaa !30
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = zext nneg i32 %256 to i64
  %258 = load i32, ptr %190, align 4, !tbaa !31
  %259 = tail call i64 @write(i32 noundef %258, ptr noundef %254, i64 noundef %257) #14
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
  %269 = tail call ptr @strerror(i32 noundef %268) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #14
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
  %284 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
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
  %295 = tail call ptr @__errno_location() #16
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
  %305 = tail call i64 @write(i32 noundef %304, ptr noundef %297, i64 noundef %303) #14
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
  %315 = tail call ptr @strerror(i32 noundef %314) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %315) #14
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
  %330 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #14
  %331 = icmp eq i32 %330, -2
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %342 = add nsw i64 %341, %340
  store i64 %342, ptr %195, align 8, !tbaa !37
  %343 = load i64, ptr %31, align 8, !tbaa !29
  %344 = sub nsw i64 %343, %340
  store i64 %344, ptr %31, align 8, !tbaa !29
  br i1 %337, label %347, label %345

345:                                              ; preds = %336
  %346 = icmp eq i64 %343, %340
  br i1 %346, label %349, label %197, !llvm.loop !38

347:                                              ; preds = %336, %50, %69, %106, %61, %159, %178
  %348 = load i32, ptr %11, align 8, !tbaa !16
  br label %458

349:                                              ; preds = %345, %30
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %351 = load i32, ptr %350, align 8, !tbaa !18
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %456, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %355 = load i32, ptr %354, align 8, !tbaa !30
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %454, label %357

357:                                              ; preds = %353
  %358 = load i32, ptr %19, align 8, !tbaa !21
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %389, label %360

360:                                              ; preds = %357
  %361 = tail call ptr @__errno_location() #16
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %364 = load ptr, ptr %6, align 8, !tbaa !25
  br label %365

365:                                              ; preds = %382, %360
  %366 = phi ptr [ %364, %360 ], [ %387, %382 ]
  store i32 0, ptr %361, align 4, !tbaa !4
  store i32 0, ptr %362, align 4, !tbaa !17
  %367 = load i32, ptr %354, align 8, !tbaa !30
  %368 = tail call i32 @llvm.umin.i32(i32 %367, i32 1073741824)
  %369 = zext nneg i32 %368 to i64
  %370 = load i32, ptr %363, align 4, !tbaa !31
  %371 = tail call i64 @write(i32 noundef %370, ptr noundef %366, i64 noundef %369) #14
  %372 = trunc i64 %371 to i32
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %382

374:                                              ; preds = %365
  %375 = load i32, ptr %361, align 4, !tbaa !4
  %376 = icmp eq i32 %375, 11
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  store i32 1, ptr %362, align 4, !tbaa !17
  %378 = load i32, ptr %361, align 4, !tbaa !4
  br label %379

379:                                              ; preds = %377, %374
  %380 = phi i32 [ %375, %374 ], [ %378, %377 ]
  %381 = tail call ptr @strerror(i32 noundef %380) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %381) #14
  br label %452

382:                                              ; preds = %365
  %383 = load i32, ptr %354, align 8, !tbaa !30
  %384 = sub i32 %383, %372
  store i32 %384, ptr %354, align 8, !tbaa !30
  %385 = load ptr, ptr %6, align 8, !tbaa !25
  %386 = and i64 %371, 2147483647
  %387 = getelementptr inbounds nuw i8, ptr %385, i64 %386
  store ptr %387, ptr %6, align 8, !tbaa !25
  %388 = icmp eq i32 %383, %372
  br i1 %388, label %454, label %365, !llvm.loop !32

389:                                              ; preds = %357
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %391 = load i32, ptr %390, align 8, !tbaa !34
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %389
  %394 = tail call i32 @deflateReset(ptr noundef nonnull %6) #14
  store i32 0, ptr %390, align 8, !tbaa !34
  br label %395

395:                                              ; preds = %393, %389
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %402 = load i32, ptr %396, align 8, !tbaa !26
  br label %403

403:                                              ; preds = %449, %395
  %404 = phi i32 [ %402, %395 ], [ %450, %449 ]
  %405 = load ptr, ptr %397, align 8, !tbaa !27
  %406 = load ptr, ptr %398, align 8, !tbaa !28
  %407 = icmp ugt ptr %405, %406
  br i1 %407, label %408, label %438

408:                                              ; preds = %403
  %409 = tail call ptr @__errno_location() #16
  br label %410

410:                                              ; preds = %430, %408
  %411 = phi ptr [ %406, %408 ], [ %433, %430 ]
  %412 = phi ptr [ %405, %408 ], [ %434, %430 ]
  store i32 0, ptr %409, align 4, !tbaa !4
  store i32 0, ptr %399, align 4, !tbaa !17
  %413 = ptrtoint ptr %412 to i64
  %414 = ptrtoint ptr %411 to i64
  %415 = sub i64 %413, %414
  %416 = tail call i64 @llvm.smin.i64(i64 %415, i64 1073741824)
  %417 = and i64 %416, 4294967295
  %418 = load i32, ptr %400, align 4, !tbaa !31
  %419 = tail call i64 @write(i32 noundef %418, ptr noundef %411, i64 noundef %417) #14
  %420 = and i64 %419, 2147483648
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %430, label %422

422:                                              ; preds = %410
  %423 = load i32, ptr %409, align 4, !tbaa !4
  %424 = icmp eq i32 %423, 11
  br i1 %424, label %425, label %427

425:                                              ; preds = %422
  store i32 1, ptr %399, align 4, !tbaa !17
  %426 = load i32, ptr %409, align 4, !tbaa !4
  br label %427

427:                                              ; preds = %425, %422
  %428 = phi i32 [ %423, %422 ], [ %426, %425 ]
  %429 = tail call ptr @strerror(i32 noundef %428) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %429) #14
  br label %452

430:                                              ; preds = %410
  %431 = load ptr, ptr %398, align 8, !tbaa !28
  %432 = and i64 %419, 2147483647
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  store ptr %433, ptr %398, align 8, !tbaa !28
  %434 = load ptr, ptr %397, align 8, !tbaa !27
  %435 = icmp ugt ptr %434, %433
  br i1 %435, label %410, label %436, !llvm.loop !35

436:                                              ; preds = %430
  %437 = load i32, ptr %396, align 8, !tbaa !26
  br label %438

438:                                              ; preds = %436, %403
  %439 = phi i32 [ %437, %436 ], [ %404, %403 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load i32, ptr %350, align 8, !tbaa !18
  store i32 %442, ptr %396, align 8, !tbaa !26
  %443 = load ptr, ptr %401, align 8, !tbaa !22
  store ptr %443, ptr %397, align 8, !tbaa !27
  store ptr %443, ptr %398, align 8, !tbaa !28
  br label %444

444:                                              ; preds = %441, %438
  %445 = phi i32 [ %439, %438 ], [ %442, %441 ]
  %446 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #14
  %447 = icmp eq i32 %446, -2
  br i1 %447, label %448, label %449

448:                                              ; preds = %444
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %452

449:                                              ; preds = %444
  %450 = load i32, ptr %396, align 8, !tbaa !26
  %451 = icmp eq i32 %445, %450
  br i1 %451, label %454, label %403, !llvm.loop !36

452:                                              ; preds = %379, %448, %427
  %453 = load i32, ptr %11, align 8, !tbaa !16
  br label %458

454:                                              ; preds = %382, %449, %353
  %455 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #14
  br label %456

456:                                              ; preds = %454, %349
  store i32 %1, ptr %23, align 8, !tbaa !23
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %457, align 4, !tbaa !24
  br label %458

458:                                              ; preds = %26, %5, %14, %18, %3, %456, %452, %347
  %459 = phi i32 [ 0, %456 ], [ -2, %3 ], [ -2, %5 ], [ %348, %347 ], [ %453, %452 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %459
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %512, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %512

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %333, label %11

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
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #15
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %330

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
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #15
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %25) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %330

41:                                               ; preds = %35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %38, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #14
  %51 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void @free(ptr noundef %51) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %330

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
  %69 = tail call ptr @__errno_location() #16
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
  %79 = tail call i64 @write(i32 noundef %78, ptr noundef %74, i64 noundef %77) #14
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
  %89 = tail call ptr @strerror(i32 noundef %88) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %89) #14
  br label %330

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
  %105 = tail call i32 @deflateReset(ptr noundef nonnull %12) #14
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
  %122 = tail call ptr @__errno_location() #16
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
  %132 = tail call i64 @write(i32 noundef %131, ptr noundef %124, i64 noundef %130) #14
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
  %142 = tail call ptr @strerror(i32 noundef %141) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %142) #14
  br label %330

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
  %157 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #14
  %158 = icmp eq i32 %157, -2
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %330

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

180:                                              ; preds = %328, %163
  %181 = phi i64 [ %179, %163 ], [ %327, %328 ]
  %182 = phi i1 [ false, %163 ], [ true, %328 ]
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
  %200 = tail call noalias ptr @malloc(i64 noundef %199) #15
  store ptr %200, ptr %165, align 8, !tbaa !20
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #15
  store ptr %210, ptr %168, align 8, !tbaa !22
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  tail call void @free(ptr noundef nonnull %200) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %319

213:                                              ; preds = %208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %169, i8 0, i64 24, i1 false)
  %214 = load i32, ptr %170, align 8, !tbaa !23
  %215 = load i32, ptr %171, align 4, !tbaa !24
  %216 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %214, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %215, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr %168, align 8, !tbaa !22
  tail call void @free(ptr noundef %219) #14
  %220 = load ptr, ptr %165, align 8, !tbaa !20
  tail call void @free(ptr noundef %220) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
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
  %235 = tail call ptr @__errno_location() #16
  br label %236

236:                                              ; preds = %253, %234
  %237 = phi ptr [ %231, %234 ], [ %258, %253 ]
  store i32 0, ptr %235, align 4, !tbaa !4
  store i32 0, ptr %172, align 4, !tbaa !17
  %238 = load i32, ptr %13, align 8, !tbaa !30
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = zext nneg i32 %239 to i64
  %241 = load i32, ptr %173, align 4, !tbaa !31
  %242 = tail call i64 @write(i32 noundef %241, ptr noundef %237, i64 noundef %240) #14
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
  %252 = tail call ptr @strerror(i32 noundef %251) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %252) #14
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
  %267 = tail call i32 @deflateReset(ptr noundef nonnull %12) #14
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
  %278 = tail call ptr @__errno_location() #16
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
  %288 = tail call i64 @write(i32 noundef %287, ptr noundef %280, i64 noundef %286) #14
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
  %298 = tail call ptr @strerror(i32 noundef %297) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %298) #14
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
  %313 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #14
  %314 = icmp eq i32 %313, -2
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
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
  %325 = add nsw i64 %324, %323
  store i64 %325, ptr %178, align 8, !tbaa !37
  %326 = load i64, ptr %8, align 8, !tbaa !29
  %327 = sub nsw i64 %326, %323
  store i64 %327, ptr %8, align 8, !tbaa !29
  br i1 %320, label %330, label %328

328:                                              ; preds = %319
  %329 = icmp eq i64 %326, %323
  br i1 %329, label %333, label %180, !llvm.loop !38

330:                                              ; preds = %319, %28, %49, %87, %40, %140, %159
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %332 = load i32, ptr %331, align 8, !tbaa !16
  br label %333

333:                                              ; preds = %328, %330, %7
  %334 = phi i32 [ %332, %330 ], [ 0, %7 ], [ 0, %328 ]
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %337 = load i32, ptr %336, align 8, !tbaa !18
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %380

339:                                              ; preds = %333
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %341 = load i32, ptr %340, align 4, !tbaa !19
  %342 = shl i32 %341, 1
  %343 = zext i32 %342 to i64
  %344 = tail call noalias ptr @malloc(i64 noundef %343) #15
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %344, ptr %345, align 8, !tbaa !20
  %346 = icmp eq ptr %344, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %486

348:                                              ; preds = %339
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %350 = load i32, ptr %349, align 8, !tbaa !21
  %351 = icmp eq i32 %350, 0
  %352 = load i32, ptr %340, align 4, !tbaa !19
  br i1 %351, label %354, label %353

353:                                              ; preds = %348
  store i32 %352, ptr %336, align 8, !tbaa !18
  br label %384

354:                                              ; preds = %348
  %355 = zext i32 %352 to i64
  %356 = tail call noalias ptr @malloc(i64 noundef %355) #15
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %356, ptr %357, align 8, !tbaa !22
  %358 = icmp eq ptr %356, null
  br i1 %358, label %359, label %360

359:                                              ; preds = %354
  tail call void @free(ptr noundef nonnull %344) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %486

360:                                              ; preds = %354
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %361, i8 0, i64 24, i1 false)
  %363 = load i32, ptr %362, align 8, !tbaa !23
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %365 = load i32, ptr %364, align 4, !tbaa !24
  %366 = tail call i32 @deflateInit2_(ptr noundef nonnull %335, i32 noundef %363, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %365, ptr noundef nonnull @.str.5, i32 noundef 112) #14
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %360
  %369 = load ptr, ptr %357, align 8, !tbaa !22
  tail call void @free(ptr noundef %369) #14
  %370 = load ptr, ptr %345, align 8, !tbaa !20
  tail call void @free(ptr noundef %370) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #14
  br label %486

371:                                              ; preds = %360
  store ptr null, ptr %335, align 8, !tbaa !25
  %372 = load i32, ptr %349, align 8, !tbaa !21
  %373 = load i32, ptr %340, align 4, !tbaa !19
  store i32 %373, ptr %336, align 8, !tbaa !18
  %374 = icmp eq i32 %372, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %371
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %373, ptr %376, align 8, !tbaa !26
  %377 = load ptr, ptr %357, align 8, !tbaa !22
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %377, ptr %378, align 8, !tbaa !27
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %377, ptr %379, align 8, !tbaa !28
  br label %417

380:                                              ; preds = %333
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %382 = load i32, ptr %381, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %417, label %384

384:                                              ; preds = %380, %371, %353
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %386 = load i32, ptr %385, align 8, !tbaa !30
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %489, label %388

388:                                              ; preds = %384
  %389 = tail call ptr @__errno_location() #16
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %392 = load ptr, ptr %335, align 8, !tbaa !25
  br label %393

393:                                              ; preds = %410, %388
  %394 = phi ptr [ %392, %388 ], [ %415, %410 ]
  store i32 0, ptr %389, align 4, !tbaa !4
  store i32 0, ptr %390, align 4, !tbaa !17
  %395 = load i32, ptr %385, align 8, !tbaa !30
  %396 = tail call i32 @llvm.umin.i32(i32 %395, i32 1073741824)
  %397 = zext nneg i32 %396 to i64
  %398 = load i32, ptr %391, align 4, !tbaa !31
  %399 = tail call i64 @write(i32 noundef %398, ptr noundef %394, i64 noundef %397) #14
  %400 = trunc i64 %399 to i32
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %393
  %403 = load i32, ptr %389, align 4, !tbaa !4
  %404 = icmp eq i32 %403, 11
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  store i32 1, ptr %390, align 4, !tbaa !17
  %406 = load i32, ptr %389, align 4, !tbaa !4
  br label %407

407:                                              ; preds = %405, %402
  %408 = phi i32 [ %403, %402 ], [ %406, %405 ]
  %409 = tail call ptr @strerror(i32 noundef %408) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %409) #14
  br label %486

410:                                              ; preds = %393
  %411 = load i32, ptr %385, align 8, !tbaa !30
  %412 = sub i32 %411, %400
  store i32 %412, ptr %385, align 8, !tbaa !30
  %413 = load ptr, ptr %335, align 8, !tbaa !25
  %414 = and i64 %399, 2147483647
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  store ptr %415, ptr %335, align 8, !tbaa !25
  %416 = icmp eq i32 %411, %400
  br i1 %416, label %489, label %393, !llvm.loop !32

417:                                              ; preds = %380, %375
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %419 = load i32, ptr %418, align 8, !tbaa !34
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %417
  %422 = tail call i32 @deflateReset(ptr noundef nonnull %335) #14
  store i32 0, ptr %418, align 8, !tbaa !34
  br label %423

423:                                              ; preds = %421, %417
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %430 = load i32, ptr %424, align 8, !tbaa !26
  br label %431

431:                                              ; preds = %482, %423
  %432 = phi i32 [ %430, %423 ], [ %483, %482 ]
  %433 = phi i32 [ 0, %423 ], [ %479, %482 ]
  %434 = icmp eq i32 %432, 0
  %435 = icmp eq i32 %433, 1
  %436 = or i1 %434, %435
  br i1 %436, label %437, label %477

437:                                              ; preds = %431
  %438 = load ptr, ptr %425, align 8, !tbaa !27
  %439 = load ptr, ptr %426, align 8, !tbaa !28
  %440 = icmp ugt ptr %438, %439
  br i1 %440, label %441, label %471

441:                                              ; preds = %437
  %442 = tail call ptr @__errno_location() #16
  br label %443

443:                                              ; preds = %463, %441
  %444 = phi ptr [ %439, %441 ], [ %466, %463 ]
  %445 = phi ptr [ %438, %441 ], [ %467, %463 ]
  store i32 0, ptr %442, align 4, !tbaa !4
  store i32 0, ptr %427, align 4, !tbaa !17
  %446 = ptrtoint ptr %445 to i64
  %447 = ptrtoint ptr %444 to i64
  %448 = sub i64 %446, %447
  %449 = tail call i64 @llvm.smin.i64(i64 %448, i64 1073741824)
  %450 = and i64 %449, 4294967295
  %451 = load i32, ptr %428, align 4, !tbaa !31
  %452 = tail call i64 @write(i32 noundef %451, ptr noundef %444, i64 noundef %450) #14
  %453 = and i64 %452, 2147483648
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %463, label %455

455:                                              ; preds = %443
  %456 = load i32, ptr %442, align 4, !tbaa !4
  %457 = icmp eq i32 %456, 11
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  store i32 1, ptr %427, align 4, !tbaa !17
  %459 = load i32, ptr %442, align 4, !tbaa !4
  br label %460

460:                                              ; preds = %458, %455
  %461 = phi i32 [ %456, %455 ], [ %459, %458 ]
  %462 = tail call ptr @strerror(i32 noundef %461) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %462) #14
  br label %486

463:                                              ; preds = %443
  %464 = load ptr, ptr %426, align 8, !tbaa !28
  %465 = and i64 %452, 2147483647
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 %465
  store ptr %466, ptr %426, align 8, !tbaa !28
  %467 = load ptr, ptr %425, align 8, !tbaa !27
  %468 = icmp ugt ptr %467, %466
  br i1 %468, label %443, label %469, !llvm.loop !35

469:                                              ; preds = %463
  %470 = load i32, ptr %424, align 8, !tbaa !26
  br label %471

471:                                              ; preds = %469, %437
  %472 = phi i32 [ %470, %469 ], [ %432, %437 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load i32, ptr %336, align 8, !tbaa !18
  store i32 %475, ptr %424, align 8, !tbaa !26
  %476 = load ptr, ptr %429, align 8, !tbaa !22
  store ptr %476, ptr %425, align 8, !tbaa !27
  store ptr %476, ptr %426, align 8, !tbaa !28
  br label %477

477:                                              ; preds = %431, %474, %471
  %478 = phi i32 [ %472, %471 ], [ %475, %474 ], [ %432, %431 ]
  %479 = tail call i32 @deflate(ptr noundef nonnull %335, i32 noundef 4) #14
  %480 = icmp eq i32 %479, -2
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #14
  br label %486

482:                                              ; preds = %477
  %483 = load i32, ptr %424, align 8, !tbaa !26
  %484 = icmp eq i32 %478, %483
  br i1 %484, label %485, label %431, !llvm.loop !36

485:                                              ; preds = %482
  store i32 1, ptr %418, align 8, !tbaa !34
  br label %489

486:                                              ; preds = %407, %359, %460, %481, %347, %368
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %488 = load i32, ptr %487, align 8, !tbaa !16
  br label %489

489:                                              ; preds = %410, %485, %384, %486
  %490 = phi i32 [ %488, %486 ], [ %334, %384 ], [ %334, %485 ], [ %334, %410 ]
  %491 = load i32, ptr %336, align 8, !tbaa !18
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %504, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %495 = load i32, ptr %494, align 8, !tbaa !21
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %493
  %498 = tail call i32 @deflateEnd(ptr noundef nonnull %335) #14
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %500 = load ptr, ptr %499, align 8, !tbaa !22
  tail call void @free(ptr noundef %500) #14
  br label %501

501:                                              ; preds = %497, %493
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %503 = load ptr, ptr %502, align 8, !tbaa !20
  tail call void @free(ptr noundef %503) #14
  br label %504

504:                                              ; preds = %501, %489
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %506 = load ptr, ptr %505, align 8, !tbaa !43
  tail call void @free(ptr noundef %506) #14
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %508 = load i32, ptr %507, align 4, !tbaa !31
  %509 = tail call i32 @close(i32 noundef %508) #14
  %510 = icmp eq i32 %509, -1
  %511 = select i1 %510, i32 -1, i32 %490
  tail call void @free(ptr noundef nonnull %0) #14
  br label %512

512:                                              ; preds = %3, %1, %504
  %513 = phi i32 [ %511, %504 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %513
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

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
!38 = distinct !{!38, !33}
!39 = !{!9, !5, i64 144}
!40 = !{!9, !11, i64 136}
!41 = distinct !{!41, !33}
!42 = !{!6, !6, i64 0}
!43 = !{!9, !11, i64 32}
