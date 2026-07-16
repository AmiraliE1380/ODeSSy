; ModuleID = '/home/amiralie1380/michigan/pl/zlib/gzread.c'
source_filename = "/home/amiralie1380/michigan/pl/zlib/gzread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"request does not fit in an int\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"request does not fit in a size_t\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"out of room to push characters\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"internal error: inflate stream corrupt\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"compressed data error\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"state corrupt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1038, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1038

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %11, label %12 [
    i32 0, label %16
    i32 -5, label %16
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %1038, label %16

16:                                               ; preds = %9, %9, %12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #12
  br label %1038

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1026, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %442, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %44

44:                                               ; preds = %439, %26
  %45 = phi i64 [ %440, %439 ], [ %24, %26 ]
  %46 = load i32, ptr %0, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = tail call i64 @llvm.smin.i64(i64 %45, i64 %49)
  %51 = trunc i64 %50 to i32
  %52 = sub i32 %46, %51
  store i32 %52, ptr %0, align 8, !tbaa !19
  %53 = load ptr, ptr %27, align 8, !tbaa !20
  %54 = and i64 %50, 4294967295
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 %54
  store ptr %55, ptr %27, align 8, !tbaa !20
  %56 = load i64, ptr %28, align 8, !tbaa !21
  %57 = add nsw i64 %56, %54
  store i64 %57, ptr %28, align 8, !tbaa !21
  %58 = sub nsw i64 %45, %54
  store i64 %58, ptr %23, align 8, !tbaa !18
  br label %439

59:                                               ; preds = %44
  %60 = load i32, ptr %29, align 8, !tbaa !22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %30, align 8, !tbaa !23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %442, label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %436, %65
  %67 = load i32, ptr %31, align 8, !tbaa !24
  switch i32 %67, label %424 [
    i32 0, label %68
    i32 1, label %291
    i32 2, label %327
  ]

68:                                               ; preds = %66
  %69 = load i32, ptr %32, align 8, !tbaa !25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32, ptr %41, align 4, !tbaa !26
  %73 = zext i32 %72 to i64
  %74 = tail call noalias ptr @malloc(i64 noundef %73) #13
  store ptr %74, ptr %37, align 8, !tbaa !27
  %75 = load i32, ptr %41, align 4, !tbaa !26
  %76 = shl i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #13
  store ptr %78, ptr %34, align 8, !tbaa !28
  %79 = icmp eq ptr %74, null
  %80 = icmp eq ptr %78, null
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  tail call void @free(ptr noundef %78) #12
  tail call void @free(ptr noundef %74) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1026

83:                                               ; preds = %71
  %84 = load i32, ptr %41, align 4, !tbaa !26
  store i32 %84, ptr %32, align 8, !tbaa !25
  store i32 0, ptr %30, align 8, !tbaa !23
  store ptr null, ptr %36, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %85 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %34, align 8, !tbaa !28
  tail call void @free(ptr noundef %88) #12
  %89 = load ptr, ptr %37, align 8, !tbaa !27
  tail call void @free(ptr noundef %89) #12
  store i32 0, ptr %32, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1026

90:                                               ; preds = %83, %68
  %91 = load i32, ptr %43, align 8, !tbaa !30
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %40, align 4, !tbaa !31
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93, %90
  %97 = tail call i32 @inflateReset(ptr noundef nonnull %36) #12
  store i32 2, ptr %31, align 8, !tbaa !24
  %98 = load i32, ptr %40, align 4, !tbaa !31
  %99 = icmp ne i32 %98, -1
  %100 = zext i1 %99 to i32
  store i32 %100, ptr %40, align 4, !tbaa !31
  store i32 0, ptr %43, align 8, !tbaa !30
  br label %288

101:                                              ; preds = %93
  %102 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %102, label %1028 [
    i32 0, label %103
    i32 -5, label %103
  ]

103:                                              ; preds = %101, %101
  %104 = load i32, ptr %29, align 8, !tbaa !22
  %105 = icmp eq i32 %104, 0
  %106 = load i32, ptr %30, align 8, !tbaa !32
  br i1 %105, label %107, label %256

107:                                              ; preds = %103
  %108 = icmp eq i32 %106, 0
  %109 = load ptr, ptr %37, align 8, !tbaa !27
  %110 = ptrtoaddr ptr %109 to i64
  br i1 %108, label %216, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %36, align 8, !tbaa !33
  %113 = icmp eq ptr %112, %109
  br i1 %113, label %216, label %114

114:                                              ; preds = %111
  %115 = ptrtoaddr ptr %112 to i64
  %116 = zext i32 %106 to i64
  %117 = icmp ult i32 %106, 4
  %118 = sub i64 %110, %115
  %119 = icmp ult i64 %118, 32
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %160, label %121

121:                                              ; preds = %114
  %122 = icmp ult i32 %106, 32
  br i1 %122, label %144, label %123

123:                                              ; preds = %121
  %124 = and i64 %116, 28
  %125 = and i64 %116, 4294967264
  %126 = getelementptr i8, ptr %109, i64 %125
  %127 = getelementptr i8, ptr %112, i64 %125
  %128 = trunc nuw i64 %125 to i32
  %129 = sub i32 %106, %128
  br label %130

130:                                              ; preds = %130, %123
  %131 = phi i64 [ 0, %123 ], [ %138, %130 ]
  %132 = getelementptr i8, ptr %109, i64 %131
  %133 = getelementptr i8, ptr %112, i64 %131
  %134 = getelementptr i8, ptr %133, i64 16
  %135 = load <16 x i8>, ptr %133, align 1, !tbaa !34
  %136 = load <16 x i8>, ptr %134, align 1, !tbaa !34
  %137 = getelementptr i8, ptr %132, i64 16
  store <16 x i8> %135, ptr %132, align 1, !tbaa !34
  store <16 x i8> %136, ptr %137, align 1, !tbaa !34
  %138 = add nuw i64 %131, 32
  %139 = icmp eq i64 %138, %125
  br i1 %139, label %140, label %130, !llvm.loop !35

140:                                              ; preds = %130
  %141 = icmp eq i64 %125, %116
  br i1 %141, label %213, label %142

142:                                              ; preds = %140
  %143 = icmp eq i64 %124, 0
  br i1 %143, label %160, label %144, !prof !39

144:                                              ; preds = %121, %142
  %145 = phi i64 [ %125, %142 ], [ 0, %121 ]
  %146 = and i64 %116, 4294967292
  %147 = getelementptr i8, ptr %109, i64 %146
  %148 = getelementptr i8, ptr %112, i64 %146
  %149 = trunc nuw i64 %146 to i32
  %150 = sub i32 %106, %149
  br label %151

151:                                              ; preds = %151, %144
  %152 = phi i64 [ %145, %144 ], [ %156, %151 ]
  %153 = getelementptr i8, ptr %109, i64 %152
  %154 = getelementptr i8, ptr %112, i64 %152
  %155 = load <4 x i8>, ptr %154, align 1, !tbaa !34
  store <4 x i8> %155, ptr %153, align 1, !tbaa !34
  %156 = add nuw i64 %152, 4
  %157 = icmp eq i64 %156, %146
  br i1 %157, label %158, label %151, !llvm.loop !40

158:                                              ; preds = %151
  %159 = icmp eq i64 %146, %116
  br i1 %159, label %213, label %160

160:                                              ; preds = %114, %142, %158
  %161 = phi ptr [ %109, %114 ], [ %126, %142 ], [ %147, %158 ]
  %162 = phi ptr [ %112, %114 ], [ %127, %142 ], [ %148, %158 ]
  %163 = phi i32 [ %106, %114 ], [ %129, %142 ], [ %150, %158 ]
  %164 = add i32 %163, -1
  %165 = and i32 %163, 7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %160, %167
  %168 = phi ptr [ %174, %167 ], [ %161, %160 ]
  %169 = phi ptr [ %172, %167 ], [ %162, %160 ]
  %170 = phi i32 [ %175, %167 ], [ %163, %160 ]
  %171 = phi i32 [ %176, %167 ], [ 0, %160 ]
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %173 = load i8, ptr %169, align 1, !tbaa !34
  %174 = getelementptr inbounds nuw i8, ptr %168, i64 1
  store i8 %173, ptr %168, align 1, !tbaa !34
  %175 = add i32 %170, -1
  %176 = add i32 %171, 1
  %177 = icmp eq i32 %176, %165
  br i1 %177, label %178, label %167, !llvm.loop !41

178:                                              ; preds = %167, %160
  %179 = phi ptr [ %161, %160 ], [ %174, %167 ]
  %180 = phi ptr [ %162, %160 ], [ %172, %167 ]
  %181 = phi i32 [ %163, %160 ], [ %175, %167 ]
  %182 = icmp ult i32 %164, 7
  br i1 %182, label %213, label %183

183:                                              ; preds = %178, %183
  %184 = phi ptr [ %210, %183 ], [ %179, %178 ]
  %185 = phi ptr [ %208, %183 ], [ %180, %178 ]
  %186 = phi i32 [ %211, %183 ], [ %181, %178 ]
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !34
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 1
  store i8 %188, ptr %184, align 1, !tbaa !34
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %191 = load i8, ptr %187, align 1, !tbaa !34
  %192 = getelementptr inbounds nuw i8, ptr %184, i64 2
  store i8 %191, ptr %189, align 1, !tbaa !34
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 3
  %194 = load i8, ptr %190, align 1, !tbaa !34
  %195 = getelementptr inbounds nuw i8, ptr %184, i64 3
  store i8 %194, ptr %192, align 1, !tbaa !34
  %196 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %197 = load i8, ptr %193, align 1, !tbaa !34
  %198 = getelementptr inbounds nuw i8, ptr %184, i64 4
  store i8 %197, ptr %195, align 1, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 5
  %200 = load i8, ptr %196, align 1, !tbaa !34
  %201 = getelementptr inbounds nuw i8, ptr %184, i64 5
  store i8 %200, ptr %198, align 1, !tbaa !34
  %202 = getelementptr inbounds nuw i8, ptr %185, i64 6
  %203 = load i8, ptr %199, align 1, !tbaa !34
  %204 = getelementptr inbounds nuw i8, ptr %184, i64 6
  store i8 %203, ptr %201, align 1, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %185, i64 7
  %206 = load i8, ptr %202, align 1, !tbaa !34
  %207 = getelementptr inbounds nuw i8, ptr %184, i64 7
  store i8 %206, ptr %204, align 1, !tbaa !34
  %208 = getelementptr inbounds nuw i8, ptr %185, i64 8
  %209 = load i8, ptr %205, align 1, !tbaa !34
  %210 = getelementptr inbounds nuw i8, ptr %184, i64 8
  store i8 %209, ptr %207, align 1, !tbaa !34
  %211 = add i32 %186, -8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %183, !llvm.loop !43

213:                                              ; preds = %178, %183, %158, %140
  %214 = load i32, ptr %30, align 8, !tbaa !32
  %215 = load ptr, ptr %37, align 8, !tbaa !27
  br label %216

216:                                              ; preds = %213, %111, %107
  %217 = phi ptr [ %215, %213 ], [ %109, %111 ], [ %109, %107 ]
  %218 = phi i32 [ %214, %213 ], [ %106, %111 ], [ 0, %107 ]
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %219
  %221 = load i32, ptr %32, align 8, !tbaa !25
  %222 = sub i32 %221, %218
  store i32 0, ptr %38, align 4, !tbaa !17
  %223 = tail call ptr @__errno_location() #14
  store i32 0, ptr %223, align 4, !tbaa !4
  br label %224

224:                                              ; preds = %235, %216
  %225 = phi i32 [ 0, %216 ], [ %236, %235 ]
  %226 = sub i32 %222, %225
  %227 = tail call i32 @llvm.umin.i32(i32 %226, i32 1073741824)
  %228 = load i32, ptr %39, align 4, !tbaa !44
  %229 = zext i32 %225 to i64
  %230 = getelementptr inbounds nuw i8, ptr %220, i64 %229
  %231 = zext nneg i32 %227 to i64
  %232 = tail call i64 @read(i32 noundef %228, ptr noundef %230, i64 noundef %231) #12
  %233 = trunc i64 %232 to i32
  %234 = icmp slt i32 %233, 1
  br i1 %234, label %238, label %235

235:                                              ; preds = %224
  %236 = add i32 %225, %233
  %237 = icmp ult i32 %236, %222
  br i1 %237, label %224, label %251, !llvm.loop !45

238:                                              ; preds = %224
  %239 = icmp slt i32 %233, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %238
  %241 = load i32, ptr %223, align 4, !tbaa !4
  %242 = icmp eq i32 %241, 11
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  store i32 1, ptr %38, align 4, !tbaa !17
  %244 = icmp eq i32 %225, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %243
  %246 = load i32, ptr %223, align 4, !tbaa !4
  br label %248

247:                                              ; preds = %238
  store i32 1, ptr %29, align 8, !tbaa !22
  br label %251

248:                                              ; preds = %240, %245
  %249 = phi i32 [ %246, %245 ], [ %241, %240 ]
  %250 = tail call ptr @strerror(i32 noundef %249) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %250) #12
  br label %1026

251:                                              ; preds = %235, %247, %243
  %252 = phi i32 [ %225, %243 ], [ %225, %247 ], [ %236, %235 ]
  %253 = load i32, ptr %30, align 8, !tbaa !32
  %254 = add i32 %253, %252
  store i32 %254, ptr %30, align 8, !tbaa !32
  %255 = load ptr, ptr %37, align 8, !tbaa !27
  store ptr %255, ptr %36, align 8, !tbaa !33
  br label %256

256:                                              ; preds = %251, %103
  %257 = phi i32 [ %254, %251 ], [ %106, %103 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %288, label %259

259:                                              ; preds = %256
  %260 = load i32, ptr %38, align 4, !tbaa !17
  %261 = icmp ne i32 %260, 0
  %262 = icmp ult i32 %257, 4
  %263 = and i1 %262, %261
  br i1 %263, label %288, label %264

264:                                              ; preds = %259
  %265 = icmp ugt i32 %257, 3
  %266 = load ptr, ptr %36, align 8, !tbaa !33
  br i1 %265, label %267, label %284

267:                                              ; preds = %264
  %268 = load i8, ptr %266, align 1, !tbaa !34
  %269 = icmp eq i8 %268, 31
  br i1 %269, label %270, label %284

270:                                              ; preds = %267
  %271 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !34
  %273 = icmp eq i8 %272, -117
  br i1 %273, label %274, label %284

274:                                              ; preds = %270
  %275 = getelementptr inbounds nuw i8, ptr %266, i64 2
  %276 = load i8, ptr %275, align 1, !tbaa !34
  %277 = icmp eq i8 %276, 8
  br i1 %277, label %278, label %284

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw i8, ptr %266, i64 3
  %280 = load i8, ptr %279, align 1, !tbaa !34
  %281 = icmp ult i8 %280, 32
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = tail call i32 @inflateReset(ptr noundef nonnull %36) #12
  store i32 2, ptr %31, align 8, !tbaa !24
  store i32 1, ptr %40, align 4, !tbaa !31
  store i32 0, ptr %43, align 8, !tbaa !30
  br label %425

284:                                              ; preds = %278, %274, %270, %267, %264
  %285 = load ptr, ptr %34, align 8, !tbaa !28
  store ptr %285, ptr %27, align 8, !tbaa !20
  %286 = zext i32 %257 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %285, ptr align 1 %266, i64 %286, i1 false)
  %287 = load i32, ptr %30, align 8, !tbaa !32
  store i32 %287, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !32
  store i32 1, ptr %31, align 8, !tbaa !24
  br label %427

288:                                              ; preds = %259, %256, %96
  %289 = load i32, ptr %31, align 8, !tbaa !24
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %437, label %425

291:                                              ; preds = %66
  %292 = load ptr, ptr %34, align 8, !tbaa !28
  %293 = load i32, ptr %32, align 8, !tbaa !25
  %294 = shl i32 %293, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %295 = tail call ptr @__errno_location() #14
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %296

296:                                              ; preds = %307, %291
  %297 = phi i32 [ %309, %307 ], [ 0, %291 ]
  %298 = sub i32 %294, %297
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = load i32, ptr %39, align 4, !tbaa !44
  %301 = zext i32 %297 to i64
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 %301
  %303 = zext nneg i32 %299 to i64
  %304 = tail call i64 @read(i32 noundef %300, ptr noundef %302, i64 noundef %303) #12
  %305 = trunc i64 %304 to i32
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %311, label %307

307:                                              ; preds = %296
  %308 = load i32, ptr %0, align 4, !tbaa !4
  %309 = add i32 %308, %305
  store i32 %309, ptr %0, align 4, !tbaa !4
  %310 = icmp ult i32 %309, %294
  br i1 %310, label %296, label %325, !llvm.loop !45

311:                                              ; preds = %296
  %312 = icmp slt i32 %305, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %311
  %314 = load i32, ptr %295, align 4, !tbaa !4
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  store i32 1, ptr %38, align 4, !tbaa !17
  %317 = load i32, ptr %0, align 4, !tbaa !4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load i32, ptr %295, align 4, !tbaa !4
  br label %322

321:                                              ; preds = %311
  store i32 1, ptr %29, align 8, !tbaa !22
  br label %325

322:                                              ; preds = %313, %319
  %323 = phi i32 [ %320, %319 ], [ %314, %313 ]
  %324 = tail call ptr @strerror(i32 noundef %323) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %324) #12
  br label %1026

325:                                              ; preds = %307, %321, %316
  %326 = load ptr, ptr %34, align 8, !tbaa !28
  store ptr %326, ptr %27, align 8, !tbaa !20
  br label %437

327:                                              ; preds = %66
  %328 = load i32, ptr %32, align 8, !tbaa !25
  %329 = shl i32 %328, 1
  store i32 %329, ptr %33, align 8, !tbaa !46
  %330 = load ptr, ptr %34, align 8, !tbaa !28
  store ptr %330, ptr %35, align 8, !tbaa !47
  br label %331

331:                                              ; preds = %404, %327
  %332 = phi i32 [ 0, %327 ], [ %383, %404 ]
  %333 = load i32, ptr %30, align 8, !tbaa !32
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %382

335:                                              ; preds = %331
  %336 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %336, label %415 [
    i32 0, label %337
    i32 -5, label %337
  ]

337:                                              ; preds = %335, %335
  %338 = load i32, ptr %29, align 8, !tbaa !22
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %378

340:                                              ; preds = %337
  %341 = load ptr, ptr %37, align 8, !tbaa !27
  %342 = load i32, ptr %32, align 8, !tbaa !25
  store i32 0, ptr %38, align 4, !tbaa !17
  %343 = tail call ptr @__errno_location() #14
  store i32 0, ptr %343, align 4, !tbaa !4
  br label %344

344:                                              ; preds = %355, %340
  %345 = phi i32 [ 0, %340 ], [ %356, %355 ]
  %346 = sub i32 %342, %345
  %347 = tail call i32 @llvm.umin.i32(i32 %346, i32 1073741824)
  %348 = load i32, ptr %39, align 4, !tbaa !44
  %349 = zext i32 %345 to i64
  %350 = getelementptr inbounds nuw i8, ptr %341, i64 %349
  %351 = zext nneg i32 %347 to i64
  %352 = tail call i64 @read(i32 noundef %348, ptr noundef %350, i64 noundef %351) #12
  %353 = trunc i64 %352 to i32
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %358, label %355

355:                                              ; preds = %344
  %356 = add i32 %345, %353
  %357 = icmp ult i32 %356, %342
  br i1 %357, label %344, label %372, !llvm.loop !45

358:                                              ; preds = %344
  %359 = icmp slt i32 %353, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %358
  %361 = load i32, ptr %343, align 4, !tbaa !4
  %362 = icmp eq i32 %361, 11
  br i1 %362, label %363, label %368

363:                                              ; preds = %360
  store i32 1, ptr %38, align 4, !tbaa !17
  %364 = icmp eq i32 %345, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %363
  %366 = load i32, ptr %343, align 4, !tbaa !4
  br label %368

367:                                              ; preds = %358
  store i32 1, ptr %29, align 8, !tbaa !22
  br label %372

368:                                              ; preds = %360, %365
  %369 = phi i32 [ %366, %365 ], [ %361, %360 ]
  %370 = tail call ptr @strerror(i32 noundef %369) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %370) #12
  %371 = load i32, ptr %10, align 8, !tbaa !16
  br label %415

372:                                              ; preds = %355, %367, %363
  %373 = phi i32 [ %345, %363 ], [ %345, %367 ], [ %356, %355 ]
  %374 = load i32, ptr %30, align 8, !tbaa !32
  %375 = add i32 %374, %373
  store i32 %375, ptr %30, align 8, !tbaa !32
  %376 = load ptr, ptr %37, align 8, !tbaa !27
  store ptr %376, ptr %36, align 8, !tbaa !33
  %377 = icmp eq i32 %375, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %372, %337
  %379 = load i32, ptr %38, align 4, !tbaa !17
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %415

381:                                              ; preds = %378
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %415

382:                                              ; preds = %372, %331
  %383 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #12
  %384 = load i32, ptr %33, align 8, !tbaa !46
  %385 = icmp ult i32 %384, %329
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store i32 0, ptr %40, align 4, !tbaa !31
  br label %387

387:                                              ; preds = %386, %382
  switch i32 %383, label %404 [
    i32 -2, label %388
    i32 2, label %388
    i32 -4, label %389
    i32 -3, label %390
  ]

388:                                              ; preds = %387, %387
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %415

389:                                              ; preds = %387
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %408

390:                                              ; preds = %387
  %391 = load i32, ptr %40, align 4, !tbaa !31
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %399

393:                                              ; preds = %390
  store i32 0, ptr %30, align 8, !tbaa !32
  store i32 1, ptr %29, align 8, !tbaa !22
  store i32 0, ptr %31, align 8, !tbaa !24
  %394 = sub i32 %329, %384
  store i32 %394, ptr %0, align 8, !tbaa !19
  %395 = load ptr, ptr %35, align 8, !tbaa !47
  %396 = zext i32 %394 to i64
  %397 = sub nsw i64 0, %396
  %398 = getelementptr inbounds i8, ptr %395, i64 %397
  store ptr %398, ptr %27, align 8, !tbaa !20
  br label %425

399:                                              ; preds = %390
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %401 = load ptr, ptr %400, align 8, !tbaa !48
  %402 = icmp eq ptr %401, null
  %403 = select i1 %402, ptr @.str.6, ptr %401
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %403) #12
  br label %408

404:                                              ; preds = %387
  %405 = icmp ne i32 %384, 0
  %406 = icmp ne i32 %383, 1
  %407 = select i1 %405, i1 %406, i1 false
  br i1 %407, label %331, label %415, !llvm.loop !49

408:                                              ; preds = %399, %389
  %409 = load i32, ptr %33, align 8, !tbaa !46
  %410 = sub i32 %329, %409
  store i32 %410, ptr %0, align 8, !tbaa !19
  %411 = load ptr, ptr %35, align 8, !tbaa !47
  %412 = zext i32 %410 to i64
  %413 = sub nsw i64 0, %412
  %414 = getelementptr inbounds i8, ptr %411, i64 %413
  store ptr %414, ptr %27, align 8, !tbaa !20
  br label %1026

415:                                              ; preds = %404, %335, %388, %381, %378, %368
  %416 = phi i32 [ %371, %368 ], [ %332, %378 ], [ %332, %381 ], [ %383, %388 ], [ %383, %404 ], [ %336, %335 ]
  %417 = load i32, ptr %33, align 8, !tbaa !46
  %418 = sub i32 %329, %417
  store i32 %418, ptr %0, align 8, !tbaa !19
  %419 = load ptr, ptr %35, align 8, !tbaa !47
  %420 = zext i32 %418 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %419, i64 %421
  store ptr %422, ptr %27, align 8, !tbaa !20
  switch i32 %416, label %1026 [
    i32 1, label %423
    i32 0, label %425
  ]

423:                                              ; preds = %415
  store i32 0, ptr %40, align 4, !tbaa !31
  store i32 0, ptr %31, align 8, !tbaa !24
  br label %425

424:                                              ; preds = %66
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %1026

425:                                              ; preds = %423, %415, %393, %288, %282
  %426 = load i32, ptr %0, align 8, !tbaa !19
  br label %427

427:                                              ; preds = %425, %284
  %428 = phi i32 [ %426, %425 ], [ %287, %284 ]
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = load i32, ptr %29, align 8, !tbaa !22
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = load i32, ptr %30, align 8, !tbaa !32
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %433, %430
  br label %66, !llvm.loop !50

437:                                              ; preds = %433, %427, %288, %325
  %438 = load i64, ptr %23, align 8, !tbaa !18
  br label %439

439:                                              ; preds = %437, %48
  %440 = phi i64 [ %438, %437 ], [ %58, %48 ]
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %44, !llvm.loop !51

442:                                              ; preds = %439, %62, %22
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %461

461:                                              ; preds = %1014, %442
  %462 = phi ptr [ %1, %442 ], [ %1009, %1014 ]
  %463 = phi i64 [ %20, %442 ], [ %1010, %1014 ]
  %464 = phi i64 [ 0, %442 ], [ %1011, %1014 ]
  %465 = tail call i64 @llvm.umin.i64(i64 %463, i64 4294967295)
  %466 = trunc nuw i64 %465 to i32
  %467 = load i32, ptr %0, align 8, !tbaa !19
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %480, label %469

469:                                              ; preds = %461
  %470 = tail call i32 @llvm.umin.i32(i32 %467, i32 %466)
  %471 = load ptr, ptr %443, align 8, !tbaa !20
  %472 = zext i32 %470 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %462, ptr align 1 %471, i64 %472, i1 false)
  %473 = load ptr, ptr %443, align 8, !tbaa !20
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 %472
  store ptr %474, ptr %443, align 8, !tbaa !20
  %475 = load i32, ptr %0, align 8, !tbaa !19
  %476 = sub i32 %475, %470
  store i32 %476, ptr %0, align 8, !tbaa !19
  %477 = load i32, ptr %10, align 8, !tbaa !16
  %478 = icmp ne i32 %477, 0
  %479 = sext i1 %478 to i32
  br label %1000

480:                                              ; preds = %461
  %481 = load i32, ptr %444, align 8, !tbaa !22
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %480
  %484 = load i32, ptr %445, align 8, !tbaa !23
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %1019, label %486

486:                                              ; preds = %483, %480
  %487 = load i32, ptr %446, align 8, !tbaa !24
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %493, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %447, align 8, !tbaa !25
  %491 = shl i32 %490, 1
  %492 = icmp ugt i32 %491, %466
  br i1 %492, label %493, label %869

493:                                              ; preds = %489, %486
  br label %494

494:                                              ; preds = %493, %863
  %495 = phi i32 [ %864, %863 ], [ %487, %493 ]
  switch i32 %495, label %851 [
    i32 0, label %496
    i32 1, label %719
    i32 2, label %755
  ]

496:                                              ; preds = %494
  %497 = load i32, ptr %447, align 8, !tbaa !25
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %518

499:                                              ; preds = %496
  %500 = load i32, ptr %458, align 4, !tbaa !26
  %501 = zext i32 %500 to i64
  %502 = tail call noalias ptr @malloc(i64 noundef %501) #13
  store ptr %502, ptr %451, align 8, !tbaa !27
  %503 = load i32, ptr %458, align 4, !tbaa !26
  %504 = shl i32 %503, 1
  %505 = zext i32 %504 to i64
  %506 = tail call noalias ptr @malloc(i64 noundef %505) #13
  store ptr %506, ptr %457, align 8, !tbaa !28
  %507 = icmp eq ptr %502, null
  %508 = icmp eq ptr %506, null
  %509 = or i1 %507, %508
  br i1 %509, label %510, label %511

510:                                              ; preds = %499
  tail call void @free(ptr noundef %506) #12
  tail call void @free(ptr noundef %502) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %865

511:                                              ; preds = %499
  %512 = load i32, ptr %458, align 4, !tbaa !26
  store i32 %512, ptr %447, align 8, !tbaa !25
  store i32 0, ptr %445, align 8, !tbaa !23
  store ptr null, ptr %450, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %459, i8 0, i64 24, i1 false)
  %513 = tail call i32 @inflateInit2_(ptr noundef nonnull %450, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %518, label %515

515:                                              ; preds = %511
  %516 = load ptr, ptr %457, align 8, !tbaa !28
  tail call void @free(ptr noundef %516) #12
  %517 = load ptr, ptr %451, align 8, !tbaa !27
  tail call void @free(ptr noundef %517) #12
  store i32 0, ptr %447, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %865

518:                                              ; preds = %511, %496
  %519 = load i32, ptr %460, align 8, !tbaa !30
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %524, label %521

521:                                              ; preds = %518
  %522 = load i32, ptr %454, align 4, !tbaa !31
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %521, %518
  %525 = tail call i32 @inflateReset(ptr noundef nonnull %450) #12
  store i32 2, ptr %446, align 8, !tbaa !24
  %526 = load i32, ptr %454, align 4, !tbaa !31
  %527 = icmp ne i32 %526, -1
  %528 = zext i1 %527 to i32
  store i32 %528, ptr %454, align 4, !tbaa !31
  store i32 0, ptr %460, align 8, !tbaa !30
  br label %716

529:                                              ; preds = %521
  %530 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %530, label %865 [
    i32 0, label %531
    i32 -5, label %531
  ]

531:                                              ; preds = %529, %529
  %532 = load i32, ptr %444, align 8, !tbaa !22
  %533 = icmp eq i32 %532, 0
  %534 = load i32, ptr %445, align 8, !tbaa !32
  br i1 %533, label %535, label %684

535:                                              ; preds = %531
  %536 = icmp eq i32 %534, 0
  %537 = load ptr, ptr %451, align 8, !tbaa !27
  %538 = ptrtoaddr ptr %537 to i64
  br i1 %536, label %644, label %539

539:                                              ; preds = %535
  %540 = load ptr, ptr %450, align 8, !tbaa !33
  %541 = icmp eq ptr %540, %537
  br i1 %541, label %644, label %542

542:                                              ; preds = %539
  %543 = ptrtoaddr ptr %540 to i64
  %544 = zext i32 %534 to i64
  %545 = icmp ult i32 %534, 4
  %546 = sub i64 %538, %543
  %547 = icmp ult i64 %546, 32
  %548 = select i1 %545, i1 true, i1 %547
  br i1 %548, label %588, label %549

549:                                              ; preds = %542
  %550 = icmp ult i32 %534, 32
  br i1 %550, label %572, label %551

551:                                              ; preds = %549
  %552 = and i64 %544, 28
  %553 = and i64 %544, 4294967264
  %554 = getelementptr i8, ptr %537, i64 %553
  %555 = getelementptr i8, ptr %540, i64 %553
  %556 = trunc nuw i64 %553 to i32
  %557 = sub i32 %534, %556
  br label %558

558:                                              ; preds = %558, %551
  %559 = phi i64 [ 0, %551 ], [ %566, %558 ]
  %560 = getelementptr i8, ptr %537, i64 %559
  %561 = getelementptr i8, ptr %540, i64 %559
  %562 = getelementptr i8, ptr %561, i64 16
  %563 = load <16 x i8>, ptr %561, align 1, !tbaa !34
  %564 = load <16 x i8>, ptr %562, align 1, !tbaa !34
  %565 = getelementptr i8, ptr %560, i64 16
  store <16 x i8> %563, ptr %560, align 1, !tbaa !34
  store <16 x i8> %564, ptr %565, align 1, !tbaa !34
  %566 = add nuw i64 %559, 32
  %567 = icmp eq i64 %566, %553
  br i1 %567, label %568, label %558, !llvm.loop !52

568:                                              ; preds = %558
  %569 = icmp eq i64 %553, %544
  br i1 %569, label %641, label %570

570:                                              ; preds = %568
  %571 = icmp eq i64 %552, 0
  br i1 %571, label %588, label %572, !prof !39

572:                                              ; preds = %549, %570
  %573 = phi i64 [ %553, %570 ], [ 0, %549 ]
  %574 = and i64 %544, 4294967292
  %575 = getelementptr i8, ptr %537, i64 %574
  %576 = getelementptr i8, ptr %540, i64 %574
  %577 = trunc nuw i64 %574 to i32
  %578 = sub i32 %534, %577
  br label %579

579:                                              ; preds = %579, %572
  %580 = phi i64 [ %573, %572 ], [ %584, %579 ]
  %581 = getelementptr i8, ptr %537, i64 %580
  %582 = getelementptr i8, ptr %540, i64 %580
  %583 = load <4 x i8>, ptr %582, align 1, !tbaa !34
  store <4 x i8> %583, ptr %581, align 1, !tbaa !34
  %584 = add nuw i64 %580, 4
  %585 = icmp eq i64 %584, %574
  br i1 %585, label %586, label %579, !llvm.loop !53

586:                                              ; preds = %579
  %587 = icmp eq i64 %574, %544
  br i1 %587, label %641, label %588

588:                                              ; preds = %542, %570, %586
  %589 = phi ptr [ %537, %542 ], [ %554, %570 ], [ %575, %586 ]
  %590 = phi ptr [ %540, %542 ], [ %555, %570 ], [ %576, %586 ]
  %591 = phi i32 [ %534, %542 ], [ %557, %570 ], [ %578, %586 ]
  %592 = add i32 %591, -1
  %593 = and i32 %591, 7
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %606, label %595

595:                                              ; preds = %588, %595
  %596 = phi ptr [ %602, %595 ], [ %589, %588 ]
  %597 = phi ptr [ %600, %595 ], [ %590, %588 ]
  %598 = phi i32 [ %603, %595 ], [ %591, %588 ]
  %599 = phi i32 [ %604, %595 ], [ 0, %588 ]
  %600 = getelementptr inbounds nuw i8, ptr %597, i64 1
  %601 = load i8, ptr %597, align 1, !tbaa !34
  %602 = getelementptr inbounds nuw i8, ptr %596, i64 1
  store i8 %601, ptr %596, align 1, !tbaa !34
  %603 = add i32 %598, -1
  %604 = add i32 %599, 1
  %605 = icmp eq i32 %604, %593
  br i1 %605, label %606, label %595, !llvm.loop !54

606:                                              ; preds = %595, %588
  %607 = phi ptr [ %589, %588 ], [ %602, %595 ]
  %608 = phi ptr [ %590, %588 ], [ %600, %595 ]
  %609 = phi i32 [ %591, %588 ], [ %603, %595 ]
  %610 = icmp ult i32 %592, 7
  br i1 %610, label %641, label %611

611:                                              ; preds = %606, %611
  %612 = phi ptr [ %638, %611 ], [ %607, %606 ]
  %613 = phi ptr [ %636, %611 ], [ %608, %606 ]
  %614 = phi i32 [ %639, %611 ], [ %609, %606 ]
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 1
  %616 = load i8, ptr %613, align 1, !tbaa !34
  %617 = getelementptr inbounds nuw i8, ptr %612, i64 1
  store i8 %616, ptr %612, align 1, !tbaa !34
  %618 = getelementptr inbounds nuw i8, ptr %613, i64 2
  %619 = load i8, ptr %615, align 1, !tbaa !34
  %620 = getelementptr inbounds nuw i8, ptr %612, i64 2
  store i8 %619, ptr %617, align 1, !tbaa !34
  %621 = getelementptr inbounds nuw i8, ptr %613, i64 3
  %622 = load i8, ptr %618, align 1, !tbaa !34
  %623 = getelementptr inbounds nuw i8, ptr %612, i64 3
  store i8 %622, ptr %620, align 1, !tbaa !34
  %624 = getelementptr inbounds nuw i8, ptr %613, i64 4
  %625 = load i8, ptr %621, align 1, !tbaa !34
  %626 = getelementptr inbounds nuw i8, ptr %612, i64 4
  store i8 %625, ptr %623, align 1, !tbaa !34
  %627 = getelementptr inbounds nuw i8, ptr %613, i64 5
  %628 = load i8, ptr %624, align 1, !tbaa !34
  %629 = getelementptr inbounds nuw i8, ptr %612, i64 5
  store i8 %628, ptr %626, align 1, !tbaa !34
  %630 = getelementptr inbounds nuw i8, ptr %613, i64 6
  %631 = load i8, ptr %627, align 1, !tbaa !34
  %632 = getelementptr inbounds nuw i8, ptr %612, i64 6
  store i8 %631, ptr %629, align 1, !tbaa !34
  %633 = getelementptr inbounds nuw i8, ptr %613, i64 7
  %634 = load i8, ptr %630, align 1, !tbaa !34
  %635 = getelementptr inbounds nuw i8, ptr %612, i64 7
  store i8 %634, ptr %632, align 1, !tbaa !34
  %636 = getelementptr inbounds nuw i8, ptr %613, i64 8
  %637 = load i8, ptr %633, align 1, !tbaa !34
  %638 = getelementptr inbounds nuw i8, ptr %612, i64 8
  store i8 %637, ptr %635, align 1, !tbaa !34
  %639 = add i32 %614, -8
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %611, !llvm.loop !55

641:                                              ; preds = %606, %611, %586, %568
  %642 = load i32, ptr %445, align 8, !tbaa !32
  %643 = load ptr, ptr %451, align 8, !tbaa !27
  br label %644

644:                                              ; preds = %641, %539, %535
  %645 = phi ptr [ %643, %641 ], [ %537, %539 ], [ %537, %535 ]
  %646 = phi i32 [ %642, %641 ], [ %534, %539 ], [ 0, %535 ]
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds nuw i8, ptr %645, i64 %647
  %649 = load i32, ptr %447, align 8, !tbaa !25
  %650 = sub i32 %649, %646
  store i32 0, ptr %452, align 4, !tbaa !17
  %651 = tail call ptr @__errno_location() #14
  store i32 0, ptr %651, align 4, !tbaa !4
  br label %652

652:                                              ; preds = %663, %644
  %653 = phi i32 [ 0, %644 ], [ %664, %663 ]
  %654 = sub i32 %650, %653
  %655 = tail call i32 @llvm.umin.i32(i32 %654, i32 1073741824)
  %656 = load i32, ptr %453, align 4, !tbaa !44
  %657 = zext i32 %653 to i64
  %658 = getelementptr inbounds nuw i8, ptr %648, i64 %657
  %659 = zext nneg i32 %655 to i64
  %660 = tail call i64 @read(i32 noundef %656, ptr noundef %658, i64 noundef %659) #12
  %661 = trunc i64 %660 to i32
  %662 = icmp slt i32 %661, 1
  br i1 %662, label %666, label %663

663:                                              ; preds = %652
  %664 = add i32 %653, %661
  %665 = icmp ult i32 %664, %650
  br i1 %665, label %652, label %679, !llvm.loop !45

666:                                              ; preds = %652
  %667 = icmp slt i32 %661, 0
  br i1 %667, label %668, label %675

668:                                              ; preds = %666
  %669 = load i32, ptr %651, align 4, !tbaa !4
  %670 = icmp eq i32 %669, 11
  br i1 %670, label %671, label %676

671:                                              ; preds = %668
  store i32 1, ptr %452, align 4, !tbaa !17
  %672 = icmp eq i32 %653, 0
  br i1 %672, label %673, label %679

673:                                              ; preds = %671
  %674 = load i32, ptr %651, align 4, !tbaa !4
  br label %676

675:                                              ; preds = %666
  store i32 1, ptr %444, align 8, !tbaa !22
  br label %679

676:                                              ; preds = %668, %673
  %677 = phi i32 [ %674, %673 ], [ %669, %668 ]
  %678 = tail call ptr @strerror(i32 noundef %677) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %678) #12
  br label %865

679:                                              ; preds = %663, %675, %671
  %680 = phi i32 [ %653, %671 ], [ %653, %675 ], [ %664, %663 ]
  %681 = load i32, ptr %445, align 8, !tbaa !32
  %682 = add i32 %681, %680
  store i32 %682, ptr %445, align 8, !tbaa !32
  %683 = load ptr, ptr %451, align 8, !tbaa !27
  store ptr %683, ptr %450, align 8, !tbaa !33
  br label %684

684:                                              ; preds = %679, %531
  %685 = phi i32 [ %682, %679 ], [ %534, %531 ]
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %716, label %687

687:                                              ; preds = %684
  %688 = load i32, ptr %452, align 4, !tbaa !17
  %689 = icmp ne i32 %688, 0
  %690 = icmp ult i32 %685, 4
  %691 = and i1 %690, %689
  br i1 %691, label %716, label %692

692:                                              ; preds = %687
  %693 = icmp ugt i32 %685, 3
  %694 = load ptr, ptr %450, align 8, !tbaa !33
  br i1 %693, label %695, label %712

695:                                              ; preds = %692
  %696 = load i8, ptr %694, align 1, !tbaa !34
  %697 = icmp eq i8 %696, 31
  br i1 %697, label %698, label %712

698:                                              ; preds = %695
  %699 = getelementptr inbounds nuw i8, ptr %694, i64 1
  %700 = load i8, ptr %699, align 1, !tbaa !34
  %701 = icmp eq i8 %700, -117
  br i1 %701, label %702, label %712

702:                                              ; preds = %698
  %703 = getelementptr inbounds nuw i8, ptr %694, i64 2
  %704 = load i8, ptr %703, align 1, !tbaa !34
  %705 = icmp eq i8 %704, 8
  br i1 %705, label %706, label %712

706:                                              ; preds = %702
  %707 = getelementptr inbounds nuw i8, ptr %694, i64 3
  %708 = load i8, ptr %707, align 1, !tbaa !34
  %709 = icmp ult i8 %708, 32
  br i1 %709, label %710, label %712

710:                                              ; preds = %706
  %711 = tail call i32 @inflateReset(ptr noundef nonnull %450) #12
  store i32 2, ptr %446, align 8, !tbaa !24
  store i32 1, ptr %454, align 4, !tbaa !31
  store i32 0, ptr %460, align 8, !tbaa !30
  br label %852

712:                                              ; preds = %706, %702, %698, %695, %692
  %713 = load ptr, ptr %457, align 8, !tbaa !28
  store ptr %713, ptr %443, align 8, !tbaa !20
  %714 = zext i32 %685 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %713, ptr align 1 %694, i64 %714, i1 false)
  %715 = load i32, ptr %445, align 8, !tbaa !32
  store i32 %715, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %445, align 8, !tbaa !32
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %854

716:                                              ; preds = %687, %684, %524
  %717 = load i32, ptr %446, align 8, !tbaa !24
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %1008, label %852

719:                                              ; preds = %494
  %720 = load ptr, ptr %457, align 8, !tbaa !28
  %721 = load i32, ptr %447, align 8, !tbaa !25
  %722 = shl i32 %721, 1
  store i32 0, ptr %452, align 4, !tbaa !17
  %723 = tail call ptr @__errno_location() #14
  store i32 0, ptr %723, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %724

724:                                              ; preds = %735, %719
  %725 = phi i32 [ %737, %735 ], [ 0, %719 ]
  %726 = sub i32 %722, %725
  %727 = tail call i32 @llvm.umin.i32(i32 %726, i32 1073741824)
  %728 = load i32, ptr %453, align 4, !tbaa !44
  %729 = zext i32 %725 to i64
  %730 = getelementptr inbounds nuw i8, ptr %720, i64 %729
  %731 = zext nneg i32 %727 to i64
  %732 = tail call i64 @read(i32 noundef %728, ptr noundef %730, i64 noundef %731) #12
  %733 = trunc i64 %732 to i32
  %734 = icmp slt i32 %733, 1
  br i1 %734, label %739, label %735

735:                                              ; preds = %724
  %736 = load i32, ptr %0, align 4, !tbaa !4
  %737 = add i32 %736, %733
  store i32 %737, ptr %0, align 4, !tbaa !4
  %738 = icmp ult i32 %737, %722
  br i1 %738, label %724, label %753, !llvm.loop !45

739:                                              ; preds = %724
  %740 = icmp slt i32 %733, 0
  br i1 %740, label %741, label %749

741:                                              ; preds = %739
  %742 = load i32, ptr %723, align 4, !tbaa !4
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %750

744:                                              ; preds = %741
  store i32 1, ptr %452, align 4, !tbaa !17
  %745 = load i32, ptr %0, align 4, !tbaa !4
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %753

747:                                              ; preds = %744
  %748 = load i32, ptr %723, align 4, !tbaa !4
  br label %750

749:                                              ; preds = %739
  store i32 1, ptr %444, align 8, !tbaa !22
  br label %753

750:                                              ; preds = %747, %741
  %751 = phi i32 [ %748, %747 ], [ %742, %741 ]
  %752 = tail call ptr @strerror(i32 noundef %751) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %752) #12
  br label %865

753:                                              ; preds = %735, %749, %744
  %754 = load ptr, ptr %457, align 8, !tbaa !28
  store ptr %754, ptr %443, align 8, !tbaa !20
  br label %1008

755:                                              ; preds = %494
  %756 = load i32, ptr %447, align 8, !tbaa !25
  %757 = shl i32 %756, 1
  store i32 %757, ptr %448, align 8, !tbaa !46
  %758 = load ptr, ptr %457, align 8, !tbaa !28
  store ptr %758, ptr %449, align 8, !tbaa !47
  br label %759

759:                                              ; preds = %831, %755
  %760 = phi i32 [ 0, %755 ], [ %811, %831 ]
  %761 = load i32, ptr %445, align 8, !tbaa !32
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %810

763:                                              ; preds = %759
  %764 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %764, label %842 [
    i32 0, label %765
    i32 -5, label %765
  ]

765:                                              ; preds = %763, %763
  %766 = load i32, ptr %444, align 8, !tbaa !22
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %806

768:                                              ; preds = %765
  %769 = load ptr, ptr %451, align 8, !tbaa !27
  %770 = load i32, ptr %447, align 8, !tbaa !25
  store i32 0, ptr %452, align 4, !tbaa !17
  %771 = tail call ptr @__errno_location() #14
  store i32 0, ptr %771, align 4, !tbaa !4
  br label %772

772:                                              ; preds = %783, %768
  %773 = phi i32 [ 0, %768 ], [ %784, %783 ]
  %774 = sub i32 %770, %773
  %775 = tail call i32 @llvm.umin.i32(i32 %774, i32 1073741824)
  %776 = load i32, ptr %453, align 4, !tbaa !44
  %777 = zext i32 %773 to i64
  %778 = getelementptr inbounds nuw i8, ptr %769, i64 %777
  %779 = zext nneg i32 %775 to i64
  %780 = tail call i64 @read(i32 noundef %776, ptr noundef %778, i64 noundef %779) #12
  %781 = trunc i64 %780 to i32
  %782 = icmp slt i32 %781, 1
  br i1 %782, label %786, label %783

783:                                              ; preds = %772
  %784 = add i32 %773, %781
  %785 = icmp ult i32 %784, %770
  br i1 %785, label %772, label %800, !llvm.loop !45

786:                                              ; preds = %772
  %787 = icmp slt i32 %781, 0
  br i1 %787, label %788, label %795

788:                                              ; preds = %786
  %789 = load i32, ptr %771, align 4, !tbaa !4
  %790 = icmp eq i32 %789, 11
  br i1 %790, label %791, label %796

791:                                              ; preds = %788
  store i32 1, ptr %452, align 4, !tbaa !17
  %792 = icmp eq i32 %773, 0
  br i1 %792, label %793, label %800

793:                                              ; preds = %791
  %794 = load i32, ptr %771, align 4, !tbaa !4
  br label %796

795:                                              ; preds = %786
  store i32 1, ptr %444, align 8, !tbaa !22
  br label %800

796:                                              ; preds = %788, %793
  %797 = phi i32 [ %794, %793 ], [ %789, %788 ]
  %798 = tail call ptr @strerror(i32 noundef %797) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %798) #12
  %799 = load i32, ptr %10, align 8, !tbaa !16
  br label %842

800:                                              ; preds = %783, %795, %791
  %801 = phi i32 [ %773, %791 ], [ %773, %795 ], [ %784, %783 ]
  %802 = load i32, ptr %445, align 8, !tbaa !32
  %803 = add i32 %802, %801
  store i32 %803, ptr %445, align 8, !tbaa !32
  %804 = load ptr, ptr %451, align 8, !tbaa !27
  store ptr %804, ptr %450, align 8, !tbaa !33
  %805 = icmp eq i32 %803, 0
  br i1 %805, label %806, label %810

806:                                              ; preds = %800, %765
  %807 = load i32, ptr %452, align 4, !tbaa !17
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %842

809:                                              ; preds = %806
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %842

810:                                              ; preds = %800, %759
  %811 = tail call i32 @inflate(ptr noundef nonnull %450, i32 noundef 0) #12
  %812 = load i32, ptr %448, align 8, !tbaa !46
  %813 = icmp ult i32 %812, %757
  br i1 %813, label %814, label %815

814:                                              ; preds = %810
  store i32 0, ptr %454, align 4, !tbaa !31
  br label %815

815:                                              ; preds = %814, %810
  switch i32 %811, label %831 [
    i32 -2, label %816
    i32 2, label %816
    i32 -4, label %817
    i32 -3, label %818
  ]

816:                                              ; preds = %815, %815
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %842

817:                                              ; preds = %815
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %835

818:                                              ; preds = %815
  %819 = load i32, ptr %454, align 4, !tbaa !31
  %820 = icmp eq i32 %819, 1
  br i1 %820, label %821, label %827

821:                                              ; preds = %818
  store i32 0, ptr %445, align 8, !tbaa !32
  store i32 1, ptr %444, align 8, !tbaa !22
  store i32 0, ptr %446, align 8, !tbaa !24
  %822 = sub i32 %757, %812
  store i32 %822, ptr %0, align 8, !tbaa !19
  %823 = load ptr, ptr %449, align 8, !tbaa !47
  %824 = zext i32 %822 to i64
  %825 = sub nsw i64 0, %824
  %826 = getelementptr inbounds i8, ptr %823, i64 %825
  store ptr %826, ptr %443, align 8, !tbaa !20
  br label %852

827:                                              ; preds = %818
  %828 = load ptr, ptr %455, align 8, !tbaa !48
  %829 = icmp eq ptr %828, null
  %830 = select i1 %829, ptr @.str.6, ptr %828
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %830) #12
  br label %835

831:                                              ; preds = %815
  %832 = icmp ne i32 %812, 0
  %833 = icmp ne i32 %811, 1
  %834 = select i1 %832, i1 %833, i1 false
  br i1 %834, label %759, label %842, !llvm.loop !49

835:                                              ; preds = %827, %817
  %836 = load i32, ptr %448, align 8, !tbaa !46
  %837 = sub i32 %757, %836
  store i32 %837, ptr %0, align 8, !tbaa !19
  %838 = load ptr, ptr %449, align 8, !tbaa !47
  %839 = zext i32 %837 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %838, i64 %840
  store ptr %841, ptr %443, align 8, !tbaa !20
  br label %865

842:                                              ; preds = %831, %763, %816, %809, %806, %796
  %843 = phi i32 [ %799, %796 ], [ %760, %806 ], [ %760, %809 ], [ %811, %816 ], [ %764, %763 ], [ %811, %831 ]
  %844 = load i32, ptr %448, align 8, !tbaa !46
  %845 = sub i32 %757, %844
  store i32 %845, ptr %0, align 8, !tbaa !19
  %846 = load ptr, ptr %449, align 8, !tbaa !47
  %847 = zext i32 %845 to i64
  %848 = sub nsw i64 0, %847
  %849 = getelementptr inbounds i8, ptr %846, i64 %848
  store ptr %849, ptr %443, align 8, !tbaa !20
  switch i32 %843, label %865 [
    i32 1, label %850
    i32 0, label %852
  ]

850:                                              ; preds = %842
  store i32 0, ptr %454, align 4, !tbaa !31
  store i32 0, ptr %446, align 8, !tbaa !24
  br label %852

851:                                              ; preds = %494
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %865

852:                                              ; preds = %850, %842, %821, %716, %710
  %853 = load i32, ptr %0, align 8, !tbaa !19
  br label %854

854:                                              ; preds = %852, %712
  %855 = phi i32 [ %853, %852 ], [ %715, %712 ]
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %1008

857:                                              ; preds = %854
  %858 = load i32, ptr %444, align 8, !tbaa !22
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %863, label %860

860:                                              ; preds = %857
  %861 = load i32, ptr %445, align 8, !tbaa !32
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %1008, label %863

863:                                              ; preds = %860, %857
  %864 = load i32, ptr %446, align 8, !tbaa !24
  br label %494, !llvm.loop !50

865:                                              ; preds = %842, %529, %851, %835, %750, %676, %515, %510
  %866 = load i32, ptr %0, align 8, !tbaa !19
  %867 = icmp eq i32 %866, 0
  %868 = sext i1 %867 to i32
  br label %1008

869:                                              ; preds = %489
  %870 = icmp eq i32 %487, 1
  br i1 %870, label %871, label %900

871:                                              ; preds = %869
  store i32 0, ptr %452, align 4, !tbaa !17
  %872 = tail call ptr @__errno_location() #14
  store i32 0, ptr %872, align 4, !tbaa !4
  br label %873

873:                                              ; preds = %884, %871
  %874 = phi i32 [ 0, %871 ], [ %885, %884 ]
  %875 = sub i32 %466, %874
  %876 = tail call i32 @llvm.umin.i32(i32 %875, i32 1073741824)
  %877 = load i32, ptr %453, align 4, !tbaa !44
  %878 = zext i32 %874 to i64
  %879 = getelementptr inbounds nuw i8, ptr %462, i64 %878
  %880 = zext nneg i32 %876 to i64
  %881 = tail call i64 @read(i32 noundef %877, ptr noundef %879, i64 noundef %880) #12
  %882 = trunc i64 %881 to i32
  %883 = icmp slt i32 %882, 1
  br i1 %883, label %887, label %884

884:                                              ; preds = %873
  %885 = add i32 %874, %882
  %886 = icmp ult i32 %885, %466
  br i1 %886, label %873, label %998, !llvm.loop !45

887:                                              ; preds = %873
  %888 = icmp slt i32 %882, 0
  br i1 %888, label %889, label %899

889:                                              ; preds = %887
  %890 = load i32, ptr %872, align 4, !tbaa !4
  %891 = icmp eq i32 %890, 11
  br i1 %891, label %892, label %896

892:                                              ; preds = %889
  store i32 1, ptr %452, align 4, !tbaa !17
  %893 = icmp eq i32 %874, 0
  br i1 %893, label %894, label %1000

894:                                              ; preds = %892
  %895 = load i32, ptr %872, align 4, !tbaa !4
  br label %896

896:                                              ; preds = %894, %889
  %897 = phi i32 [ %895, %894 ], [ %890, %889 ]
  %898 = tail call ptr @strerror(i32 noundef %897) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %898) #12
  br label %1000

899:                                              ; preds = %887
  store i32 1, ptr %444, align 8, !tbaa !22
  br label %1000

900:                                              ; preds = %869
  store i32 %466, ptr %448, align 8, !tbaa !56
  store ptr %462, ptr %449, align 8, !tbaa !57
  br label %901

901:                                              ; preds = %968, %900
  %902 = phi i32 [ 0, %900 ], [ %953, %968 ]
  %903 = load i32, ptr %445, align 8, !tbaa !32
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %952

905:                                              ; preds = %901
  %906 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %906, label %980 [
    i32 0, label %907
    i32 -5, label %907
  ]

907:                                              ; preds = %905, %905
  %908 = load i32, ptr %444, align 8, !tbaa !22
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %948

910:                                              ; preds = %907
  %911 = load ptr, ptr %451, align 8, !tbaa !27
  %912 = load i32, ptr %447, align 8, !tbaa !25
  store i32 0, ptr %452, align 4, !tbaa !17
  %913 = tail call ptr @__errno_location() #14
  store i32 0, ptr %913, align 4, !tbaa !4
  br label %914

914:                                              ; preds = %925, %910
  %915 = phi i32 [ 0, %910 ], [ %926, %925 ]
  %916 = sub i32 %912, %915
  %917 = tail call i32 @llvm.umin.i32(i32 %916, i32 1073741824)
  %918 = load i32, ptr %453, align 4, !tbaa !44
  %919 = zext i32 %915 to i64
  %920 = getelementptr inbounds nuw i8, ptr %911, i64 %919
  %921 = zext nneg i32 %917 to i64
  %922 = tail call i64 @read(i32 noundef %918, ptr noundef %920, i64 noundef %921) #12
  %923 = trunc i64 %922 to i32
  %924 = icmp slt i32 %923, 1
  br i1 %924, label %928, label %925

925:                                              ; preds = %914
  %926 = add i32 %915, %923
  %927 = icmp ult i32 %926, %912
  br i1 %927, label %914, label %942, !llvm.loop !45

928:                                              ; preds = %914
  %929 = icmp slt i32 %923, 0
  br i1 %929, label %930, label %937

930:                                              ; preds = %928
  %931 = load i32, ptr %913, align 4, !tbaa !4
  %932 = icmp eq i32 %931, 11
  br i1 %932, label %933, label %938

933:                                              ; preds = %930
  store i32 1, ptr %452, align 4, !tbaa !17
  %934 = icmp eq i32 %915, 0
  br i1 %934, label %935, label %942

935:                                              ; preds = %933
  %936 = load i32, ptr %913, align 4, !tbaa !4
  br label %938

937:                                              ; preds = %928
  store i32 1, ptr %444, align 8, !tbaa !22
  br label %942

938:                                              ; preds = %930, %935
  %939 = phi i32 [ %936, %935 ], [ %931, %930 ]
  %940 = tail call ptr @strerror(i32 noundef %939) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %940) #12
  %941 = load i32, ptr %10, align 8, !tbaa !16
  br label %980

942:                                              ; preds = %925, %937, %933
  %943 = phi i32 [ %915, %933 ], [ %915, %937 ], [ %926, %925 ]
  %944 = load i32, ptr %445, align 8, !tbaa !32
  %945 = add i32 %944, %943
  store i32 %945, ptr %445, align 8, !tbaa !32
  %946 = load ptr, ptr %451, align 8, !tbaa !27
  store ptr %946, ptr %450, align 8, !tbaa !33
  %947 = icmp eq i32 %945, 0
  br i1 %947, label %948, label %952

948:                                              ; preds = %942, %907
  %949 = load i32, ptr %452, align 4, !tbaa !17
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %980

951:                                              ; preds = %948
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %980

952:                                              ; preds = %942, %901
  %953 = tail call i32 @inflate(ptr noundef nonnull %450, i32 noundef 0) #12
  %954 = load i32, ptr %448, align 8, !tbaa !46
  %955 = icmp ult i32 %954, %466
  br i1 %955, label %956, label %957

956:                                              ; preds = %952
  store i32 0, ptr %454, align 4, !tbaa !31
  br label %957

957:                                              ; preds = %956, %952
  switch i32 %953, label %968 [
    i32 -2, label %958
    i32 2, label %958
    i32 -4, label %959
    i32 -3, label %960
  ]

958:                                              ; preds = %957, %957
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %980

959:                                              ; preds = %957
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %972

960:                                              ; preds = %957
  %961 = load i32, ptr %454, align 4, !tbaa !31
  %962 = icmp eq i32 %961, 1
  br i1 %962, label %963, label %964

963:                                              ; preds = %960
  store i32 0, ptr %445, align 8, !tbaa !32
  store i32 1, ptr %444, align 8, !tbaa !22
  store i32 0, ptr %446, align 8, !tbaa !24
  br label %972

964:                                              ; preds = %960
  %965 = load ptr, ptr %455, align 8, !tbaa !48
  %966 = icmp eq ptr %965, null
  %967 = select i1 %966, ptr @.str.6, ptr %965
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %967) #12
  br label %972

968:                                              ; preds = %957
  %969 = icmp ne i32 %954, 0
  %970 = icmp ne i32 %953, 1
  %971 = select i1 %969, i1 %970, i1 false
  br i1 %971, label %901, label %980, !llvm.loop !49

972:                                              ; preds = %959, %963, %964
  %973 = phi i32 [ -3, %964 ], [ 0, %963 ], [ -4, %959 ]
  %974 = load i32, ptr %448, align 8, !tbaa !46
  %975 = sub i32 %466, %974
  %976 = load ptr, ptr %449, align 8, !tbaa !47
  %977 = zext i32 %975 to i64
  %978 = sub nsw i64 0, %977
  %979 = getelementptr inbounds i8, ptr %976, i64 %978
  store ptr %979, ptr %443, align 8, !tbaa !20
  br label %990

980:                                              ; preds = %968, %905, %958, %951, %948, %938
  %981 = phi i32 [ %941, %938 ], [ %902, %948 ], [ %902, %951 ], [ %953, %958 ], [ %906, %905 ], [ %953, %968 ]
  %982 = load i32, ptr %448, align 8, !tbaa !46
  %983 = sub i32 %466, %982
  %984 = load ptr, ptr %449, align 8, !tbaa !47
  %985 = zext i32 %983 to i64
  %986 = sub nsw i64 0, %985
  %987 = getelementptr inbounds i8, ptr %984, i64 %986
  store ptr %987, ptr %443, align 8, !tbaa !20
  %988 = icmp eq i32 %981, 1
  br i1 %988, label %989, label %990

989:                                              ; preds = %980
  store i32 0, ptr %454, align 4, !tbaa !31
  store i32 0, ptr %446, align 8, !tbaa !24
  br label %995

990:                                              ; preds = %972, %980
  %991 = phi i64 [ %977, %972 ], [ %985, %980 ]
  %992 = phi i32 [ %973, %972 ], [ %981, %980 ]
  %993 = icmp ne i32 %992, 0
  %994 = sext i1 %993 to i32
  br label %995

995:                                              ; preds = %990, %989
  %996 = phi i64 [ %985, %989 ], [ %991, %990 ]
  %997 = phi i32 [ 0, %989 ], [ %994, %990 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1000

998:                                              ; preds = %884
  %999 = zext i32 %885 to i64
  br label %1000

1000:                                             ; preds = %998, %995, %899, %896, %892, %469
  %1001 = phi i64 [ %999, %998 ], [ %878, %899 ], [ %878, %896 ], [ %878, %892 ], [ %472, %469 ], [ %996, %995 ]
  %1002 = phi i32 [ 0, %998 ], [ 0, %899 ], [ -1, %896 ], [ 0, %892 ], [ %479, %469 ], [ %997, %995 ]
  %1003 = sub i64 %463, %1001
  %1004 = getelementptr inbounds nuw i8, ptr %462, i64 %1001
  %1005 = add i64 %1001, %464
  %1006 = load i64, ptr %456, align 8, !tbaa !21
  %1007 = add nsw i64 %1006, %1001
  store i64 %1007, ptr %456, align 8, !tbaa !21
  br label %1008

1008:                                             ; preds = %860, %854, %716, %1000, %865, %753
  %1009 = phi ptr [ %1004, %1000 ], [ %462, %865 ], [ %462, %753 ], [ %462, %716 ], [ %462, %854 ], [ %462, %860 ]
  %1010 = phi i64 [ %1003, %1000 ], [ %463, %865 ], [ %463, %753 ], [ %463, %716 ], [ %463, %854 ], [ %463, %860 ]
  %1011 = phi i64 [ %1005, %1000 ], [ %464, %865 ], [ %464, %753 ], [ %464, %716 ], [ %464, %854 ], [ %464, %860 ]
  %1012 = phi i32 [ %1002, %1000 ], [ %868, %865 ], [ 0, %753 ], [ 0, %716 ], [ 0, %854 ], [ 0, %860 ]
  %1013 = icmp eq i64 %1010, 0
  br i1 %1013, label %1022, label %1014

1014:                                             ; preds = %1008
  %1015 = icmp eq i32 %1012, 0
  br i1 %1015, label %461, label %1016, !llvm.loop !58

1016:                                             ; preds = %1014
  %1017 = load i32, ptr %444, align 8, !tbaa !22
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1022, label %1019

1019:                                             ; preds = %483, %1016
  %1020 = phi i64 [ %1011, %1016 ], [ %464, %483 ]
  %1021 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1021, align 4, !tbaa !59
  br label %1022

1022:                                             ; preds = %1008, %1016, %1019
  %1023 = phi i64 [ %1011, %1016 ], [ %1020, %1019 ], [ %1011, %1008 ]
  %1024 = trunc i64 %1023 to i32
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1038

1026:                                             ; preds = %415, %1022, %87, %19, %408, %424, %322, %248, %82
  %1027 = load i32, ptr %10, align 8, !tbaa !16
  br label %1028

1028:                                             ; preds = %101, %1026
  %1029 = phi i32 [ %1027, %1026 ], [ %102, %101 ]
  switch i32 %1029, label %1038 [
    i32 0, label %1030
    i32 -5, label %1030
  ]

1030:                                             ; preds = %1028, %1028
  %1031 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1032 = load i32, ptr %1031, align 4, !tbaa !17
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1038, label %1034

1034:                                             ; preds = %1030
  %1035 = tail call ptr @__errno_location() #14
  %1036 = load i32, ptr %1035, align 4, !tbaa !4
  %1037 = tail call ptr @strerror(i32 noundef %1036) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1037) #12
  br label %1038

1038:                                             ; preds = %1022, %1030, %1028, %12, %5, %3, %1034, %18
  %1039 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1034 ], [ -1, %1028 ], [ 0, %1030 ], [ %1024, %1022 ]
  ret i32 %1039
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1029, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1029

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %12, label %13 [
    i32 0, label %17
    i32 -5, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %1029, label %17

17:                                               ; preds = %10, %10, %13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #12
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = icmp eq i64 %1, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = extractvalue { i64, i1 } %18, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #12
  br label %1029

24:                                               ; preds = %21, %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %1029, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %446, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %48

48:                                               ; preds = %443, %30
  %49 = phi i64 [ %444, %443 ], [ %28, %30 ]
  %50 = load i32, ptr %3, align 8, !tbaa !19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = zext i32 %50 to i64
  %54 = tail call i64 @llvm.smin.i64(i64 %49, i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %50, %55
  store i32 %56, ptr %3, align 8, !tbaa !19
  %57 = load ptr, ptr %31, align 8, !tbaa !20
  %58 = and i64 %54, 4294967295
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 %58
  store ptr %59, ptr %31, align 8, !tbaa !20
  %60 = load i64, ptr %32, align 8, !tbaa !21
  %61 = add nsw i64 %60, %58
  store i64 %61, ptr %32, align 8, !tbaa !21
  %62 = sub nsw i64 %49, %58
  store i64 %62, ptr %27, align 8, !tbaa !18
  br label %443

63:                                               ; preds = %48
  %64 = load i32, ptr %33, align 8, !tbaa !22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %34, align 8, !tbaa !23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %446, label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %440, %69
  %71 = load i32, ptr %35, align 8, !tbaa !24
  switch i32 %71, label %428 [
    i32 0, label %72
    i32 1, label %295
    i32 2, label %331
  ]

72:                                               ; preds = %70
  %73 = load i32, ptr %36, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, ptr %45, align 4, !tbaa !26
  %77 = zext i32 %76 to i64
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #13
  store ptr %78, ptr %41, align 8, !tbaa !27
  %79 = load i32, ptr %45, align 4, !tbaa !26
  %80 = shl i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @malloc(i64 noundef %81) #13
  store ptr %82, ptr %38, align 8, !tbaa !28
  %83 = icmp eq ptr %78, null
  %84 = icmp eq ptr %82, null
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  tail call void @free(ptr noundef %82) #12
  tail call void @free(ptr noundef %78) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1026

87:                                               ; preds = %75
  %88 = load i32, ptr %45, align 4, !tbaa !26
  store i32 %88, ptr %36, align 8, !tbaa !25
  store i32 0, ptr %34, align 8, !tbaa !23
  store ptr null, ptr %40, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %89 = tail call i32 @inflateInit2_(ptr noundef nonnull %40, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %38, align 8, !tbaa !28
  tail call void @free(ptr noundef %92) #12
  %93 = load ptr, ptr %41, align 8, !tbaa !27
  tail call void @free(ptr noundef %93) #12
  store i32 0, ptr %36, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1026

94:                                               ; preds = %87, %72
  %95 = load i32, ptr %47, align 8, !tbaa !30
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %44, align 4, !tbaa !31
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %94
  %101 = tail call i32 @inflateReset(ptr noundef nonnull %40) #12
  store i32 2, ptr %35, align 8, !tbaa !24
  %102 = load i32, ptr %44, align 4, !tbaa !31
  %103 = icmp ne i32 %102, -1
  %104 = zext i1 %103 to i32
  store i32 %104, ptr %44, align 4, !tbaa !31
  store i32 0, ptr %47, align 8, !tbaa !30
  br label %292

105:                                              ; preds = %97
  %106 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %106, label %1026 [
    i32 0, label %107
    i32 -5, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = load i32, ptr %33, align 8, !tbaa !22
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %34, align 8, !tbaa !32
  br i1 %109, label %111, label %260

111:                                              ; preds = %107
  %112 = icmp eq i32 %110, 0
  %113 = load ptr, ptr %41, align 8, !tbaa !27
  %114 = ptrtoaddr ptr %113 to i64
  br i1 %112, label %220, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %40, align 8, !tbaa !33
  %117 = icmp eq ptr %116, %113
  br i1 %117, label %220, label %118

118:                                              ; preds = %115
  %119 = ptrtoaddr ptr %116 to i64
  %120 = zext i32 %110 to i64
  %121 = icmp ult i32 %110, 4
  %122 = sub i64 %114, %119
  %123 = icmp ult i64 %122, 32
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %164, label %125

125:                                              ; preds = %118
  %126 = icmp ult i32 %110, 32
  br i1 %126, label %148, label %127

127:                                              ; preds = %125
  %128 = and i64 %120, 28
  %129 = and i64 %120, 4294967264
  %130 = getelementptr i8, ptr %113, i64 %129
  %131 = getelementptr i8, ptr %116, i64 %129
  %132 = trunc nuw i64 %129 to i32
  %133 = sub i32 %110, %132
  br label %134

134:                                              ; preds = %134, %127
  %135 = phi i64 [ 0, %127 ], [ %142, %134 ]
  %136 = getelementptr i8, ptr %113, i64 %135
  %137 = getelementptr i8, ptr %116, i64 %135
  %138 = getelementptr i8, ptr %137, i64 16
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !34
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !34
  %141 = getelementptr i8, ptr %136, i64 16
  store <16 x i8> %139, ptr %136, align 1, !tbaa !34
  store <16 x i8> %140, ptr %141, align 1, !tbaa !34
  %142 = add nuw i64 %135, 32
  %143 = icmp eq i64 %142, %129
  br i1 %143, label %144, label %134, !llvm.loop !60

144:                                              ; preds = %134
  %145 = icmp eq i64 %129, %120
  br i1 %145, label %217, label %146

146:                                              ; preds = %144
  %147 = icmp eq i64 %128, 0
  br i1 %147, label %164, label %148, !prof !39

148:                                              ; preds = %125, %146
  %149 = phi i64 [ %129, %146 ], [ 0, %125 ]
  %150 = and i64 %120, 4294967292
  %151 = getelementptr i8, ptr %113, i64 %150
  %152 = getelementptr i8, ptr %116, i64 %150
  %153 = trunc nuw i64 %150 to i32
  %154 = sub i32 %110, %153
  br label %155

155:                                              ; preds = %155, %148
  %156 = phi i64 [ %149, %148 ], [ %160, %155 ]
  %157 = getelementptr i8, ptr %113, i64 %156
  %158 = getelementptr i8, ptr %116, i64 %156
  %159 = load <4 x i8>, ptr %158, align 1, !tbaa !34
  store <4 x i8> %159, ptr %157, align 1, !tbaa !34
  %160 = add nuw i64 %156, 4
  %161 = icmp eq i64 %160, %150
  br i1 %161, label %162, label %155, !llvm.loop !61

162:                                              ; preds = %155
  %163 = icmp eq i64 %150, %120
  br i1 %163, label %217, label %164

164:                                              ; preds = %118, %146, %162
  %165 = phi ptr [ %113, %118 ], [ %130, %146 ], [ %151, %162 ]
  %166 = phi ptr [ %116, %118 ], [ %131, %146 ], [ %152, %162 ]
  %167 = phi i32 [ %110, %118 ], [ %133, %146 ], [ %154, %162 ]
  %168 = add i32 %167, -1
  %169 = and i32 %167, 7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %164, %171
  %172 = phi ptr [ %178, %171 ], [ %165, %164 ]
  %173 = phi ptr [ %176, %171 ], [ %166, %164 ]
  %174 = phi i32 [ %179, %171 ], [ %167, %164 ]
  %175 = phi i32 [ %180, %171 ], [ 0, %164 ]
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %177 = load i8, ptr %173, align 1, !tbaa !34
  %178 = getelementptr inbounds nuw i8, ptr %172, i64 1
  store i8 %177, ptr %172, align 1, !tbaa !34
  %179 = add i32 %174, -1
  %180 = add i32 %175, 1
  %181 = icmp eq i32 %180, %169
  br i1 %181, label %182, label %171, !llvm.loop !62

182:                                              ; preds = %171, %164
  %183 = phi ptr [ %165, %164 ], [ %178, %171 ]
  %184 = phi ptr [ %166, %164 ], [ %176, %171 ]
  %185 = phi i32 [ %167, %164 ], [ %179, %171 ]
  %186 = icmp ult i32 %168, 7
  br i1 %186, label %217, label %187

187:                                              ; preds = %182, %187
  %188 = phi ptr [ %214, %187 ], [ %183, %182 ]
  %189 = phi ptr [ %212, %187 ], [ %184, %182 ]
  %190 = phi i32 [ %215, %187 ], [ %185, %182 ]
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %192 = load i8, ptr %189, align 1, !tbaa !34
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 1
  store i8 %192, ptr %188, align 1, !tbaa !34
  %194 = getelementptr inbounds nuw i8, ptr %189, i64 2
  %195 = load i8, ptr %191, align 1, !tbaa !34
  %196 = getelementptr inbounds nuw i8, ptr %188, i64 2
  store i8 %195, ptr %193, align 1, !tbaa !34
  %197 = getelementptr inbounds nuw i8, ptr %189, i64 3
  %198 = load i8, ptr %194, align 1, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %188, i64 3
  store i8 %198, ptr %196, align 1, !tbaa !34
  %200 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %201 = load i8, ptr %197, align 1, !tbaa !34
  %202 = getelementptr inbounds nuw i8, ptr %188, i64 4
  store i8 %201, ptr %199, align 1, !tbaa !34
  %203 = getelementptr inbounds nuw i8, ptr %189, i64 5
  %204 = load i8, ptr %200, align 1, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %188, i64 5
  store i8 %204, ptr %202, align 1, !tbaa !34
  %206 = getelementptr inbounds nuw i8, ptr %189, i64 6
  %207 = load i8, ptr %203, align 1, !tbaa !34
  %208 = getelementptr inbounds nuw i8, ptr %188, i64 6
  store i8 %207, ptr %205, align 1, !tbaa !34
  %209 = getelementptr inbounds nuw i8, ptr %189, i64 7
  %210 = load i8, ptr %206, align 1, !tbaa !34
  %211 = getelementptr inbounds nuw i8, ptr %188, i64 7
  store i8 %210, ptr %208, align 1, !tbaa !34
  %212 = getelementptr inbounds nuw i8, ptr %189, i64 8
  %213 = load i8, ptr %209, align 1, !tbaa !34
  %214 = getelementptr inbounds nuw i8, ptr %188, i64 8
  store i8 %213, ptr %211, align 1, !tbaa !34
  %215 = add i32 %190, -8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %187, !llvm.loop !63

217:                                              ; preds = %182, %187, %162, %144
  %218 = load i32, ptr %34, align 8, !tbaa !32
  %219 = load ptr, ptr %41, align 8, !tbaa !27
  br label %220

220:                                              ; preds = %217, %115, %111
  %221 = phi ptr [ %219, %217 ], [ %113, %115 ], [ %113, %111 ]
  %222 = phi i32 [ %218, %217 ], [ %110, %115 ], [ 0, %111 ]
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %223
  %225 = load i32, ptr %36, align 8, !tbaa !25
  %226 = sub i32 %225, %222
  store i32 0, ptr %42, align 4, !tbaa !17
  %227 = tail call ptr @__errno_location() #14
  store i32 0, ptr %227, align 4, !tbaa !4
  br label %228

228:                                              ; preds = %239, %220
  %229 = phi i32 [ 0, %220 ], [ %240, %239 ]
  %230 = sub i32 %226, %229
  %231 = tail call i32 @llvm.umin.i32(i32 %230, i32 1073741824)
  %232 = load i32, ptr %43, align 4, !tbaa !44
  %233 = zext i32 %229 to i64
  %234 = getelementptr inbounds nuw i8, ptr %224, i64 %233
  %235 = zext nneg i32 %231 to i64
  %236 = tail call i64 @read(i32 noundef %232, ptr noundef %234, i64 noundef %235) #12
  %237 = trunc i64 %236 to i32
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %242, label %239

239:                                              ; preds = %228
  %240 = add i32 %229, %237
  %241 = icmp ult i32 %240, %226
  br i1 %241, label %228, label %255, !llvm.loop !45

242:                                              ; preds = %228
  %243 = icmp slt i32 %237, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %242
  %245 = load i32, ptr %227, align 4, !tbaa !4
  %246 = icmp eq i32 %245, 11
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  store i32 1, ptr %42, align 4, !tbaa !17
  %248 = icmp eq i32 %229, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %247
  %250 = load i32, ptr %227, align 4, !tbaa !4
  br label %252

251:                                              ; preds = %242
  store i32 1, ptr %33, align 8, !tbaa !22
  br label %255

252:                                              ; preds = %244, %249
  %253 = phi i32 [ %250, %249 ], [ %245, %244 ]
  %254 = tail call ptr @strerror(i32 noundef %253) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %254) #12
  br label %1026

255:                                              ; preds = %239, %251, %247
  %256 = phi i32 [ %229, %247 ], [ %229, %251 ], [ %240, %239 ]
  %257 = load i32, ptr %34, align 8, !tbaa !32
  %258 = add i32 %257, %256
  store i32 %258, ptr %34, align 8, !tbaa !32
  %259 = load ptr, ptr %41, align 8, !tbaa !27
  store ptr %259, ptr %40, align 8, !tbaa !33
  br label %260

260:                                              ; preds = %255, %107
  %261 = phi i32 [ %258, %255 ], [ %110, %107 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %292, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %42, align 4, !tbaa !17
  %265 = icmp ne i32 %264, 0
  %266 = icmp ult i32 %261, 4
  %267 = and i1 %266, %265
  br i1 %267, label %292, label %268

268:                                              ; preds = %263
  %269 = icmp ugt i32 %261, 3
  %270 = load ptr, ptr %40, align 8, !tbaa !33
  br i1 %269, label %271, label %288

271:                                              ; preds = %268
  %272 = load i8, ptr %270, align 1, !tbaa !34
  %273 = icmp eq i8 %272, 31
  br i1 %273, label %274, label %288

274:                                              ; preds = %271
  %275 = getelementptr inbounds nuw i8, ptr %270, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !34
  %277 = icmp eq i8 %276, -117
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw i8, ptr %270, i64 2
  %280 = load i8, ptr %279, align 1, !tbaa !34
  %281 = icmp eq i8 %280, 8
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = getelementptr inbounds nuw i8, ptr %270, i64 3
  %284 = load i8, ptr %283, align 1, !tbaa !34
  %285 = icmp ult i8 %284, 32
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = tail call i32 @inflateReset(ptr noundef nonnull %40) #12
  store i32 2, ptr %35, align 8, !tbaa !24
  store i32 1, ptr %44, align 4, !tbaa !31
  store i32 0, ptr %47, align 8, !tbaa !30
  br label %429

288:                                              ; preds = %282, %278, %274, %271, %268
  %289 = load ptr, ptr %38, align 8, !tbaa !28
  store ptr %289, ptr %31, align 8, !tbaa !20
  %290 = zext i32 %261 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %289, ptr align 1 %270, i64 %290, i1 false)
  %291 = load i32, ptr %34, align 8, !tbaa !32
  store i32 %291, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %34, align 8, !tbaa !32
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %431

292:                                              ; preds = %263, %260, %100
  %293 = load i32, ptr %35, align 8, !tbaa !24
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %441, label %429

295:                                              ; preds = %70
  %296 = load ptr, ptr %38, align 8, !tbaa !28
  %297 = load i32, ptr %36, align 8, !tbaa !25
  %298 = shl i32 %297, 1
  store i32 0, ptr %42, align 4, !tbaa !17
  %299 = tail call ptr @__errno_location() #14
  store i32 0, ptr %299, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %300

300:                                              ; preds = %311, %295
  %301 = phi i32 [ %313, %311 ], [ 0, %295 ]
  %302 = sub i32 %298, %301
  %303 = tail call i32 @llvm.umin.i32(i32 %302, i32 1073741824)
  %304 = load i32, ptr %43, align 4, !tbaa !44
  %305 = zext i32 %301 to i64
  %306 = getelementptr inbounds nuw i8, ptr %296, i64 %305
  %307 = zext nneg i32 %303 to i64
  %308 = tail call i64 @read(i32 noundef %304, ptr noundef %306, i64 noundef %307) #12
  %309 = trunc i64 %308 to i32
  %310 = icmp slt i32 %309, 1
  br i1 %310, label %315, label %311

311:                                              ; preds = %300
  %312 = load i32, ptr %3, align 4, !tbaa !4
  %313 = add i32 %312, %309
  store i32 %313, ptr %3, align 4, !tbaa !4
  %314 = icmp ult i32 %313, %298
  br i1 %314, label %300, label %329, !llvm.loop !45

315:                                              ; preds = %300
  %316 = icmp slt i32 %309, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %315
  %318 = load i32, ptr %299, align 4, !tbaa !4
  %319 = icmp eq i32 %318, 11
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  store i32 1, ptr %42, align 4, !tbaa !17
  %321 = load i32, ptr %3, align 4, !tbaa !4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load i32, ptr %299, align 4, !tbaa !4
  br label %326

325:                                              ; preds = %315
  store i32 1, ptr %33, align 8, !tbaa !22
  br label %329

326:                                              ; preds = %317, %323
  %327 = phi i32 [ %324, %323 ], [ %318, %317 ]
  %328 = tail call ptr @strerror(i32 noundef %327) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %328) #12
  br label %1026

329:                                              ; preds = %311, %325, %320
  %330 = load ptr, ptr %38, align 8, !tbaa !28
  store ptr %330, ptr %31, align 8, !tbaa !20
  br label %441

331:                                              ; preds = %70
  %332 = load i32, ptr %36, align 8, !tbaa !25
  %333 = shl i32 %332, 1
  store i32 %333, ptr %37, align 8, !tbaa !46
  %334 = load ptr, ptr %38, align 8, !tbaa !28
  store ptr %334, ptr %39, align 8, !tbaa !47
  br label %335

335:                                              ; preds = %408, %331
  %336 = phi i32 [ 0, %331 ], [ %387, %408 ]
  %337 = load i32, ptr %34, align 8, !tbaa !32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %386

339:                                              ; preds = %335
  %340 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %340, label %419 [
    i32 0, label %341
    i32 -5, label %341
  ]

341:                                              ; preds = %339, %339
  %342 = load i32, ptr %33, align 8, !tbaa !22
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %382

344:                                              ; preds = %341
  %345 = load ptr, ptr %41, align 8, !tbaa !27
  %346 = load i32, ptr %36, align 8, !tbaa !25
  store i32 0, ptr %42, align 4, !tbaa !17
  %347 = tail call ptr @__errno_location() #14
  store i32 0, ptr %347, align 4, !tbaa !4
  br label %348

348:                                              ; preds = %359, %344
  %349 = phi i32 [ 0, %344 ], [ %360, %359 ]
  %350 = sub i32 %346, %349
  %351 = tail call i32 @llvm.umin.i32(i32 %350, i32 1073741824)
  %352 = load i32, ptr %43, align 4, !tbaa !44
  %353 = zext i32 %349 to i64
  %354 = getelementptr inbounds nuw i8, ptr %345, i64 %353
  %355 = zext nneg i32 %351 to i64
  %356 = tail call i64 @read(i32 noundef %352, ptr noundef %354, i64 noundef %355) #12
  %357 = trunc i64 %356 to i32
  %358 = icmp slt i32 %357, 1
  br i1 %358, label %362, label %359

359:                                              ; preds = %348
  %360 = add i32 %349, %357
  %361 = icmp ult i32 %360, %346
  br i1 %361, label %348, label %376, !llvm.loop !45

362:                                              ; preds = %348
  %363 = icmp slt i32 %357, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %362
  %365 = load i32, ptr %347, align 4, !tbaa !4
  %366 = icmp eq i32 %365, 11
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  store i32 1, ptr %42, align 4, !tbaa !17
  %368 = icmp eq i32 %349, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %367
  %370 = load i32, ptr %347, align 4, !tbaa !4
  br label %372

371:                                              ; preds = %362
  store i32 1, ptr %33, align 8, !tbaa !22
  br label %376

372:                                              ; preds = %364, %369
  %373 = phi i32 [ %370, %369 ], [ %365, %364 ]
  %374 = tail call ptr @strerror(i32 noundef %373) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %374) #12
  %375 = load i32, ptr %11, align 8, !tbaa !16
  br label %419

376:                                              ; preds = %359, %371, %367
  %377 = phi i32 [ %349, %367 ], [ %349, %371 ], [ %360, %359 ]
  %378 = load i32, ptr %34, align 8, !tbaa !32
  %379 = add i32 %378, %377
  store i32 %379, ptr %34, align 8, !tbaa !32
  %380 = load ptr, ptr %41, align 8, !tbaa !27
  store ptr %380, ptr %40, align 8, !tbaa !33
  %381 = icmp eq i32 %379, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %376, %341
  %383 = load i32, ptr %42, align 4, !tbaa !17
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %419

385:                                              ; preds = %382
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %419

386:                                              ; preds = %376, %335
  %387 = tail call i32 @inflate(ptr noundef nonnull %40, i32 noundef 0) #12
  %388 = load i32, ptr %37, align 8, !tbaa !46
  %389 = icmp ult i32 %388, %333
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  store i32 0, ptr %44, align 4, !tbaa !31
  br label %391

391:                                              ; preds = %390, %386
  switch i32 %387, label %408 [
    i32 -2, label %392
    i32 2, label %392
    i32 -4, label %393
    i32 -3, label %394
  ]

392:                                              ; preds = %391, %391
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %419

393:                                              ; preds = %391
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %412

394:                                              ; preds = %391
  %395 = load i32, ptr %44, align 4, !tbaa !31
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %397, label %403

397:                                              ; preds = %394
  store i32 0, ptr %34, align 8, !tbaa !32
  store i32 1, ptr %33, align 8, !tbaa !22
  store i32 0, ptr %35, align 8, !tbaa !24
  %398 = sub i32 %333, %388
  store i32 %398, ptr %3, align 8, !tbaa !19
  %399 = load ptr, ptr %39, align 8, !tbaa !47
  %400 = zext i32 %398 to i64
  %401 = sub nsw i64 0, %400
  %402 = getelementptr inbounds i8, ptr %399, i64 %401
  store ptr %402, ptr %31, align 8, !tbaa !20
  br label %429

403:                                              ; preds = %394
  %404 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %405 = load ptr, ptr %404, align 8, !tbaa !48
  %406 = icmp eq ptr %405, null
  %407 = select i1 %406, ptr @.str.6, ptr %405
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %407) #12
  br label %412

408:                                              ; preds = %391
  %409 = icmp ne i32 %388, 0
  %410 = icmp ne i32 %387, 1
  %411 = select i1 %409, i1 %410, i1 false
  br i1 %411, label %335, label %419, !llvm.loop !49

412:                                              ; preds = %403, %393
  %413 = load i32, ptr %37, align 8, !tbaa !46
  %414 = sub i32 %333, %413
  store i32 %414, ptr %3, align 8, !tbaa !19
  %415 = load ptr, ptr %39, align 8, !tbaa !47
  %416 = zext i32 %414 to i64
  %417 = sub nsw i64 0, %416
  %418 = getelementptr inbounds i8, ptr %415, i64 %417
  store ptr %418, ptr %31, align 8, !tbaa !20
  br label %1026

419:                                              ; preds = %408, %339, %392, %385, %382, %372
  %420 = phi i32 [ %375, %372 ], [ %336, %382 ], [ %336, %385 ], [ %387, %392 ], [ %387, %408 ], [ %340, %339 ]
  %421 = load i32, ptr %37, align 8, !tbaa !46
  %422 = sub i32 %333, %421
  store i32 %422, ptr %3, align 8, !tbaa !19
  %423 = load ptr, ptr %39, align 8, !tbaa !47
  %424 = zext i32 %422 to i64
  %425 = sub nsw i64 0, %424
  %426 = getelementptr inbounds i8, ptr %423, i64 %425
  store ptr %426, ptr %31, align 8, !tbaa !20
  switch i32 %420, label %1026 [
    i32 1, label %427
    i32 0, label %429
  ]

427:                                              ; preds = %419
  store i32 0, ptr %44, align 4, !tbaa !31
  store i32 0, ptr %35, align 8, !tbaa !24
  br label %429

428:                                              ; preds = %70
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %1026

429:                                              ; preds = %427, %419, %397, %292, %286
  %430 = load i32, ptr %3, align 8, !tbaa !19
  br label %431

431:                                              ; preds = %429, %288
  %432 = phi i32 [ %430, %429 ], [ %291, %288 ]
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %431
  %435 = load i32, ptr %33, align 8, !tbaa !22
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = load i32, ptr %34, align 8, !tbaa !32
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %437, %434
  br label %70, !llvm.loop !50

441:                                              ; preds = %437, %431, %292, %329
  %442 = load i64, ptr %27, align 8, !tbaa !18
  br label %443

443:                                              ; preds = %441, %52
  %444 = phi i64 [ %442, %441 ], [ %62, %52 ]
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %48, !llvm.loop !51

446:                                              ; preds = %443, %66, %26
  %447 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %448 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %449 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %452 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %453 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %454 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %455 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %456 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %458 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %459 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %460 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %461 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %462 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %463 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %464 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %465

465:                                              ; preds = %1018, %446
  %466 = phi ptr [ %0, %446 ], [ %1013, %1018 ]
  %467 = phi i64 [ %19, %446 ], [ %1014, %1018 ]
  %468 = phi i64 [ 0, %446 ], [ %1015, %1018 ]
  %469 = tail call i64 @llvm.umin.i64(i64 %467, i64 4294967295)
  %470 = trunc nuw i64 %469 to i32
  %471 = load i32, ptr %3, align 8, !tbaa !19
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %465
  %474 = tail call i32 @llvm.umin.i32(i32 %471, i32 %470)
  %475 = load ptr, ptr %447, align 8, !tbaa !20
  %476 = zext i32 %474 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %466, ptr align 1 %475, i64 %476, i1 false)
  %477 = load ptr, ptr %447, align 8, !tbaa !20
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 %476
  store ptr %478, ptr %447, align 8, !tbaa !20
  %479 = load i32, ptr %3, align 8, !tbaa !19
  %480 = sub i32 %479, %474
  store i32 %480, ptr %3, align 8, !tbaa !19
  %481 = load i32, ptr %11, align 8, !tbaa !16
  %482 = icmp ne i32 %481, 0
  %483 = sext i1 %482 to i32
  br label %1004

484:                                              ; preds = %465
  %485 = load i32, ptr %448, align 8, !tbaa !22
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %449, align 8, !tbaa !23
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %1023, label %490

490:                                              ; preds = %487, %484
  %491 = load i32, ptr %450, align 8, !tbaa !24
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %490
  %494 = load i32, ptr %451, align 8, !tbaa !25
  %495 = shl i32 %494, 1
  %496 = icmp ugt i32 %495, %470
  br i1 %496, label %497, label %873

497:                                              ; preds = %493, %490
  br label %498

498:                                              ; preds = %497, %867
  %499 = phi i32 [ %868, %867 ], [ %491, %497 ]
  switch i32 %499, label %855 [
    i32 0, label %500
    i32 1, label %723
    i32 2, label %759
  ]

500:                                              ; preds = %498
  %501 = load i32, ptr %451, align 8, !tbaa !25
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %522

503:                                              ; preds = %500
  %504 = load i32, ptr %462, align 4, !tbaa !26
  %505 = zext i32 %504 to i64
  %506 = tail call noalias ptr @malloc(i64 noundef %505) #13
  store ptr %506, ptr %455, align 8, !tbaa !27
  %507 = load i32, ptr %462, align 4, !tbaa !26
  %508 = shl i32 %507, 1
  %509 = zext i32 %508 to i64
  %510 = tail call noalias ptr @malloc(i64 noundef %509) #13
  store ptr %510, ptr %461, align 8, !tbaa !28
  %511 = icmp eq ptr %506, null
  %512 = icmp eq ptr %510, null
  %513 = or i1 %511, %512
  br i1 %513, label %514, label %515

514:                                              ; preds = %503
  tail call void @free(ptr noundef %510) #12
  tail call void @free(ptr noundef %506) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %869

515:                                              ; preds = %503
  %516 = load i32, ptr %462, align 4, !tbaa !26
  store i32 %516, ptr %451, align 8, !tbaa !25
  store i32 0, ptr %449, align 8, !tbaa !23
  store ptr null, ptr %454, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %463, i8 0, i64 24, i1 false)
  %517 = tail call i32 @inflateInit2_(ptr noundef nonnull %454, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = load ptr, ptr %461, align 8, !tbaa !28
  tail call void @free(ptr noundef %520) #12
  %521 = load ptr, ptr %455, align 8, !tbaa !27
  tail call void @free(ptr noundef %521) #12
  store i32 0, ptr %451, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %869

522:                                              ; preds = %515, %500
  %523 = load i32, ptr %464, align 8, !tbaa !30
  %524 = icmp eq i32 %523, -1
  br i1 %524, label %528, label %525

525:                                              ; preds = %522
  %526 = load i32, ptr %458, align 4, !tbaa !31
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %525, %522
  %529 = tail call i32 @inflateReset(ptr noundef nonnull %454) #12
  store i32 2, ptr %450, align 8, !tbaa !24
  %530 = load i32, ptr %458, align 4, !tbaa !31
  %531 = icmp ne i32 %530, -1
  %532 = zext i1 %531 to i32
  store i32 %532, ptr %458, align 4, !tbaa !31
  store i32 0, ptr %464, align 8, !tbaa !30
  br label %720

533:                                              ; preds = %525
  %534 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %534, label %869 [
    i32 0, label %535
    i32 -5, label %535
  ]

535:                                              ; preds = %533, %533
  %536 = load i32, ptr %448, align 8, !tbaa !22
  %537 = icmp eq i32 %536, 0
  %538 = load i32, ptr %449, align 8, !tbaa !32
  br i1 %537, label %539, label %688

539:                                              ; preds = %535
  %540 = icmp eq i32 %538, 0
  %541 = load ptr, ptr %455, align 8, !tbaa !27
  %542 = ptrtoaddr ptr %541 to i64
  br i1 %540, label %648, label %543

543:                                              ; preds = %539
  %544 = load ptr, ptr %454, align 8, !tbaa !33
  %545 = icmp eq ptr %544, %541
  br i1 %545, label %648, label %546

546:                                              ; preds = %543
  %547 = ptrtoaddr ptr %544 to i64
  %548 = zext i32 %538 to i64
  %549 = icmp ult i32 %538, 4
  %550 = sub i64 %542, %547
  %551 = icmp ult i64 %550, 32
  %552 = select i1 %549, i1 true, i1 %551
  br i1 %552, label %592, label %553

553:                                              ; preds = %546
  %554 = icmp ult i32 %538, 32
  br i1 %554, label %576, label %555

555:                                              ; preds = %553
  %556 = and i64 %548, 28
  %557 = and i64 %548, 4294967264
  %558 = getelementptr i8, ptr %541, i64 %557
  %559 = getelementptr i8, ptr %544, i64 %557
  %560 = trunc nuw i64 %557 to i32
  %561 = sub i32 %538, %560
  br label %562

562:                                              ; preds = %562, %555
  %563 = phi i64 [ 0, %555 ], [ %570, %562 ]
  %564 = getelementptr i8, ptr %541, i64 %563
  %565 = getelementptr i8, ptr %544, i64 %563
  %566 = getelementptr i8, ptr %565, i64 16
  %567 = load <16 x i8>, ptr %565, align 1, !tbaa !34
  %568 = load <16 x i8>, ptr %566, align 1, !tbaa !34
  %569 = getelementptr i8, ptr %564, i64 16
  store <16 x i8> %567, ptr %564, align 1, !tbaa !34
  store <16 x i8> %568, ptr %569, align 1, !tbaa !34
  %570 = add nuw i64 %563, 32
  %571 = icmp eq i64 %570, %557
  br i1 %571, label %572, label %562, !llvm.loop !64

572:                                              ; preds = %562
  %573 = icmp eq i64 %557, %548
  br i1 %573, label %645, label %574

574:                                              ; preds = %572
  %575 = icmp eq i64 %556, 0
  br i1 %575, label %592, label %576, !prof !39

576:                                              ; preds = %553, %574
  %577 = phi i64 [ %557, %574 ], [ 0, %553 ]
  %578 = and i64 %548, 4294967292
  %579 = getelementptr i8, ptr %541, i64 %578
  %580 = getelementptr i8, ptr %544, i64 %578
  %581 = trunc nuw i64 %578 to i32
  %582 = sub i32 %538, %581
  br label %583

583:                                              ; preds = %583, %576
  %584 = phi i64 [ %577, %576 ], [ %588, %583 ]
  %585 = getelementptr i8, ptr %541, i64 %584
  %586 = getelementptr i8, ptr %544, i64 %584
  %587 = load <4 x i8>, ptr %586, align 1, !tbaa !34
  store <4 x i8> %587, ptr %585, align 1, !tbaa !34
  %588 = add nuw i64 %584, 4
  %589 = icmp eq i64 %588, %578
  br i1 %589, label %590, label %583, !llvm.loop !65

590:                                              ; preds = %583
  %591 = icmp eq i64 %578, %548
  br i1 %591, label %645, label %592

592:                                              ; preds = %546, %574, %590
  %593 = phi ptr [ %541, %546 ], [ %558, %574 ], [ %579, %590 ]
  %594 = phi ptr [ %544, %546 ], [ %559, %574 ], [ %580, %590 ]
  %595 = phi i32 [ %538, %546 ], [ %561, %574 ], [ %582, %590 ]
  %596 = add i32 %595, -1
  %597 = and i32 %595, 7
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %610, label %599

599:                                              ; preds = %592, %599
  %600 = phi ptr [ %606, %599 ], [ %593, %592 ]
  %601 = phi ptr [ %604, %599 ], [ %594, %592 ]
  %602 = phi i32 [ %607, %599 ], [ %595, %592 ]
  %603 = phi i32 [ %608, %599 ], [ 0, %592 ]
  %604 = getelementptr inbounds nuw i8, ptr %601, i64 1
  %605 = load i8, ptr %601, align 1, !tbaa !34
  %606 = getelementptr inbounds nuw i8, ptr %600, i64 1
  store i8 %605, ptr %600, align 1, !tbaa !34
  %607 = add i32 %602, -1
  %608 = add i32 %603, 1
  %609 = icmp eq i32 %608, %597
  br i1 %609, label %610, label %599, !llvm.loop !66

610:                                              ; preds = %599, %592
  %611 = phi ptr [ %593, %592 ], [ %606, %599 ]
  %612 = phi ptr [ %594, %592 ], [ %604, %599 ]
  %613 = phi i32 [ %595, %592 ], [ %607, %599 ]
  %614 = icmp ult i32 %596, 7
  br i1 %614, label %645, label %615

615:                                              ; preds = %610, %615
  %616 = phi ptr [ %642, %615 ], [ %611, %610 ]
  %617 = phi ptr [ %640, %615 ], [ %612, %610 ]
  %618 = phi i32 [ %643, %615 ], [ %613, %610 ]
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 1
  %620 = load i8, ptr %617, align 1, !tbaa !34
  %621 = getelementptr inbounds nuw i8, ptr %616, i64 1
  store i8 %620, ptr %616, align 1, !tbaa !34
  %622 = getelementptr inbounds nuw i8, ptr %617, i64 2
  %623 = load i8, ptr %619, align 1, !tbaa !34
  %624 = getelementptr inbounds nuw i8, ptr %616, i64 2
  store i8 %623, ptr %621, align 1, !tbaa !34
  %625 = getelementptr inbounds nuw i8, ptr %617, i64 3
  %626 = load i8, ptr %622, align 1, !tbaa !34
  %627 = getelementptr inbounds nuw i8, ptr %616, i64 3
  store i8 %626, ptr %624, align 1, !tbaa !34
  %628 = getelementptr inbounds nuw i8, ptr %617, i64 4
  %629 = load i8, ptr %625, align 1, !tbaa !34
  %630 = getelementptr inbounds nuw i8, ptr %616, i64 4
  store i8 %629, ptr %627, align 1, !tbaa !34
  %631 = getelementptr inbounds nuw i8, ptr %617, i64 5
  %632 = load i8, ptr %628, align 1, !tbaa !34
  %633 = getelementptr inbounds nuw i8, ptr %616, i64 5
  store i8 %632, ptr %630, align 1, !tbaa !34
  %634 = getelementptr inbounds nuw i8, ptr %617, i64 6
  %635 = load i8, ptr %631, align 1, !tbaa !34
  %636 = getelementptr inbounds nuw i8, ptr %616, i64 6
  store i8 %635, ptr %633, align 1, !tbaa !34
  %637 = getelementptr inbounds nuw i8, ptr %617, i64 7
  %638 = load i8, ptr %634, align 1, !tbaa !34
  %639 = getelementptr inbounds nuw i8, ptr %616, i64 7
  store i8 %638, ptr %636, align 1, !tbaa !34
  %640 = getelementptr inbounds nuw i8, ptr %617, i64 8
  %641 = load i8, ptr %637, align 1, !tbaa !34
  %642 = getelementptr inbounds nuw i8, ptr %616, i64 8
  store i8 %641, ptr %639, align 1, !tbaa !34
  %643 = add i32 %618, -8
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %615, !llvm.loop !67

645:                                              ; preds = %610, %615, %590, %572
  %646 = load i32, ptr %449, align 8, !tbaa !32
  %647 = load ptr, ptr %455, align 8, !tbaa !27
  br label %648

648:                                              ; preds = %645, %543, %539
  %649 = phi ptr [ %647, %645 ], [ %541, %543 ], [ %541, %539 ]
  %650 = phi i32 [ %646, %645 ], [ %538, %543 ], [ 0, %539 ]
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds nuw i8, ptr %649, i64 %651
  %653 = load i32, ptr %451, align 8, !tbaa !25
  %654 = sub i32 %653, %650
  store i32 0, ptr %456, align 4, !tbaa !17
  %655 = tail call ptr @__errno_location() #14
  store i32 0, ptr %655, align 4, !tbaa !4
  br label %656

656:                                              ; preds = %667, %648
  %657 = phi i32 [ 0, %648 ], [ %668, %667 ]
  %658 = sub i32 %654, %657
  %659 = tail call i32 @llvm.umin.i32(i32 %658, i32 1073741824)
  %660 = load i32, ptr %457, align 4, !tbaa !44
  %661 = zext i32 %657 to i64
  %662 = getelementptr inbounds nuw i8, ptr %652, i64 %661
  %663 = zext nneg i32 %659 to i64
  %664 = tail call i64 @read(i32 noundef %660, ptr noundef %662, i64 noundef %663) #12
  %665 = trunc i64 %664 to i32
  %666 = icmp slt i32 %665, 1
  br i1 %666, label %670, label %667

667:                                              ; preds = %656
  %668 = add i32 %657, %665
  %669 = icmp ult i32 %668, %654
  br i1 %669, label %656, label %683, !llvm.loop !45

670:                                              ; preds = %656
  %671 = icmp slt i32 %665, 0
  br i1 %671, label %672, label %679

672:                                              ; preds = %670
  %673 = load i32, ptr %655, align 4, !tbaa !4
  %674 = icmp eq i32 %673, 11
  br i1 %674, label %675, label %680

675:                                              ; preds = %672
  store i32 1, ptr %456, align 4, !tbaa !17
  %676 = icmp eq i32 %657, 0
  br i1 %676, label %677, label %683

677:                                              ; preds = %675
  %678 = load i32, ptr %655, align 4, !tbaa !4
  br label %680

679:                                              ; preds = %670
  store i32 1, ptr %448, align 8, !tbaa !22
  br label %683

680:                                              ; preds = %672, %677
  %681 = phi i32 [ %678, %677 ], [ %673, %672 ]
  %682 = tail call ptr @strerror(i32 noundef %681) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %682) #12
  br label %869

683:                                              ; preds = %667, %679, %675
  %684 = phi i32 [ %657, %675 ], [ %657, %679 ], [ %668, %667 ]
  %685 = load i32, ptr %449, align 8, !tbaa !32
  %686 = add i32 %685, %684
  store i32 %686, ptr %449, align 8, !tbaa !32
  %687 = load ptr, ptr %455, align 8, !tbaa !27
  store ptr %687, ptr %454, align 8, !tbaa !33
  br label %688

688:                                              ; preds = %683, %535
  %689 = phi i32 [ %686, %683 ], [ %538, %535 ]
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %720, label %691

691:                                              ; preds = %688
  %692 = load i32, ptr %456, align 4, !tbaa !17
  %693 = icmp ne i32 %692, 0
  %694 = icmp ult i32 %689, 4
  %695 = and i1 %694, %693
  br i1 %695, label %720, label %696

696:                                              ; preds = %691
  %697 = icmp ugt i32 %689, 3
  %698 = load ptr, ptr %454, align 8, !tbaa !33
  br i1 %697, label %699, label %716

699:                                              ; preds = %696
  %700 = load i8, ptr %698, align 1, !tbaa !34
  %701 = icmp eq i8 %700, 31
  br i1 %701, label %702, label %716

702:                                              ; preds = %699
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 1
  %704 = load i8, ptr %703, align 1, !tbaa !34
  %705 = icmp eq i8 %704, -117
  br i1 %705, label %706, label %716

706:                                              ; preds = %702
  %707 = getelementptr inbounds nuw i8, ptr %698, i64 2
  %708 = load i8, ptr %707, align 1, !tbaa !34
  %709 = icmp eq i8 %708, 8
  br i1 %709, label %710, label %716

710:                                              ; preds = %706
  %711 = getelementptr inbounds nuw i8, ptr %698, i64 3
  %712 = load i8, ptr %711, align 1, !tbaa !34
  %713 = icmp ult i8 %712, 32
  br i1 %713, label %714, label %716

714:                                              ; preds = %710
  %715 = tail call i32 @inflateReset(ptr noundef nonnull %454) #12
  store i32 2, ptr %450, align 8, !tbaa !24
  store i32 1, ptr %458, align 4, !tbaa !31
  store i32 0, ptr %464, align 8, !tbaa !30
  br label %856

716:                                              ; preds = %710, %706, %702, %699, %696
  %717 = load ptr, ptr %461, align 8, !tbaa !28
  store ptr %717, ptr %447, align 8, !tbaa !20
  %718 = zext i32 %689 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %717, ptr align 1 %698, i64 %718, i1 false)
  %719 = load i32, ptr %449, align 8, !tbaa !32
  store i32 %719, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %449, align 8, !tbaa !32
  store i32 1, ptr %450, align 8, !tbaa !24
  br label %858

720:                                              ; preds = %691, %688, %528
  %721 = load i32, ptr %450, align 8, !tbaa !24
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %1012, label %856

723:                                              ; preds = %498
  %724 = load ptr, ptr %461, align 8, !tbaa !28
  %725 = load i32, ptr %451, align 8, !tbaa !25
  %726 = shl i32 %725, 1
  store i32 0, ptr %456, align 4, !tbaa !17
  %727 = tail call ptr @__errno_location() #14
  store i32 0, ptr %727, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %728

728:                                              ; preds = %739, %723
  %729 = phi i32 [ %741, %739 ], [ 0, %723 ]
  %730 = sub i32 %726, %729
  %731 = tail call i32 @llvm.umin.i32(i32 %730, i32 1073741824)
  %732 = load i32, ptr %457, align 4, !tbaa !44
  %733 = zext i32 %729 to i64
  %734 = getelementptr inbounds nuw i8, ptr %724, i64 %733
  %735 = zext nneg i32 %731 to i64
  %736 = tail call i64 @read(i32 noundef %732, ptr noundef %734, i64 noundef %735) #12
  %737 = trunc i64 %736 to i32
  %738 = icmp slt i32 %737, 1
  br i1 %738, label %743, label %739

739:                                              ; preds = %728
  %740 = load i32, ptr %3, align 4, !tbaa !4
  %741 = add i32 %740, %737
  store i32 %741, ptr %3, align 4, !tbaa !4
  %742 = icmp ult i32 %741, %726
  br i1 %742, label %728, label %757, !llvm.loop !45

743:                                              ; preds = %728
  %744 = icmp slt i32 %737, 0
  br i1 %744, label %745, label %753

745:                                              ; preds = %743
  %746 = load i32, ptr %727, align 4, !tbaa !4
  %747 = icmp eq i32 %746, 11
  br i1 %747, label %748, label %754

748:                                              ; preds = %745
  store i32 1, ptr %456, align 4, !tbaa !17
  %749 = load i32, ptr %3, align 4, !tbaa !4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %757

751:                                              ; preds = %748
  %752 = load i32, ptr %727, align 4, !tbaa !4
  br label %754

753:                                              ; preds = %743
  store i32 1, ptr %448, align 8, !tbaa !22
  br label %757

754:                                              ; preds = %751, %745
  %755 = phi i32 [ %752, %751 ], [ %746, %745 ]
  %756 = tail call ptr @strerror(i32 noundef %755) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %756) #12
  br label %869

757:                                              ; preds = %739, %753, %748
  %758 = load ptr, ptr %461, align 8, !tbaa !28
  store ptr %758, ptr %447, align 8, !tbaa !20
  br label %1012

759:                                              ; preds = %498
  %760 = load i32, ptr %451, align 8, !tbaa !25
  %761 = shl i32 %760, 1
  store i32 %761, ptr %452, align 8, !tbaa !46
  %762 = load ptr, ptr %461, align 8, !tbaa !28
  store ptr %762, ptr %453, align 8, !tbaa !47
  br label %763

763:                                              ; preds = %835, %759
  %764 = phi i32 [ 0, %759 ], [ %815, %835 ]
  %765 = load i32, ptr %449, align 8, !tbaa !32
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %814

767:                                              ; preds = %763
  %768 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %768, label %846 [
    i32 0, label %769
    i32 -5, label %769
  ]

769:                                              ; preds = %767, %767
  %770 = load i32, ptr %448, align 8, !tbaa !22
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %810

772:                                              ; preds = %769
  %773 = load ptr, ptr %455, align 8, !tbaa !27
  %774 = load i32, ptr %451, align 8, !tbaa !25
  store i32 0, ptr %456, align 4, !tbaa !17
  %775 = tail call ptr @__errno_location() #14
  store i32 0, ptr %775, align 4, !tbaa !4
  br label %776

776:                                              ; preds = %787, %772
  %777 = phi i32 [ 0, %772 ], [ %788, %787 ]
  %778 = sub i32 %774, %777
  %779 = tail call i32 @llvm.umin.i32(i32 %778, i32 1073741824)
  %780 = load i32, ptr %457, align 4, !tbaa !44
  %781 = zext i32 %777 to i64
  %782 = getelementptr inbounds nuw i8, ptr %773, i64 %781
  %783 = zext nneg i32 %779 to i64
  %784 = tail call i64 @read(i32 noundef %780, ptr noundef %782, i64 noundef %783) #12
  %785 = trunc i64 %784 to i32
  %786 = icmp slt i32 %785, 1
  br i1 %786, label %790, label %787

787:                                              ; preds = %776
  %788 = add i32 %777, %785
  %789 = icmp ult i32 %788, %774
  br i1 %789, label %776, label %804, !llvm.loop !45

790:                                              ; preds = %776
  %791 = icmp slt i32 %785, 0
  br i1 %791, label %792, label %799

792:                                              ; preds = %790
  %793 = load i32, ptr %775, align 4, !tbaa !4
  %794 = icmp eq i32 %793, 11
  br i1 %794, label %795, label %800

795:                                              ; preds = %792
  store i32 1, ptr %456, align 4, !tbaa !17
  %796 = icmp eq i32 %777, 0
  br i1 %796, label %797, label %804

797:                                              ; preds = %795
  %798 = load i32, ptr %775, align 4, !tbaa !4
  br label %800

799:                                              ; preds = %790
  store i32 1, ptr %448, align 8, !tbaa !22
  br label %804

800:                                              ; preds = %792, %797
  %801 = phi i32 [ %798, %797 ], [ %793, %792 ]
  %802 = tail call ptr @strerror(i32 noundef %801) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %802) #12
  %803 = load i32, ptr %11, align 8, !tbaa !16
  br label %846

804:                                              ; preds = %787, %799, %795
  %805 = phi i32 [ %777, %795 ], [ %777, %799 ], [ %788, %787 ]
  %806 = load i32, ptr %449, align 8, !tbaa !32
  %807 = add i32 %806, %805
  store i32 %807, ptr %449, align 8, !tbaa !32
  %808 = load ptr, ptr %455, align 8, !tbaa !27
  store ptr %808, ptr %454, align 8, !tbaa !33
  %809 = icmp eq i32 %807, 0
  br i1 %809, label %810, label %814

810:                                              ; preds = %804, %769
  %811 = load i32, ptr %456, align 4, !tbaa !17
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %846

813:                                              ; preds = %810
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %846

814:                                              ; preds = %804, %763
  %815 = tail call i32 @inflate(ptr noundef nonnull %454, i32 noundef 0) #12
  %816 = load i32, ptr %452, align 8, !tbaa !46
  %817 = icmp ult i32 %816, %761
  br i1 %817, label %818, label %819

818:                                              ; preds = %814
  store i32 0, ptr %458, align 4, !tbaa !31
  br label %819

819:                                              ; preds = %818, %814
  switch i32 %815, label %835 [
    i32 -2, label %820
    i32 2, label %820
    i32 -4, label %821
    i32 -3, label %822
  ]

820:                                              ; preds = %819, %819
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %846

821:                                              ; preds = %819
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %839

822:                                              ; preds = %819
  %823 = load i32, ptr %458, align 4, !tbaa !31
  %824 = icmp eq i32 %823, 1
  br i1 %824, label %825, label %831

825:                                              ; preds = %822
  store i32 0, ptr %449, align 8, !tbaa !32
  store i32 1, ptr %448, align 8, !tbaa !22
  store i32 0, ptr %450, align 8, !tbaa !24
  %826 = sub i32 %761, %816
  store i32 %826, ptr %3, align 8, !tbaa !19
  %827 = load ptr, ptr %453, align 8, !tbaa !47
  %828 = zext i32 %826 to i64
  %829 = sub nsw i64 0, %828
  %830 = getelementptr inbounds i8, ptr %827, i64 %829
  store ptr %830, ptr %447, align 8, !tbaa !20
  br label %856

831:                                              ; preds = %822
  %832 = load ptr, ptr %459, align 8, !tbaa !48
  %833 = icmp eq ptr %832, null
  %834 = select i1 %833, ptr @.str.6, ptr %832
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %834) #12
  br label %839

835:                                              ; preds = %819
  %836 = icmp ne i32 %816, 0
  %837 = icmp ne i32 %815, 1
  %838 = select i1 %836, i1 %837, i1 false
  br i1 %838, label %763, label %846, !llvm.loop !49

839:                                              ; preds = %831, %821
  %840 = load i32, ptr %452, align 8, !tbaa !46
  %841 = sub i32 %761, %840
  store i32 %841, ptr %3, align 8, !tbaa !19
  %842 = load ptr, ptr %453, align 8, !tbaa !47
  %843 = zext i32 %841 to i64
  %844 = sub nsw i64 0, %843
  %845 = getelementptr inbounds i8, ptr %842, i64 %844
  store ptr %845, ptr %447, align 8, !tbaa !20
  br label %869

846:                                              ; preds = %835, %767, %820, %813, %810, %800
  %847 = phi i32 [ %803, %800 ], [ %764, %810 ], [ %764, %813 ], [ %815, %820 ], [ %768, %767 ], [ %815, %835 ]
  %848 = load i32, ptr %452, align 8, !tbaa !46
  %849 = sub i32 %761, %848
  store i32 %849, ptr %3, align 8, !tbaa !19
  %850 = load ptr, ptr %453, align 8, !tbaa !47
  %851 = zext i32 %849 to i64
  %852 = sub nsw i64 0, %851
  %853 = getelementptr inbounds i8, ptr %850, i64 %852
  store ptr %853, ptr %447, align 8, !tbaa !20
  switch i32 %847, label %869 [
    i32 1, label %854
    i32 0, label %856
  ]

854:                                              ; preds = %846
  store i32 0, ptr %458, align 4, !tbaa !31
  store i32 0, ptr %450, align 8, !tbaa !24
  br label %856

855:                                              ; preds = %498
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %869

856:                                              ; preds = %854, %846, %825, %720, %714
  %857 = load i32, ptr %3, align 8, !tbaa !19
  br label %858

858:                                              ; preds = %856, %716
  %859 = phi i32 [ %857, %856 ], [ %719, %716 ]
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %1012

861:                                              ; preds = %858
  %862 = load i32, ptr %448, align 8, !tbaa !22
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %867, label %864

864:                                              ; preds = %861
  %865 = load i32, ptr %449, align 8, !tbaa !32
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %1012, label %867

867:                                              ; preds = %864, %861
  %868 = load i32, ptr %450, align 8, !tbaa !24
  br label %498, !llvm.loop !50

869:                                              ; preds = %846, %533, %855, %839, %754, %680, %519, %514
  %870 = load i32, ptr %3, align 8, !tbaa !19
  %871 = icmp eq i32 %870, 0
  %872 = sext i1 %871 to i32
  br label %1012

873:                                              ; preds = %493
  %874 = icmp eq i32 %491, 1
  br i1 %874, label %875, label %904

875:                                              ; preds = %873
  store i32 0, ptr %456, align 4, !tbaa !17
  %876 = tail call ptr @__errno_location() #14
  store i32 0, ptr %876, align 4, !tbaa !4
  br label %877

877:                                              ; preds = %888, %875
  %878 = phi i32 [ 0, %875 ], [ %889, %888 ]
  %879 = sub i32 %470, %878
  %880 = tail call i32 @llvm.umin.i32(i32 %879, i32 1073741824)
  %881 = load i32, ptr %457, align 4, !tbaa !44
  %882 = zext i32 %878 to i64
  %883 = getelementptr inbounds nuw i8, ptr %466, i64 %882
  %884 = zext nneg i32 %880 to i64
  %885 = tail call i64 @read(i32 noundef %881, ptr noundef %883, i64 noundef %884) #12
  %886 = trunc i64 %885 to i32
  %887 = icmp slt i32 %886, 1
  br i1 %887, label %891, label %888

888:                                              ; preds = %877
  %889 = add i32 %878, %886
  %890 = icmp ult i32 %889, %470
  br i1 %890, label %877, label %1002, !llvm.loop !45

891:                                              ; preds = %877
  %892 = icmp slt i32 %886, 0
  br i1 %892, label %893, label %903

893:                                              ; preds = %891
  %894 = load i32, ptr %876, align 4, !tbaa !4
  %895 = icmp eq i32 %894, 11
  br i1 %895, label %896, label %900

896:                                              ; preds = %893
  store i32 1, ptr %456, align 4, !tbaa !17
  %897 = icmp eq i32 %878, 0
  br i1 %897, label %898, label %1004

898:                                              ; preds = %896
  %899 = load i32, ptr %876, align 4, !tbaa !4
  br label %900

900:                                              ; preds = %898, %893
  %901 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %902 = tail call ptr @strerror(i32 noundef %901) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %902) #12
  br label %1004

903:                                              ; preds = %891
  store i32 1, ptr %448, align 8, !tbaa !22
  br label %1004

904:                                              ; preds = %873
  store i32 %470, ptr %452, align 8, !tbaa !56
  store ptr %466, ptr %453, align 8, !tbaa !57
  br label %905

905:                                              ; preds = %972, %904
  %906 = phi i32 [ 0, %904 ], [ %957, %972 ]
  %907 = load i32, ptr %449, align 8, !tbaa !32
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %956

909:                                              ; preds = %905
  %910 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %910, label %984 [
    i32 0, label %911
    i32 -5, label %911
  ]

911:                                              ; preds = %909, %909
  %912 = load i32, ptr %448, align 8, !tbaa !22
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %952

914:                                              ; preds = %911
  %915 = load ptr, ptr %455, align 8, !tbaa !27
  %916 = load i32, ptr %451, align 8, !tbaa !25
  store i32 0, ptr %456, align 4, !tbaa !17
  %917 = tail call ptr @__errno_location() #14
  store i32 0, ptr %917, align 4, !tbaa !4
  br label %918

918:                                              ; preds = %929, %914
  %919 = phi i32 [ 0, %914 ], [ %930, %929 ]
  %920 = sub i32 %916, %919
  %921 = tail call i32 @llvm.umin.i32(i32 %920, i32 1073741824)
  %922 = load i32, ptr %457, align 4, !tbaa !44
  %923 = zext i32 %919 to i64
  %924 = getelementptr inbounds nuw i8, ptr %915, i64 %923
  %925 = zext nneg i32 %921 to i64
  %926 = tail call i64 @read(i32 noundef %922, ptr noundef %924, i64 noundef %925) #12
  %927 = trunc i64 %926 to i32
  %928 = icmp slt i32 %927, 1
  br i1 %928, label %932, label %929

929:                                              ; preds = %918
  %930 = add i32 %919, %927
  %931 = icmp ult i32 %930, %916
  br i1 %931, label %918, label %946, !llvm.loop !45

932:                                              ; preds = %918
  %933 = icmp slt i32 %927, 0
  br i1 %933, label %934, label %941

934:                                              ; preds = %932
  %935 = load i32, ptr %917, align 4, !tbaa !4
  %936 = icmp eq i32 %935, 11
  br i1 %936, label %937, label %942

937:                                              ; preds = %934
  store i32 1, ptr %456, align 4, !tbaa !17
  %938 = icmp eq i32 %919, 0
  br i1 %938, label %939, label %946

939:                                              ; preds = %937
  %940 = load i32, ptr %917, align 4, !tbaa !4
  br label %942

941:                                              ; preds = %932
  store i32 1, ptr %448, align 8, !tbaa !22
  br label %946

942:                                              ; preds = %934, %939
  %943 = phi i32 [ %940, %939 ], [ %935, %934 ]
  %944 = tail call ptr @strerror(i32 noundef %943) #12
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %944) #12
  %945 = load i32, ptr %11, align 8, !tbaa !16
  br label %984

946:                                              ; preds = %929, %941, %937
  %947 = phi i32 [ %919, %937 ], [ %919, %941 ], [ %930, %929 ]
  %948 = load i32, ptr %449, align 8, !tbaa !32
  %949 = add i32 %948, %947
  store i32 %949, ptr %449, align 8, !tbaa !32
  %950 = load ptr, ptr %455, align 8, !tbaa !27
  store ptr %950, ptr %454, align 8, !tbaa !33
  %951 = icmp eq i32 %949, 0
  br i1 %951, label %952, label %956

952:                                              ; preds = %946, %911
  %953 = load i32, ptr %456, align 4, !tbaa !17
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %984

955:                                              ; preds = %952
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %984

956:                                              ; preds = %946, %905
  %957 = tail call i32 @inflate(ptr noundef nonnull %454, i32 noundef 0) #12
  %958 = load i32, ptr %452, align 8, !tbaa !46
  %959 = icmp ult i32 %958, %470
  br i1 %959, label %960, label %961

960:                                              ; preds = %956
  store i32 0, ptr %458, align 4, !tbaa !31
  br label %961

961:                                              ; preds = %960, %956
  switch i32 %957, label %972 [
    i32 -2, label %962
    i32 2, label %962
    i32 -4, label %963
    i32 -3, label %964
  ]

962:                                              ; preds = %961, %961
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %984

963:                                              ; preds = %961
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %976

964:                                              ; preds = %961
  %965 = load i32, ptr %458, align 4, !tbaa !31
  %966 = icmp eq i32 %965, 1
  br i1 %966, label %967, label %968

967:                                              ; preds = %964
  store i32 0, ptr %449, align 8, !tbaa !32
  store i32 1, ptr %448, align 8, !tbaa !22
  store i32 0, ptr %450, align 8, !tbaa !24
  br label %976

968:                                              ; preds = %964
  %969 = load ptr, ptr %459, align 8, !tbaa !48
  %970 = icmp eq ptr %969, null
  %971 = select i1 %970, ptr @.str.6, ptr %969
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %971) #12
  br label %976

972:                                              ; preds = %961
  %973 = icmp ne i32 %958, 0
  %974 = icmp ne i32 %957, 1
  %975 = select i1 %973, i1 %974, i1 false
  br i1 %975, label %905, label %984, !llvm.loop !49

976:                                              ; preds = %963, %967, %968
  %977 = phi i32 [ -3, %968 ], [ 0, %967 ], [ -4, %963 ]
  %978 = load i32, ptr %452, align 8, !tbaa !46
  %979 = sub i32 %470, %978
  %980 = load ptr, ptr %453, align 8, !tbaa !47
  %981 = zext i32 %979 to i64
  %982 = sub nsw i64 0, %981
  %983 = getelementptr inbounds i8, ptr %980, i64 %982
  store ptr %983, ptr %447, align 8, !tbaa !20
  br label %994

984:                                              ; preds = %972, %909, %962, %955, %952, %942
  %985 = phi i32 [ %945, %942 ], [ %906, %952 ], [ %906, %955 ], [ %957, %962 ], [ %910, %909 ], [ %957, %972 ]
  %986 = load i32, ptr %452, align 8, !tbaa !46
  %987 = sub i32 %470, %986
  %988 = load ptr, ptr %453, align 8, !tbaa !47
  %989 = zext i32 %987 to i64
  %990 = sub nsw i64 0, %989
  %991 = getelementptr inbounds i8, ptr %988, i64 %990
  store ptr %991, ptr %447, align 8, !tbaa !20
  %992 = icmp eq i32 %985, 1
  br i1 %992, label %993, label %994

993:                                              ; preds = %984
  store i32 0, ptr %458, align 4, !tbaa !31
  store i32 0, ptr %450, align 8, !tbaa !24
  br label %999

994:                                              ; preds = %976, %984
  %995 = phi i64 [ %981, %976 ], [ %989, %984 ]
  %996 = phi i32 [ %977, %976 ], [ %985, %984 ]
  %997 = icmp ne i32 %996, 0
  %998 = sext i1 %997 to i32
  br label %999

999:                                              ; preds = %994, %993
  %1000 = phi i64 [ %989, %993 ], [ %995, %994 ]
  %1001 = phi i32 [ 0, %993 ], [ %998, %994 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1004

1002:                                             ; preds = %888
  %1003 = zext i32 %889 to i64
  br label %1004

1004:                                             ; preds = %1002, %999, %903, %900, %896, %473
  %1005 = phi i64 [ %1003, %1002 ], [ %882, %903 ], [ %882, %900 ], [ %882, %896 ], [ %476, %473 ], [ %1000, %999 ]
  %1006 = phi i32 [ 0, %1002 ], [ 0, %903 ], [ -1, %900 ], [ 0, %896 ], [ %483, %473 ], [ %1001, %999 ]
  %1007 = sub i64 %467, %1005
  %1008 = getelementptr inbounds nuw i8, ptr %466, i64 %1005
  %1009 = add i64 %1005, %468
  %1010 = load i64, ptr %460, align 8, !tbaa !21
  %1011 = add nsw i64 %1010, %1005
  store i64 %1011, ptr %460, align 8, !tbaa !21
  br label %1012

1012:                                             ; preds = %864, %858, %720, %1004, %869, %757
  %1013 = phi ptr [ %1008, %1004 ], [ %466, %869 ], [ %466, %757 ], [ %466, %720 ], [ %466, %858 ], [ %466, %864 ]
  %1014 = phi i64 [ %1007, %1004 ], [ %467, %869 ], [ %467, %757 ], [ %467, %720 ], [ %467, %858 ], [ %467, %864 ]
  %1015 = phi i64 [ %1009, %1004 ], [ %468, %869 ], [ %468, %757 ], [ %468, %720 ], [ %468, %858 ], [ %468, %864 ]
  %1016 = phi i32 [ %1006, %1004 ], [ %872, %869 ], [ 0, %757 ], [ 0, %720 ], [ 0, %858 ], [ 0, %864 ]
  %1017 = icmp eq i64 %1014, 0
  br i1 %1017, label %1026, label %1018

1018:                                             ; preds = %1012
  %1019 = icmp eq i32 %1016, 0
  br i1 %1019, label %465, label %1020, !llvm.loop !58

1020:                                             ; preds = %1018
  %1021 = load i32, ptr %448, align 8, !tbaa !22
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1026, label %1023

1023:                                             ; preds = %487, %1020
  %1024 = phi i64 [ %1015, %1020 ], [ %468, %487 ]
  %1025 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1025, align 4, !tbaa !59
  br label %1026

1026:                                             ; preds = %105, %419, %1012, %86, %91, %252, %326, %412, %428, %1020, %1023
  %1027 = phi i64 [ 0, %91 ], [ 0, %86 ], [ %1024, %1023 ], [ %1015, %1020 ], [ 0, %412 ], [ %1015, %1012 ], [ 0, %428 ], [ 0, %326 ], [ 0, %252 ], [ 0, %419 ], [ 0, %105 ]
  %1028 = udiv i64 %1027, %1
  br label %1029

1029:                                             ; preds = %1026, %24, %13, %6, %4, %23
  %1030 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %23 ], [ 0, %13 ], [ %1028, %1026 ], [ 0, %24 ]
  ret i64 %1030
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1034, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1034

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1034, label %15

15:                                               ; preds = %8, %8, %11
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store ptr %25, ptr %23, align 8, !tbaa !20
  %26 = load i8, ptr %24, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  br label %1034

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %448, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %50

50:                                               ; preds = %445, %32
  %51 = phi i64 [ %446, %445 ], [ %30, %32 ]
  %52 = load i32, ptr %0, align 8, !tbaa !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = zext i32 %52 to i64
  %56 = tail call i64 @llvm.smin.i64(i64 %51, i64 %55)
  %57 = trunc i64 %56 to i32
  %58 = sub i32 %52, %57
  store i32 %58, ptr %0, align 8, !tbaa !19
  %59 = load ptr, ptr %33, align 8, !tbaa !20
  %60 = and i64 %56, 4294967295
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 %60
  store ptr %61, ptr %33, align 8, !tbaa !20
  %62 = load i64, ptr %34, align 8, !tbaa !21
  %63 = add nsw i64 %62, %60
  store i64 %63, ptr %34, align 8, !tbaa !21
  %64 = sub nsw i64 %51, %60
  store i64 %64, ptr %29, align 8, !tbaa !18
  br label %445

65:                                               ; preds = %50
  %66 = load i32, ptr %35, align 8, !tbaa !22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %36, align 8, !tbaa !23
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %448, label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %442, %71
  %73 = load i32, ptr %37, align 8, !tbaa !24
  switch i32 %73, label %430 [
    i32 0, label %74
    i32 1, label %297
    i32 2, label %333
  ]

74:                                               ; preds = %72
  %75 = load i32, ptr %38, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32, ptr %47, align 4, !tbaa !26
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #13
  store ptr %80, ptr %43, align 8, !tbaa !27
  %81 = load i32, ptr %47, align 4, !tbaa !26
  %82 = shl i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #13
  store ptr %84, ptr %40, align 8, !tbaa !28
  %85 = icmp eq ptr %80, null
  %86 = icmp eq ptr %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  tail call void @free(ptr noundef %84) #12
  tail call void @free(ptr noundef %80) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1033

89:                                               ; preds = %77
  %90 = load i32, ptr %47, align 4, !tbaa !26
  store i32 %90, ptr %38, align 8, !tbaa !25
  store i32 0, ptr %36, align 8, !tbaa !23
  store ptr null, ptr %42, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %91 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %40, align 8, !tbaa !28
  tail call void @free(ptr noundef %94) #12
  %95 = load ptr, ptr %43, align 8, !tbaa !27
  tail call void @free(ptr noundef %95) #12
  store i32 0, ptr %38, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1033

96:                                               ; preds = %89, %74
  %97 = load i32, ptr %49, align 8, !tbaa !30
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %46, align 4, !tbaa !31
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %96
  %103 = tail call i32 @inflateReset(ptr noundef nonnull %42) #12
  store i32 2, ptr %37, align 8, !tbaa !24
  %104 = load i32, ptr %46, align 4, !tbaa !31
  %105 = icmp ne i32 %104, -1
  %106 = zext i1 %105 to i32
  store i32 %106, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %49, align 8, !tbaa !30
  br label %294

107:                                              ; preds = %99
  %108 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %108, label %1033 [
    i32 0, label %109
    i32 -5, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load i32, ptr %35, align 8, !tbaa !22
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %36, align 8, !tbaa !32
  br i1 %111, label %113, label %262

113:                                              ; preds = %109
  %114 = icmp eq i32 %112, 0
  %115 = load ptr, ptr %43, align 8, !tbaa !27
  %116 = ptrtoaddr ptr %115 to i64
  br i1 %114, label %222, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %42, align 8, !tbaa !33
  %119 = icmp eq ptr %118, %115
  br i1 %119, label %222, label %120

120:                                              ; preds = %117
  %121 = ptrtoaddr ptr %118 to i64
  %122 = zext i32 %112 to i64
  %123 = icmp ult i32 %112, 4
  %124 = sub i64 %116, %121
  %125 = icmp ult i64 %124, 32
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %166, label %127

127:                                              ; preds = %120
  %128 = icmp ult i32 %112, 32
  br i1 %128, label %150, label %129

129:                                              ; preds = %127
  %130 = and i64 %122, 28
  %131 = and i64 %122, 4294967264
  %132 = getelementptr i8, ptr %115, i64 %131
  %133 = getelementptr i8, ptr %118, i64 %131
  %134 = trunc nuw i64 %131 to i32
  %135 = sub i32 %112, %134
  br label %136

136:                                              ; preds = %136, %129
  %137 = phi i64 [ 0, %129 ], [ %144, %136 ]
  %138 = getelementptr i8, ptr %115, i64 %137
  %139 = getelementptr i8, ptr %118, i64 %137
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !34
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !34
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !34
  store <16 x i8> %142, ptr %143, align 1, !tbaa !34
  %144 = add nuw i64 %137, 32
  %145 = icmp eq i64 %144, %131
  br i1 %145, label %146, label %136, !llvm.loop !68

146:                                              ; preds = %136
  %147 = icmp eq i64 %131, %122
  br i1 %147, label %219, label %148

148:                                              ; preds = %146
  %149 = icmp eq i64 %130, 0
  br i1 %149, label %166, label %150, !prof !39

150:                                              ; preds = %127, %148
  %151 = phi i64 [ %131, %148 ], [ 0, %127 ]
  %152 = and i64 %122, 4294967292
  %153 = getelementptr i8, ptr %115, i64 %152
  %154 = getelementptr i8, ptr %118, i64 %152
  %155 = trunc nuw i64 %152 to i32
  %156 = sub i32 %112, %155
  br label %157

157:                                              ; preds = %157, %150
  %158 = phi i64 [ %151, %150 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %115, i64 %158
  %160 = getelementptr i8, ptr %118, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !34
  store <4 x i8> %161, ptr %159, align 1, !tbaa !34
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %152
  br i1 %163, label %164, label %157, !llvm.loop !69

164:                                              ; preds = %157
  %165 = icmp eq i64 %152, %122
  br i1 %165, label %219, label %166

166:                                              ; preds = %120, %148, %164
  %167 = phi ptr [ %115, %120 ], [ %132, %148 ], [ %153, %164 ]
  %168 = phi ptr [ %118, %120 ], [ %133, %148 ], [ %154, %164 ]
  %169 = phi i32 [ %112, %120 ], [ %135, %148 ], [ %156, %164 ]
  %170 = add i32 %169, -1
  %171 = and i32 %169, 7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %166, %173
  %174 = phi ptr [ %180, %173 ], [ %167, %166 ]
  %175 = phi ptr [ %178, %173 ], [ %168, %166 ]
  %176 = phi i32 [ %181, %173 ], [ %169, %166 ]
  %177 = phi i32 [ %182, %173 ], [ 0, %166 ]
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %179 = load i8, ptr %175, align 1, !tbaa !34
  %180 = getelementptr inbounds nuw i8, ptr %174, i64 1
  store i8 %179, ptr %174, align 1, !tbaa !34
  %181 = add i32 %176, -1
  %182 = add i32 %177, 1
  %183 = icmp eq i32 %182, %171
  br i1 %183, label %184, label %173, !llvm.loop !70

184:                                              ; preds = %173, %166
  %185 = phi ptr [ %167, %166 ], [ %180, %173 ]
  %186 = phi ptr [ %168, %166 ], [ %178, %173 ]
  %187 = phi i32 [ %169, %166 ], [ %181, %173 ]
  %188 = icmp ult i32 %170, 7
  br i1 %188, label %219, label %189

189:                                              ; preds = %184, %189
  %190 = phi ptr [ %216, %189 ], [ %185, %184 ]
  %191 = phi ptr [ %214, %189 ], [ %186, %184 ]
  %192 = phi i32 [ %217, %189 ], [ %187, %184 ]
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %194 = load i8, ptr %191, align 1, !tbaa !34
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 1
  store i8 %194, ptr %190, align 1, !tbaa !34
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %197 = load i8, ptr %193, align 1, !tbaa !34
  %198 = getelementptr inbounds nuw i8, ptr %190, i64 2
  store i8 %197, ptr %195, align 1, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %200 = load i8, ptr %196, align 1, !tbaa !34
  %201 = getelementptr inbounds nuw i8, ptr %190, i64 3
  store i8 %200, ptr %198, align 1, !tbaa !34
  %202 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %203 = load i8, ptr %199, align 1, !tbaa !34
  %204 = getelementptr inbounds nuw i8, ptr %190, i64 4
  store i8 %203, ptr %201, align 1, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %206 = load i8, ptr %202, align 1, !tbaa !34
  %207 = getelementptr inbounds nuw i8, ptr %190, i64 5
  store i8 %206, ptr %204, align 1, !tbaa !34
  %208 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %209 = load i8, ptr %205, align 1, !tbaa !34
  %210 = getelementptr inbounds nuw i8, ptr %190, i64 6
  store i8 %209, ptr %207, align 1, !tbaa !34
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %212 = load i8, ptr %208, align 1, !tbaa !34
  %213 = getelementptr inbounds nuw i8, ptr %190, i64 7
  store i8 %212, ptr %210, align 1, !tbaa !34
  %214 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %215 = load i8, ptr %211, align 1, !tbaa !34
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  store i8 %215, ptr %213, align 1, !tbaa !34
  %217 = add i32 %192, -8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %189, !llvm.loop !71

219:                                              ; preds = %184, %189, %164, %146
  %220 = load i32, ptr %36, align 8, !tbaa !32
  %221 = load ptr, ptr %43, align 8, !tbaa !27
  br label %222

222:                                              ; preds = %219, %117, %113
  %223 = phi ptr [ %221, %219 ], [ %115, %117 ], [ %115, %113 ]
  %224 = phi i32 [ %220, %219 ], [ %112, %117 ], [ 0, %113 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 %225
  %227 = load i32, ptr %38, align 8, !tbaa !25
  %228 = sub i32 %227, %224
  store i32 0, ptr %44, align 4, !tbaa !17
  %229 = tail call ptr @__errno_location() #14
  store i32 0, ptr %229, align 4, !tbaa !4
  br label %230

230:                                              ; preds = %241, %222
  %231 = phi i32 [ 0, %222 ], [ %242, %241 ]
  %232 = sub i32 %228, %231
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 1073741824)
  %234 = load i32, ptr %45, align 4, !tbaa !44
  %235 = zext i32 %231 to i64
  %236 = getelementptr inbounds nuw i8, ptr %226, i64 %235
  %237 = zext nneg i32 %233 to i64
  %238 = tail call i64 @read(i32 noundef %234, ptr noundef %236, i64 noundef %237) #12
  %239 = trunc i64 %238 to i32
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %230
  %242 = add i32 %231, %239
  %243 = icmp ult i32 %242, %228
  br i1 %243, label %230, label %257, !llvm.loop !45

244:                                              ; preds = %230
  %245 = icmp slt i32 %239, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %244
  %247 = load i32, ptr %229, align 4, !tbaa !4
  %248 = icmp eq i32 %247, 11
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  store i32 1, ptr %44, align 4, !tbaa !17
  %250 = icmp eq i32 %231, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %249
  %252 = load i32, ptr %229, align 4, !tbaa !4
  br label %254

253:                                              ; preds = %244
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %257

254:                                              ; preds = %246, %251
  %255 = phi i32 [ %252, %251 ], [ %247, %246 ]
  %256 = tail call ptr @strerror(i32 noundef %255) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %256) #12
  br label %1033

257:                                              ; preds = %241, %253, %249
  %258 = phi i32 [ %231, %249 ], [ %231, %253 ], [ %242, %241 ]
  %259 = load i32, ptr %36, align 8, !tbaa !32
  %260 = add i32 %259, %258
  store i32 %260, ptr %36, align 8, !tbaa !32
  %261 = load ptr, ptr %43, align 8, !tbaa !27
  store ptr %261, ptr %42, align 8, !tbaa !33
  br label %262

262:                                              ; preds = %257, %109
  %263 = phi i32 [ %260, %257 ], [ %112, %109 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %294, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %44, align 4, !tbaa !17
  %267 = icmp ne i32 %266, 0
  %268 = icmp ult i32 %263, 4
  %269 = and i1 %268, %267
  br i1 %269, label %294, label %270

270:                                              ; preds = %265
  %271 = icmp ugt i32 %263, 3
  %272 = load ptr, ptr %42, align 8, !tbaa !33
  br i1 %271, label %273, label %290

273:                                              ; preds = %270
  %274 = load i8, ptr %272, align 1, !tbaa !34
  %275 = icmp eq i8 %274, 31
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %272, i64 1
  %278 = load i8, ptr %277, align 1, !tbaa !34
  %279 = icmp eq i8 %278, -117
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %272, i64 2
  %282 = load i8, ptr %281, align 1, !tbaa !34
  %283 = icmp eq i8 %282, 8
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw i8, ptr %272, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !34
  %287 = icmp ult i8 %286, 32
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = tail call i32 @inflateReset(ptr noundef nonnull %42) #12
  store i32 2, ptr %37, align 8, !tbaa !24
  store i32 1, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %49, align 8, !tbaa !30
  br label %431

290:                                              ; preds = %284, %280, %276, %273, %270
  %291 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %291, ptr %33, align 8, !tbaa !20
  %292 = zext i32 %263 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %272, i64 %292, i1 false)
  %293 = load i32, ptr %36, align 8, !tbaa !32
  store i32 %293, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !32
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %433

294:                                              ; preds = %265, %262, %102
  %295 = load i32, ptr %37, align 8, !tbaa !24
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %443, label %431

297:                                              ; preds = %72
  %298 = load ptr, ptr %40, align 8, !tbaa !28
  %299 = load i32, ptr %38, align 8, !tbaa !25
  %300 = shl i32 %299, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %301 = tail call ptr @__errno_location() #14
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %302

302:                                              ; preds = %313, %297
  %303 = phi i32 [ %315, %313 ], [ 0, %297 ]
  %304 = sub i32 %300, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %45, align 4, !tbaa !44
  %307 = zext i32 %303 to i64
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 %307
  %309 = zext nneg i32 %305 to i64
  %310 = tail call i64 @read(i32 noundef %306, ptr noundef %308, i64 noundef %309) #12
  %311 = trunc i64 %310 to i32
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %317, label %313

313:                                              ; preds = %302
  %314 = load i32, ptr %0, align 4, !tbaa !4
  %315 = add i32 %314, %311
  store i32 %315, ptr %0, align 4, !tbaa !4
  %316 = icmp ult i32 %315, %300
  br i1 %316, label %302, label %331, !llvm.loop !45

317:                                              ; preds = %302
  %318 = icmp slt i32 %311, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %317
  %320 = load i32, ptr %301, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  store i32 1, ptr %44, align 4, !tbaa !17
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, ptr %301, align 4, !tbaa !4
  br label %328

327:                                              ; preds = %317
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %331

328:                                              ; preds = %319, %325
  %329 = phi i32 [ %326, %325 ], [ %320, %319 ]
  %330 = tail call ptr @strerror(i32 noundef %329) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %330) #12
  br label %1033

331:                                              ; preds = %313, %327, %322
  %332 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %332, ptr %33, align 8, !tbaa !20
  br label %443

333:                                              ; preds = %72
  %334 = load i32, ptr %38, align 8, !tbaa !25
  %335 = shl i32 %334, 1
  store i32 %335, ptr %39, align 8, !tbaa !46
  %336 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %336, ptr %41, align 8, !tbaa !47
  br label %337

337:                                              ; preds = %410, %333
  %338 = phi i32 [ 0, %333 ], [ %389, %410 ]
  %339 = load i32, ptr %36, align 8, !tbaa !32
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %388

341:                                              ; preds = %337
  %342 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %342, label %421 [
    i32 0, label %343
    i32 -5, label %343
  ]

343:                                              ; preds = %341, %341
  %344 = load i32, ptr %35, align 8, !tbaa !22
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %384

346:                                              ; preds = %343
  %347 = load ptr, ptr %43, align 8, !tbaa !27
  %348 = load i32, ptr %38, align 8, !tbaa !25
  store i32 0, ptr %44, align 4, !tbaa !17
  %349 = tail call ptr @__errno_location() #14
  store i32 0, ptr %349, align 4, !tbaa !4
  br label %350

350:                                              ; preds = %361, %346
  %351 = phi i32 [ 0, %346 ], [ %362, %361 ]
  %352 = sub i32 %348, %351
  %353 = tail call i32 @llvm.umin.i32(i32 %352, i32 1073741824)
  %354 = load i32, ptr %45, align 4, !tbaa !44
  %355 = zext i32 %351 to i64
  %356 = getelementptr inbounds nuw i8, ptr %347, i64 %355
  %357 = zext nneg i32 %353 to i64
  %358 = tail call i64 @read(i32 noundef %354, ptr noundef %356, i64 noundef %357) #12
  %359 = trunc i64 %358 to i32
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %364, label %361

361:                                              ; preds = %350
  %362 = add i32 %351, %359
  %363 = icmp ult i32 %362, %348
  br i1 %363, label %350, label %378, !llvm.loop !45

364:                                              ; preds = %350
  %365 = icmp slt i32 %359, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %364
  %367 = load i32, ptr %349, align 4, !tbaa !4
  %368 = icmp eq i32 %367, 11
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  store i32 1, ptr %44, align 4, !tbaa !17
  %370 = icmp eq i32 %351, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %369
  %372 = load i32, ptr %349, align 4, !tbaa !4
  br label %374

373:                                              ; preds = %364
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %378

374:                                              ; preds = %366, %371
  %375 = phi i32 [ %372, %371 ], [ %367, %366 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %376) #12
  %377 = load i32, ptr %9, align 8, !tbaa !16
  br label %421

378:                                              ; preds = %361, %373, %369
  %379 = phi i32 [ %351, %369 ], [ %351, %373 ], [ %362, %361 ]
  %380 = load i32, ptr %36, align 8, !tbaa !32
  %381 = add i32 %380, %379
  store i32 %381, ptr %36, align 8, !tbaa !32
  %382 = load ptr, ptr %43, align 8, !tbaa !27
  store ptr %382, ptr %42, align 8, !tbaa !33
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %378, %343
  %385 = load i32, ptr %44, align 4, !tbaa !17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %421

387:                                              ; preds = %384
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %421

388:                                              ; preds = %378, %337
  %389 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #12
  %390 = load i32, ptr %39, align 8, !tbaa !46
  %391 = icmp ult i32 %390, %335
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store i32 0, ptr %46, align 4, !tbaa !31
  br label %393

393:                                              ; preds = %392, %388
  switch i32 %389, label %410 [
    i32 -2, label %394
    i32 2, label %394
    i32 -4, label %395
    i32 -3, label %396
  ]

394:                                              ; preds = %393, %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %421

395:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %414

396:                                              ; preds = %393
  %397 = load i32, ptr %46, align 4, !tbaa !31
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  store i32 0, ptr %36, align 8, !tbaa !32
  store i32 1, ptr %35, align 8, !tbaa !22
  store i32 0, ptr %37, align 8, !tbaa !24
  %400 = sub i32 %335, %390
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %41, align 8, !tbaa !47
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %33, align 8, !tbaa !20
  br label %431

405:                                              ; preds = %396
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %407 = load ptr, ptr %406, align 8, !tbaa !48
  %408 = icmp eq ptr %407, null
  %409 = select i1 %408, ptr @.str.6, ptr %407
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %409) #12
  br label %414

410:                                              ; preds = %393
  %411 = icmp ne i32 %390, 0
  %412 = icmp ne i32 %389, 1
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %337, label %421, !llvm.loop !49

414:                                              ; preds = %405, %395
  %415 = load i32, ptr %39, align 8, !tbaa !46
  %416 = sub i32 %335, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %41, align 8, !tbaa !47
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %33, align 8, !tbaa !20
  br label %1033

421:                                              ; preds = %410, %341, %394, %387, %384, %374
  %422 = phi i32 [ %377, %374 ], [ %338, %384 ], [ %338, %387 ], [ %389, %394 ], [ %389, %410 ], [ %342, %341 ]
  %423 = load i32, ptr %39, align 8, !tbaa !46
  %424 = sub i32 %335, %423
  store i32 %424, ptr %0, align 8, !tbaa !19
  %425 = load ptr, ptr %41, align 8, !tbaa !47
  %426 = zext i32 %424 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %425, i64 %427
  store ptr %428, ptr %33, align 8, !tbaa !20
  switch i32 %422, label %1033 [
    i32 1, label %429
    i32 0, label %431
  ]

429:                                              ; preds = %421
  store i32 0, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %37, align 8, !tbaa !24
  br label %431

430:                                              ; preds = %72
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %1033

431:                                              ; preds = %429, %421, %399, %294, %288
  %432 = load i32, ptr %0, align 8, !tbaa !19
  br label %433

433:                                              ; preds = %431, %290
  %434 = phi i32 [ %432, %431 ], [ %293, %290 ]
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %433
  %437 = load i32, ptr %35, align 8, !tbaa !22
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %436
  %440 = load i32, ptr %36, align 8, !tbaa !32
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %439, %436
  br label %72, !llvm.loop !50

443:                                              ; preds = %439, %433, %294, %331
  %444 = load i64, ptr %29, align 8, !tbaa !18
  br label %445

445:                                              ; preds = %443, %54
  %446 = phi i64 [ %444, %443 ], [ %64, %54 ]
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %50, !llvm.loop !51

448:                                              ; preds = %445, %68, %28
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %467

467:                                              ; preds = %1015, %448
  %468 = phi ptr [ %2, %448 ], [ %1019, %1015 ]
  %469 = phi i64 [ 1, %448 ], [ %1018, %1015 ]
  %470 = phi i64 [ 0, %448 ], [ %1017, %1015 ]
  %471 = call i64 @llvm.umin.i64(i64 %469, i64 4294967295)
  %472 = trunc nuw i64 %471 to i32
  %473 = load i32, ptr %0, align 8, !tbaa !19
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %486, label %475

475:                                              ; preds = %467
  %476 = call i32 @llvm.umin.i32(i32 %473, i32 %472)
  %477 = load ptr, ptr %449, align 8, !tbaa !20
  %478 = zext i32 %476 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %468, ptr align 1 %477, i64 %478, i1 false)
  %479 = load ptr, ptr %449, align 8, !tbaa !20
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 %478
  store ptr %480, ptr %449, align 8, !tbaa !20
  %481 = load i32, ptr %0, align 8, !tbaa !19
  %482 = sub i32 %481, %476
  store i32 %482, ptr %0, align 8, !tbaa !19
  %483 = load i32, ptr %9, align 8, !tbaa !16
  %484 = icmp ne i32 %483, 0
  %485 = sext i1 %484 to i32
  br label %1006

486:                                              ; preds = %467
  %487 = load i32, ptr %450, align 8, !tbaa !22
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %451, align 8, !tbaa !23
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %1024, label %492

492:                                              ; preds = %489, %486
  %493 = load i32, ptr %452, align 8, !tbaa !24
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %492
  %496 = load i32, ptr %453, align 8, !tbaa !25
  %497 = shl i32 %496, 1
  %498 = icmp ugt i32 %497, %472
  br i1 %498, label %499, label %875

499:                                              ; preds = %495, %492
  br label %500

500:                                              ; preds = %499, %869
  %501 = phi i32 [ %870, %869 ], [ %493, %499 ]
  switch i32 %501, label %857 [
    i32 0, label %502
    i32 1, label %725
    i32 2, label %761
  ]

502:                                              ; preds = %500
  %503 = load i32, ptr %453, align 8, !tbaa !25
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %524

505:                                              ; preds = %502
  %506 = load i32, ptr %464, align 4, !tbaa !26
  %507 = zext i32 %506 to i64
  %508 = call noalias ptr @malloc(i64 noundef %507) #13
  store ptr %508, ptr %457, align 8, !tbaa !27
  %509 = load i32, ptr %464, align 4, !tbaa !26
  %510 = shl i32 %509, 1
  %511 = zext i32 %510 to i64
  %512 = call noalias ptr @malloc(i64 noundef %511) #13
  store ptr %512, ptr %463, align 8, !tbaa !28
  %513 = icmp eq ptr %508, null
  %514 = icmp eq ptr %512, null
  %515 = or i1 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %505
  call void @free(ptr noundef %512) #12
  call void @free(ptr noundef %508) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

517:                                              ; preds = %505
  %518 = load i32, ptr %464, align 4, !tbaa !26
  store i32 %518, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %451, align 8, !tbaa !23
  store ptr null, ptr %456, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %465, i8 0, i64 24, i1 false)
  %519 = call i32 @inflateInit2_(ptr noundef nonnull %456, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %517
  %522 = load ptr, ptr %463, align 8, !tbaa !28
  call void @free(ptr noundef %522) #12
  %523 = load ptr, ptr %457, align 8, !tbaa !27
  call void @free(ptr noundef %523) #12
  store i32 0, ptr %453, align 8, !tbaa !25
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

524:                                              ; preds = %517, %502
  %525 = load i32, ptr %466, align 8, !tbaa !30
  %526 = icmp eq i32 %525, -1
  br i1 %526, label %530, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %460, align 4, !tbaa !31
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %527, %524
  %531 = call i32 @inflateReset(ptr noundef nonnull %456) #12
  store i32 2, ptr %452, align 8, !tbaa !24
  %532 = load i32, ptr %460, align 4, !tbaa !31
  %533 = icmp ne i32 %532, -1
  %534 = zext i1 %533 to i32
  store i32 %534, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %466, align 8, !tbaa !30
  br label %722

535:                                              ; preds = %527
  %536 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %536, label %871 [
    i32 0, label %537
    i32 -5, label %537
  ]

537:                                              ; preds = %535, %535
  %538 = load i32, ptr %450, align 8, !tbaa !22
  %539 = icmp eq i32 %538, 0
  %540 = load i32, ptr %451, align 8, !tbaa !32
  br i1 %539, label %541, label %690

541:                                              ; preds = %537
  %542 = icmp eq i32 %540, 0
  %543 = load ptr, ptr %457, align 8, !tbaa !27
  %544 = ptrtoaddr ptr %543 to i64
  br i1 %542, label %650, label %545

545:                                              ; preds = %541
  %546 = load ptr, ptr %456, align 8, !tbaa !33
  %547 = icmp eq ptr %546, %543
  br i1 %547, label %650, label %548

548:                                              ; preds = %545
  %549 = ptrtoaddr ptr %546 to i64
  %550 = zext i32 %540 to i64
  %551 = icmp ult i32 %540, 4
  %552 = sub i64 %544, %549
  %553 = icmp ult i64 %552, 32
  %554 = select i1 %551, i1 true, i1 %553
  br i1 %554, label %594, label %555

555:                                              ; preds = %548
  %556 = icmp ult i32 %540, 32
  br i1 %556, label %578, label %557

557:                                              ; preds = %555
  %558 = and i64 %550, 28
  %559 = and i64 %550, 4294967264
  %560 = getelementptr i8, ptr %543, i64 %559
  %561 = getelementptr i8, ptr %546, i64 %559
  %562 = trunc nuw i64 %559 to i32
  %563 = sub i32 %540, %562
  br label %564

564:                                              ; preds = %564, %557
  %565 = phi i64 [ 0, %557 ], [ %572, %564 ]
  %566 = getelementptr i8, ptr %543, i64 %565
  %567 = getelementptr i8, ptr %546, i64 %565
  %568 = getelementptr i8, ptr %567, i64 16
  %569 = load <16 x i8>, ptr %567, align 1, !tbaa !34
  %570 = load <16 x i8>, ptr %568, align 1, !tbaa !34
  %571 = getelementptr i8, ptr %566, i64 16
  store <16 x i8> %569, ptr %566, align 1, !tbaa !34
  store <16 x i8> %570, ptr %571, align 1, !tbaa !34
  %572 = add nuw i64 %565, 32
  %573 = icmp eq i64 %572, %559
  br i1 %573, label %574, label %564, !llvm.loop !72

574:                                              ; preds = %564
  %575 = icmp eq i64 %559, %550
  br i1 %575, label %647, label %576

576:                                              ; preds = %574
  %577 = icmp eq i64 %558, 0
  br i1 %577, label %594, label %578, !prof !39

578:                                              ; preds = %555, %576
  %579 = phi i64 [ %559, %576 ], [ 0, %555 ]
  %580 = and i64 %550, 4294967292
  %581 = getelementptr i8, ptr %543, i64 %580
  %582 = getelementptr i8, ptr %546, i64 %580
  %583 = trunc nuw i64 %580 to i32
  %584 = sub i32 %540, %583
  br label %585

585:                                              ; preds = %585, %578
  %586 = phi i64 [ %579, %578 ], [ %590, %585 ]
  %587 = getelementptr i8, ptr %543, i64 %586
  %588 = getelementptr i8, ptr %546, i64 %586
  %589 = load <4 x i8>, ptr %588, align 1, !tbaa !34
  store <4 x i8> %589, ptr %587, align 1, !tbaa !34
  %590 = add nuw i64 %586, 4
  %591 = icmp eq i64 %590, %580
  br i1 %591, label %592, label %585, !llvm.loop !73

592:                                              ; preds = %585
  %593 = icmp eq i64 %580, %550
  br i1 %593, label %647, label %594

594:                                              ; preds = %548, %576, %592
  %595 = phi ptr [ %543, %548 ], [ %560, %576 ], [ %581, %592 ]
  %596 = phi ptr [ %546, %548 ], [ %561, %576 ], [ %582, %592 ]
  %597 = phi i32 [ %540, %548 ], [ %563, %576 ], [ %584, %592 ]
  %598 = add i32 %597, -1
  %599 = and i32 %597, 7
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %612, label %601

601:                                              ; preds = %594, %601
  %602 = phi ptr [ %608, %601 ], [ %595, %594 ]
  %603 = phi ptr [ %606, %601 ], [ %596, %594 ]
  %604 = phi i32 [ %609, %601 ], [ %597, %594 ]
  %605 = phi i32 [ %610, %601 ], [ 0, %594 ]
  %606 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %607 = load i8, ptr %603, align 1, !tbaa !34
  %608 = getelementptr inbounds nuw i8, ptr %602, i64 1
  store i8 %607, ptr %602, align 1, !tbaa !34
  %609 = add i32 %604, -1
  %610 = add i32 %605, 1
  %611 = icmp eq i32 %610, %599
  br i1 %611, label %612, label %601, !llvm.loop !74

612:                                              ; preds = %601, %594
  %613 = phi ptr [ %595, %594 ], [ %608, %601 ]
  %614 = phi ptr [ %596, %594 ], [ %606, %601 ]
  %615 = phi i32 [ %597, %594 ], [ %609, %601 ]
  %616 = icmp ult i32 %598, 7
  br i1 %616, label %647, label %617

617:                                              ; preds = %612, %617
  %618 = phi ptr [ %644, %617 ], [ %613, %612 ]
  %619 = phi ptr [ %642, %617 ], [ %614, %612 ]
  %620 = phi i32 [ %645, %617 ], [ %615, %612 ]
  %621 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %622 = load i8, ptr %619, align 1, !tbaa !34
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 1
  store i8 %622, ptr %618, align 1, !tbaa !34
  %624 = getelementptr inbounds nuw i8, ptr %619, i64 2
  %625 = load i8, ptr %621, align 1, !tbaa !34
  %626 = getelementptr inbounds nuw i8, ptr %618, i64 2
  store i8 %625, ptr %623, align 1, !tbaa !34
  %627 = getelementptr inbounds nuw i8, ptr %619, i64 3
  %628 = load i8, ptr %624, align 1, !tbaa !34
  %629 = getelementptr inbounds nuw i8, ptr %618, i64 3
  store i8 %628, ptr %626, align 1, !tbaa !34
  %630 = getelementptr inbounds nuw i8, ptr %619, i64 4
  %631 = load i8, ptr %627, align 1, !tbaa !34
  %632 = getelementptr inbounds nuw i8, ptr %618, i64 4
  store i8 %631, ptr %629, align 1, !tbaa !34
  %633 = getelementptr inbounds nuw i8, ptr %619, i64 5
  %634 = load i8, ptr %630, align 1, !tbaa !34
  %635 = getelementptr inbounds nuw i8, ptr %618, i64 5
  store i8 %634, ptr %632, align 1, !tbaa !34
  %636 = getelementptr inbounds nuw i8, ptr %619, i64 6
  %637 = load i8, ptr %633, align 1, !tbaa !34
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 6
  store i8 %637, ptr %635, align 1, !tbaa !34
  %639 = getelementptr inbounds nuw i8, ptr %619, i64 7
  %640 = load i8, ptr %636, align 1, !tbaa !34
  %641 = getelementptr inbounds nuw i8, ptr %618, i64 7
  store i8 %640, ptr %638, align 1, !tbaa !34
  %642 = getelementptr inbounds nuw i8, ptr %619, i64 8
  %643 = load i8, ptr %639, align 1, !tbaa !34
  %644 = getelementptr inbounds nuw i8, ptr %618, i64 8
  store i8 %643, ptr %641, align 1, !tbaa !34
  %645 = add i32 %620, -8
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %617, !llvm.loop !75

647:                                              ; preds = %612, %617, %592, %574
  %648 = load i32, ptr %451, align 8, !tbaa !32
  %649 = load ptr, ptr %457, align 8, !tbaa !27
  br label %650

650:                                              ; preds = %647, %545, %541
  %651 = phi ptr [ %649, %647 ], [ %543, %545 ], [ %543, %541 ]
  %652 = phi i32 [ %648, %647 ], [ %540, %545 ], [ 0, %541 ]
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds nuw i8, ptr %651, i64 %653
  %655 = load i32, ptr %453, align 8, !tbaa !25
  %656 = sub i32 %655, %652
  store i32 0, ptr %458, align 4, !tbaa !17
  %657 = tail call ptr @__errno_location() #14
  store i32 0, ptr %657, align 4, !tbaa !4
  br label %658

658:                                              ; preds = %669, %650
  %659 = phi i32 [ 0, %650 ], [ %670, %669 ]
  %660 = sub i32 %656, %659
  %661 = call i32 @llvm.umin.i32(i32 %660, i32 1073741824)
  %662 = load i32, ptr %459, align 4, !tbaa !44
  %663 = zext i32 %659 to i64
  %664 = getelementptr inbounds nuw i8, ptr %654, i64 %663
  %665 = zext nneg i32 %661 to i64
  %666 = call i64 @read(i32 noundef %662, ptr noundef %664, i64 noundef %665) #12
  %667 = trunc i64 %666 to i32
  %668 = icmp slt i32 %667, 1
  br i1 %668, label %672, label %669

669:                                              ; preds = %658
  %670 = add i32 %659, %667
  %671 = icmp ult i32 %670, %656
  br i1 %671, label %658, label %685, !llvm.loop !45

672:                                              ; preds = %658
  %673 = icmp slt i32 %667, 0
  br i1 %673, label %674, label %681

674:                                              ; preds = %672
  %675 = load i32, ptr %657, align 4, !tbaa !4
  %676 = icmp eq i32 %675, 11
  br i1 %676, label %677, label %682

677:                                              ; preds = %674
  store i32 1, ptr %458, align 4, !tbaa !17
  %678 = icmp eq i32 %659, 0
  br i1 %678, label %679, label %685

679:                                              ; preds = %677
  %680 = load i32, ptr %657, align 4, !tbaa !4
  br label %682

681:                                              ; preds = %672
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %685

682:                                              ; preds = %674, %679
  %683 = phi i32 [ %680, %679 ], [ %675, %674 ]
  %684 = call ptr @strerror(i32 noundef %683) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %684) #12
  br label %871

685:                                              ; preds = %669, %681, %677
  %686 = phi i32 [ %659, %677 ], [ %659, %681 ], [ %670, %669 ]
  %687 = load i32, ptr %451, align 8, !tbaa !32
  %688 = add i32 %687, %686
  store i32 %688, ptr %451, align 8, !tbaa !32
  %689 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %689, ptr %456, align 8, !tbaa !33
  br label %690

690:                                              ; preds = %685, %537
  %691 = phi i32 [ %688, %685 ], [ %540, %537 ]
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %722, label %693

693:                                              ; preds = %690
  %694 = load i32, ptr %458, align 4, !tbaa !17
  %695 = icmp ne i32 %694, 0
  %696 = icmp ult i32 %691, 4
  %697 = and i1 %696, %695
  br i1 %697, label %722, label %698

698:                                              ; preds = %693
  %699 = icmp ugt i32 %691, 3
  %700 = load ptr, ptr %456, align 8, !tbaa !33
  br i1 %699, label %701, label %718

701:                                              ; preds = %698
  %702 = load i8, ptr %700, align 1, !tbaa !34
  %703 = icmp eq i8 %702, 31
  br i1 %703, label %704, label %718

704:                                              ; preds = %701
  %705 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !34
  %707 = icmp eq i8 %706, -117
  br i1 %707, label %708, label %718

708:                                              ; preds = %704
  %709 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %710 = load i8, ptr %709, align 1, !tbaa !34
  %711 = icmp eq i8 %710, 8
  br i1 %711, label %712, label %718

712:                                              ; preds = %708
  %713 = getelementptr inbounds nuw i8, ptr %700, i64 3
  %714 = load i8, ptr %713, align 1, !tbaa !34
  %715 = icmp ult i8 %714, 32
  br i1 %715, label %716, label %718

716:                                              ; preds = %712
  %717 = call i32 @inflateReset(ptr noundef nonnull %456) #12
  store i32 2, ptr %452, align 8, !tbaa !24
  store i32 1, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %466, align 8, !tbaa !30
  br label %858

718:                                              ; preds = %712, %708, %704, %701, %698
  %719 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %719, ptr %449, align 8, !tbaa !20
  %720 = zext i32 %691 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %719, ptr align 1 %700, i64 %720, i1 false)
  %721 = load i32, ptr %451, align 8, !tbaa !32
  store i32 %721, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %860

722:                                              ; preds = %693, %690, %530
  %723 = load i32, ptr %452, align 8, !tbaa !24
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %1015, label %858

725:                                              ; preds = %500
  %726 = load ptr, ptr %463, align 8, !tbaa !28
  %727 = load i32, ptr %453, align 8, !tbaa !25
  %728 = shl i32 %727, 1
  store i32 0, ptr %458, align 4, !tbaa !17
  %729 = tail call ptr @__errno_location() #14
  store i32 0, ptr %729, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %730

730:                                              ; preds = %741, %725
  %731 = phi i32 [ %743, %741 ], [ 0, %725 ]
  %732 = sub i32 %728, %731
  %733 = call i32 @llvm.umin.i32(i32 %732, i32 1073741824)
  %734 = load i32, ptr %459, align 4, !tbaa !44
  %735 = zext i32 %731 to i64
  %736 = getelementptr inbounds nuw i8, ptr %726, i64 %735
  %737 = zext nneg i32 %733 to i64
  %738 = call i64 @read(i32 noundef %734, ptr noundef %736, i64 noundef %737) #12
  %739 = trunc i64 %738 to i32
  %740 = icmp slt i32 %739, 1
  br i1 %740, label %745, label %741

741:                                              ; preds = %730
  %742 = load i32, ptr %0, align 4, !tbaa !4
  %743 = add i32 %742, %739
  store i32 %743, ptr %0, align 4, !tbaa !4
  %744 = icmp ult i32 %743, %728
  br i1 %744, label %730, label %759, !llvm.loop !45

745:                                              ; preds = %730
  %746 = icmp slt i32 %739, 0
  br i1 %746, label %747, label %755

747:                                              ; preds = %745
  %748 = load i32, ptr %729, align 4, !tbaa !4
  %749 = icmp eq i32 %748, 11
  br i1 %749, label %750, label %756

750:                                              ; preds = %747
  store i32 1, ptr %458, align 4, !tbaa !17
  %751 = load i32, ptr %0, align 4, !tbaa !4
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %759

753:                                              ; preds = %750
  %754 = load i32, ptr %729, align 4, !tbaa !4
  br label %756

755:                                              ; preds = %745
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %759

756:                                              ; preds = %753, %747
  %757 = phi i32 [ %754, %753 ], [ %748, %747 ]
  %758 = call ptr @strerror(i32 noundef %757) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %758) #12
  br label %871

759:                                              ; preds = %741, %755, %750
  %760 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %760, ptr %449, align 8, !tbaa !20
  br label %1015

761:                                              ; preds = %500
  %762 = load i32, ptr %453, align 8, !tbaa !25
  %763 = shl i32 %762, 1
  store i32 %763, ptr %454, align 8, !tbaa !46
  %764 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %764, ptr %455, align 8, !tbaa !47
  br label %765

765:                                              ; preds = %837, %761
  %766 = phi i32 [ 0, %761 ], [ %817, %837 ]
  %767 = load i32, ptr %451, align 8, !tbaa !32
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %816

769:                                              ; preds = %765
  %770 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %770, label %848 [
    i32 0, label %771
    i32 -5, label %771
  ]

771:                                              ; preds = %769, %769
  %772 = load i32, ptr %450, align 8, !tbaa !22
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %812

774:                                              ; preds = %771
  %775 = load ptr, ptr %457, align 8, !tbaa !27
  %776 = load i32, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %458, align 4, !tbaa !17
  %777 = tail call ptr @__errno_location() #14
  store i32 0, ptr %777, align 4, !tbaa !4
  br label %778

778:                                              ; preds = %789, %774
  %779 = phi i32 [ 0, %774 ], [ %790, %789 ]
  %780 = sub i32 %776, %779
  %781 = call i32 @llvm.umin.i32(i32 %780, i32 1073741824)
  %782 = load i32, ptr %459, align 4, !tbaa !44
  %783 = zext i32 %779 to i64
  %784 = getelementptr inbounds nuw i8, ptr %775, i64 %783
  %785 = zext nneg i32 %781 to i64
  %786 = call i64 @read(i32 noundef %782, ptr noundef %784, i64 noundef %785) #12
  %787 = trunc i64 %786 to i32
  %788 = icmp slt i32 %787, 1
  br i1 %788, label %792, label %789

789:                                              ; preds = %778
  %790 = add i32 %779, %787
  %791 = icmp ult i32 %790, %776
  br i1 %791, label %778, label %806, !llvm.loop !45

792:                                              ; preds = %778
  %793 = icmp slt i32 %787, 0
  br i1 %793, label %794, label %801

794:                                              ; preds = %792
  %795 = load i32, ptr %777, align 4, !tbaa !4
  %796 = icmp eq i32 %795, 11
  br i1 %796, label %797, label %802

797:                                              ; preds = %794
  store i32 1, ptr %458, align 4, !tbaa !17
  %798 = icmp eq i32 %779, 0
  br i1 %798, label %799, label %806

799:                                              ; preds = %797
  %800 = load i32, ptr %777, align 4, !tbaa !4
  br label %802

801:                                              ; preds = %792
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %806

802:                                              ; preds = %794, %799
  %803 = phi i32 [ %800, %799 ], [ %795, %794 ]
  %804 = call ptr @strerror(i32 noundef %803) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %804) #12
  %805 = load i32, ptr %9, align 8, !tbaa !16
  br label %848

806:                                              ; preds = %789, %801, %797
  %807 = phi i32 [ %779, %797 ], [ %779, %801 ], [ %790, %789 ]
  %808 = load i32, ptr %451, align 8, !tbaa !32
  %809 = add i32 %808, %807
  store i32 %809, ptr %451, align 8, !tbaa !32
  %810 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %810, ptr %456, align 8, !tbaa !33
  %811 = icmp eq i32 %809, 0
  br i1 %811, label %812, label %816

812:                                              ; preds = %806, %771
  %813 = load i32, ptr %458, align 4, !tbaa !17
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %848

815:                                              ; preds = %812
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %848

816:                                              ; preds = %806, %765
  %817 = call i32 @inflate(ptr noundef nonnull %456, i32 noundef 0) #12
  %818 = load i32, ptr %454, align 8, !tbaa !46
  %819 = icmp ult i32 %818, %763
  br i1 %819, label %820, label %821

820:                                              ; preds = %816
  store i32 0, ptr %460, align 4, !tbaa !31
  br label %821

821:                                              ; preds = %820, %816
  switch i32 %817, label %837 [
    i32 -2, label %822
    i32 2, label %822
    i32 -4, label %823
    i32 -3, label %824
  ]

822:                                              ; preds = %821, %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %848

823:                                              ; preds = %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %841

824:                                              ; preds = %821
  %825 = load i32, ptr %460, align 4, !tbaa !31
  %826 = icmp eq i32 %825, 1
  br i1 %826, label %827, label %833

827:                                              ; preds = %824
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %450, align 8, !tbaa !22
  store i32 0, ptr %452, align 8, !tbaa !24
  %828 = sub i32 %763, %818
  store i32 %828, ptr %0, align 8, !tbaa !19
  %829 = load ptr, ptr %455, align 8, !tbaa !47
  %830 = zext i32 %828 to i64
  %831 = sub nsw i64 0, %830
  %832 = getelementptr inbounds i8, ptr %829, i64 %831
  store ptr %832, ptr %449, align 8, !tbaa !20
  br label %858

833:                                              ; preds = %824
  %834 = load ptr, ptr %461, align 8, !tbaa !48
  %835 = icmp eq ptr %834, null
  %836 = select i1 %835, ptr @.str.6, ptr %834
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %836) #12
  br label %841

837:                                              ; preds = %821
  %838 = icmp ne i32 %818, 0
  %839 = icmp ne i32 %817, 1
  %840 = select i1 %838, i1 %839, i1 false
  br i1 %840, label %765, label %848, !llvm.loop !49

841:                                              ; preds = %833, %823
  %842 = load i32, ptr %454, align 8, !tbaa !46
  %843 = sub i32 %763, %842
  store i32 %843, ptr %0, align 8, !tbaa !19
  %844 = load ptr, ptr %455, align 8, !tbaa !47
  %845 = zext i32 %843 to i64
  %846 = sub nsw i64 0, %845
  %847 = getelementptr inbounds i8, ptr %844, i64 %846
  store ptr %847, ptr %449, align 8, !tbaa !20
  br label %871

848:                                              ; preds = %837, %769, %822, %815, %812, %802
  %849 = phi i32 [ %805, %802 ], [ %766, %812 ], [ %766, %815 ], [ %817, %822 ], [ %770, %769 ], [ %817, %837 ]
  %850 = load i32, ptr %454, align 8, !tbaa !46
  %851 = sub i32 %763, %850
  store i32 %851, ptr %0, align 8, !tbaa !19
  %852 = load ptr, ptr %455, align 8, !tbaa !47
  %853 = zext i32 %851 to i64
  %854 = sub nsw i64 0, %853
  %855 = getelementptr inbounds i8, ptr %852, i64 %854
  store ptr %855, ptr %449, align 8, !tbaa !20
  switch i32 %849, label %871 [
    i32 1, label %856
    i32 0, label %858
  ]

856:                                              ; preds = %848
  store i32 0, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %858

857:                                              ; preds = %500
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %871

858:                                              ; preds = %856, %848, %827, %722, %716
  %859 = load i32, ptr %0, align 8, !tbaa !19
  br label %860

860:                                              ; preds = %858, %718
  %861 = phi i32 [ %859, %858 ], [ %721, %718 ]
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %1015

863:                                              ; preds = %860
  %864 = load i32, ptr %450, align 8, !tbaa !22
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %869, label %866

866:                                              ; preds = %863
  %867 = load i32, ptr %451, align 8, !tbaa !32
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %1015, label %869

869:                                              ; preds = %866, %863
  %870 = load i32, ptr %452, align 8, !tbaa !24
  br label %500, !llvm.loop !50

871:                                              ; preds = %848, %535, %857, %841, %756, %682, %521, %516
  %872 = load i32, ptr %0, align 8, !tbaa !19
  %873 = icmp eq i32 %872, 0
  %874 = sext i1 %873 to i32
  br label %1015

875:                                              ; preds = %495
  %876 = icmp eq i32 %493, 1
  br i1 %876, label %877, label %906

877:                                              ; preds = %875
  store i32 0, ptr %458, align 4, !tbaa !17
  %878 = tail call ptr @__errno_location() #14
  store i32 0, ptr %878, align 4, !tbaa !4
  br label %879

879:                                              ; preds = %890, %877
  %880 = phi i32 [ 0, %877 ], [ %891, %890 ]
  %881 = sub i32 %472, %880
  %882 = call i32 @llvm.umin.i32(i32 %881, i32 1073741824)
  %883 = load i32, ptr %459, align 4, !tbaa !44
  %884 = zext i32 %880 to i64
  %885 = getelementptr inbounds nuw i8, ptr %468, i64 %884
  %886 = zext nneg i32 %882 to i64
  %887 = call i64 @read(i32 noundef %883, ptr noundef %885, i64 noundef %886) #12
  %888 = trunc i64 %887 to i32
  %889 = icmp slt i32 %888, 1
  br i1 %889, label %893, label %890

890:                                              ; preds = %879
  %891 = add i32 %880, %888
  %892 = icmp ult i32 %891, %472
  br i1 %892, label %879, label %1004, !llvm.loop !45

893:                                              ; preds = %879
  %894 = icmp slt i32 %888, 0
  br i1 %894, label %895, label %905

895:                                              ; preds = %893
  %896 = load i32, ptr %878, align 4, !tbaa !4
  %897 = icmp eq i32 %896, 11
  br i1 %897, label %898, label %902

898:                                              ; preds = %895
  store i32 1, ptr %458, align 4, !tbaa !17
  %899 = icmp eq i32 %880, 0
  br i1 %899, label %900, label %1006

900:                                              ; preds = %898
  %901 = load i32, ptr %878, align 4, !tbaa !4
  br label %902

902:                                              ; preds = %900, %895
  %903 = phi i32 [ %901, %900 ], [ %896, %895 ]
  %904 = call ptr @strerror(i32 noundef %903) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %904) #12
  br label %1006

905:                                              ; preds = %893
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %1006

906:                                              ; preds = %875
  store i32 %472, ptr %454, align 8, !tbaa !56
  store ptr %468, ptr %455, align 8, !tbaa !57
  br label %907

907:                                              ; preds = %974, %906
  %908 = phi i32 [ 0, %906 ], [ %959, %974 ]
  %909 = load i32, ptr %451, align 8, !tbaa !32
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %958

911:                                              ; preds = %907
  %912 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %912, label %986 [
    i32 0, label %913
    i32 -5, label %913
  ]

913:                                              ; preds = %911, %911
  %914 = load i32, ptr %450, align 8, !tbaa !22
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %954

916:                                              ; preds = %913
  %917 = load ptr, ptr %457, align 8, !tbaa !27
  %918 = load i32, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %458, align 4, !tbaa !17
  %919 = tail call ptr @__errno_location() #14
  store i32 0, ptr %919, align 4, !tbaa !4
  br label %920

920:                                              ; preds = %931, %916
  %921 = phi i32 [ 0, %916 ], [ %932, %931 ]
  %922 = sub i32 %918, %921
  %923 = call i32 @llvm.umin.i32(i32 %922, i32 1073741824)
  %924 = load i32, ptr %459, align 4, !tbaa !44
  %925 = zext i32 %921 to i64
  %926 = getelementptr inbounds nuw i8, ptr %917, i64 %925
  %927 = zext nneg i32 %923 to i64
  %928 = call i64 @read(i32 noundef %924, ptr noundef %926, i64 noundef %927) #12
  %929 = trunc i64 %928 to i32
  %930 = icmp slt i32 %929, 1
  br i1 %930, label %934, label %931

931:                                              ; preds = %920
  %932 = add i32 %921, %929
  %933 = icmp ult i32 %932, %918
  br i1 %933, label %920, label %948, !llvm.loop !45

934:                                              ; preds = %920
  %935 = icmp slt i32 %929, 0
  br i1 %935, label %936, label %943

936:                                              ; preds = %934
  %937 = load i32, ptr %919, align 4, !tbaa !4
  %938 = icmp eq i32 %937, 11
  br i1 %938, label %939, label %944

939:                                              ; preds = %936
  store i32 1, ptr %458, align 4, !tbaa !17
  %940 = icmp eq i32 %921, 0
  br i1 %940, label %941, label %948

941:                                              ; preds = %939
  %942 = load i32, ptr %919, align 4, !tbaa !4
  br label %944

943:                                              ; preds = %934
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %948

944:                                              ; preds = %936, %941
  %945 = phi i32 [ %942, %941 ], [ %937, %936 ]
  %946 = call ptr @strerror(i32 noundef %945) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %946) #12
  %947 = load i32, ptr %9, align 8, !tbaa !16
  br label %986

948:                                              ; preds = %931, %943, %939
  %949 = phi i32 [ %921, %939 ], [ %921, %943 ], [ %932, %931 ]
  %950 = load i32, ptr %451, align 8, !tbaa !32
  %951 = add i32 %950, %949
  store i32 %951, ptr %451, align 8, !tbaa !32
  %952 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %952, ptr %456, align 8, !tbaa !33
  %953 = icmp eq i32 %951, 0
  br i1 %953, label %954, label %958

954:                                              ; preds = %948, %913
  %955 = load i32, ptr %458, align 4, !tbaa !17
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %986

957:                                              ; preds = %954
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %986

958:                                              ; preds = %948, %907
  %959 = call i32 @inflate(ptr noundef nonnull %456, i32 noundef 0) #12
  %960 = load i32, ptr %454, align 8, !tbaa !46
  %961 = icmp ult i32 %960, %472
  br i1 %961, label %962, label %963

962:                                              ; preds = %958
  store i32 0, ptr %460, align 4, !tbaa !31
  br label %963

963:                                              ; preds = %962, %958
  switch i32 %959, label %974 [
    i32 -2, label %964
    i32 2, label %964
    i32 -4, label %965
    i32 -3, label %966
  ]

964:                                              ; preds = %963, %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %986

965:                                              ; preds = %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %978

966:                                              ; preds = %963
  %967 = load i32, ptr %460, align 4, !tbaa !31
  %968 = icmp eq i32 %967, 1
  br i1 %968, label %969, label %970

969:                                              ; preds = %966
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %450, align 8, !tbaa !22
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %978

970:                                              ; preds = %966
  %971 = load ptr, ptr %461, align 8, !tbaa !48
  %972 = icmp eq ptr %971, null
  %973 = select i1 %972, ptr @.str.6, ptr %971
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %973) #12
  br label %978

974:                                              ; preds = %963
  %975 = icmp ne i32 %960, 0
  %976 = icmp ne i32 %959, 1
  %977 = select i1 %975, i1 %976, i1 false
  br i1 %977, label %907, label %986, !llvm.loop !49

978:                                              ; preds = %965, %969, %970
  %979 = phi i32 [ -3, %970 ], [ 0, %969 ], [ -4, %965 ]
  %980 = load i32, ptr %454, align 8, !tbaa !46
  %981 = sub i32 %472, %980
  %982 = load ptr, ptr %455, align 8, !tbaa !47
  %983 = zext i32 %981 to i64
  %984 = sub nsw i64 0, %983
  %985 = getelementptr inbounds i8, ptr %982, i64 %984
  store ptr %985, ptr %449, align 8, !tbaa !20
  br label %996

986:                                              ; preds = %974, %911, %964, %957, %954, %944
  %987 = phi i32 [ %947, %944 ], [ %908, %954 ], [ %908, %957 ], [ %959, %964 ], [ %912, %911 ], [ %959, %974 ]
  %988 = load i32, ptr %454, align 8, !tbaa !46
  %989 = sub i32 %472, %988
  %990 = load ptr, ptr %455, align 8, !tbaa !47
  %991 = zext i32 %989 to i64
  %992 = sub nsw i64 0, %991
  %993 = getelementptr inbounds i8, ptr %990, i64 %992
  store ptr %993, ptr %449, align 8, !tbaa !20
  %994 = icmp eq i32 %987, 1
  br i1 %994, label %995, label %996

995:                                              ; preds = %986
  store i32 0, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %1001

996:                                              ; preds = %978, %986
  %997 = phi i64 [ %983, %978 ], [ %991, %986 ]
  %998 = phi i32 [ %979, %978 ], [ %987, %986 ]
  %999 = icmp ne i32 %998, 0
  %1000 = sext i1 %999 to i32
  br label %1001

1001:                                             ; preds = %996, %995
  %1002 = phi i64 [ %991, %995 ], [ %997, %996 ]
  %1003 = phi i32 [ 0, %995 ], [ %1000, %996 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1006

1004:                                             ; preds = %890
  %1005 = zext i32 %891 to i64
  br label %1006

1006:                                             ; preds = %475, %898, %902, %905, %1001, %1004
  %1007 = phi i64 [ %1005, %1004 ], [ %884, %905 ], [ %884, %902 ], [ %884, %898 ], [ %478, %475 ], [ %1002, %1001 ]
  %1008 = phi i32 [ 0, %1004 ], [ 0, %905 ], [ -1, %902 ], [ 0, %898 ], [ %485, %475 ], [ %1003, %1001 ]
  %1009 = sub i64 %469, %1007
  %1010 = getelementptr inbounds nuw i8, ptr %468, i64 %1007
  %1011 = add i64 %1007, %470
  %1012 = load i64, ptr %462, align 8, !tbaa !21
  %1013 = add nsw i64 %1012, %1007
  store i64 %1013, ptr %462, align 8, !tbaa !21
  %1014 = icmp eq i64 %1009, 0
  br i1 %1014, label %1027, label %1015

1015:                                             ; preds = %866, %860, %722, %759, %871, %1006
  %1016 = phi i32 [ %1008, %1006 ], [ %874, %871 ], [ 0, %759 ], [ 0, %722 ], [ 0, %860 ], [ 0, %866 ]
  %1017 = phi i64 [ %1011, %1006 ], [ %470, %871 ], [ %470, %759 ], [ %470, %722 ], [ %470, %860 ], [ %470, %866 ]
  %1018 = phi i64 [ %1009, %1006 ], [ %469, %871 ], [ %469, %759 ], [ %469, %722 ], [ %469, %860 ], [ %469, %866 ]
  %1019 = phi ptr [ %1010, %1006 ], [ %468, %871 ], [ %468, %759 ], [ %468, %722 ], [ %468, %860 ], [ %468, %866 ]
  %1020 = icmp eq i32 %1016, 0
  br i1 %1020, label %467, label %1021, !llvm.loop !58

1021:                                             ; preds = %1015
  %1022 = load i32, ptr %450, align 8, !tbaa !22
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1027, label %1024

1024:                                             ; preds = %489, %1021
  %1025 = phi i64 [ %1017, %1021 ], [ %470, %489 ]
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1026, align 4, !tbaa !59
  br label %1027

1027:                                             ; preds = %1006, %1021, %1024
  %1028 = phi i64 [ %1017, %1021 ], [ %1025, %1024 ], [ %1011, %1006 ]
  %1029 = freeze i64 %1028
  %1030 = icmp eq i64 %1029, 0
  %1031 = load i8, ptr %2, align 1
  %1032 = zext i8 %1031 to i32
  br i1 %1030, label %1033, label %1034

1033:                                             ; preds = %421, %107, %88, %254, %328, %430, %414, %93, %1027
  br label %1034

1034:                                             ; preds = %1033, %1027, %11, %4, %1, %18
  %1035 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %1033 ], [ %1032, %1027 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %1035
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1034, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1034

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1034, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store ptr %25, ptr %23, align 8, !tbaa !20
  %26 = load i8, ptr %24, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  br label %1034

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %448, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %50

50:                                               ; preds = %445, %32
  %51 = phi i64 [ %446, %445 ], [ %30, %32 ]
  %52 = load i32, ptr %0, align 8, !tbaa !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = zext i32 %52 to i64
  %56 = tail call i64 @llvm.smin.i64(i64 %51, i64 %55)
  %57 = trunc i64 %56 to i32
  %58 = sub i32 %52, %57
  store i32 %58, ptr %0, align 8, !tbaa !19
  %59 = load ptr, ptr %33, align 8, !tbaa !20
  %60 = and i64 %56, 4294967295
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 %60
  store ptr %61, ptr %33, align 8, !tbaa !20
  %62 = load i64, ptr %34, align 8, !tbaa !21
  %63 = add nsw i64 %62, %60
  store i64 %63, ptr %34, align 8, !tbaa !21
  %64 = sub nsw i64 %51, %60
  store i64 %64, ptr %29, align 8, !tbaa !18
  br label %445

65:                                               ; preds = %50
  %66 = load i32, ptr %35, align 8, !tbaa !22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %36, align 8, !tbaa !23
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %448, label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %442, %71
  %73 = load i32, ptr %37, align 8, !tbaa !24
  switch i32 %73, label %430 [
    i32 0, label %74
    i32 1, label %297
    i32 2, label %333
  ]

74:                                               ; preds = %72
  %75 = load i32, ptr %38, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32, ptr %47, align 4, !tbaa !26
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #13
  store ptr %80, ptr %43, align 8, !tbaa !27
  %81 = load i32, ptr %47, align 4, !tbaa !26
  %82 = shl i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #13
  store ptr %84, ptr %40, align 8, !tbaa !28
  %85 = icmp eq ptr %80, null
  %86 = icmp eq ptr %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  tail call void @free(ptr noundef %84) #12
  tail call void @free(ptr noundef %80) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1033

89:                                               ; preds = %77
  %90 = load i32, ptr %47, align 4, !tbaa !26
  store i32 %90, ptr %38, align 8, !tbaa !25
  store i32 0, ptr %36, align 8, !tbaa !23
  store ptr null, ptr %42, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %91 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %40, align 8, !tbaa !28
  tail call void @free(ptr noundef %94) #12
  %95 = load ptr, ptr %43, align 8, !tbaa !27
  tail call void @free(ptr noundef %95) #12
  store i32 0, ptr %38, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %1033

96:                                               ; preds = %89, %74
  %97 = load i32, ptr %49, align 8, !tbaa !30
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %46, align 4, !tbaa !31
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %96
  %103 = tail call i32 @inflateReset(ptr noundef nonnull %42) #12
  store i32 2, ptr %37, align 8, !tbaa !24
  %104 = load i32, ptr %46, align 4, !tbaa !31
  %105 = icmp ne i32 %104, -1
  %106 = zext i1 %105 to i32
  store i32 %106, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %49, align 8, !tbaa !30
  br label %294

107:                                              ; preds = %99
  %108 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %108, label %1033 [
    i32 0, label %109
    i32 -5, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load i32, ptr %35, align 8, !tbaa !22
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %36, align 8, !tbaa !32
  br i1 %111, label %113, label %262

113:                                              ; preds = %109
  %114 = icmp eq i32 %112, 0
  %115 = load ptr, ptr %43, align 8, !tbaa !27
  %116 = ptrtoaddr ptr %115 to i64
  br i1 %114, label %222, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %42, align 8, !tbaa !33
  %119 = icmp eq ptr %118, %115
  br i1 %119, label %222, label %120

120:                                              ; preds = %117
  %121 = ptrtoaddr ptr %118 to i64
  %122 = zext i32 %112 to i64
  %123 = icmp ult i32 %112, 4
  %124 = sub i64 %116, %121
  %125 = icmp ult i64 %124, 32
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %166, label %127

127:                                              ; preds = %120
  %128 = icmp ult i32 %112, 32
  br i1 %128, label %150, label %129

129:                                              ; preds = %127
  %130 = and i64 %122, 28
  %131 = and i64 %122, 4294967264
  %132 = getelementptr i8, ptr %115, i64 %131
  %133 = getelementptr i8, ptr %118, i64 %131
  %134 = trunc nuw i64 %131 to i32
  %135 = sub i32 %112, %134
  br label %136

136:                                              ; preds = %136, %129
  %137 = phi i64 [ 0, %129 ], [ %144, %136 ]
  %138 = getelementptr i8, ptr %115, i64 %137
  %139 = getelementptr i8, ptr %118, i64 %137
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !34
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !34
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !34
  store <16 x i8> %142, ptr %143, align 1, !tbaa !34
  %144 = add nuw i64 %137, 32
  %145 = icmp eq i64 %144, %131
  br i1 %145, label %146, label %136, !llvm.loop !76

146:                                              ; preds = %136
  %147 = icmp eq i64 %131, %122
  br i1 %147, label %219, label %148

148:                                              ; preds = %146
  %149 = icmp eq i64 %130, 0
  br i1 %149, label %166, label %150, !prof !39

150:                                              ; preds = %127, %148
  %151 = phi i64 [ %131, %148 ], [ 0, %127 ]
  %152 = and i64 %122, 4294967292
  %153 = getelementptr i8, ptr %115, i64 %152
  %154 = getelementptr i8, ptr %118, i64 %152
  %155 = trunc nuw i64 %152 to i32
  %156 = sub i32 %112, %155
  br label %157

157:                                              ; preds = %157, %150
  %158 = phi i64 [ %151, %150 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %115, i64 %158
  %160 = getelementptr i8, ptr %118, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !34
  store <4 x i8> %161, ptr %159, align 1, !tbaa !34
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %152
  br i1 %163, label %164, label %157, !llvm.loop !77

164:                                              ; preds = %157
  %165 = icmp eq i64 %152, %122
  br i1 %165, label %219, label %166

166:                                              ; preds = %120, %148, %164
  %167 = phi ptr [ %115, %120 ], [ %132, %148 ], [ %153, %164 ]
  %168 = phi ptr [ %118, %120 ], [ %133, %148 ], [ %154, %164 ]
  %169 = phi i32 [ %112, %120 ], [ %135, %148 ], [ %156, %164 ]
  %170 = add i32 %169, -1
  %171 = and i32 %169, 7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %166, %173
  %174 = phi ptr [ %180, %173 ], [ %167, %166 ]
  %175 = phi ptr [ %178, %173 ], [ %168, %166 ]
  %176 = phi i32 [ %181, %173 ], [ %169, %166 ]
  %177 = phi i32 [ %182, %173 ], [ 0, %166 ]
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %179 = load i8, ptr %175, align 1, !tbaa !34
  %180 = getelementptr inbounds nuw i8, ptr %174, i64 1
  store i8 %179, ptr %174, align 1, !tbaa !34
  %181 = add i32 %176, -1
  %182 = add i32 %177, 1
  %183 = icmp eq i32 %182, %171
  br i1 %183, label %184, label %173, !llvm.loop !78

184:                                              ; preds = %173, %166
  %185 = phi ptr [ %167, %166 ], [ %180, %173 ]
  %186 = phi ptr [ %168, %166 ], [ %178, %173 ]
  %187 = phi i32 [ %169, %166 ], [ %181, %173 ]
  %188 = icmp ult i32 %170, 7
  br i1 %188, label %219, label %189

189:                                              ; preds = %184, %189
  %190 = phi ptr [ %216, %189 ], [ %185, %184 ]
  %191 = phi ptr [ %214, %189 ], [ %186, %184 ]
  %192 = phi i32 [ %217, %189 ], [ %187, %184 ]
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %194 = load i8, ptr %191, align 1, !tbaa !34
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 1
  store i8 %194, ptr %190, align 1, !tbaa !34
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %197 = load i8, ptr %193, align 1, !tbaa !34
  %198 = getelementptr inbounds nuw i8, ptr %190, i64 2
  store i8 %197, ptr %195, align 1, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %200 = load i8, ptr %196, align 1, !tbaa !34
  %201 = getelementptr inbounds nuw i8, ptr %190, i64 3
  store i8 %200, ptr %198, align 1, !tbaa !34
  %202 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %203 = load i8, ptr %199, align 1, !tbaa !34
  %204 = getelementptr inbounds nuw i8, ptr %190, i64 4
  store i8 %203, ptr %201, align 1, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %206 = load i8, ptr %202, align 1, !tbaa !34
  %207 = getelementptr inbounds nuw i8, ptr %190, i64 5
  store i8 %206, ptr %204, align 1, !tbaa !34
  %208 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %209 = load i8, ptr %205, align 1, !tbaa !34
  %210 = getelementptr inbounds nuw i8, ptr %190, i64 6
  store i8 %209, ptr %207, align 1, !tbaa !34
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %212 = load i8, ptr %208, align 1, !tbaa !34
  %213 = getelementptr inbounds nuw i8, ptr %190, i64 7
  store i8 %212, ptr %210, align 1, !tbaa !34
  %214 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %215 = load i8, ptr %211, align 1, !tbaa !34
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  store i8 %215, ptr %213, align 1, !tbaa !34
  %217 = add i32 %192, -8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %189, !llvm.loop !79

219:                                              ; preds = %184, %189, %164, %146
  %220 = load i32, ptr %36, align 8, !tbaa !32
  %221 = load ptr, ptr %43, align 8, !tbaa !27
  br label %222

222:                                              ; preds = %219, %117, %113
  %223 = phi ptr [ %221, %219 ], [ %115, %117 ], [ %115, %113 ]
  %224 = phi i32 [ %220, %219 ], [ %112, %117 ], [ 0, %113 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 %225
  %227 = load i32, ptr %38, align 8, !tbaa !25
  %228 = sub i32 %227, %224
  store i32 0, ptr %44, align 4, !tbaa !17
  %229 = tail call ptr @__errno_location() #14
  store i32 0, ptr %229, align 4, !tbaa !4
  br label %230

230:                                              ; preds = %241, %222
  %231 = phi i32 [ 0, %222 ], [ %242, %241 ]
  %232 = sub i32 %228, %231
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 1073741824)
  %234 = load i32, ptr %45, align 4, !tbaa !44
  %235 = zext i32 %231 to i64
  %236 = getelementptr inbounds nuw i8, ptr %226, i64 %235
  %237 = zext nneg i32 %233 to i64
  %238 = tail call i64 @read(i32 noundef %234, ptr noundef %236, i64 noundef %237) #12
  %239 = trunc i64 %238 to i32
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %230
  %242 = add i32 %231, %239
  %243 = icmp ult i32 %242, %228
  br i1 %243, label %230, label %257, !llvm.loop !45

244:                                              ; preds = %230
  %245 = icmp slt i32 %239, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %244
  %247 = load i32, ptr %229, align 4, !tbaa !4
  %248 = icmp eq i32 %247, 11
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  store i32 1, ptr %44, align 4, !tbaa !17
  %250 = icmp eq i32 %231, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %249
  %252 = load i32, ptr %229, align 4, !tbaa !4
  br label %254

253:                                              ; preds = %244
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %257

254:                                              ; preds = %246, %251
  %255 = phi i32 [ %252, %251 ], [ %247, %246 ]
  %256 = tail call ptr @strerror(i32 noundef %255) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %256) #12
  br label %1033

257:                                              ; preds = %241, %253, %249
  %258 = phi i32 [ %231, %249 ], [ %231, %253 ], [ %242, %241 ]
  %259 = load i32, ptr %36, align 8, !tbaa !32
  %260 = add i32 %259, %258
  store i32 %260, ptr %36, align 8, !tbaa !32
  %261 = load ptr, ptr %43, align 8, !tbaa !27
  store ptr %261, ptr %42, align 8, !tbaa !33
  br label %262

262:                                              ; preds = %257, %109
  %263 = phi i32 [ %260, %257 ], [ %112, %109 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %294, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %44, align 4, !tbaa !17
  %267 = icmp ne i32 %266, 0
  %268 = icmp ult i32 %263, 4
  %269 = and i1 %268, %267
  br i1 %269, label %294, label %270

270:                                              ; preds = %265
  %271 = icmp ugt i32 %263, 3
  %272 = load ptr, ptr %42, align 8, !tbaa !33
  br i1 %271, label %273, label %290

273:                                              ; preds = %270
  %274 = load i8, ptr %272, align 1, !tbaa !34
  %275 = icmp eq i8 %274, 31
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %272, i64 1
  %278 = load i8, ptr %277, align 1, !tbaa !34
  %279 = icmp eq i8 %278, -117
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %272, i64 2
  %282 = load i8, ptr %281, align 1, !tbaa !34
  %283 = icmp eq i8 %282, 8
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw i8, ptr %272, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !34
  %287 = icmp ult i8 %286, 32
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = tail call i32 @inflateReset(ptr noundef nonnull %42) #12
  store i32 2, ptr %37, align 8, !tbaa !24
  store i32 1, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %49, align 8, !tbaa !30
  br label %431

290:                                              ; preds = %284, %280, %276, %273, %270
  %291 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %291, ptr %33, align 8, !tbaa !20
  %292 = zext i32 %263 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %272, i64 %292, i1 false)
  %293 = load i32, ptr %36, align 8, !tbaa !32
  store i32 %293, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !32
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %433

294:                                              ; preds = %265, %262, %102
  %295 = load i32, ptr %37, align 8, !tbaa !24
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %443, label %431

297:                                              ; preds = %72
  %298 = load ptr, ptr %40, align 8, !tbaa !28
  %299 = load i32, ptr %38, align 8, !tbaa !25
  %300 = shl i32 %299, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %301 = tail call ptr @__errno_location() #14
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %302

302:                                              ; preds = %313, %297
  %303 = phi i32 [ %315, %313 ], [ 0, %297 ]
  %304 = sub i32 %300, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %45, align 4, !tbaa !44
  %307 = zext i32 %303 to i64
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 %307
  %309 = zext nneg i32 %305 to i64
  %310 = tail call i64 @read(i32 noundef %306, ptr noundef %308, i64 noundef %309) #12
  %311 = trunc i64 %310 to i32
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %317, label %313

313:                                              ; preds = %302
  %314 = load i32, ptr %0, align 4, !tbaa !4
  %315 = add i32 %314, %311
  store i32 %315, ptr %0, align 4, !tbaa !4
  %316 = icmp ult i32 %315, %300
  br i1 %316, label %302, label %331, !llvm.loop !45

317:                                              ; preds = %302
  %318 = icmp slt i32 %311, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %317
  %320 = load i32, ptr %301, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  store i32 1, ptr %44, align 4, !tbaa !17
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, ptr %301, align 4, !tbaa !4
  br label %328

327:                                              ; preds = %317
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %331

328:                                              ; preds = %319, %325
  %329 = phi i32 [ %326, %325 ], [ %320, %319 ]
  %330 = tail call ptr @strerror(i32 noundef %329) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %330) #12
  br label %1033

331:                                              ; preds = %313, %327, %322
  %332 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %332, ptr %33, align 8, !tbaa !20
  br label %443

333:                                              ; preds = %72
  %334 = load i32, ptr %38, align 8, !tbaa !25
  %335 = shl i32 %334, 1
  store i32 %335, ptr %39, align 8, !tbaa !46
  %336 = load ptr, ptr %40, align 8, !tbaa !28
  store ptr %336, ptr %41, align 8, !tbaa !47
  br label %337

337:                                              ; preds = %410, %333
  %338 = phi i32 [ 0, %333 ], [ %389, %410 ]
  %339 = load i32, ptr %36, align 8, !tbaa !32
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %388

341:                                              ; preds = %337
  %342 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %342, label %421 [
    i32 0, label %343
    i32 -5, label %343
  ]

343:                                              ; preds = %341, %341
  %344 = load i32, ptr %35, align 8, !tbaa !22
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %384

346:                                              ; preds = %343
  %347 = load ptr, ptr %43, align 8, !tbaa !27
  %348 = load i32, ptr %38, align 8, !tbaa !25
  store i32 0, ptr %44, align 4, !tbaa !17
  %349 = tail call ptr @__errno_location() #14
  store i32 0, ptr %349, align 4, !tbaa !4
  br label %350

350:                                              ; preds = %361, %346
  %351 = phi i32 [ 0, %346 ], [ %362, %361 ]
  %352 = sub i32 %348, %351
  %353 = tail call i32 @llvm.umin.i32(i32 %352, i32 1073741824)
  %354 = load i32, ptr %45, align 4, !tbaa !44
  %355 = zext i32 %351 to i64
  %356 = getelementptr inbounds nuw i8, ptr %347, i64 %355
  %357 = zext nneg i32 %353 to i64
  %358 = tail call i64 @read(i32 noundef %354, ptr noundef %356, i64 noundef %357) #12
  %359 = trunc i64 %358 to i32
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %364, label %361

361:                                              ; preds = %350
  %362 = add i32 %351, %359
  %363 = icmp ult i32 %362, %348
  br i1 %363, label %350, label %378, !llvm.loop !45

364:                                              ; preds = %350
  %365 = icmp slt i32 %359, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %364
  %367 = load i32, ptr %349, align 4, !tbaa !4
  %368 = icmp eq i32 %367, 11
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  store i32 1, ptr %44, align 4, !tbaa !17
  %370 = icmp eq i32 %351, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %369
  %372 = load i32, ptr %349, align 4, !tbaa !4
  br label %374

373:                                              ; preds = %364
  store i32 1, ptr %35, align 8, !tbaa !22
  br label %378

374:                                              ; preds = %366, %371
  %375 = phi i32 [ %372, %371 ], [ %367, %366 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %376) #12
  %377 = load i32, ptr %9, align 8, !tbaa !16
  br label %421

378:                                              ; preds = %361, %373, %369
  %379 = phi i32 [ %351, %369 ], [ %351, %373 ], [ %362, %361 ]
  %380 = load i32, ptr %36, align 8, !tbaa !32
  %381 = add i32 %380, %379
  store i32 %381, ptr %36, align 8, !tbaa !32
  %382 = load ptr, ptr %43, align 8, !tbaa !27
  store ptr %382, ptr %42, align 8, !tbaa !33
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %378, %343
  %385 = load i32, ptr %44, align 4, !tbaa !17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %421

387:                                              ; preds = %384
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %421

388:                                              ; preds = %378, %337
  %389 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #12
  %390 = load i32, ptr %39, align 8, !tbaa !46
  %391 = icmp ult i32 %390, %335
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store i32 0, ptr %46, align 4, !tbaa !31
  br label %393

393:                                              ; preds = %392, %388
  switch i32 %389, label %410 [
    i32 -2, label %394
    i32 2, label %394
    i32 -4, label %395
    i32 -3, label %396
  ]

394:                                              ; preds = %393, %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %421

395:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %414

396:                                              ; preds = %393
  %397 = load i32, ptr %46, align 4, !tbaa !31
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  store i32 0, ptr %36, align 8, !tbaa !32
  store i32 1, ptr %35, align 8, !tbaa !22
  store i32 0, ptr %37, align 8, !tbaa !24
  %400 = sub i32 %335, %390
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %41, align 8, !tbaa !47
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %33, align 8, !tbaa !20
  br label %431

405:                                              ; preds = %396
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %407 = load ptr, ptr %406, align 8, !tbaa !48
  %408 = icmp eq ptr %407, null
  %409 = select i1 %408, ptr @.str.6, ptr %407
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %409) #12
  br label %414

410:                                              ; preds = %393
  %411 = icmp ne i32 %390, 0
  %412 = icmp ne i32 %389, 1
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %337, label %421, !llvm.loop !49

414:                                              ; preds = %405, %395
  %415 = load i32, ptr %39, align 8, !tbaa !46
  %416 = sub i32 %335, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %41, align 8, !tbaa !47
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %33, align 8, !tbaa !20
  br label %1033

421:                                              ; preds = %410, %341, %394, %387, %384, %374
  %422 = phi i32 [ %377, %374 ], [ %338, %384 ], [ %338, %387 ], [ %389, %394 ], [ %342, %341 ], [ %389, %410 ]
  %423 = load i32, ptr %39, align 8, !tbaa !46
  %424 = sub i32 %335, %423
  store i32 %424, ptr %0, align 8, !tbaa !19
  %425 = load ptr, ptr %41, align 8, !tbaa !47
  %426 = zext i32 %424 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %425, i64 %427
  store ptr %428, ptr %33, align 8, !tbaa !20
  switch i32 %422, label %1033 [
    i32 1, label %429
    i32 0, label %431
  ]

429:                                              ; preds = %421
  store i32 0, ptr %46, align 4, !tbaa !31
  store i32 0, ptr %37, align 8, !tbaa !24
  br label %431

430:                                              ; preds = %72
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %1033

431:                                              ; preds = %429, %421, %399, %294, %288
  %432 = load i32, ptr %0, align 8, !tbaa !19
  br label %433

433:                                              ; preds = %431, %290
  %434 = phi i32 [ %432, %431 ], [ %293, %290 ]
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %433
  %437 = load i32, ptr %35, align 8, !tbaa !22
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %436
  %440 = load i32, ptr %36, align 8, !tbaa !32
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %439, %436
  br label %72, !llvm.loop !50

443:                                              ; preds = %439, %433, %294, %331
  %444 = load i64, ptr %29, align 8, !tbaa !18
  br label %445

445:                                              ; preds = %443, %54
  %446 = phi i64 [ %444, %443 ], [ %64, %54 ]
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %50, !llvm.loop !51

448:                                              ; preds = %445, %68, %28
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %467

467:                                              ; preds = %1015, %448
  %468 = phi ptr [ %2, %448 ], [ %1019, %1015 ]
  %469 = phi i64 [ 1, %448 ], [ %1018, %1015 ]
  %470 = phi i64 [ 0, %448 ], [ %1017, %1015 ]
  %471 = call i64 @llvm.umin.i64(i64 %469, i64 4294967295)
  %472 = trunc nuw i64 %471 to i32
  %473 = load i32, ptr %0, align 8, !tbaa !19
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %486, label %475

475:                                              ; preds = %467
  %476 = call i32 @llvm.umin.i32(i32 %473, i32 %472)
  %477 = load ptr, ptr %449, align 8, !tbaa !20
  %478 = zext i32 %476 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %468, ptr align 1 %477, i64 %478, i1 false)
  %479 = load ptr, ptr %449, align 8, !tbaa !20
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 %478
  store ptr %480, ptr %449, align 8, !tbaa !20
  %481 = load i32, ptr %0, align 8, !tbaa !19
  %482 = sub i32 %481, %476
  store i32 %482, ptr %0, align 8, !tbaa !19
  %483 = load i32, ptr %9, align 8, !tbaa !16
  %484 = icmp ne i32 %483, 0
  %485 = sext i1 %484 to i32
  br label %1006

486:                                              ; preds = %467
  %487 = load i32, ptr %450, align 8, !tbaa !22
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %451, align 8, !tbaa !23
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %1024, label %492

492:                                              ; preds = %489, %486
  %493 = load i32, ptr %452, align 8, !tbaa !24
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %492
  %496 = load i32, ptr %453, align 8, !tbaa !25
  %497 = shl i32 %496, 1
  %498 = icmp ugt i32 %497, %472
  br i1 %498, label %499, label %875

499:                                              ; preds = %495, %492
  br label %500

500:                                              ; preds = %499, %869
  %501 = phi i32 [ %870, %869 ], [ %493, %499 ]
  switch i32 %501, label %857 [
    i32 0, label %502
    i32 1, label %725
    i32 2, label %761
  ]

502:                                              ; preds = %500
  %503 = load i32, ptr %453, align 8, !tbaa !25
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %524

505:                                              ; preds = %502
  %506 = load i32, ptr %464, align 4, !tbaa !26
  %507 = zext i32 %506 to i64
  %508 = call noalias ptr @malloc(i64 noundef %507) #13
  store ptr %508, ptr %457, align 8, !tbaa !27
  %509 = load i32, ptr %464, align 4, !tbaa !26
  %510 = shl i32 %509, 1
  %511 = zext i32 %510 to i64
  %512 = call noalias ptr @malloc(i64 noundef %511) #13
  store ptr %512, ptr %463, align 8, !tbaa !28
  %513 = icmp eq ptr %508, null
  %514 = icmp eq ptr %512, null
  %515 = or i1 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %505
  call void @free(ptr noundef %512) #12
  call void @free(ptr noundef %508) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

517:                                              ; preds = %505
  %518 = load i32, ptr %464, align 4, !tbaa !26
  store i32 %518, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %451, align 8, !tbaa !23
  store ptr null, ptr %456, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %465, i8 0, i64 24, i1 false)
  %519 = call i32 @inflateInit2_(ptr noundef nonnull %456, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %517
  %522 = load ptr, ptr %463, align 8, !tbaa !28
  call void @free(ptr noundef %522) #12
  %523 = load ptr, ptr %457, align 8, !tbaa !27
  call void @free(ptr noundef %523) #12
  store i32 0, ptr %453, align 8, !tbaa !25
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

524:                                              ; preds = %517, %502
  %525 = load i32, ptr %466, align 8, !tbaa !30
  %526 = icmp eq i32 %525, -1
  br i1 %526, label %530, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %460, align 4, !tbaa !31
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %527, %524
  %531 = call i32 @inflateReset(ptr noundef nonnull %456) #12
  store i32 2, ptr %452, align 8, !tbaa !24
  %532 = load i32, ptr %460, align 4, !tbaa !31
  %533 = icmp ne i32 %532, -1
  %534 = zext i1 %533 to i32
  store i32 %534, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %466, align 8, !tbaa !30
  br label %722

535:                                              ; preds = %527
  %536 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %536, label %871 [
    i32 0, label %537
    i32 -5, label %537
  ]

537:                                              ; preds = %535, %535
  %538 = load i32, ptr %450, align 8, !tbaa !22
  %539 = icmp eq i32 %538, 0
  %540 = load i32, ptr %451, align 8, !tbaa !32
  br i1 %539, label %541, label %690

541:                                              ; preds = %537
  %542 = icmp eq i32 %540, 0
  %543 = load ptr, ptr %457, align 8, !tbaa !27
  %544 = ptrtoaddr ptr %543 to i64
  br i1 %542, label %650, label %545

545:                                              ; preds = %541
  %546 = load ptr, ptr %456, align 8, !tbaa !33
  %547 = icmp eq ptr %546, %543
  br i1 %547, label %650, label %548

548:                                              ; preds = %545
  %549 = ptrtoaddr ptr %546 to i64
  %550 = zext i32 %540 to i64
  %551 = icmp ult i32 %540, 4
  %552 = sub i64 %544, %549
  %553 = icmp ult i64 %552, 32
  %554 = select i1 %551, i1 true, i1 %553
  br i1 %554, label %594, label %555

555:                                              ; preds = %548
  %556 = icmp ult i32 %540, 32
  br i1 %556, label %578, label %557

557:                                              ; preds = %555
  %558 = and i64 %550, 28
  %559 = and i64 %550, 4294967264
  %560 = getelementptr i8, ptr %543, i64 %559
  %561 = getelementptr i8, ptr %546, i64 %559
  %562 = trunc nuw i64 %559 to i32
  %563 = sub i32 %540, %562
  br label %564

564:                                              ; preds = %564, %557
  %565 = phi i64 [ 0, %557 ], [ %572, %564 ]
  %566 = getelementptr i8, ptr %543, i64 %565
  %567 = getelementptr i8, ptr %546, i64 %565
  %568 = getelementptr i8, ptr %567, i64 16
  %569 = load <16 x i8>, ptr %567, align 1, !tbaa !34
  %570 = load <16 x i8>, ptr %568, align 1, !tbaa !34
  %571 = getelementptr i8, ptr %566, i64 16
  store <16 x i8> %569, ptr %566, align 1, !tbaa !34
  store <16 x i8> %570, ptr %571, align 1, !tbaa !34
  %572 = add nuw i64 %565, 32
  %573 = icmp eq i64 %572, %559
  br i1 %573, label %574, label %564, !llvm.loop !80

574:                                              ; preds = %564
  %575 = icmp eq i64 %559, %550
  br i1 %575, label %647, label %576

576:                                              ; preds = %574
  %577 = icmp eq i64 %558, 0
  br i1 %577, label %594, label %578, !prof !39

578:                                              ; preds = %555, %576
  %579 = phi i64 [ %559, %576 ], [ 0, %555 ]
  %580 = and i64 %550, 4294967292
  %581 = getelementptr i8, ptr %543, i64 %580
  %582 = getelementptr i8, ptr %546, i64 %580
  %583 = trunc nuw i64 %580 to i32
  %584 = sub i32 %540, %583
  br label %585

585:                                              ; preds = %585, %578
  %586 = phi i64 [ %579, %578 ], [ %590, %585 ]
  %587 = getelementptr i8, ptr %543, i64 %586
  %588 = getelementptr i8, ptr %546, i64 %586
  %589 = load <4 x i8>, ptr %588, align 1, !tbaa !34
  store <4 x i8> %589, ptr %587, align 1, !tbaa !34
  %590 = add nuw i64 %586, 4
  %591 = icmp eq i64 %590, %580
  br i1 %591, label %592, label %585, !llvm.loop !81

592:                                              ; preds = %585
  %593 = icmp eq i64 %580, %550
  br i1 %593, label %647, label %594

594:                                              ; preds = %548, %576, %592
  %595 = phi ptr [ %543, %548 ], [ %560, %576 ], [ %581, %592 ]
  %596 = phi ptr [ %546, %548 ], [ %561, %576 ], [ %582, %592 ]
  %597 = phi i32 [ %540, %548 ], [ %563, %576 ], [ %584, %592 ]
  %598 = add i32 %597, -1
  %599 = and i32 %597, 7
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %612, label %601

601:                                              ; preds = %594, %601
  %602 = phi ptr [ %608, %601 ], [ %595, %594 ]
  %603 = phi ptr [ %606, %601 ], [ %596, %594 ]
  %604 = phi i32 [ %609, %601 ], [ %597, %594 ]
  %605 = phi i32 [ %610, %601 ], [ 0, %594 ]
  %606 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %607 = load i8, ptr %603, align 1, !tbaa !34
  %608 = getelementptr inbounds nuw i8, ptr %602, i64 1
  store i8 %607, ptr %602, align 1, !tbaa !34
  %609 = add i32 %604, -1
  %610 = add i32 %605, 1
  %611 = icmp eq i32 %610, %599
  br i1 %611, label %612, label %601, !llvm.loop !82

612:                                              ; preds = %601, %594
  %613 = phi ptr [ %595, %594 ], [ %608, %601 ]
  %614 = phi ptr [ %596, %594 ], [ %606, %601 ]
  %615 = phi i32 [ %597, %594 ], [ %609, %601 ]
  %616 = icmp ult i32 %598, 7
  br i1 %616, label %647, label %617

617:                                              ; preds = %612, %617
  %618 = phi ptr [ %644, %617 ], [ %613, %612 ]
  %619 = phi ptr [ %642, %617 ], [ %614, %612 ]
  %620 = phi i32 [ %645, %617 ], [ %615, %612 ]
  %621 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %622 = load i8, ptr %619, align 1, !tbaa !34
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 1
  store i8 %622, ptr %618, align 1, !tbaa !34
  %624 = getelementptr inbounds nuw i8, ptr %619, i64 2
  %625 = load i8, ptr %621, align 1, !tbaa !34
  %626 = getelementptr inbounds nuw i8, ptr %618, i64 2
  store i8 %625, ptr %623, align 1, !tbaa !34
  %627 = getelementptr inbounds nuw i8, ptr %619, i64 3
  %628 = load i8, ptr %624, align 1, !tbaa !34
  %629 = getelementptr inbounds nuw i8, ptr %618, i64 3
  store i8 %628, ptr %626, align 1, !tbaa !34
  %630 = getelementptr inbounds nuw i8, ptr %619, i64 4
  %631 = load i8, ptr %627, align 1, !tbaa !34
  %632 = getelementptr inbounds nuw i8, ptr %618, i64 4
  store i8 %631, ptr %629, align 1, !tbaa !34
  %633 = getelementptr inbounds nuw i8, ptr %619, i64 5
  %634 = load i8, ptr %630, align 1, !tbaa !34
  %635 = getelementptr inbounds nuw i8, ptr %618, i64 5
  store i8 %634, ptr %632, align 1, !tbaa !34
  %636 = getelementptr inbounds nuw i8, ptr %619, i64 6
  %637 = load i8, ptr %633, align 1, !tbaa !34
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 6
  store i8 %637, ptr %635, align 1, !tbaa !34
  %639 = getelementptr inbounds nuw i8, ptr %619, i64 7
  %640 = load i8, ptr %636, align 1, !tbaa !34
  %641 = getelementptr inbounds nuw i8, ptr %618, i64 7
  store i8 %640, ptr %638, align 1, !tbaa !34
  %642 = getelementptr inbounds nuw i8, ptr %619, i64 8
  %643 = load i8, ptr %639, align 1, !tbaa !34
  %644 = getelementptr inbounds nuw i8, ptr %618, i64 8
  store i8 %643, ptr %641, align 1, !tbaa !34
  %645 = add i32 %620, -8
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %617, !llvm.loop !83

647:                                              ; preds = %612, %617, %592, %574
  %648 = load i32, ptr %451, align 8, !tbaa !32
  %649 = load ptr, ptr %457, align 8, !tbaa !27
  br label %650

650:                                              ; preds = %647, %545, %541
  %651 = phi ptr [ %649, %647 ], [ %543, %545 ], [ %543, %541 ]
  %652 = phi i32 [ %648, %647 ], [ %540, %545 ], [ 0, %541 ]
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds nuw i8, ptr %651, i64 %653
  %655 = load i32, ptr %453, align 8, !tbaa !25
  %656 = sub i32 %655, %652
  store i32 0, ptr %458, align 4, !tbaa !17
  %657 = tail call ptr @__errno_location() #14
  store i32 0, ptr %657, align 4, !tbaa !4
  br label %658

658:                                              ; preds = %669, %650
  %659 = phi i32 [ 0, %650 ], [ %670, %669 ]
  %660 = sub i32 %656, %659
  %661 = call i32 @llvm.umin.i32(i32 %660, i32 1073741824)
  %662 = load i32, ptr %459, align 4, !tbaa !44
  %663 = zext i32 %659 to i64
  %664 = getelementptr inbounds nuw i8, ptr %654, i64 %663
  %665 = zext nneg i32 %661 to i64
  %666 = call i64 @read(i32 noundef %662, ptr noundef %664, i64 noundef %665) #12
  %667 = trunc i64 %666 to i32
  %668 = icmp slt i32 %667, 1
  br i1 %668, label %672, label %669

669:                                              ; preds = %658
  %670 = add i32 %659, %667
  %671 = icmp ult i32 %670, %656
  br i1 %671, label %658, label %685, !llvm.loop !45

672:                                              ; preds = %658
  %673 = icmp slt i32 %667, 0
  br i1 %673, label %674, label %681

674:                                              ; preds = %672
  %675 = load i32, ptr %657, align 4, !tbaa !4
  %676 = icmp eq i32 %675, 11
  br i1 %676, label %677, label %682

677:                                              ; preds = %674
  store i32 1, ptr %458, align 4, !tbaa !17
  %678 = icmp eq i32 %659, 0
  br i1 %678, label %679, label %685

679:                                              ; preds = %677
  %680 = load i32, ptr %657, align 4, !tbaa !4
  br label %682

681:                                              ; preds = %672
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %685

682:                                              ; preds = %674, %679
  %683 = phi i32 [ %680, %679 ], [ %675, %674 ]
  %684 = call ptr @strerror(i32 noundef %683) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %684) #12
  br label %871

685:                                              ; preds = %669, %681, %677
  %686 = phi i32 [ %659, %677 ], [ %659, %681 ], [ %670, %669 ]
  %687 = load i32, ptr %451, align 8, !tbaa !32
  %688 = add i32 %687, %686
  store i32 %688, ptr %451, align 8, !tbaa !32
  %689 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %689, ptr %456, align 8, !tbaa !33
  br label %690

690:                                              ; preds = %685, %537
  %691 = phi i32 [ %688, %685 ], [ %540, %537 ]
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %722, label %693

693:                                              ; preds = %690
  %694 = load i32, ptr %458, align 4, !tbaa !17
  %695 = icmp ne i32 %694, 0
  %696 = icmp ult i32 %691, 4
  %697 = and i1 %696, %695
  br i1 %697, label %722, label %698

698:                                              ; preds = %693
  %699 = icmp ugt i32 %691, 3
  %700 = load ptr, ptr %456, align 8, !tbaa !33
  br i1 %699, label %701, label %718

701:                                              ; preds = %698
  %702 = load i8, ptr %700, align 1, !tbaa !34
  %703 = icmp eq i8 %702, 31
  br i1 %703, label %704, label %718

704:                                              ; preds = %701
  %705 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !34
  %707 = icmp eq i8 %706, -117
  br i1 %707, label %708, label %718

708:                                              ; preds = %704
  %709 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %710 = load i8, ptr %709, align 1, !tbaa !34
  %711 = icmp eq i8 %710, 8
  br i1 %711, label %712, label %718

712:                                              ; preds = %708
  %713 = getelementptr inbounds nuw i8, ptr %700, i64 3
  %714 = load i8, ptr %713, align 1, !tbaa !34
  %715 = icmp ult i8 %714, 32
  br i1 %715, label %716, label %718

716:                                              ; preds = %712
  %717 = call i32 @inflateReset(ptr noundef nonnull %456) #12
  store i32 2, ptr %452, align 8, !tbaa !24
  store i32 1, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %466, align 8, !tbaa !30
  br label %858

718:                                              ; preds = %712, %708, %704, %701, %698
  %719 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %719, ptr %449, align 8, !tbaa !20
  %720 = zext i32 %691 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %719, ptr align 1 %700, i64 %720, i1 false)
  %721 = load i32, ptr %451, align 8, !tbaa !32
  store i32 %721, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %860

722:                                              ; preds = %693, %690, %530
  %723 = load i32, ptr %452, align 8, !tbaa !24
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %1015, label %858

725:                                              ; preds = %500
  %726 = load ptr, ptr %463, align 8, !tbaa !28
  %727 = load i32, ptr %453, align 8, !tbaa !25
  %728 = shl i32 %727, 1
  store i32 0, ptr %458, align 4, !tbaa !17
  %729 = tail call ptr @__errno_location() #14
  store i32 0, ptr %729, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %730

730:                                              ; preds = %741, %725
  %731 = phi i32 [ %743, %741 ], [ 0, %725 ]
  %732 = sub i32 %728, %731
  %733 = call i32 @llvm.umin.i32(i32 %732, i32 1073741824)
  %734 = load i32, ptr %459, align 4, !tbaa !44
  %735 = zext i32 %731 to i64
  %736 = getelementptr inbounds nuw i8, ptr %726, i64 %735
  %737 = zext nneg i32 %733 to i64
  %738 = call i64 @read(i32 noundef %734, ptr noundef %736, i64 noundef %737) #12
  %739 = trunc i64 %738 to i32
  %740 = icmp slt i32 %739, 1
  br i1 %740, label %745, label %741

741:                                              ; preds = %730
  %742 = load i32, ptr %0, align 4, !tbaa !4
  %743 = add i32 %742, %739
  store i32 %743, ptr %0, align 4, !tbaa !4
  %744 = icmp ult i32 %743, %728
  br i1 %744, label %730, label %759, !llvm.loop !45

745:                                              ; preds = %730
  %746 = icmp slt i32 %739, 0
  br i1 %746, label %747, label %755

747:                                              ; preds = %745
  %748 = load i32, ptr %729, align 4, !tbaa !4
  %749 = icmp eq i32 %748, 11
  br i1 %749, label %750, label %756

750:                                              ; preds = %747
  store i32 1, ptr %458, align 4, !tbaa !17
  %751 = load i32, ptr %0, align 4, !tbaa !4
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %759

753:                                              ; preds = %750
  %754 = load i32, ptr %729, align 4, !tbaa !4
  br label %756

755:                                              ; preds = %745
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %759

756:                                              ; preds = %753, %747
  %757 = phi i32 [ %754, %753 ], [ %748, %747 ]
  %758 = call ptr @strerror(i32 noundef %757) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %758) #12
  br label %871

759:                                              ; preds = %741, %755, %750
  %760 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %760, ptr %449, align 8, !tbaa !20
  br label %1015

761:                                              ; preds = %500
  %762 = load i32, ptr %453, align 8, !tbaa !25
  %763 = shl i32 %762, 1
  store i32 %763, ptr %454, align 8, !tbaa !46
  %764 = load ptr, ptr %463, align 8, !tbaa !28
  store ptr %764, ptr %455, align 8, !tbaa !47
  br label %765

765:                                              ; preds = %837, %761
  %766 = phi i32 [ 0, %761 ], [ %817, %837 ]
  %767 = load i32, ptr %451, align 8, !tbaa !32
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %816

769:                                              ; preds = %765
  %770 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %770, label %848 [
    i32 0, label %771
    i32 -5, label %771
  ]

771:                                              ; preds = %769, %769
  %772 = load i32, ptr %450, align 8, !tbaa !22
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %812

774:                                              ; preds = %771
  %775 = load ptr, ptr %457, align 8, !tbaa !27
  %776 = load i32, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %458, align 4, !tbaa !17
  %777 = tail call ptr @__errno_location() #14
  store i32 0, ptr %777, align 4, !tbaa !4
  br label %778

778:                                              ; preds = %789, %774
  %779 = phi i32 [ 0, %774 ], [ %790, %789 ]
  %780 = sub i32 %776, %779
  %781 = call i32 @llvm.umin.i32(i32 %780, i32 1073741824)
  %782 = load i32, ptr %459, align 4, !tbaa !44
  %783 = zext i32 %779 to i64
  %784 = getelementptr inbounds nuw i8, ptr %775, i64 %783
  %785 = zext nneg i32 %781 to i64
  %786 = call i64 @read(i32 noundef %782, ptr noundef %784, i64 noundef %785) #12
  %787 = trunc i64 %786 to i32
  %788 = icmp slt i32 %787, 1
  br i1 %788, label %792, label %789

789:                                              ; preds = %778
  %790 = add i32 %779, %787
  %791 = icmp ult i32 %790, %776
  br i1 %791, label %778, label %806, !llvm.loop !45

792:                                              ; preds = %778
  %793 = icmp slt i32 %787, 0
  br i1 %793, label %794, label %801

794:                                              ; preds = %792
  %795 = load i32, ptr %777, align 4, !tbaa !4
  %796 = icmp eq i32 %795, 11
  br i1 %796, label %797, label %802

797:                                              ; preds = %794
  store i32 1, ptr %458, align 4, !tbaa !17
  %798 = icmp eq i32 %779, 0
  br i1 %798, label %799, label %806

799:                                              ; preds = %797
  %800 = load i32, ptr %777, align 4, !tbaa !4
  br label %802

801:                                              ; preds = %792
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %806

802:                                              ; preds = %794, %799
  %803 = phi i32 [ %800, %799 ], [ %795, %794 ]
  %804 = call ptr @strerror(i32 noundef %803) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %804) #12
  %805 = load i32, ptr %9, align 8, !tbaa !16
  br label %848

806:                                              ; preds = %789, %801, %797
  %807 = phi i32 [ %779, %797 ], [ %779, %801 ], [ %790, %789 ]
  %808 = load i32, ptr %451, align 8, !tbaa !32
  %809 = add i32 %808, %807
  store i32 %809, ptr %451, align 8, !tbaa !32
  %810 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %810, ptr %456, align 8, !tbaa !33
  %811 = icmp eq i32 %809, 0
  br i1 %811, label %812, label %816

812:                                              ; preds = %806, %771
  %813 = load i32, ptr %458, align 4, !tbaa !17
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %848

815:                                              ; preds = %812
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %848

816:                                              ; preds = %806, %765
  %817 = call i32 @inflate(ptr noundef nonnull %456, i32 noundef 0) #12
  %818 = load i32, ptr %454, align 8, !tbaa !46
  %819 = icmp ult i32 %818, %763
  br i1 %819, label %820, label %821

820:                                              ; preds = %816
  store i32 0, ptr %460, align 4, !tbaa !31
  br label %821

821:                                              ; preds = %820, %816
  switch i32 %817, label %837 [
    i32 -2, label %822
    i32 2, label %822
    i32 -4, label %823
    i32 -3, label %824
  ]

822:                                              ; preds = %821, %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %848

823:                                              ; preds = %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %841

824:                                              ; preds = %821
  %825 = load i32, ptr %460, align 4, !tbaa !31
  %826 = icmp eq i32 %825, 1
  br i1 %826, label %827, label %833

827:                                              ; preds = %824
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %450, align 8, !tbaa !22
  store i32 0, ptr %452, align 8, !tbaa !24
  %828 = sub i32 %763, %818
  store i32 %828, ptr %0, align 8, !tbaa !19
  %829 = load ptr, ptr %455, align 8, !tbaa !47
  %830 = zext i32 %828 to i64
  %831 = sub nsw i64 0, %830
  %832 = getelementptr inbounds i8, ptr %829, i64 %831
  store ptr %832, ptr %449, align 8, !tbaa !20
  br label %858

833:                                              ; preds = %824
  %834 = load ptr, ptr %461, align 8, !tbaa !48
  %835 = icmp eq ptr %834, null
  %836 = select i1 %835, ptr @.str.6, ptr %834
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %836) #12
  br label %841

837:                                              ; preds = %821
  %838 = icmp ne i32 %818, 0
  %839 = icmp ne i32 %817, 1
  %840 = select i1 %838, i1 %839, i1 false
  br i1 %840, label %765, label %848, !llvm.loop !49

841:                                              ; preds = %833, %823
  %842 = load i32, ptr %454, align 8, !tbaa !46
  %843 = sub i32 %763, %842
  store i32 %843, ptr %0, align 8, !tbaa !19
  %844 = load ptr, ptr %455, align 8, !tbaa !47
  %845 = zext i32 %843 to i64
  %846 = sub nsw i64 0, %845
  %847 = getelementptr inbounds i8, ptr %844, i64 %846
  store ptr %847, ptr %449, align 8, !tbaa !20
  br label %871

848:                                              ; preds = %837, %769, %822, %815, %812, %802
  %849 = phi i32 [ %805, %802 ], [ %766, %812 ], [ %766, %815 ], [ %817, %822 ], [ %817, %837 ], [ %770, %769 ]
  %850 = load i32, ptr %454, align 8, !tbaa !46
  %851 = sub i32 %763, %850
  store i32 %851, ptr %0, align 8, !tbaa !19
  %852 = load ptr, ptr %455, align 8, !tbaa !47
  %853 = zext i32 %851 to i64
  %854 = sub nsw i64 0, %853
  %855 = getelementptr inbounds i8, ptr %852, i64 %854
  store ptr %855, ptr %449, align 8, !tbaa !20
  switch i32 %849, label %871 [
    i32 1, label %856
    i32 0, label %858
  ]

856:                                              ; preds = %848
  store i32 0, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %858

857:                                              ; preds = %500
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %871

858:                                              ; preds = %856, %848, %827, %722, %716
  %859 = load i32, ptr %0, align 8, !tbaa !19
  br label %860

860:                                              ; preds = %858, %718
  %861 = phi i32 [ %859, %858 ], [ %721, %718 ]
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %1015

863:                                              ; preds = %860
  %864 = load i32, ptr %450, align 8, !tbaa !22
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %869, label %866

866:                                              ; preds = %863
  %867 = load i32, ptr %451, align 8, !tbaa !32
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %1015, label %869

869:                                              ; preds = %866, %863
  %870 = load i32, ptr %452, align 8, !tbaa !24
  br label %500, !llvm.loop !50

871:                                              ; preds = %848, %535, %857, %841, %756, %682, %521, %516
  %872 = load i32, ptr %0, align 8, !tbaa !19
  %873 = icmp eq i32 %872, 0
  %874 = sext i1 %873 to i32
  br label %1015

875:                                              ; preds = %495
  %876 = icmp eq i32 %493, 1
  br i1 %876, label %877, label %906

877:                                              ; preds = %875
  store i32 0, ptr %458, align 4, !tbaa !17
  %878 = tail call ptr @__errno_location() #14
  store i32 0, ptr %878, align 4, !tbaa !4
  br label %879

879:                                              ; preds = %890, %877
  %880 = phi i32 [ 0, %877 ], [ %891, %890 ]
  %881 = sub i32 %472, %880
  %882 = call i32 @llvm.umin.i32(i32 %881, i32 1073741824)
  %883 = load i32, ptr %459, align 4, !tbaa !44
  %884 = zext i32 %880 to i64
  %885 = getelementptr inbounds nuw i8, ptr %468, i64 %884
  %886 = zext nneg i32 %882 to i64
  %887 = call i64 @read(i32 noundef %883, ptr noundef %885, i64 noundef %886) #12
  %888 = trunc i64 %887 to i32
  %889 = icmp slt i32 %888, 1
  br i1 %889, label %893, label %890

890:                                              ; preds = %879
  %891 = add i32 %880, %888
  %892 = icmp ult i32 %891, %472
  br i1 %892, label %879, label %1004, !llvm.loop !45

893:                                              ; preds = %879
  %894 = icmp slt i32 %888, 0
  br i1 %894, label %895, label %905

895:                                              ; preds = %893
  %896 = load i32, ptr %878, align 4, !tbaa !4
  %897 = icmp eq i32 %896, 11
  br i1 %897, label %898, label %902

898:                                              ; preds = %895
  store i32 1, ptr %458, align 4, !tbaa !17
  %899 = icmp eq i32 %880, 0
  br i1 %899, label %900, label %1006

900:                                              ; preds = %898
  %901 = load i32, ptr %878, align 4, !tbaa !4
  br label %902

902:                                              ; preds = %900, %895
  %903 = phi i32 [ %901, %900 ], [ %896, %895 ]
  %904 = call ptr @strerror(i32 noundef %903) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %904) #12
  br label %1006

905:                                              ; preds = %893
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %1006

906:                                              ; preds = %875
  store i32 %472, ptr %454, align 8, !tbaa !56
  store ptr %468, ptr %455, align 8, !tbaa !57
  br label %907

907:                                              ; preds = %974, %906
  %908 = phi i32 [ 0, %906 ], [ %959, %974 ]
  %909 = load i32, ptr %451, align 8, !tbaa !32
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %958

911:                                              ; preds = %907
  %912 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %912, label %986 [
    i32 0, label %913
    i32 -5, label %913
  ]

913:                                              ; preds = %911, %911
  %914 = load i32, ptr %450, align 8, !tbaa !22
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %954

916:                                              ; preds = %913
  %917 = load ptr, ptr %457, align 8, !tbaa !27
  %918 = load i32, ptr %453, align 8, !tbaa !25
  store i32 0, ptr %458, align 4, !tbaa !17
  %919 = tail call ptr @__errno_location() #14
  store i32 0, ptr %919, align 4, !tbaa !4
  br label %920

920:                                              ; preds = %931, %916
  %921 = phi i32 [ 0, %916 ], [ %932, %931 ]
  %922 = sub i32 %918, %921
  %923 = call i32 @llvm.umin.i32(i32 %922, i32 1073741824)
  %924 = load i32, ptr %459, align 4, !tbaa !44
  %925 = zext i32 %921 to i64
  %926 = getelementptr inbounds nuw i8, ptr %917, i64 %925
  %927 = zext nneg i32 %923 to i64
  %928 = call i64 @read(i32 noundef %924, ptr noundef %926, i64 noundef %927) #12
  %929 = trunc i64 %928 to i32
  %930 = icmp slt i32 %929, 1
  br i1 %930, label %934, label %931

931:                                              ; preds = %920
  %932 = add i32 %921, %929
  %933 = icmp ult i32 %932, %918
  br i1 %933, label %920, label %948, !llvm.loop !45

934:                                              ; preds = %920
  %935 = icmp slt i32 %929, 0
  br i1 %935, label %936, label %943

936:                                              ; preds = %934
  %937 = load i32, ptr %919, align 4, !tbaa !4
  %938 = icmp eq i32 %937, 11
  br i1 %938, label %939, label %944

939:                                              ; preds = %936
  store i32 1, ptr %458, align 4, !tbaa !17
  %940 = icmp eq i32 %921, 0
  br i1 %940, label %941, label %948

941:                                              ; preds = %939
  %942 = load i32, ptr %919, align 4, !tbaa !4
  br label %944

943:                                              ; preds = %934
  store i32 1, ptr %450, align 8, !tbaa !22
  br label %948

944:                                              ; preds = %936, %941
  %945 = phi i32 [ %942, %941 ], [ %937, %936 ]
  %946 = call ptr @strerror(i32 noundef %945) #12
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %946) #12
  %947 = load i32, ptr %9, align 8, !tbaa !16
  br label %986

948:                                              ; preds = %931, %943, %939
  %949 = phi i32 [ %921, %939 ], [ %921, %943 ], [ %932, %931 ]
  %950 = load i32, ptr %451, align 8, !tbaa !32
  %951 = add i32 %950, %949
  store i32 %951, ptr %451, align 8, !tbaa !32
  %952 = load ptr, ptr %457, align 8, !tbaa !27
  store ptr %952, ptr %456, align 8, !tbaa !33
  %953 = icmp eq i32 %951, 0
  br i1 %953, label %954, label %958

954:                                              ; preds = %948, %913
  %955 = load i32, ptr %458, align 4, !tbaa !17
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %986

957:                                              ; preds = %954
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %986

958:                                              ; preds = %948, %907
  %959 = call i32 @inflate(ptr noundef nonnull %456, i32 noundef 0) #12
  %960 = load i32, ptr %454, align 8, !tbaa !46
  %961 = icmp ult i32 %960, %472
  br i1 %961, label %962, label %963

962:                                              ; preds = %958
  store i32 0, ptr %460, align 4, !tbaa !31
  br label %963

963:                                              ; preds = %962, %958
  switch i32 %959, label %974 [
    i32 -2, label %964
    i32 2, label %964
    i32 -4, label %965
    i32 -3, label %966
  ]

964:                                              ; preds = %963, %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %986

965:                                              ; preds = %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %978

966:                                              ; preds = %963
  %967 = load i32, ptr %460, align 4, !tbaa !31
  %968 = icmp eq i32 %967, 1
  br i1 %968, label %969, label %970

969:                                              ; preds = %966
  store i32 0, ptr %451, align 8, !tbaa !32
  store i32 1, ptr %450, align 8, !tbaa !22
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %978

970:                                              ; preds = %966
  %971 = load ptr, ptr %461, align 8, !tbaa !48
  %972 = icmp eq ptr %971, null
  %973 = select i1 %972, ptr @.str.6, ptr %971
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %973) #12
  br label %978

974:                                              ; preds = %963
  %975 = icmp ne i32 %960, 0
  %976 = icmp ne i32 %959, 1
  %977 = select i1 %975, i1 %976, i1 false
  br i1 %977, label %907, label %986, !llvm.loop !49

978:                                              ; preds = %970, %969, %965
  %979 = phi i32 [ -3, %970 ], [ 0, %969 ], [ -4, %965 ]
  %980 = load i32, ptr %454, align 8, !tbaa !46
  %981 = sub i32 %472, %980
  %982 = load ptr, ptr %455, align 8, !tbaa !47
  %983 = zext i32 %981 to i64
  %984 = sub nsw i64 0, %983
  %985 = getelementptr inbounds i8, ptr %982, i64 %984
  store ptr %985, ptr %449, align 8, !tbaa !20
  br label %996

986:                                              ; preds = %974, %911, %964, %957, %954, %944
  %987 = phi i32 [ %947, %944 ], [ %908, %954 ], [ %908, %957 ], [ %959, %964 ], [ %959, %974 ], [ %912, %911 ]
  %988 = load i32, ptr %454, align 8, !tbaa !46
  %989 = sub i32 %472, %988
  %990 = load ptr, ptr %455, align 8, !tbaa !47
  %991 = zext i32 %989 to i64
  %992 = sub nsw i64 0, %991
  %993 = getelementptr inbounds i8, ptr %990, i64 %992
  store ptr %993, ptr %449, align 8, !tbaa !20
  %994 = icmp eq i32 %987, 1
  br i1 %994, label %995, label %996

995:                                              ; preds = %986
  store i32 0, ptr %460, align 4, !tbaa !31
  store i32 0, ptr %452, align 8, !tbaa !24
  br label %1001

996:                                              ; preds = %986, %978
  %997 = phi i64 [ %983, %978 ], [ %991, %986 ]
  %998 = phi i32 [ %979, %978 ], [ %987, %986 ]
  %999 = icmp ne i32 %998, 0
  %1000 = sext i1 %999 to i32
  br label %1001

1001:                                             ; preds = %996, %995
  %1002 = phi i64 [ %991, %995 ], [ %997, %996 ]
  %1003 = phi i32 [ 0, %995 ], [ %1000, %996 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1006

1004:                                             ; preds = %890
  %1005 = zext i32 %891 to i64
  br label %1006

1006:                                             ; preds = %1004, %1001, %905, %902, %898, %475
  %1007 = phi i64 [ %1005, %1004 ], [ %884, %905 ], [ %884, %902 ], [ %884, %898 ], [ %478, %475 ], [ %1002, %1001 ]
  %1008 = phi i32 [ 0, %1004 ], [ 0, %905 ], [ -1, %902 ], [ 0, %898 ], [ %485, %475 ], [ %1003, %1001 ]
  %1009 = sub i64 %469, %1007
  %1010 = getelementptr inbounds nuw i8, ptr %468, i64 %1007
  %1011 = add i64 %1007, %470
  %1012 = load i64, ptr %462, align 8, !tbaa !21
  %1013 = add nsw i64 %1012, %1007
  store i64 %1013, ptr %462, align 8, !tbaa !21
  %1014 = icmp eq i64 %1009, 0
  br i1 %1014, label %1027, label %1015

1015:                                             ; preds = %866, %860, %722, %1006, %871, %759
  %1016 = phi i32 [ %1008, %1006 ], [ %874, %871 ], [ 0, %759 ], [ 0, %722 ], [ 0, %860 ], [ 0, %866 ]
  %1017 = phi i64 [ %1011, %1006 ], [ %470, %871 ], [ %470, %759 ], [ %470, %722 ], [ %470, %860 ], [ %470, %866 ]
  %1018 = phi i64 [ %1009, %1006 ], [ %469, %871 ], [ %469, %759 ], [ %469, %722 ], [ %469, %860 ], [ %469, %866 ]
  %1019 = phi ptr [ %1010, %1006 ], [ %468, %871 ], [ %468, %759 ], [ %468, %722 ], [ %468, %860 ], [ %468, %866 ]
  %1020 = icmp eq i32 %1016, 0
  br i1 %1020, label %467, label %1021, !llvm.loop !58

1021:                                             ; preds = %1015
  %1022 = load i32, ptr %450, align 8, !tbaa !22
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1027, label %1024

1024:                                             ; preds = %489, %1021
  %1025 = phi i64 [ %1017, %1021 ], [ %470, %489 ]
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1026, align 4, !tbaa !59
  br label %1027

1027:                                             ; preds = %1006, %1024, %1021
  %1028 = phi i64 [ %1017, %1021 ], [ %1025, %1024 ], [ %1011, %1006 ]
  %1029 = freeze i64 %1028
  %1030 = icmp eq i64 %1029, 0
  %1031 = load i8, ptr %2, align 1
  %1032 = zext i8 %1031 to i32
  br i1 %1030, label %1033, label %1034

1033:                                             ; preds = %421, %107, %1027, %430, %414, %328, %254, %93, %88
  br label %1034

1034:                                             ; preds = %1, %4, %11, %18, %1027, %1033
  %1035 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %1033 ], [ %1032, %1027 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %1035
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %740, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %740

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %254

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %254

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !27
  %26 = load i32, ptr %21, align 4, !tbaa !26
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #13
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %29, ptr %30, align 8, !tbaa !28
  %31 = icmp eq ptr %24, null
  %32 = icmp eq ptr %29, null
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void @free(ptr noundef %29) #12
  tail call void @free(ptr noundef %24) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %254

35:                                               ; preds = %20
  %36 = load i32, ptr %21, align 4, !tbaa !26
  store i32 %36, ptr %17, align 8, !tbaa !25
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %38, align 8, !tbaa !23
  store ptr null, ptr %16, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %30, align 8, !tbaa !28
  tail call void @free(ptr noundef %42) #12
  %43 = load ptr, ptr %25, align 8, !tbaa !27
  tail call void @free(ptr noundef %43) #12
  store i32 0, ptr %17, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %254

44:                                               ; preds = %35, %15
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %46 = load i32, ptr %45, align 8, !tbaa !30
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %50 = load i32, ptr %49, align 4, !tbaa !31
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44
  %53 = tail call i32 @inflateReset(ptr noundef nonnull %16) #12
  store i32 2, ptr %9, align 8, !tbaa !24
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %55 = load i32, ptr %54, align 4, !tbaa !31
  %56 = icmp ne i32 %55, -1
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %54, align 4, !tbaa !31
  store i32 0, ptr %45, align 8, !tbaa !30
  br label %254

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %254 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !32
  br i1 %64, label %67, label %219

67:                                               ; preds = %61
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %176, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !27
  %72 = load ptr, ptr %16, align 8, !tbaa !33
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %176, label %74

74:                                               ; preds = %69
  %75 = ptrtoaddr ptr %72 to i64
  %76 = ptrtoaddr ptr %71 to i64
  %77 = zext i32 %66 to i64
  %78 = icmp ult i32 %66, 4
  %79 = sub i64 %76, %75
  %80 = icmp ult i64 %79, 32
  %81 = or i1 %78, %80
  br i1 %81, label %121, label %82

82:                                               ; preds = %74
  %83 = icmp ult i32 %66, 32
  br i1 %83, label %105, label %84

84:                                               ; preds = %82
  %85 = and i64 %77, 28
  %86 = and i64 %77, 4294967264
  %87 = getelementptr i8, ptr %71, i64 %86
  %88 = getelementptr i8, ptr %72, i64 %86
  %89 = trunc nuw i64 %86 to i32
  %90 = sub i32 %66, %89
  br label %91

91:                                               ; preds = %91, %84
  %92 = phi i64 [ 0, %84 ], [ %99, %91 ]
  %93 = getelementptr i8, ptr %71, i64 %92
  %94 = getelementptr i8, ptr %72, i64 %92
  %95 = getelementptr i8, ptr %94, i64 16
  %96 = load <16 x i8>, ptr %94, align 1, !tbaa !34
  %97 = load <16 x i8>, ptr %95, align 1, !tbaa !34
  %98 = getelementptr i8, ptr %93, i64 16
  store <16 x i8> %96, ptr %93, align 1, !tbaa !34
  store <16 x i8> %97, ptr %98, align 1, !tbaa !34
  %99 = add nuw i64 %92, 32
  %100 = icmp eq i64 %99, %86
  br i1 %100, label %101, label %91, !llvm.loop !84

101:                                              ; preds = %91
  %102 = icmp eq i64 %86, %77
  br i1 %102, label %174, label %103

103:                                              ; preds = %101
  %104 = icmp eq i64 %85, 0
  br i1 %104, label %121, label %105, !prof !39

105:                                              ; preds = %82, %103
  %106 = phi i64 [ %86, %103 ], [ 0, %82 ]
  %107 = and i64 %77, 4294967292
  %108 = getelementptr i8, ptr %71, i64 %107
  %109 = getelementptr i8, ptr %72, i64 %107
  %110 = trunc nuw i64 %107 to i32
  %111 = sub i32 %66, %110
  br label %112

112:                                              ; preds = %112, %105
  %113 = phi i64 [ %106, %105 ], [ %117, %112 ]
  %114 = getelementptr i8, ptr %71, i64 %113
  %115 = getelementptr i8, ptr %72, i64 %113
  %116 = load <4 x i8>, ptr %115, align 1, !tbaa !34
  store <4 x i8> %116, ptr %114, align 1, !tbaa !34
  %117 = add nuw i64 %113, 4
  %118 = icmp eq i64 %117, %107
  br i1 %118, label %119, label %112, !llvm.loop !85

119:                                              ; preds = %112
  %120 = icmp eq i64 %107, %77
  br i1 %120, label %174, label %121

121:                                              ; preds = %74, %103, %119
  %122 = phi ptr [ %71, %74 ], [ %87, %103 ], [ %108, %119 ]
  %123 = phi ptr [ %72, %74 ], [ %88, %103 ], [ %109, %119 ]
  %124 = phi i32 [ %66, %74 ], [ %90, %103 ], [ %111, %119 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %121, %128
  %129 = phi ptr [ %135, %128 ], [ %122, %121 ]
  %130 = phi ptr [ %133, %128 ], [ %123, %121 ]
  %131 = phi i32 [ %136, %128 ], [ %124, %121 ]
  %132 = phi i32 [ %137, %128 ], [ 0, %121 ]
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %134 = load i8, ptr %130, align 1, !tbaa !34
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 1
  store i8 %134, ptr %129, align 1, !tbaa !34
  %136 = add i32 %131, -1
  %137 = add i32 %132, 1
  %138 = icmp eq i32 %137, %126
  br i1 %138, label %139, label %128, !llvm.loop !86

139:                                              ; preds = %128, %121
  %140 = phi ptr [ %122, %121 ], [ %135, %128 ]
  %141 = phi ptr [ %123, %121 ], [ %133, %128 ]
  %142 = phi i32 [ %124, %121 ], [ %136, %128 ]
  %143 = icmp ult i32 %125, 7
  br i1 %143, label %174, label %144

144:                                              ; preds = %139, %144
  %145 = phi ptr [ %171, %144 ], [ %140, %139 ]
  %146 = phi ptr [ %169, %144 ], [ %141, %139 ]
  %147 = phi i32 [ %172, %144 ], [ %142, %139 ]
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %149 = load i8, ptr %146, align 1, !tbaa !34
  %150 = getelementptr inbounds nuw i8, ptr %145, i64 1
  store i8 %149, ptr %145, align 1, !tbaa !34
  %151 = getelementptr inbounds nuw i8, ptr %146, i64 2
  %152 = load i8, ptr %148, align 1, !tbaa !34
  %153 = getelementptr inbounds nuw i8, ptr %145, i64 2
  store i8 %152, ptr %150, align 1, !tbaa !34
  %154 = getelementptr inbounds nuw i8, ptr %146, i64 3
  %155 = load i8, ptr %151, align 1, !tbaa !34
  %156 = getelementptr inbounds nuw i8, ptr %145, i64 3
  store i8 %155, ptr %153, align 1, !tbaa !34
  %157 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %158 = load i8, ptr %154, align 1, !tbaa !34
  %159 = getelementptr inbounds nuw i8, ptr %145, i64 4
  store i8 %158, ptr %156, align 1, !tbaa !34
  %160 = getelementptr inbounds nuw i8, ptr %146, i64 5
  %161 = load i8, ptr %157, align 1, !tbaa !34
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 5
  store i8 %161, ptr %159, align 1, !tbaa !34
  %163 = getelementptr inbounds nuw i8, ptr %146, i64 6
  %164 = load i8, ptr %160, align 1, !tbaa !34
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 6
  store i8 %164, ptr %162, align 1, !tbaa !34
  %166 = getelementptr inbounds nuw i8, ptr %146, i64 7
  %167 = load i8, ptr %163, align 1, !tbaa !34
  %168 = getelementptr inbounds nuw i8, ptr %145, i64 7
  store i8 %167, ptr %165, align 1, !tbaa !34
  %169 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %170 = load i8, ptr %166, align 1, !tbaa !34
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 8
  store i8 %170, ptr %168, align 1, !tbaa !34
  %172 = add i32 %147, -8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %144, !llvm.loop !87

174:                                              ; preds = %139, %144, %119, %101
  %175 = load i32, ptr %65, align 8, !tbaa !32
  br label %176

176:                                              ; preds = %174, %69, %67
  %177 = phi i32 [ %175, %174 ], [ %66, %69 ], [ 0, %67 ]
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %179 = load ptr, ptr %178, align 8, !tbaa !27
  %180 = zext i32 %177 to i64
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 %180
  %182 = load i32, ptr %17, align 8, !tbaa !25
  %183 = sub i32 %182, %177
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %184, align 4, !tbaa !17
  %185 = tail call ptr @__errno_location() #14
  store i32 0, ptr %185, align 4, !tbaa !4
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %187

187:                                              ; preds = %198, %176
  %188 = phi i32 [ 0, %176 ], [ %199, %198 ]
  %189 = sub i32 %183, %188
  %190 = tail call i32 @llvm.umin.i32(i32 %189, i32 1073741824)
  %191 = load i32, ptr %186, align 4, !tbaa !44
  %192 = zext i32 %188 to i64
  %193 = getelementptr inbounds nuw i8, ptr %181, i64 %192
  %194 = zext nneg i32 %190 to i64
  %195 = tail call i64 @read(i32 noundef %191, ptr noundef %193, i64 noundef %194) #12
  %196 = trunc i64 %195 to i32
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %201, label %198

198:                                              ; preds = %187
  %199 = add i32 %188, %196
  %200 = icmp ult i32 %199, %183
  br i1 %200, label %187, label %214, !llvm.loop !45

201:                                              ; preds = %187
  %202 = icmp slt i32 %196, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %201
  %204 = load i32, ptr %185, align 4, !tbaa !4
  %205 = icmp eq i32 %204, 11
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  store i32 1, ptr %184, align 4, !tbaa !17
  %207 = icmp eq i32 %188, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %206
  %209 = load i32, ptr %185, align 4, !tbaa !4
  br label %211

210:                                              ; preds = %201
  store i32 1, ptr %62, align 8, !tbaa !22
  br label %214

211:                                              ; preds = %208, %203
  %212 = phi i32 [ %209, %208 ], [ %204, %203 ]
  %213 = tail call ptr @strerror(i32 noundef %212) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %213) #12
  br label %254

214:                                              ; preds = %198, %210, %206
  %215 = phi i32 [ %188, %206 ], [ %188, %210 ], [ %199, %198 ]
  %216 = load i32, ptr %65, align 8, !tbaa !32
  %217 = add i32 %216, %215
  store i32 %217, ptr %65, align 8, !tbaa !32
  %218 = load ptr, ptr %178, align 8, !tbaa !27
  store ptr %218, ptr %16, align 8, !tbaa !33
  br label %219

219:                                              ; preds = %214, %61
  %220 = phi i32 [ %217, %214 ], [ %66, %61 ]
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %254, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %224 = load i32, ptr %223, align 4, !tbaa !17
  %225 = icmp ne i32 %224, 0
  %226 = icmp ult i32 %220, 4
  %227 = and i1 %226, %225
  br i1 %227, label %254, label %228

228:                                              ; preds = %222
  %229 = icmp ugt i32 %220, 3
  %230 = load ptr, ptr %16, align 8, !tbaa !33
  br i1 %229, label %231, label %248

231:                                              ; preds = %228
  %232 = load i8, ptr %230, align 1, !tbaa !34
  %233 = icmp eq i8 %232, 31
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 1
  %236 = load i8, ptr %235, align 1, !tbaa !34
  %237 = icmp eq i8 %236, -117
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = getelementptr inbounds nuw i8, ptr %230, i64 2
  %240 = load i8, ptr %239, align 1, !tbaa !34
  %241 = icmp eq i8 %240, 8
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %230, i64 3
  %244 = load i8, ptr %243, align 1, !tbaa !34
  %245 = icmp ult i8 %244, 32
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = tail call i32 @inflateReset(ptr noundef nonnull %16) #12
  store i32 2, ptr %9, align 8, !tbaa !24
  store i32 1, ptr %49, align 4, !tbaa !31
  store i32 0, ptr %45, align 8, !tbaa !30
  br label %254

248:                                              ; preds = %242, %238, %234, %231, %228
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %250 = load ptr, ptr %249, align 8, !tbaa !28
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %250, ptr %251, align 8, !tbaa !20
  %252 = zext i32 %220 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %250, ptr align 1 %230, i64 %252, i1 false)
  %253 = load i32, ptr %65, align 8, !tbaa !32
  store i32 %253, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !32
  store i32 1, ptr %9, align 8, !tbaa !24
  br label %254

254:                                              ; preds = %248, %246, %222, %219, %211, %58, %52, %41, %34, %12, %8
  %255 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %256 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %256, label %257 [
    i32 0, label %261
    i32 -5, label %261
  ]

257:                                              ; preds = %254
  %258 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %259 = load i32, ptr %258, align 4, !tbaa !17
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %740, label %261

261:                                              ; preds = %254, %254, %257
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #12
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %263 = load i64, ptr %262, align 8, !tbaa !18
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %682, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %282

282:                                              ; preds = %677, %265
  %283 = phi i64 [ %678, %677 ], [ %263, %265 ]
  %284 = load i32, ptr %1, align 8, !tbaa !19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %297, label %286

286:                                              ; preds = %282
  %287 = zext i32 %284 to i64
  %288 = tail call i64 @llvm.smin.i64(i64 %283, i64 %287)
  %289 = trunc i64 %288 to i32
  %290 = sub i32 %284, %289
  store i32 %290, ptr %1, align 8, !tbaa !19
  %291 = load ptr, ptr %266, align 8, !tbaa !20
  %292 = and i64 %288, 4294967295
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 %292
  store ptr %293, ptr %266, align 8, !tbaa !20
  %294 = load i64, ptr %267, align 8, !tbaa !21
  %295 = add nsw i64 %294, %292
  store i64 %295, ptr %267, align 8, !tbaa !21
  %296 = sub nsw i64 %283, %292
  store i64 %296, ptr %262, align 8, !tbaa !18
  br label %677

297:                                              ; preds = %282
  %298 = load i32, ptr %268, align 8, !tbaa !22
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i32, ptr %269, align 8, !tbaa !23
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %680, label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %674, %303
  %305 = load i32, ptr %9, align 8, !tbaa !24
  switch i32 %305, label %662 [
    i32 0, label %306
    i32 1, label %529
    i32 2, label %565
  ]

306:                                              ; preds = %304
  %307 = load i32, ptr %270, align 8, !tbaa !25
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %306
  %310 = load i32, ptr %279, align 4, !tbaa !26
  %311 = zext i32 %310 to i64
  %312 = tail call noalias ptr @malloc(i64 noundef %311) #13
  store ptr %312, ptr %275, align 8, !tbaa !27
  %313 = load i32, ptr %279, align 4, !tbaa !26
  %314 = shl i32 %313, 1
  %315 = zext i32 %314 to i64
  %316 = tail call noalias ptr @malloc(i64 noundef %315) #13
  store ptr %316, ptr %272, align 8, !tbaa !28
  %317 = icmp eq ptr %312, null
  %318 = icmp eq ptr %316, null
  %319 = or i1 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %309
  tail call void @free(ptr noundef %316) #12
  tail call void @free(ptr noundef %312) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %740

321:                                              ; preds = %309
  %322 = load i32, ptr %279, align 4, !tbaa !26
  store i32 %322, ptr %270, align 8, !tbaa !25
  store i32 0, ptr %269, align 8, !tbaa !23
  store ptr null, ptr %274, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %280, i8 0, i64 24, i1 false)
  %323 = tail call i32 @inflateInit2_(ptr noundef nonnull %274, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = load ptr, ptr %272, align 8, !tbaa !28
  tail call void @free(ptr noundef %326) #12
  %327 = load ptr, ptr %275, align 8, !tbaa !27
  tail call void @free(ptr noundef %327) #12
  store i32 0, ptr %270, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %740

328:                                              ; preds = %321, %306
  %329 = load i32, ptr %281, align 8, !tbaa !30
  %330 = icmp eq i32 %329, -1
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr %278, align 4, !tbaa !31
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %331, %328
  %335 = tail call i32 @inflateReset(ptr noundef nonnull %274) #12
  store i32 2, ptr %9, align 8, !tbaa !24
  %336 = load i32, ptr %278, align 4, !tbaa !31
  %337 = icmp ne i32 %336, -1
  %338 = zext i1 %337 to i32
  store i32 %338, ptr %278, align 4, !tbaa !31
  store i32 0, ptr %281, align 8, !tbaa !30
  br label %526

339:                                              ; preds = %331
  %340 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %340, label %740 [
    i32 0, label %341
    i32 -5, label %341
  ]

341:                                              ; preds = %339, %339
  %342 = load i32, ptr %268, align 8, !tbaa !22
  %343 = icmp eq i32 %342, 0
  %344 = load i32, ptr %269, align 8, !tbaa !32
  br i1 %343, label %345, label %494

345:                                              ; preds = %341
  %346 = icmp eq i32 %344, 0
  %347 = load ptr, ptr %275, align 8, !tbaa !27
  %348 = ptrtoaddr ptr %347 to i64
  br i1 %346, label %454, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %274, align 8, !tbaa !33
  %351 = icmp eq ptr %350, %347
  br i1 %351, label %454, label %352

352:                                              ; preds = %349
  %353 = ptrtoaddr ptr %350 to i64
  %354 = zext i32 %344 to i64
  %355 = icmp ult i32 %344, 4
  %356 = sub i64 %348, %353
  %357 = icmp ult i64 %356, 32
  %358 = select i1 %355, i1 true, i1 %357
  br i1 %358, label %398, label %359

359:                                              ; preds = %352
  %360 = icmp ult i32 %344, 32
  br i1 %360, label %382, label %361

361:                                              ; preds = %359
  %362 = and i64 %354, 28
  %363 = and i64 %354, 4294967264
  %364 = getelementptr i8, ptr %347, i64 %363
  %365 = getelementptr i8, ptr %350, i64 %363
  %366 = trunc nuw i64 %363 to i32
  %367 = sub i32 %344, %366
  br label %368

368:                                              ; preds = %368, %361
  %369 = phi i64 [ 0, %361 ], [ %376, %368 ]
  %370 = getelementptr i8, ptr %347, i64 %369
  %371 = getelementptr i8, ptr %350, i64 %369
  %372 = getelementptr i8, ptr %371, i64 16
  %373 = load <16 x i8>, ptr %371, align 1, !tbaa !34
  %374 = load <16 x i8>, ptr %372, align 1, !tbaa !34
  %375 = getelementptr i8, ptr %370, i64 16
  store <16 x i8> %373, ptr %370, align 1, !tbaa !34
  store <16 x i8> %374, ptr %375, align 1, !tbaa !34
  %376 = add nuw i64 %369, 32
  %377 = icmp eq i64 %376, %363
  br i1 %377, label %378, label %368, !llvm.loop !88

378:                                              ; preds = %368
  %379 = icmp eq i64 %363, %354
  br i1 %379, label %451, label %380

380:                                              ; preds = %378
  %381 = icmp eq i64 %362, 0
  br i1 %381, label %398, label %382, !prof !39

382:                                              ; preds = %359, %380
  %383 = phi i64 [ %363, %380 ], [ 0, %359 ]
  %384 = and i64 %354, 4294967292
  %385 = getelementptr i8, ptr %347, i64 %384
  %386 = getelementptr i8, ptr %350, i64 %384
  %387 = trunc nuw i64 %384 to i32
  %388 = sub i32 %344, %387
  br label %389

389:                                              ; preds = %389, %382
  %390 = phi i64 [ %383, %382 ], [ %394, %389 ]
  %391 = getelementptr i8, ptr %347, i64 %390
  %392 = getelementptr i8, ptr %350, i64 %390
  %393 = load <4 x i8>, ptr %392, align 1, !tbaa !34
  store <4 x i8> %393, ptr %391, align 1, !tbaa !34
  %394 = add nuw i64 %390, 4
  %395 = icmp eq i64 %394, %384
  br i1 %395, label %396, label %389, !llvm.loop !89

396:                                              ; preds = %389
  %397 = icmp eq i64 %384, %354
  br i1 %397, label %451, label %398

398:                                              ; preds = %352, %380, %396
  %399 = phi ptr [ %347, %352 ], [ %364, %380 ], [ %385, %396 ]
  %400 = phi ptr [ %350, %352 ], [ %365, %380 ], [ %386, %396 ]
  %401 = phi i32 [ %344, %352 ], [ %367, %380 ], [ %388, %396 ]
  %402 = add i32 %401, -1
  %403 = and i32 %401, 7
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %416, label %405

405:                                              ; preds = %398, %405
  %406 = phi ptr [ %412, %405 ], [ %399, %398 ]
  %407 = phi ptr [ %410, %405 ], [ %400, %398 ]
  %408 = phi i32 [ %413, %405 ], [ %401, %398 ]
  %409 = phi i32 [ %414, %405 ], [ 0, %398 ]
  %410 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %411 = load i8, ptr %407, align 1, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 1
  store i8 %411, ptr %406, align 1, !tbaa !34
  %413 = add i32 %408, -1
  %414 = add i32 %409, 1
  %415 = icmp eq i32 %414, %403
  br i1 %415, label %416, label %405, !llvm.loop !90

416:                                              ; preds = %405, %398
  %417 = phi ptr [ %399, %398 ], [ %412, %405 ]
  %418 = phi ptr [ %400, %398 ], [ %410, %405 ]
  %419 = phi i32 [ %401, %398 ], [ %413, %405 ]
  %420 = icmp ult i32 %402, 7
  br i1 %420, label %451, label %421

421:                                              ; preds = %416, %421
  %422 = phi ptr [ %448, %421 ], [ %417, %416 ]
  %423 = phi ptr [ %446, %421 ], [ %418, %416 ]
  %424 = phi i32 [ %449, %421 ], [ %419, %416 ]
  %425 = getelementptr inbounds nuw i8, ptr %423, i64 1
  %426 = load i8, ptr %423, align 1, !tbaa !34
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 1
  store i8 %426, ptr %422, align 1, !tbaa !34
  %428 = getelementptr inbounds nuw i8, ptr %423, i64 2
  %429 = load i8, ptr %425, align 1, !tbaa !34
  %430 = getelementptr inbounds nuw i8, ptr %422, i64 2
  store i8 %429, ptr %427, align 1, !tbaa !34
  %431 = getelementptr inbounds nuw i8, ptr %423, i64 3
  %432 = load i8, ptr %428, align 1, !tbaa !34
  %433 = getelementptr inbounds nuw i8, ptr %422, i64 3
  store i8 %432, ptr %430, align 1, !tbaa !34
  %434 = getelementptr inbounds nuw i8, ptr %423, i64 4
  %435 = load i8, ptr %431, align 1, !tbaa !34
  %436 = getelementptr inbounds nuw i8, ptr %422, i64 4
  store i8 %435, ptr %433, align 1, !tbaa !34
  %437 = getelementptr inbounds nuw i8, ptr %423, i64 5
  %438 = load i8, ptr %434, align 1, !tbaa !34
  %439 = getelementptr inbounds nuw i8, ptr %422, i64 5
  store i8 %438, ptr %436, align 1, !tbaa !34
  %440 = getelementptr inbounds nuw i8, ptr %423, i64 6
  %441 = load i8, ptr %437, align 1, !tbaa !34
  %442 = getelementptr inbounds nuw i8, ptr %422, i64 6
  store i8 %441, ptr %439, align 1, !tbaa !34
  %443 = getelementptr inbounds nuw i8, ptr %423, i64 7
  %444 = load i8, ptr %440, align 1, !tbaa !34
  %445 = getelementptr inbounds nuw i8, ptr %422, i64 7
  store i8 %444, ptr %442, align 1, !tbaa !34
  %446 = getelementptr inbounds nuw i8, ptr %423, i64 8
  %447 = load i8, ptr %443, align 1, !tbaa !34
  %448 = getelementptr inbounds nuw i8, ptr %422, i64 8
  store i8 %447, ptr %445, align 1, !tbaa !34
  %449 = add i32 %424, -8
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %421, !llvm.loop !91

451:                                              ; preds = %416, %421, %396, %378
  %452 = load i32, ptr %269, align 8, !tbaa !32
  %453 = load ptr, ptr %275, align 8, !tbaa !27
  br label %454

454:                                              ; preds = %451, %349, %345
  %455 = phi ptr [ %453, %451 ], [ %347, %349 ], [ %347, %345 ]
  %456 = phi i32 [ %452, %451 ], [ %344, %349 ], [ 0, %345 ]
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds nuw i8, ptr %455, i64 %457
  %459 = load i32, ptr %270, align 8, !tbaa !25
  %460 = sub i32 %459, %456
  store i32 0, ptr %276, align 4, !tbaa !17
  %461 = tail call ptr @__errno_location() #14
  store i32 0, ptr %461, align 4, !tbaa !4
  br label %462

462:                                              ; preds = %473, %454
  %463 = phi i32 [ 0, %454 ], [ %474, %473 ]
  %464 = sub i32 %460, %463
  %465 = tail call i32 @llvm.umin.i32(i32 %464, i32 1073741824)
  %466 = load i32, ptr %277, align 4, !tbaa !44
  %467 = zext i32 %463 to i64
  %468 = getelementptr inbounds nuw i8, ptr %458, i64 %467
  %469 = zext nneg i32 %465 to i64
  %470 = tail call i64 @read(i32 noundef %466, ptr noundef %468, i64 noundef %469) #12
  %471 = trunc i64 %470 to i32
  %472 = icmp slt i32 %471, 1
  br i1 %472, label %476, label %473

473:                                              ; preds = %462
  %474 = add i32 %463, %471
  %475 = icmp ult i32 %474, %460
  br i1 %475, label %462, label %489, !llvm.loop !45

476:                                              ; preds = %462
  %477 = icmp slt i32 %471, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %476
  %479 = load i32, ptr %461, align 4, !tbaa !4
  %480 = icmp eq i32 %479, 11
  br i1 %480, label %481, label %486

481:                                              ; preds = %478
  store i32 1, ptr %276, align 4, !tbaa !17
  %482 = icmp eq i32 %463, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %481
  %484 = load i32, ptr %461, align 4, !tbaa !4
  br label %486

485:                                              ; preds = %476
  store i32 1, ptr %268, align 8, !tbaa !22
  br label %489

486:                                              ; preds = %478, %483
  %487 = phi i32 [ %484, %483 ], [ %479, %478 ]
  %488 = tail call ptr @strerror(i32 noundef %487) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %488) #12
  br label %740

489:                                              ; preds = %473, %485, %481
  %490 = phi i32 [ %463, %481 ], [ %463, %485 ], [ %474, %473 ]
  %491 = load i32, ptr %269, align 8, !tbaa !32
  %492 = add i32 %491, %490
  store i32 %492, ptr %269, align 8, !tbaa !32
  %493 = load ptr, ptr %275, align 8, !tbaa !27
  store ptr %493, ptr %274, align 8, !tbaa !33
  br label %494

494:                                              ; preds = %489, %341
  %495 = phi i32 [ %492, %489 ], [ %344, %341 ]
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %526, label %497

497:                                              ; preds = %494
  %498 = load i32, ptr %276, align 4, !tbaa !17
  %499 = icmp ne i32 %498, 0
  %500 = icmp ult i32 %495, 4
  %501 = and i1 %500, %499
  br i1 %501, label %526, label %502

502:                                              ; preds = %497
  %503 = icmp ugt i32 %495, 3
  %504 = load ptr, ptr %274, align 8, !tbaa !33
  br i1 %503, label %505, label %522

505:                                              ; preds = %502
  %506 = load i8, ptr %504, align 1, !tbaa !34
  %507 = icmp eq i8 %506, 31
  br i1 %507, label %508, label %522

508:                                              ; preds = %505
  %509 = getelementptr inbounds nuw i8, ptr %504, i64 1
  %510 = load i8, ptr %509, align 1, !tbaa !34
  %511 = icmp eq i8 %510, -117
  br i1 %511, label %512, label %522

512:                                              ; preds = %508
  %513 = getelementptr inbounds nuw i8, ptr %504, i64 2
  %514 = load i8, ptr %513, align 1, !tbaa !34
  %515 = icmp eq i8 %514, 8
  br i1 %515, label %516, label %522

516:                                              ; preds = %512
  %517 = getelementptr inbounds nuw i8, ptr %504, i64 3
  %518 = load i8, ptr %517, align 1, !tbaa !34
  %519 = icmp ult i8 %518, 32
  br i1 %519, label %520, label %522

520:                                              ; preds = %516
  %521 = tail call i32 @inflateReset(ptr noundef nonnull %274) #12
  store i32 2, ptr %9, align 8, !tbaa !24
  store i32 1, ptr %278, align 4, !tbaa !31
  store i32 0, ptr %281, align 8, !tbaa !30
  br label %663

522:                                              ; preds = %516, %512, %508, %505, %502
  %523 = load ptr, ptr %272, align 8, !tbaa !28
  store ptr %523, ptr %266, align 8, !tbaa !20
  %524 = zext i32 %495 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %523, ptr align 1 %504, i64 %524, i1 false)
  %525 = load i32, ptr %269, align 8, !tbaa !32
  store i32 %525, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %269, align 8, !tbaa !32
  store i32 1, ptr %9, align 8, !tbaa !24
  br label %665

526:                                              ; preds = %497, %494, %334
  %527 = load i32, ptr %9, align 8, !tbaa !24
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %675, label %663

529:                                              ; preds = %304
  %530 = load ptr, ptr %272, align 8, !tbaa !28
  %531 = load i32, ptr %270, align 8, !tbaa !25
  %532 = shl i32 %531, 1
  store i32 0, ptr %276, align 4, !tbaa !17
  %533 = tail call ptr @__errno_location() #14
  store i32 0, ptr %533, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %534

534:                                              ; preds = %545, %529
  %535 = phi i32 [ %547, %545 ], [ 0, %529 ]
  %536 = sub i32 %532, %535
  %537 = tail call i32 @llvm.umin.i32(i32 %536, i32 1073741824)
  %538 = load i32, ptr %277, align 4, !tbaa !44
  %539 = zext i32 %535 to i64
  %540 = getelementptr inbounds nuw i8, ptr %530, i64 %539
  %541 = zext nneg i32 %537 to i64
  %542 = tail call i64 @read(i32 noundef %538, ptr noundef %540, i64 noundef %541) #12
  %543 = trunc i64 %542 to i32
  %544 = icmp slt i32 %543, 1
  br i1 %544, label %549, label %545

545:                                              ; preds = %534
  %546 = load i32, ptr %1, align 4, !tbaa !4
  %547 = add i32 %546, %543
  store i32 %547, ptr %1, align 4, !tbaa !4
  %548 = icmp ult i32 %547, %532
  br i1 %548, label %534, label %563, !llvm.loop !45

549:                                              ; preds = %534
  %550 = icmp slt i32 %543, 0
  br i1 %550, label %551, label %559

551:                                              ; preds = %549
  %552 = load i32, ptr %533, align 4, !tbaa !4
  %553 = icmp eq i32 %552, 11
  br i1 %553, label %554, label %560

554:                                              ; preds = %551
  store i32 1, ptr %276, align 4, !tbaa !17
  %555 = load i32, ptr %1, align 4, !tbaa !4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %563

557:                                              ; preds = %554
  %558 = load i32, ptr %533, align 4, !tbaa !4
  br label %560

559:                                              ; preds = %549
  store i32 1, ptr %268, align 8, !tbaa !22
  br label %563

560:                                              ; preds = %551, %557
  %561 = phi i32 [ %558, %557 ], [ %552, %551 ]
  %562 = tail call ptr @strerror(i32 noundef %561) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %562) #12
  br label %740

563:                                              ; preds = %545, %559, %554
  %564 = load ptr, ptr %272, align 8, !tbaa !28
  store ptr %564, ptr %266, align 8, !tbaa !20
  br label %675

565:                                              ; preds = %304
  %566 = load i32, ptr %270, align 8, !tbaa !25
  %567 = shl i32 %566, 1
  store i32 %567, ptr %271, align 8, !tbaa !46
  %568 = load ptr, ptr %272, align 8, !tbaa !28
  store ptr %568, ptr %273, align 8, !tbaa !47
  br label %569

569:                                              ; preds = %642, %565
  %570 = phi i32 [ 0, %565 ], [ %621, %642 ]
  %571 = load i32, ptr %269, align 8, !tbaa !32
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %620

573:                                              ; preds = %569
  %574 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %574, label %653 [
    i32 0, label %575
    i32 -5, label %575
  ]

575:                                              ; preds = %573, %573
  %576 = load i32, ptr %268, align 8, !tbaa !22
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %616

578:                                              ; preds = %575
  %579 = load ptr, ptr %275, align 8, !tbaa !27
  %580 = load i32, ptr %270, align 8, !tbaa !25
  store i32 0, ptr %276, align 4, !tbaa !17
  %581 = tail call ptr @__errno_location() #14
  store i32 0, ptr %581, align 4, !tbaa !4
  br label %582

582:                                              ; preds = %593, %578
  %583 = phi i32 [ 0, %578 ], [ %594, %593 ]
  %584 = sub i32 %580, %583
  %585 = tail call i32 @llvm.umin.i32(i32 %584, i32 1073741824)
  %586 = load i32, ptr %277, align 4, !tbaa !44
  %587 = zext i32 %583 to i64
  %588 = getelementptr inbounds nuw i8, ptr %579, i64 %587
  %589 = zext nneg i32 %585 to i64
  %590 = tail call i64 @read(i32 noundef %586, ptr noundef %588, i64 noundef %589) #12
  %591 = trunc i64 %590 to i32
  %592 = icmp slt i32 %591, 1
  br i1 %592, label %596, label %593

593:                                              ; preds = %582
  %594 = add i32 %583, %591
  %595 = icmp ult i32 %594, %580
  br i1 %595, label %582, label %610, !llvm.loop !45

596:                                              ; preds = %582
  %597 = icmp slt i32 %591, 0
  br i1 %597, label %598, label %605

598:                                              ; preds = %596
  %599 = load i32, ptr %581, align 4, !tbaa !4
  %600 = icmp eq i32 %599, 11
  br i1 %600, label %601, label %606

601:                                              ; preds = %598
  store i32 1, ptr %276, align 4, !tbaa !17
  %602 = icmp eq i32 %583, 0
  br i1 %602, label %603, label %610

603:                                              ; preds = %601
  %604 = load i32, ptr %581, align 4, !tbaa !4
  br label %606

605:                                              ; preds = %596
  store i32 1, ptr %268, align 8, !tbaa !22
  br label %610

606:                                              ; preds = %598, %603
  %607 = phi i32 [ %604, %603 ], [ %599, %598 ]
  %608 = tail call ptr @strerror(i32 noundef %607) #12
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %608) #12
  %609 = load i32, ptr %255, align 8, !tbaa !16
  br label %653

610:                                              ; preds = %593, %605, %601
  %611 = phi i32 [ %583, %601 ], [ %583, %605 ], [ %594, %593 ]
  %612 = load i32, ptr %269, align 8, !tbaa !32
  %613 = add i32 %612, %611
  store i32 %613, ptr %269, align 8, !tbaa !32
  %614 = load ptr, ptr %275, align 8, !tbaa !27
  store ptr %614, ptr %274, align 8, !tbaa !33
  %615 = icmp eq i32 %613, 0
  br i1 %615, label %616, label %620

616:                                              ; preds = %610, %575
  %617 = load i32, ptr %276, align 4, !tbaa !17
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %653

619:                                              ; preds = %616
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %653

620:                                              ; preds = %610, %569
  %621 = tail call i32 @inflate(ptr noundef nonnull %274, i32 noundef 0) #12
  %622 = load i32, ptr %271, align 8, !tbaa !46
  %623 = icmp ult i32 %622, %567
  br i1 %623, label %624, label %625

624:                                              ; preds = %620
  store i32 0, ptr %278, align 4, !tbaa !31
  br label %625

625:                                              ; preds = %624, %620
  switch i32 %621, label %642 [
    i32 -2, label %626
    i32 2, label %626
    i32 -4, label %627
    i32 -3, label %628
  ]

626:                                              ; preds = %625, %625
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %653

627:                                              ; preds = %625
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %646

628:                                              ; preds = %625
  %629 = load i32, ptr %278, align 4, !tbaa !31
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %637

631:                                              ; preds = %628
  store i32 0, ptr %269, align 8, !tbaa !32
  store i32 1, ptr %268, align 8, !tbaa !22
  store i32 0, ptr %9, align 8, !tbaa !24
  %632 = sub i32 %567, %622
  store i32 %632, ptr %1, align 8, !tbaa !19
  %633 = load ptr, ptr %273, align 8, !tbaa !47
  %634 = zext i32 %632 to i64
  %635 = sub nsw i64 0, %634
  %636 = getelementptr inbounds i8, ptr %633, i64 %635
  store ptr %636, ptr %266, align 8, !tbaa !20
  br label %663

637:                                              ; preds = %628
  %638 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %639 = load ptr, ptr %638, align 8, !tbaa !48
  %640 = icmp eq ptr %639, null
  %641 = select i1 %640, ptr @.str.6, ptr %639
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %641) #12
  br label %646

642:                                              ; preds = %625
  %643 = icmp ne i32 %622, 0
  %644 = icmp ne i32 %621, 1
  %645 = select i1 %643, i1 %644, i1 false
  br i1 %645, label %569, label %653, !llvm.loop !49

646:                                              ; preds = %637, %627
  %647 = load i32, ptr %271, align 8, !tbaa !46
  %648 = sub i32 %567, %647
  store i32 %648, ptr %1, align 8, !tbaa !19
  %649 = load ptr, ptr %273, align 8, !tbaa !47
  %650 = zext i32 %648 to i64
  %651 = sub nsw i64 0, %650
  %652 = getelementptr inbounds i8, ptr %649, i64 %651
  store ptr %652, ptr %266, align 8, !tbaa !20
  br label %740

653:                                              ; preds = %642, %573, %626, %619, %616, %606
  %654 = phi i32 [ %609, %606 ], [ %570, %616 ], [ %570, %619 ], [ %621, %626 ], [ %574, %573 ], [ %621, %642 ]
  %655 = load i32, ptr %271, align 8, !tbaa !46
  %656 = sub i32 %567, %655
  store i32 %656, ptr %1, align 8, !tbaa !19
  %657 = load ptr, ptr %273, align 8, !tbaa !47
  %658 = zext i32 %656 to i64
  %659 = sub nsw i64 0, %658
  %660 = getelementptr inbounds i8, ptr %657, i64 %659
  store ptr %660, ptr %266, align 8, !tbaa !20
  switch i32 %654, label %740 [
    i32 1, label %661
    i32 0, label %663
  ]

661:                                              ; preds = %653
  store i32 0, ptr %278, align 4, !tbaa !31
  store i32 0, ptr %9, align 8, !tbaa !24
  br label %663

662:                                              ; preds = %304
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %740

663:                                              ; preds = %661, %653, %631, %526, %520
  %664 = load i32, ptr %1, align 8, !tbaa !19
  br label %665

665:                                              ; preds = %663, %522
  %666 = phi i32 [ %664, %663 ], [ %525, %522 ]
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %675

668:                                              ; preds = %665
  %669 = load i32, ptr %268, align 8, !tbaa !22
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %674, label %671

671:                                              ; preds = %668
  %672 = load i32, ptr %269, align 8, !tbaa !32
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %675, label %674

674:                                              ; preds = %671, %668
  br label %304, !llvm.loop !50

675:                                              ; preds = %671, %665, %526, %563
  %676 = load i64, ptr %262, align 8, !tbaa !18
  br label %677

677:                                              ; preds = %675, %286
  %678 = phi i64 [ %676, %675 ], [ %296, %286 ]
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %680, label %282, !llvm.loop !51

680:                                              ; preds = %300, %677
  %681 = icmp slt i32 %0, 0
  br i1 %681, label %740, label %684

682:                                              ; preds = %261
  %683 = icmp slt i32 %0, 0
  br i1 %683, label %740, label %684

684:                                              ; preds = %680, %682
  %685 = load i32, ptr %1, align 8, !tbaa !19
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %702

687:                                              ; preds = %684
  store i32 1, ptr %1, align 8, !tbaa !19
  %688 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %689 = load ptr, ptr %688, align 8, !tbaa !28
  %690 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %691 = load i32, ptr %690, align 8, !tbaa !25
  %692 = shl i32 %691, 1
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds nuw i8, ptr %689, i64 %693
  %695 = getelementptr inbounds i8, ptr %694, i64 -1
  %696 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %695, ptr %696, align 8, !tbaa !20
  %697 = trunc i32 %0 to i8
  store i8 %697, ptr %695, align 1, !tbaa !34
  %698 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %699 = load i64, ptr %698, align 8, !tbaa !21
  %700 = add nsw i64 %699, -1
  store i64 %700, ptr %698, align 8, !tbaa !21
  %701 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %701, align 4, !tbaa !59
  br label %740

702:                                              ; preds = %684
  %703 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %704 = load i32, ptr %703, align 8, !tbaa !25
  %705 = shl i32 %704, 1
  %706 = icmp eq i32 %685, %705
  br i1 %706, label %707, label %708

707:                                              ; preds = %702
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #12
  br label %740

708:                                              ; preds = %702
  %709 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %710 = load ptr, ptr %709, align 8, !tbaa !20
  %711 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %712 = load ptr, ptr %711, align 8, !tbaa !28
  %713 = icmp eq ptr %710, %712
  br i1 %713, label %714, label %730

714:                                              ; preds = %708
  %715 = zext i32 %685 to i64
  %716 = getelementptr inbounds nuw i8, ptr %712, i64 %715
  %717 = zext i32 %705 to i64
  %718 = getelementptr inbounds nuw i8, ptr %712, i64 %717
  %719 = icmp ugt ptr %716, %710
  br i1 %719, label %720, label %730

720:                                              ; preds = %714, %720
  %721 = phi ptr [ %725, %720 ], [ %718, %714 ]
  %722 = phi ptr [ %723, %720 ], [ %716, %714 ]
  %723 = getelementptr inbounds i8, ptr %722, i64 -1
  %724 = load i8, ptr %723, align 1, !tbaa !34
  %725 = getelementptr inbounds i8, ptr %721, i64 -1
  store i8 %724, ptr %725, align 1, !tbaa !34
  %726 = load ptr, ptr %711, align 8, !tbaa !28
  %727 = icmp ugt ptr %723, %726
  br i1 %727, label %720, label %728, !llvm.loop !92

728:                                              ; preds = %720
  %729 = load i32, ptr %1, align 8, !tbaa !19
  br label %730

730:                                              ; preds = %714, %728, %708
  %731 = phi ptr [ %710, %708 ], [ %718, %714 ], [ %725, %728 ]
  %732 = phi i32 [ %685, %708 ], [ %685, %714 ], [ %729, %728 ]
  %733 = add i32 %732, 1
  store i32 %733, ptr %1, align 8, !tbaa !19
  %734 = getelementptr inbounds i8, ptr %731, i64 -1
  store ptr %734, ptr %709, align 8, !tbaa !20
  %735 = trunc i32 %0 to i8
  store i8 %735, ptr %734, align 1, !tbaa !34
  %736 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %737 = load i64, ptr %736, align 8, !tbaa !21
  %738 = add nsw i64 %737, -1
  store i64 %738, ptr %736, align 8, !tbaa !21
  %739 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %739, align 4, !tbaa !59
  br label %740

740:                                              ; preds = %339, %653, %325, %320, %486, %560, %662, %646, %682, %680, %257, %4, %2, %730, %707, %687
  %741 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %257 ], [ -1, %680 ], [ %0, %687 ], [ -1, %707 ], [ %0, %730 ], [ -1, %682 ], [ -1, %646 ], [ -1, %325 ], [ -1, %662 ], [ -1, %560 ], [ -1, %486 ], [ -1, %320 ], [ -1, %653 ], [ -1, %339 ]
  ret i32 %741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %871, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %871

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %15, label %16 [
    i32 0, label %20
    i32 -5, label %20
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %871, label %20

20:                                               ; preds = %13, %13, %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %440, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %42

42:                                               ; preds = %437, %24
  %43 = phi i64 [ %438, %437 ], [ %22, %24 ]
  %44 = load i32, ptr %0, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = zext i32 %44 to i64
  %48 = tail call i64 @llvm.smin.i64(i64 %43, i64 %47)
  %49 = trunc i64 %48 to i32
  %50 = sub i32 %44, %49
  store i32 %50, ptr %0, align 8, !tbaa !19
  %51 = load ptr, ptr %25, align 8, !tbaa !20
  %52 = and i64 %48, 4294967295
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 %52
  store ptr %53, ptr %25, align 8, !tbaa !20
  %54 = load i64, ptr %26, align 8, !tbaa !21
  %55 = add nsw i64 %54, %52
  store i64 %55, ptr %26, align 8, !tbaa !21
  %56 = sub nsw i64 %43, %52
  store i64 %56, ptr %21, align 8, !tbaa !18
  br label %437

57:                                               ; preds = %42
  %58 = load i32, ptr %27, align 8, !tbaa !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %28, align 8, !tbaa !23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %440, label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %434, %63
  %65 = load i32, ptr %29, align 8, !tbaa !24
  switch i32 %65, label %422 [
    i32 0, label %66
    i32 1, label %289
    i32 2, label %325
  ]

66:                                               ; preds = %64
  %67 = load i32, ptr %30, align 8, !tbaa !25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i32, ptr %39, align 4, !tbaa !26
  %71 = zext i32 %70 to i64
  %72 = tail call noalias ptr @malloc(i64 noundef %71) #13
  store ptr %72, ptr %35, align 8, !tbaa !27
  %73 = load i32, ptr %39, align 4, !tbaa !26
  %74 = shl i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #13
  store ptr %76, ptr %32, align 8, !tbaa !28
  %77 = icmp eq ptr %72, null
  %78 = icmp eq ptr %76, null
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  tail call void @free(ptr noundef %76) #12
  tail call void @free(ptr noundef %72) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

81:                                               ; preds = %69
  %82 = load i32, ptr %39, align 4, !tbaa !26
  store i32 %82, ptr %30, align 8, !tbaa !25
  store i32 0, ptr %28, align 8, !tbaa !23
  store ptr null, ptr %34, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %83 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %32, align 8, !tbaa !28
  tail call void @free(ptr noundef %86) #12
  %87 = load ptr, ptr %35, align 8, !tbaa !27
  tail call void @free(ptr noundef %87) #12
  store i32 0, ptr %30, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %871

88:                                               ; preds = %81, %66
  %89 = load i32, ptr %41, align 8, !tbaa !30
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %38, align 4, !tbaa !31
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91, %88
  %95 = tail call i32 @inflateReset(ptr noundef nonnull %34) #12
  store i32 2, ptr %29, align 8, !tbaa !24
  %96 = load i32, ptr %38, align 4, !tbaa !31
  %97 = icmp ne i32 %96, -1
  %98 = zext i1 %97 to i32
  store i32 %98, ptr %38, align 4, !tbaa !31
  store i32 0, ptr %41, align 8, !tbaa !30
  br label %286

99:                                               ; preds = %91
  %100 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %100, label %871 [
    i32 0, label %101
    i32 -5, label %101
  ]

101:                                              ; preds = %99, %99
  %102 = load i32, ptr %27, align 8, !tbaa !22
  %103 = icmp eq i32 %102, 0
  %104 = load i32, ptr %28, align 8, !tbaa !32
  br i1 %103, label %105, label %254

105:                                              ; preds = %101
  %106 = icmp eq i32 %104, 0
  %107 = load ptr, ptr %35, align 8, !tbaa !27
  %108 = ptrtoaddr ptr %107 to i64
  br i1 %106, label %214, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %34, align 8, !tbaa !33
  %111 = icmp eq ptr %110, %107
  br i1 %111, label %214, label %112

112:                                              ; preds = %109
  %113 = ptrtoaddr ptr %110 to i64
  %114 = zext i32 %104 to i64
  %115 = icmp ult i32 %104, 4
  %116 = sub i64 %108, %113
  %117 = icmp ult i64 %116, 32
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %158, label %119

119:                                              ; preds = %112
  %120 = icmp ult i32 %104, 32
  br i1 %120, label %142, label %121

121:                                              ; preds = %119
  %122 = and i64 %114, 28
  %123 = and i64 %114, 4294967264
  %124 = getelementptr i8, ptr %107, i64 %123
  %125 = getelementptr i8, ptr %110, i64 %123
  %126 = trunc nuw i64 %123 to i32
  %127 = sub i32 %104, %126
  br label %128

128:                                              ; preds = %128, %121
  %129 = phi i64 [ 0, %121 ], [ %136, %128 ]
  %130 = getelementptr i8, ptr %107, i64 %129
  %131 = getelementptr i8, ptr %110, i64 %129
  %132 = getelementptr i8, ptr %131, i64 16
  %133 = load <16 x i8>, ptr %131, align 1, !tbaa !34
  %134 = load <16 x i8>, ptr %132, align 1, !tbaa !34
  %135 = getelementptr i8, ptr %130, i64 16
  store <16 x i8> %133, ptr %130, align 1, !tbaa !34
  store <16 x i8> %134, ptr %135, align 1, !tbaa !34
  %136 = add nuw i64 %129, 32
  %137 = icmp eq i64 %136, %123
  br i1 %137, label %138, label %128, !llvm.loop !93

138:                                              ; preds = %128
  %139 = icmp eq i64 %123, %114
  br i1 %139, label %211, label %140

140:                                              ; preds = %138
  %141 = icmp eq i64 %122, 0
  br i1 %141, label %158, label %142, !prof !39

142:                                              ; preds = %119, %140
  %143 = phi i64 [ %123, %140 ], [ 0, %119 ]
  %144 = and i64 %114, 4294967292
  %145 = getelementptr i8, ptr %107, i64 %144
  %146 = getelementptr i8, ptr %110, i64 %144
  %147 = trunc nuw i64 %144 to i32
  %148 = sub i32 %104, %147
  br label %149

149:                                              ; preds = %149, %142
  %150 = phi i64 [ %143, %142 ], [ %154, %149 ]
  %151 = getelementptr i8, ptr %107, i64 %150
  %152 = getelementptr i8, ptr %110, i64 %150
  %153 = load <4 x i8>, ptr %152, align 1, !tbaa !34
  store <4 x i8> %153, ptr %151, align 1, !tbaa !34
  %154 = add nuw i64 %150, 4
  %155 = icmp eq i64 %154, %144
  br i1 %155, label %156, label %149, !llvm.loop !94

156:                                              ; preds = %149
  %157 = icmp eq i64 %144, %114
  br i1 %157, label %211, label %158

158:                                              ; preds = %112, %140, %156
  %159 = phi ptr [ %107, %112 ], [ %124, %140 ], [ %145, %156 ]
  %160 = phi ptr [ %110, %112 ], [ %125, %140 ], [ %146, %156 ]
  %161 = phi i32 [ %104, %112 ], [ %127, %140 ], [ %148, %156 ]
  %162 = add i32 %161, -1
  %163 = and i32 %161, 7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %158, %165
  %166 = phi ptr [ %172, %165 ], [ %159, %158 ]
  %167 = phi ptr [ %170, %165 ], [ %160, %158 ]
  %168 = phi i32 [ %173, %165 ], [ %161, %158 ]
  %169 = phi i32 [ %174, %165 ], [ 0, %158 ]
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %171 = load i8, ptr %167, align 1, !tbaa !34
  %172 = getelementptr inbounds nuw i8, ptr %166, i64 1
  store i8 %171, ptr %166, align 1, !tbaa !34
  %173 = add i32 %168, -1
  %174 = add i32 %169, 1
  %175 = icmp eq i32 %174, %163
  br i1 %175, label %176, label %165, !llvm.loop !95

176:                                              ; preds = %165, %158
  %177 = phi ptr [ %159, %158 ], [ %172, %165 ]
  %178 = phi ptr [ %160, %158 ], [ %170, %165 ]
  %179 = phi i32 [ %161, %158 ], [ %173, %165 ]
  %180 = icmp ult i32 %162, 7
  br i1 %180, label %211, label %181

181:                                              ; preds = %176, %181
  %182 = phi ptr [ %208, %181 ], [ %177, %176 ]
  %183 = phi ptr [ %206, %181 ], [ %178, %176 ]
  %184 = phi i32 [ %209, %181 ], [ %179, %176 ]
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %186 = load i8, ptr %183, align 1, !tbaa !34
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 1
  store i8 %186, ptr %182, align 1, !tbaa !34
  %188 = getelementptr inbounds nuw i8, ptr %183, i64 2
  %189 = load i8, ptr %185, align 1, !tbaa !34
  %190 = getelementptr inbounds nuw i8, ptr %182, i64 2
  store i8 %189, ptr %187, align 1, !tbaa !34
  %191 = getelementptr inbounds nuw i8, ptr %183, i64 3
  %192 = load i8, ptr %188, align 1, !tbaa !34
  %193 = getelementptr inbounds nuw i8, ptr %182, i64 3
  store i8 %192, ptr %190, align 1, !tbaa !34
  %194 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %195 = load i8, ptr %191, align 1, !tbaa !34
  %196 = getelementptr inbounds nuw i8, ptr %182, i64 4
  store i8 %195, ptr %193, align 1, !tbaa !34
  %197 = getelementptr inbounds nuw i8, ptr %183, i64 5
  %198 = load i8, ptr %194, align 1, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %182, i64 5
  store i8 %198, ptr %196, align 1, !tbaa !34
  %200 = getelementptr inbounds nuw i8, ptr %183, i64 6
  %201 = load i8, ptr %197, align 1, !tbaa !34
  %202 = getelementptr inbounds nuw i8, ptr %182, i64 6
  store i8 %201, ptr %199, align 1, !tbaa !34
  %203 = getelementptr inbounds nuw i8, ptr %183, i64 7
  %204 = load i8, ptr %200, align 1, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %182, i64 7
  store i8 %204, ptr %202, align 1, !tbaa !34
  %206 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %207 = load i8, ptr %203, align 1, !tbaa !34
  %208 = getelementptr inbounds nuw i8, ptr %182, i64 8
  store i8 %207, ptr %205, align 1, !tbaa !34
  %209 = add i32 %184, -8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %181, !llvm.loop !96

211:                                              ; preds = %176, %181, %156, %138
  %212 = load i32, ptr %28, align 8, !tbaa !32
  %213 = load ptr, ptr %35, align 8, !tbaa !27
  br label %214

214:                                              ; preds = %211, %109, %105
  %215 = phi ptr [ %213, %211 ], [ %107, %109 ], [ %107, %105 ]
  %216 = phi i32 [ %212, %211 ], [ %104, %109 ], [ 0, %105 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 %217
  %219 = load i32, ptr %30, align 8, !tbaa !25
  %220 = sub i32 %219, %216
  store i32 0, ptr %36, align 4, !tbaa !17
  %221 = tail call ptr @__errno_location() #14
  store i32 0, ptr %221, align 4, !tbaa !4
  br label %222

222:                                              ; preds = %233, %214
  %223 = phi i32 [ 0, %214 ], [ %234, %233 ]
  %224 = sub i32 %220, %223
  %225 = tail call i32 @llvm.umin.i32(i32 %224, i32 1073741824)
  %226 = load i32, ptr %37, align 4, !tbaa !44
  %227 = zext i32 %223 to i64
  %228 = getelementptr inbounds nuw i8, ptr %218, i64 %227
  %229 = zext nneg i32 %225 to i64
  %230 = tail call i64 @read(i32 noundef %226, ptr noundef %228, i64 noundef %229) #12
  %231 = trunc i64 %230 to i32
  %232 = icmp slt i32 %231, 1
  br i1 %232, label %236, label %233

233:                                              ; preds = %222
  %234 = add i32 %223, %231
  %235 = icmp ult i32 %234, %220
  br i1 %235, label %222, label %249, !llvm.loop !45

236:                                              ; preds = %222
  %237 = icmp slt i32 %231, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %236
  %239 = load i32, ptr %221, align 4, !tbaa !4
  %240 = icmp eq i32 %239, 11
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  store i32 1, ptr %36, align 4, !tbaa !17
  %242 = icmp eq i32 %223, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %241
  %244 = load i32, ptr %221, align 4, !tbaa !4
  br label %246

245:                                              ; preds = %236
  store i32 1, ptr %27, align 8, !tbaa !22
  br label %249

246:                                              ; preds = %238, %243
  %247 = phi i32 [ %244, %243 ], [ %239, %238 ]
  %248 = tail call ptr @strerror(i32 noundef %247) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %248) #12
  br label %871

249:                                              ; preds = %233, %245, %241
  %250 = phi i32 [ %223, %241 ], [ %223, %245 ], [ %234, %233 ]
  %251 = load i32, ptr %28, align 8, !tbaa !32
  %252 = add i32 %251, %250
  store i32 %252, ptr %28, align 8, !tbaa !32
  %253 = load ptr, ptr %35, align 8, !tbaa !27
  store ptr %253, ptr %34, align 8, !tbaa !33
  br label %254

254:                                              ; preds = %249, %101
  %255 = phi i32 [ %252, %249 ], [ %104, %101 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %286, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %36, align 4, !tbaa !17
  %259 = icmp ne i32 %258, 0
  %260 = icmp ult i32 %255, 4
  %261 = and i1 %260, %259
  br i1 %261, label %286, label %262

262:                                              ; preds = %257
  %263 = icmp ugt i32 %255, 3
  %264 = load ptr, ptr %34, align 8, !tbaa !33
  br i1 %263, label %265, label %282

265:                                              ; preds = %262
  %266 = load i8, ptr %264, align 1, !tbaa !34
  %267 = icmp eq i8 %266, 31
  br i1 %267, label %268, label %282

268:                                              ; preds = %265
  %269 = getelementptr inbounds nuw i8, ptr %264, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !34
  %271 = icmp eq i8 %270, -117
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %264, i64 2
  %274 = load i8, ptr %273, align 1, !tbaa !34
  %275 = icmp eq i8 %274, 8
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = getelementptr inbounds nuw i8, ptr %264, i64 3
  %278 = load i8, ptr %277, align 1, !tbaa !34
  %279 = icmp ult i8 %278, 32
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @inflateReset(ptr noundef nonnull %34) #12
  store i32 2, ptr %29, align 8, !tbaa !24
  store i32 1, ptr %38, align 4, !tbaa !31
  store i32 0, ptr %41, align 8, !tbaa !30
  br label %423

282:                                              ; preds = %276, %272, %268, %265, %262
  %283 = load ptr, ptr %32, align 8, !tbaa !28
  store ptr %283, ptr %25, align 8, !tbaa !20
  %284 = zext i32 %255 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %264, i64 %284, i1 false)
  %285 = load i32, ptr %28, align 8, !tbaa !32
  store i32 %285, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !32
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %425

286:                                              ; preds = %257, %254, %94
  %287 = load i32, ptr %29, align 8, !tbaa !24
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %435, label %423

289:                                              ; preds = %64
  %290 = load ptr, ptr %32, align 8, !tbaa !28
  %291 = load i32, ptr %30, align 8, !tbaa !25
  %292 = shl i32 %291, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %293 = tail call ptr @__errno_location() #14
  store i32 0, ptr %293, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %294

294:                                              ; preds = %305, %289
  %295 = phi i32 [ %307, %305 ], [ 0, %289 ]
  %296 = sub i32 %292, %295
  %297 = tail call i32 @llvm.umin.i32(i32 %296, i32 1073741824)
  %298 = load i32, ptr %37, align 4, !tbaa !44
  %299 = zext i32 %295 to i64
  %300 = getelementptr inbounds nuw i8, ptr %290, i64 %299
  %301 = zext nneg i32 %297 to i64
  %302 = tail call i64 @read(i32 noundef %298, ptr noundef %300, i64 noundef %301) #12
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %309, label %305

305:                                              ; preds = %294
  %306 = load i32, ptr %0, align 4, !tbaa !4
  %307 = add i32 %306, %303
  store i32 %307, ptr %0, align 4, !tbaa !4
  %308 = icmp ult i32 %307, %292
  br i1 %308, label %294, label %323, !llvm.loop !45

309:                                              ; preds = %294
  %310 = icmp slt i32 %303, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %309
  %312 = load i32, ptr %293, align 4, !tbaa !4
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  store i32 1, ptr %36, align 4, !tbaa !17
  %315 = load i32, ptr %0, align 4, !tbaa !4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load i32, ptr %293, align 4, !tbaa !4
  br label %320

319:                                              ; preds = %309
  store i32 1, ptr %27, align 8, !tbaa !22
  br label %323

320:                                              ; preds = %311, %317
  %321 = phi i32 [ %318, %317 ], [ %312, %311 ]
  %322 = tail call ptr @strerror(i32 noundef %321) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %322) #12
  br label %871

323:                                              ; preds = %305, %319, %314
  %324 = load ptr, ptr %32, align 8, !tbaa !28
  store ptr %324, ptr %25, align 8, !tbaa !20
  br label %435

325:                                              ; preds = %64
  %326 = load i32, ptr %30, align 8, !tbaa !25
  %327 = shl i32 %326, 1
  store i32 %327, ptr %31, align 8, !tbaa !46
  %328 = load ptr, ptr %32, align 8, !tbaa !28
  store ptr %328, ptr %33, align 8, !tbaa !47
  br label %329

329:                                              ; preds = %402, %325
  %330 = phi i32 [ 0, %325 ], [ %381, %402 ]
  %331 = load i32, ptr %28, align 8, !tbaa !32
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %380

333:                                              ; preds = %329
  %334 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %334, label %413 [
    i32 0, label %335
    i32 -5, label %335
  ]

335:                                              ; preds = %333, %333
  %336 = load i32, ptr %27, align 8, !tbaa !22
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load ptr, ptr %35, align 8, !tbaa !27
  %340 = load i32, ptr %30, align 8, !tbaa !25
  store i32 0, ptr %36, align 4, !tbaa !17
  %341 = tail call ptr @__errno_location() #14
  store i32 0, ptr %341, align 4, !tbaa !4
  br label %342

342:                                              ; preds = %353, %338
  %343 = phi i32 [ 0, %338 ], [ %354, %353 ]
  %344 = sub i32 %340, %343
  %345 = tail call i32 @llvm.umin.i32(i32 %344, i32 1073741824)
  %346 = load i32, ptr %37, align 4, !tbaa !44
  %347 = zext i32 %343 to i64
  %348 = getelementptr inbounds nuw i8, ptr %339, i64 %347
  %349 = zext nneg i32 %345 to i64
  %350 = tail call i64 @read(i32 noundef %346, ptr noundef %348, i64 noundef %349) #12
  %351 = trunc i64 %350 to i32
  %352 = icmp slt i32 %351, 1
  br i1 %352, label %356, label %353

353:                                              ; preds = %342
  %354 = add i32 %343, %351
  %355 = icmp ult i32 %354, %340
  br i1 %355, label %342, label %370, !llvm.loop !45

356:                                              ; preds = %342
  %357 = icmp slt i32 %351, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %356
  %359 = load i32, ptr %341, align 4, !tbaa !4
  %360 = icmp eq i32 %359, 11
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  store i32 1, ptr %36, align 4, !tbaa !17
  %362 = icmp eq i32 %343, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %361
  %364 = load i32, ptr %341, align 4, !tbaa !4
  br label %366

365:                                              ; preds = %356
  store i32 1, ptr %27, align 8, !tbaa !22
  br label %370

366:                                              ; preds = %358, %363
  %367 = phi i32 [ %364, %363 ], [ %359, %358 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #12
  %369 = load i32, ptr %14, align 8, !tbaa !16
  br label %413

370:                                              ; preds = %353, %365, %361
  %371 = phi i32 [ %343, %361 ], [ %343, %365 ], [ %354, %353 ]
  %372 = load i32, ptr %28, align 8, !tbaa !32
  %373 = add i32 %372, %371
  store i32 %373, ptr %28, align 8, !tbaa !32
  %374 = load ptr, ptr %35, align 8, !tbaa !27
  store ptr %374, ptr %34, align 8, !tbaa !33
  %375 = icmp eq i32 %373, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %370, %335
  %377 = load i32, ptr %36, align 4, !tbaa !17
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %413

379:                                              ; preds = %376
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %413

380:                                              ; preds = %370, %329
  %381 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #12
  %382 = load i32, ptr %31, align 8, !tbaa !46
  %383 = icmp ult i32 %382, %327
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  store i32 0, ptr %38, align 4, !tbaa !31
  br label %385

385:                                              ; preds = %384, %380
  switch i32 %381, label %402 [
    i32 -2, label %386
    i32 2, label %386
    i32 -4, label %387
    i32 -3, label %388
  ]

386:                                              ; preds = %385, %385
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %413

387:                                              ; preds = %385
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %406

388:                                              ; preds = %385
  %389 = load i32, ptr %38, align 4, !tbaa !31
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  store i32 0, ptr %28, align 8, !tbaa !32
  store i32 1, ptr %27, align 8, !tbaa !22
  store i32 0, ptr %29, align 8, !tbaa !24
  %392 = sub i32 %327, %382
  store i32 %392, ptr %0, align 8, !tbaa !19
  %393 = load ptr, ptr %33, align 8, !tbaa !47
  %394 = zext i32 %392 to i64
  %395 = sub nsw i64 0, %394
  %396 = getelementptr inbounds i8, ptr %393, i64 %395
  store ptr %396, ptr %25, align 8, !tbaa !20
  br label %423

397:                                              ; preds = %388
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %399 = load ptr, ptr %398, align 8, !tbaa !48
  %400 = icmp eq ptr %399, null
  %401 = select i1 %400, ptr @.str.6, ptr %399
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %401) #12
  br label %406

402:                                              ; preds = %385
  %403 = icmp ne i32 %382, 0
  %404 = icmp ne i32 %381, 1
  %405 = select i1 %403, i1 %404, i1 false
  br i1 %405, label %329, label %413, !llvm.loop !49

406:                                              ; preds = %397, %387
  %407 = load i32, ptr %31, align 8, !tbaa !46
  %408 = sub i32 %327, %407
  store i32 %408, ptr %0, align 8, !tbaa !19
  %409 = load ptr, ptr %33, align 8, !tbaa !47
  %410 = zext i32 %408 to i64
  %411 = sub nsw i64 0, %410
  %412 = getelementptr inbounds i8, ptr %409, i64 %411
  store ptr %412, ptr %25, align 8, !tbaa !20
  br label %871

413:                                              ; preds = %402, %333, %386, %379, %376, %366
  %414 = phi i32 [ %369, %366 ], [ %330, %376 ], [ %330, %379 ], [ %381, %386 ], [ %334, %333 ], [ %381, %402 ]
  %415 = load i32, ptr %31, align 8, !tbaa !46
  %416 = sub i32 %327, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %33, align 8, !tbaa !47
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %25, align 8, !tbaa !20
  switch i32 %414, label %871 [
    i32 1, label %421
    i32 0, label %423
  ]

421:                                              ; preds = %413
  store i32 0, ptr %38, align 4, !tbaa !31
  store i32 0, ptr %29, align 8, !tbaa !24
  br label %423

422:                                              ; preds = %64
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %871

423:                                              ; preds = %421, %413, %391, %286, %280
  %424 = load i32, ptr %0, align 8, !tbaa !19
  br label %425

425:                                              ; preds = %423, %282
  %426 = phi i32 [ %424, %423 ], [ %285, %282 ]
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %425
  %429 = load i32, ptr %27, align 8, !tbaa !22
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %428
  %432 = load i32, ptr %28, align 8, !tbaa !32
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %431, %428
  br label %64, !llvm.loop !50

435:                                              ; preds = %431, %425, %286, %323
  %436 = load i64, ptr %21, align 8, !tbaa !18
  br label %437

437:                                              ; preds = %435, %46
  %438 = phi i64 [ %436, %435 ], [ %56, %46 ]
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %42, !llvm.loop !51

440:                                              ; preds = %437, %60, %20
  %441 = add nsw i32 %2, -1
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %871, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %461 = load i32, ptr %0, align 8, !tbaa !19
  br label %462

462:                                              ; preds = %443, %843
  %463 = phi i32 [ %858, %843 ], [ %461, %443 ]
  %464 = phi i32 [ %863, %843 ], [ %441, %443 ]
  %465 = phi ptr [ %864, %843 ], [ %1, %443 ]
  %466 = icmp eq i32 %463, 0
  br i1 %466, label %467, label %843

467:                                              ; preds = %462, %837
  %468 = load i32, ptr %444, align 8, !tbaa !24
  switch i32 %468, label %825 [
    i32 0, label %469
    i32 1, label %692
    i32 2, label %728
  ]

469:                                              ; preds = %467
  %470 = load i32, ptr %445, align 8, !tbaa !25
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %491

472:                                              ; preds = %469
  %473 = load i32, ptr %457, align 4, !tbaa !26
  %474 = zext i32 %473 to i64
  %475 = tail call noalias ptr @malloc(i64 noundef %474) #13
  store ptr %475, ptr %452, align 8, !tbaa !27
  %476 = load i32, ptr %457, align 4, !tbaa !26
  %477 = shl i32 %476, 1
  %478 = zext i32 %477 to i64
  %479 = tail call noalias ptr @malloc(i64 noundef %478) #13
  store ptr %479, ptr %447, align 8, !tbaa !28
  %480 = icmp eq ptr %475, null
  %481 = icmp eq ptr %479, null
  %482 = or i1 %480, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %472
  tail call void @free(ptr noundef %479) #12
  tail call void @free(ptr noundef %475) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %867

484:                                              ; preds = %472
  %485 = load i32, ptr %457, align 4, !tbaa !26
  store i32 %485, ptr %445, align 8, !tbaa !25
  store i32 0, ptr %450, align 8, !tbaa !23
  store ptr null, ptr %449, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %458, i8 0, i64 24, i1 false)
  %486 = tail call i32 @inflateInit2_(ptr noundef nonnull %449, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr %447, align 8, !tbaa !28
  tail call void @free(ptr noundef %489) #12
  %490 = load ptr, ptr %452, align 8, !tbaa !27
  tail call void @free(ptr noundef %490) #12
  store i32 0, ptr %445, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %867

491:                                              ; preds = %484, %469
  %492 = load i32, ptr %459, align 8, !tbaa !30
  %493 = icmp eq i32 %492, -1
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load i32, ptr %455, align 4, !tbaa !31
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %494, %491
  %498 = tail call i32 @inflateReset(ptr noundef nonnull %449) #12
  store i32 2, ptr %444, align 8, !tbaa !24
  %499 = load i32, ptr %455, align 4, !tbaa !31
  %500 = icmp ne i32 %499, -1
  %501 = zext i1 %500 to i32
  store i32 %501, ptr %455, align 4, !tbaa !31
  store i32 0, ptr %459, align 8, !tbaa !30
  br label %689

502:                                              ; preds = %494
  %503 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %503, label %867 [
    i32 0, label %504
    i32 -5, label %504
  ]

504:                                              ; preds = %502, %502
  %505 = load i32, ptr %451, align 8, !tbaa !22
  %506 = icmp eq i32 %505, 0
  %507 = load i32, ptr %450, align 8, !tbaa !32
  br i1 %506, label %508, label %657

508:                                              ; preds = %504
  %509 = icmp eq i32 %507, 0
  %510 = load ptr, ptr %452, align 8, !tbaa !27
  %511 = ptrtoaddr ptr %510 to i64
  br i1 %509, label %617, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr %449, align 8, !tbaa !33
  %514 = icmp eq ptr %513, %510
  br i1 %514, label %617, label %515

515:                                              ; preds = %512
  %516 = ptrtoaddr ptr %513 to i64
  %517 = zext i32 %507 to i64
  %518 = icmp ult i32 %507, 4
  %519 = sub i64 %511, %516
  %520 = icmp ult i64 %519, 32
  %521 = select i1 %518, i1 true, i1 %520
  br i1 %521, label %561, label %522

522:                                              ; preds = %515
  %523 = icmp ult i32 %507, 32
  br i1 %523, label %545, label %524

524:                                              ; preds = %522
  %525 = and i64 %517, 28
  %526 = and i64 %517, 4294967264
  %527 = getelementptr i8, ptr %510, i64 %526
  %528 = getelementptr i8, ptr %513, i64 %526
  %529 = trunc nuw i64 %526 to i32
  %530 = sub i32 %507, %529
  br label %531

531:                                              ; preds = %531, %524
  %532 = phi i64 [ 0, %524 ], [ %539, %531 ]
  %533 = getelementptr i8, ptr %510, i64 %532
  %534 = getelementptr i8, ptr %513, i64 %532
  %535 = getelementptr i8, ptr %534, i64 16
  %536 = load <16 x i8>, ptr %534, align 1, !tbaa !34
  %537 = load <16 x i8>, ptr %535, align 1, !tbaa !34
  %538 = getelementptr i8, ptr %533, i64 16
  store <16 x i8> %536, ptr %533, align 1, !tbaa !34
  store <16 x i8> %537, ptr %538, align 1, !tbaa !34
  %539 = add nuw i64 %532, 32
  %540 = icmp eq i64 %539, %526
  br i1 %540, label %541, label %531, !llvm.loop !97

541:                                              ; preds = %531
  %542 = icmp eq i64 %526, %517
  br i1 %542, label %614, label %543

543:                                              ; preds = %541
  %544 = icmp eq i64 %525, 0
  br i1 %544, label %561, label %545, !prof !39

545:                                              ; preds = %522, %543
  %546 = phi i64 [ %526, %543 ], [ 0, %522 ]
  %547 = and i64 %517, 4294967292
  %548 = getelementptr i8, ptr %510, i64 %547
  %549 = getelementptr i8, ptr %513, i64 %547
  %550 = trunc nuw i64 %547 to i32
  %551 = sub i32 %507, %550
  br label %552

552:                                              ; preds = %552, %545
  %553 = phi i64 [ %546, %545 ], [ %557, %552 ]
  %554 = getelementptr i8, ptr %510, i64 %553
  %555 = getelementptr i8, ptr %513, i64 %553
  %556 = load <4 x i8>, ptr %555, align 1, !tbaa !34
  store <4 x i8> %556, ptr %554, align 1, !tbaa !34
  %557 = add nuw i64 %553, 4
  %558 = icmp eq i64 %557, %547
  br i1 %558, label %559, label %552, !llvm.loop !98

559:                                              ; preds = %552
  %560 = icmp eq i64 %547, %517
  br i1 %560, label %614, label %561

561:                                              ; preds = %515, %543, %559
  %562 = phi ptr [ %510, %515 ], [ %527, %543 ], [ %548, %559 ]
  %563 = phi ptr [ %513, %515 ], [ %528, %543 ], [ %549, %559 ]
  %564 = phi i32 [ %507, %515 ], [ %530, %543 ], [ %551, %559 ]
  %565 = add i32 %564, -1
  %566 = and i32 %564, 7
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %579, label %568

568:                                              ; preds = %561, %568
  %569 = phi ptr [ %575, %568 ], [ %562, %561 ]
  %570 = phi ptr [ %573, %568 ], [ %563, %561 ]
  %571 = phi i32 [ %576, %568 ], [ %564, %561 ]
  %572 = phi i32 [ %577, %568 ], [ 0, %561 ]
  %573 = getelementptr inbounds nuw i8, ptr %570, i64 1
  %574 = load i8, ptr %570, align 1, !tbaa !34
  %575 = getelementptr inbounds nuw i8, ptr %569, i64 1
  store i8 %574, ptr %569, align 1, !tbaa !34
  %576 = add i32 %571, -1
  %577 = add i32 %572, 1
  %578 = icmp eq i32 %577, %566
  br i1 %578, label %579, label %568, !llvm.loop !99

579:                                              ; preds = %568, %561
  %580 = phi ptr [ %562, %561 ], [ %575, %568 ]
  %581 = phi ptr [ %563, %561 ], [ %573, %568 ]
  %582 = phi i32 [ %564, %561 ], [ %576, %568 ]
  %583 = icmp ult i32 %565, 7
  br i1 %583, label %614, label %584

584:                                              ; preds = %579, %584
  %585 = phi ptr [ %611, %584 ], [ %580, %579 ]
  %586 = phi ptr [ %609, %584 ], [ %581, %579 ]
  %587 = phi i32 [ %612, %584 ], [ %582, %579 ]
  %588 = getelementptr inbounds nuw i8, ptr %586, i64 1
  %589 = load i8, ptr %586, align 1, !tbaa !34
  %590 = getelementptr inbounds nuw i8, ptr %585, i64 1
  store i8 %589, ptr %585, align 1, !tbaa !34
  %591 = getelementptr inbounds nuw i8, ptr %586, i64 2
  %592 = load i8, ptr %588, align 1, !tbaa !34
  %593 = getelementptr inbounds nuw i8, ptr %585, i64 2
  store i8 %592, ptr %590, align 1, !tbaa !34
  %594 = getelementptr inbounds nuw i8, ptr %586, i64 3
  %595 = load i8, ptr %591, align 1, !tbaa !34
  %596 = getelementptr inbounds nuw i8, ptr %585, i64 3
  store i8 %595, ptr %593, align 1, !tbaa !34
  %597 = getelementptr inbounds nuw i8, ptr %586, i64 4
  %598 = load i8, ptr %594, align 1, !tbaa !34
  %599 = getelementptr inbounds nuw i8, ptr %585, i64 4
  store i8 %598, ptr %596, align 1, !tbaa !34
  %600 = getelementptr inbounds nuw i8, ptr %586, i64 5
  %601 = load i8, ptr %597, align 1, !tbaa !34
  %602 = getelementptr inbounds nuw i8, ptr %585, i64 5
  store i8 %601, ptr %599, align 1, !tbaa !34
  %603 = getelementptr inbounds nuw i8, ptr %586, i64 6
  %604 = load i8, ptr %600, align 1, !tbaa !34
  %605 = getelementptr inbounds nuw i8, ptr %585, i64 6
  store i8 %604, ptr %602, align 1, !tbaa !34
  %606 = getelementptr inbounds nuw i8, ptr %586, i64 7
  %607 = load i8, ptr %603, align 1, !tbaa !34
  %608 = getelementptr inbounds nuw i8, ptr %585, i64 7
  store i8 %607, ptr %605, align 1, !tbaa !34
  %609 = getelementptr inbounds nuw i8, ptr %586, i64 8
  %610 = load i8, ptr %606, align 1, !tbaa !34
  %611 = getelementptr inbounds nuw i8, ptr %585, i64 8
  store i8 %610, ptr %608, align 1, !tbaa !34
  %612 = add i32 %587, -8
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %584, !llvm.loop !100

614:                                              ; preds = %579, %584, %559, %541
  %615 = load i32, ptr %450, align 8, !tbaa !32
  %616 = load ptr, ptr %452, align 8, !tbaa !27
  br label %617

617:                                              ; preds = %614, %512, %508
  %618 = phi ptr [ %616, %614 ], [ %510, %512 ], [ %510, %508 ]
  %619 = phi i32 [ %615, %614 ], [ %507, %512 ], [ 0, %508 ]
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds nuw i8, ptr %618, i64 %620
  %622 = load i32, ptr %445, align 8, !tbaa !25
  %623 = sub i32 %622, %619
  store i32 0, ptr %453, align 4, !tbaa !17
  %624 = tail call ptr @__errno_location() #14
  store i32 0, ptr %624, align 4, !tbaa !4
  br label %625

625:                                              ; preds = %636, %617
  %626 = phi i32 [ 0, %617 ], [ %637, %636 ]
  %627 = sub i32 %623, %626
  %628 = tail call i32 @llvm.umin.i32(i32 %627, i32 1073741824)
  %629 = load i32, ptr %454, align 4, !tbaa !44
  %630 = zext i32 %626 to i64
  %631 = getelementptr inbounds nuw i8, ptr %621, i64 %630
  %632 = zext nneg i32 %628 to i64
  %633 = tail call i64 @read(i32 noundef %629, ptr noundef %631, i64 noundef %632) #12
  %634 = trunc i64 %633 to i32
  %635 = icmp slt i32 %634, 1
  br i1 %635, label %639, label %636

636:                                              ; preds = %625
  %637 = add i32 %626, %634
  %638 = icmp ult i32 %637, %623
  br i1 %638, label %625, label %652, !llvm.loop !45

639:                                              ; preds = %625
  %640 = icmp slt i32 %634, 0
  br i1 %640, label %641, label %648

641:                                              ; preds = %639
  %642 = load i32, ptr %624, align 4, !tbaa !4
  %643 = icmp eq i32 %642, 11
  br i1 %643, label %644, label %649

644:                                              ; preds = %641
  store i32 1, ptr %453, align 4, !tbaa !17
  %645 = icmp eq i32 %626, 0
  br i1 %645, label %646, label %652

646:                                              ; preds = %644
  %647 = load i32, ptr %624, align 4, !tbaa !4
  br label %649

648:                                              ; preds = %639
  store i32 1, ptr %451, align 8, !tbaa !22
  br label %652

649:                                              ; preds = %641, %646
  %650 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %651 = tail call ptr @strerror(i32 noundef %650) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %651) #12
  br label %867

652:                                              ; preds = %636, %648, %644
  %653 = phi i32 [ %626, %644 ], [ %626, %648 ], [ %637, %636 ]
  %654 = load i32, ptr %450, align 8, !tbaa !32
  %655 = add i32 %654, %653
  store i32 %655, ptr %450, align 8, !tbaa !32
  %656 = load ptr, ptr %452, align 8, !tbaa !27
  store ptr %656, ptr %449, align 8, !tbaa !33
  br label %657

657:                                              ; preds = %652, %504
  %658 = phi i32 [ %655, %652 ], [ %507, %504 ]
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %689, label %660

660:                                              ; preds = %657
  %661 = load i32, ptr %453, align 4, !tbaa !17
  %662 = icmp ne i32 %661, 0
  %663 = icmp ult i32 %658, 4
  %664 = and i1 %663, %662
  br i1 %664, label %689, label %665

665:                                              ; preds = %660
  %666 = icmp ugt i32 %658, 3
  %667 = load ptr, ptr %449, align 8, !tbaa !33
  br i1 %666, label %668, label %685

668:                                              ; preds = %665
  %669 = load i8, ptr %667, align 1, !tbaa !34
  %670 = icmp eq i8 %669, 31
  br i1 %670, label %671, label %685

671:                                              ; preds = %668
  %672 = getelementptr inbounds nuw i8, ptr %667, i64 1
  %673 = load i8, ptr %672, align 1, !tbaa !34
  %674 = icmp eq i8 %673, -117
  br i1 %674, label %675, label %685

675:                                              ; preds = %671
  %676 = getelementptr inbounds nuw i8, ptr %667, i64 2
  %677 = load i8, ptr %676, align 1, !tbaa !34
  %678 = icmp eq i8 %677, 8
  br i1 %678, label %679, label %685

679:                                              ; preds = %675
  %680 = getelementptr inbounds nuw i8, ptr %667, i64 3
  %681 = load i8, ptr %680, align 1, !tbaa !34
  %682 = icmp ult i8 %681, 32
  br i1 %682, label %683, label %685

683:                                              ; preds = %679
  %684 = tail call i32 @inflateReset(ptr noundef nonnull %449) #12
  store i32 2, ptr %444, align 8, !tbaa !24
  store i32 1, ptr %455, align 4, !tbaa !31
  store i32 0, ptr %459, align 8, !tbaa !30
  br label %826

685:                                              ; preds = %679, %675, %671, %668, %665
  %686 = load ptr, ptr %447, align 8, !tbaa !28
  store ptr %686, ptr %456, align 8, !tbaa !20
  %687 = zext i32 %658 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %686, ptr align 1 %667, i64 %687, i1 false)
  %688 = load i32, ptr %450, align 8, !tbaa !32
  store i32 %688, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %450, align 8, !tbaa !32
  store i32 1, ptr %444, align 8, !tbaa !24
  br label %828

689:                                              ; preds = %660, %657, %497
  %690 = load i32, ptr %444, align 8, !tbaa !24
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %838, label %826

692:                                              ; preds = %467
  %693 = load ptr, ptr %447, align 8, !tbaa !28
  %694 = load i32, ptr %445, align 8, !tbaa !25
  %695 = shl i32 %694, 1
  store i32 0, ptr %453, align 4, !tbaa !17
  %696 = tail call ptr @__errno_location() #14
  store i32 0, ptr %696, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %697

697:                                              ; preds = %708, %692
  %698 = phi i32 [ %710, %708 ], [ 0, %692 ]
  %699 = sub i32 %695, %698
  %700 = tail call i32 @llvm.umin.i32(i32 %699, i32 1073741824)
  %701 = load i32, ptr %454, align 4, !tbaa !44
  %702 = zext i32 %698 to i64
  %703 = getelementptr inbounds nuw i8, ptr %693, i64 %702
  %704 = zext nneg i32 %700 to i64
  %705 = tail call i64 @read(i32 noundef %701, ptr noundef %703, i64 noundef %704) #12
  %706 = trunc i64 %705 to i32
  %707 = icmp slt i32 %706, 1
  br i1 %707, label %712, label %708

708:                                              ; preds = %697
  %709 = load i32, ptr %0, align 4, !tbaa !4
  %710 = add i32 %709, %706
  store i32 %710, ptr %0, align 4, !tbaa !4
  %711 = icmp ult i32 %710, %695
  br i1 %711, label %697, label %726, !llvm.loop !45

712:                                              ; preds = %697
  %713 = icmp slt i32 %706, 0
  br i1 %713, label %714, label %722

714:                                              ; preds = %712
  %715 = load i32, ptr %696, align 4, !tbaa !4
  %716 = icmp eq i32 %715, 11
  br i1 %716, label %717, label %723

717:                                              ; preds = %714
  store i32 1, ptr %453, align 4, !tbaa !17
  %718 = load i32, ptr %0, align 4, !tbaa !4
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %726

720:                                              ; preds = %717
  %721 = load i32, ptr %696, align 4, !tbaa !4
  br label %723

722:                                              ; preds = %712
  store i32 1, ptr %451, align 8, !tbaa !22
  br label %726

723:                                              ; preds = %714, %720
  %724 = phi i32 [ %721, %720 ], [ %715, %714 ]
  %725 = tail call ptr @strerror(i32 noundef %724) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %725) #12
  br label %867

726:                                              ; preds = %708, %722, %717
  %727 = load ptr, ptr %447, align 8, !tbaa !28
  store ptr %727, ptr %456, align 8, !tbaa !20
  br label %838

728:                                              ; preds = %467
  %729 = load i32, ptr %445, align 8, !tbaa !25
  %730 = shl i32 %729, 1
  store i32 %730, ptr %446, align 8, !tbaa !46
  %731 = load ptr, ptr %447, align 8, !tbaa !28
  store ptr %731, ptr %448, align 8, !tbaa !47
  br label %732

732:                                              ; preds = %805, %728
  %733 = phi i32 [ 0, %728 ], [ %784, %805 ]
  %734 = load i32, ptr %450, align 8, !tbaa !32
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %783

736:                                              ; preds = %732
  %737 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %737, label %816 [
    i32 0, label %738
    i32 -5, label %738
  ]

738:                                              ; preds = %736, %736
  %739 = load i32, ptr %451, align 8, !tbaa !22
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %779

741:                                              ; preds = %738
  %742 = load ptr, ptr %452, align 8, !tbaa !27
  %743 = load i32, ptr %445, align 8, !tbaa !25
  store i32 0, ptr %453, align 4, !tbaa !17
  %744 = tail call ptr @__errno_location() #14
  store i32 0, ptr %744, align 4, !tbaa !4
  br label %745

745:                                              ; preds = %756, %741
  %746 = phi i32 [ 0, %741 ], [ %757, %756 ]
  %747 = sub i32 %743, %746
  %748 = tail call i32 @llvm.umin.i32(i32 %747, i32 1073741824)
  %749 = load i32, ptr %454, align 4, !tbaa !44
  %750 = zext i32 %746 to i64
  %751 = getelementptr inbounds nuw i8, ptr %742, i64 %750
  %752 = zext nneg i32 %748 to i64
  %753 = tail call i64 @read(i32 noundef %749, ptr noundef %751, i64 noundef %752) #12
  %754 = trunc i64 %753 to i32
  %755 = icmp slt i32 %754, 1
  br i1 %755, label %759, label %756

756:                                              ; preds = %745
  %757 = add i32 %746, %754
  %758 = icmp ult i32 %757, %743
  br i1 %758, label %745, label %773, !llvm.loop !45

759:                                              ; preds = %745
  %760 = icmp slt i32 %754, 0
  br i1 %760, label %761, label %768

761:                                              ; preds = %759
  %762 = load i32, ptr %744, align 4, !tbaa !4
  %763 = icmp eq i32 %762, 11
  br i1 %763, label %764, label %769

764:                                              ; preds = %761
  store i32 1, ptr %453, align 4, !tbaa !17
  %765 = icmp eq i32 %746, 0
  br i1 %765, label %766, label %773

766:                                              ; preds = %764
  %767 = load i32, ptr %744, align 4, !tbaa !4
  br label %769

768:                                              ; preds = %759
  store i32 1, ptr %451, align 8, !tbaa !22
  br label %773

769:                                              ; preds = %761, %766
  %770 = phi i32 [ %767, %766 ], [ %762, %761 ]
  %771 = tail call ptr @strerror(i32 noundef %770) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %771) #12
  %772 = load i32, ptr %14, align 8, !tbaa !16
  br label %816

773:                                              ; preds = %756, %768, %764
  %774 = phi i32 [ %746, %764 ], [ %746, %768 ], [ %757, %756 ]
  %775 = load i32, ptr %450, align 8, !tbaa !32
  %776 = add i32 %775, %774
  store i32 %776, ptr %450, align 8, !tbaa !32
  %777 = load ptr, ptr %452, align 8, !tbaa !27
  store ptr %777, ptr %449, align 8, !tbaa !33
  %778 = icmp eq i32 %776, 0
  br i1 %778, label %779, label %783

779:                                              ; preds = %773, %738
  %780 = load i32, ptr %453, align 4, !tbaa !17
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %816

782:                                              ; preds = %779
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #12
  br label %816

783:                                              ; preds = %773, %732
  %784 = tail call i32 @inflate(ptr noundef nonnull %449, i32 noundef 0) #12
  %785 = load i32, ptr %446, align 8, !tbaa !46
  %786 = icmp ult i32 %785, %730
  br i1 %786, label %787, label %788

787:                                              ; preds = %783
  store i32 0, ptr %455, align 4, !tbaa !31
  br label %788

788:                                              ; preds = %787, %783
  switch i32 %784, label %805 [
    i32 -2, label %789
    i32 2, label %789
    i32 -4, label %790
    i32 -3, label %791
  ]

789:                                              ; preds = %788, %788
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %816

790:                                              ; preds = %788
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %809

791:                                              ; preds = %788
  %792 = load i32, ptr %455, align 4, !tbaa !31
  %793 = icmp eq i32 %792, 1
  br i1 %793, label %794, label %800

794:                                              ; preds = %791
  store i32 0, ptr %450, align 8, !tbaa !32
  store i32 1, ptr %451, align 8, !tbaa !22
  store i32 0, ptr %444, align 8, !tbaa !24
  %795 = sub i32 %730, %785
  store i32 %795, ptr %0, align 8, !tbaa !19
  %796 = load ptr, ptr %448, align 8, !tbaa !47
  %797 = zext i32 %795 to i64
  %798 = sub nsw i64 0, %797
  %799 = getelementptr inbounds i8, ptr %796, i64 %798
  store ptr %799, ptr %456, align 8, !tbaa !20
  br label %826

800:                                              ; preds = %791
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %802 = load ptr, ptr %801, align 8, !tbaa !48
  %803 = icmp eq ptr %802, null
  %804 = select i1 %803, ptr @.str.6, ptr %802
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %804) #12
  br label %809

805:                                              ; preds = %788
  %806 = icmp ne i32 %785, 0
  %807 = icmp ne i32 %784, 1
  %808 = select i1 %806, i1 %807, i1 false
  br i1 %808, label %732, label %816, !llvm.loop !49

809:                                              ; preds = %800, %790
  %810 = load i32, ptr %446, align 8, !tbaa !46
  %811 = sub i32 %730, %810
  store i32 %811, ptr %0, align 8, !tbaa !19
  %812 = load ptr, ptr %448, align 8, !tbaa !47
  %813 = zext i32 %811 to i64
  %814 = sub nsw i64 0, %813
  %815 = getelementptr inbounds i8, ptr %812, i64 %814
  store ptr %815, ptr %456, align 8, !tbaa !20
  br label %867

816:                                              ; preds = %805, %736, %789, %782, %779, %769
  %817 = phi i32 [ %772, %769 ], [ %733, %779 ], [ %733, %782 ], [ %784, %789 ], [ %784, %805 ], [ %737, %736 ]
  %818 = load i32, ptr %446, align 8, !tbaa !46
  %819 = sub i32 %730, %818
  store i32 %819, ptr %0, align 8, !tbaa !19
  %820 = load ptr, ptr %448, align 8, !tbaa !47
  %821 = zext i32 %819 to i64
  %822 = sub nsw i64 0, %821
  %823 = getelementptr inbounds i8, ptr %820, i64 %822
  store ptr %823, ptr %456, align 8, !tbaa !20
  switch i32 %817, label %867 [
    i32 1, label %824
    i32 0, label %826
  ]

824:                                              ; preds = %816
  store i32 0, ptr %455, align 4, !tbaa !31
  store i32 0, ptr %444, align 8, !tbaa !24
  br label %826

825:                                              ; preds = %467
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #12
  br label %867

826:                                              ; preds = %824, %816, %794, %689, %683
  %827 = load i32, ptr %0, align 8, !tbaa !19
  br label %828

828:                                              ; preds = %826, %685
  %829 = phi i32 [ %827, %826 ], [ %688, %685 ]
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %838

831:                                              ; preds = %828
  %832 = load i32, ptr %451, align 8, !tbaa !22
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %837, label %834

834:                                              ; preds = %831
  %835 = load i32, ptr %450, align 8, !tbaa !32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %838, label %837

837:                                              ; preds = %834, %831
  br label %467, !llvm.loop !50

838:                                              ; preds = %834, %828, %689, %726
  %839 = load i32, ptr %0, align 8, !tbaa !19
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %843

841:                                              ; preds = %838
  %842 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %842, align 4, !tbaa !59
  br label %867

843:                                              ; preds = %462, %838
  %844 = phi i32 [ %839, %838 ], [ %463, %462 ]
  %845 = tail call i32 @llvm.umin.i32(i32 %844, i32 %464)
  %846 = load ptr, ptr %456, align 8, !tbaa !20
  %847 = zext i32 %845 to i64
  %848 = tail call ptr @memchr(ptr noundef %846, i32 noundef 10, i64 noundef %847) #15
  %849 = icmp eq ptr %848, null
  %850 = ptrtoint ptr %848 to i64
  %851 = ptrtoint ptr %846 to i64
  %852 = sub i64 %850, %851
  %853 = trunc i64 %852 to i32
  %854 = add i32 %853, 1
  %855 = select i1 %849, i32 %845, i32 %854
  %856 = zext i32 %855 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %846, i64 %856, i1 false)
  %857 = load i32, ptr %0, align 8, !tbaa !19
  %858 = sub i32 %857, %855
  store i32 %858, ptr %0, align 8, !tbaa !19
  %859 = load ptr, ptr %456, align 8, !tbaa !20
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 %856
  store ptr %860, ptr %456, align 8, !tbaa !20
  %861 = load i64, ptr %460, align 8, !tbaa !21
  %862 = add nsw i64 %861, %856
  store i64 %862, ptr %460, align 8, !tbaa !21
  %863 = sub i32 %464, %855
  %864 = getelementptr inbounds nuw i8, ptr %465, i64 %856
  %865 = icmp ne i32 %863, 0
  %866 = and i1 %849, %865
  br i1 %866, label %462, label %867, !llvm.loop !101

867:                                              ; preds = %843, %816, %502, %809, %488, %483, %649, %723, %825, %841
  %868 = phi ptr [ %465, %816 ], [ %465, %841 ], [ %465, %825 ], [ %465, %723 ], [ %465, %649 ], [ %465, %483 ], [ %465, %488 ], [ %465, %809 ], [ %465, %502 ], [ %864, %843 ]
  %869 = icmp eq ptr %868, %1
  br i1 %869, label %871, label %870

870:                                              ; preds = %867
  store i8 0, ptr %868, align 1, !tbaa !34
  br label %871

871:                                              ; preds = %99, %413, %440, %85, %80, %246, %320, %422, %406, %867, %16, %9, %3, %870
  %872 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %85 ], [ %1, %870 ], [ null, %867 ], [ null, %406 ], [ null, %440 ], [ null, %422 ], [ null, %320 ], [ null, %246 ], [ null, %80 ], [ null, %413 ], [ null, %99 ]
  ret ptr %872
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %258, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %253

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %253

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %253

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i32, ptr %16, align 8, !tbaa !25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !26
  %22 = zext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #13
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %23, ptr %24, align 8, !tbaa !27
  %25 = load i32, ptr %20, align 4, !tbaa !26
  %26 = shl i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #13
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %29, align 8, !tbaa !28
  %30 = icmp eq ptr %23, null
  %31 = icmp eq ptr %28, null
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  tail call void @free(ptr noundef %28) #12
  tail call void @free(ptr noundef %23) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %253

34:                                               ; preds = %19
  %35 = load i32, ptr %20, align 4, !tbaa !26
  store i32 %35, ptr %16, align 8, !tbaa !25
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %37, align 8, !tbaa !23
  store ptr null, ptr %15, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %29, align 8, !tbaa !28
  tail call void @free(ptr noundef %41) #12
  %42 = load ptr, ptr %24, align 8, !tbaa !27
  tail call void @free(ptr noundef %42) #12
  store i32 0, ptr %16, align 8, !tbaa !25
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #12
  br label %253

43:                                               ; preds = %34, %14
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %49 = load i32, ptr %48, align 4, !tbaa !31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %43
  %52 = tail call i32 @inflateReset(ptr noundef nonnull %15) #12
  store i32 2, ptr %8, align 8, !tbaa !24
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %54 = load i32, ptr %53, align 4, !tbaa !31
  %55 = icmp ne i32 %54, -1
  %56 = zext i1 %55 to i32
  store i32 %56, ptr %53, align 4, !tbaa !31
  store i32 0, ptr %44, align 8, !tbaa !30
  br label %253

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %253 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !32
  br i1 %63, label %66, label %218

66:                                               ; preds = %60
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %175, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  %71 = load ptr, ptr %15, align 8, !tbaa !33
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %175, label %73

73:                                               ; preds = %68
  %74 = ptrtoaddr ptr %71 to i64
  %75 = ptrtoaddr ptr %70 to i64
  %76 = zext i32 %65 to i64
  %77 = icmp ult i32 %65, 4
  %78 = sub i64 %75, %74
  %79 = icmp ult i64 %78, 32
  %80 = or i1 %77, %79
  br i1 %80, label %120, label %81

81:                                               ; preds = %73
  %82 = icmp ult i32 %65, 32
  br i1 %82, label %104, label %83

83:                                               ; preds = %81
  %84 = and i64 %76, 28
  %85 = and i64 %76, 4294967264
  %86 = getelementptr i8, ptr %70, i64 %85
  %87 = getelementptr i8, ptr %71, i64 %85
  %88 = trunc nuw i64 %85 to i32
  %89 = sub i32 %65, %88
  br label %90

90:                                               ; preds = %90, %83
  %91 = phi i64 [ 0, %83 ], [ %98, %90 ]
  %92 = getelementptr i8, ptr %70, i64 %91
  %93 = getelementptr i8, ptr %71, i64 %91
  %94 = getelementptr i8, ptr %93, i64 16
  %95 = load <16 x i8>, ptr %93, align 1, !tbaa !34
  %96 = load <16 x i8>, ptr %94, align 1, !tbaa !34
  %97 = getelementptr i8, ptr %92, i64 16
  store <16 x i8> %95, ptr %92, align 1, !tbaa !34
  store <16 x i8> %96, ptr %97, align 1, !tbaa !34
  %98 = add nuw i64 %91, 32
  %99 = icmp eq i64 %98, %85
  br i1 %99, label %100, label %90, !llvm.loop !102

100:                                              ; preds = %90
  %101 = icmp eq i64 %85, %76
  br i1 %101, label %173, label %102

102:                                              ; preds = %100
  %103 = icmp eq i64 %84, 0
  br i1 %103, label %120, label %104, !prof !39

104:                                              ; preds = %81, %102
  %105 = phi i64 [ %85, %102 ], [ 0, %81 ]
  %106 = and i64 %76, 4294967292
  %107 = getelementptr i8, ptr %70, i64 %106
  %108 = getelementptr i8, ptr %71, i64 %106
  %109 = trunc nuw i64 %106 to i32
  %110 = sub i32 %65, %109
  br label %111

111:                                              ; preds = %111, %104
  %112 = phi i64 [ %105, %104 ], [ %116, %111 ]
  %113 = getelementptr i8, ptr %70, i64 %112
  %114 = getelementptr i8, ptr %71, i64 %112
  %115 = load <4 x i8>, ptr %114, align 1, !tbaa !34
  store <4 x i8> %115, ptr %113, align 1, !tbaa !34
  %116 = add nuw i64 %112, 4
  %117 = icmp eq i64 %116, %106
  br i1 %117, label %118, label %111, !llvm.loop !103

118:                                              ; preds = %111
  %119 = icmp eq i64 %106, %76
  br i1 %119, label %173, label %120

120:                                              ; preds = %73, %102, %118
  %121 = phi ptr [ %70, %73 ], [ %86, %102 ], [ %107, %118 ]
  %122 = phi ptr [ %71, %73 ], [ %87, %102 ], [ %108, %118 ]
  %123 = phi i32 [ %65, %73 ], [ %89, %102 ], [ %110, %118 ]
  %124 = add i32 %123, -1
  %125 = and i32 %123, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %120, %127
  %128 = phi ptr [ %134, %127 ], [ %121, %120 ]
  %129 = phi ptr [ %132, %127 ], [ %122, %120 ]
  %130 = phi i32 [ %135, %127 ], [ %123, %120 ]
  %131 = phi i32 [ %136, %127 ], [ 0, %120 ]
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %133 = load i8, ptr %129, align 1, !tbaa !34
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1
  store i8 %133, ptr %128, align 1, !tbaa !34
  %135 = add i32 %130, -1
  %136 = add i32 %131, 1
  %137 = icmp eq i32 %136, %125
  br i1 %137, label %138, label %127, !llvm.loop !104

138:                                              ; preds = %127, %120
  %139 = phi ptr [ %121, %120 ], [ %134, %127 ]
  %140 = phi ptr [ %122, %120 ], [ %132, %127 ]
  %141 = phi i32 [ %123, %120 ], [ %135, %127 ]
  %142 = icmp ult i32 %124, 7
  br i1 %142, label %173, label %143

143:                                              ; preds = %138, %143
  %144 = phi ptr [ %170, %143 ], [ %139, %138 ]
  %145 = phi ptr [ %168, %143 ], [ %140, %138 ]
  %146 = phi i32 [ %171, %143 ], [ %141, %138 ]
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 1
  %148 = load i8, ptr %145, align 1, !tbaa !34
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 1
  store i8 %148, ptr %144, align 1, !tbaa !34
  %150 = getelementptr inbounds nuw i8, ptr %145, i64 2
  %151 = load i8, ptr %147, align 1, !tbaa !34
  %152 = getelementptr inbounds nuw i8, ptr %144, i64 2
  store i8 %151, ptr %149, align 1, !tbaa !34
  %153 = getelementptr inbounds nuw i8, ptr %145, i64 3
  %154 = load i8, ptr %150, align 1, !tbaa !34
  %155 = getelementptr inbounds nuw i8, ptr %144, i64 3
  store i8 %154, ptr %152, align 1, !tbaa !34
  %156 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %157 = load i8, ptr %153, align 1, !tbaa !34
  %158 = getelementptr inbounds nuw i8, ptr %144, i64 4
  store i8 %157, ptr %155, align 1, !tbaa !34
  %159 = getelementptr inbounds nuw i8, ptr %145, i64 5
  %160 = load i8, ptr %156, align 1, !tbaa !34
  %161 = getelementptr inbounds nuw i8, ptr %144, i64 5
  store i8 %160, ptr %158, align 1, !tbaa !34
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 6
  %163 = load i8, ptr %159, align 1, !tbaa !34
  %164 = getelementptr inbounds nuw i8, ptr %144, i64 6
  store i8 %163, ptr %161, align 1, !tbaa !34
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 7
  %166 = load i8, ptr %162, align 1, !tbaa !34
  %167 = getelementptr inbounds nuw i8, ptr %144, i64 7
  store i8 %166, ptr %164, align 1, !tbaa !34
  %168 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %169 = load i8, ptr %165, align 1, !tbaa !34
  %170 = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i8 %169, ptr %167, align 1, !tbaa !34
  %171 = add i32 %146, -8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %143, !llvm.loop !105

173:                                              ; preds = %138, %143, %118, %100
  %174 = load i32, ptr %64, align 8, !tbaa !32
  br label %175

175:                                              ; preds = %173, %68, %66
  %176 = phi i32 [ %174, %173 ], [ %65, %68 ], [ 0, %66 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %178 = load ptr, ptr %177, align 8, !tbaa !27
  %179 = zext i32 %176 to i64
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 %179
  %181 = load i32, ptr %16, align 8, !tbaa !25
  %182 = sub i32 %181, %176
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %183, align 4, !tbaa !17
  %184 = tail call ptr @__errno_location() #14
  store i32 0, ptr %184, align 4, !tbaa !4
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %186

186:                                              ; preds = %197, %175
  %187 = phi i32 [ 0, %175 ], [ %198, %197 ]
  %188 = sub i32 %182, %187
  %189 = tail call i32 @llvm.umin.i32(i32 %188, i32 1073741824)
  %190 = load i32, ptr %185, align 4, !tbaa !44
  %191 = zext i32 %187 to i64
  %192 = getelementptr inbounds nuw i8, ptr %180, i64 %191
  %193 = zext nneg i32 %189 to i64
  %194 = tail call i64 @read(i32 noundef %190, ptr noundef %192, i64 noundef %193) #12
  %195 = trunc i64 %194 to i32
  %196 = icmp slt i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %186
  %198 = add i32 %187, %195
  %199 = icmp ult i32 %198, %182
  br i1 %199, label %186, label %213, !llvm.loop !45

200:                                              ; preds = %186
  %201 = icmp slt i32 %195, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %200
  %203 = load i32, ptr %184, align 4, !tbaa !4
  %204 = icmp eq i32 %203, 11
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  store i32 1, ptr %183, align 4, !tbaa !17
  %206 = icmp eq i32 %187, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  %208 = load i32, ptr %184, align 4, !tbaa !4
  br label %210

209:                                              ; preds = %200
  store i32 1, ptr %61, align 8, !tbaa !22
  br label %213

210:                                              ; preds = %207, %202
  %211 = phi i32 [ %208, %207 ], [ %203, %202 ]
  %212 = tail call ptr @strerror(i32 noundef %211) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %212) #12
  br label %253

213:                                              ; preds = %197, %209, %205
  %214 = phi i32 [ %187, %205 ], [ %187, %209 ], [ %198, %197 ]
  %215 = load i32, ptr %64, align 8, !tbaa !32
  %216 = add i32 %215, %214
  store i32 %216, ptr %64, align 8, !tbaa !32
  %217 = load ptr, ptr %177, align 8, !tbaa !27
  store ptr %217, ptr %15, align 8, !tbaa !33
  br label %218

218:                                              ; preds = %213, %60
  %219 = phi i32 [ %216, %213 ], [ %65, %60 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %253, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %223 = load i32, ptr %222, align 4, !tbaa !17
  %224 = icmp ne i32 %223, 0
  %225 = icmp ult i32 %219, 4
  %226 = and i1 %225, %224
  br i1 %226, label %253, label %227

227:                                              ; preds = %221
  %228 = icmp ugt i32 %219, 3
  %229 = load ptr, ptr %15, align 8, !tbaa !33
  br i1 %228, label %230, label %247

230:                                              ; preds = %227
  %231 = load i8, ptr %229, align 1, !tbaa !34
  %232 = icmp eq i8 %231, 31
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !34
  %236 = icmp eq i8 %235, -117
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw i8, ptr %229, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !34
  %240 = icmp eq i8 %239, 8
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = getelementptr inbounds nuw i8, ptr %229, i64 3
  %243 = load i8, ptr %242, align 1, !tbaa !34
  %244 = icmp ult i8 %243, 32
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = tail call i32 @inflateReset(ptr noundef nonnull %15) #12
  store i32 2, ptr %8, align 8, !tbaa !24
  store i32 1, ptr %48, align 4, !tbaa !31
  store i32 0, ptr %44, align 8, !tbaa !30
  br label %253

247:                                              ; preds = %241, %237, %233, %230, %227
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %249 = load ptr, ptr %248, align 8, !tbaa !28
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %249, ptr %250, align 8, !tbaa !20
  %251 = zext i32 %219 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %249, ptr align 1 %229, i64 %251, i1 false)
  %252 = load i32, ptr %64, align 8, !tbaa !32
  store i32 %252, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !32
  store i32 1, ptr %8, align 8, !tbaa !24
  br label %253

253:                                              ; preds = %247, %245, %221, %218, %210, %57, %51, %40, %33, %11, %7, %3
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %255 = load i32, ptr %254, align 8, !tbaa !30
  %256 = icmp eq i32 %255, 1
  %257 = zext i1 %256 to i32
  br label %258

258:                                              ; preds = %1, %253
  %259 = phi i32 [ %257, %253 ], [ 0, %1 ]
  ret i32 %259
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = load i32, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  tail call void @free(ptr noundef %15) #12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  tail call void @free(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  tail call void @free(ptr noundef %24) #12
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = tail call i32 @close(i32 noundef %26) #12
  tail call void @free(ptr noundef nonnull %0) #12
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %3, %1, %18
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

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
!18 = !{!9, !13, i64 112}
!19 = !{!9, !5, i64 0}
!20 = !{!9, !11, i64 8}
!21 = !{!9, !13, i64 16}
!22 = !{!9, !5, i64 88}
!23 = !{!9, !5, i64 144}
!24 = !{!9, !5, i64 72}
!25 = !{!9, !5, i64 40}
!26 = !{!9, !5, i64 44}
!27 = !{!9, !11, i64 48}
!28 = !{!9, !11, i64 56}
!29 = !{!9, !11, i64 136}
!30 = !{!9, !5, i64 64}
!31 = !{!9, !5, i64 68}
!32 = !{!14, !5, i64 8}
!33 = !{!14, !11, i64 0}
!34 = !{!6, !6, i64 0}
!35 = distinct !{!35, !36, !37, !38}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 4, i32 28}
!40 = distinct !{!40, !36, !37, !38}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !36, !37}
!44 = !{!9, !5, i64 28}
!45 = distinct !{!45, !36}
!46 = !{!14, !5, i64 32}
!47 = !{!14, !11, i64 24}
!48 = !{!14, !11, i64 48}
!49 = distinct !{!49, !36}
!50 = distinct !{!50, !36}
!51 = distinct !{!51, !36}
!52 = distinct !{!52, !36, !37, !38}
!53 = distinct !{!53, !36, !37, !38}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !36, !37}
!56 = !{!9, !5, i64 168}
!57 = !{!9, !11, i64 160}
!58 = distinct !{!58, !36}
!59 = !{!9, !5, i64 92}
!60 = distinct !{!60, !36, !37, !38}
!61 = distinct !{!61, !36, !37, !38}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !36, !37}
!64 = distinct !{!64, !36, !37, !38}
!65 = distinct !{!65, !36, !37, !38}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !36, !37}
!68 = distinct !{!68, !36, !37, !38}
!69 = distinct !{!69, !36, !37, !38}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !36, !37}
!72 = distinct !{!72, !36, !37, !38}
!73 = distinct !{!73, !36, !37, !38}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !36, !37}
!76 = distinct !{!76, !36, !37, !38}
!77 = distinct !{!77, !36, !37, !38}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !36, !37}
!80 = distinct !{!80, !36, !37, !38}
!81 = distinct !{!81, !36, !37, !38}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !36, !37}
!84 = distinct !{!84, !36, !37, !38}
!85 = distinct !{!85, !36, !37, !38}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !36, !37}
!88 = distinct !{!88, !36, !37, !38}
!89 = distinct !{!89, !36, !37, !38}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !36, !37}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36, !37, !38}
!94 = distinct !{!94, !36, !37, !38}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !36, !37}
!97 = distinct !{!97, !36, !37, !38}
!98 = distinct !{!98, !36, !37, !38}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !36, !37}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !36, !37, !38}
!103 = distinct !{!103, !36, !37, !38}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !36, !37}
!106 = !{!9, !11, i64 32}
