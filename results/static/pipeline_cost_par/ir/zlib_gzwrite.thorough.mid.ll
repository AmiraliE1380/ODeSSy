; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_gzwrite.ll'
source_filename = "/mydata/zlib/gzwrite.c"
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
  br i1 %4, label %963, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %963

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %963, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %963

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %960, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %68

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
  br label %960

37:                                               ; preds = %27
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %39 = load i32, ptr %38, align 8, !tbaa !21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 %30, ptr %24, align 8, !tbaa !18
  br label %68

42:                                               ; preds = %37
  %43 = zext i32 %30 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #16
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %44, ptr %45, align 8, !tbaa !22
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %33) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

48:                                               ; preds = %42
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = tail call i32 @deflateInit2_(ptr noundef nonnull %28, i32 noundef %51, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %53, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !22
  tail call void @free(ptr noundef %57) #15
  %58 = load ptr, ptr %34, align 8, !tbaa !20
  tail call void @free(ptr noundef %58) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

59:                                               ; preds = %48
  store ptr null, ptr %28, align 8, !tbaa !25
  %60 = load i32, ptr %38, align 8, !tbaa !21
  %61 = load i32, ptr %29, align 4, !tbaa !19
  store i32 %61, ptr %24, align 8, !tbaa !18
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

68:                                               ; preds = %63, %59, %41, %23
  %69 = phi i32 [ %61, %63 ], [ %61, %59 ], [ %30, %41 ], [ %25, %23 ]
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %71 = load i64, ptr %70, align 8, !tbaa !29
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %416, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %229, label %78

78:                                               ; preds = %73
  %79 = icmp eq i32 %69, 0
  br i1 %79, label %80, label %120

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
  br label %960

89:                                               ; preds = %80
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %91 = load i32, ptr %90, align 8, !tbaa !21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 %82, ptr %24, align 8, !tbaa !18
  br label %127

94:                                               ; preds = %89
  %95 = zext i32 %82 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %96, ptr %97, align 8, !tbaa !22
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void @free(ptr noundef nonnull %85) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

100:                                              ; preds = %94
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, i8 0, i64 24, i1 false)
  %103 = load i32, ptr %102, align 8, !tbaa !23
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %105 = load i32, ptr %104, align 4, !tbaa !24
  %106 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %103, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %105, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = load ptr, ptr %97, align 8, !tbaa !22
  tail call void @free(ptr noundef %109) #15
  %110 = load ptr, ptr %86, align 8, !tbaa !20
  tail call void @free(ptr noundef %110) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

111:                                              ; preds = %100
  store ptr null, ptr %74, align 8, !tbaa !25
  %112 = load i32, ptr %90, align 8, !tbaa !21
  %113 = load i32, ptr %81, align 4, !tbaa !19
  store i32 %113, ptr %24, align 8, !tbaa !18
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %113, ptr %116, align 8, !tbaa !26
  %117 = load ptr, ptr %97, align 8, !tbaa !22
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %117, ptr %118, align 8, !tbaa !27
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %117, ptr %119, align 8, !tbaa !28
  br label %160

120:                                              ; preds = %78
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %122 = load i32, ptr %121, align 8, !tbaa !21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %160, label %127

124:                                              ; preds = %111
  %125 = load i32, ptr %75, align 8, !tbaa !30
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %229, label %127

127:                                              ; preds = %124, %120, %93
  %128 = tail call ptr @__errno_location() #17
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %131 = load ptr, ptr %74, align 8, !tbaa !25
  br label %132

132:                                              ; preds = %154, %127
  %133 = phi ptr [ %131, %127 ], [ %158, %154 ]
  store i32 0, ptr %128, align 4, !tbaa !31
  store i32 0, ptr %129, align 4, !tbaa !17
  %134 = load i32, ptr %75, align 8, !tbaa !30
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 1073741824)
  %136 = zext nneg i32 %135 to i64
  %137 = load i32, ptr %130, align 4, !tbaa !32
  %138 = tail call i64 @write(i32 noundef %137, ptr noundef %133, i64 noundef %136) #15
  %139 = trunc i64 %138 to i32
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %132
  %142 = load i32, ptr %128, align 4, !tbaa !31
  %143 = icmp eq i32 %142, 11
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  store i32 1, ptr %129, align 4, !tbaa !17
  %145 = load i32, ptr %128, align 4, !tbaa !31
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %142, %141 ], [ %145, %144 ]
  %148 = tail call ptr @strerror(i32 noundef %147) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %148) #15
  br label %960

149:                                              ; preds = %132
  %150 = load i32, ptr %75, align 8, !tbaa !30
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %139), !nosanitize !33
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !33
  br i1 %152, label %153, label %154, !prof !34, !nosanitize !33

153:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

154:                                              ; preds = %149
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !33
  store i32 %155, ptr %75, align 8, !tbaa !30
  %156 = load ptr, ptr %74, align 8, !tbaa !25
  %157 = and i64 %138, 2147483647
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  store ptr %158, ptr %74, align 8, !tbaa !25
  %159 = icmp eq i32 %155, 0
  br i1 %159, label %229, label %132, !llvm.loop !35

160:                                              ; preds = %120, %115
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %162 = load i32, ptr %161, align 8, !tbaa !37
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %75, align 8, !tbaa !30
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %229, label %167

167:                                              ; preds = %164
  %168 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %161, align 8, !tbaa !37
  br label %169

169:                                              ; preds = %167, %160
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %176 = load i32, ptr %170, align 8, !tbaa !26
  br label %177

177:                                              ; preds = %227, %169
  %178 = phi i32 [ %176, %169 ], [ %224, %227 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %177
  %181 = load ptr, ptr %171, align 8, !tbaa !27
  %182 = load ptr, ptr %172, align 8, !tbaa !28
  %183 = icmp ugt ptr %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %180
  %185 = tail call ptr @__errno_location() #17
  br label %186

186:                                              ; preds = %206, %184
  %187 = phi ptr [ %182, %184 ], [ %209, %206 ]
  %188 = phi ptr [ %181, %184 ], [ %210, %206 ]
  store i32 0, ptr %185, align 4, !tbaa !31
  store i32 0, ptr %173, align 4, !tbaa !17
  %189 = ptrtoint ptr %188 to i64
  %190 = ptrtoint ptr %187 to i64
  %191 = sub i64 %189, %190
  %192 = tail call i64 @llvm.smin.i64(i64 %191, i64 1073741824)
  %193 = and i64 %192, 4294967295
  %194 = load i32, ptr %174, align 4, !tbaa !32
  %195 = tail call i64 @write(i32 noundef %194, ptr noundef %187, i64 noundef %193) #15
  %196 = and i64 %195, 2147483648
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %186
  %199 = load i32, ptr %185, align 4, !tbaa !31
  %200 = icmp eq i32 %199, 11
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  store i32 1, ptr %173, align 4, !tbaa !17
  %202 = load i32, ptr %185, align 4, !tbaa !31
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi i32 [ %199, %198 ], [ %202, %201 ]
  %205 = tail call ptr @strerror(i32 noundef %204) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %205) #15
  br label %960

206:                                              ; preds = %186
  %207 = load ptr, ptr %172, align 8, !tbaa !28
  %208 = and i64 %195, 2147483647
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %208
  store ptr %209, ptr %172, align 8, !tbaa !28
  %210 = load ptr, ptr %171, align 8, !tbaa !27
  %211 = icmp ugt ptr %210, %209
  br i1 %211, label %186, label %212, !llvm.loop !38

212:                                              ; preds = %206
  %213 = load i32, ptr %170, align 8, !tbaa !26
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212, %180
  %216 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %216, ptr %170, align 8, !tbaa !26
  %217 = load ptr, ptr %175, align 8, !tbaa !22
  store ptr %217, ptr %171, align 8, !tbaa !27
  store ptr %217, ptr %172, align 8, !tbaa !28
  br label %218

218:                                              ; preds = %215, %212, %177
  %219 = phi i32 [ %213, %212 ], [ %216, %215 ], [ %178, %177 ]
  %220 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %221 = icmp eq i32 %220, -2
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %960

223:                                              ; preds = %218
  %224 = load i32, ptr %170, align 8, !tbaa !26
  %225 = icmp ult i32 %219, %224
  br i1 %225, label %226, label %227, !prof !34, !nosanitize !33

226:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

227:                                              ; preds = %223
  %228 = icmp eq i32 %219, %224
  br i1 %228, label %229, label %177, !llvm.loop !39

229:                                              ; preds = %227, %164, %154, %124, %73
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %244 = load i64, ptr %70, align 8, !tbaa !29
  br label %245

245:                                              ; preds = %412, %229
  %246 = phi i64 [ %244, %229 ], [ %409, %412 ]
  %247 = phi i1 [ false, %229 ], [ true, %412 ]
  %248 = load i32, ptr %24, align 8, !tbaa !18
  %249 = zext i32 %248 to i64
  %250 = tail call i64 @llvm.smin.i64(i64 %246, i64 %249)
  %251 = trunc i64 %250 to i32
  %252 = load ptr, ptr %230, align 8, !tbaa !20
  br i1 %247, label %257, label %253

253:                                              ; preds = %245
  %254 = and i64 %250, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %252, i8 0, i64 %254, i1 false)
  %255 = load ptr, ptr %230, align 8, !tbaa !20
  %256 = load i32, ptr %24, align 8, !tbaa !18
  br label %257

257:                                              ; preds = %253, %245
  %258 = phi i32 [ %256, %253 ], [ %248, %245 ]
  %259 = phi ptr [ %255, %253 ], [ %252, %245 ]
  store i32 %251, ptr %75, align 8, !tbaa !30
  store ptr %259, ptr %74, align 8, !tbaa !25
  %260 = icmp eq i32 %258, 0
  br i1 %260, label %261, label %293

261:                                              ; preds = %257
  %262 = load i32, ptr %232, align 4, !tbaa !19
  %263 = shl i32 %262, 1
  %264 = zext i32 %263 to i64
  %265 = tail call noalias ptr @malloc(i64 noundef %264) #16
  store ptr %265, ptr %230, align 8, !tbaa !20
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %392

268:                                              ; preds = %261
  %269 = load i32, ptr %231, align 8, !tbaa !21
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  store i32 %262, ptr %24, align 8, !tbaa !18
  br label %296

272:                                              ; preds = %268
  %273 = zext i32 %262 to i64
  %274 = tail call noalias ptr @malloc(i64 noundef %273) #16
  store ptr %274, ptr %233, align 8, !tbaa !22
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  tail call void @free(ptr noundef nonnull %265) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %392

277:                                              ; preds = %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, i8 0, i64 24, i1 false)
  %278 = load i32, ptr %235, align 8, !tbaa !23
  %279 = load i32, ptr %236, align 4, !tbaa !24
  %280 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %278, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %279, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %233, align 8, !tbaa !22
  tail call void @free(ptr noundef %283) #15
  %284 = load ptr, ptr %230, align 8, !tbaa !20
  tail call void @free(ptr noundef %284) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %392

285:                                              ; preds = %277
  store ptr null, ptr %74, align 8, !tbaa !25
  %286 = load i32, ptr %231, align 8, !tbaa !21
  %287 = load i32, ptr %232, align 4, !tbaa !19
  store i32 %287, ptr %24, align 8, !tbaa !18
  %288 = icmp eq i32 %286, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %75, align 8, !tbaa !30
  br label %296

291:                                              ; preds = %285
  store i32 %287, ptr %239, align 8, !tbaa !26
  %292 = load ptr, ptr %233, align 8, !tbaa !22
  store ptr %292, ptr %240, align 8, !tbaa !27
  store ptr %292, ptr %241, align 8, !tbaa !28
  br label %330

293:                                              ; preds = %257
  %294 = load i32, ptr %231, align 8, !tbaa !21
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %330, label %296

296:                                              ; preds = %293, %289, %271
  %297 = phi ptr [ null, %289 ], [ %259, %293 ], [ %259, %271 ]
  %298 = phi i32 [ %290, %289 ], [ %251, %293 ], [ %251, %271 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %392, label %300

300:                                              ; preds = %296
  %301 = tail call ptr @__errno_location() #17
  br label %302

302:                                              ; preds = %324, %300
  %303 = phi ptr [ %297, %300 ], [ %328, %324 ]
  store i32 0, ptr %301, align 4, !tbaa !31
  store i32 0, ptr %237, align 4, !tbaa !17
  %304 = load i32, ptr %75, align 8, !tbaa !30
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = zext nneg i32 %305 to i64
  %307 = load i32, ptr %238, align 4, !tbaa !32
  %308 = tail call i64 @write(i32 noundef %307, ptr noundef %303, i64 noundef %306) #15
  %309 = trunc i64 %308 to i32
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %302
  %312 = load i32, ptr %301, align 4, !tbaa !31
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  store i32 1, ptr %237, align 4, !tbaa !17
  %315 = load i32, ptr %301, align 4, !tbaa !31
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %314 ]
  %318 = tail call ptr @strerror(i32 noundef %317) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %318) #15
  br label %392

319:                                              ; preds = %302
  %320 = load i32, ptr %75, align 8, !tbaa !30
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %309), !nosanitize !33
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !33
  br i1 %322, label %323, label %324, !prof !34, !nosanitize !33

323:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

324:                                              ; preds = %319
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !33
  store i32 %325, ptr %75, align 8, !tbaa !30
  %326 = load ptr, ptr %74, align 8, !tbaa !25
  %327 = and i64 %308, 2147483647
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store ptr %328, ptr %74, align 8, !tbaa !25
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %392, label %302, !llvm.loop !35

330:                                              ; preds = %293, %291
  %331 = load i32, ptr %242, align 8, !tbaa !37
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %75, align 8, !tbaa !30
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %392, label %336

336:                                              ; preds = %333
  %337 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %242, align 8, !tbaa !37
  br label %338

338:                                              ; preds = %336, %330
  %339 = load i32, ptr %239, align 8, !tbaa !26
  br label %340

340:                                              ; preds = %390, %338
  %341 = phi i32 [ %339, %338 ], [ %387, %390 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %381

343:                                              ; preds = %340
  %344 = load ptr, ptr %240, align 8, !tbaa !27
  %345 = load ptr, ptr %241, align 8, !tbaa !28
  %346 = icmp ugt ptr %344, %345
  br i1 %346, label %347, label %378

347:                                              ; preds = %343
  %348 = tail call ptr @__errno_location() #17
  br label %349

349:                                              ; preds = %369, %347
  %350 = phi ptr [ %345, %347 ], [ %372, %369 ]
  %351 = phi ptr [ %344, %347 ], [ %373, %369 ]
  store i32 0, ptr %348, align 4, !tbaa !31
  store i32 0, ptr %237, align 4, !tbaa !17
  %352 = ptrtoint ptr %351 to i64
  %353 = ptrtoint ptr %350 to i64
  %354 = sub i64 %352, %353
  %355 = tail call i64 @llvm.smin.i64(i64 %354, i64 1073741824)
  %356 = and i64 %355, 4294967295
  %357 = load i32, ptr %238, align 4, !tbaa !32
  %358 = tail call i64 @write(i32 noundef %357, ptr noundef %350, i64 noundef %356) #15
  %359 = and i64 %358, 2147483648
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %349
  %362 = load i32, ptr %348, align 4, !tbaa !31
  %363 = icmp eq i32 %362, 11
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  store i32 1, ptr %237, align 4, !tbaa !17
  %365 = load i32, ptr %348, align 4, !tbaa !31
  br label %366

366:                                              ; preds = %364, %361
  %367 = phi i32 [ %362, %361 ], [ %365, %364 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #15
  br label %392

369:                                              ; preds = %349
  %370 = load ptr, ptr %241, align 8, !tbaa !28
  %371 = and i64 %358, 2147483647
  %372 = getelementptr inbounds nuw i8, ptr %370, i64 %371
  store ptr %372, ptr %241, align 8, !tbaa !28
  %373 = load ptr, ptr %240, align 8, !tbaa !27
  %374 = icmp ugt ptr %373, %372
  br i1 %374, label %349, label %375, !llvm.loop !38

375:                                              ; preds = %369
  %376 = load i32, ptr %239, align 8, !tbaa !26
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375, %343
  %379 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %379, ptr %239, align 8, !tbaa !26
  %380 = load ptr, ptr %233, align 8, !tbaa !22
  store ptr %380, ptr %240, align 8, !tbaa !27
  store ptr %380, ptr %241, align 8, !tbaa !28
  br label %381

381:                                              ; preds = %378, %375, %340
  %382 = phi i32 [ %376, %375 ], [ %379, %378 ], [ %341, %340 ]
  %383 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %384 = icmp eq i32 %383, -2
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %392

386:                                              ; preds = %381
  %387 = load i32, ptr %239, align 8, !tbaa !26
  %388 = icmp ult i32 %382, %387
  br i1 %388, label %389, label %390, !prof !34, !nosanitize !33

389:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

390:                                              ; preds = %386
  %391 = icmp eq i32 %382, %387
  br i1 %391, label %392, label %340, !llvm.loop !39

392:                                              ; preds = %390, %385, %366, %333, %324, %316, %296, %282, %276, %267
  %393 = phi i1 [ true, %316 ], [ true, %366 ], [ true, %385 ], [ false, %333 ], [ true, %267 ], [ true, %276 ], [ true, %282 ], [ false, %296 ], [ false, %390 ], [ false, %324 ]
  %394 = load i32, ptr %75, align 8, !tbaa !30
  %395 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %394), !nosanitize !33
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !33
  br i1 %396, label %397, label %398, !prof !34, !nosanitize !33

397:                                              ; preds = %405, %392
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

398:                                              ; preds = %392
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !33
  %400 = zext i32 %399 to i64
  %401 = load i64, ptr %243, align 8, !tbaa !40
  %402 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %401, i64 %400), !nosanitize !33
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !33
  br i1 %403, label %404, label %405, !prof !34, !nosanitize !33

404:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

405:                                              ; preds = %398
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !33
  store i64 %406, ptr %243, align 8, !tbaa !40
  %407 = load i64, ptr %70, align 8, !tbaa !29
  %408 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %407, i64 %400), !nosanitize !33
  %409 = extractvalue { i64, i1 } %408, 0, !nosanitize !33
  %410 = extractvalue { i64, i1 } %408, 1, !nosanitize !33
  br i1 %410, label %397, label %411, !prof !34, !nosanitize !33

411:                                              ; preds = %405
  store i64 %409, ptr %70, align 8, !tbaa !29
  br i1 %393, label %960, label %412

412:                                              ; preds = %411
  %413 = icmp eq i64 %409, 0
  br i1 %413, label %414, label %245, !llvm.loop !41

414:                                              ; preds = %412
  %415 = load i32, ptr %24, align 8, !tbaa !18
  br label %416

416:                                              ; preds = %414, %68
  %417 = phi i32 [ %415, %414 ], [ %69, %68 ]
  %418 = icmp ult i32 %2, %417
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %418, label %421, label %627

421:                                              ; preds = %416
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %436

436:                                              ; preds = %562, %421
  %437 = phi i64 [ %21, %421 ], [ %479, %562 ]
  %438 = phi ptr [ %1, %421 ], [ %477, %562 ]
  %439 = load i32, ptr %420, align 8, !tbaa !42
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %436
  %442 = load ptr, ptr %419, align 8, !tbaa !43
  %443 = load ptr, ptr %422, align 8, !tbaa !20
  br label %446

444:                                              ; preds = %436
  %445 = load ptr, ptr %422, align 8, !tbaa !20
  store ptr %445, ptr %419, align 8, !tbaa !43
  br label %446

446:                                              ; preds = %444, %441
  %447 = phi ptr [ %443, %441 ], [ %445, %444 ]
  %448 = phi ptr [ %442, %441 ], [ %445, %444 ]
  %449 = zext i32 %439 to i64
  %450 = getelementptr inbounds nuw i8, ptr %448, i64 %449
  %451 = ptrtoint ptr %450 to i64
  %452 = ptrtoint ptr %447 to i64
  %453 = sub i64 %451, %452
  %454 = trunc i64 %453 to i32
  %455 = load i32, ptr %24, align 8, !tbaa !18
  %456 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %454), !nosanitize !33
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !33
  br i1 %457, label %458, label %459, !prof !34, !nosanitize !33

458:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

459:                                              ; preds = %446
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !33
  %461 = zext i32 %460 to i64
  %462 = tail call i64 @llvm.umin.i64(i64 %437, i64 %461)
  %463 = trunc nuw i64 %462 to i32
  %464 = and i64 %453, 4294967295
  %465 = getelementptr inbounds nuw i8, ptr %447, i64 %464
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %438, i64 %462, i1 false)
  %466 = load i32, ptr %420, align 8, !tbaa !42
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 %463), !nosanitize !33
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !33
  br i1 %468, label %469, label %470, !prof !34, !nosanitize !33

469:                                              ; preds = %937, %470, %459
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

470:                                              ; preds = %459
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !33
  store i32 %471, ptr %420, align 8, !tbaa !42
  %472 = load i64, ptr %423, align 8, !tbaa !40
  %473 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %472, i64 %462), !nosanitize !33
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !33
  br i1 %474, label %469, label %475, !prof !34, !nosanitize !33

475:                                              ; preds = %470
  %476 = extractvalue { i64, i1 } %473, 0, !nosanitize !33
  store i64 %476, ptr %423, align 8, !tbaa !40
  %477 = getelementptr inbounds nuw i8, ptr %438, i64 %462
  %478 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %437, i64 %462), !nosanitize !33
  %479 = extractvalue { i64, i1 } %478, 0, !nosanitize !33
  %480 = extractvalue { i64, i1 } %478, 1, !nosanitize !33
  br i1 false, label %481, label %482, !prof !34, !nosanitize !33

481:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

482:                                              ; preds = %475
  %483 = icmp eq i64 %479, 0
  br i1 %483, label %960, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %24, align 8, !tbaa !18
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %519

487:                                              ; preds = %484
  %488 = load i32, ptr %425, align 4, !tbaa !19
  %489 = shl i32 %488, 1
  %490 = zext i32 %489 to i64
  %491 = tail call noalias ptr @malloc(i64 noundef %490) #16
  store ptr %491, ptr %422, align 8, !tbaa !20
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

494:                                              ; preds = %487
  %495 = load i32, ptr %424, align 8, !tbaa !21
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  store i32 %488, ptr %24, align 8, !tbaa !18
  br label %522

498:                                              ; preds = %494
  %499 = zext i32 %488 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #16
  store ptr %500, ptr %426, align 8, !tbaa !22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %498
  tail call void @free(ptr noundef nonnull %491) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

503:                                              ; preds = %498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %427, i8 0, i64 24, i1 false)
  %504 = load i32, ptr %428, align 8, !tbaa !23
  %505 = load i32, ptr %429, align 4, !tbaa !24
  %506 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %504, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %505, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %503
  %509 = load ptr, ptr %426, align 8, !tbaa !22
  tail call void @free(ptr noundef %509) #15
  %510 = load ptr, ptr %422, align 8, !tbaa !20
  tail call void @free(ptr noundef %510) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

511:                                              ; preds = %503
  store ptr null, ptr %419, align 8, !tbaa !25
  %512 = load i32, ptr %424, align 8, !tbaa !21
  %513 = load i32, ptr %425, align 4, !tbaa !19
  store i32 %513, ptr %24, align 8, !tbaa !18
  %514 = icmp eq i32 %512, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %420, align 8, !tbaa !30
  br label %522

517:                                              ; preds = %511
  store i32 %513, ptr %432, align 8, !tbaa !26
  %518 = load ptr, ptr %426, align 8, !tbaa !22
  store ptr %518, ptr %433, align 8, !tbaa !27
  store ptr %518, ptr %434, align 8, !tbaa !28
  br label %556

519:                                              ; preds = %484
  %520 = load i32, ptr %424, align 8, !tbaa !21
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %515, %497
  %523 = phi i32 [ %516, %515 ], [ %471, %519 ], [ %471, %497 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #17
  %527 = load ptr, ptr %419, align 8, !tbaa !25
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !31
  store i32 0, ptr %430, align 4, !tbaa !17
  %530 = load i32, ptr %420, align 8, !tbaa !30
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = zext nneg i32 %531 to i64
  %533 = load i32, ptr %431, align 4, !tbaa !32
  %534 = tail call i64 @write(i32 noundef %533, ptr noundef %529, i64 noundef %532) #15
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !31
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %430, align 4, !tbaa !17
  %541 = load i32, ptr %526, align 4, !tbaa !31
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #15
  br label %619

545:                                              ; preds = %528
  %546 = load i32, ptr %420, align 8, !tbaa !30
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !33
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !33
  br i1 %548, label %549, label %550, !prof !34, !nosanitize !33

549:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !33
  store i32 %551, ptr %420, align 8, !tbaa !30
  %552 = load ptr, ptr %419, align 8, !tbaa !25
  %553 = and i64 %534, 2147483647
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  store ptr %554, ptr %419, align 8, !tbaa !25
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !35

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %435, align 8, !tbaa !37
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %420, align 8, !tbaa !30
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %617, %559, %550, %522
  br label %436

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %435, align 8, !tbaa !37
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %432, align 8, !tbaa !26
  br label %567

567:                                              ; preds = %617, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %617 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %433, align 8, !tbaa !27
  %572 = load ptr, ptr %434, align 8, !tbaa !28
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #17
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !31
  store i32 0, ptr %430, align 4, !tbaa !17
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = and i64 %582, 4294967295
  %584 = load i32, ptr %431, align 4, !tbaa !32
  %585 = tail call i64 @write(i32 noundef %584, ptr noundef %577, i64 noundef %583) #15
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !31
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %430, align 4, !tbaa !17
  %592 = load i32, ptr %575, align 4, !tbaa !31
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #15
  br label %619

596:                                              ; preds = %576
  %597 = load ptr, ptr %434, align 8, !tbaa !28
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  store ptr %599, ptr %434, align 8, !tbaa !28
  %600 = load ptr, ptr %433, align 8, !tbaa !27
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !38

602:                                              ; preds = %596
  %603 = load i32, ptr %432, align 8, !tbaa !26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %606, ptr %432, align 8, !tbaa !26
  %607 = load ptr, ptr %426, align 8, !tbaa !22
  store ptr %607, ptr %433, align 8, !tbaa !27
  store ptr %607, ptr %434, align 8, !tbaa !28
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %619

613:                                              ; preds = %608
  %614 = load i32, ptr %432, align 8, !tbaa !26
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %617, !prof !34, !nosanitize !33

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

617:                                              ; preds = %613
  %618 = icmp eq i32 %609, %614
  br i1 %618, label %562, label %567, !llvm.loop !39

619:                                              ; preds = %612, %593, %542, %508, %502, %493
  %620 = load i32, ptr %430, align 4, !tbaa !17
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %960, label %622

622:                                              ; preds = %619
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %479), !nosanitize !33
  %624 = extractvalue { i64, i1 } %623, 0, !nosanitize !33
  %625 = extractvalue { i64, i1 } %623, 1, !nosanitize !33
  br i1 %625, label %626, label %960, !prof !34, !nosanitize !33

626:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

627:                                              ; preds = %416
  %628 = load i32, ptr %420, align 8, !tbaa !42
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %781, label %630

630:                                              ; preds = %627
  %631 = icmp eq i32 %417, 0
  br i1 %631, label %632, label %672

632:                                              ; preds = %630
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %634 = load i32, ptr %633, align 4, !tbaa !19
  %635 = shl i32 %634, 1
  %636 = zext i32 %635 to i64
  %637 = tail call noalias ptr @malloc(i64 noundef %636) #16
  %638 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %637, ptr %638, align 8, !tbaa !20
  %639 = icmp eq ptr %637, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %632
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

641:                                              ; preds = %632
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %643 = load i32, ptr %642, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %641
  store i32 %634, ptr %24, align 8, !tbaa !18
  br label %679

646:                                              ; preds = %641
  %647 = zext i32 %634 to i64
  %648 = tail call noalias ptr @malloc(i64 noundef %647) #16
  %649 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %648, ptr %649, align 8, !tbaa !22
  %650 = icmp eq ptr %648, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  tail call void @free(ptr noundef nonnull %637) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

652:                                              ; preds = %646
  %653 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %653, i8 0, i64 24, i1 false)
  %655 = load i32, ptr %654, align 8, !tbaa !23
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %657 = load i32, ptr %656, align 4, !tbaa !24
  %658 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %655, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %657, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %652
  %661 = load ptr, ptr %649, align 8, !tbaa !22
  tail call void @free(ptr noundef %661) #15
  %662 = load ptr, ptr %638, align 8, !tbaa !20
  tail call void @free(ptr noundef %662) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

663:                                              ; preds = %652
  store ptr null, ptr %419, align 8, !tbaa !25
  %664 = load i32, ptr %642, align 8, !tbaa !21
  %665 = load i32, ptr %633, align 4, !tbaa !19
  store i32 %665, ptr %24, align 8, !tbaa !18
  %666 = icmp eq i32 %664, 0
  br i1 %666, label %667, label %676

667:                                              ; preds = %663
  %668 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %665, ptr %668, align 8, !tbaa !26
  %669 = load ptr, ptr %649, align 8, !tbaa !22
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %669, ptr %670, align 8, !tbaa !27
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %669, ptr %671, align 8, !tbaa !28
  br label %712

672:                                              ; preds = %630
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %674 = load i32, ptr %673, align 8, !tbaa !21
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %712, label %679

676:                                              ; preds = %663
  %677 = load i32, ptr %420, align 8, !tbaa !30
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %781, label %679

679:                                              ; preds = %676, %672, %645
  %680 = tail call ptr @__errno_location() #17
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %683 = load ptr, ptr %419, align 8, !tbaa !25
  br label %684

684:                                              ; preds = %706, %679
  %685 = phi ptr [ %683, %679 ], [ %710, %706 ]
  store i32 0, ptr %680, align 4, !tbaa !31
  store i32 0, ptr %681, align 4, !tbaa !17
  %686 = load i32, ptr %420, align 8, !tbaa !30
  %687 = tail call i32 @llvm.umin.i32(i32 %686, i32 1073741824)
  %688 = zext nneg i32 %687 to i64
  %689 = load i32, ptr %682, align 4, !tbaa !32
  %690 = tail call i64 @write(i32 noundef %689, ptr noundef %685, i64 noundef %688) #15
  %691 = trunc i64 %690 to i32
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %693, label %701

693:                                              ; preds = %684
  %694 = load i32, ptr %680, align 4, !tbaa !31
  %695 = icmp eq i32 %694, 11
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  store i32 1, ptr %681, align 4, !tbaa !17
  %697 = load i32, ptr %680, align 4, !tbaa !31
  br label %698

698:                                              ; preds = %696, %693
  %699 = phi i32 [ %694, %693 ], [ %697, %696 ]
  %700 = tail call ptr @strerror(i32 noundef %699) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %700) #15
  br label %960

701:                                              ; preds = %684
  %702 = load i32, ptr %420, align 8, !tbaa !30
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %691), !nosanitize !33
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !33
  br i1 %704, label %705, label %706, !prof !34, !nosanitize !33

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !33
  store i32 %707, ptr %420, align 8, !tbaa !30
  %708 = load ptr, ptr %419, align 8, !tbaa !25
  %709 = and i64 %690, 2147483647
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  store ptr %710, ptr %419, align 8, !tbaa !25
  %711 = icmp eq i32 %707, 0
  br i1 %711, label %781, label %684, !llvm.loop !35

712:                                              ; preds = %672, %667
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %714 = load i32, ptr %713, align 8, !tbaa !37
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %721, label %716

716:                                              ; preds = %712
  %717 = load i32, ptr %420, align 8, !tbaa !30
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %781, label %719

719:                                              ; preds = %716
  %720 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %713, align 8, !tbaa !37
  br label %721

721:                                              ; preds = %719, %712
  %722 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %728 = load i32, ptr %722, align 8, !tbaa !26
  br label %729

729:                                              ; preds = %779, %721
  %730 = phi i32 [ %728, %721 ], [ %776, %779 ]
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %770

732:                                              ; preds = %729
  %733 = load ptr, ptr %723, align 8, !tbaa !27
  %734 = load ptr, ptr %724, align 8, !tbaa !28
  %735 = icmp ugt ptr %733, %734
  br i1 %735, label %736, label %767

736:                                              ; preds = %732
  %737 = tail call ptr @__errno_location() #17
  br label %738

738:                                              ; preds = %758, %736
  %739 = phi ptr [ %734, %736 ], [ %761, %758 ]
  %740 = phi ptr [ %733, %736 ], [ %762, %758 ]
  store i32 0, ptr %737, align 4, !tbaa !31
  store i32 0, ptr %725, align 4, !tbaa !17
  %741 = ptrtoint ptr %740 to i64
  %742 = ptrtoint ptr %739 to i64
  %743 = sub i64 %741, %742
  %744 = tail call i64 @llvm.smin.i64(i64 %743, i64 1073741824)
  %745 = and i64 %744, 4294967295
  %746 = load i32, ptr %726, align 4, !tbaa !32
  %747 = tail call i64 @write(i32 noundef %746, ptr noundef %739, i64 noundef %745) #15
  %748 = and i64 %747, 2147483648
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %758, label %750

750:                                              ; preds = %738
  %751 = load i32, ptr %737, align 4, !tbaa !31
  %752 = icmp eq i32 %751, 11
  br i1 %752, label %753, label %755

753:                                              ; preds = %750
  store i32 1, ptr %725, align 4, !tbaa !17
  %754 = load i32, ptr %737, align 4, !tbaa !31
  br label %755

755:                                              ; preds = %753, %750
  %756 = phi i32 [ %751, %750 ], [ %754, %753 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #15
  br label %960

758:                                              ; preds = %738
  %759 = load ptr, ptr %724, align 8, !tbaa !28
  %760 = and i64 %747, 2147483647
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  store ptr %761, ptr %724, align 8, !tbaa !28
  %762 = load ptr, ptr %723, align 8, !tbaa !27
  %763 = icmp ugt ptr %762, %761
  br i1 %763, label %738, label %764, !llvm.loop !38

764:                                              ; preds = %758
  %765 = load i32, ptr %722, align 8, !tbaa !26
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %770

767:                                              ; preds = %764, %732
  %768 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %768, ptr %722, align 8, !tbaa !26
  %769 = load ptr, ptr %727, align 8, !tbaa !22
  store ptr %769, ptr %723, align 8, !tbaa !27
  store ptr %769, ptr %724, align 8, !tbaa !28
  br label %770

770:                                              ; preds = %767, %764, %729
  %771 = phi i32 [ %765, %764 ], [ %768, %767 ], [ %730, %729 ]
  %772 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %773 = icmp eq i32 %772, -2
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %960

775:                                              ; preds = %770
  %776 = load i32, ptr %722, align 8, !tbaa !26
  %777 = icmp ult i32 %771, %776
  br i1 %777, label %778, label %779, !prof !34, !nosanitize !33

778:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

779:                                              ; preds = %775
  %780 = icmp eq i32 %771, %776
  br i1 %780, label %781, label %729, !llvm.loop !39

781:                                              ; preds = %779, %716, %706, %676, %627
  store ptr %1, ptr %419, align 8, !tbaa !43
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %794 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %796

796:                                              ; preds = %958, %781
  %797 = phi i64 [ %21, %781 ], [ %946, %958 ]
  %798 = tail call i64 @llvm.umin.i64(i64 %797, i64 4294967295)
  %799 = trunc nuw i64 %798 to i32
  store i32 %799, ptr %420, align 8, !tbaa !42
  %800 = load i32, ptr %24, align 8, !tbaa !18
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %832

802:                                              ; preds = %796
  %803 = load i32, ptr %783, align 4, !tbaa !19
  %804 = shl i32 %803, 1
  %805 = zext i32 %804 to i64
  %806 = tail call noalias ptr @malloc(i64 noundef %805) #16
  store ptr %806, ptr %784, align 8, !tbaa !20
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %809

808:                                              ; preds = %802
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

809:                                              ; preds = %802
  %810 = load i32, ptr %782, align 8, !tbaa !21
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %813, label %812

812:                                              ; preds = %809
  store i32 %803, ptr %24, align 8, !tbaa !18
  br label %838

813:                                              ; preds = %809
  %814 = zext i32 %803 to i64
  %815 = tail call noalias ptr @malloc(i64 noundef %814) #16
  store ptr %815, ptr %785, align 8, !tbaa !22
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %818

817:                                              ; preds = %813
  tail call void @free(ptr noundef nonnull %806) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

818:                                              ; preds = %813
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %786, i8 0, i64 24, i1 false)
  %819 = load i32, ptr %787, align 8, !tbaa !23
  %820 = load i32, ptr %788, align 4, !tbaa !24
  %821 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %819, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %820, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %826, label %823

823:                                              ; preds = %818
  %824 = load ptr, ptr %785, align 8, !tbaa !22
  tail call void @free(ptr noundef %824) #15
  %825 = load ptr, ptr %784, align 8, !tbaa !20
  tail call void @free(ptr noundef %825) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

826:                                              ; preds = %818
  store ptr null, ptr %419, align 8, !tbaa !25
  %827 = load i32, ptr %782, align 8, !tbaa !21
  %828 = load i32, ptr %783, align 4, !tbaa !19
  store i32 %828, ptr %24, align 8, !tbaa !18
  %829 = icmp eq i32 %827, 0
  br i1 %829, label %830, label %835

830:                                              ; preds = %826
  store i32 %828, ptr %791, align 8, !tbaa !26
  %831 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %831, ptr %792, align 8, !tbaa !27
  store ptr %831, ptr %793, align 8, !tbaa !28
  br label %869

832:                                              ; preds = %796
  %833 = load i32, ptr %782, align 8, !tbaa !21
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %869, label %838

835:                                              ; preds = %826
  %836 = load i32, ptr %420, align 8, !tbaa !30
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %931, label %838

838:                                              ; preds = %835, %832, %812
  %839 = tail call ptr @__errno_location() #17
  %840 = load ptr, ptr %419, align 8, !tbaa !25
  br label %841

841:                                              ; preds = %863, %838
  %842 = phi ptr [ %840, %838 ], [ %867, %863 ]
  store i32 0, ptr %839, align 4, !tbaa !31
  store i32 0, ptr %789, align 4, !tbaa !17
  %843 = load i32, ptr %420, align 8, !tbaa !30
  %844 = tail call i32 @llvm.umin.i32(i32 %843, i32 1073741824)
  %845 = zext nneg i32 %844 to i64
  %846 = load i32, ptr %790, align 4, !tbaa !32
  %847 = tail call i64 @write(i32 noundef %846, ptr noundef %842, i64 noundef %845) #15
  %848 = trunc i64 %847 to i32
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %850, label %858

850:                                              ; preds = %841
  %851 = load i32, ptr %839, align 4, !tbaa !31
  %852 = icmp eq i32 %851, 11
  br i1 %852, label %853, label %855

853:                                              ; preds = %850
  store i32 1, ptr %789, align 4, !tbaa !17
  %854 = load i32, ptr %839, align 4, !tbaa !31
  br label %855

855:                                              ; preds = %853, %850
  %856 = phi i32 [ %851, %850 ], [ %854, %853 ]
  %857 = tail call ptr @strerror(i32 noundef %856) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %857) #15
  br label %931

858:                                              ; preds = %841
  %859 = load i32, ptr %420, align 8, !tbaa !30
  %860 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %859, i32 %848), !nosanitize !33
  %861 = extractvalue { i32, i1 } %860, 1, !nosanitize !33
  br i1 %861, label %862, label %863, !prof !34, !nosanitize !33

862:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

863:                                              ; preds = %858
  %864 = extractvalue { i32, i1 } %860, 0, !nosanitize !33
  store i32 %864, ptr %420, align 8, !tbaa !30
  %865 = load ptr, ptr %419, align 8, !tbaa !25
  %866 = and i64 %847, 2147483647
  %867 = getelementptr inbounds nuw i8, ptr %865, i64 %866
  store ptr %867, ptr %419, align 8, !tbaa !25
  %868 = icmp eq i32 %864, 0
  br i1 %868, label %931, label %841, !llvm.loop !35

869:                                              ; preds = %832, %830
  %870 = load i32, ptr %794, align 8, !tbaa !37
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %877, label %872

872:                                              ; preds = %869
  %873 = load i32, ptr %420, align 8, !tbaa !30
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %931, label %875

875:                                              ; preds = %872
  %876 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %794, align 8, !tbaa !37
  br label %877

877:                                              ; preds = %875, %869
  %878 = load i32, ptr %791, align 8, !tbaa !26
  br label %879

879:                                              ; preds = %929, %877
  %880 = phi i32 [ %878, %877 ], [ %926, %929 ]
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %920

882:                                              ; preds = %879
  %883 = load ptr, ptr %792, align 8, !tbaa !27
  %884 = load ptr, ptr %793, align 8, !tbaa !28
  %885 = icmp ugt ptr %883, %884
  br i1 %885, label %886, label %917

886:                                              ; preds = %882
  %887 = tail call ptr @__errno_location() #17
  br label %888

888:                                              ; preds = %908, %886
  %889 = phi ptr [ %884, %886 ], [ %911, %908 ]
  %890 = phi ptr [ %883, %886 ], [ %912, %908 ]
  store i32 0, ptr %887, align 4, !tbaa !31
  store i32 0, ptr %789, align 4, !tbaa !17
  %891 = ptrtoint ptr %890 to i64
  %892 = ptrtoint ptr %889 to i64
  %893 = sub i64 %891, %892
  %894 = tail call i64 @llvm.smin.i64(i64 %893, i64 1073741824)
  %895 = and i64 %894, 4294967295
  %896 = load i32, ptr %790, align 4, !tbaa !32
  %897 = tail call i64 @write(i32 noundef %896, ptr noundef %889, i64 noundef %895) #15
  %898 = and i64 %897, 2147483648
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %908, label %900

900:                                              ; preds = %888
  %901 = load i32, ptr %887, align 4, !tbaa !31
  %902 = icmp eq i32 %901, 11
  br i1 %902, label %903, label %905

903:                                              ; preds = %900
  store i32 1, ptr %789, align 4, !tbaa !17
  %904 = load i32, ptr %887, align 4, !tbaa !31
  br label %905

905:                                              ; preds = %903, %900
  %906 = phi i32 [ %901, %900 ], [ %904, %903 ]
  %907 = tail call ptr @strerror(i32 noundef %906) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %907) #15
  br label %931

908:                                              ; preds = %888
  %909 = load ptr, ptr %793, align 8, !tbaa !28
  %910 = and i64 %897, 2147483647
  %911 = getelementptr inbounds nuw i8, ptr %909, i64 %910
  store ptr %911, ptr %793, align 8, !tbaa !28
  %912 = load ptr, ptr %792, align 8, !tbaa !27
  %913 = icmp ugt ptr %912, %911
  br i1 %913, label %888, label %914, !llvm.loop !38

914:                                              ; preds = %908
  %915 = load i32, ptr %791, align 8, !tbaa !26
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %920

917:                                              ; preds = %914, %882
  %918 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %918, ptr %791, align 8, !tbaa !26
  %919 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %919, ptr %792, align 8, !tbaa !27
  store ptr %919, ptr %793, align 8, !tbaa !28
  br label %920

920:                                              ; preds = %917, %914, %879
  %921 = phi i32 [ %915, %914 ], [ %918, %917 ], [ %880, %879 ]
  %922 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %923 = icmp eq i32 %922, -2
  br i1 %923, label %924, label %925

924:                                              ; preds = %920
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %931

925:                                              ; preds = %920
  %926 = load i32, ptr %791, align 8, !tbaa !26
  %927 = icmp ult i32 %921, %926
  br i1 %927, label %928, label %929, !prof !34, !nosanitize !33

928:                                              ; preds = %925
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

929:                                              ; preds = %925
  %930 = icmp eq i32 %921, %926
  br i1 %930, label %931, label %879, !llvm.loop !39

931:                                              ; preds = %929, %924, %905, %872, %863, %855, %835, %823, %817, %808
  %932 = phi i1 [ true, %855 ], [ true, %905 ], [ true, %924 ], [ false, %872 ], [ true, %808 ], [ true, %817 ], [ true, %823 ], [ false, %835 ], [ false, %929 ], [ false, %863 ]
  %933 = load i32, ptr %420, align 8, !tbaa !42
  %934 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %933), !nosanitize !33
  %935 = extractvalue { i32, i1 } %934, 1, !nosanitize !33
  br i1 %935, label %936, label %937, !prof !34, !nosanitize !33

936:                                              ; preds = %931
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

937:                                              ; preds = %931
  %938 = extractvalue { i32, i1 } %934, 0, !nosanitize !33
  %939 = zext i32 %938 to i64
  %940 = load i64, ptr %795, align 8, !tbaa !40
  %941 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %940, i64 %939), !nosanitize !33
  %942 = extractvalue { i64, i1 } %941, 1, !nosanitize !33
  br i1 %942, label %469, label %943, !prof !34, !nosanitize !33

943:                                              ; preds = %937
  %944 = extractvalue { i64, i1 } %941, 0, !nosanitize !33
  store i64 %944, ptr %795, align 8, !tbaa !40
  %945 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %797, i64 %939), !nosanitize !33
  %946 = extractvalue { i64, i1 } %945, 0, !nosanitize !33
  %947 = extractvalue { i64, i1 } %945, 1, !nosanitize !33
  br i1 false, label %948, label %949, !prof !34, !nosanitize !33

948:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

949:                                              ; preds = %943
  br i1 %932, label %950, label %958

950:                                              ; preds = %949
  %951 = load i32, ptr %789, align 4, !tbaa !17
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %960, label %953

953:                                              ; preds = %950
  %954 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %946), !nosanitize !33
  %955 = extractvalue { i64, i1 } %954, 0, !nosanitize !33
  %956 = extractvalue { i64, i1 } %954, 1, !nosanitize !33
  br i1 %956, label %957, label %960, !prof !34, !nosanitize !33

957:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

958:                                              ; preds = %949
  %959 = icmp eq i64 %946, 0
  br i1 %959, label %960, label %796, !llvm.loop !44

960:                                              ; preds = %958, %953, %950, %774, %755, %698, %660, %651, %640, %622, %619, %482, %411, %222, %203, %146, %108, %99, %88, %56, %47, %36, %20
  %961 = phi i64 [ 0, %20 ], [ 0, %36 ], [ 0, %47 ], [ 0, %56 ], [ 0, %146 ], [ 0, %203 ], [ 0, %222 ], [ 0, %88 ], [ 0, %99 ], [ 0, %108 ], [ 0, %619 ], [ %624, %622 ], [ 0, %698 ], [ 0, %755 ], [ 0, %774 ], [ 0, %640 ], [ 0, %651 ], [ 0, %660 ], [ 0, %950 ], [ %955, %953 ], [ %21, %482 ], [ %21, %958 ], [ 0, %411 ]
  %962 = trunc i64 %961 to i32
  br label %963

963:                                              ; preds = %960, %19, %13, %5, %3
  %964 = phi i32 [ 0, %19 ], [ %962, %960 ], [ 0, %3 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %964
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %972, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %972

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %972, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #15
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !33
  %20 = extractvalue { i64, i1 } %19, 0, !nosanitize !33
  %21 = extractvalue { i64, i1 } %19, 1, !nosanitize !33
  br i1 %21, label %22, label %23, !prof !34, !nosanitize !33

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 12) #18, !nosanitize !33
  unreachable, !nosanitize !33

23:                                               ; preds = %18
  %24 = icmp eq i64 %1, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = udiv i64 %20, %1
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #15
  br label %972

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %972, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = shl i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #16
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %41, ptr %42, align 8, !tbaa !20
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

45:                                               ; preds = %35
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %47 = load i32, ptr %46, align 8, !tbaa !21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 %38, ptr %32, align 8, !tbaa !18
  br label %76

50:                                               ; preds = %45
  %51 = zext i32 %38 to i64
  %52 = tail call noalias ptr @malloc(i64 noundef %51) #16
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %52, ptr %53, align 8, !tbaa !22
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void @free(ptr noundef nonnull %41) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

56:                                               ; preds = %50
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %59 = load i32, ptr %58, align 8, !tbaa !23
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !24
  %62 = tail call i32 @deflateInit2_(ptr noundef nonnull %36, i32 noundef %59, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %61, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %53, align 8, !tbaa !22
  tail call void @free(ptr noundef %65) #15
  %66 = load ptr, ptr %42, align 8, !tbaa !20
  tail call void @free(ptr noundef %66) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

67:                                               ; preds = %56
  store ptr null, ptr %36, align 8, !tbaa !25
  %68 = load i32, ptr %46, align 8, !tbaa !21
  %69 = load i32, ptr %37, align 4, !tbaa !19
  store i32 %69, ptr %32, align 8, !tbaa !18
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %69, ptr %72, align 8, !tbaa !26
  %73 = load ptr, ptr %53, align 8, !tbaa !22
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %73, ptr %74, align 8, !tbaa !27
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %73, ptr %75, align 8, !tbaa !28
  br label %76

76:                                               ; preds = %71, %67, %49, %31
  %77 = phi i32 [ %69, %71 ], [ %69, %67 ], [ %38, %49 ], [ %33, %31 ]
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %79 = load i64, ptr %78, align 8, !tbaa !29
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %424, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %84 = load i32, ptr %83, align 8, !tbaa !30
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %237, label %86

86:                                               ; preds = %81
  %87 = icmp eq i32 %77, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %86
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %90 = load i32, ptr %89, align 4, !tbaa !19
  %91 = shl i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #16
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %93, ptr %94, align 8, !tbaa !20
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

97:                                               ; preds = %88
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %99 = load i32, ptr %98, align 8, !tbaa !21
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 %90, ptr %32, align 8, !tbaa !18
  br label %135

102:                                              ; preds = %97
  %103 = zext i32 %90 to i64
  %104 = tail call noalias ptr @malloc(i64 noundef %103) #16
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %104, ptr %105, align 8, !tbaa !22
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %93) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

108:                                              ; preds = %102
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, i8 0, i64 24, i1 false)
  %111 = load i32, ptr %110, align 8, !tbaa !23
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %113 = load i32, ptr %112, align 4, !tbaa !24
  %114 = tail call i32 @deflateInit2_(ptr noundef nonnull %82, i32 noundef %111, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %113, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %105, align 8, !tbaa !22
  tail call void @free(ptr noundef %117) #15
  %118 = load ptr, ptr %94, align 8, !tbaa !20
  tail call void @free(ptr noundef %118) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

119:                                              ; preds = %108
  store ptr null, ptr %82, align 8, !tbaa !25
  %120 = load i32, ptr %98, align 8, !tbaa !21
  %121 = load i32, ptr %89, align 4, !tbaa !19
  store i32 %121, ptr %32, align 8, !tbaa !18
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %121, ptr %124, align 8, !tbaa !26
  %125 = load ptr, ptr %105, align 8, !tbaa !22
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %125, ptr %126, align 8, !tbaa !27
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %125, ptr %127, align 8, !tbaa !28
  br label %168

128:                                              ; preds = %86
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %130 = load i32, ptr %129, align 8, !tbaa !21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %168, label %135

132:                                              ; preds = %119
  %133 = load i32, ptr %83, align 8, !tbaa !30
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %237, label %135

135:                                              ; preds = %132, %128, %101
  %136 = tail call ptr @__errno_location() #17
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %139 = load ptr, ptr %82, align 8, !tbaa !25
  br label %140

140:                                              ; preds = %162, %135
  %141 = phi ptr [ %139, %135 ], [ %166, %162 ]
  store i32 0, ptr %136, align 4, !tbaa !31
  store i32 0, ptr %137, align 4, !tbaa !17
  %142 = load i32, ptr %83, align 8, !tbaa !30
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 1073741824)
  %144 = zext nneg i32 %143 to i64
  %145 = load i32, ptr %138, align 4, !tbaa !32
  %146 = tail call i64 @write(i32 noundef %145, ptr noundef %141, i64 noundef %144) #15
  %147 = trunc i64 %146 to i32
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %140
  %150 = load i32, ptr %136, align 4, !tbaa !31
  %151 = icmp eq i32 %150, 11
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i32 1, ptr %137, align 4, !tbaa !17
  %153 = load i32, ptr %136, align 4, !tbaa !31
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %152 ]
  %156 = tail call ptr @strerror(i32 noundef %155) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %156) #15
  br label %969

157:                                              ; preds = %140
  %158 = load i32, ptr %83, align 8, !tbaa !30
  %159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %158, i32 %147), !nosanitize !33
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !33
  br i1 %160, label %161, label %162, !prof !34, !nosanitize !33

161:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

162:                                              ; preds = %157
  %163 = extractvalue { i32, i1 } %159, 0, !nosanitize !33
  store i32 %163, ptr %83, align 8, !tbaa !30
  %164 = load ptr, ptr %82, align 8, !tbaa !25
  %165 = and i64 %146, 2147483647
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  store ptr %166, ptr %82, align 8, !tbaa !25
  %167 = icmp eq i32 %163, 0
  br i1 %167, label %237, label %140, !llvm.loop !35

168:                                              ; preds = %128, %123
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %170 = load i32, ptr %169, align 8, !tbaa !37
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = load i32, ptr %83, align 8, !tbaa !30
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %237, label %175

175:                                              ; preds = %172
  %176 = tail call i32 @deflateReset(ptr noundef nonnull %82) #15
  store i32 0, ptr %169, align 8, !tbaa !37
  br label %177

177:                                              ; preds = %175, %168
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %184 = load i32, ptr %178, align 8, !tbaa !26
  br label %185

185:                                              ; preds = %235, %177
  %186 = phi i32 [ %184, %177 ], [ %232, %235 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %226

188:                                              ; preds = %185
  %189 = load ptr, ptr %179, align 8, !tbaa !27
  %190 = load ptr, ptr %180, align 8, !tbaa !28
  %191 = icmp ugt ptr %189, %190
  br i1 %191, label %192, label %223

192:                                              ; preds = %188
  %193 = tail call ptr @__errno_location() #17
  br label %194

194:                                              ; preds = %214, %192
  %195 = phi ptr [ %190, %192 ], [ %217, %214 ]
  %196 = phi ptr [ %189, %192 ], [ %218, %214 ]
  store i32 0, ptr %193, align 4, !tbaa !31
  store i32 0, ptr %181, align 4, !tbaa !17
  %197 = ptrtoint ptr %196 to i64
  %198 = ptrtoint ptr %195 to i64
  %199 = sub i64 %197, %198
  %200 = tail call i64 @llvm.smin.i64(i64 %199, i64 1073741824)
  %201 = and i64 %200, 4294967295
  %202 = load i32, ptr %182, align 4, !tbaa !32
  %203 = tail call i64 @write(i32 noundef %202, ptr noundef %195, i64 noundef %201) #15
  %204 = and i64 %203, 2147483648
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %194
  %207 = load i32, ptr %193, align 4, !tbaa !31
  %208 = icmp eq i32 %207, 11
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  store i32 1, ptr %181, align 4, !tbaa !17
  %210 = load i32, ptr %193, align 4, !tbaa !31
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i32 [ %207, %206 ], [ %210, %209 ]
  %213 = tail call ptr @strerror(i32 noundef %212) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %213) #15
  br label %969

214:                                              ; preds = %194
  %215 = load ptr, ptr %180, align 8, !tbaa !28
  %216 = and i64 %203, 2147483647
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 %216
  store ptr %217, ptr %180, align 8, !tbaa !28
  %218 = load ptr, ptr %179, align 8, !tbaa !27
  %219 = icmp ugt ptr %218, %217
  br i1 %219, label %194, label %220, !llvm.loop !38

220:                                              ; preds = %214
  %221 = load i32, ptr %178, align 8, !tbaa !26
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220, %188
  %224 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %224, ptr %178, align 8, !tbaa !26
  %225 = load ptr, ptr %183, align 8, !tbaa !22
  store ptr %225, ptr %179, align 8, !tbaa !27
  store ptr %225, ptr %180, align 8, !tbaa !28
  br label %226

226:                                              ; preds = %223, %220, %185
  %227 = phi i32 [ %221, %220 ], [ %224, %223 ], [ %186, %185 ]
  %228 = tail call i32 @deflate(ptr noundef nonnull %82, i32 noundef 0) #15
  %229 = icmp eq i32 %228, -2
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %969

231:                                              ; preds = %226
  %232 = load i32, ptr %178, align 8, !tbaa !26
  %233 = icmp ult i32 %227, %232
  br i1 %233, label %234, label %235, !prof !34, !nosanitize !33

234:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

235:                                              ; preds = %231
  %236 = icmp eq i32 %227, %232
  br i1 %236, label %237, label %185, !llvm.loop !39

237:                                              ; preds = %235, %172, %162, %132, %81
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %252 = load i64, ptr %78, align 8, !tbaa !29
  br label %253

253:                                              ; preds = %420, %237
  %254 = phi i64 [ %252, %237 ], [ %417, %420 ]
  %255 = phi i1 [ false, %237 ], [ true, %420 ]
  %256 = load i32, ptr %32, align 8, !tbaa !18
  %257 = zext i32 %256 to i64
  %258 = tail call i64 @llvm.smin.i64(i64 %254, i64 %257)
  %259 = trunc i64 %258 to i32
  %260 = load ptr, ptr %238, align 8, !tbaa !20
  br i1 %255, label %265, label %261

261:                                              ; preds = %253
  %262 = and i64 %258, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %260, i8 0, i64 %262, i1 false)
  %263 = load ptr, ptr %238, align 8, !tbaa !20
  %264 = load i32, ptr %32, align 8, !tbaa !18
  br label %265

265:                                              ; preds = %261, %253
  %266 = phi i32 [ %264, %261 ], [ %256, %253 ]
  %267 = phi ptr [ %263, %261 ], [ %260, %253 ]
  store i32 %259, ptr %83, align 8, !tbaa !30
  store ptr %267, ptr %82, align 8, !tbaa !25
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %269, label %301

269:                                              ; preds = %265
  %270 = load i32, ptr %240, align 4, !tbaa !19
  %271 = shl i32 %270, 1
  %272 = zext i32 %271 to i64
  %273 = tail call noalias ptr @malloc(i64 noundef %272) #16
  store ptr %273, ptr %238, align 8, !tbaa !20
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %400

276:                                              ; preds = %269
  %277 = load i32, ptr %239, align 8, !tbaa !21
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  store i32 %270, ptr %32, align 8, !tbaa !18
  br label %304

280:                                              ; preds = %276
  %281 = zext i32 %270 to i64
  %282 = tail call noalias ptr @malloc(i64 noundef %281) #16
  store ptr %282, ptr %241, align 8, !tbaa !22
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  tail call void @free(ptr noundef nonnull %273) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %400

285:                                              ; preds = %280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %242, i8 0, i64 24, i1 false)
  %286 = load i32, ptr %243, align 8, !tbaa !23
  %287 = load i32, ptr %244, align 4, !tbaa !24
  %288 = tail call i32 @deflateInit2_(ptr noundef nonnull %82, i32 noundef %286, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %287, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr %241, align 8, !tbaa !22
  tail call void @free(ptr noundef %291) #15
  %292 = load ptr, ptr %238, align 8, !tbaa !20
  tail call void @free(ptr noundef %292) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %400

293:                                              ; preds = %285
  store ptr null, ptr %82, align 8, !tbaa !25
  %294 = load i32, ptr %239, align 8, !tbaa !21
  %295 = load i32, ptr %240, align 4, !tbaa !19
  store i32 %295, ptr %32, align 8, !tbaa !18
  %296 = icmp eq i32 %294, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = load i32, ptr %83, align 8, !tbaa !30
  br label %304

299:                                              ; preds = %293
  store i32 %295, ptr %247, align 8, !tbaa !26
  %300 = load ptr, ptr %241, align 8, !tbaa !22
  store ptr %300, ptr %248, align 8, !tbaa !27
  store ptr %300, ptr %249, align 8, !tbaa !28
  br label %338

301:                                              ; preds = %265
  %302 = load i32, ptr %239, align 8, !tbaa !21
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %338, label %304

304:                                              ; preds = %301, %297, %279
  %305 = phi ptr [ null, %297 ], [ %267, %301 ], [ %267, %279 ]
  %306 = phi i32 [ %298, %297 ], [ %259, %301 ], [ %259, %279 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %400, label %308

308:                                              ; preds = %304
  %309 = tail call ptr @__errno_location() #17
  br label %310

310:                                              ; preds = %332, %308
  %311 = phi ptr [ %305, %308 ], [ %336, %332 ]
  store i32 0, ptr %309, align 4, !tbaa !31
  store i32 0, ptr %245, align 4, !tbaa !17
  %312 = load i32, ptr %83, align 8, !tbaa !30
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 1073741824)
  %314 = zext nneg i32 %313 to i64
  %315 = load i32, ptr %246, align 4, !tbaa !32
  %316 = tail call i64 @write(i32 noundef %315, ptr noundef %311, i64 noundef %314) #15
  %317 = trunc i64 %316 to i32
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = load i32, ptr %309, align 4, !tbaa !31
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  store i32 1, ptr %245, align 4, !tbaa !17
  %323 = load i32, ptr %309, align 4, !tbaa !31
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %320, %319 ], [ %323, %322 ]
  %326 = tail call ptr @strerror(i32 noundef %325) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %326) #15
  br label %400

327:                                              ; preds = %310
  %328 = load i32, ptr %83, align 8, !tbaa !30
  %329 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %328, i32 %317), !nosanitize !33
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !33
  br i1 %330, label %331, label %332, !prof !34, !nosanitize !33

331:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !33
  store i32 %333, ptr %83, align 8, !tbaa !30
  %334 = load ptr, ptr %82, align 8, !tbaa !25
  %335 = and i64 %316, 2147483647
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 %335
  store ptr %336, ptr %82, align 8, !tbaa !25
  %337 = icmp eq i32 %333, 0
  br i1 %337, label %400, label %310, !llvm.loop !35

338:                                              ; preds = %301, %299
  %339 = load i32, ptr %250, align 8, !tbaa !37
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %338
  %342 = load i32, ptr %83, align 8, !tbaa !30
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %400, label %344

344:                                              ; preds = %341
  %345 = tail call i32 @deflateReset(ptr noundef nonnull %82) #15
  store i32 0, ptr %250, align 8, !tbaa !37
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i32, ptr %247, align 8, !tbaa !26
  br label %348

348:                                              ; preds = %398, %346
  %349 = phi i32 [ %347, %346 ], [ %395, %398 ]
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %348
  %352 = load ptr, ptr %248, align 8, !tbaa !27
  %353 = load ptr, ptr %249, align 8, !tbaa !28
  %354 = icmp ugt ptr %352, %353
  br i1 %354, label %355, label %386

355:                                              ; preds = %351
  %356 = tail call ptr @__errno_location() #17
  br label %357

357:                                              ; preds = %377, %355
  %358 = phi ptr [ %353, %355 ], [ %380, %377 ]
  %359 = phi ptr [ %352, %355 ], [ %381, %377 ]
  store i32 0, ptr %356, align 4, !tbaa !31
  store i32 0, ptr %245, align 4, !tbaa !17
  %360 = ptrtoint ptr %359 to i64
  %361 = ptrtoint ptr %358 to i64
  %362 = sub i64 %360, %361
  %363 = tail call i64 @llvm.smin.i64(i64 %362, i64 1073741824)
  %364 = and i64 %363, 4294967295
  %365 = load i32, ptr %246, align 4, !tbaa !32
  %366 = tail call i64 @write(i32 noundef %365, ptr noundef %358, i64 noundef %364) #15
  %367 = and i64 %366, 2147483648
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %377, label %369

369:                                              ; preds = %357
  %370 = load i32, ptr %356, align 4, !tbaa !31
  %371 = icmp eq i32 %370, 11
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  store i32 1, ptr %245, align 4, !tbaa !17
  %373 = load i32, ptr %356, align 4, !tbaa !31
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i32 [ %370, %369 ], [ %373, %372 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %376) #15
  br label %400

377:                                              ; preds = %357
  %378 = load ptr, ptr %249, align 8, !tbaa !28
  %379 = and i64 %366, 2147483647
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 %379
  store ptr %380, ptr %249, align 8, !tbaa !28
  %381 = load ptr, ptr %248, align 8, !tbaa !27
  %382 = icmp ugt ptr %381, %380
  br i1 %382, label %357, label %383, !llvm.loop !38

383:                                              ; preds = %377
  %384 = load i32, ptr %247, align 8, !tbaa !26
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383, %351
  %387 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %387, ptr %247, align 8, !tbaa !26
  %388 = load ptr, ptr %241, align 8, !tbaa !22
  store ptr %388, ptr %248, align 8, !tbaa !27
  store ptr %388, ptr %249, align 8, !tbaa !28
  br label %389

389:                                              ; preds = %386, %383, %348
  %390 = phi i32 [ %384, %383 ], [ %387, %386 ], [ %349, %348 ]
  %391 = tail call i32 @deflate(ptr noundef nonnull %82, i32 noundef 0) #15
  %392 = icmp eq i32 %391, -2
  br i1 %392, label %393, label %394

393:                                              ; preds = %389
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %400

394:                                              ; preds = %389
  %395 = load i32, ptr %247, align 8, !tbaa !26
  %396 = icmp ult i32 %390, %395
  br i1 %396, label %397, label %398, !prof !34, !nosanitize !33

397:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

398:                                              ; preds = %394
  %399 = icmp eq i32 %390, %395
  br i1 %399, label %400, label %348, !llvm.loop !39

400:                                              ; preds = %398, %393, %374, %341, %332, %324, %304, %290, %284, %275
  %401 = phi i1 [ true, %324 ], [ true, %374 ], [ true, %393 ], [ false, %341 ], [ true, %275 ], [ true, %284 ], [ true, %290 ], [ false, %304 ], [ false, %398 ], [ false, %332 ]
  %402 = load i32, ptr %83, align 8, !tbaa !30
  %403 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %259, i32 %402), !nosanitize !33
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !33
  br i1 %404, label %405, label %406, !prof !34, !nosanitize !33

405:                                              ; preds = %413, %400
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

406:                                              ; preds = %400
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !33
  %408 = zext i32 %407 to i64
  %409 = load i64, ptr %251, align 8, !tbaa !40
  %410 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %409, i64 %408), !nosanitize !33
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !33
  br i1 %411, label %412, label %413, !prof !34, !nosanitize !33

412:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

413:                                              ; preds = %406
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !33
  store i64 %414, ptr %251, align 8, !tbaa !40
  %415 = load i64, ptr %78, align 8, !tbaa !29
  %416 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %415, i64 %408), !nosanitize !33
  %417 = extractvalue { i64, i1 } %416, 0, !nosanitize !33
  %418 = extractvalue { i64, i1 } %416, 1, !nosanitize !33
  br i1 %418, label %405, label %419, !prof !34, !nosanitize !33

419:                                              ; preds = %413
  store i64 %417, ptr %78, align 8, !tbaa !29
  br i1 %401, label %969, label %420

420:                                              ; preds = %419
  %421 = icmp eq i64 %417, 0
  br i1 %421, label %422, label %253, !llvm.loop !41

422:                                              ; preds = %420
  %423 = load i32, ptr %32, align 8, !tbaa !18
  br label %424

424:                                              ; preds = %422, %76
  %425 = phi i32 [ %423, %422 ], [ %77, %76 ]
  %426 = zext i32 %425 to i64
  %427 = icmp ult i64 %20, %426
  %428 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %427, label %430, label %636

430:                                              ; preds = %424
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %432 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %437 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %438 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %445

445:                                              ; preds = %571, %430
  %446 = phi i64 [ %20, %430 ], [ %488, %571 ]
  %447 = phi ptr [ %0, %430 ], [ %486, %571 ]
  %448 = load i32, ptr %429, align 8, !tbaa !42
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %445
  %451 = load ptr, ptr %428, align 8, !tbaa !43
  %452 = load ptr, ptr %431, align 8, !tbaa !20
  br label %455

453:                                              ; preds = %445
  %454 = load ptr, ptr %431, align 8, !tbaa !20
  store ptr %454, ptr %428, align 8, !tbaa !43
  br label %455

455:                                              ; preds = %453, %450
  %456 = phi ptr [ %452, %450 ], [ %454, %453 ]
  %457 = phi ptr [ %451, %450 ], [ %454, %453 ]
  %458 = zext i32 %448 to i64
  %459 = getelementptr inbounds nuw i8, ptr %457, i64 %458
  %460 = ptrtoint ptr %459 to i64
  %461 = ptrtoint ptr %456 to i64
  %462 = sub i64 %460, %461
  %463 = trunc i64 %462 to i32
  %464 = load i32, ptr %32, align 8, !tbaa !18
  %465 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %464, i32 %463), !nosanitize !33
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !33
  br i1 %466, label %467, label %468, !prof !34, !nosanitize !33

467:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

468:                                              ; preds = %455
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !33
  %470 = zext i32 %469 to i64
  %471 = tail call i64 @llvm.umin.i64(i64 %446, i64 %470)
  %472 = trunc nuw i64 %471 to i32
  %473 = and i64 %462, 4294967295
  %474 = getelementptr inbounds nuw i8, ptr %456, i64 %473
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %474, ptr align 1 %447, i64 %471, i1 false)
  %475 = load i32, ptr %429, align 8, !tbaa !42
  %476 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 %472), !nosanitize !33
  %477 = extractvalue { i32, i1 } %476, 1, !nosanitize !33
  br i1 %477, label %478, label %479, !prof !34, !nosanitize !33

478:                                              ; preds = %946, %479, %468
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

479:                                              ; preds = %468
  %480 = extractvalue { i32, i1 } %476, 0, !nosanitize !33
  store i32 %480, ptr %429, align 8, !tbaa !42
  %481 = load i64, ptr %432, align 8, !tbaa !40
  %482 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %481, i64 %471), !nosanitize !33
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !33
  br i1 %483, label %478, label %484, !prof !34, !nosanitize !33

484:                                              ; preds = %479
  %485 = extractvalue { i64, i1 } %482, 0, !nosanitize !33
  store i64 %485, ptr %432, align 8, !tbaa !40
  %486 = getelementptr inbounds nuw i8, ptr %447, i64 %471
  %487 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %446, i64 %471), !nosanitize !33
  %488 = extractvalue { i64, i1 } %487, 0, !nosanitize !33
  %489 = extractvalue { i64, i1 } %487, 1, !nosanitize !33
  br i1 false, label %490, label %491, !prof !34, !nosanitize !33

490:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

491:                                              ; preds = %484
  %492 = icmp eq i64 %488, 0
  br i1 %492, label %969, label %493

493:                                              ; preds = %491
  %494 = load i32, ptr %32, align 8, !tbaa !18
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %528

496:                                              ; preds = %493
  %497 = load i32, ptr %434, align 4, !tbaa !19
  %498 = shl i32 %497, 1
  %499 = zext i32 %498 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #16
  store ptr %500, ptr %431, align 8, !tbaa !20
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %496
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

503:                                              ; preds = %496
  %504 = load i32, ptr %433, align 8, !tbaa !21
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %503
  store i32 %497, ptr %32, align 8, !tbaa !18
  br label %531

507:                                              ; preds = %503
  %508 = zext i32 %497 to i64
  %509 = tail call noalias ptr @malloc(i64 noundef %508) #16
  store ptr %509, ptr %435, align 8, !tbaa !22
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %512

511:                                              ; preds = %507
  tail call void @free(ptr noundef nonnull %500) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

512:                                              ; preds = %507
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %436, i8 0, i64 24, i1 false)
  %513 = load i32, ptr %437, align 8, !tbaa !23
  %514 = load i32, ptr %438, align 4, !tbaa !24
  %515 = tail call i32 @deflateInit2_(ptr noundef nonnull %428, i32 noundef %513, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %514, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr %435, align 8, !tbaa !22
  tail call void @free(ptr noundef %518) #15
  %519 = load ptr, ptr %431, align 8, !tbaa !20
  tail call void @free(ptr noundef %519) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

520:                                              ; preds = %512
  store ptr null, ptr %428, align 8, !tbaa !25
  %521 = load i32, ptr %433, align 8, !tbaa !21
  %522 = load i32, ptr %434, align 4, !tbaa !19
  store i32 %522, ptr %32, align 8, !tbaa !18
  %523 = icmp eq i32 %521, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %520
  %525 = load i32, ptr %429, align 8, !tbaa !30
  br label %531

526:                                              ; preds = %520
  store i32 %522, ptr %441, align 8, !tbaa !26
  %527 = load ptr, ptr %435, align 8, !tbaa !22
  store ptr %527, ptr %442, align 8, !tbaa !27
  store ptr %527, ptr %443, align 8, !tbaa !28
  br label %565

528:                                              ; preds = %493
  %529 = load i32, ptr %433, align 8, !tbaa !21
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %565, label %531

531:                                              ; preds = %528, %524, %506
  %532 = phi i32 [ %525, %524 ], [ %480, %528 ], [ %480, %506 ]
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %571, label %534

534:                                              ; preds = %531
  %535 = tail call ptr @__errno_location() #17
  %536 = load ptr, ptr %428, align 8, !tbaa !25
  br label %537

537:                                              ; preds = %559, %534
  %538 = phi ptr [ %536, %534 ], [ %563, %559 ]
  store i32 0, ptr %535, align 4, !tbaa !31
  store i32 0, ptr %439, align 4, !tbaa !17
  %539 = load i32, ptr %429, align 8, !tbaa !30
  %540 = tail call i32 @llvm.umin.i32(i32 %539, i32 1073741824)
  %541 = zext nneg i32 %540 to i64
  %542 = load i32, ptr %440, align 4, !tbaa !32
  %543 = tail call i64 @write(i32 noundef %542, ptr noundef %538, i64 noundef %541) #15
  %544 = trunc i64 %543 to i32
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %537
  %547 = load i32, ptr %535, align 4, !tbaa !31
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %439, align 4, !tbaa !17
  %550 = load i32, ptr %535, align 4, !tbaa !31
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %547, %546 ], [ %550, %549 ]
  %553 = tail call ptr @strerror(i32 noundef %552) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %553) #15
  br label %628

554:                                              ; preds = %537
  %555 = load i32, ptr %429, align 8, !tbaa !30
  %556 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %555, i32 %544), !nosanitize !33
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !33
  br i1 %557, label %558, label %559, !prof !34, !nosanitize !33

558:                                              ; preds = %554
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

559:                                              ; preds = %554
  %560 = extractvalue { i32, i1 } %556, 0, !nosanitize !33
  store i32 %560, ptr %429, align 8, !tbaa !30
  %561 = load ptr, ptr %428, align 8, !tbaa !25
  %562 = and i64 %543, 2147483647
  %563 = getelementptr inbounds nuw i8, ptr %561, i64 %562
  store ptr %563, ptr %428, align 8, !tbaa !25
  %564 = icmp eq i32 %560, 0
  br i1 %564, label %571, label %537, !llvm.loop !35

565:                                              ; preds = %528, %526
  %566 = load i32, ptr %444, align 8, !tbaa !37
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %565
  %569 = load i32, ptr %429, align 8, !tbaa !30
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %626, %568, %559, %531
  br label %445

572:                                              ; preds = %568
  %573 = tail call i32 @deflateReset(ptr noundef nonnull %428) #15
  store i32 0, ptr %444, align 8, !tbaa !37
  br label %574

574:                                              ; preds = %572, %565
  %575 = load i32, ptr %441, align 8, !tbaa !26
  br label %576

576:                                              ; preds = %626, %574
  %577 = phi i32 [ %575, %574 ], [ %623, %626 ]
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %617

579:                                              ; preds = %576
  %580 = load ptr, ptr %442, align 8, !tbaa !27
  %581 = load ptr, ptr %443, align 8, !tbaa !28
  %582 = icmp ugt ptr %580, %581
  br i1 %582, label %583, label %614

583:                                              ; preds = %579
  %584 = tail call ptr @__errno_location() #17
  br label %585

585:                                              ; preds = %605, %583
  %586 = phi ptr [ %581, %583 ], [ %608, %605 ]
  %587 = phi ptr [ %580, %583 ], [ %609, %605 ]
  store i32 0, ptr %584, align 4, !tbaa !31
  store i32 0, ptr %439, align 4, !tbaa !17
  %588 = ptrtoint ptr %587 to i64
  %589 = ptrtoint ptr %586 to i64
  %590 = sub i64 %588, %589
  %591 = tail call i64 @llvm.smin.i64(i64 %590, i64 1073741824)
  %592 = and i64 %591, 4294967295
  %593 = load i32, ptr %440, align 4, !tbaa !32
  %594 = tail call i64 @write(i32 noundef %593, ptr noundef %586, i64 noundef %592) #15
  %595 = and i64 %594, 2147483648
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %605, label %597

597:                                              ; preds = %585
  %598 = load i32, ptr %584, align 4, !tbaa !31
  %599 = icmp eq i32 %598, 11
  br i1 %599, label %600, label %602

600:                                              ; preds = %597
  store i32 1, ptr %439, align 4, !tbaa !17
  %601 = load i32, ptr %584, align 4, !tbaa !31
  br label %602

602:                                              ; preds = %600, %597
  %603 = phi i32 [ %598, %597 ], [ %601, %600 ]
  %604 = tail call ptr @strerror(i32 noundef %603) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %604) #15
  br label %628

605:                                              ; preds = %585
  %606 = load ptr, ptr %443, align 8, !tbaa !28
  %607 = and i64 %594, 2147483647
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 %607
  store ptr %608, ptr %443, align 8, !tbaa !28
  %609 = load ptr, ptr %442, align 8, !tbaa !27
  %610 = icmp ugt ptr %609, %608
  br i1 %610, label %585, label %611, !llvm.loop !38

611:                                              ; preds = %605
  %612 = load i32, ptr %441, align 8, !tbaa !26
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %617

614:                                              ; preds = %611, %579
  %615 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %615, ptr %441, align 8, !tbaa !26
  %616 = load ptr, ptr %435, align 8, !tbaa !22
  store ptr %616, ptr %442, align 8, !tbaa !27
  store ptr %616, ptr %443, align 8, !tbaa !28
  br label %617

617:                                              ; preds = %614, %611, %576
  %618 = phi i32 [ %612, %611 ], [ %615, %614 ], [ %577, %576 ]
  %619 = tail call i32 @deflate(ptr noundef nonnull %428, i32 noundef 0) #15
  %620 = icmp eq i32 %619, -2
  br i1 %620, label %621, label %622

621:                                              ; preds = %617
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %628

622:                                              ; preds = %617
  %623 = load i32, ptr %441, align 8, !tbaa !26
  %624 = icmp ult i32 %618, %623
  br i1 %624, label %625, label %626, !prof !34, !nosanitize !33

625:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

626:                                              ; preds = %622
  %627 = icmp eq i32 %618, %623
  br i1 %627, label %571, label %576, !llvm.loop !39

628:                                              ; preds = %621, %602, %551, %517, %511, %502
  %629 = load i32, ptr %439, align 4, !tbaa !17
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %969, label %631

631:                                              ; preds = %628
  %632 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %488), !nosanitize !33
  %633 = extractvalue { i64, i1 } %632, 0, !nosanitize !33
  %634 = extractvalue { i64, i1 } %632, 1, !nosanitize !33
  br i1 %634, label %635, label %969, !prof !34, !nosanitize !33

635:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

636:                                              ; preds = %424
  %637 = load i32, ptr %429, align 8, !tbaa !42
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %790, label %639

639:                                              ; preds = %636
  %640 = icmp eq i32 %425, 0
  br i1 %640, label %641, label %681

641:                                              ; preds = %639
  %642 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %643 = load i32, ptr %642, align 4, !tbaa !19
  %644 = shl i32 %643, 1
  %645 = zext i32 %644 to i64
  %646 = tail call noalias ptr @malloc(i64 noundef %645) #16
  %647 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %646, ptr %647, align 8, !tbaa !20
  %648 = icmp eq ptr %646, null
  br i1 %648, label %649, label %650

649:                                              ; preds = %641
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

650:                                              ; preds = %641
  %651 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %652 = load i32, ptr %651, align 8, !tbaa !21
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %650
  store i32 %643, ptr %32, align 8, !tbaa !18
  br label %688

655:                                              ; preds = %650
  %656 = zext i32 %643 to i64
  %657 = tail call noalias ptr @malloc(i64 noundef %656) #16
  %658 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %657, ptr %658, align 8, !tbaa !22
  %659 = icmp eq ptr %657, null
  br i1 %659, label %660, label %661

660:                                              ; preds = %655
  tail call void @free(ptr noundef nonnull %646) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

661:                                              ; preds = %655
  %662 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %663 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %662, i8 0, i64 24, i1 false)
  %664 = load i32, ptr %663, align 8, !tbaa !23
  %665 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %666 = load i32, ptr %665, align 4, !tbaa !24
  %667 = tail call i32 @deflateInit2_(ptr noundef nonnull %428, i32 noundef %664, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %666, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %672, label %669

669:                                              ; preds = %661
  %670 = load ptr, ptr %658, align 8, !tbaa !22
  tail call void @free(ptr noundef %670) #15
  %671 = load ptr, ptr %647, align 8, !tbaa !20
  tail call void @free(ptr noundef %671) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

672:                                              ; preds = %661
  store ptr null, ptr %428, align 8, !tbaa !25
  %673 = load i32, ptr %651, align 8, !tbaa !21
  %674 = load i32, ptr %642, align 4, !tbaa !19
  store i32 %674, ptr %32, align 8, !tbaa !18
  %675 = icmp eq i32 %673, 0
  br i1 %675, label %676, label %685

676:                                              ; preds = %672
  %677 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %674, ptr %677, align 8, !tbaa !26
  %678 = load ptr, ptr %658, align 8, !tbaa !22
  %679 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %678, ptr %679, align 8, !tbaa !27
  %680 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %678, ptr %680, align 8, !tbaa !28
  br label %721

681:                                              ; preds = %639
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %683 = load i32, ptr %682, align 8, !tbaa !21
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %721, label %688

685:                                              ; preds = %672
  %686 = load i32, ptr %429, align 8, !tbaa !30
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %790, label %688

688:                                              ; preds = %685, %681, %654
  %689 = tail call ptr @__errno_location() #17
  %690 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %692 = load ptr, ptr %428, align 8, !tbaa !25
  br label %693

693:                                              ; preds = %715, %688
  %694 = phi ptr [ %692, %688 ], [ %719, %715 ]
  store i32 0, ptr %689, align 4, !tbaa !31
  store i32 0, ptr %690, align 4, !tbaa !17
  %695 = load i32, ptr %429, align 8, !tbaa !30
  %696 = tail call i32 @llvm.umin.i32(i32 %695, i32 1073741824)
  %697 = zext nneg i32 %696 to i64
  %698 = load i32, ptr %691, align 4, !tbaa !32
  %699 = tail call i64 @write(i32 noundef %698, ptr noundef %694, i64 noundef %697) #15
  %700 = trunc i64 %699 to i32
  %701 = icmp slt i32 %700, 0
  br i1 %701, label %702, label %710

702:                                              ; preds = %693
  %703 = load i32, ptr %689, align 4, !tbaa !31
  %704 = icmp eq i32 %703, 11
  br i1 %704, label %705, label %707

705:                                              ; preds = %702
  store i32 1, ptr %690, align 4, !tbaa !17
  %706 = load i32, ptr %689, align 4, !tbaa !31
  br label %707

707:                                              ; preds = %705, %702
  %708 = phi i32 [ %703, %702 ], [ %706, %705 ]
  %709 = tail call ptr @strerror(i32 noundef %708) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %709) #15
  br label %969

710:                                              ; preds = %693
  %711 = load i32, ptr %429, align 8, !tbaa !30
  %712 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %711, i32 %700), !nosanitize !33
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !33
  br i1 %713, label %714, label %715, !prof !34, !nosanitize !33

714:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

715:                                              ; preds = %710
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !33
  store i32 %716, ptr %429, align 8, !tbaa !30
  %717 = load ptr, ptr %428, align 8, !tbaa !25
  %718 = and i64 %699, 2147483647
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 %718
  store ptr %719, ptr %428, align 8, !tbaa !25
  %720 = icmp eq i32 %716, 0
  br i1 %720, label %790, label %693, !llvm.loop !35

721:                                              ; preds = %681, %676
  %722 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %723 = load i32, ptr %722, align 8, !tbaa !37
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %730, label %725

725:                                              ; preds = %721
  %726 = load i32, ptr %429, align 8, !tbaa !30
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %790, label %728

728:                                              ; preds = %725
  %729 = tail call i32 @deflateReset(ptr noundef nonnull %428) #15
  store i32 0, ptr %722, align 8, !tbaa !37
  br label %730

730:                                              ; preds = %728, %721
  %731 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %732 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %733 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %735 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %736 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %737 = load i32, ptr %731, align 8, !tbaa !26
  br label %738

738:                                              ; preds = %788, %730
  %739 = phi i32 [ %737, %730 ], [ %785, %788 ]
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %779

741:                                              ; preds = %738
  %742 = load ptr, ptr %732, align 8, !tbaa !27
  %743 = load ptr, ptr %733, align 8, !tbaa !28
  %744 = icmp ugt ptr %742, %743
  br i1 %744, label %745, label %776

745:                                              ; preds = %741
  %746 = tail call ptr @__errno_location() #17
  br label %747

747:                                              ; preds = %767, %745
  %748 = phi ptr [ %743, %745 ], [ %770, %767 ]
  %749 = phi ptr [ %742, %745 ], [ %771, %767 ]
  store i32 0, ptr %746, align 4, !tbaa !31
  store i32 0, ptr %734, align 4, !tbaa !17
  %750 = ptrtoint ptr %749 to i64
  %751 = ptrtoint ptr %748 to i64
  %752 = sub i64 %750, %751
  %753 = tail call i64 @llvm.smin.i64(i64 %752, i64 1073741824)
  %754 = and i64 %753, 4294967295
  %755 = load i32, ptr %735, align 4, !tbaa !32
  %756 = tail call i64 @write(i32 noundef %755, ptr noundef %748, i64 noundef %754) #15
  %757 = and i64 %756, 2147483648
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %767, label %759

759:                                              ; preds = %747
  %760 = load i32, ptr %746, align 4, !tbaa !31
  %761 = icmp eq i32 %760, 11
  br i1 %761, label %762, label %764

762:                                              ; preds = %759
  store i32 1, ptr %734, align 4, !tbaa !17
  %763 = load i32, ptr %746, align 4, !tbaa !31
  br label %764

764:                                              ; preds = %762, %759
  %765 = phi i32 [ %760, %759 ], [ %763, %762 ]
  %766 = tail call ptr @strerror(i32 noundef %765) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %766) #15
  br label %969

767:                                              ; preds = %747
  %768 = load ptr, ptr %733, align 8, !tbaa !28
  %769 = and i64 %756, 2147483647
  %770 = getelementptr inbounds nuw i8, ptr %768, i64 %769
  store ptr %770, ptr %733, align 8, !tbaa !28
  %771 = load ptr, ptr %732, align 8, !tbaa !27
  %772 = icmp ugt ptr %771, %770
  br i1 %772, label %747, label %773, !llvm.loop !38

773:                                              ; preds = %767
  %774 = load i32, ptr %731, align 8, !tbaa !26
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %779

776:                                              ; preds = %773, %741
  %777 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %777, ptr %731, align 8, !tbaa !26
  %778 = load ptr, ptr %736, align 8, !tbaa !22
  store ptr %778, ptr %732, align 8, !tbaa !27
  store ptr %778, ptr %733, align 8, !tbaa !28
  br label %779

779:                                              ; preds = %776, %773, %738
  %780 = phi i32 [ %774, %773 ], [ %777, %776 ], [ %739, %738 ]
  %781 = tail call i32 @deflate(ptr noundef nonnull %428, i32 noundef 0) #15
  %782 = icmp eq i32 %781, -2
  br i1 %782, label %783, label %784

783:                                              ; preds = %779
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %969

784:                                              ; preds = %779
  %785 = load i32, ptr %731, align 8, !tbaa !26
  %786 = icmp ult i32 %780, %785
  br i1 %786, label %787, label %788, !prof !34, !nosanitize !33

787:                                              ; preds = %784
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

788:                                              ; preds = %784
  %789 = icmp eq i32 %780, %785
  br i1 %789, label %790, label %738, !llvm.loop !39

790:                                              ; preds = %788, %725, %715, %685, %636
  store ptr %0, ptr %428, align 8, !tbaa !43
  %791 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %792 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %793 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %794 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %795 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %796 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %797 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %798 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %799 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %800 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %801 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %802 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %803 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %804 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %805

805:                                              ; preds = %967, %790
  %806 = phi i64 [ %20, %790 ], [ %955, %967 ]
  %807 = tail call i64 @llvm.umin.i64(i64 %806, i64 4294967295)
  %808 = trunc nuw i64 %807 to i32
  store i32 %808, ptr %429, align 8, !tbaa !42
  %809 = load i32, ptr %32, align 8, !tbaa !18
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %841

811:                                              ; preds = %805
  %812 = load i32, ptr %792, align 4, !tbaa !19
  %813 = shl i32 %812, 1
  %814 = zext i32 %813 to i64
  %815 = tail call noalias ptr @malloc(i64 noundef %814) #16
  store ptr %815, ptr %793, align 8, !tbaa !20
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %818

817:                                              ; preds = %811
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %940

818:                                              ; preds = %811
  %819 = load i32, ptr %791, align 8, !tbaa !21
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %818
  store i32 %812, ptr %32, align 8, !tbaa !18
  br label %847

822:                                              ; preds = %818
  %823 = zext i32 %812 to i64
  %824 = tail call noalias ptr @malloc(i64 noundef %823) #16
  store ptr %824, ptr %794, align 8, !tbaa !22
  %825 = icmp eq ptr %824, null
  br i1 %825, label %826, label %827

826:                                              ; preds = %822
  tail call void @free(ptr noundef nonnull %815) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %940

827:                                              ; preds = %822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %795, i8 0, i64 24, i1 false)
  %828 = load i32, ptr %796, align 8, !tbaa !23
  %829 = load i32, ptr %797, align 4, !tbaa !24
  %830 = tail call i32 @deflateInit2_(ptr noundef nonnull %428, i32 noundef %828, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %829, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %835, label %832

832:                                              ; preds = %827
  %833 = load ptr, ptr %794, align 8, !tbaa !22
  tail call void @free(ptr noundef %833) #15
  %834 = load ptr, ptr %793, align 8, !tbaa !20
  tail call void @free(ptr noundef %834) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %940

835:                                              ; preds = %827
  store ptr null, ptr %428, align 8, !tbaa !25
  %836 = load i32, ptr %791, align 8, !tbaa !21
  %837 = load i32, ptr %792, align 4, !tbaa !19
  store i32 %837, ptr %32, align 8, !tbaa !18
  %838 = icmp eq i32 %836, 0
  br i1 %838, label %839, label %844

839:                                              ; preds = %835
  store i32 %837, ptr %800, align 8, !tbaa !26
  %840 = load ptr, ptr %794, align 8, !tbaa !22
  store ptr %840, ptr %801, align 8, !tbaa !27
  store ptr %840, ptr %802, align 8, !tbaa !28
  br label %878

841:                                              ; preds = %805
  %842 = load i32, ptr %791, align 8, !tbaa !21
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %878, label %847

844:                                              ; preds = %835
  %845 = load i32, ptr %429, align 8, !tbaa !30
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %940, label %847

847:                                              ; preds = %844, %841, %821
  %848 = tail call ptr @__errno_location() #17
  %849 = load ptr, ptr %428, align 8, !tbaa !25
  br label %850

850:                                              ; preds = %872, %847
  %851 = phi ptr [ %849, %847 ], [ %876, %872 ]
  store i32 0, ptr %848, align 4, !tbaa !31
  store i32 0, ptr %798, align 4, !tbaa !17
  %852 = load i32, ptr %429, align 8, !tbaa !30
  %853 = tail call i32 @llvm.umin.i32(i32 %852, i32 1073741824)
  %854 = zext nneg i32 %853 to i64
  %855 = load i32, ptr %799, align 4, !tbaa !32
  %856 = tail call i64 @write(i32 noundef %855, ptr noundef %851, i64 noundef %854) #15
  %857 = trunc i64 %856 to i32
  %858 = icmp slt i32 %857, 0
  br i1 %858, label %859, label %867

859:                                              ; preds = %850
  %860 = load i32, ptr %848, align 4, !tbaa !31
  %861 = icmp eq i32 %860, 11
  br i1 %861, label %862, label %864

862:                                              ; preds = %859
  store i32 1, ptr %798, align 4, !tbaa !17
  %863 = load i32, ptr %848, align 4, !tbaa !31
  br label %864

864:                                              ; preds = %862, %859
  %865 = phi i32 [ %860, %859 ], [ %863, %862 ]
  %866 = tail call ptr @strerror(i32 noundef %865) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %866) #15
  br label %940

867:                                              ; preds = %850
  %868 = load i32, ptr %429, align 8, !tbaa !30
  %869 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %868, i32 %857), !nosanitize !33
  %870 = extractvalue { i32, i1 } %869, 1, !nosanitize !33
  br i1 %870, label %871, label %872, !prof !34, !nosanitize !33

871:                                              ; preds = %867
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

872:                                              ; preds = %867
  %873 = extractvalue { i32, i1 } %869, 0, !nosanitize !33
  store i32 %873, ptr %429, align 8, !tbaa !30
  %874 = load ptr, ptr %428, align 8, !tbaa !25
  %875 = and i64 %856, 2147483647
  %876 = getelementptr inbounds nuw i8, ptr %874, i64 %875
  store ptr %876, ptr %428, align 8, !tbaa !25
  %877 = icmp eq i32 %873, 0
  br i1 %877, label %940, label %850, !llvm.loop !35

878:                                              ; preds = %841, %839
  %879 = load i32, ptr %803, align 8, !tbaa !37
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %886, label %881

881:                                              ; preds = %878
  %882 = load i32, ptr %429, align 8, !tbaa !30
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %940, label %884

884:                                              ; preds = %881
  %885 = tail call i32 @deflateReset(ptr noundef nonnull %428) #15
  store i32 0, ptr %803, align 8, !tbaa !37
  br label %886

886:                                              ; preds = %884, %878
  %887 = load i32, ptr %800, align 8, !tbaa !26
  br label %888

888:                                              ; preds = %938, %886
  %889 = phi i32 [ %887, %886 ], [ %935, %938 ]
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %929

891:                                              ; preds = %888
  %892 = load ptr, ptr %801, align 8, !tbaa !27
  %893 = load ptr, ptr %802, align 8, !tbaa !28
  %894 = icmp ugt ptr %892, %893
  br i1 %894, label %895, label %926

895:                                              ; preds = %891
  %896 = tail call ptr @__errno_location() #17
  br label %897

897:                                              ; preds = %917, %895
  %898 = phi ptr [ %893, %895 ], [ %920, %917 ]
  %899 = phi ptr [ %892, %895 ], [ %921, %917 ]
  store i32 0, ptr %896, align 4, !tbaa !31
  store i32 0, ptr %798, align 4, !tbaa !17
  %900 = ptrtoint ptr %899 to i64
  %901 = ptrtoint ptr %898 to i64
  %902 = sub i64 %900, %901
  %903 = tail call i64 @llvm.smin.i64(i64 %902, i64 1073741824)
  %904 = and i64 %903, 4294967295
  %905 = load i32, ptr %799, align 4, !tbaa !32
  %906 = tail call i64 @write(i32 noundef %905, ptr noundef %898, i64 noundef %904) #15
  %907 = and i64 %906, 2147483648
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %917, label %909

909:                                              ; preds = %897
  %910 = load i32, ptr %896, align 4, !tbaa !31
  %911 = icmp eq i32 %910, 11
  br i1 %911, label %912, label %914

912:                                              ; preds = %909
  store i32 1, ptr %798, align 4, !tbaa !17
  %913 = load i32, ptr %896, align 4, !tbaa !31
  br label %914

914:                                              ; preds = %912, %909
  %915 = phi i32 [ %910, %909 ], [ %913, %912 ]
  %916 = tail call ptr @strerror(i32 noundef %915) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %916) #15
  br label %940

917:                                              ; preds = %897
  %918 = load ptr, ptr %802, align 8, !tbaa !28
  %919 = and i64 %906, 2147483647
  %920 = getelementptr inbounds nuw i8, ptr %918, i64 %919
  store ptr %920, ptr %802, align 8, !tbaa !28
  %921 = load ptr, ptr %801, align 8, !tbaa !27
  %922 = icmp ugt ptr %921, %920
  br i1 %922, label %897, label %923, !llvm.loop !38

923:                                              ; preds = %917
  %924 = load i32, ptr %800, align 8, !tbaa !26
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %929

926:                                              ; preds = %923, %891
  %927 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %927, ptr %800, align 8, !tbaa !26
  %928 = load ptr, ptr %794, align 8, !tbaa !22
  store ptr %928, ptr %801, align 8, !tbaa !27
  store ptr %928, ptr %802, align 8, !tbaa !28
  br label %929

929:                                              ; preds = %926, %923, %888
  %930 = phi i32 [ %924, %923 ], [ %927, %926 ], [ %889, %888 ]
  %931 = tail call i32 @deflate(ptr noundef nonnull %428, i32 noundef 0) #15
  %932 = icmp eq i32 %931, -2
  br i1 %932, label %933, label %934

933:                                              ; preds = %929
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %940

934:                                              ; preds = %929
  %935 = load i32, ptr %800, align 8, !tbaa !26
  %936 = icmp ult i32 %930, %935
  br i1 %936, label %937, label %938, !prof !34, !nosanitize !33

937:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

938:                                              ; preds = %934
  %939 = icmp eq i32 %930, %935
  br i1 %939, label %940, label %888, !llvm.loop !39

940:                                              ; preds = %938, %933, %914, %881, %872, %864, %844, %832, %826, %817
  %941 = phi i1 [ true, %864 ], [ true, %914 ], [ true, %933 ], [ false, %881 ], [ true, %817 ], [ true, %826 ], [ true, %832 ], [ false, %844 ], [ false, %938 ], [ false, %872 ]
  %942 = load i32, ptr %429, align 8, !tbaa !42
  %943 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 %942), !nosanitize !33
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !33
  br i1 %944, label %945, label %946, !prof !34, !nosanitize !33

945:                                              ; preds = %940
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

946:                                              ; preds = %940
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !33
  %948 = zext i32 %947 to i64
  %949 = load i64, ptr %804, align 8, !tbaa !40
  %950 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %949, i64 %948), !nosanitize !33
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !33
  br i1 %951, label %478, label %952, !prof !34, !nosanitize !33

952:                                              ; preds = %946
  %953 = extractvalue { i64, i1 } %950, 0, !nosanitize !33
  store i64 %953, ptr %804, align 8, !tbaa !40
  %954 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %806, i64 %948), !nosanitize !33
  %955 = extractvalue { i64, i1 } %954, 0, !nosanitize !33
  %956 = extractvalue { i64, i1 } %954, 1, !nosanitize !33
  br i1 false, label %957, label %958, !prof !34, !nosanitize !33

957:                                              ; preds = %952
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

958:                                              ; preds = %952
  br i1 %941, label %959, label %967

959:                                              ; preds = %958
  %960 = load i32, ptr %798, align 4, !tbaa !17
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %969, label %962

962:                                              ; preds = %959
  %963 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %955), !nosanitize !33
  %964 = extractvalue { i64, i1 } %963, 0, !nosanitize !33
  %965 = extractvalue { i64, i1 } %963, 1, !nosanitize !33
  br i1 %965, label %966, label %969, !prof !34, !nosanitize !33

966:                                              ; preds = %962
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

967:                                              ; preds = %958
  %968 = icmp eq i64 %955, 0
  br i1 %968, label %969, label %805, !llvm.loop !44

969:                                              ; preds = %967, %962, %959, %783, %764, %707, %669, %660, %649, %631, %628, %491, %419, %230, %211, %154, %116, %107, %96, %64, %55, %44
  %970 = phi i64 [ 0, %44 ], [ 0, %55 ], [ 0, %64 ], [ 0, %154 ], [ 0, %211 ], [ 0, %230 ], [ 0, %96 ], [ 0, %107 ], [ 0, %116 ], [ 0, %628 ], [ %633, %631 ], [ 0, %707 ], [ 0, %764 ], [ 0, %783 ], [ 0, %649 ], [ 0, %660 ], [ 0, %669 ], [ 0, %959 ], [ %964, %962 ], [ %20, %491 ], [ %20, %967 ], [ 0, %419 ]
  %971 = udiv i64 %970, %1
  br label %972

972:                                              ; preds = %969, %29, %28, %14, %6, %4
  %973 = phi i64 [ 0, %28 ], [ 0, %4 ], [ 0, %14 ], [ 0, %6 ], [ %971, %969 ], [ 0, %29 ]
  ret i64 %973
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1345, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1345

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1345, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %365, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %179, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

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
  br label %1345

39:                                               ; preds = %30
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %41 = load i32, ptr %40, align 8, !tbaa !21
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 %32, ptr %27, align 8, !tbaa !18
  br label %77

44:                                               ; preds = %39
  %45 = zext i32 %32 to i64
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #16
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %46, ptr %47, align 8, !tbaa !22
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @free(ptr noundef nonnull %35) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

50:                                               ; preds = %44
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %53 = load i32, ptr %52, align 8, !tbaa !23
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %55 = load i32, ptr %54, align 4, !tbaa !24
  %56 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %53, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %55, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %47, align 8, !tbaa !22
  tail call void @free(ptr noundef %59) #15
  %60 = load ptr, ptr %36, align 8, !tbaa !20
  tail call void @free(ptr noundef %60) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

61:                                               ; preds = %50
  store ptr null, ptr %6, align 8, !tbaa !25
  %62 = load i32, ptr %40, align 8, !tbaa !21
  %63 = load i32, ptr %31, align 4, !tbaa !19
  store i32 %63, ptr %27, align 8, !tbaa !18
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %63, ptr %66, align 8, !tbaa !26
  %67 = load ptr, ptr %47, align 8, !tbaa !22
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %67, ptr %68, align 8, !tbaa !27
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %67, ptr %69, align 8, !tbaa !28
  br label %110

70:                                               ; preds = %26
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %72 = load i32, ptr %71, align 8, !tbaa !21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %110, label %77

74:                                               ; preds = %61
  %75 = load i32, ptr %23, align 8, !tbaa !30
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %179, label %77

77:                                               ; preds = %74, %70, %43
  %78 = tail call ptr @__errno_location() #17
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %81 = load ptr, ptr %6, align 8, !tbaa !25
  br label %82

82:                                               ; preds = %104, %77
  %83 = phi ptr [ %81, %77 ], [ %108, %104 ]
  store i32 0, ptr %78, align 4, !tbaa !31
  store i32 0, ptr %79, align 4, !tbaa !17
  %84 = load i32, ptr %23, align 8, !tbaa !30
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 1073741824)
  %86 = zext nneg i32 %85 to i64
  %87 = load i32, ptr %80, align 4, !tbaa !32
  %88 = tail call i64 @write(i32 noundef %87, ptr noundef %83, i64 noundef %86) #15
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load i32, ptr %78, align 4, !tbaa !31
  %93 = icmp eq i32 %92, 11
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  store i32 1, ptr %79, align 4, !tbaa !17
  %95 = load i32, ptr %78, align 4, !tbaa !31
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %92, %91 ], [ %95, %94 ]
  %98 = tail call ptr @strerror(i32 noundef %97) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %98) #15
  br label %1345

99:                                               ; preds = %82
  %100 = load i32, ptr %23, align 8, !tbaa !30
  %101 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %100, i32 %89), !nosanitize !33
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !33
  br i1 %102, label %103, label %104, !prof !34, !nosanitize !33

103:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

104:                                              ; preds = %99
  %105 = extractvalue { i32, i1 } %101, 0, !nosanitize !33
  store i32 %105, ptr %23, align 8, !tbaa !30
  %106 = load ptr, ptr %6, align 8, !tbaa !25
  %107 = and i64 %88, 2147483647
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 %107
  store ptr %108, ptr %6, align 8, !tbaa !25
  %109 = icmp eq i32 %105, 0
  br i1 %109, label %179, label %82, !llvm.loop !35

110:                                              ; preds = %70, %65
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %112 = load i32, ptr %111, align 8, !tbaa !37
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %23, align 8, !tbaa !30
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %179, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %111, align 8, !tbaa !37
  br label %119

119:                                              ; preds = %117, %110
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %126 = load i32, ptr %120, align 8, !tbaa !26
  br label %127

127:                                              ; preds = %177, %119
  %128 = phi i32 [ %126, %119 ], [ %174, %177 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %127
  %131 = load ptr, ptr %121, align 8, !tbaa !27
  %132 = load ptr, ptr %122, align 8, !tbaa !28
  %133 = icmp ugt ptr %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = tail call ptr @__errno_location() #17
  br label %136

136:                                              ; preds = %156, %134
  %137 = phi ptr [ %132, %134 ], [ %159, %156 ]
  %138 = phi ptr [ %131, %134 ], [ %160, %156 ]
  store i32 0, ptr %135, align 4, !tbaa !31
  store i32 0, ptr %123, align 4, !tbaa !17
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %137 to i64
  %141 = sub i64 %139, %140
  %142 = tail call i64 @llvm.smin.i64(i64 %141, i64 1073741824)
  %143 = and i64 %142, 4294967295
  %144 = load i32, ptr %124, align 4, !tbaa !32
  %145 = tail call i64 @write(i32 noundef %144, ptr noundef %137, i64 noundef %143) #15
  %146 = and i64 %145, 2147483648
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %136
  %149 = load i32, ptr %135, align 4, !tbaa !31
  %150 = icmp eq i32 %149, 11
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  store i32 1, ptr %123, align 4, !tbaa !17
  %152 = load i32, ptr %135, align 4, !tbaa !31
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi i32 [ %149, %148 ], [ %152, %151 ]
  %155 = tail call ptr @strerror(i32 noundef %154) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %155) #15
  br label %1345

156:                                              ; preds = %136
  %157 = load ptr, ptr %122, align 8, !tbaa !28
  %158 = and i64 %145, 2147483647
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  store ptr %159, ptr %122, align 8, !tbaa !28
  %160 = load ptr, ptr %121, align 8, !tbaa !27
  %161 = icmp ugt ptr %160, %159
  br i1 %161, label %136, label %162, !llvm.loop !38

162:                                              ; preds = %156
  %163 = load i32, ptr %120, align 8, !tbaa !26
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %130
  %166 = load i32, ptr %27, align 8, !tbaa !18
  store i32 %166, ptr %120, align 8, !tbaa !26
  %167 = load ptr, ptr %125, align 8, !tbaa !22
  store ptr %167, ptr %121, align 8, !tbaa !27
  store ptr %167, ptr %122, align 8, !tbaa !28
  br label %168

168:                                              ; preds = %165, %162, %127
  %169 = phi i32 [ %163, %162 ], [ %166, %165 ], [ %128, %127 ]
  %170 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %171 = icmp eq i32 %170, -2
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1345

173:                                              ; preds = %168
  %174 = load i32, ptr %120, align 8, !tbaa !26
  %175 = icmp ult i32 %169, %174
  br i1 %175, label %176, label %177, !prof !34, !nosanitize !33

176:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

177:                                              ; preds = %173
  %178 = icmp eq i32 %169, %174
  br i1 %178, label %179, label %127, !llvm.loop !39

179:                                              ; preds = %177, %114, %104, %74, %22
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %195 = load i64, ptr %19, align 8, !tbaa !29
  br label %196

196:                                              ; preds = %363, %179
  %197 = phi i64 [ %195, %179 ], [ %360, %363 ]
  %198 = phi i1 [ false, %179 ], [ true, %363 ]
  %199 = load i32, ptr %180, align 8, !tbaa !18
  %200 = zext i32 %199 to i64
  %201 = tail call i64 @llvm.smin.i64(i64 %197, i64 %200)
  %202 = trunc i64 %201 to i32
  %203 = load ptr, ptr %181, align 8, !tbaa !20
  br i1 %198, label %208, label %204

204:                                              ; preds = %196
  %205 = and i64 %201, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %203, i8 0, i64 %205, i1 false)
  %206 = load ptr, ptr %181, align 8, !tbaa !20
  %207 = load i32, ptr %180, align 8, !tbaa !18
  br label %208

208:                                              ; preds = %204, %196
  %209 = phi i32 [ %207, %204 ], [ %199, %196 ]
  %210 = phi ptr [ %206, %204 ], [ %203, %196 ]
  store i32 %202, ptr %23, align 8, !tbaa !30
  store ptr %210, ptr %6, align 8, !tbaa !25
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %244

212:                                              ; preds = %208
  %213 = load i32, ptr %183, align 4, !tbaa !19
  %214 = shl i32 %213, 1
  %215 = zext i32 %214 to i64
  %216 = tail call noalias ptr @malloc(i64 noundef %215) #16
  store ptr %216, ptr %181, align 8, !tbaa !20
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %343

219:                                              ; preds = %212
  %220 = load i32, ptr %182, align 8, !tbaa !21
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  store i32 %213, ptr %180, align 8, !tbaa !18
  br label %247

223:                                              ; preds = %219
  %224 = zext i32 %213 to i64
  %225 = tail call noalias ptr @malloc(i64 noundef %224) #16
  store ptr %225, ptr %184, align 8, !tbaa !22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  tail call void @free(ptr noundef nonnull %216) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %343

228:                                              ; preds = %223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %185, i8 0, i64 24, i1 false)
  %229 = load i32, ptr %186, align 8, !tbaa !23
  %230 = load i32, ptr %187, align 4, !tbaa !24
  %231 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %229, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %230, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %184, align 8, !tbaa !22
  tail call void @free(ptr noundef %234) #15
  %235 = load ptr, ptr %181, align 8, !tbaa !20
  tail call void @free(ptr noundef %235) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %343

236:                                              ; preds = %228
  store ptr null, ptr %6, align 8, !tbaa !25
  %237 = load i32, ptr %182, align 8, !tbaa !21
  %238 = load i32, ptr %183, align 4, !tbaa !19
  store i32 %238, ptr %180, align 8, !tbaa !18
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %23, align 8, !tbaa !30
  br label %247

242:                                              ; preds = %236
  store i32 %238, ptr %190, align 8, !tbaa !26
  %243 = load ptr, ptr %184, align 8, !tbaa !22
  store ptr %243, ptr %191, align 8, !tbaa !27
  store ptr %243, ptr %192, align 8, !tbaa !28
  br label %281

244:                                              ; preds = %208
  %245 = load i32, ptr %182, align 8, !tbaa !21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %281, label %247

247:                                              ; preds = %244, %240, %222
  %248 = phi ptr [ null, %240 ], [ %210, %244 ], [ %210, %222 ]
  %249 = phi i32 [ %241, %240 ], [ %202, %244 ], [ %202, %222 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %343, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #17
  br label %253

253:                                              ; preds = %275, %251
  %254 = phi ptr [ %248, %251 ], [ %279, %275 ]
  store i32 0, ptr %252, align 4, !tbaa !31
  store i32 0, ptr %188, align 4, !tbaa !17
  %255 = load i32, ptr %23, align 8, !tbaa !30
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = zext nneg i32 %256 to i64
  %258 = load i32, ptr %189, align 4, !tbaa !32
  %259 = tail call i64 @write(i32 noundef %258, ptr noundef %254, i64 noundef %257) #15
  %260 = trunc i64 %259 to i32
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %253
  %263 = load i32, ptr %252, align 4, !tbaa !31
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  store i32 1, ptr %188, align 4, !tbaa !17
  %266 = load i32, ptr %252, align 4, !tbaa !31
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi i32 [ %263, %262 ], [ %266, %265 ]
  %269 = tail call ptr @strerror(i32 noundef %268) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #15
  br label %343

270:                                              ; preds = %253
  %271 = load i32, ptr %23, align 8, !tbaa !30
  %272 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 %260), !nosanitize !33
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !33
  br i1 %273, label %274, label %275, !prof !34, !nosanitize !33

274:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

275:                                              ; preds = %270
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !33
  store i32 %276, ptr %23, align 8, !tbaa !30
  %277 = load ptr, ptr %6, align 8, !tbaa !25
  %278 = and i64 %259, 2147483647
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 %278
  store ptr %279, ptr %6, align 8, !tbaa !25
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %343, label %253, !llvm.loop !35

281:                                              ; preds = %244, %242
  %282 = load i32, ptr %193, align 8, !tbaa !37
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %23, align 8, !tbaa !30
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %343, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %193, align 8, !tbaa !37
  br label %289

289:                                              ; preds = %287, %281
  %290 = load i32, ptr %190, align 8, !tbaa !26
  br label %291

291:                                              ; preds = %341, %289
  %292 = phi i32 [ %290, %289 ], [ %338, %341 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %332

294:                                              ; preds = %291
  %295 = load ptr, ptr %191, align 8, !tbaa !27
  %296 = load ptr, ptr %192, align 8, !tbaa !28
  %297 = icmp ugt ptr %295, %296
  br i1 %297, label %298, label %329

298:                                              ; preds = %294
  %299 = tail call ptr @__errno_location() #17
  br label %300

300:                                              ; preds = %320, %298
  %301 = phi ptr [ %296, %298 ], [ %323, %320 ]
  %302 = phi ptr [ %295, %298 ], [ %324, %320 ]
  store i32 0, ptr %299, align 4, !tbaa !31
  store i32 0, ptr %188, align 4, !tbaa !17
  %303 = ptrtoint ptr %302 to i64
  %304 = ptrtoint ptr %301 to i64
  %305 = sub i64 %303, %304
  %306 = tail call i64 @llvm.smin.i64(i64 %305, i64 1073741824)
  %307 = and i64 %306, 4294967295
  %308 = load i32, ptr %189, align 4, !tbaa !32
  %309 = tail call i64 @write(i32 noundef %308, ptr noundef %301, i64 noundef %307) #15
  %310 = and i64 %309, 2147483648
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %300
  %313 = load i32, ptr %299, align 4, !tbaa !31
  %314 = icmp eq i32 %313, 11
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  store i32 1, ptr %188, align 4, !tbaa !17
  %316 = load i32, ptr %299, align 4, !tbaa !31
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i32 [ %313, %312 ], [ %316, %315 ]
  %319 = tail call ptr @strerror(i32 noundef %318) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %319) #15
  br label %343

320:                                              ; preds = %300
  %321 = load ptr, ptr %192, align 8, !tbaa !28
  %322 = and i64 %309, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %192, align 8, !tbaa !28
  %324 = load ptr, ptr %191, align 8, !tbaa !27
  %325 = icmp ugt ptr %324, %323
  br i1 %325, label %300, label %326, !llvm.loop !38

326:                                              ; preds = %320
  %327 = load i32, ptr %190, align 8, !tbaa !26
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326, %294
  %330 = load i32, ptr %180, align 8, !tbaa !18
  store i32 %330, ptr %190, align 8, !tbaa !26
  %331 = load ptr, ptr %184, align 8, !tbaa !22
  store ptr %331, ptr %191, align 8, !tbaa !27
  store ptr %331, ptr %192, align 8, !tbaa !28
  br label %332

332:                                              ; preds = %329, %326, %291
  %333 = phi i32 [ %327, %326 ], [ %330, %329 ], [ %292, %291 ]
  %334 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %343

337:                                              ; preds = %332
  %338 = load i32, ptr %190, align 8, !tbaa !26
  %339 = icmp ult i32 %333, %338
  br i1 %339, label %340, label %341, !prof !34, !nosanitize !33

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

341:                                              ; preds = %337
  %342 = icmp eq i32 %333, %338
  br i1 %342, label %343, label %291, !llvm.loop !39

343:                                              ; preds = %341, %336, %317, %284, %275, %267, %247, %233, %227, %218
  %344 = phi i1 [ true, %267 ], [ true, %317 ], [ true, %336 ], [ false, %284 ], [ true, %218 ], [ true, %227 ], [ true, %233 ], [ false, %247 ], [ false, %341 ], [ false, %275 ]
  %345 = load i32, ptr %23, align 8, !tbaa !30
  %346 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %202, i32 %345), !nosanitize !33
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !33
  br i1 %347, label %348, label %349, !prof !34, !nosanitize !33

348:                                              ; preds = %356, %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

349:                                              ; preds = %343
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !33
  %351 = zext i32 %350 to i64
  %352 = load i64, ptr %194, align 8, !tbaa !40
  %353 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %352, i64 %351), !nosanitize !33
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !33
  br i1 %354, label %355, label %356, !prof !34, !nosanitize !33

355:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

356:                                              ; preds = %349
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !33
  store i64 %357, ptr %194, align 8, !tbaa !40
  %358 = load i64, ptr %19, align 8, !tbaa !29
  %359 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %358, i64 %351), !nosanitize !33
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !33
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !33
  br i1 %361, label %348, label %362, !prof !34, !nosanitize !33

362:                                              ; preds = %356
  store i64 %360, ptr %19, align 8, !tbaa !29
  br i1 %344, label %1345, label %363

363:                                              ; preds = %362
  %364 = icmp eq i64 %360, 0
  br i1 %364, label %365, label %196, !llvm.loop !41

365:                                              ; preds = %363, %18
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %367 = load i32, ptr %366, align 8, !tbaa !18
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %408, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %371 = load i32, ptr %370, align 8, !tbaa !30
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %377, label %373

373:                                              ; preds = %369
  %374 = load ptr, ptr %6, align 8, !tbaa !25
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %376 = load ptr, ptr %375, align 8, !tbaa !20
  br label %380

377:                                              ; preds = %369
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %379 = load ptr, ptr %378, align 8, !tbaa !20
  store ptr %379, ptr %6, align 8, !tbaa !25
  br label %380

380:                                              ; preds = %377, %373
  %381 = phi ptr [ %376, %373 ], [ %379, %377 ]
  %382 = phi ptr [ %374, %373 ], [ %379, %377 ]
  %383 = zext i32 %371 to i64
  %384 = getelementptr inbounds nuw i8, ptr %382, i64 %383
  %385 = ptrtoint ptr %384 to i64
  %386 = ptrtoint ptr %381 to i64
  %387 = sub i64 %385, %386
  %388 = trunc i64 %387 to i32
  %389 = icmp ugt i32 %367, %388
  %390 = trunc i32 %1 to i8
  br i1 %389, label %391, label %407

391:                                              ; preds = %380
  %392 = and i64 %387, 4294967295
  %393 = getelementptr inbounds nuw i8, ptr %381, i64 %392
  store i8 %390, ptr %393, align 1, !tbaa !45
  %394 = load i32, ptr %370, align 8, !tbaa !30
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 1), !nosanitize !33
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !33
  br i1 %396, label %397, label %398, !prof !34, !nosanitize !33

397:                                              ; preds = %398, %391
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !33
  store i32 %399, ptr %370, align 8, !tbaa !30
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %401 = load i64, ptr %400, align 8, !tbaa !40
  %402 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !33
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !33
  br i1 %403, label %397, label %404, !prof !34, !nosanitize !33

404:                                              ; preds = %398
  %405 = extractvalue { i64, i1 } %402, 0, !nosanitize !33
  store i64 %405, ptr %400, align 8, !tbaa !40
  %406 = and i32 %1, 255
  br label %1345

407:                                              ; preds = %380
  store i8 %390, ptr %3, align 1, !tbaa !45
  br label %449

408:                                              ; preds = %365
  %409 = trunc i32 %1 to i8
  store i8 %409, ptr %3, align 1, !tbaa !45
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %411 = load i32, ptr %410, align 4, !tbaa !19
  %412 = shl i32 %411, 1
  %413 = zext i32 %412 to i64
  %414 = tail call noalias ptr @malloc(i64 noundef %413) #16
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %414, ptr %415, align 8, !tbaa !20
  %416 = icmp eq ptr %414, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %408
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

418:                                              ; preds = %408
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %420 = load i32, ptr %419, align 8, !tbaa !21
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %418
  store i32 %411, ptr %366, align 8, !tbaa !18
  br label %449

423:                                              ; preds = %418
  %424 = zext i32 %411 to i64
  %425 = tail call noalias ptr @malloc(i64 noundef %424) #16
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %425, ptr %426, align 8, !tbaa !22
  %427 = icmp eq ptr %425, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %423
  tail call void @free(ptr noundef nonnull %414) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

429:                                              ; preds = %423
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %430, i8 0, i64 24, i1 false)
  %432 = load i32, ptr %431, align 8, !tbaa !23
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %434 = load i32, ptr %433, align 4, !tbaa !24
  %435 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %432, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %434, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %429
  %438 = load ptr, ptr %426, align 8, !tbaa !22
  tail call void @free(ptr noundef %438) #15
  %439 = load ptr, ptr %415, align 8, !tbaa !20
  tail call void @free(ptr noundef %439) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

440:                                              ; preds = %429
  store ptr null, ptr %6, align 8, !tbaa !25
  %441 = load i32, ptr %419, align 8, !tbaa !21
  %442 = load i32, ptr %410, align 4, !tbaa !19
  store i32 %442, ptr %366, align 8, !tbaa !18
  %443 = icmp eq i32 %441, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %440
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %442, ptr %445, align 8, !tbaa !26
  %446 = load ptr, ptr %426, align 8, !tbaa !22
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %446, ptr %447, align 8, !tbaa !27
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %446, ptr %448, align 8, !tbaa !28
  br label %449

449:                                              ; preds = %444, %440, %422, %407
  %450 = phi i32 [ %442, %444 ], [ %442, %440 ], [ %411, %422 ], [ %367, %407 ]
  %451 = load i64, ptr %19, align 8, !tbaa !29
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %795, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %455 = load i32, ptr %454, align 8, !tbaa !30
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %608, label %457

457:                                              ; preds = %453
  %458 = icmp eq i32 %450, 0
  br i1 %458, label %459, label %499

459:                                              ; preds = %457
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %461 = load i32, ptr %460, align 4, !tbaa !19
  %462 = shl i32 %461, 1
  %463 = zext i32 %462 to i64
  %464 = tail call noalias ptr @malloc(i64 noundef %463) #16
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %464, ptr %465, align 8, !tbaa !20
  %466 = icmp eq ptr %464, null
  br i1 %466, label %467, label %468

467:                                              ; preds = %459
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

468:                                              ; preds = %459
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %470 = load i32, ptr %469, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %468
  store i32 %461, ptr %366, align 8, !tbaa !18
  br label %506

473:                                              ; preds = %468
  %474 = zext i32 %461 to i64
  %475 = tail call noalias ptr @malloc(i64 noundef %474) #16
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %475, ptr %476, align 8, !tbaa !22
  %477 = icmp eq ptr %475, null
  br i1 %477, label %478, label %479

478:                                              ; preds = %473
  tail call void @free(ptr noundef nonnull %464) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

479:                                              ; preds = %473
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %480, i8 0, i64 24, i1 false)
  %482 = load i32, ptr %481, align 8, !tbaa !23
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %484 = load i32, ptr %483, align 4, !tbaa !24
  %485 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %482, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %484, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %479
  %488 = load ptr, ptr %476, align 8, !tbaa !22
  tail call void @free(ptr noundef %488) #15
  %489 = load ptr, ptr %465, align 8, !tbaa !20
  tail call void @free(ptr noundef %489) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

490:                                              ; preds = %479
  store ptr null, ptr %6, align 8, !tbaa !25
  %491 = load i32, ptr %469, align 8, !tbaa !21
  %492 = load i32, ptr %460, align 4, !tbaa !19
  store i32 %492, ptr %366, align 8, !tbaa !18
  %493 = icmp eq i32 %491, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %490
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %492, ptr %495, align 8, !tbaa !26
  %496 = load ptr, ptr %476, align 8, !tbaa !22
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %496, ptr %497, align 8, !tbaa !27
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %496, ptr %498, align 8, !tbaa !28
  br label %539

499:                                              ; preds = %457
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %501 = load i32, ptr %500, align 8, !tbaa !21
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %539, label %506

503:                                              ; preds = %490
  %504 = load i32, ptr %454, align 8, !tbaa !30
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %608, label %506

506:                                              ; preds = %503, %499, %472
  %507 = tail call ptr @__errno_location() #17
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %510 = load ptr, ptr %6, align 8, !tbaa !25
  br label %511

511:                                              ; preds = %533, %506
  %512 = phi ptr [ %510, %506 ], [ %537, %533 ]
  store i32 0, ptr %507, align 4, !tbaa !31
  store i32 0, ptr %508, align 4, !tbaa !17
  %513 = load i32, ptr %454, align 8, !tbaa !30
  %514 = tail call i32 @llvm.umin.i32(i32 %513, i32 1073741824)
  %515 = zext nneg i32 %514 to i64
  %516 = load i32, ptr %509, align 4, !tbaa !32
  %517 = tail call i64 @write(i32 noundef %516, ptr noundef %512, i64 noundef %515) #15
  %518 = trunc i64 %517 to i32
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %511
  %521 = load i32, ptr %507, align 4, !tbaa !31
  %522 = icmp eq i32 %521, 11
  br i1 %522, label %523, label %525

523:                                              ; preds = %520
  store i32 1, ptr %508, align 4, !tbaa !17
  %524 = load i32, ptr %507, align 4, !tbaa !31
  br label %525

525:                                              ; preds = %523, %520
  %526 = phi i32 [ %521, %520 ], [ %524, %523 ]
  %527 = tail call ptr @strerror(i32 noundef %526) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %527) #15
  br label %1345

528:                                              ; preds = %511
  %529 = load i32, ptr %454, align 8, !tbaa !30
  %530 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %518), !nosanitize !33
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !33
  br i1 %531, label %532, label %533, !prof !34, !nosanitize !33

532:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

533:                                              ; preds = %528
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !33
  store i32 %534, ptr %454, align 8, !tbaa !30
  %535 = load ptr, ptr %6, align 8, !tbaa !25
  %536 = and i64 %517, 2147483647
  %537 = getelementptr inbounds nuw i8, ptr %535, i64 %536
  store ptr %537, ptr %6, align 8, !tbaa !25
  %538 = icmp eq i32 %534, 0
  br i1 %538, label %608, label %511, !llvm.loop !35

539:                                              ; preds = %499, %494
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %541 = load i32, ptr %540, align 8, !tbaa !37
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %548, label %543

543:                                              ; preds = %539
  %544 = load i32, ptr %454, align 8, !tbaa !30
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %608, label %546

546:                                              ; preds = %543
  %547 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %540, align 8, !tbaa !37
  br label %548

548:                                              ; preds = %546, %539
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %551 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %553 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %555 = load i32, ptr %549, align 8, !tbaa !26
  br label %556

556:                                              ; preds = %606, %548
  %557 = phi i32 [ %555, %548 ], [ %603, %606 ]
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %597

559:                                              ; preds = %556
  %560 = load ptr, ptr %550, align 8, !tbaa !27
  %561 = load ptr, ptr %551, align 8, !tbaa !28
  %562 = icmp ugt ptr %560, %561
  br i1 %562, label %563, label %594

563:                                              ; preds = %559
  %564 = tail call ptr @__errno_location() #17
  br label %565

565:                                              ; preds = %585, %563
  %566 = phi ptr [ %561, %563 ], [ %588, %585 ]
  %567 = phi ptr [ %560, %563 ], [ %589, %585 ]
  store i32 0, ptr %564, align 4, !tbaa !31
  store i32 0, ptr %552, align 4, !tbaa !17
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %566 to i64
  %570 = sub i64 %568, %569
  %571 = tail call i64 @llvm.smin.i64(i64 %570, i64 1073741824)
  %572 = and i64 %571, 4294967295
  %573 = load i32, ptr %553, align 4, !tbaa !32
  %574 = tail call i64 @write(i32 noundef %573, ptr noundef %566, i64 noundef %572) #15
  %575 = and i64 %574, 2147483648
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %585, label %577

577:                                              ; preds = %565
  %578 = load i32, ptr %564, align 4, !tbaa !31
  %579 = icmp eq i32 %578, 11
  br i1 %579, label %580, label %582

580:                                              ; preds = %577
  store i32 1, ptr %552, align 4, !tbaa !17
  %581 = load i32, ptr %564, align 4, !tbaa !31
  br label %582

582:                                              ; preds = %580, %577
  %583 = phi i32 [ %578, %577 ], [ %581, %580 ]
  %584 = tail call ptr @strerror(i32 noundef %583) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %584) #15
  br label %1345

585:                                              ; preds = %565
  %586 = load ptr, ptr %551, align 8, !tbaa !28
  %587 = and i64 %574, 2147483647
  %588 = getelementptr inbounds nuw i8, ptr %586, i64 %587
  store ptr %588, ptr %551, align 8, !tbaa !28
  %589 = load ptr, ptr %550, align 8, !tbaa !27
  %590 = icmp ugt ptr %589, %588
  br i1 %590, label %565, label %591, !llvm.loop !38

591:                                              ; preds = %585
  %592 = load i32, ptr %549, align 8, !tbaa !26
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591, %559
  %595 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %595, ptr %549, align 8, !tbaa !26
  %596 = load ptr, ptr %554, align 8, !tbaa !22
  store ptr %596, ptr %550, align 8, !tbaa !27
  store ptr %596, ptr %551, align 8, !tbaa !28
  br label %597

597:                                              ; preds = %594, %591, %556
  %598 = phi i32 [ %592, %591 ], [ %595, %594 ], [ %557, %556 ]
  %599 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %600 = icmp eq i32 %599, -2
  br i1 %600, label %601, label %602

601:                                              ; preds = %597
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1345

602:                                              ; preds = %597
  %603 = load i32, ptr %549, align 8, !tbaa !26
  %604 = icmp ult i32 %598, %603
  br i1 %604, label %605, label %606, !prof !34, !nosanitize !33

605:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

606:                                              ; preds = %602
  %607 = icmp eq i32 %598, %603
  br i1 %607, label %608, label %556, !llvm.loop !39

608:                                              ; preds = %606, %543, %533, %503, %453
  %609 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %613 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %618 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %623 = load i64, ptr %19, align 8, !tbaa !29
  br label %624

624:                                              ; preds = %791, %608
  %625 = phi i64 [ %623, %608 ], [ %788, %791 ]
  %626 = phi i1 [ false, %608 ], [ true, %791 ]
  %627 = load i32, ptr %366, align 8, !tbaa !18
  %628 = zext i32 %627 to i64
  %629 = tail call i64 @llvm.smin.i64(i64 %625, i64 %628)
  %630 = trunc i64 %629 to i32
  %631 = load ptr, ptr %609, align 8, !tbaa !20
  br i1 %626, label %636, label %632

632:                                              ; preds = %624
  %633 = and i64 %629, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %631, i8 0, i64 %633, i1 false)
  %634 = load ptr, ptr %609, align 8, !tbaa !20
  %635 = load i32, ptr %366, align 8, !tbaa !18
  br label %636

636:                                              ; preds = %632, %624
  %637 = phi i32 [ %635, %632 ], [ %627, %624 ]
  %638 = phi ptr [ %634, %632 ], [ %631, %624 ]
  store i32 %630, ptr %454, align 8, !tbaa !30
  store ptr %638, ptr %6, align 8, !tbaa !25
  %639 = icmp eq i32 %637, 0
  br i1 %639, label %640, label %672

640:                                              ; preds = %636
  %641 = load i32, ptr %611, align 4, !tbaa !19
  %642 = shl i32 %641, 1
  %643 = zext i32 %642 to i64
  %644 = tail call noalias ptr @malloc(i64 noundef %643) #16
  store ptr %644, ptr %609, align 8, !tbaa !20
  %645 = icmp eq ptr %644, null
  br i1 %645, label %646, label %647

646:                                              ; preds = %640
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %771

647:                                              ; preds = %640
  %648 = load i32, ptr %610, align 8, !tbaa !21
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %647
  store i32 %641, ptr %366, align 8, !tbaa !18
  br label %675

651:                                              ; preds = %647
  %652 = zext i32 %641 to i64
  %653 = tail call noalias ptr @malloc(i64 noundef %652) #16
  store ptr %653, ptr %612, align 8, !tbaa !22
  %654 = icmp eq ptr %653, null
  br i1 %654, label %655, label %656

655:                                              ; preds = %651
  tail call void @free(ptr noundef nonnull %644) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %771

656:                                              ; preds = %651
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %613, i8 0, i64 24, i1 false)
  %657 = load i32, ptr %614, align 8, !tbaa !23
  %658 = load i32, ptr %615, align 4, !tbaa !24
  %659 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %657, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %658, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %664, label %661

661:                                              ; preds = %656
  %662 = load ptr, ptr %612, align 8, !tbaa !22
  tail call void @free(ptr noundef %662) #15
  %663 = load ptr, ptr %609, align 8, !tbaa !20
  tail call void @free(ptr noundef %663) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %771

664:                                              ; preds = %656
  store ptr null, ptr %6, align 8, !tbaa !25
  %665 = load i32, ptr %610, align 8, !tbaa !21
  %666 = load i32, ptr %611, align 4, !tbaa !19
  store i32 %666, ptr %366, align 8, !tbaa !18
  %667 = icmp eq i32 %665, 0
  br i1 %667, label %670, label %668

668:                                              ; preds = %664
  %669 = load i32, ptr %454, align 8, !tbaa !30
  br label %675

670:                                              ; preds = %664
  store i32 %666, ptr %618, align 8, !tbaa !26
  %671 = load ptr, ptr %612, align 8, !tbaa !22
  store ptr %671, ptr %619, align 8, !tbaa !27
  store ptr %671, ptr %620, align 8, !tbaa !28
  br label %709

672:                                              ; preds = %636
  %673 = load i32, ptr %610, align 8, !tbaa !21
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %709, label %675

675:                                              ; preds = %672, %668, %650
  %676 = phi ptr [ null, %668 ], [ %638, %672 ], [ %638, %650 ]
  %677 = phi i32 [ %669, %668 ], [ %630, %672 ], [ %630, %650 ]
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %771, label %679

679:                                              ; preds = %675
  %680 = tail call ptr @__errno_location() #17
  br label %681

681:                                              ; preds = %703, %679
  %682 = phi ptr [ %676, %679 ], [ %707, %703 ]
  store i32 0, ptr %680, align 4, !tbaa !31
  store i32 0, ptr %616, align 4, !tbaa !17
  %683 = load i32, ptr %454, align 8, !tbaa !30
  %684 = tail call i32 @llvm.umin.i32(i32 %683, i32 1073741824)
  %685 = zext nneg i32 %684 to i64
  %686 = load i32, ptr %617, align 4, !tbaa !32
  %687 = tail call i64 @write(i32 noundef %686, ptr noundef %682, i64 noundef %685) #15
  %688 = trunc i64 %687 to i32
  %689 = icmp slt i32 %688, 0
  br i1 %689, label %690, label %698

690:                                              ; preds = %681
  %691 = load i32, ptr %680, align 4, !tbaa !31
  %692 = icmp eq i32 %691, 11
  br i1 %692, label %693, label %695

693:                                              ; preds = %690
  store i32 1, ptr %616, align 4, !tbaa !17
  %694 = load i32, ptr %680, align 4, !tbaa !31
  br label %695

695:                                              ; preds = %693, %690
  %696 = phi i32 [ %691, %690 ], [ %694, %693 ]
  %697 = tail call ptr @strerror(i32 noundef %696) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %697) #15
  br label %771

698:                                              ; preds = %681
  %699 = load i32, ptr %454, align 8, !tbaa !30
  %700 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %699, i32 %688), !nosanitize !33
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !33
  br i1 %701, label %702, label %703, !prof !34, !nosanitize !33

702:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

703:                                              ; preds = %698
  %704 = extractvalue { i32, i1 } %700, 0, !nosanitize !33
  store i32 %704, ptr %454, align 8, !tbaa !30
  %705 = load ptr, ptr %6, align 8, !tbaa !25
  %706 = and i64 %687, 2147483647
  %707 = getelementptr inbounds nuw i8, ptr %705, i64 %706
  store ptr %707, ptr %6, align 8, !tbaa !25
  %708 = icmp eq i32 %704, 0
  br i1 %708, label %771, label %681, !llvm.loop !35

709:                                              ; preds = %672, %670
  %710 = load i32, ptr %621, align 8, !tbaa !37
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %717, label %712

712:                                              ; preds = %709
  %713 = load i32, ptr %454, align 8, !tbaa !30
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %771, label %715

715:                                              ; preds = %712
  %716 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %621, align 8, !tbaa !37
  br label %717

717:                                              ; preds = %715, %709
  %718 = load i32, ptr %618, align 8, !tbaa !26
  br label %719

719:                                              ; preds = %769, %717
  %720 = phi i32 [ %718, %717 ], [ %766, %769 ]
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %760

722:                                              ; preds = %719
  %723 = load ptr, ptr %619, align 8, !tbaa !27
  %724 = load ptr, ptr %620, align 8, !tbaa !28
  %725 = icmp ugt ptr %723, %724
  br i1 %725, label %726, label %757

726:                                              ; preds = %722
  %727 = tail call ptr @__errno_location() #17
  br label %728

728:                                              ; preds = %748, %726
  %729 = phi ptr [ %724, %726 ], [ %751, %748 ]
  %730 = phi ptr [ %723, %726 ], [ %752, %748 ]
  store i32 0, ptr %727, align 4, !tbaa !31
  store i32 0, ptr %616, align 4, !tbaa !17
  %731 = ptrtoint ptr %730 to i64
  %732 = ptrtoint ptr %729 to i64
  %733 = sub i64 %731, %732
  %734 = tail call i64 @llvm.smin.i64(i64 %733, i64 1073741824)
  %735 = and i64 %734, 4294967295
  %736 = load i32, ptr %617, align 4, !tbaa !32
  %737 = tail call i64 @write(i32 noundef %736, ptr noundef %729, i64 noundef %735) #15
  %738 = and i64 %737, 2147483648
  %739 = icmp eq i64 %738, 0
  br i1 %739, label %748, label %740

740:                                              ; preds = %728
  %741 = load i32, ptr %727, align 4, !tbaa !31
  %742 = icmp eq i32 %741, 11
  br i1 %742, label %743, label %745

743:                                              ; preds = %740
  store i32 1, ptr %616, align 4, !tbaa !17
  %744 = load i32, ptr %727, align 4, !tbaa !31
  br label %745

745:                                              ; preds = %743, %740
  %746 = phi i32 [ %741, %740 ], [ %744, %743 ]
  %747 = tail call ptr @strerror(i32 noundef %746) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %747) #15
  br label %771

748:                                              ; preds = %728
  %749 = load ptr, ptr %620, align 8, !tbaa !28
  %750 = and i64 %737, 2147483647
  %751 = getelementptr inbounds nuw i8, ptr %749, i64 %750
  store ptr %751, ptr %620, align 8, !tbaa !28
  %752 = load ptr, ptr %619, align 8, !tbaa !27
  %753 = icmp ugt ptr %752, %751
  br i1 %753, label %728, label %754, !llvm.loop !38

754:                                              ; preds = %748
  %755 = load i32, ptr %618, align 8, !tbaa !26
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %754, %722
  %758 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %758, ptr %618, align 8, !tbaa !26
  %759 = load ptr, ptr %612, align 8, !tbaa !22
  store ptr %759, ptr %619, align 8, !tbaa !27
  store ptr %759, ptr %620, align 8, !tbaa !28
  br label %760

760:                                              ; preds = %757, %754, %719
  %761 = phi i32 [ %755, %754 ], [ %758, %757 ], [ %720, %719 ]
  %762 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %763 = icmp eq i32 %762, -2
  br i1 %763, label %764, label %765

764:                                              ; preds = %760
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %771

765:                                              ; preds = %760
  %766 = load i32, ptr %618, align 8, !tbaa !26
  %767 = icmp ult i32 %761, %766
  br i1 %767, label %768, label %769, !prof !34, !nosanitize !33

768:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

769:                                              ; preds = %765
  %770 = icmp eq i32 %761, %766
  br i1 %770, label %771, label %719, !llvm.loop !39

771:                                              ; preds = %769, %764, %745, %712, %703, %695, %675, %661, %655, %646
  %772 = phi i1 [ true, %695 ], [ true, %745 ], [ true, %764 ], [ false, %712 ], [ true, %646 ], [ true, %655 ], [ true, %661 ], [ false, %675 ], [ false, %769 ], [ false, %703 ]
  %773 = load i32, ptr %454, align 8, !tbaa !30
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %773), !nosanitize !33
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !33
  br i1 %775, label %776, label %777, !prof !34, !nosanitize !33

776:                                              ; preds = %784, %771
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

777:                                              ; preds = %771
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !33
  %779 = zext i32 %778 to i64
  %780 = load i64, ptr %622, align 8, !tbaa !40
  %781 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %780, i64 %779), !nosanitize !33
  %782 = extractvalue { i64, i1 } %781, 1, !nosanitize !33
  br i1 %782, label %783, label %784, !prof !34, !nosanitize !33

783:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

784:                                              ; preds = %777
  %785 = extractvalue { i64, i1 } %781, 0, !nosanitize !33
  store i64 %785, ptr %622, align 8, !tbaa !40
  %786 = load i64, ptr %19, align 8, !tbaa !29
  %787 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %786, i64 %779), !nosanitize !33
  %788 = extractvalue { i64, i1 } %787, 0, !nosanitize !33
  %789 = extractvalue { i64, i1 } %787, 1, !nosanitize !33
  br i1 %789, label %776, label %790, !prof !34, !nosanitize !33

790:                                              ; preds = %784
  store i64 %788, ptr %19, align 8, !tbaa !29
  br i1 %772, label %1345, label %791

791:                                              ; preds = %790
  %792 = icmp eq i64 %788, 0
  br i1 %792, label %793, label %624, !llvm.loop !41

793:                                              ; preds = %791
  %794 = load i32, ptr %366, align 8, !tbaa !18
  br label %795

795:                                              ; preds = %793, %449
  %796 = phi i32 [ %794, %793 ], [ %450, %449 ]
  %797 = icmp ugt i32 %796, 1
  %798 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %797, label %799, label %1004

799:                                              ; preds = %795
  %800 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %802 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %803 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %804 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %805 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %806 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %807 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %808 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %809 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %810 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %811 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %812 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %813 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %814

814:                                              ; preds = %940, %799
  %815 = phi i64 [ 1, %799 ], [ %857, %940 ]
  %816 = phi ptr [ %3, %799 ], [ %855, %940 ]
  %817 = load i32, ptr %798, align 8, !tbaa !42
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %822, label %819

819:                                              ; preds = %814
  %820 = load ptr, ptr %6, align 8, !tbaa !43
  %821 = load ptr, ptr %800, align 8, !tbaa !20
  br label %824

822:                                              ; preds = %814
  %823 = load ptr, ptr %800, align 8, !tbaa !20
  store ptr %823, ptr %6, align 8, !tbaa !43
  br label %824

824:                                              ; preds = %822, %819
  %825 = phi ptr [ %821, %819 ], [ %823, %822 ]
  %826 = phi ptr [ %820, %819 ], [ %823, %822 ]
  %827 = zext i32 %817 to i64
  %828 = getelementptr inbounds nuw i8, ptr %826, i64 %827
  %829 = ptrtoint ptr %828 to i64
  %830 = ptrtoint ptr %825 to i64
  %831 = sub i64 %829, %830
  %832 = trunc i64 %831 to i32
  %833 = load i32, ptr %366, align 8, !tbaa !18
  %834 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %833, i32 %832), !nosanitize !33
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !33
  br i1 %835, label %836, label %837, !prof !34, !nosanitize !33

836:                                              ; preds = %824
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

837:                                              ; preds = %824
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !33
  %839 = zext i32 %838 to i64
  %840 = tail call i64 @llvm.umin.i64(i64 %815, i64 %839)
  %841 = trunc nuw i64 %840 to i32
  %842 = and i64 %831, 4294967295
  %843 = getelementptr inbounds nuw i8, ptr %825, i64 %842
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %843, ptr align 1 %816, i64 %840, i1 false)
  %844 = load i32, ptr %798, align 8, !tbaa !42
  %845 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %844, i32 %841), !nosanitize !33
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !33
  br i1 %846, label %847, label %848, !prof !34, !nosanitize !33

847:                                              ; preds = %1314, %848, %837
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

848:                                              ; preds = %837
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !33
  store i32 %849, ptr %798, align 8, !tbaa !42
  %850 = load i64, ptr %801, align 8, !tbaa !40
  %851 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %850, i64 %840), !nosanitize !33
  %852 = extractvalue { i64, i1 } %851, 1, !nosanitize !33
  br i1 %852, label %847, label %853, !prof !34, !nosanitize !33

853:                                              ; preds = %848
  %854 = extractvalue { i64, i1 } %851, 0, !nosanitize !33
  store i64 %854, ptr %801, align 8, !tbaa !40
  %855 = getelementptr inbounds nuw i8, ptr %816, i64 %840
  %856 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %815, i64 %840), !nosanitize !33
  %857 = extractvalue { i64, i1 } %856, 0, !nosanitize !33
  %858 = extractvalue { i64, i1 } %856, 1, !nosanitize !33
  br i1 false, label %859, label %860, !prof !34, !nosanitize !33

859:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

860:                                              ; preds = %853
  %861 = icmp eq i64 %857, 0
  br i1 %861, label %1336, label %862

862:                                              ; preds = %860
  %863 = load i32, ptr %366, align 8, !tbaa !18
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %897

865:                                              ; preds = %862
  %866 = load i32, ptr %803, align 4, !tbaa !19
  %867 = shl i32 %866, 1
  %868 = zext i32 %867 to i64
  %869 = tail call noalias ptr @malloc(i64 noundef %868) #16
  store ptr %869, ptr %800, align 8, !tbaa !20
  %870 = icmp eq ptr %869, null
  br i1 %870, label %871, label %872

871:                                              ; preds = %865
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %997

872:                                              ; preds = %865
  %873 = load i32, ptr %802, align 8, !tbaa !21
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %876, label %875

875:                                              ; preds = %872
  store i32 %866, ptr %366, align 8, !tbaa !18
  br label %900

876:                                              ; preds = %872
  %877 = zext i32 %866 to i64
  %878 = tail call noalias ptr @malloc(i64 noundef %877) #16
  store ptr %878, ptr %804, align 8, !tbaa !22
  %879 = icmp eq ptr %878, null
  br i1 %879, label %880, label %881

880:                                              ; preds = %876
  tail call void @free(ptr noundef nonnull %869) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %997

881:                                              ; preds = %876
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %805, i8 0, i64 24, i1 false)
  %882 = load i32, ptr %806, align 8, !tbaa !23
  %883 = load i32, ptr %807, align 4, !tbaa !24
  %884 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %882, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %883, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %889, label %886

886:                                              ; preds = %881
  %887 = load ptr, ptr %804, align 8, !tbaa !22
  tail call void @free(ptr noundef %887) #15
  %888 = load ptr, ptr %800, align 8, !tbaa !20
  tail call void @free(ptr noundef %888) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %997

889:                                              ; preds = %881
  store ptr null, ptr %6, align 8, !tbaa !25
  %890 = load i32, ptr %802, align 8, !tbaa !21
  %891 = load i32, ptr %803, align 4, !tbaa !19
  store i32 %891, ptr %366, align 8, !tbaa !18
  %892 = icmp eq i32 %890, 0
  br i1 %892, label %895, label %893

893:                                              ; preds = %889
  %894 = load i32, ptr %798, align 8, !tbaa !30
  br label %900

895:                                              ; preds = %889
  store i32 %891, ptr %810, align 8, !tbaa !26
  %896 = load ptr, ptr %804, align 8, !tbaa !22
  store ptr %896, ptr %811, align 8, !tbaa !27
  store ptr %896, ptr %812, align 8, !tbaa !28
  br label %934

897:                                              ; preds = %862
  %898 = load i32, ptr %802, align 8, !tbaa !21
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %934, label %900

900:                                              ; preds = %897, %893, %875
  %901 = phi i32 [ %894, %893 ], [ %849, %897 ], [ %849, %875 ]
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %940, label %903

903:                                              ; preds = %900
  %904 = tail call ptr @__errno_location() #17
  %905 = load ptr, ptr %6, align 8, !tbaa !25
  br label %906

906:                                              ; preds = %928, %903
  %907 = phi ptr [ %905, %903 ], [ %932, %928 ]
  store i32 0, ptr %904, align 4, !tbaa !31
  store i32 0, ptr %808, align 4, !tbaa !17
  %908 = load i32, ptr %798, align 8, !tbaa !30
  %909 = tail call i32 @llvm.umin.i32(i32 %908, i32 1073741824)
  %910 = zext nneg i32 %909 to i64
  %911 = load i32, ptr %809, align 4, !tbaa !32
  %912 = tail call i64 @write(i32 noundef %911, ptr noundef %907, i64 noundef %910) #15
  %913 = trunc i64 %912 to i32
  %914 = icmp slt i32 %913, 0
  br i1 %914, label %915, label %923

915:                                              ; preds = %906
  %916 = load i32, ptr %904, align 4, !tbaa !31
  %917 = icmp eq i32 %916, 11
  br i1 %917, label %918, label %920

918:                                              ; preds = %915
  store i32 1, ptr %808, align 4, !tbaa !17
  %919 = load i32, ptr %904, align 4, !tbaa !31
  br label %920

920:                                              ; preds = %918, %915
  %921 = phi i32 [ %916, %915 ], [ %919, %918 ]
  %922 = tail call ptr @strerror(i32 noundef %921) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %922) #15
  br label %997

923:                                              ; preds = %906
  %924 = load i32, ptr %798, align 8, !tbaa !30
  %925 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %924, i32 %913), !nosanitize !33
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !33
  br i1 %926, label %927, label %928, !prof !34, !nosanitize !33

927:                                              ; preds = %923
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

928:                                              ; preds = %923
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !33
  store i32 %929, ptr %798, align 8, !tbaa !30
  %930 = load ptr, ptr %6, align 8, !tbaa !25
  %931 = and i64 %912, 2147483647
  %932 = getelementptr inbounds nuw i8, ptr %930, i64 %931
  store ptr %932, ptr %6, align 8, !tbaa !25
  %933 = icmp eq i32 %929, 0
  br i1 %933, label %940, label %906, !llvm.loop !35

934:                                              ; preds = %897, %895
  %935 = load i32, ptr %813, align 8, !tbaa !37
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %943, label %937

937:                                              ; preds = %934
  %938 = load i32, ptr %798, align 8, !tbaa !30
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %941

940:                                              ; preds = %995, %937, %928, %900
  br label %814

941:                                              ; preds = %937
  %942 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %813, align 8, !tbaa !37
  br label %943

943:                                              ; preds = %941, %934
  %944 = load i32, ptr %810, align 8, !tbaa !26
  br label %945

945:                                              ; preds = %995, %943
  %946 = phi i32 [ %944, %943 ], [ %992, %995 ]
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %986

948:                                              ; preds = %945
  %949 = load ptr, ptr %811, align 8, !tbaa !27
  %950 = load ptr, ptr %812, align 8, !tbaa !28
  %951 = icmp ugt ptr %949, %950
  br i1 %951, label %952, label %983

952:                                              ; preds = %948
  %953 = tail call ptr @__errno_location() #17
  br label %954

954:                                              ; preds = %974, %952
  %955 = phi ptr [ %950, %952 ], [ %977, %974 ]
  %956 = phi ptr [ %949, %952 ], [ %978, %974 ]
  store i32 0, ptr %953, align 4, !tbaa !31
  store i32 0, ptr %808, align 4, !tbaa !17
  %957 = ptrtoint ptr %956 to i64
  %958 = ptrtoint ptr %955 to i64
  %959 = sub i64 %957, %958
  %960 = tail call i64 @llvm.smin.i64(i64 %959, i64 1073741824)
  %961 = and i64 %960, 4294967295
  %962 = load i32, ptr %809, align 4, !tbaa !32
  %963 = tail call i64 @write(i32 noundef %962, ptr noundef %955, i64 noundef %961) #15
  %964 = and i64 %963, 2147483648
  %965 = icmp eq i64 %964, 0
  br i1 %965, label %974, label %966

966:                                              ; preds = %954
  %967 = load i32, ptr %953, align 4, !tbaa !31
  %968 = icmp eq i32 %967, 11
  br i1 %968, label %969, label %971

969:                                              ; preds = %966
  store i32 1, ptr %808, align 4, !tbaa !17
  %970 = load i32, ptr %953, align 4, !tbaa !31
  br label %971

971:                                              ; preds = %969, %966
  %972 = phi i32 [ %967, %966 ], [ %970, %969 ]
  %973 = tail call ptr @strerror(i32 noundef %972) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %973) #15
  br label %997

974:                                              ; preds = %954
  %975 = load ptr, ptr %812, align 8, !tbaa !28
  %976 = and i64 %963, 2147483647
  %977 = getelementptr inbounds nuw i8, ptr %975, i64 %976
  store ptr %977, ptr %812, align 8, !tbaa !28
  %978 = load ptr, ptr %811, align 8, !tbaa !27
  %979 = icmp ugt ptr %978, %977
  br i1 %979, label %954, label %980, !llvm.loop !38

980:                                              ; preds = %974
  %981 = load i32, ptr %810, align 8, !tbaa !26
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %986

983:                                              ; preds = %980, %948
  %984 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %984, ptr %810, align 8, !tbaa !26
  %985 = load ptr, ptr %804, align 8, !tbaa !22
  store ptr %985, ptr %811, align 8, !tbaa !27
  store ptr %985, ptr %812, align 8, !tbaa !28
  br label %986

986:                                              ; preds = %983, %980, %945
  %987 = phi i32 [ %981, %980 ], [ %984, %983 ], [ %946, %945 ]
  %988 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %989 = icmp eq i32 %988, -2
  br i1 %989, label %990, label %991

990:                                              ; preds = %986
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %997

991:                                              ; preds = %986
  %992 = load i32, ptr %810, align 8, !tbaa !26
  %993 = icmp ult i32 %987, %992
  br i1 %993, label %994, label %995, !prof !34, !nosanitize !33

994:                                              ; preds = %991
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

995:                                              ; preds = %991
  %996 = icmp eq i32 %987, %992
  br i1 %996, label %940, label %945, !llvm.loop !39

997:                                              ; preds = %990, %971, %920, %886, %880, %871
  %998 = load i32, ptr %808, align 4, !tbaa !17
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1345, label %1000

1000:                                             ; preds = %997
  %1001 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %857), !nosanitize !33
  %1002 = extractvalue { i64, i1 } %1001, 1, !nosanitize !33
  br i1 %1002, label %1003, label %1338, !prof !34, !nosanitize !33

1003:                                             ; preds = %1000
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1004:                                             ; preds = %795
  %1005 = load i32, ptr %798, align 8, !tbaa !42
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1158, label %1007

1007:                                             ; preds = %1004
  %1008 = icmp eq i32 %796, 0
  br i1 %1008, label %1009, label %1049

1009:                                             ; preds = %1007
  %1010 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1011 = load i32, ptr %1010, align 4, !tbaa !19
  %1012 = shl i32 %1011, 1
  %1013 = zext i32 %1012 to i64
  %1014 = tail call noalias ptr @malloc(i64 noundef %1013) #16
  %1015 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1014, ptr %1015, align 8, !tbaa !20
  %1016 = icmp eq ptr %1014, null
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1009
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

1018:                                             ; preds = %1009
  %1019 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1020 = load i32, ptr %1019, align 8, !tbaa !21
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1023, label %1022

1022:                                             ; preds = %1018
  store i32 %1011, ptr %366, align 8, !tbaa !18
  br label %1056

1023:                                             ; preds = %1018
  %1024 = zext i32 %1011 to i64
  %1025 = tail call noalias ptr @malloc(i64 noundef %1024) #16
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1025, ptr %1026, align 8, !tbaa !22
  %1027 = icmp eq ptr %1025, null
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1023
  tail call void @free(ptr noundef nonnull %1014) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

1029:                                             ; preds = %1023
  %1030 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1031 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1030, i8 0, i64 24, i1 false)
  %1032 = load i32, ptr %1031, align 8, !tbaa !23
  %1033 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1034 = load i32, ptr %1033, align 4, !tbaa !24
  %1035 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1032, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1034, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1029
  %1038 = load ptr, ptr %1026, align 8, !tbaa !22
  tail call void @free(ptr noundef %1038) #15
  %1039 = load ptr, ptr %1015, align 8, !tbaa !20
  tail call void @free(ptr noundef %1039) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1345

1040:                                             ; preds = %1029
  store ptr null, ptr %6, align 8, !tbaa !25
  %1041 = load i32, ptr %1019, align 8, !tbaa !21
  %1042 = load i32, ptr %1010, align 4, !tbaa !19
  store i32 %1042, ptr %366, align 8, !tbaa !18
  %1043 = icmp eq i32 %1041, 0
  br i1 %1043, label %1044, label %1053

1044:                                             ; preds = %1040
  %1045 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1042, ptr %1045, align 8, !tbaa !26
  %1046 = load ptr, ptr %1026, align 8, !tbaa !22
  %1047 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1046, ptr %1047, align 8, !tbaa !27
  %1048 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1046, ptr %1048, align 8, !tbaa !28
  br label %1089

1049:                                             ; preds = %1007
  %1050 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1051 = load i32, ptr %1050, align 8, !tbaa !21
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1089, label %1056

1053:                                             ; preds = %1040
  %1054 = load i32, ptr %798, align 8, !tbaa !30
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1158, label %1056

1056:                                             ; preds = %1053, %1049, %1022
  %1057 = tail call ptr @__errno_location() #17
  %1058 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1059 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1060 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1061

1061:                                             ; preds = %1083, %1056
  %1062 = phi ptr [ %1060, %1056 ], [ %1087, %1083 ]
  store i32 0, ptr %1057, align 4, !tbaa !31
  store i32 0, ptr %1058, align 4, !tbaa !17
  %1063 = load i32, ptr %798, align 8, !tbaa !30
  %1064 = tail call i32 @llvm.umin.i32(i32 %1063, i32 1073741824)
  %1065 = zext nneg i32 %1064 to i64
  %1066 = load i32, ptr %1059, align 4, !tbaa !32
  %1067 = tail call i64 @write(i32 noundef %1066, ptr noundef %1062, i64 noundef %1065) #15
  %1068 = trunc i64 %1067 to i32
  %1069 = icmp slt i32 %1068, 0
  br i1 %1069, label %1070, label %1078

1070:                                             ; preds = %1061
  %1071 = load i32, ptr %1057, align 4, !tbaa !31
  %1072 = icmp eq i32 %1071, 11
  br i1 %1072, label %1073, label %1075

1073:                                             ; preds = %1070
  store i32 1, ptr %1058, align 4, !tbaa !17
  %1074 = load i32, ptr %1057, align 4, !tbaa !31
  br label %1075

1075:                                             ; preds = %1073, %1070
  %1076 = phi i32 [ %1071, %1070 ], [ %1074, %1073 ]
  %1077 = tail call ptr @strerror(i32 noundef %1076) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1077) #15
  br label %1345

1078:                                             ; preds = %1061
  %1079 = load i32, ptr %798, align 8, !tbaa !30
  %1080 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1079, i32 %1068), !nosanitize !33
  %1081 = extractvalue { i32, i1 } %1080, 1, !nosanitize !33
  br i1 %1081, label %1082, label %1083, !prof !34, !nosanitize !33

1082:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1083:                                             ; preds = %1078
  %1084 = extractvalue { i32, i1 } %1080, 0, !nosanitize !33
  store i32 %1084, ptr %798, align 8, !tbaa !30
  %1085 = load ptr, ptr %6, align 8, !tbaa !25
  %1086 = and i64 %1067, 2147483647
  %1087 = getelementptr inbounds nuw i8, ptr %1085, i64 %1086
  store ptr %1087, ptr %6, align 8, !tbaa !25
  %1088 = icmp eq i32 %1084, 0
  br i1 %1088, label %1158, label %1061, !llvm.loop !35

1089:                                             ; preds = %1049, %1044
  %1090 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1091 = load i32, ptr %1090, align 8, !tbaa !37
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1098, label %1093

1093:                                             ; preds = %1089
  %1094 = load i32, ptr %798, align 8, !tbaa !30
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1158, label %1096

1096:                                             ; preds = %1093
  %1097 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1090, align 8, !tbaa !37
  br label %1098

1098:                                             ; preds = %1096, %1089
  %1099 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1100 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1101 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1102 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1103 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1104 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1105 = load i32, ptr %1099, align 8, !tbaa !26
  br label %1106

1106:                                             ; preds = %1156, %1098
  %1107 = phi i32 [ %1105, %1098 ], [ %1153, %1156 ]
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1147

1109:                                             ; preds = %1106
  %1110 = load ptr, ptr %1100, align 8, !tbaa !27
  %1111 = load ptr, ptr %1101, align 8, !tbaa !28
  %1112 = icmp ugt ptr %1110, %1111
  br i1 %1112, label %1113, label %1144

1113:                                             ; preds = %1109
  %1114 = tail call ptr @__errno_location() #17
  br label %1115

1115:                                             ; preds = %1135, %1113
  %1116 = phi ptr [ %1111, %1113 ], [ %1138, %1135 ]
  %1117 = phi ptr [ %1110, %1113 ], [ %1139, %1135 ]
  store i32 0, ptr %1114, align 4, !tbaa !31
  store i32 0, ptr %1102, align 4, !tbaa !17
  %1118 = ptrtoint ptr %1117 to i64
  %1119 = ptrtoint ptr %1116 to i64
  %1120 = sub i64 %1118, %1119
  %1121 = tail call i64 @llvm.smin.i64(i64 %1120, i64 1073741824)
  %1122 = and i64 %1121, 4294967295
  %1123 = load i32, ptr %1103, align 4, !tbaa !32
  %1124 = tail call i64 @write(i32 noundef %1123, ptr noundef %1116, i64 noundef %1122) #15
  %1125 = and i64 %1124, 2147483648
  %1126 = icmp eq i64 %1125, 0
  br i1 %1126, label %1135, label %1127

1127:                                             ; preds = %1115
  %1128 = load i32, ptr %1114, align 4, !tbaa !31
  %1129 = icmp eq i32 %1128, 11
  br i1 %1129, label %1130, label %1132

1130:                                             ; preds = %1127
  store i32 1, ptr %1102, align 4, !tbaa !17
  %1131 = load i32, ptr %1114, align 4, !tbaa !31
  br label %1132

1132:                                             ; preds = %1130, %1127
  %1133 = phi i32 [ %1128, %1127 ], [ %1131, %1130 ]
  %1134 = tail call ptr @strerror(i32 noundef %1133) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1134) #15
  br label %1345

1135:                                             ; preds = %1115
  %1136 = load ptr, ptr %1101, align 8, !tbaa !28
  %1137 = and i64 %1124, 2147483647
  %1138 = getelementptr inbounds nuw i8, ptr %1136, i64 %1137
  store ptr %1138, ptr %1101, align 8, !tbaa !28
  %1139 = load ptr, ptr %1100, align 8, !tbaa !27
  %1140 = icmp ugt ptr %1139, %1138
  br i1 %1140, label %1115, label %1141, !llvm.loop !38

1141:                                             ; preds = %1135
  %1142 = load i32, ptr %1099, align 8, !tbaa !26
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1144, label %1147

1144:                                             ; preds = %1141, %1109
  %1145 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %1145, ptr %1099, align 8, !tbaa !26
  %1146 = load ptr, ptr %1104, align 8, !tbaa !22
  store ptr %1146, ptr %1100, align 8, !tbaa !27
  store ptr %1146, ptr %1101, align 8, !tbaa !28
  br label %1147

1147:                                             ; preds = %1144, %1141, %1106
  %1148 = phi i32 [ %1142, %1141 ], [ %1145, %1144 ], [ %1107, %1106 ]
  %1149 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1150 = icmp eq i32 %1149, -2
  br i1 %1150, label %1151, label %1152

1151:                                             ; preds = %1147
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1345

1152:                                             ; preds = %1147
  %1153 = load i32, ptr %1099, align 8, !tbaa !26
  %1154 = icmp ult i32 %1148, %1153
  br i1 %1154, label %1155, label %1156, !prof !34, !nosanitize !33

1155:                                             ; preds = %1152
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1156:                                             ; preds = %1152
  %1157 = icmp eq i32 %1148, %1153
  br i1 %1157, label %1158, label %1106, !llvm.loop !39

1158:                                             ; preds = %1156, %1093, %1083, %1053, %1004
  store ptr %3, ptr %6, align 8, !tbaa !43
  %1159 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1160 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1161 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1162 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1163 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1164 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1165 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1166 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1167 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1168 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1169 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1170 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1171 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1172 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1173

1173:                                             ; preds = %1334, %1158
  %1174 = phi i64 [ 1, %1158 ], [ %1323, %1334 ]
  %1175 = call i64 @llvm.umin.i64(i64 %1174, i64 4294967295)
  %1176 = trunc nuw i64 %1175 to i32
  store i32 %1176, ptr %798, align 8, !tbaa !42
  %1177 = load i32, ptr %366, align 8, !tbaa !18
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1209

1179:                                             ; preds = %1173
  %1180 = load i32, ptr %1160, align 4, !tbaa !19
  %1181 = shl i32 %1180, 1
  %1182 = zext i32 %1181 to i64
  %1183 = call noalias ptr @malloc(i64 noundef %1182) #16
  store ptr %1183, ptr %1161, align 8, !tbaa !20
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1179
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1308

1186:                                             ; preds = %1179
  %1187 = load i32, ptr %1159, align 8, !tbaa !21
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1190, label %1189

1189:                                             ; preds = %1186
  store i32 %1180, ptr %366, align 8, !tbaa !18
  br label %1215

1190:                                             ; preds = %1186
  %1191 = zext i32 %1180 to i64
  %1192 = call noalias ptr @malloc(i64 noundef %1191) #16
  store ptr %1192, ptr %1162, align 8, !tbaa !22
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1194, label %1195

1194:                                             ; preds = %1190
  call void @free(ptr noundef nonnull %1183) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1308

1195:                                             ; preds = %1190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1163, i8 0, i64 24, i1 false)
  %1196 = load i32, ptr %1164, align 8, !tbaa !23
  %1197 = load i32, ptr %1165, align 4, !tbaa !24
  %1198 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1196, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1197, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1203, label %1200

1200:                                             ; preds = %1195
  %1201 = load ptr, ptr %1162, align 8, !tbaa !22
  call void @free(ptr noundef %1201) #15
  %1202 = load ptr, ptr %1161, align 8, !tbaa !20
  call void @free(ptr noundef %1202) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1308

1203:                                             ; preds = %1195
  store ptr null, ptr %6, align 8, !tbaa !25
  %1204 = load i32, ptr %1159, align 8, !tbaa !21
  %1205 = load i32, ptr %1160, align 4, !tbaa !19
  store i32 %1205, ptr %366, align 8, !tbaa !18
  %1206 = icmp eq i32 %1204, 0
  br i1 %1206, label %1207, label %1212

1207:                                             ; preds = %1203
  store i32 %1205, ptr %1168, align 8, !tbaa !26
  %1208 = load ptr, ptr %1162, align 8, !tbaa !22
  store ptr %1208, ptr %1169, align 8, !tbaa !27
  store ptr %1208, ptr %1170, align 8, !tbaa !28
  br label %1246

1209:                                             ; preds = %1173
  %1210 = load i32, ptr %1159, align 8, !tbaa !21
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1246, label %1215

1212:                                             ; preds = %1203
  %1213 = load i32, ptr %798, align 8, !tbaa !30
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1308, label %1215

1215:                                             ; preds = %1212, %1209, %1189
  %1216 = tail call ptr @__errno_location() #17
  %1217 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1218

1218:                                             ; preds = %1240, %1215
  %1219 = phi ptr [ %1217, %1215 ], [ %1244, %1240 ]
  store i32 0, ptr %1216, align 4, !tbaa !31
  store i32 0, ptr %1166, align 4, !tbaa !17
  %1220 = load i32, ptr %798, align 8, !tbaa !30
  %1221 = call i32 @llvm.umin.i32(i32 %1220, i32 1073741824)
  %1222 = zext nneg i32 %1221 to i64
  %1223 = load i32, ptr %1167, align 4, !tbaa !32
  %1224 = call i64 @write(i32 noundef %1223, ptr noundef %1219, i64 noundef %1222) #15
  %1225 = trunc i64 %1224 to i32
  %1226 = icmp slt i32 %1225, 0
  br i1 %1226, label %1227, label %1235

1227:                                             ; preds = %1218
  %1228 = load i32, ptr %1216, align 4, !tbaa !31
  %1229 = icmp eq i32 %1228, 11
  br i1 %1229, label %1230, label %1232

1230:                                             ; preds = %1227
  store i32 1, ptr %1166, align 4, !tbaa !17
  %1231 = load i32, ptr %1216, align 4, !tbaa !31
  br label %1232

1232:                                             ; preds = %1230, %1227
  %1233 = phi i32 [ %1228, %1227 ], [ %1231, %1230 ]
  %1234 = call ptr @strerror(i32 noundef %1233) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1234) #15
  br label %1308

1235:                                             ; preds = %1218
  %1236 = load i32, ptr %798, align 8, !tbaa !30
  %1237 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1236, i32 %1225), !nosanitize !33
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !33
  br i1 %1238, label %1239, label %1240, !prof !34, !nosanitize !33

1239:                                             ; preds = %1235
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1240:                                             ; preds = %1235
  %1241 = extractvalue { i32, i1 } %1237, 0, !nosanitize !33
  store i32 %1241, ptr %798, align 8, !tbaa !30
  %1242 = load ptr, ptr %6, align 8, !tbaa !25
  %1243 = and i64 %1224, 2147483647
  %1244 = getelementptr inbounds nuw i8, ptr %1242, i64 %1243
  store ptr %1244, ptr %6, align 8, !tbaa !25
  %1245 = icmp eq i32 %1241, 0
  br i1 %1245, label %1308, label %1218, !llvm.loop !35

1246:                                             ; preds = %1209, %1207
  %1247 = load i32, ptr %1171, align 8, !tbaa !37
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1254, label %1249

1249:                                             ; preds = %1246
  %1250 = load i32, ptr %798, align 8, !tbaa !30
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1308, label %1252

1252:                                             ; preds = %1249
  %1253 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1171, align 8, !tbaa !37
  br label %1254

1254:                                             ; preds = %1252, %1246
  %1255 = load i32, ptr %1168, align 8, !tbaa !26
  br label %1256

1256:                                             ; preds = %1306, %1254
  %1257 = phi i32 [ %1255, %1254 ], [ %1303, %1306 ]
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1259, label %1297

1259:                                             ; preds = %1256
  %1260 = load ptr, ptr %1169, align 8, !tbaa !27
  %1261 = load ptr, ptr %1170, align 8, !tbaa !28
  %1262 = icmp ugt ptr %1260, %1261
  br i1 %1262, label %1263, label %1294

1263:                                             ; preds = %1259
  %1264 = tail call ptr @__errno_location() #17
  br label %1265

1265:                                             ; preds = %1285, %1263
  %1266 = phi ptr [ %1261, %1263 ], [ %1288, %1285 ]
  %1267 = phi ptr [ %1260, %1263 ], [ %1289, %1285 ]
  store i32 0, ptr %1264, align 4, !tbaa !31
  store i32 0, ptr %1166, align 4, !tbaa !17
  %1268 = ptrtoint ptr %1267 to i64
  %1269 = ptrtoint ptr %1266 to i64
  %1270 = sub i64 %1268, %1269
  %1271 = call i64 @llvm.smin.i64(i64 %1270, i64 1073741824)
  %1272 = and i64 %1271, 4294967295
  %1273 = load i32, ptr %1167, align 4, !tbaa !32
  %1274 = call i64 @write(i32 noundef %1273, ptr noundef %1266, i64 noundef %1272) #15
  %1275 = and i64 %1274, 2147483648
  %1276 = icmp eq i64 %1275, 0
  br i1 %1276, label %1285, label %1277

1277:                                             ; preds = %1265
  %1278 = load i32, ptr %1264, align 4, !tbaa !31
  %1279 = icmp eq i32 %1278, 11
  br i1 %1279, label %1280, label %1282

1280:                                             ; preds = %1277
  store i32 1, ptr %1166, align 4, !tbaa !17
  %1281 = load i32, ptr %1264, align 4, !tbaa !31
  br label %1282

1282:                                             ; preds = %1280, %1277
  %1283 = phi i32 [ %1278, %1277 ], [ %1281, %1280 ]
  %1284 = call ptr @strerror(i32 noundef %1283) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1284) #15
  br label %1308

1285:                                             ; preds = %1265
  %1286 = load ptr, ptr %1170, align 8, !tbaa !28
  %1287 = and i64 %1274, 2147483647
  %1288 = getelementptr inbounds nuw i8, ptr %1286, i64 %1287
  store ptr %1288, ptr %1170, align 8, !tbaa !28
  %1289 = load ptr, ptr %1169, align 8, !tbaa !27
  %1290 = icmp ugt ptr %1289, %1288
  br i1 %1290, label %1265, label %1291, !llvm.loop !38

1291:                                             ; preds = %1285
  %1292 = load i32, ptr %1168, align 8, !tbaa !26
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1294, label %1297

1294:                                             ; preds = %1291, %1259
  %1295 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %1295, ptr %1168, align 8, !tbaa !26
  %1296 = load ptr, ptr %1162, align 8, !tbaa !22
  store ptr %1296, ptr %1169, align 8, !tbaa !27
  store ptr %1296, ptr %1170, align 8, !tbaa !28
  br label %1297

1297:                                             ; preds = %1294, %1291, %1256
  %1298 = phi i32 [ %1292, %1291 ], [ %1295, %1294 ], [ %1257, %1256 ]
  %1299 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1300 = icmp eq i32 %1299, -2
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1297
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1308

1302:                                             ; preds = %1297
  %1303 = load i32, ptr %1168, align 8, !tbaa !26
  %1304 = icmp ult i32 %1298, %1303
  br i1 %1304, label %1305, label %1306, !prof !34, !nosanitize !33

1305:                                             ; preds = %1302
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1306:                                             ; preds = %1302
  %1307 = icmp eq i32 %1298, %1303
  br i1 %1307, label %1308, label %1256, !llvm.loop !39

1308:                                             ; preds = %1306, %1301, %1282, %1249, %1240, %1232, %1212, %1200, %1194, %1185
  %1309 = phi i1 [ true, %1232 ], [ true, %1282 ], [ true, %1301 ], [ false, %1249 ], [ true, %1185 ], [ true, %1194 ], [ true, %1200 ], [ false, %1212 ], [ false, %1306 ], [ false, %1240 ]
  %1310 = load i32, ptr %798, align 8, !tbaa !42
  %1311 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1176, i32 %1310), !nosanitize !33
  %1312 = extractvalue { i32, i1 } %1311, 1, !nosanitize !33
  br i1 %1312, label %1313, label %1314, !prof !34, !nosanitize !33

1313:                                             ; preds = %1308
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1314:                                             ; preds = %1308
  %1315 = extractvalue { i32, i1 } %1311, 0, !nosanitize !33
  %1316 = zext i32 %1315 to i64
  %1317 = load i64, ptr %1172, align 8, !tbaa !40
  %1318 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1317, i64 %1316), !nosanitize !33
  %1319 = extractvalue { i64, i1 } %1318, 1, !nosanitize !33
  br i1 %1319, label %847, label %1320, !prof !34, !nosanitize !33

1320:                                             ; preds = %1314
  %1321 = extractvalue { i64, i1 } %1318, 0, !nosanitize !33
  store i64 %1321, ptr %1172, align 8, !tbaa !40
  %1322 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1174, i64 %1316), !nosanitize !33
  %1323 = extractvalue { i64, i1 } %1322, 0, !nosanitize !33
  %1324 = extractvalue { i64, i1 } %1322, 1, !nosanitize !33
  br i1 false, label %1325, label %1326, !prof !34, !nosanitize !33

1325:                                             ; preds = %1320
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1326:                                             ; preds = %1320
  br i1 %1309, label %1327, label %1334

1327:                                             ; preds = %1326
  %1328 = load i32, ptr %1166, align 4, !tbaa !17
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1345, label %1330

1330:                                             ; preds = %1327
  %1331 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1323), !nosanitize !33
  %1332 = extractvalue { i64, i1 } %1331, 1, !nosanitize !33
  br i1 %1332, label %1333, label %1338, !prof !34, !nosanitize !33

1333:                                             ; preds = %1330
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1334:                                             ; preds = %1326
  %1335 = icmp eq i64 %1323, 0
  br i1 %1335, label %1336, label %1173, !llvm.loop !44

1336:                                             ; preds = %1334, %860
  %1337 = and i32 %1, 255
  br label %1345

1338:                                             ; preds = %1330, %1000
  %1339 = phi { i64, i1 } [ %1001, %1000 ], [ %1331, %1330 ]
  %1340 = freeze { i64, i1 } %1339
  %1341 = extractvalue { i64, i1 } %1340, 0
  %1342 = icmp eq i64 %1341, 1
  %1343 = and i32 %1, 255
  %1344 = select i1 %1342, i32 %1343, i32 -1
  br label %1345

1345:                                             ; preds = %1338, %1336, %1327, %1151, %1132, %1075, %1037, %1028, %1017, %997, %790, %601, %582, %525, %487, %478, %467, %437, %428, %417, %404, %362, %172, %153, %96, %58, %49, %38, %14, %5, %2
  %1346 = phi i32 [ %406, %404 ], [ -1, %2 ], [ -1, %14 ], [ -1, %5 ], [ %1337, %1336 ], [ -1, %96 ], [ -1, %153 ], [ -1, %172 ], [ -1, %38 ], [ -1, %49 ], [ -1, %58 ], [ -1, %417 ], [ -1, %428 ], [ -1, %437 ], [ -1, %525 ], [ -1, %582 ], [ -1, %601 ], [ -1, %467 ], [ -1, %478 ], [ -1, %487 ], [ -1, %997 ], [ -1, %1075 ], [ -1, %1132 ], [ -1, %1151 ], [ -1, %1017 ], [ -1, %1028 ], [ -1, %1037 ], [ -1, %1327 ], [ %1344, %1338 ], [ -1, %790 ], [ -1, %362 ]
  call void @llvm.lifetime.end.p0(ptr %3)
  ret i32 %1346
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %967, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %967

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %967, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %967

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %960, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = load i32, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

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
  br label %960

36:                                               ; preds = %26
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %38 = load i32, ptr %37, align 8, !tbaa !21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 %29, ptr %23, align 8, !tbaa !18
  br label %67

41:                                               ; preds = %36
  %42 = zext i32 %29 to i64
  %43 = tail call noalias ptr @malloc(i64 noundef %42) #16
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %43, ptr %44, align 8, !tbaa !22
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %32) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %50 = load i32, ptr %49, align 8, !tbaa !23
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %52 = load i32, ptr %51, align 4, !tbaa !24
  %53 = tail call i32 @deflateInit2_(ptr noundef nonnull %27, i32 noundef %50, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %52, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %44, align 8, !tbaa !22
  tail call void @free(ptr noundef %56) #15
  %57 = load ptr, ptr %33, align 8, !tbaa !20
  tail call void @free(ptr noundef %57) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

58:                                               ; preds = %47
  store ptr null, ptr %27, align 8, !tbaa !25
  %59 = load i32, ptr %37, align 8, !tbaa !21
  %60 = load i32, ptr %28, align 4, !tbaa !19
  store i32 %60, ptr %23, align 8, !tbaa !18
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %60, ptr %63, align 8, !tbaa !26
  %64 = load ptr, ptr %44, align 8, !tbaa !22
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %64, ptr %65, align 8, !tbaa !27
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %64, ptr %66, align 8, !tbaa !28
  br label %67

67:                                               ; preds = %62, %58, %40, %22
  %68 = phi i32 [ %60, %62 ], [ %60, %58 ], [ %29, %40 ], [ %24, %22 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %70 = load i64, ptr %69, align 8, !tbaa !29
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %415, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %75 = load i32, ptr %74, align 8, !tbaa !30
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %228, label %77

77:                                               ; preds = %72
  %78 = icmp eq i32 %68, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %81 = load i32, ptr %80, align 4, !tbaa !19
  %82 = shl i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #16
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %84, ptr %85, align 8, !tbaa !20
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

88:                                               ; preds = %79
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %90 = load i32, ptr %89, align 8, !tbaa !21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 %81, ptr %23, align 8, !tbaa !18
  br label %126

93:                                               ; preds = %88
  %94 = zext i32 %81 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %95, ptr %96, align 8, !tbaa !22
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  tail call void @free(ptr noundef nonnull %84) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

99:                                               ; preds = %93
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, i8 0, i64 24, i1 false)
  %102 = load i32, ptr %101, align 8, !tbaa !23
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %104 = load i32, ptr %103, align 4, !tbaa !24
  %105 = tail call i32 @deflateInit2_(ptr noundef nonnull %73, i32 noundef %102, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %104, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %96, align 8, !tbaa !22
  tail call void @free(ptr noundef %108) #15
  %109 = load ptr, ptr %85, align 8, !tbaa !20
  tail call void @free(ptr noundef %109) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

110:                                              ; preds = %99
  store ptr null, ptr %73, align 8, !tbaa !25
  %111 = load i32, ptr %89, align 8, !tbaa !21
  %112 = load i32, ptr %80, align 4, !tbaa !19
  store i32 %112, ptr %23, align 8, !tbaa !18
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %112, ptr %115, align 8, !tbaa !26
  %116 = load ptr, ptr %96, align 8, !tbaa !22
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %116, ptr %117, align 8, !tbaa !27
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %116, ptr %118, align 8, !tbaa !28
  br label %159

119:                                              ; preds = %77
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %121 = load i32, ptr %120, align 8, !tbaa !21
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %159, label %126

123:                                              ; preds = %110
  %124 = load i32, ptr %74, align 8, !tbaa !30
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %228, label %126

126:                                              ; preds = %123, %119, %92
  %127 = tail call ptr @__errno_location() #17
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %130 = load ptr, ptr %73, align 8, !tbaa !25
  br label %131

131:                                              ; preds = %153, %126
  %132 = phi ptr [ %130, %126 ], [ %157, %153 ]
  store i32 0, ptr %127, align 4, !tbaa !31
  store i32 0, ptr %128, align 4, !tbaa !17
  %133 = load i32, ptr %74, align 8, !tbaa !30
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 1073741824)
  %135 = zext nneg i32 %134 to i64
  %136 = load i32, ptr %129, align 4, !tbaa !32
  %137 = tail call i64 @write(i32 noundef %136, ptr noundef %132, i64 noundef %135) #15
  %138 = trunc i64 %137 to i32
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %131
  %141 = load i32, ptr %127, align 4, !tbaa !31
  %142 = icmp eq i32 %141, 11
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  store i32 1, ptr %128, align 4, !tbaa !17
  %144 = load i32, ptr %127, align 4, !tbaa !31
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %141, %140 ], [ %144, %143 ]
  %147 = tail call ptr @strerror(i32 noundef %146) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %147) #15
  br label %960

148:                                              ; preds = %131
  %149 = load i32, ptr %74, align 8, !tbaa !30
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %138), !nosanitize !33
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !33
  br i1 %151, label %152, label %153, !prof !34, !nosanitize !33

152:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

153:                                              ; preds = %148
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !33
  store i32 %154, ptr %74, align 8, !tbaa !30
  %155 = load ptr, ptr %73, align 8, !tbaa !25
  %156 = and i64 %137, 2147483647
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 %156
  store ptr %157, ptr %73, align 8, !tbaa !25
  %158 = icmp eq i32 %154, 0
  br i1 %158, label %228, label %131, !llvm.loop !35

159:                                              ; preds = %119, %114
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %161 = load i32, ptr %160, align 8, !tbaa !37
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %74, align 8, !tbaa !30
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %228, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @deflateReset(ptr noundef nonnull %73) #15
  store i32 0, ptr %160, align 8, !tbaa !37
  br label %168

168:                                              ; preds = %166, %159
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %175 = load i32, ptr %169, align 8, !tbaa !26
  br label %176

176:                                              ; preds = %226, %168
  %177 = phi i32 [ %175, %168 ], [ %223, %226 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %176
  %180 = load ptr, ptr %170, align 8, !tbaa !27
  %181 = load ptr, ptr %171, align 8, !tbaa !28
  %182 = icmp ugt ptr %180, %181
  br i1 %182, label %183, label %214

183:                                              ; preds = %179
  %184 = tail call ptr @__errno_location() #17
  br label %185

185:                                              ; preds = %205, %183
  %186 = phi ptr [ %181, %183 ], [ %208, %205 ]
  %187 = phi ptr [ %180, %183 ], [ %209, %205 ]
  store i32 0, ptr %184, align 4, !tbaa !31
  store i32 0, ptr %172, align 4, !tbaa !17
  %188 = ptrtoint ptr %187 to i64
  %189 = ptrtoint ptr %186 to i64
  %190 = sub i64 %188, %189
  %191 = tail call i64 @llvm.smin.i64(i64 %190, i64 1073741824)
  %192 = and i64 %191, 4294967295
  %193 = load i32, ptr %173, align 4, !tbaa !32
  %194 = tail call i64 @write(i32 noundef %193, ptr noundef %186, i64 noundef %192) #15
  %195 = and i64 %194, 2147483648
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %185
  %198 = load i32, ptr %184, align 4, !tbaa !31
  %199 = icmp eq i32 %198, 11
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  store i32 1, ptr %172, align 4, !tbaa !17
  %201 = load i32, ptr %184, align 4, !tbaa !31
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %198, %197 ], [ %201, %200 ]
  %204 = tail call ptr @strerror(i32 noundef %203) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %204) #15
  br label %960

205:                                              ; preds = %185
  %206 = load ptr, ptr %171, align 8, !tbaa !28
  %207 = and i64 %194, 2147483647
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  store ptr %208, ptr %171, align 8, !tbaa !28
  %209 = load ptr, ptr %170, align 8, !tbaa !27
  %210 = icmp ugt ptr %209, %208
  br i1 %210, label %185, label %211, !llvm.loop !38

211:                                              ; preds = %205
  %212 = load i32, ptr %169, align 8, !tbaa !26
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %179
  %215 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %215, ptr %169, align 8, !tbaa !26
  %216 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %216, ptr %170, align 8, !tbaa !27
  store ptr %216, ptr %171, align 8, !tbaa !28
  br label %217

217:                                              ; preds = %214, %211, %176
  %218 = phi i32 [ %212, %211 ], [ %215, %214 ], [ %177, %176 ]
  %219 = tail call i32 @deflate(ptr noundef nonnull %73, i32 noundef 0) #15
  %220 = icmp eq i32 %219, -2
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %960

222:                                              ; preds = %217
  %223 = load i32, ptr %169, align 8, !tbaa !26
  %224 = icmp ult i32 %218, %223
  br i1 %224, label %225, label %226, !prof !34, !nosanitize !33

225:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

226:                                              ; preds = %222
  %227 = icmp eq i32 %218, %223
  br i1 %227, label %228, label %176, !llvm.loop !39

228:                                              ; preds = %226, %163, %153, %123, %72
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %243 = load i64, ptr %69, align 8, !tbaa !29
  br label %244

244:                                              ; preds = %411, %228
  %245 = phi i64 [ %243, %228 ], [ %408, %411 ]
  %246 = phi i1 [ false, %228 ], [ true, %411 ]
  %247 = load i32, ptr %23, align 8, !tbaa !18
  %248 = zext i32 %247 to i64
  %249 = tail call i64 @llvm.smin.i64(i64 %245, i64 %248)
  %250 = trunc i64 %249 to i32
  %251 = load ptr, ptr %229, align 8, !tbaa !20
  br i1 %246, label %256, label %252

252:                                              ; preds = %244
  %253 = and i64 %249, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %251, i8 0, i64 %253, i1 false)
  %254 = load ptr, ptr %229, align 8, !tbaa !20
  %255 = load i32, ptr %23, align 8, !tbaa !18
  br label %256

256:                                              ; preds = %252, %244
  %257 = phi i32 [ %255, %252 ], [ %247, %244 ]
  %258 = phi ptr [ %254, %252 ], [ %251, %244 ]
  store i32 %250, ptr %74, align 8, !tbaa !30
  store ptr %258, ptr %73, align 8, !tbaa !25
  %259 = icmp eq i32 %257, 0
  br i1 %259, label %260, label %292

260:                                              ; preds = %256
  %261 = load i32, ptr %231, align 4, !tbaa !19
  %262 = shl i32 %261, 1
  %263 = zext i32 %262 to i64
  %264 = tail call noalias ptr @malloc(i64 noundef %263) #16
  store ptr %264, ptr %229, align 8, !tbaa !20
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %391

267:                                              ; preds = %260
  %268 = load i32, ptr %230, align 8, !tbaa !21
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i32 %261, ptr %23, align 8, !tbaa !18
  br label %295

271:                                              ; preds = %267
  %272 = zext i32 %261 to i64
  %273 = tail call noalias ptr @malloc(i64 noundef %272) #16
  store ptr %273, ptr %232, align 8, !tbaa !22
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  tail call void @free(ptr noundef nonnull %264) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %391

276:                                              ; preds = %271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %233, i8 0, i64 24, i1 false)
  %277 = load i32, ptr %234, align 8, !tbaa !23
  %278 = load i32, ptr %235, align 4, !tbaa !24
  %279 = tail call i32 @deflateInit2_(ptr noundef nonnull %73, i32 noundef %277, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %278, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %232, align 8, !tbaa !22
  tail call void @free(ptr noundef %282) #15
  %283 = load ptr, ptr %229, align 8, !tbaa !20
  tail call void @free(ptr noundef %283) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %391

284:                                              ; preds = %276
  store ptr null, ptr %73, align 8, !tbaa !25
  %285 = load i32, ptr %230, align 8, !tbaa !21
  %286 = load i32, ptr %231, align 4, !tbaa !19
  store i32 %286, ptr %23, align 8, !tbaa !18
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %74, align 8, !tbaa !30
  br label %295

290:                                              ; preds = %284
  store i32 %286, ptr %238, align 8, !tbaa !26
  %291 = load ptr, ptr %232, align 8, !tbaa !22
  store ptr %291, ptr %239, align 8, !tbaa !27
  store ptr %291, ptr %240, align 8, !tbaa !28
  br label %329

292:                                              ; preds = %256
  %293 = load i32, ptr %230, align 8, !tbaa !21
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %329, label %295

295:                                              ; preds = %292, %288, %270
  %296 = phi ptr [ null, %288 ], [ %258, %292 ], [ %258, %270 ]
  %297 = phi i32 [ %289, %288 ], [ %250, %292 ], [ %250, %270 ]
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %391, label %299

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #17
  br label %301

301:                                              ; preds = %323, %299
  %302 = phi ptr [ %296, %299 ], [ %327, %323 ]
  store i32 0, ptr %300, align 4, !tbaa !31
  store i32 0, ptr %236, align 4, !tbaa !17
  %303 = load i32, ptr %74, align 8, !tbaa !30
  %304 = tail call i32 @llvm.umin.i32(i32 %303, i32 1073741824)
  %305 = zext nneg i32 %304 to i64
  %306 = load i32, ptr %237, align 4, !tbaa !32
  %307 = tail call i64 @write(i32 noundef %306, ptr noundef %302, i64 noundef %305) #15
  %308 = trunc i64 %307 to i32
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %301
  %311 = load i32, ptr %300, align 4, !tbaa !31
  %312 = icmp eq i32 %311, 11
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  store i32 1, ptr %236, align 4, !tbaa !17
  %314 = load i32, ptr %300, align 4, !tbaa !31
  br label %315

315:                                              ; preds = %313, %310
  %316 = phi i32 [ %311, %310 ], [ %314, %313 ]
  %317 = tail call ptr @strerror(i32 noundef %316) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %317) #15
  br label %391

318:                                              ; preds = %301
  %319 = load i32, ptr %74, align 8, !tbaa !30
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %308), !nosanitize !33
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !33
  br i1 %321, label %322, label %323, !prof !34, !nosanitize !33

322:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !33
  store i32 %324, ptr %74, align 8, !tbaa !30
  %325 = load ptr, ptr %73, align 8, !tbaa !25
  %326 = and i64 %307, 2147483647
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 %326
  store ptr %327, ptr %73, align 8, !tbaa !25
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %391, label %301, !llvm.loop !35

329:                                              ; preds = %292, %290
  %330 = load i32, ptr %241, align 8, !tbaa !37
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %74, align 8, !tbaa !30
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %391, label %335

335:                                              ; preds = %332
  %336 = tail call i32 @deflateReset(ptr noundef nonnull %73) #15
  store i32 0, ptr %241, align 8, !tbaa !37
  br label %337

337:                                              ; preds = %335, %329
  %338 = load i32, ptr %238, align 8, !tbaa !26
  br label %339

339:                                              ; preds = %389, %337
  %340 = phi i32 [ %338, %337 ], [ %386, %389 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %380

342:                                              ; preds = %339
  %343 = load ptr, ptr %239, align 8, !tbaa !27
  %344 = load ptr, ptr %240, align 8, !tbaa !28
  %345 = icmp ugt ptr %343, %344
  br i1 %345, label %346, label %377

346:                                              ; preds = %342
  %347 = tail call ptr @__errno_location() #17
  br label %348

348:                                              ; preds = %368, %346
  %349 = phi ptr [ %344, %346 ], [ %371, %368 ]
  %350 = phi ptr [ %343, %346 ], [ %372, %368 ]
  store i32 0, ptr %347, align 4, !tbaa !31
  store i32 0, ptr %236, align 4, !tbaa !17
  %351 = ptrtoint ptr %350 to i64
  %352 = ptrtoint ptr %349 to i64
  %353 = sub i64 %351, %352
  %354 = tail call i64 @llvm.smin.i64(i64 %353, i64 1073741824)
  %355 = and i64 %354, 4294967295
  %356 = load i32, ptr %237, align 4, !tbaa !32
  %357 = tail call i64 @write(i32 noundef %356, ptr noundef %349, i64 noundef %355) #15
  %358 = and i64 %357, 2147483648
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %348
  %361 = load i32, ptr %347, align 4, !tbaa !31
  %362 = icmp eq i32 %361, 11
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  store i32 1, ptr %236, align 4, !tbaa !17
  %364 = load i32, ptr %347, align 4, !tbaa !31
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i32 [ %361, %360 ], [ %364, %363 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #15
  br label %391

368:                                              ; preds = %348
  %369 = load ptr, ptr %240, align 8, !tbaa !28
  %370 = and i64 %357, 2147483647
  %371 = getelementptr inbounds nuw i8, ptr %369, i64 %370
  store ptr %371, ptr %240, align 8, !tbaa !28
  %372 = load ptr, ptr %239, align 8, !tbaa !27
  %373 = icmp ugt ptr %372, %371
  br i1 %373, label %348, label %374, !llvm.loop !38

374:                                              ; preds = %368
  %375 = load i32, ptr %238, align 8, !tbaa !26
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374, %342
  %378 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %378, ptr %238, align 8, !tbaa !26
  %379 = load ptr, ptr %232, align 8, !tbaa !22
  store ptr %379, ptr %239, align 8, !tbaa !27
  store ptr %379, ptr %240, align 8, !tbaa !28
  br label %380

380:                                              ; preds = %377, %374, %339
  %381 = phi i32 [ %375, %374 ], [ %378, %377 ], [ %340, %339 ]
  %382 = tail call i32 @deflate(ptr noundef nonnull %73, i32 noundef 0) #15
  %383 = icmp eq i32 %382, -2
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %391

385:                                              ; preds = %380
  %386 = load i32, ptr %238, align 8, !tbaa !26
  %387 = icmp ult i32 %381, %386
  br i1 %387, label %388, label %389, !prof !34, !nosanitize !33

388:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

389:                                              ; preds = %385
  %390 = icmp eq i32 %381, %386
  br i1 %390, label %391, label %339, !llvm.loop !39

391:                                              ; preds = %389, %384, %365, %332, %323, %315, %295, %281, %275, %266
  %392 = phi i1 [ true, %315 ], [ true, %365 ], [ true, %384 ], [ false, %332 ], [ true, %266 ], [ true, %275 ], [ true, %281 ], [ false, %295 ], [ false, %389 ], [ false, %323 ]
  %393 = load i32, ptr %74, align 8, !tbaa !30
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %250, i32 %393), !nosanitize !33
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !33
  br i1 %395, label %396, label %397, !prof !34, !nosanitize !33

396:                                              ; preds = %404, %391
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

397:                                              ; preds = %391
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !33
  %399 = zext i32 %398 to i64
  %400 = load i64, ptr %242, align 8, !tbaa !40
  %401 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %400, i64 %399), !nosanitize !33
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !33
  br i1 %402, label %403, label %404, !prof !34, !nosanitize !33

403:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

404:                                              ; preds = %397
  %405 = extractvalue { i64, i1 } %401, 0, !nosanitize !33
  store i64 %405, ptr %242, align 8, !tbaa !40
  %406 = load i64, ptr %69, align 8, !tbaa !29
  %407 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %406, i64 %399), !nosanitize !33
  %408 = extractvalue { i64, i1 } %407, 0, !nosanitize !33
  %409 = extractvalue { i64, i1 } %407, 1, !nosanitize !33
  br i1 %409, label %396, label %410, !prof !34, !nosanitize !33

410:                                              ; preds = %404
  store i64 %408, ptr %69, align 8, !tbaa !29
  br i1 %392, label %960, label %411

411:                                              ; preds = %410
  %412 = icmp eq i64 %408, 0
  br i1 %412, label %413, label %244, !llvm.loop !41

413:                                              ; preds = %411
  %414 = load i32, ptr %23, align 8, !tbaa !18
  br label %415

415:                                              ; preds = %413, %67
  %416 = phi i32 [ %414, %413 ], [ %68, %67 ]
  %417 = zext i32 %416 to i64
  %418 = icmp ult i64 %17, %417
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %418, label %421, label %627

421:                                              ; preds = %415
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %436

436:                                              ; preds = %562, %421
  %437 = phi i64 [ %17, %421 ], [ %479, %562 ]
  %438 = phi ptr [ %1, %421 ], [ %477, %562 ]
  %439 = load i32, ptr %420, align 8, !tbaa !42
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %436
  %442 = load ptr, ptr %419, align 8, !tbaa !43
  %443 = load ptr, ptr %422, align 8, !tbaa !20
  br label %446

444:                                              ; preds = %436
  %445 = load ptr, ptr %422, align 8, !tbaa !20
  store ptr %445, ptr %419, align 8, !tbaa !43
  br label %446

446:                                              ; preds = %444, %441
  %447 = phi ptr [ %443, %441 ], [ %445, %444 ]
  %448 = phi ptr [ %442, %441 ], [ %445, %444 ]
  %449 = zext i32 %439 to i64
  %450 = getelementptr inbounds nuw i8, ptr %448, i64 %449
  %451 = ptrtoint ptr %450 to i64
  %452 = ptrtoint ptr %447 to i64
  %453 = sub i64 %451, %452
  %454 = trunc i64 %453 to i32
  %455 = load i32, ptr %23, align 8, !tbaa !18
  %456 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %454), !nosanitize !33
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !33
  br i1 %457, label %458, label %459, !prof !34, !nosanitize !33

458:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

459:                                              ; preds = %446
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !33
  %461 = zext i32 %460 to i64
  %462 = tail call i64 @llvm.umin.i64(i64 %437, i64 %461)
  %463 = trunc nuw i64 %462 to i32
  %464 = and i64 %453, 4294967295
  %465 = getelementptr inbounds nuw i8, ptr %447, i64 %464
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %438, i64 %462, i1 false)
  %466 = load i32, ptr %420, align 8, !tbaa !42
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 %463), !nosanitize !33
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !33
  br i1 %468, label %469, label %470, !prof !34, !nosanitize !33

469:                                              ; preds = %937, %470, %459
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

470:                                              ; preds = %459
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !33
  store i32 %471, ptr %420, align 8, !tbaa !42
  %472 = load i64, ptr %423, align 8, !tbaa !40
  %473 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %472, i64 %462), !nosanitize !33
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !33
  br i1 %474, label %469, label %475, !prof !34, !nosanitize !33

475:                                              ; preds = %470
  %476 = extractvalue { i64, i1 } %473, 0, !nosanitize !33
  store i64 %476, ptr %423, align 8, !tbaa !40
  %477 = getelementptr inbounds nuw i8, ptr %438, i64 %462
  %478 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %437, i64 %462), !nosanitize !33
  %479 = extractvalue { i64, i1 } %478, 0, !nosanitize !33
  %480 = extractvalue { i64, i1 } %478, 1, !nosanitize !33
  br i1 false, label %481, label %482, !prof !34, !nosanitize !33

481:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

482:                                              ; preds = %475
  %483 = icmp eq i64 %479, 0
  br i1 %483, label %960, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %23, align 8, !tbaa !18
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %519

487:                                              ; preds = %484
  %488 = load i32, ptr %425, align 4, !tbaa !19
  %489 = shl i32 %488, 1
  %490 = zext i32 %489 to i64
  %491 = tail call noalias ptr @malloc(i64 noundef %490) #16
  store ptr %491, ptr %422, align 8, !tbaa !20
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

494:                                              ; preds = %487
  %495 = load i32, ptr %424, align 8, !tbaa !21
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  store i32 %488, ptr %23, align 8, !tbaa !18
  br label %522

498:                                              ; preds = %494
  %499 = zext i32 %488 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #16
  store ptr %500, ptr %426, align 8, !tbaa !22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %498
  tail call void @free(ptr noundef nonnull %491) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

503:                                              ; preds = %498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %427, i8 0, i64 24, i1 false)
  %504 = load i32, ptr %428, align 8, !tbaa !23
  %505 = load i32, ptr %429, align 4, !tbaa !24
  %506 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %504, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %505, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %503
  %509 = load ptr, ptr %426, align 8, !tbaa !22
  tail call void @free(ptr noundef %509) #15
  %510 = load ptr, ptr %422, align 8, !tbaa !20
  tail call void @free(ptr noundef %510) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

511:                                              ; preds = %503
  store ptr null, ptr %419, align 8, !tbaa !25
  %512 = load i32, ptr %424, align 8, !tbaa !21
  %513 = load i32, ptr %425, align 4, !tbaa !19
  store i32 %513, ptr %23, align 8, !tbaa !18
  %514 = icmp eq i32 %512, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %420, align 8, !tbaa !30
  br label %522

517:                                              ; preds = %511
  store i32 %513, ptr %432, align 8, !tbaa !26
  %518 = load ptr, ptr %426, align 8, !tbaa !22
  store ptr %518, ptr %433, align 8, !tbaa !27
  store ptr %518, ptr %434, align 8, !tbaa !28
  br label %556

519:                                              ; preds = %484
  %520 = load i32, ptr %424, align 8, !tbaa !21
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %515, %497
  %523 = phi i32 [ %516, %515 ], [ %471, %519 ], [ %471, %497 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #17
  %527 = load ptr, ptr %419, align 8, !tbaa !25
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !31
  store i32 0, ptr %430, align 4, !tbaa !17
  %530 = load i32, ptr %420, align 8, !tbaa !30
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = zext nneg i32 %531 to i64
  %533 = load i32, ptr %431, align 4, !tbaa !32
  %534 = tail call i64 @write(i32 noundef %533, ptr noundef %529, i64 noundef %532) #15
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !31
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %430, align 4, !tbaa !17
  %541 = load i32, ptr %526, align 4, !tbaa !31
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #15
  br label %619

545:                                              ; preds = %528
  %546 = load i32, ptr %420, align 8, !tbaa !30
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !33
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !33
  br i1 %548, label %549, label %550, !prof !34, !nosanitize !33

549:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !33
  store i32 %551, ptr %420, align 8, !tbaa !30
  %552 = load ptr, ptr %419, align 8, !tbaa !25
  %553 = and i64 %534, 2147483647
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  store ptr %554, ptr %419, align 8, !tbaa !25
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !35

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %435, align 8, !tbaa !37
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %420, align 8, !tbaa !30
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %617, %559, %550, %522
  br label %436

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %435, align 8, !tbaa !37
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %432, align 8, !tbaa !26
  br label %567

567:                                              ; preds = %617, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %617 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %433, align 8, !tbaa !27
  %572 = load ptr, ptr %434, align 8, !tbaa !28
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #17
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !31
  store i32 0, ptr %430, align 4, !tbaa !17
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = and i64 %582, 4294967295
  %584 = load i32, ptr %431, align 4, !tbaa !32
  %585 = tail call i64 @write(i32 noundef %584, ptr noundef %577, i64 noundef %583) #15
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !31
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %430, align 4, !tbaa !17
  %592 = load i32, ptr %575, align 4, !tbaa !31
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #15
  br label %619

596:                                              ; preds = %576
  %597 = load ptr, ptr %434, align 8, !tbaa !28
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  store ptr %599, ptr %434, align 8, !tbaa !28
  %600 = load ptr, ptr %433, align 8, !tbaa !27
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !38

602:                                              ; preds = %596
  %603 = load i32, ptr %432, align 8, !tbaa !26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %606, ptr %432, align 8, !tbaa !26
  %607 = load ptr, ptr %426, align 8, !tbaa !22
  store ptr %607, ptr %433, align 8, !tbaa !27
  store ptr %607, ptr %434, align 8, !tbaa !28
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %619

613:                                              ; preds = %608
  %614 = load i32, ptr %432, align 8, !tbaa !26
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %617, !prof !34, !nosanitize !33

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

617:                                              ; preds = %613
  %618 = icmp eq i32 %609, %614
  br i1 %618, label %562, label %567, !llvm.loop !39

619:                                              ; preds = %612, %593, %542, %508, %502, %493
  %620 = load i32, ptr %430, align 4, !tbaa !17
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %960, label %622

622:                                              ; preds = %619
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %479), !nosanitize !33
  %624 = extractvalue { i64, i1 } %623, 0, !nosanitize !33
  %625 = extractvalue { i64, i1 } %623, 1, !nosanitize !33
  br i1 %625, label %626, label %960, !prof !34, !nosanitize !33

626:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

627:                                              ; preds = %415
  %628 = load i32, ptr %420, align 8, !tbaa !42
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %781, label %630

630:                                              ; preds = %627
  %631 = icmp eq i32 %416, 0
  br i1 %631, label %632, label %672

632:                                              ; preds = %630
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %634 = load i32, ptr %633, align 4, !tbaa !19
  %635 = shl i32 %634, 1
  %636 = zext i32 %635 to i64
  %637 = tail call noalias ptr @malloc(i64 noundef %636) #16
  %638 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %637, ptr %638, align 8, !tbaa !20
  %639 = icmp eq ptr %637, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %632
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

641:                                              ; preds = %632
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %643 = load i32, ptr %642, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %641
  store i32 %634, ptr %23, align 8, !tbaa !18
  br label %679

646:                                              ; preds = %641
  %647 = zext i32 %634 to i64
  %648 = tail call noalias ptr @malloc(i64 noundef %647) #16
  %649 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %648, ptr %649, align 8, !tbaa !22
  %650 = icmp eq ptr %648, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  tail call void @free(ptr noundef nonnull %637) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

652:                                              ; preds = %646
  %653 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %653, i8 0, i64 24, i1 false)
  %655 = load i32, ptr %654, align 8, !tbaa !23
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %657 = load i32, ptr %656, align 4, !tbaa !24
  %658 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %655, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %657, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %652
  %661 = load ptr, ptr %649, align 8, !tbaa !22
  tail call void @free(ptr noundef %661) #15
  %662 = load ptr, ptr %638, align 8, !tbaa !20
  tail call void @free(ptr noundef %662) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

663:                                              ; preds = %652
  store ptr null, ptr %419, align 8, !tbaa !25
  %664 = load i32, ptr %642, align 8, !tbaa !21
  %665 = load i32, ptr %633, align 4, !tbaa !19
  store i32 %665, ptr %23, align 8, !tbaa !18
  %666 = icmp eq i32 %664, 0
  br i1 %666, label %667, label %676

667:                                              ; preds = %663
  %668 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %665, ptr %668, align 8, !tbaa !26
  %669 = load ptr, ptr %649, align 8, !tbaa !22
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %669, ptr %670, align 8, !tbaa !27
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %669, ptr %671, align 8, !tbaa !28
  br label %712

672:                                              ; preds = %630
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %674 = load i32, ptr %673, align 8, !tbaa !21
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %712, label %679

676:                                              ; preds = %663
  %677 = load i32, ptr %420, align 8, !tbaa !30
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %781, label %679

679:                                              ; preds = %676, %672, %645
  %680 = tail call ptr @__errno_location() #17
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %683 = load ptr, ptr %419, align 8, !tbaa !25
  br label %684

684:                                              ; preds = %706, %679
  %685 = phi ptr [ %683, %679 ], [ %710, %706 ]
  store i32 0, ptr %680, align 4, !tbaa !31
  store i32 0, ptr %681, align 4, !tbaa !17
  %686 = load i32, ptr %420, align 8, !tbaa !30
  %687 = tail call i32 @llvm.umin.i32(i32 %686, i32 1073741824)
  %688 = zext nneg i32 %687 to i64
  %689 = load i32, ptr %682, align 4, !tbaa !32
  %690 = tail call i64 @write(i32 noundef %689, ptr noundef %685, i64 noundef %688) #15
  %691 = trunc i64 %690 to i32
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %693, label %701

693:                                              ; preds = %684
  %694 = load i32, ptr %680, align 4, !tbaa !31
  %695 = icmp eq i32 %694, 11
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  store i32 1, ptr %681, align 4, !tbaa !17
  %697 = load i32, ptr %680, align 4, !tbaa !31
  br label %698

698:                                              ; preds = %696, %693
  %699 = phi i32 [ %694, %693 ], [ %697, %696 ]
  %700 = tail call ptr @strerror(i32 noundef %699) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %700) #15
  br label %960

701:                                              ; preds = %684
  %702 = load i32, ptr %420, align 8, !tbaa !30
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %691), !nosanitize !33
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !33
  br i1 %704, label %705, label %706, !prof !34, !nosanitize !33

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !33
  store i32 %707, ptr %420, align 8, !tbaa !30
  %708 = load ptr, ptr %419, align 8, !tbaa !25
  %709 = and i64 %690, 2147483647
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  store ptr %710, ptr %419, align 8, !tbaa !25
  %711 = icmp eq i32 %707, 0
  br i1 %711, label %781, label %684, !llvm.loop !35

712:                                              ; preds = %672, %667
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %714 = load i32, ptr %713, align 8, !tbaa !37
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %721, label %716

716:                                              ; preds = %712
  %717 = load i32, ptr %420, align 8, !tbaa !30
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %781, label %719

719:                                              ; preds = %716
  %720 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %713, align 8, !tbaa !37
  br label %721

721:                                              ; preds = %719, %712
  %722 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %728 = load i32, ptr %722, align 8, !tbaa !26
  br label %729

729:                                              ; preds = %779, %721
  %730 = phi i32 [ %728, %721 ], [ %776, %779 ]
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %770

732:                                              ; preds = %729
  %733 = load ptr, ptr %723, align 8, !tbaa !27
  %734 = load ptr, ptr %724, align 8, !tbaa !28
  %735 = icmp ugt ptr %733, %734
  br i1 %735, label %736, label %767

736:                                              ; preds = %732
  %737 = tail call ptr @__errno_location() #17
  br label %738

738:                                              ; preds = %758, %736
  %739 = phi ptr [ %734, %736 ], [ %761, %758 ]
  %740 = phi ptr [ %733, %736 ], [ %762, %758 ]
  store i32 0, ptr %737, align 4, !tbaa !31
  store i32 0, ptr %725, align 4, !tbaa !17
  %741 = ptrtoint ptr %740 to i64
  %742 = ptrtoint ptr %739 to i64
  %743 = sub i64 %741, %742
  %744 = tail call i64 @llvm.smin.i64(i64 %743, i64 1073741824)
  %745 = and i64 %744, 4294967295
  %746 = load i32, ptr %726, align 4, !tbaa !32
  %747 = tail call i64 @write(i32 noundef %746, ptr noundef %739, i64 noundef %745) #15
  %748 = and i64 %747, 2147483648
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %758, label %750

750:                                              ; preds = %738
  %751 = load i32, ptr %737, align 4, !tbaa !31
  %752 = icmp eq i32 %751, 11
  br i1 %752, label %753, label %755

753:                                              ; preds = %750
  store i32 1, ptr %725, align 4, !tbaa !17
  %754 = load i32, ptr %737, align 4, !tbaa !31
  br label %755

755:                                              ; preds = %753, %750
  %756 = phi i32 [ %751, %750 ], [ %754, %753 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #15
  br label %960

758:                                              ; preds = %738
  %759 = load ptr, ptr %724, align 8, !tbaa !28
  %760 = and i64 %747, 2147483647
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  store ptr %761, ptr %724, align 8, !tbaa !28
  %762 = load ptr, ptr %723, align 8, !tbaa !27
  %763 = icmp ugt ptr %762, %761
  br i1 %763, label %738, label %764, !llvm.loop !38

764:                                              ; preds = %758
  %765 = load i32, ptr %722, align 8, !tbaa !26
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %770

767:                                              ; preds = %764, %732
  %768 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %768, ptr %722, align 8, !tbaa !26
  %769 = load ptr, ptr %727, align 8, !tbaa !22
  store ptr %769, ptr %723, align 8, !tbaa !27
  store ptr %769, ptr %724, align 8, !tbaa !28
  br label %770

770:                                              ; preds = %767, %764, %729
  %771 = phi i32 [ %765, %764 ], [ %768, %767 ], [ %730, %729 ]
  %772 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %773 = icmp eq i32 %772, -2
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %960

775:                                              ; preds = %770
  %776 = load i32, ptr %722, align 8, !tbaa !26
  %777 = icmp ult i32 %771, %776
  br i1 %777, label %778, label %779, !prof !34, !nosanitize !33

778:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

779:                                              ; preds = %775
  %780 = icmp eq i32 %771, %776
  br i1 %780, label %781, label %729, !llvm.loop !39

781:                                              ; preds = %779, %716, %706, %676, %627
  store ptr %1, ptr %419, align 8, !tbaa !43
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %794 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %796

796:                                              ; preds = %958, %781
  %797 = phi i64 [ %17, %781 ], [ %946, %958 ]
  %798 = tail call i64 @llvm.umin.i64(i64 %797, i64 4294967295)
  %799 = trunc nuw i64 %798 to i32
  store i32 %799, ptr %420, align 8, !tbaa !42
  %800 = load i32, ptr %23, align 8, !tbaa !18
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %832

802:                                              ; preds = %796
  %803 = load i32, ptr %783, align 4, !tbaa !19
  %804 = shl i32 %803, 1
  %805 = zext i32 %804 to i64
  %806 = tail call noalias ptr @malloc(i64 noundef %805) #16
  store ptr %806, ptr %784, align 8, !tbaa !20
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %809

808:                                              ; preds = %802
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

809:                                              ; preds = %802
  %810 = load i32, ptr %782, align 8, !tbaa !21
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %813, label %812

812:                                              ; preds = %809
  store i32 %803, ptr %23, align 8, !tbaa !18
  br label %838

813:                                              ; preds = %809
  %814 = zext i32 %803 to i64
  %815 = tail call noalias ptr @malloc(i64 noundef %814) #16
  store ptr %815, ptr %785, align 8, !tbaa !22
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %818

817:                                              ; preds = %813
  tail call void @free(ptr noundef nonnull %806) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

818:                                              ; preds = %813
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %786, i8 0, i64 24, i1 false)
  %819 = load i32, ptr %787, align 8, !tbaa !23
  %820 = load i32, ptr %788, align 4, !tbaa !24
  %821 = tail call i32 @deflateInit2_(ptr noundef nonnull %419, i32 noundef %819, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %820, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %826, label %823

823:                                              ; preds = %818
  %824 = load ptr, ptr %785, align 8, !tbaa !22
  tail call void @free(ptr noundef %824) #15
  %825 = load ptr, ptr %784, align 8, !tbaa !20
  tail call void @free(ptr noundef %825) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %931

826:                                              ; preds = %818
  store ptr null, ptr %419, align 8, !tbaa !25
  %827 = load i32, ptr %782, align 8, !tbaa !21
  %828 = load i32, ptr %783, align 4, !tbaa !19
  store i32 %828, ptr %23, align 8, !tbaa !18
  %829 = icmp eq i32 %827, 0
  br i1 %829, label %830, label %835

830:                                              ; preds = %826
  store i32 %828, ptr %791, align 8, !tbaa !26
  %831 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %831, ptr %792, align 8, !tbaa !27
  store ptr %831, ptr %793, align 8, !tbaa !28
  br label %869

832:                                              ; preds = %796
  %833 = load i32, ptr %782, align 8, !tbaa !21
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %869, label %838

835:                                              ; preds = %826
  %836 = load i32, ptr %420, align 8, !tbaa !30
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %931, label %838

838:                                              ; preds = %835, %832, %812
  %839 = tail call ptr @__errno_location() #17
  %840 = load ptr, ptr %419, align 8, !tbaa !25
  br label %841

841:                                              ; preds = %863, %838
  %842 = phi ptr [ %840, %838 ], [ %867, %863 ]
  store i32 0, ptr %839, align 4, !tbaa !31
  store i32 0, ptr %789, align 4, !tbaa !17
  %843 = load i32, ptr %420, align 8, !tbaa !30
  %844 = tail call i32 @llvm.umin.i32(i32 %843, i32 1073741824)
  %845 = zext nneg i32 %844 to i64
  %846 = load i32, ptr %790, align 4, !tbaa !32
  %847 = tail call i64 @write(i32 noundef %846, ptr noundef %842, i64 noundef %845) #15
  %848 = trunc i64 %847 to i32
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %850, label %858

850:                                              ; preds = %841
  %851 = load i32, ptr %839, align 4, !tbaa !31
  %852 = icmp eq i32 %851, 11
  br i1 %852, label %853, label %855

853:                                              ; preds = %850
  store i32 1, ptr %789, align 4, !tbaa !17
  %854 = load i32, ptr %839, align 4, !tbaa !31
  br label %855

855:                                              ; preds = %853, %850
  %856 = phi i32 [ %851, %850 ], [ %854, %853 ]
  %857 = tail call ptr @strerror(i32 noundef %856) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %857) #15
  br label %931

858:                                              ; preds = %841
  %859 = load i32, ptr %420, align 8, !tbaa !30
  %860 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %859, i32 %848), !nosanitize !33
  %861 = extractvalue { i32, i1 } %860, 1, !nosanitize !33
  br i1 %861, label %862, label %863, !prof !34, !nosanitize !33

862:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

863:                                              ; preds = %858
  %864 = extractvalue { i32, i1 } %860, 0, !nosanitize !33
  store i32 %864, ptr %420, align 8, !tbaa !30
  %865 = load ptr, ptr %419, align 8, !tbaa !25
  %866 = and i64 %847, 2147483647
  %867 = getelementptr inbounds nuw i8, ptr %865, i64 %866
  store ptr %867, ptr %419, align 8, !tbaa !25
  %868 = icmp eq i32 %864, 0
  br i1 %868, label %931, label %841, !llvm.loop !35

869:                                              ; preds = %832, %830
  %870 = load i32, ptr %794, align 8, !tbaa !37
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %877, label %872

872:                                              ; preds = %869
  %873 = load i32, ptr %420, align 8, !tbaa !30
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %931, label %875

875:                                              ; preds = %872
  %876 = tail call i32 @deflateReset(ptr noundef nonnull %419) #15
  store i32 0, ptr %794, align 8, !tbaa !37
  br label %877

877:                                              ; preds = %875, %869
  %878 = load i32, ptr %791, align 8, !tbaa !26
  br label %879

879:                                              ; preds = %929, %877
  %880 = phi i32 [ %878, %877 ], [ %926, %929 ]
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %920

882:                                              ; preds = %879
  %883 = load ptr, ptr %792, align 8, !tbaa !27
  %884 = load ptr, ptr %793, align 8, !tbaa !28
  %885 = icmp ugt ptr %883, %884
  br i1 %885, label %886, label %917

886:                                              ; preds = %882
  %887 = tail call ptr @__errno_location() #17
  br label %888

888:                                              ; preds = %908, %886
  %889 = phi ptr [ %884, %886 ], [ %911, %908 ]
  %890 = phi ptr [ %883, %886 ], [ %912, %908 ]
  store i32 0, ptr %887, align 4, !tbaa !31
  store i32 0, ptr %789, align 4, !tbaa !17
  %891 = ptrtoint ptr %890 to i64
  %892 = ptrtoint ptr %889 to i64
  %893 = sub i64 %891, %892
  %894 = tail call i64 @llvm.smin.i64(i64 %893, i64 1073741824)
  %895 = and i64 %894, 4294967295
  %896 = load i32, ptr %790, align 4, !tbaa !32
  %897 = tail call i64 @write(i32 noundef %896, ptr noundef %889, i64 noundef %895) #15
  %898 = and i64 %897, 2147483648
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %908, label %900

900:                                              ; preds = %888
  %901 = load i32, ptr %887, align 4, !tbaa !31
  %902 = icmp eq i32 %901, 11
  br i1 %902, label %903, label %905

903:                                              ; preds = %900
  store i32 1, ptr %789, align 4, !tbaa !17
  %904 = load i32, ptr %887, align 4, !tbaa !31
  br label %905

905:                                              ; preds = %903, %900
  %906 = phi i32 [ %901, %900 ], [ %904, %903 ]
  %907 = tail call ptr @strerror(i32 noundef %906) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %907) #15
  br label %931

908:                                              ; preds = %888
  %909 = load ptr, ptr %793, align 8, !tbaa !28
  %910 = and i64 %897, 2147483647
  %911 = getelementptr inbounds nuw i8, ptr %909, i64 %910
  store ptr %911, ptr %793, align 8, !tbaa !28
  %912 = load ptr, ptr %792, align 8, !tbaa !27
  %913 = icmp ugt ptr %912, %911
  br i1 %913, label %888, label %914, !llvm.loop !38

914:                                              ; preds = %908
  %915 = load i32, ptr %791, align 8, !tbaa !26
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %920

917:                                              ; preds = %914, %882
  %918 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %918, ptr %791, align 8, !tbaa !26
  %919 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %919, ptr %792, align 8, !tbaa !27
  store ptr %919, ptr %793, align 8, !tbaa !28
  br label %920

920:                                              ; preds = %917, %914, %879
  %921 = phi i32 [ %915, %914 ], [ %918, %917 ], [ %880, %879 ]
  %922 = tail call i32 @deflate(ptr noundef nonnull %419, i32 noundef 0) #15
  %923 = icmp eq i32 %922, -2
  br i1 %923, label %924, label %925

924:                                              ; preds = %920
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %931

925:                                              ; preds = %920
  %926 = load i32, ptr %791, align 8, !tbaa !26
  %927 = icmp ult i32 %921, %926
  br i1 %927, label %928, label %929, !prof !34, !nosanitize !33

928:                                              ; preds = %925
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

929:                                              ; preds = %925
  %930 = icmp eq i32 %921, %926
  br i1 %930, label %931, label %879, !llvm.loop !39

931:                                              ; preds = %929, %924, %905, %872, %863, %855, %835, %823, %817, %808
  %932 = phi i1 [ true, %855 ], [ true, %905 ], [ true, %924 ], [ false, %872 ], [ true, %808 ], [ true, %817 ], [ true, %823 ], [ false, %835 ], [ false, %929 ], [ false, %863 ]
  %933 = load i32, ptr %420, align 8, !tbaa !42
  %934 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %933), !nosanitize !33
  %935 = extractvalue { i32, i1 } %934, 1, !nosanitize !33
  br i1 %935, label %936, label %937, !prof !34, !nosanitize !33

936:                                              ; preds = %931
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

937:                                              ; preds = %931
  %938 = extractvalue { i32, i1 } %934, 0, !nosanitize !33
  %939 = zext i32 %938 to i64
  %940 = load i64, ptr %795, align 8, !tbaa !40
  %941 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %940, i64 %939), !nosanitize !33
  %942 = extractvalue { i64, i1 } %941, 1, !nosanitize !33
  br i1 %942, label %469, label %943, !prof !34, !nosanitize !33

943:                                              ; preds = %937
  %944 = extractvalue { i64, i1 } %941, 0, !nosanitize !33
  store i64 %944, ptr %795, align 8, !tbaa !40
  %945 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %797, i64 %939), !nosanitize !33
  %946 = extractvalue { i64, i1 } %945, 0, !nosanitize !33
  %947 = extractvalue { i64, i1 } %945, 1, !nosanitize !33
  br i1 false, label %948, label %949, !prof !34, !nosanitize !33

948:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

949:                                              ; preds = %943
  br i1 %932, label %950, label %958

950:                                              ; preds = %949
  %951 = load i32, ptr %789, align 4, !tbaa !17
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %960, label %953

953:                                              ; preds = %950
  %954 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %946), !nosanitize !33
  %955 = extractvalue { i64, i1 } %954, 0, !nosanitize !33
  %956 = extractvalue { i64, i1 } %954, 1, !nosanitize !33
  br i1 %956, label %957, label %960, !prof !34, !nosanitize !33

957:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

958:                                              ; preds = %949
  %959 = icmp eq i64 %946, 0
  br i1 %959, label %960, label %796, !llvm.loop !44

960:                                              ; preds = %958, %953, %950, %774, %755, %698, %660, %651, %640, %622, %619, %482, %410, %221, %202, %145, %107, %98, %87, %55, %46, %35, %20
  %961 = phi i64 [ 0, %20 ], [ 0, %35 ], [ 0, %46 ], [ 0, %55 ], [ 0, %145 ], [ 0, %202 ], [ 0, %221 ], [ 0, %87 ], [ 0, %98 ], [ 0, %107 ], [ 0, %619 ], [ %624, %622 ], [ 0, %698 ], [ 0, %755 ], [ 0, %774 ], [ 0, %640 ], [ 0, %651 ], [ 0, %660 ], [ 0, %950 ], [ %955, %953 ], [ %17, %482 ], [ %17, %958 ], [ 0, %410 ]
  %962 = icmp ne i64 %17, 0
  %963 = icmp eq i64 %961, 0
  %964 = select i1 %962, i1 %963, i1 false
  %965 = trunc i64 %961 to i32
  %966 = select i1 %964, i32 -1, i32 %965
  br label %967

967:                                              ; preds = %960, %19, %12, %4, %2
  %968 = phi i32 [ -1, %19 ], [ %966, %960 ], [ -1, %2 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %968
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %665, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %665

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %665, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %27, ptr %28, align 8, !tbaa !20
  %29 = icmp eq ptr %27, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = load i32, ptr %31, align 8, !tbaa !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 %24, ptr %19, align 8, !tbaa !18
  br label %64

35:                                               ; preds = %30
  %36 = zext i32 %24 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #16
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = icmp eq ptr %37, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %43 = load i32, ptr %42, align 8, !tbaa !23
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %45 = load i32, ptr %44, align 4, !tbaa !24
  %46 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %43, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %45, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %38, align 8, !tbaa !22
  tail call void @free(ptr noundef %49) #15
  %50 = load ptr, ptr %28, align 8, !tbaa !20
  br label %60

51:                                               ; preds = %40
  store ptr null, ptr %6, align 8, !tbaa !25
  %52 = load i32, ptr %31, align 8, !tbaa !21
  %53 = load i32, ptr %23, align 4, !tbaa !19
  store i32 %53, ptr %19, align 8, !tbaa !18
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %53, ptr %56, align 8, !tbaa !26
  %57 = load ptr, ptr %38, align 8, !tbaa !22
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %57, ptr %58, align 8, !tbaa !27
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %57, ptr %59, align 8, !tbaa !28
  br label %64

60:                                               ; preds = %48, %35
  %61 = phi ptr [ %50, %48 ], [ %27, %35 ]
  tail call void @free(ptr noundef %61) #15
  br label %62

62:                                               ; preds = %60, %22
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  %63 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

64:                                               ; preds = %55, %51, %34, %18
  %65 = phi i32 [ %53, %55 ], [ %53, %51 ], [ %24, %34 ], [ %20, %18 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %411, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %71 = load i32, ptr %70, align 8, !tbaa !30
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %224, label %73

73:                                               ; preds = %69
  %74 = icmp eq i32 %65, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %73
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %77 = load i32, ptr %76, align 4, !tbaa !19
  %78 = shl i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #16
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %80, ptr %81, align 8, !tbaa !20
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

84:                                               ; preds = %75
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %86 = load i32, ptr %85, align 8, !tbaa !21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 %77, ptr %19, align 8, !tbaa !18
  br label %122

89:                                               ; preds = %84
  %90 = zext i32 %77 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #16
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %91, ptr %92, align 8, !tbaa !22
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @free(ptr noundef nonnull %80) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

95:                                               ; preds = %89
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false)
  %98 = load i32, ptr %97, align 8, !tbaa !23
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %100 = load i32, ptr %99, align 4, !tbaa !24
  %101 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %98, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %100, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %92, align 8, !tbaa !22
  tail call void @free(ptr noundef %104) #15
  %105 = load ptr, ptr %81, align 8, !tbaa !20
  tail call void @free(ptr noundef %105) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

106:                                              ; preds = %95
  store ptr null, ptr %6, align 8, !tbaa !25
  %107 = load i32, ptr %85, align 8, !tbaa !21
  %108 = load i32, ptr %76, align 4, !tbaa !19
  store i32 %108, ptr %19, align 8, !tbaa !18
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %108, ptr %111, align 8, !tbaa !26
  %112 = load ptr, ptr %92, align 8, !tbaa !22
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %112, ptr %113, align 8, !tbaa !27
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %112, ptr %114, align 8, !tbaa !28
  br label %155

115:                                              ; preds = %73
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %117 = load i32, ptr %116, align 8, !tbaa !21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %155, label %122

119:                                              ; preds = %106
  %120 = load i32, ptr %70, align 8, !tbaa !30
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %224, label %122

122:                                              ; preds = %119, %115, %88
  %123 = tail call ptr @__errno_location() #17
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %126 = load ptr, ptr %6, align 8, !tbaa !25
  br label %127

127:                                              ; preds = %149, %122
  %128 = phi ptr [ %126, %122 ], [ %153, %149 ]
  store i32 0, ptr %123, align 4, !tbaa !31
  store i32 0, ptr %124, align 4, !tbaa !17
  %129 = load i32, ptr %70, align 8, !tbaa !30
  %130 = tail call i32 @llvm.umin.i32(i32 %129, i32 1073741824)
  %131 = zext nneg i32 %130 to i64
  %132 = load i32, ptr %125, align 4, !tbaa !32
  %133 = tail call i64 @write(i32 noundef %132, ptr noundef %128, i64 noundef %131) #15
  %134 = trunc i64 %133 to i32
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i32, ptr %123, align 4, !tbaa !31
  %138 = icmp eq i32 %137, 11
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  store i32 1, ptr %124, align 4, !tbaa !17
  %140 = load i32, ptr %123, align 4, !tbaa !31
  br label %141

141:                                              ; preds = %139, %136
  %142 = phi i32 [ %137, %136 ], [ %140, %139 ]
  %143 = tail call ptr @strerror(i32 noundef %142) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %143) #15
  br label %409

144:                                              ; preds = %127
  %145 = load i32, ptr %70, align 8, !tbaa !30
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 %134), !nosanitize !33
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !33
  br i1 %147, label %148, label %149, !prof !34, !nosanitize !33

148:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

149:                                              ; preds = %144
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !33
  store i32 %150, ptr %70, align 8, !tbaa !30
  %151 = load ptr, ptr %6, align 8, !tbaa !25
  %152 = and i64 %133, 2147483647
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 %152
  store ptr %153, ptr %6, align 8, !tbaa !25
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %224, label %127, !llvm.loop !35

155:                                              ; preds = %115, %110
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %157 = load i32, ptr %156, align 8, !tbaa !37
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %70, align 8, !tbaa !30
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %224, label %162

162:                                              ; preds = %159
  %163 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %156, align 8, !tbaa !37
  br label %164

164:                                              ; preds = %162, %155
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %171 = load i32, ptr %165, align 8, !tbaa !26
  br label %172

172:                                              ; preds = %222, %164
  %173 = phi i32 [ %171, %164 ], [ %219, %222 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %213

175:                                              ; preds = %172
  %176 = load ptr, ptr %166, align 8, !tbaa !27
  %177 = load ptr, ptr %167, align 8, !tbaa !28
  %178 = icmp ugt ptr %176, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %175
  %180 = tail call ptr @__errno_location() #17
  br label %181

181:                                              ; preds = %201, %179
  %182 = phi ptr [ %177, %179 ], [ %204, %201 ]
  %183 = phi ptr [ %176, %179 ], [ %205, %201 ]
  store i32 0, ptr %180, align 4, !tbaa !31
  store i32 0, ptr %168, align 4, !tbaa !17
  %184 = ptrtoint ptr %183 to i64
  %185 = ptrtoint ptr %182 to i64
  %186 = sub i64 %184, %185
  %187 = tail call i64 @llvm.smin.i64(i64 %186, i64 1073741824)
  %188 = and i64 %187, 4294967295
  %189 = load i32, ptr %169, align 4, !tbaa !32
  %190 = tail call i64 @write(i32 noundef %189, ptr noundef %182, i64 noundef %188) #15
  %191 = and i64 %190, 2147483648
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %181
  %194 = load i32, ptr %180, align 4, !tbaa !31
  %195 = icmp eq i32 %194, 11
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  store i32 1, ptr %168, align 4, !tbaa !17
  %197 = load i32, ptr %180, align 4, !tbaa !31
  br label %198

198:                                              ; preds = %196, %193
  %199 = phi i32 [ %194, %193 ], [ %197, %196 ]
  %200 = tail call ptr @strerror(i32 noundef %199) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %200) #15
  br label %409

201:                                              ; preds = %181
  %202 = load ptr, ptr %167, align 8, !tbaa !28
  %203 = and i64 %190, 2147483647
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %203
  store ptr %204, ptr %167, align 8, !tbaa !28
  %205 = load ptr, ptr %166, align 8, !tbaa !27
  %206 = icmp ugt ptr %205, %204
  br i1 %206, label %181, label %207, !llvm.loop !38

207:                                              ; preds = %201
  %208 = load i32, ptr %165, align 8, !tbaa !26
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %175
  %211 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %211, ptr %165, align 8, !tbaa !26
  %212 = load ptr, ptr %170, align 8, !tbaa !22
  store ptr %212, ptr %166, align 8, !tbaa !27
  store ptr %212, ptr %167, align 8, !tbaa !28
  br label %213

213:                                              ; preds = %210, %207, %172
  %214 = phi i32 [ %208, %207 ], [ %211, %210 ], [ %173, %172 ]
  %215 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %216 = icmp eq i32 %215, -2
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %409

218:                                              ; preds = %213
  %219 = load i32, ptr %165, align 8, !tbaa !26
  %220 = icmp ult i32 %214, %219
  br i1 %220, label %221, label %222, !prof !34, !nosanitize !33

221:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

222:                                              ; preds = %218
  %223 = icmp eq i32 %214, %219
  br i1 %223, label %224, label %172, !llvm.loop !39

224:                                              ; preds = %222, %159, %149, %119, %69
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
  %239 = load i64, ptr %66, align 8, !tbaa !29
  br label %240

240:                                              ; preds = %407, %224
  %241 = phi i64 [ %239, %224 ], [ %404, %407 ]
  %242 = phi i1 [ false, %224 ], [ true, %407 ]
  %243 = load i32, ptr %19, align 8, !tbaa !18
  %244 = zext i32 %243 to i64
  %245 = tail call i64 @llvm.smin.i64(i64 %241, i64 %244)
  %246 = trunc i64 %245 to i32
  %247 = load ptr, ptr %225, align 8, !tbaa !20
  br i1 %242, label %252, label %248

248:                                              ; preds = %240
  %249 = and i64 %245, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %247, i8 0, i64 %249, i1 false)
  %250 = load ptr, ptr %225, align 8, !tbaa !20
  %251 = load i32, ptr %19, align 8, !tbaa !18
  br label %252

252:                                              ; preds = %248, %240
  %253 = phi i32 [ %251, %248 ], [ %243, %240 ]
  %254 = phi ptr [ %250, %248 ], [ %247, %240 ]
  store i32 %246, ptr %70, align 8, !tbaa !30
  store ptr %254, ptr %6, align 8, !tbaa !25
  %255 = icmp eq i32 %253, 0
  br i1 %255, label %256, label %288

256:                                              ; preds = %252
  %257 = load i32, ptr %227, align 4, !tbaa !19
  %258 = shl i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = tail call noalias ptr @malloc(i64 noundef %259) #16
  store ptr %260, ptr %225, align 8, !tbaa !20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

263:                                              ; preds = %256
  %264 = load i32, ptr %226, align 8, !tbaa !21
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  store i32 %257, ptr %19, align 8, !tbaa !18
  br label %291

267:                                              ; preds = %263
  %268 = zext i32 %257 to i64
  %269 = tail call noalias ptr @malloc(i64 noundef %268) #16
  store ptr %269, ptr %228, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  tail call void @free(ptr noundef nonnull %260) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

272:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false)
  %273 = load i32, ptr %230, align 8, !tbaa !23
  %274 = load i32, ptr %231, align 4, !tbaa !24
  %275 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %273, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %274, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %228, align 8, !tbaa !22
  tail call void @free(ptr noundef %278) #15
  %279 = load ptr, ptr %225, align 8, !tbaa !20
  tail call void @free(ptr noundef %279) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

280:                                              ; preds = %272
  store ptr null, ptr %6, align 8, !tbaa !25
  %281 = load i32, ptr %226, align 8, !tbaa !21
  %282 = load i32, ptr %227, align 4, !tbaa !19
  store i32 %282, ptr %19, align 8, !tbaa !18
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = load i32, ptr %70, align 8, !tbaa !30
  br label %291

286:                                              ; preds = %280
  store i32 %282, ptr %234, align 8, !tbaa !26
  %287 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %287, ptr %235, align 8, !tbaa !27
  store ptr %287, ptr %236, align 8, !tbaa !28
  br label %325

288:                                              ; preds = %252
  %289 = load i32, ptr %226, align 8, !tbaa !21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %325, label %291

291:                                              ; preds = %288, %284, %266
  %292 = phi ptr [ null, %284 ], [ %254, %288 ], [ %254, %266 ]
  %293 = phi i32 [ %285, %284 ], [ %246, %288 ], [ %246, %266 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %387, label %295

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #17
  br label %297

297:                                              ; preds = %319, %295
  %298 = phi ptr [ %292, %295 ], [ %323, %319 ]
  store i32 0, ptr %296, align 4, !tbaa !31
  store i32 0, ptr %232, align 4, !tbaa !17
  %299 = load i32, ptr %70, align 8, !tbaa !30
  %300 = tail call i32 @llvm.umin.i32(i32 %299, i32 1073741824)
  %301 = zext nneg i32 %300 to i64
  %302 = load i32, ptr %233, align 4, !tbaa !32
  %303 = tail call i64 @write(i32 noundef %302, ptr noundef %298, i64 noundef %301) #15
  %304 = trunc i64 %303 to i32
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load i32, ptr %296, align 4, !tbaa !31
  %308 = icmp eq i32 %307, 11
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  store i32 1, ptr %232, align 4, !tbaa !17
  %310 = load i32, ptr %296, align 4, !tbaa !31
  br label %311

311:                                              ; preds = %309, %306
  %312 = phi i32 [ %307, %306 ], [ %310, %309 ]
  %313 = tail call ptr @strerror(i32 noundef %312) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %313) #15
  br label %387

314:                                              ; preds = %297
  %315 = load i32, ptr %70, align 8, !tbaa !30
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 %304), !nosanitize !33
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !33
  br i1 %317, label %318, label %319, !prof !34, !nosanitize !33

318:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !33
  store i32 %320, ptr %70, align 8, !tbaa !30
  %321 = load ptr, ptr %6, align 8, !tbaa !25
  %322 = and i64 %303, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %6, align 8, !tbaa !25
  %324 = icmp eq i32 %320, 0
  br i1 %324, label %387, label %297, !llvm.loop !35

325:                                              ; preds = %288, %286
  %326 = load i32, ptr %237, align 8, !tbaa !37
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %70, align 8, !tbaa !30
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %387, label %331

331:                                              ; preds = %328
  %332 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %237, align 8, !tbaa !37
  br label %333

333:                                              ; preds = %331, %325
  %334 = load i32, ptr %234, align 8, !tbaa !26
  br label %335

335:                                              ; preds = %385, %333
  %336 = phi i32 [ %334, %333 ], [ %382, %385 ]
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load ptr, ptr %235, align 8, !tbaa !27
  %340 = load ptr, ptr %236, align 8, !tbaa !28
  %341 = icmp ugt ptr %339, %340
  br i1 %341, label %342, label %373

342:                                              ; preds = %338
  %343 = tail call ptr @__errno_location() #17
  br label %344

344:                                              ; preds = %364, %342
  %345 = phi ptr [ %340, %342 ], [ %367, %364 ]
  %346 = phi ptr [ %339, %342 ], [ %368, %364 ]
  store i32 0, ptr %343, align 4, !tbaa !31
  store i32 0, ptr %232, align 4, !tbaa !17
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %345 to i64
  %349 = sub i64 %347, %348
  %350 = tail call i64 @llvm.smin.i64(i64 %349, i64 1073741824)
  %351 = and i64 %350, 4294967295
  %352 = load i32, ptr %233, align 4, !tbaa !32
  %353 = tail call i64 @write(i32 noundef %352, ptr noundef %345, i64 noundef %351) #15
  %354 = and i64 %353, 2147483648
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %344
  %357 = load i32, ptr %343, align 4, !tbaa !31
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  store i32 1, ptr %232, align 4, !tbaa !17
  %360 = load i32, ptr %343, align 4, !tbaa !31
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %357, %356 ], [ %360, %359 ]
  %363 = tail call ptr @strerror(i32 noundef %362) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %363) #15
  br label %387

364:                                              ; preds = %344
  %365 = load ptr, ptr %236, align 8, !tbaa !28
  %366 = and i64 %353, 2147483647
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  store ptr %367, ptr %236, align 8, !tbaa !28
  %368 = load ptr, ptr %235, align 8, !tbaa !27
  %369 = icmp ugt ptr %368, %367
  br i1 %369, label %344, label %370, !llvm.loop !38

370:                                              ; preds = %364
  %371 = load i32, ptr %234, align 8, !tbaa !26
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370, %338
  %374 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %374, ptr %234, align 8, !tbaa !26
  %375 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %375, ptr %235, align 8, !tbaa !27
  store ptr %375, ptr %236, align 8, !tbaa !28
  br label %376

376:                                              ; preds = %373, %370, %335
  %377 = phi i32 [ %371, %370 ], [ %374, %373 ], [ %336, %335 ]
  %378 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %379 = icmp eq i32 %378, -2
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %387

381:                                              ; preds = %376
  %382 = load i32, ptr %234, align 8, !tbaa !26
  %383 = icmp ult i32 %377, %382
  br i1 %383, label %384, label %385, !prof !34, !nosanitize !33

384:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

385:                                              ; preds = %381
  %386 = icmp eq i32 %377, %382
  br i1 %386, label %387, label %335, !llvm.loop !39

387:                                              ; preds = %385, %380, %361, %328, %319, %311, %291, %277, %271, %262
  %388 = phi i1 [ true, %311 ], [ true, %361 ], [ true, %380 ], [ false, %328 ], [ true, %262 ], [ true, %271 ], [ true, %277 ], [ false, %291 ], [ false, %385 ], [ false, %319 ]
  %389 = load i32, ptr %70, align 8, !tbaa !30
  %390 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %389), !nosanitize !33
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !33
  br i1 %391, label %392, label %393, !prof !34, !nosanitize !33

392:                                              ; preds = %400, %387
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

393:                                              ; preds = %387
  %394 = extractvalue { i32, i1 } %390, 0, !nosanitize !33
  %395 = zext i32 %394 to i64
  %396 = load i64, ptr %238, align 8, !tbaa !40
  %397 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %396, i64 %395), !nosanitize !33
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !33
  br i1 %398, label %399, label %400, !prof !34, !nosanitize !33

399:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

400:                                              ; preds = %393
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !33
  store i64 %401, ptr %238, align 8, !tbaa !40
  %402 = load i64, ptr %66, align 8, !tbaa !29
  %403 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %402, i64 %395), !nosanitize !33
  %404 = extractvalue { i64, i1 } %403, 0, !nosanitize !33
  %405 = extractvalue { i64, i1 } %403, 1, !nosanitize !33
  br i1 %405, label %392, label %406, !prof !34, !nosanitize !33

406:                                              ; preds = %400
  store i64 %404, ptr %66, align 8, !tbaa !29
  br i1 %388, label %409, label %407

407:                                              ; preds = %406
  %408 = icmp eq i64 %404, 0
  br i1 %408, label %411, label %240, !llvm.loop !41

409:                                              ; preds = %406, %217, %198, %141, %103, %94, %83
  %410 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

411:                                              ; preds = %407, %64
  %412 = load ptr, ptr %6, align 8, !tbaa !25
  %413 = icmp eq ptr %412, null
  br i1 %413, label %590, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %416 = load i32, ptr %415, align 8, !tbaa !30
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 %417
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %420 = load ptr, ptr %419, align 8, !tbaa !20
  %421 = load i32, ptr %19, align 8, !tbaa !18
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds nuw i8, ptr %420, i64 %422
  %424 = icmp ugt ptr %418, %423
  br i1 %424, label %425, label %590

425:                                              ; preds = %414
  %426 = icmp eq i32 %421, 0
  br i1 %426, label %427, label %468

427:                                              ; preds = %425
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %429 = load i32, ptr %428, align 4, !tbaa !19
  %430 = shl i32 %429, 1
  %431 = zext i32 %430 to i64
  %432 = tail call noalias ptr @malloc(i64 noundef %431) #16
  store ptr %432, ptr %419, align 8, !tbaa !20
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %435

434:                                              ; preds = %427
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

435:                                              ; preds = %427
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %437 = load i32, ptr %436, align 8, !tbaa !21
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %435
  store i32 %429, ptr %19, align 8, !tbaa !18
  br label %472

440:                                              ; preds = %435
  %441 = zext i32 %429 to i64
  %442 = tail call noalias ptr @malloc(i64 noundef %441) #16
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %442, ptr %443, align 8, !tbaa !22
  %444 = icmp eq ptr %442, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  tail call void @free(ptr noundef nonnull %432) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

446:                                              ; preds = %440
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %447, i8 0, i64 24, i1 false)
  %449 = load i32, ptr %448, align 8, !tbaa !23
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %451 = load i32, ptr %450, align 4, !tbaa !24
  %452 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %449, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %451, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %446
  %455 = load ptr, ptr %443, align 8, !tbaa !22
  tail call void @free(ptr noundef %455) #15
  %456 = load ptr, ptr %419, align 8, !tbaa !20
  tail call void @free(ptr noundef %456) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

457:                                              ; preds = %446
  store ptr null, ptr %6, align 8, !tbaa !25
  %458 = load i32, ptr %436, align 8, !tbaa !21
  %459 = load i32, ptr %428, align 4, !tbaa !19
  store i32 %459, ptr %19, align 8, !tbaa !18
  %460 = icmp eq i32 %458, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %457
  %462 = load i32, ptr %415, align 8, !tbaa !30
  br label %472

463:                                              ; preds = %457
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %459, ptr %464, align 8, !tbaa !26
  %465 = load ptr, ptr %443, align 8, !tbaa !22
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %465, ptr %466, align 8, !tbaa !27
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %465, ptr %467, align 8, !tbaa !28
  br label %508

468:                                              ; preds = %425
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %470 = load i32, ptr %469, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %508, label %472

472:                                              ; preds = %468, %461, %439
  %473 = phi ptr [ null, %461 ], [ %412, %468 ], [ %412, %439 ]
  %474 = phi i32 [ %462, %461 ], [ %416, %468 ], [ %416, %439 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %580, label %476

476:                                              ; preds = %472
  %477 = tail call ptr @__errno_location() #17
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %480

480:                                              ; preds = %502, %476
  %481 = phi ptr [ %473, %476 ], [ %506, %502 ]
  store i32 0, ptr %477, align 4, !tbaa !31
  store i32 0, ptr %478, align 4, !tbaa !17
  %482 = load i32, ptr %415, align 8, !tbaa !30
  %483 = tail call i32 @llvm.umin.i32(i32 %482, i32 1073741824)
  %484 = zext nneg i32 %483 to i64
  %485 = load i32, ptr %479, align 4, !tbaa !32
  %486 = tail call i64 @write(i32 noundef %485, ptr noundef %481, i64 noundef %484) #15
  %487 = trunc i64 %486 to i32
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %497

489:                                              ; preds = %480
  %490 = load i32, ptr %477, align 4, !tbaa !31
  %491 = icmp eq i32 %490, 11
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  store i32 1, ptr %478, align 4, !tbaa !17
  %493 = load i32, ptr %477, align 4, !tbaa !31
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %490, %489 ], [ %493, %492 ]
  %496 = tail call ptr @strerror(i32 noundef %495) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %496) #15
  br label %577

497:                                              ; preds = %480
  %498 = load i32, ptr %415, align 8, !tbaa !30
  %499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %487), !nosanitize !33
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !33
  br i1 %500, label %501, label %502, !prof !34, !nosanitize !33

501:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !33
  store i32 %503, ptr %415, align 8, !tbaa !30
  %504 = load ptr, ptr %6, align 8, !tbaa !25
  %505 = and i64 %486, 2147483647
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store ptr %506, ptr %6, align 8, !tbaa !25
  %507 = icmp eq i32 %503, 0
  br i1 %507, label %577, label %480, !llvm.loop !35

508:                                              ; preds = %468, %463
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %510 = load i32, ptr %509, align 8, !tbaa !37
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %415, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %580, label %515

515:                                              ; preds = %512
  %516 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %509, align 8, !tbaa !37
  br label %517

517:                                              ; preds = %515, %508
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %524 = load i32, ptr %518, align 8, !tbaa !26
  br label %525

525:                                              ; preds = %575, %517
  %526 = phi i32 [ %524, %517 ], [ %572, %575 ]
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %566

528:                                              ; preds = %525
  %529 = load ptr, ptr %519, align 8, !tbaa !27
  %530 = load ptr, ptr %520, align 8, !tbaa !28
  %531 = icmp ugt ptr %529, %530
  br i1 %531, label %532, label %563

532:                                              ; preds = %528
  %533 = tail call ptr @__errno_location() #17
  br label %534

534:                                              ; preds = %554, %532
  %535 = phi ptr [ %530, %532 ], [ %557, %554 ]
  %536 = phi ptr [ %529, %532 ], [ %558, %554 ]
  store i32 0, ptr %533, align 4, !tbaa !31
  store i32 0, ptr %521, align 4, !tbaa !17
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %535 to i64
  %539 = sub i64 %537, %538
  %540 = tail call i64 @llvm.smin.i64(i64 %539, i64 1073741824)
  %541 = and i64 %540, 4294967295
  %542 = load i32, ptr %522, align 4, !tbaa !32
  %543 = tail call i64 @write(i32 noundef %542, ptr noundef %535, i64 noundef %541) #15
  %544 = and i64 %543, 2147483648
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %534
  %547 = load i32, ptr %533, align 4, !tbaa !31
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %521, align 4, !tbaa !17
  %550 = load i32, ptr %533, align 4, !tbaa !31
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %547, %546 ], [ %550, %549 ]
  %553 = tail call ptr @strerror(i32 noundef %552) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %553) #15
  br label %577

554:                                              ; preds = %534
  %555 = load ptr, ptr %520, align 8, !tbaa !28
  %556 = and i64 %543, 2147483647
  %557 = getelementptr inbounds nuw i8, ptr %555, i64 %556
  store ptr %557, ptr %520, align 8, !tbaa !28
  %558 = load ptr, ptr %519, align 8, !tbaa !27
  %559 = icmp ugt ptr %558, %557
  br i1 %559, label %534, label %560, !llvm.loop !38

560:                                              ; preds = %554
  %561 = load i32, ptr %518, align 8, !tbaa !26
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560, %528
  %564 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %564, ptr %518, align 8, !tbaa !26
  %565 = load ptr, ptr %523, align 8, !tbaa !22
  store ptr %565, ptr %519, align 8, !tbaa !27
  store ptr %565, ptr %520, align 8, !tbaa !28
  br label %566

566:                                              ; preds = %563, %560, %525
  %567 = phi i32 [ %561, %560 ], [ %564, %563 ], [ %526, %525 ]
  %568 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %569 = icmp eq i32 %568, -2
  br i1 %569, label %570, label %571

570:                                              ; preds = %566
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %577

571:                                              ; preds = %566
  %572 = load i32, ptr %518, align 8, !tbaa !26
  %573 = icmp ult i32 %567, %572
  br i1 %573, label %574, label %575, !prof !34, !nosanitize !33

574:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

575:                                              ; preds = %571
  %576 = icmp eq i32 %567, %572
  br i1 %576, label %577, label %525, !llvm.loop !39

577:                                              ; preds = %575, %570, %551, %502, %494, %454, %445, %434
  %578 = load i32, ptr %415, align 8, !tbaa !30
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %577, %512, %472
  %581 = load ptr, ptr %419, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  br label %590

582:                                              ; preds = %577
  %583 = load ptr, ptr %419, align 8, !tbaa !20
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  %585 = zext i32 %578 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %583, ptr align 1 %584, i64 %585, i1 false)
  %586 = load ptr, ptr %419, align 8, !tbaa !20
  store ptr %586, ptr %6, align 8, !tbaa !25
  %587 = load i32, ptr %415, align 8, !tbaa !30
  %588 = load i32, ptr %19, align 8, !tbaa !18
  %589 = icmp ule i32 %587, %588
  br label %590

590:                                              ; preds = %582, %580, %414, %411
  %591 = phi i1 [ true, %580 ], [ %589, %582 ], [ true, %414 ], [ true, %411 ]
  %592 = load i32, ptr %11, align 8, !tbaa !16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %606, label %594

594:                                              ; preds = %590
  br i1 %591, label %600, label %595

595:                                              ; preds = %594
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %597 = load i32, ptr %596, align 4, !tbaa !17
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %595
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %600

600:                                              ; preds = %599, %595, %594
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %602 = load i32, ptr %601, align 4, !tbaa !17
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

606:                                              ; preds = %600, %590
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %608 = load i32, ptr %607, align 8, !tbaa !30
  %609 = icmp eq i32 %608, 0
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %611 = load ptr, ptr %610, align 8, !tbaa !20
  br i1 %609, label %614, label %612

612:                                              ; preds = %606
  %613 = load ptr, ptr %6, align 8, !tbaa !25
  br label %615

614:                                              ; preds = %606
  store ptr %611, ptr %6, align 8, !tbaa !25
  br label %615

615:                                              ; preds = %614, %612
  %616 = phi ptr [ %613, %612 ], [ %611, %614 ]
  %617 = ptrtoint ptr %616 to i64
  %618 = ptrtoint ptr %611 to i64
  %619 = sub i64 %617, %618
  %620 = getelementptr inbounds i8, ptr %611, i64 %619
  %621 = zext i32 %608 to i64
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 %621
  %623 = load i32, ptr %19, align 8, !tbaa !18
  %624 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !33
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !33
  br i1 %625, label %626, label %627, !prof !34, !nosanitize !33

626:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

627:                                              ; preds = %615
  %628 = extractvalue { i32, i1 } %624, 0, !nosanitize !33
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr %622, i64 %629
  store i8 0, ptr %630, align 1, !tbaa !45
  %631 = load i32, ptr %19, align 8, !tbaa !18
  %632 = zext i32 %631 to i64
  %633 = tail call i32 @vsnprintf(ptr noundef %622, i64 noundef %632, ptr noundef %1, ptr noundef %2) #15
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %665, label %635

635:                                              ; preds = %627
  %636 = load i32, ptr %19, align 8, !tbaa !18
  %637 = icmp ult i32 %633, %636
  br i1 %637, label %638, label %665

638:                                              ; preds = %635
  %639 = add i32 %636, -1
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds nuw i8, ptr %622, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !45
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %644, label %665

644:                                              ; preds = %638
  %645 = load i32, ptr %607, align 8, !tbaa !30
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 %633), !nosanitize !33
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !33
  br i1 %647, label %648, label %649, !prof !34, !nosanitize !33

648:                                              ; preds = %649, %644
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !33
  store i32 %650, ptr %607, align 8, !tbaa !30
  %651 = sext i32 %633 to i64
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %653 = load i64, ptr %652, align 8, !tbaa !40
  %654 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %653, i64 %651), !nosanitize !33
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !33
  br i1 %655, label %648, label %656, !prof !34, !nosanitize !33

656:                                              ; preds = %649
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !33
  store i64 %657, ptr %652, align 8, !tbaa !40
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %658 = load i32, ptr %11, align 8, !tbaa !16
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %664, label %660

660:                                              ; preds = %656
  %661 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %662 = load i32, ptr %661, align 4, !tbaa !17
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %665, label %664

664:                                              ; preds = %660, %656
  br label %665

665:                                              ; preds = %664, %660, %638, %635, %627, %604, %409, %62, %14, %5, %3
  %666 = phi i32 [ %63, %62 ], [ %410, %409 ], [ %633, %664 ], [ %605, %604 ], [ -2, %3 ], [ -2, %14 ], [ -2, %5 ], [ 0, %638 ], [ 0, %635 ], [ 0, %627 ], [ %658, %660 ]
  ret i32 %666
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %178, label %5

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
  br i1 %16, label %17, label %178

17:                                               ; preds = %5
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %60

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
  br label %169

27:                                               ; preds = %19
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %29 = load i32, ptr %28, align 8, !tbaa !21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 %21, ptr %12, align 8, !tbaa !18
  br label %64

32:                                               ; preds = %27
  %33 = zext i32 %21 to i64
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %34, ptr %35, align 8, !tbaa !22
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %24) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %169

38:                                               ; preds = %32
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !23
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %43 = load i32, ptr %42, align 4, !tbaa !24
  %44 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %41, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %43, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %35, align 8, !tbaa !22
  tail call void @free(ptr noundef %47) #15
  %48 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void @free(ptr noundef %48) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %169

49:                                               ; preds = %38
  store ptr null, ptr %2, align 8, !tbaa !25
  %50 = load i32, ptr %28, align 8, !tbaa !21
  %51 = load i32, ptr %20, align 4, !tbaa !19
  store i32 %51, ptr %12, align 8, !tbaa !18
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %6, align 8, !tbaa !30
  br label %64

55:                                               ; preds = %49
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %51, ptr %56, align 8, !tbaa !26
  %57 = load ptr, ptr %35, align 8, !tbaa !22
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %57, ptr %58, align 8, !tbaa !27
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %57, ptr %59, align 8, !tbaa !28
  br label %100

60:                                               ; preds = %17
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %62 = load i32, ptr %61, align 8, !tbaa !21
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %100, label %64

64:                                               ; preds = %60, %53, %31
  %65 = phi ptr [ null, %53 ], [ %3, %60 ], [ %3, %31 ]
  %66 = phi i32 [ %54, %53 ], [ %7, %60 ], [ %7, %31 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %176, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @__errno_location() #17
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %72

72:                                               ; preds = %94, %68
  %73 = phi ptr [ %65, %68 ], [ %98, %94 ]
  store i32 0, ptr %69, align 4, !tbaa !31
  store i32 0, ptr %70, align 4, !tbaa !17
  %74 = load i32, ptr %6, align 8, !tbaa !30
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 1073741824)
  %76 = zext nneg i32 %75 to i64
  %77 = load i32, ptr %71, align 4, !tbaa !32
  %78 = tail call i64 @write(i32 noundef %77, ptr noundef %73, i64 noundef %76) #15
  %79 = trunc i64 %78 to i32
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, ptr %69, align 4, !tbaa !31
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i32 1, ptr %70, align 4, !tbaa !17
  %85 = load i32, ptr %69, align 4, !tbaa !31
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %84 ]
  %88 = tail call ptr @strerror(i32 noundef %87) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %88) #15
  br label %169

89:                                               ; preds = %72
  %90 = load i32, ptr %6, align 8, !tbaa !30
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 %79), !nosanitize !33
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !33
  br i1 %92, label %93, label %94, !prof !34, !nosanitize !33

93:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !33
  store i32 %95, ptr %6, align 8, !tbaa !30
  %96 = load ptr, ptr %2, align 8, !tbaa !25
  %97 = and i64 %78, 2147483647
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 %97
  store ptr %98, ptr %2, align 8, !tbaa !25
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %169, label %72, !llvm.loop !35

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %102 = load i32, ptr %101, align 8, !tbaa !37
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %6, align 8, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %176, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @deflateReset(ptr noundef nonnull %2) #15
  store i32 0, ptr %101, align 8, !tbaa !37
  br label %109

109:                                              ; preds = %107, %100
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %116 = load i32, ptr %110, align 8, !tbaa !26
  br label %117

117:                                              ; preds = %167, %109
  %118 = phi i32 [ %116, %109 ], [ %164, %167 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load ptr, ptr %111, align 8, !tbaa !27
  %122 = load ptr, ptr %112, align 8, !tbaa !28
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = tail call ptr @__errno_location() #17
  br label %126

126:                                              ; preds = %146, %124
  %127 = phi ptr [ %122, %124 ], [ %149, %146 ]
  %128 = phi ptr [ %121, %124 ], [ %150, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !31
  store i32 0, ptr %113, align 4, !tbaa !17
  %129 = ptrtoint ptr %128 to i64
  %130 = ptrtoint ptr %127 to i64
  %131 = sub i64 %129, %130
  %132 = tail call i64 @llvm.smin.i64(i64 %131, i64 1073741824)
  %133 = and i64 %132, 4294967295
  %134 = load i32, ptr %114, align 4, !tbaa !32
  %135 = tail call i64 @write(i32 noundef %134, ptr noundef %127, i64 noundef %133) #15
  %136 = and i64 %135, 2147483648
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %126
  %139 = load i32, ptr %125, align 4, !tbaa !31
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %113, align 4, !tbaa !17
  %142 = load i32, ptr %125, align 4, !tbaa !31
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = tail call ptr @strerror(i32 noundef %144) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #15
  br label %169

146:                                              ; preds = %126
  %147 = load ptr, ptr %112, align 8, !tbaa !28
  %148 = and i64 %135, 2147483647
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  store ptr %149, ptr %112, align 8, !tbaa !28
  %150 = load ptr, ptr %111, align 8, !tbaa !27
  %151 = icmp ugt ptr %150, %149
  br i1 %151, label %126, label %152, !llvm.loop !38

152:                                              ; preds = %146
  %153 = load i32, ptr %110, align 8, !tbaa !26
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %120
  %156 = load i32, ptr %12, align 8, !tbaa !18
  store i32 %156, ptr %110, align 8, !tbaa !26
  %157 = load ptr, ptr %115, align 8, !tbaa !22
  store ptr %157, ptr %111, align 8, !tbaa !27
  store ptr %157, ptr %112, align 8, !tbaa !28
  br label %158

158:                                              ; preds = %155, %152, %117
  %159 = phi i32 [ %153, %152 ], [ %156, %155 ], [ %118, %117 ]
  %160 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #15
  %161 = icmp eq i32 %160, -2
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %169

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !26
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %166, label %167, !prof !34, !nosanitize !33

166:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

167:                                              ; preds = %163
  %168 = icmp eq i32 %159, %164
  br i1 %168, label %169, label %117, !llvm.loop !39

169:                                              ; preds = %167, %162, %143, %94, %86, %46, %37, %26
  %170 = load i32, ptr %6, align 8, !tbaa !30
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %10, align 8, !tbaa !20
  %174 = load ptr, ptr %2, align 8, !tbaa !25
  %175 = zext i32 %170 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %173, ptr align 1 %174, i64 %175, i1 false)
  br label %176

176:                                              ; preds = %172, %169, %104, %64
  %177 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %177, ptr %2, align 8, !tbaa !25
  br label %178

178:                                              ; preds = %176, %5, %1
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr %3)
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %665, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %665

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %665, label %18

18:                                               ; preds = %14, %10
  call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %27, ptr %28, align 8, !tbaa !20
  %29 = icmp eq ptr %27, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = load i32, ptr %31, align 8, !tbaa !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 %24, ptr %19, align 8, !tbaa !18
  br label %64

35:                                               ; preds = %30
  %36 = zext i32 %24 to i64
  %37 = call noalias ptr @malloc(i64 noundef %36) #16
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = icmp eq ptr %37, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %43 = load i32, ptr %42, align 8, !tbaa !23
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %45 = load i32, ptr %44, align 4, !tbaa !24
  %46 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %43, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %45, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %38, align 8, !tbaa !22
  call void @free(ptr noundef %49) #15
  %50 = load ptr, ptr %28, align 8, !tbaa !20
  br label %60

51:                                               ; preds = %40
  store ptr null, ptr %6, align 8, !tbaa !25
  %52 = load i32, ptr %31, align 8, !tbaa !21
  %53 = load i32, ptr %23, align 4, !tbaa !19
  store i32 %53, ptr %19, align 8, !tbaa !18
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %53, ptr %56, align 8, !tbaa !26
  %57 = load ptr, ptr %38, align 8, !tbaa !22
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %57, ptr %58, align 8, !tbaa !27
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %57, ptr %59, align 8, !tbaa !28
  br label %64

60:                                               ; preds = %48, %35
  %61 = phi ptr [ %50, %48 ], [ %27, %35 ]
  call void @free(ptr noundef %61) #15
  br label %62

62:                                               ; preds = %60, %22
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  %63 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

64:                                               ; preds = %55, %51, %34, %18
  %65 = phi i32 [ %53, %55 ], [ %53, %51 ], [ %24, %34 ], [ %20, %18 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %411, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %71 = load i32, ptr %70, align 8, !tbaa !30
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %224, label %73

73:                                               ; preds = %69
  %74 = icmp eq i32 %65, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %73
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %77 = load i32, ptr %76, align 4, !tbaa !19
  %78 = shl i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = call noalias ptr @malloc(i64 noundef %79) #16
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %80, ptr %81, align 8, !tbaa !20
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

84:                                               ; preds = %75
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %86 = load i32, ptr %85, align 8, !tbaa !21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 %77, ptr %19, align 8, !tbaa !18
  br label %122

89:                                               ; preds = %84
  %90 = zext i32 %77 to i64
  %91 = call noalias ptr @malloc(i64 noundef %90) #16
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %91, ptr %92, align 8, !tbaa !22
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  call void @free(ptr noundef nonnull %80) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

95:                                               ; preds = %89
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false)
  %98 = load i32, ptr %97, align 8, !tbaa !23
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %100 = load i32, ptr %99, align 4, !tbaa !24
  %101 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %98, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %100, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %92, align 8, !tbaa !22
  call void @free(ptr noundef %104) #15
  %105 = load ptr, ptr %81, align 8, !tbaa !20
  call void @free(ptr noundef %105) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %409

106:                                              ; preds = %95
  store ptr null, ptr %6, align 8, !tbaa !25
  %107 = load i32, ptr %85, align 8, !tbaa !21
  %108 = load i32, ptr %76, align 4, !tbaa !19
  store i32 %108, ptr %19, align 8, !tbaa !18
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %108, ptr %111, align 8, !tbaa !26
  %112 = load ptr, ptr %92, align 8, !tbaa !22
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %112, ptr %113, align 8, !tbaa !27
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %112, ptr %114, align 8, !tbaa !28
  br label %155

115:                                              ; preds = %73
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %117 = load i32, ptr %116, align 8, !tbaa !21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %155, label %122

119:                                              ; preds = %106
  %120 = load i32, ptr %70, align 8, !tbaa !30
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %224, label %122

122:                                              ; preds = %119, %115, %88
  %123 = tail call ptr @__errno_location() #17
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %126 = load ptr, ptr %6, align 8, !tbaa !25
  br label %127

127:                                              ; preds = %149, %122
  %128 = phi ptr [ %126, %122 ], [ %153, %149 ]
  store i32 0, ptr %123, align 4, !tbaa !31
  store i32 0, ptr %124, align 4, !tbaa !17
  %129 = load i32, ptr %70, align 8, !tbaa !30
  %130 = call i32 @llvm.umin.i32(i32 %129, i32 1073741824)
  %131 = zext nneg i32 %130 to i64
  %132 = load i32, ptr %125, align 4, !tbaa !32
  %133 = call i64 @write(i32 noundef %132, ptr noundef %128, i64 noundef %131) #15
  %134 = trunc i64 %133 to i32
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i32, ptr %123, align 4, !tbaa !31
  %138 = icmp eq i32 %137, 11
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  store i32 1, ptr %124, align 4, !tbaa !17
  %140 = load i32, ptr %123, align 4, !tbaa !31
  br label %141

141:                                              ; preds = %139, %136
  %142 = phi i32 [ %137, %136 ], [ %140, %139 ]
  %143 = call ptr @strerror(i32 noundef %142) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %143) #15
  br label %409

144:                                              ; preds = %127
  %145 = load i32, ptr %70, align 8, !tbaa !30
  %146 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 %134), !nosanitize !33
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !33
  br i1 %147, label %148, label %149, !prof !34, !nosanitize !33

148:                                              ; preds = %144
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

149:                                              ; preds = %144
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !33
  store i32 %150, ptr %70, align 8, !tbaa !30
  %151 = load ptr, ptr %6, align 8, !tbaa !25
  %152 = and i64 %133, 2147483647
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 %152
  store ptr %153, ptr %6, align 8, !tbaa !25
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %224, label %127, !llvm.loop !35

155:                                              ; preds = %115, %110
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %157 = load i32, ptr %156, align 8, !tbaa !37
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %70, align 8, !tbaa !30
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %224, label %162

162:                                              ; preds = %159
  %163 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %156, align 8, !tbaa !37
  br label %164

164:                                              ; preds = %162, %155
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %171 = load i32, ptr %165, align 8, !tbaa !26
  br label %172

172:                                              ; preds = %222, %164
  %173 = phi i32 [ %171, %164 ], [ %219, %222 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %213

175:                                              ; preds = %172
  %176 = load ptr, ptr %166, align 8, !tbaa !27
  %177 = load ptr, ptr %167, align 8, !tbaa !28
  %178 = icmp ugt ptr %176, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %175
  %180 = tail call ptr @__errno_location() #17
  br label %181

181:                                              ; preds = %201, %179
  %182 = phi ptr [ %177, %179 ], [ %204, %201 ]
  %183 = phi ptr [ %176, %179 ], [ %205, %201 ]
  store i32 0, ptr %180, align 4, !tbaa !31
  store i32 0, ptr %168, align 4, !tbaa !17
  %184 = ptrtoint ptr %183 to i64
  %185 = ptrtoint ptr %182 to i64
  %186 = sub i64 %184, %185
  %187 = call i64 @llvm.smin.i64(i64 %186, i64 1073741824)
  %188 = and i64 %187, 4294967295
  %189 = load i32, ptr %169, align 4, !tbaa !32
  %190 = call i64 @write(i32 noundef %189, ptr noundef %182, i64 noundef %188) #15
  %191 = and i64 %190, 2147483648
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %181
  %194 = load i32, ptr %180, align 4, !tbaa !31
  %195 = icmp eq i32 %194, 11
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  store i32 1, ptr %168, align 4, !tbaa !17
  %197 = load i32, ptr %180, align 4, !tbaa !31
  br label %198

198:                                              ; preds = %196, %193
  %199 = phi i32 [ %194, %193 ], [ %197, %196 ]
  %200 = call ptr @strerror(i32 noundef %199) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %200) #15
  br label %409

201:                                              ; preds = %181
  %202 = load ptr, ptr %167, align 8, !tbaa !28
  %203 = and i64 %190, 2147483647
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %203
  store ptr %204, ptr %167, align 8, !tbaa !28
  %205 = load ptr, ptr %166, align 8, !tbaa !27
  %206 = icmp ugt ptr %205, %204
  br i1 %206, label %181, label %207, !llvm.loop !38

207:                                              ; preds = %201
  %208 = load i32, ptr %165, align 8, !tbaa !26
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %175
  %211 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %211, ptr %165, align 8, !tbaa !26
  %212 = load ptr, ptr %170, align 8, !tbaa !22
  store ptr %212, ptr %166, align 8, !tbaa !27
  store ptr %212, ptr %167, align 8, !tbaa !28
  br label %213

213:                                              ; preds = %210, %207, %172
  %214 = phi i32 [ %208, %207 ], [ %211, %210 ], [ %173, %172 ]
  %215 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %216 = icmp eq i32 %215, -2
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %409

218:                                              ; preds = %213
  %219 = load i32, ptr %165, align 8, !tbaa !26
  %220 = icmp ult i32 %214, %219
  br i1 %220, label %221, label %222, !prof !34, !nosanitize !33

221:                                              ; preds = %218
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

222:                                              ; preds = %218
  %223 = icmp eq i32 %214, %219
  br i1 %223, label %224, label %172, !llvm.loop !39

224:                                              ; preds = %222, %159, %149, %119, %69
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
  %239 = load i64, ptr %66, align 8, !tbaa !29
  br label %240

240:                                              ; preds = %407, %224
  %241 = phi i64 [ %239, %224 ], [ %404, %407 ]
  %242 = phi i1 [ false, %224 ], [ true, %407 ]
  %243 = load i32, ptr %19, align 8, !tbaa !18
  %244 = zext i32 %243 to i64
  %245 = call i64 @llvm.smin.i64(i64 %241, i64 %244)
  %246 = trunc i64 %245 to i32
  %247 = load ptr, ptr %225, align 8, !tbaa !20
  br i1 %242, label %252, label %248

248:                                              ; preds = %240
  %249 = and i64 %245, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %247, i8 0, i64 %249, i1 false)
  %250 = load ptr, ptr %225, align 8, !tbaa !20
  %251 = load i32, ptr %19, align 8, !tbaa !18
  br label %252

252:                                              ; preds = %248, %240
  %253 = phi i32 [ %251, %248 ], [ %243, %240 ]
  %254 = phi ptr [ %250, %248 ], [ %247, %240 ]
  store i32 %246, ptr %70, align 8, !tbaa !30
  store ptr %254, ptr %6, align 8, !tbaa !25
  %255 = icmp eq i32 %253, 0
  br i1 %255, label %256, label %288

256:                                              ; preds = %252
  %257 = load i32, ptr %227, align 4, !tbaa !19
  %258 = shl i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = call noalias ptr @malloc(i64 noundef %259) #16
  store ptr %260, ptr %225, align 8, !tbaa !20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

263:                                              ; preds = %256
  %264 = load i32, ptr %226, align 8, !tbaa !21
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  store i32 %257, ptr %19, align 8, !tbaa !18
  br label %291

267:                                              ; preds = %263
  %268 = zext i32 %257 to i64
  %269 = call noalias ptr @malloc(i64 noundef %268) #16
  store ptr %269, ptr %228, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  call void @free(ptr noundef nonnull %260) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

272:                                              ; preds = %267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false)
  %273 = load i32, ptr %230, align 8, !tbaa !23
  %274 = load i32, ptr %231, align 4, !tbaa !24
  %275 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %273, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %274, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %228, align 8, !tbaa !22
  call void @free(ptr noundef %278) #15
  %279 = load ptr, ptr %225, align 8, !tbaa !20
  call void @free(ptr noundef %279) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %387

280:                                              ; preds = %272
  store ptr null, ptr %6, align 8, !tbaa !25
  %281 = load i32, ptr %226, align 8, !tbaa !21
  %282 = load i32, ptr %227, align 4, !tbaa !19
  store i32 %282, ptr %19, align 8, !tbaa !18
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = load i32, ptr %70, align 8, !tbaa !30
  br label %291

286:                                              ; preds = %280
  store i32 %282, ptr %234, align 8, !tbaa !26
  %287 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %287, ptr %235, align 8, !tbaa !27
  store ptr %287, ptr %236, align 8, !tbaa !28
  br label %325

288:                                              ; preds = %252
  %289 = load i32, ptr %226, align 8, !tbaa !21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %325, label %291

291:                                              ; preds = %288, %284, %266
  %292 = phi ptr [ null, %284 ], [ %254, %288 ], [ %254, %266 ]
  %293 = phi i32 [ %285, %284 ], [ %246, %288 ], [ %246, %266 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %387, label %295

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #17
  br label %297

297:                                              ; preds = %319, %295
  %298 = phi ptr [ %292, %295 ], [ %323, %319 ]
  store i32 0, ptr %296, align 4, !tbaa !31
  store i32 0, ptr %232, align 4, !tbaa !17
  %299 = load i32, ptr %70, align 8, !tbaa !30
  %300 = call i32 @llvm.umin.i32(i32 %299, i32 1073741824)
  %301 = zext nneg i32 %300 to i64
  %302 = load i32, ptr %233, align 4, !tbaa !32
  %303 = call i64 @write(i32 noundef %302, ptr noundef %298, i64 noundef %301) #15
  %304 = trunc i64 %303 to i32
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load i32, ptr %296, align 4, !tbaa !31
  %308 = icmp eq i32 %307, 11
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  store i32 1, ptr %232, align 4, !tbaa !17
  %310 = load i32, ptr %296, align 4, !tbaa !31
  br label %311

311:                                              ; preds = %309, %306
  %312 = phi i32 [ %307, %306 ], [ %310, %309 ]
  %313 = call ptr @strerror(i32 noundef %312) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %313) #15
  br label %387

314:                                              ; preds = %297
  %315 = load i32, ptr %70, align 8, !tbaa !30
  %316 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 %304), !nosanitize !33
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !33
  br i1 %317, label %318, label %319, !prof !34, !nosanitize !33

318:                                              ; preds = %314
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !33
  store i32 %320, ptr %70, align 8, !tbaa !30
  %321 = load ptr, ptr %6, align 8, !tbaa !25
  %322 = and i64 %303, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %6, align 8, !tbaa !25
  %324 = icmp eq i32 %320, 0
  br i1 %324, label %387, label %297, !llvm.loop !35

325:                                              ; preds = %288, %286
  %326 = load i32, ptr %237, align 8, !tbaa !37
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %70, align 8, !tbaa !30
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %387, label %331

331:                                              ; preds = %328
  %332 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %237, align 8, !tbaa !37
  br label %333

333:                                              ; preds = %331, %325
  %334 = load i32, ptr %234, align 8, !tbaa !26
  br label %335

335:                                              ; preds = %385, %333
  %336 = phi i32 [ %334, %333 ], [ %382, %385 ]
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load ptr, ptr %235, align 8, !tbaa !27
  %340 = load ptr, ptr %236, align 8, !tbaa !28
  %341 = icmp ugt ptr %339, %340
  br i1 %341, label %342, label %373

342:                                              ; preds = %338
  %343 = tail call ptr @__errno_location() #17
  br label %344

344:                                              ; preds = %364, %342
  %345 = phi ptr [ %340, %342 ], [ %367, %364 ]
  %346 = phi ptr [ %339, %342 ], [ %368, %364 ]
  store i32 0, ptr %343, align 4, !tbaa !31
  store i32 0, ptr %232, align 4, !tbaa !17
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %345 to i64
  %349 = sub i64 %347, %348
  %350 = call i64 @llvm.smin.i64(i64 %349, i64 1073741824)
  %351 = and i64 %350, 4294967295
  %352 = load i32, ptr %233, align 4, !tbaa !32
  %353 = call i64 @write(i32 noundef %352, ptr noundef %345, i64 noundef %351) #15
  %354 = and i64 %353, 2147483648
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %344
  %357 = load i32, ptr %343, align 4, !tbaa !31
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  store i32 1, ptr %232, align 4, !tbaa !17
  %360 = load i32, ptr %343, align 4, !tbaa !31
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %357, %356 ], [ %360, %359 ]
  %363 = call ptr @strerror(i32 noundef %362) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %363) #15
  br label %387

364:                                              ; preds = %344
  %365 = load ptr, ptr %236, align 8, !tbaa !28
  %366 = and i64 %353, 2147483647
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  store ptr %367, ptr %236, align 8, !tbaa !28
  %368 = load ptr, ptr %235, align 8, !tbaa !27
  %369 = icmp ugt ptr %368, %367
  br i1 %369, label %344, label %370, !llvm.loop !38

370:                                              ; preds = %364
  %371 = load i32, ptr %234, align 8, !tbaa !26
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370, %338
  %374 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %374, ptr %234, align 8, !tbaa !26
  %375 = load ptr, ptr %228, align 8, !tbaa !22
  store ptr %375, ptr %235, align 8, !tbaa !27
  store ptr %375, ptr %236, align 8, !tbaa !28
  br label %376

376:                                              ; preds = %373, %370, %335
  %377 = phi i32 [ %371, %370 ], [ %374, %373 ], [ %336, %335 ]
  %378 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %379 = icmp eq i32 %378, -2
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %387

381:                                              ; preds = %376
  %382 = load i32, ptr %234, align 8, !tbaa !26
  %383 = icmp ult i32 %377, %382
  br i1 %383, label %384, label %385, !prof !34, !nosanitize !33

384:                                              ; preds = %381
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

385:                                              ; preds = %381
  %386 = icmp eq i32 %377, %382
  br i1 %386, label %387, label %335, !llvm.loop !39

387:                                              ; preds = %385, %380, %361, %328, %319, %311, %291, %277, %271, %262
  %388 = phi i1 [ true, %311 ], [ true, %361 ], [ true, %380 ], [ false, %328 ], [ true, %262 ], [ true, %271 ], [ true, %277 ], [ false, %291 ], [ false, %385 ], [ false, %319 ]
  %389 = load i32, ptr %70, align 8, !tbaa !30
  %390 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %389), !nosanitize !33
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !33
  br i1 %391, label %392, label %393, !prof !34, !nosanitize !33

392:                                              ; preds = %400, %387
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

393:                                              ; preds = %387
  %394 = extractvalue { i32, i1 } %390, 0, !nosanitize !33
  %395 = zext i32 %394 to i64
  %396 = load i64, ptr %238, align 8, !tbaa !40
  %397 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %396, i64 %395), !nosanitize !33
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !33
  br i1 %398, label %399, label %400, !prof !34, !nosanitize !33

399:                                              ; preds = %393
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

400:                                              ; preds = %393
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !33
  store i64 %401, ptr %238, align 8, !tbaa !40
  %402 = load i64, ptr %66, align 8, !tbaa !29
  %403 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %402, i64 %395), !nosanitize !33
  %404 = extractvalue { i64, i1 } %403, 0, !nosanitize !33
  %405 = extractvalue { i64, i1 } %403, 1, !nosanitize !33
  br i1 %405, label %392, label %406, !prof !34, !nosanitize !33

406:                                              ; preds = %400
  store i64 %404, ptr %66, align 8, !tbaa !29
  br i1 %388, label %409, label %407

407:                                              ; preds = %406
  %408 = icmp eq i64 %404, 0
  br i1 %408, label %411, label %240, !llvm.loop !41

409:                                              ; preds = %406, %217, %198, %141, %103, %94, %83
  %410 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

411:                                              ; preds = %407, %64
  %412 = load ptr, ptr %6, align 8, !tbaa !25
  %413 = icmp eq ptr %412, null
  br i1 %413, label %590, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %416 = load i32, ptr %415, align 8, !tbaa !30
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 %417
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %420 = load ptr, ptr %419, align 8, !tbaa !20
  %421 = load i32, ptr %19, align 8, !tbaa !18
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds nuw i8, ptr %420, i64 %422
  %424 = icmp ugt ptr %418, %423
  br i1 %424, label %425, label %590

425:                                              ; preds = %414
  %426 = icmp eq i32 %421, 0
  br i1 %426, label %427, label %468

427:                                              ; preds = %425
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %429 = load i32, ptr %428, align 4, !tbaa !19
  %430 = shl i32 %429, 1
  %431 = zext i32 %430 to i64
  %432 = call noalias ptr @malloc(i64 noundef %431) #16
  store ptr %432, ptr %419, align 8, !tbaa !20
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %435

434:                                              ; preds = %427
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

435:                                              ; preds = %427
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %437 = load i32, ptr %436, align 8, !tbaa !21
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %435
  store i32 %429, ptr %19, align 8, !tbaa !18
  br label %472

440:                                              ; preds = %435
  %441 = zext i32 %429 to i64
  %442 = call noalias ptr @malloc(i64 noundef %441) #16
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %442, ptr %443, align 8, !tbaa !22
  %444 = icmp eq ptr %442, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  call void @free(ptr noundef nonnull %432) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

446:                                              ; preds = %440
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %447, i8 0, i64 24, i1 false)
  %449 = load i32, ptr %448, align 8, !tbaa !23
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %451 = load i32, ptr %450, align 4, !tbaa !24
  %452 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %449, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %451, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %446
  %455 = load ptr, ptr %443, align 8, !tbaa !22
  call void @free(ptr noundef %455) #15
  %456 = load ptr, ptr %419, align 8, !tbaa !20
  call void @free(ptr noundef %456) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

457:                                              ; preds = %446
  store ptr null, ptr %6, align 8, !tbaa !25
  %458 = load i32, ptr %436, align 8, !tbaa !21
  %459 = load i32, ptr %428, align 4, !tbaa !19
  store i32 %459, ptr %19, align 8, !tbaa !18
  %460 = icmp eq i32 %458, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %457
  %462 = load i32, ptr %415, align 8, !tbaa !30
  br label %472

463:                                              ; preds = %457
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %459, ptr %464, align 8, !tbaa !26
  %465 = load ptr, ptr %443, align 8, !tbaa !22
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %465, ptr %466, align 8, !tbaa !27
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %465, ptr %467, align 8, !tbaa !28
  br label %508

468:                                              ; preds = %425
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %470 = load i32, ptr %469, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %508, label %472

472:                                              ; preds = %468, %461, %439
  %473 = phi ptr [ null, %461 ], [ %412, %468 ], [ %412, %439 ]
  %474 = phi i32 [ %462, %461 ], [ %416, %468 ], [ %416, %439 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %580, label %476

476:                                              ; preds = %472
  %477 = tail call ptr @__errno_location() #17
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %480

480:                                              ; preds = %502, %476
  %481 = phi ptr [ %473, %476 ], [ %506, %502 ]
  store i32 0, ptr %477, align 4, !tbaa !31
  store i32 0, ptr %478, align 4, !tbaa !17
  %482 = load i32, ptr %415, align 8, !tbaa !30
  %483 = call i32 @llvm.umin.i32(i32 %482, i32 1073741824)
  %484 = zext nneg i32 %483 to i64
  %485 = load i32, ptr %479, align 4, !tbaa !32
  %486 = call i64 @write(i32 noundef %485, ptr noundef %481, i64 noundef %484) #15
  %487 = trunc i64 %486 to i32
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %497

489:                                              ; preds = %480
  %490 = load i32, ptr %477, align 4, !tbaa !31
  %491 = icmp eq i32 %490, 11
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  store i32 1, ptr %478, align 4, !tbaa !17
  %493 = load i32, ptr %477, align 4, !tbaa !31
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %490, %489 ], [ %493, %492 ]
  %496 = call ptr @strerror(i32 noundef %495) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %496) #15
  br label %577

497:                                              ; preds = %480
  %498 = load i32, ptr %415, align 8, !tbaa !30
  %499 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %487), !nosanitize !33
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !33
  br i1 %500, label %501, label %502, !prof !34, !nosanitize !33

501:                                              ; preds = %497
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !33
  store i32 %503, ptr %415, align 8, !tbaa !30
  %504 = load ptr, ptr %6, align 8, !tbaa !25
  %505 = and i64 %486, 2147483647
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store ptr %506, ptr %6, align 8, !tbaa !25
  %507 = icmp eq i32 %503, 0
  br i1 %507, label %577, label %480, !llvm.loop !35

508:                                              ; preds = %468, %463
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %510 = load i32, ptr %509, align 8, !tbaa !37
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %415, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %580, label %515

515:                                              ; preds = %512
  %516 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %509, align 8, !tbaa !37
  br label %517

517:                                              ; preds = %515, %508
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %524 = load i32, ptr %518, align 8, !tbaa !26
  br label %525

525:                                              ; preds = %575, %517
  %526 = phi i32 [ %524, %517 ], [ %572, %575 ]
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %566

528:                                              ; preds = %525
  %529 = load ptr, ptr %519, align 8, !tbaa !27
  %530 = load ptr, ptr %520, align 8, !tbaa !28
  %531 = icmp ugt ptr %529, %530
  br i1 %531, label %532, label %563

532:                                              ; preds = %528
  %533 = tail call ptr @__errno_location() #17
  br label %534

534:                                              ; preds = %554, %532
  %535 = phi ptr [ %530, %532 ], [ %557, %554 ]
  %536 = phi ptr [ %529, %532 ], [ %558, %554 ]
  store i32 0, ptr %533, align 4, !tbaa !31
  store i32 0, ptr %521, align 4, !tbaa !17
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %535 to i64
  %539 = sub i64 %537, %538
  %540 = call i64 @llvm.smin.i64(i64 %539, i64 1073741824)
  %541 = and i64 %540, 4294967295
  %542 = load i32, ptr %522, align 4, !tbaa !32
  %543 = call i64 @write(i32 noundef %542, ptr noundef %535, i64 noundef %541) #15
  %544 = and i64 %543, 2147483648
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %534
  %547 = load i32, ptr %533, align 4, !tbaa !31
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %521, align 4, !tbaa !17
  %550 = load i32, ptr %533, align 4, !tbaa !31
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %547, %546 ], [ %550, %549 ]
  %553 = call ptr @strerror(i32 noundef %552) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %553) #15
  br label %577

554:                                              ; preds = %534
  %555 = load ptr, ptr %520, align 8, !tbaa !28
  %556 = and i64 %543, 2147483647
  %557 = getelementptr inbounds nuw i8, ptr %555, i64 %556
  store ptr %557, ptr %520, align 8, !tbaa !28
  %558 = load ptr, ptr %519, align 8, !tbaa !27
  %559 = icmp ugt ptr %558, %557
  br i1 %559, label %534, label %560, !llvm.loop !38

560:                                              ; preds = %554
  %561 = load i32, ptr %518, align 8, !tbaa !26
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560, %528
  %564 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %564, ptr %518, align 8, !tbaa !26
  %565 = load ptr, ptr %523, align 8, !tbaa !22
  store ptr %565, ptr %519, align 8, !tbaa !27
  store ptr %565, ptr %520, align 8, !tbaa !28
  br label %566

566:                                              ; preds = %563, %560, %525
  %567 = phi i32 [ %561, %560 ], [ %564, %563 ], [ %526, %525 ]
  %568 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %569 = icmp eq i32 %568, -2
  br i1 %569, label %570, label %571

570:                                              ; preds = %566
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %577

571:                                              ; preds = %566
  %572 = load i32, ptr %518, align 8, !tbaa !26
  %573 = icmp ult i32 %567, %572
  br i1 %573, label %574, label %575, !prof !34, !nosanitize !33

574:                                              ; preds = %571
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

575:                                              ; preds = %571
  %576 = icmp eq i32 %567, %572
  br i1 %576, label %577, label %525, !llvm.loop !39

577:                                              ; preds = %575, %570, %551, %502, %494, %454, %445, %434
  %578 = load i32, ptr %415, align 8, !tbaa !30
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %577, %512, %472
  %581 = load ptr, ptr %419, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  br label %590

582:                                              ; preds = %577
  %583 = load ptr, ptr %419, align 8, !tbaa !20
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  %585 = zext i32 %578 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %583, ptr align 1 %584, i64 %585, i1 false)
  %586 = load ptr, ptr %419, align 8, !tbaa !20
  store ptr %586, ptr %6, align 8, !tbaa !25
  %587 = load i32, ptr %415, align 8, !tbaa !30
  %588 = load i32, ptr %19, align 8, !tbaa !18
  %589 = icmp ule i32 %587, %588
  br label %590

590:                                              ; preds = %582, %580, %414, %411
  %591 = phi i1 [ true, %580 ], [ %589, %582 ], [ true, %414 ], [ true, %411 ]
  %592 = load i32, ptr %11, align 8, !tbaa !16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %606, label %594

594:                                              ; preds = %590
  br i1 %591, label %600, label %595

595:                                              ; preds = %594
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %597 = load i32, ptr %596, align 4, !tbaa !17
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %595
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %600

600:                                              ; preds = %599, %595, %594
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %602 = load i32, ptr %601, align 4, !tbaa !17
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

606:                                              ; preds = %600, %590
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %608 = load i32, ptr %607, align 8, !tbaa !30
  %609 = icmp eq i32 %608, 0
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %611 = load ptr, ptr %610, align 8, !tbaa !20
  br i1 %609, label %614, label %612

612:                                              ; preds = %606
  %613 = load ptr, ptr %6, align 8, !tbaa !25
  br label %615

614:                                              ; preds = %606
  store ptr %611, ptr %6, align 8, !tbaa !25
  br label %615

615:                                              ; preds = %614, %612
  %616 = phi ptr [ %613, %612 ], [ %611, %614 ]
  %617 = ptrtoint ptr %616 to i64
  %618 = ptrtoint ptr %611 to i64
  %619 = sub i64 %617, %618
  %620 = getelementptr inbounds i8, ptr %611, i64 %619
  %621 = zext i32 %608 to i64
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 %621
  %623 = load i32, ptr %19, align 8, !tbaa !18
  %624 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !33
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !33
  br i1 %625, label %626, label %627, !prof !34, !nosanitize !33

626:                                              ; preds = %615
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

627:                                              ; preds = %615
  %628 = extractvalue { i32, i1 } %624, 0, !nosanitize !33
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr %622, i64 %629
  store i8 0, ptr %630, align 1, !tbaa !45
  %631 = load i32, ptr %19, align 8, !tbaa !18
  %632 = zext i32 %631 to i64
  %633 = call i32 @vsnprintf(ptr noundef %622, i64 noundef %632, ptr noundef readonly %1, ptr noundef nonnull %3) #15
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %665, label %635

635:                                              ; preds = %627
  %636 = load i32, ptr %19, align 8, !tbaa !18
  %637 = icmp ult i32 %633, %636
  br i1 %637, label %638, label %665

638:                                              ; preds = %635
  %639 = add i32 %636, -1
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds nuw i8, ptr %622, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !45
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %644, label %665

644:                                              ; preds = %638
  %645 = load i32, ptr %607, align 8, !tbaa !30
  %646 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 %633), !nosanitize !33
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !33
  br i1 %647, label %648, label %649, !prof !34, !nosanitize !33

648:                                              ; preds = %649, %644
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !33
  store i32 %650, ptr %607, align 8, !tbaa !30
  %651 = sext i32 %633 to i64
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %653 = load i64, ptr %652, align 8, !tbaa !40
  %654 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %653, i64 %651), !nosanitize !33
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !33
  br i1 %655, label %648, label %656, !prof !34, !nosanitize !33

656:                                              ; preds = %649
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !33
  store i64 %657, ptr %652, align 8, !tbaa !40
  call fastcc void @gz_vacate(ptr noundef %0)
  %658 = load i32, ptr %11, align 8, !tbaa !16
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %664, label %660

660:                                              ; preds = %656
  %661 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %662 = load i32, ptr %661, align 4, !tbaa !17
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %665, label %664

664:                                              ; preds = %660, %656
  br label %665

665:                                              ; preds = %664, %660, %638, %635, %627, %604, %409, %62, %14, %5, %2
  %666 = phi i32 [ %63, %62 ], [ %410, %409 ], [ %633, %664 ], [ %605, %604 ], [ -2, %2 ], [ -2, %14 ], [ -2, %5 ], [ 0, %638 ], [ 0, %635 ], [ 0, %627 ], [ %658, %660 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr %3)
  ret i32 %666
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %537, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %537

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %537, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %537, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %366, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %180, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %71

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
  br label %535

40:                                               ; preds = %31
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %42 = load i32, ptr %41, align 8, !tbaa !21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 %33, ptr %28, align 8, !tbaa !18
  br label %78

45:                                               ; preds = %40
  %46 = zext i32 %33 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #16
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %47, ptr %48, align 8, !tbaa !22
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %36) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %535

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %54, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !22
  tail call void @free(ptr noundef %60) #15
  %61 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @free(ptr noundef %61) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %535

62:                                               ; preds = %51
  store ptr null, ptr %23, align 8, !tbaa !25
  %63 = load i32, ptr %41, align 8, !tbaa !21
  %64 = load i32, ptr %32, align 4, !tbaa !19
  store i32 %64, ptr %28, align 8, !tbaa !18
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
  br label %111

71:                                               ; preds = %27
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %73 = load i32, ptr %72, align 8, !tbaa !21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %111, label %78

75:                                               ; preds = %62
  %76 = load i32, ptr %24, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %180, label %78

78:                                               ; preds = %75, %71, %44
  %79 = tail call ptr @__errno_location() #17
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %82 = load ptr, ptr %23, align 8, !tbaa !25
  br label %83

83:                                               ; preds = %105, %78
  %84 = phi ptr [ %82, %78 ], [ %109, %105 ]
  store i32 0, ptr %79, align 4, !tbaa !31
  store i32 0, ptr %80, align 4, !tbaa !17
  %85 = load i32, ptr %24, align 8, !tbaa !30
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 1073741824)
  %87 = zext nneg i32 %86 to i64
  %88 = load i32, ptr %81, align 4, !tbaa !32
  %89 = tail call i64 @write(i32 noundef %88, ptr noundef %84, i64 noundef %87) #15
  %90 = trunc i64 %89 to i32
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load i32, ptr %79, align 4, !tbaa !31
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i32 1, ptr %80, align 4, !tbaa !17
  %96 = load i32, ptr %79, align 4, !tbaa !31
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %95 ]
  %99 = tail call ptr @strerror(i32 noundef %98) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %99) #15
  br label %535

100:                                              ; preds = %83
  %101 = load i32, ptr %24, align 8, !tbaa !30
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %90), !nosanitize !33
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !33
  br i1 %103, label %104, label %105, !prof !34, !nosanitize !33

104:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

105:                                              ; preds = %100
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !33
  store i32 %106, ptr %24, align 8, !tbaa !30
  %107 = load ptr, ptr %23, align 8, !tbaa !25
  %108 = and i64 %89, 2147483647
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  store ptr %109, ptr %23, align 8, !tbaa !25
  %110 = icmp eq i32 %106, 0
  br i1 %110, label %180, label %83, !llvm.loop !35

111:                                              ; preds = %71, %66
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %113 = load i32, ptr %112, align 8, !tbaa !37
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %24, align 8, !tbaa !30
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %180, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %112, align 8, !tbaa !37
  br label %120

120:                                              ; preds = %118, %111
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %127 = load i32, ptr %121, align 8, !tbaa !26
  br label %128

128:                                              ; preds = %178, %120
  %129 = phi i32 [ %127, %120 ], [ %175, %178 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %169

131:                                              ; preds = %128
  %132 = load ptr, ptr %122, align 8, !tbaa !27
  %133 = load ptr, ptr %123, align 8, !tbaa !28
  %134 = icmp ugt ptr %132, %133
  br i1 %134, label %135, label %166

135:                                              ; preds = %131
  %136 = tail call ptr @__errno_location() #17
  br label %137

137:                                              ; preds = %157, %135
  %138 = phi ptr [ %133, %135 ], [ %160, %157 ]
  %139 = phi ptr [ %132, %135 ], [ %161, %157 ]
  store i32 0, ptr %136, align 4, !tbaa !31
  store i32 0, ptr %124, align 4, !tbaa !17
  %140 = ptrtoint ptr %139 to i64
  %141 = ptrtoint ptr %138 to i64
  %142 = sub i64 %140, %141
  %143 = tail call i64 @llvm.smin.i64(i64 %142, i64 1073741824)
  %144 = and i64 %143, 4294967295
  %145 = load i32, ptr %125, align 4, !tbaa !32
  %146 = tail call i64 @write(i32 noundef %145, ptr noundef %138, i64 noundef %144) #15
  %147 = and i64 %146, 2147483648
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %137
  %150 = load i32, ptr %136, align 4, !tbaa !31
  %151 = icmp eq i32 %150, 11
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i32 1, ptr %124, align 4, !tbaa !17
  %153 = load i32, ptr %136, align 4, !tbaa !31
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %152 ]
  %156 = tail call ptr @strerror(i32 noundef %155) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %156) #15
  br label %535

157:                                              ; preds = %137
  %158 = load ptr, ptr %123, align 8, !tbaa !28
  %159 = and i64 %146, 2147483647
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store ptr %160, ptr %123, align 8, !tbaa !28
  %161 = load ptr, ptr %122, align 8, !tbaa !27
  %162 = icmp ugt ptr %161, %160
  br i1 %162, label %137, label %163, !llvm.loop !38

163:                                              ; preds = %157
  %164 = load i32, ptr %121, align 8, !tbaa !26
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %131
  %167 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %167, ptr %121, align 8, !tbaa !26
  %168 = load ptr, ptr %126, align 8, !tbaa !22
  store ptr %168, ptr %122, align 8, !tbaa !27
  store ptr %168, ptr %123, align 8, !tbaa !28
  br label %169

169:                                              ; preds = %166, %163, %128
  %170 = phi i32 [ %164, %163 ], [ %167, %166 ], [ %129, %128 ]
  %171 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %172 = icmp eq i32 %171, -2
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %535

174:                                              ; preds = %169
  %175 = load i32, ptr %121, align 8, !tbaa !26
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %177, label %178, !prof !34, !nosanitize !33

177:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

178:                                              ; preds = %174
  %179 = icmp eq i32 %170, %175
  br i1 %179, label %180, label %128, !llvm.loop !39

180:                                              ; preds = %178, %115, %105, %75, %22
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %196 = load i64, ptr %19, align 8, !tbaa !29
  br label %197

197:                                              ; preds = %364, %180
  %198 = phi i64 [ %196, %180 ], [ %361, %364 ]
  %199 = phi i1 [ false, %180 ], [ true, %364 ]
  %200 = load i32, ptr %181, align 8, !tbaa !18
  %201 = zext i32 %200 to i64
  %202 = tail call i64 @llvm.smin.i64(i64 %198, i64 %201)
  %203 = trunc i64 %202 to i32
  %204 = load ptr, ptr %182, align 8, !tbaa !20
  br i1 %199, label %209, label %205

205:                                              ; preds = %197
  %206 = and i64 %202, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %204, i8 0, i64 %206, i1 false)
  %207 = load ptr, ptr %182, align 8, !tbaa !20
  %208 = load i32, ptr %181, align 8, !tbaa !18
  br label %209

209:                                              ; preds = %205, %197
  %210 = phi i32 [ %208, %205 ], [ %200, %197 ]
  %211 = phi ptr [ %207, %205 ], [ %204, %197 ]
  store i32 %203, ptr %24, align 8, !tbaa !30
  store ptr %211, ptr %23, align 8, !tbaa !25
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %209
  %214 = load i32, ptr %184, align 4, !tbaa !19
  %215 = shl i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #16
  store ptr %217, ptr %182, align 8, !tbaa !20
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

220:                                              ; preds = %213
  %221 = load i32, ptr %183, align 8, !tbaa !21
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store i32 %214, ptr %181, align 8, !tbaa !18
  br label %248

224:                                              ; preds = %220
  %225 = zext i32 %214 to i64
  %226 = tail call noalias ptr @malloc(i64 noundef %225) #16
  store ptr %226, ptr %185, align 8, !tbaa !22
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  tail call void @free(ptr noundef nonnull %217) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

229:                                              ; preds = %224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  %230 = load i32, ptr %187, align 8, !tbaa !23
  %231 = load i32, ptr %188, align 4, !tbaa !24
  %232 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %230, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %231, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %185, align 8, !tbaa !22
  tail call void @free(ptr noundef %235) #15
  %236 = load ptr, ptr %182, align 8, !tbaa !20
  tail call void @free(ptr noundef %236) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

237:                                              ; preds = %229
  store ptr null, ptr %23, align 8, !tbaa !25
  %238 = load i32, ptr %183, align 8, !tbaa !21
  %239 = load i32, ptr %184, align 4, !tbaa !19
  store i32 %239, ptr %181, align 8, !tbaa !18
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %24, align 8, !tbaa !30
  br label %248

243:                                              ; preds = %237
  store i32 %239, ptr %191, align 8, !tbaa !26
  %244 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %244, ptr %192, align 8, !tbaa !27
  store ptr %244, ptr %193, align 8, !tbaa !28
  br label %282

245:                                              ; preds = %209
  %246 = load i32, ptr %183, align 8, !tbaa !21
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %282, label %248

248:                                              ; preds = %245, %241, %223
  %249 = phi ptr [ null, %241 ], [ %211, %245 ], [ %211, %223 ]
  %250 = phi i32 [ %242, %241 ], [ %203, %245 ], [ %203, %223 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %344, label %252

252:                                              ; preds = %248
  %253 = tail call ptr @__errno_location() #17
  br label %254

254:                                              ; preds = %276, %252
  %255 = phi ptr [ %249, %252 ], [ %280, %276 ]
  store i32 0, ptr %253, align 4, !tbaa !31
  store i32 0, ptr %189, align 4, !tbaa !17
  %256 = load i32, ptr %24, align 8, !tbaa !30
  %257 = tail call i32 @llvm.umin.i32(i32 %256, i32 1073741824)
  %258 = zext nneg i32 %257 to i64
  %259 = load i32, ptr %190, align 4, !tbaa !32
  %260 = tail call i64 @write(i32 noundef %259, ptr noundef %255, i64 noundef %258) #15
  %261 = trunc i64 %260 to i32
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %254
  %264 = load i32, ptr %253, align 4, !tbaa !31
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  store i32 1, ptr %189, align 4, !tbaa !17
  %267 = load i32, ptr %253, align 4, !tbaa !31
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i32 [ %264, %263 ], [ %267, %266 ]
  %270 = tail call ptr @strerror(i32 noundef %269) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %270) #15
  br label %344

271:                                              ; preds = %254
  %272 = load i32, ptr %24, align 8, !tbaa !30
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %272, i32 %261), !nosanitize !33
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !33
  br i1 %274, label %275, label %276, !prof !34, !nosanitize !33

275:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

276:                                              ; preds = %271
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !33
  store i32 %277, ptr %24, align 8, !tbaa !30
  %278 = load ptr, ptr %23, align 8, !tbaa !25
  %279 = and i64 %260, 2147483647
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 %279
  store ptr %280, ptr %23, align 8, !tbaa !25
  %281 = icmp eq i32 %277, 0
  br i1 %281, label %344, label %254, !llvm.loop !35

282:                                              ; preds = %245, %243
  %283 = load i32, ptr %194, align 8, !tbaa !37
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %24, align 8, !tbaa !30
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %344, label %288

288:                                              ; preds = %285
  %289 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %194, align 8, !tbaa !37
  br label %290

290:                                              ; preds = %288, %282
  %291 = load i32, ptr %191, align 8, !tbaa !26
  br label %292

292:                                              ; preds = %342, %290
  %293 = phi i32 [ %291, %290 ], [ %339, %342 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  %296 = load ptr, ptr %192, align 8, !tbaa !27
  %297 = load ptr, ptr %193, align 8, !tbaa !28
  %298 = icmp ugt ptr %296, %297
  br i1 %298, label %299, label %330

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #17
  br label %301

301:                                              ; preds = %321, %299
  %302 = phi ptr [ %297, %299 ], [ %324, %321 ]
  %303 = phi ptr [ %296, %299 ], [ %325, %321 ]
  store i32 0, ptr %300, align 4, !tbaa !31
  store i32 0, ptr %189, align 4, !tbaa !17
  %304 = ptrtoint ptr %303 to i64
  %305 = ptrtoint ptr %302 to i64
  %306 = sub i64 %304, %305
  %307 = tail call i64 @llvm.smin.i64(i64 %306, i64 1073741824)
  %308 = and i64 %307, 4294967295
  %309 = load i32, ptr %190, align 4, !tbaa !32
  %310 = tail call i64 @write(i32 noundef %309, ptr noundef %302, i64 noundef %308) #15
  %311 = and i64 %310, 2147483648
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %301
  %314 = load i32, ptr %300, align 4, !tbaa !31
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  store i32 1, ptr %189, align 4, !tbaa !17
  %317 = load i32, ptr %300, align 4, !tbaa !31
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi i32 [ %314, %313 ], [ %317, %316 ]
  %320 = tail call ptr @strerror(i32 noundef %319) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %320) #15
  br label %344

321:                                              ; preds = %301
  %322 = load ptr, ptr %193, align 8, !tbaa !28
  %323 = and i64 %310, 2147483647
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 %323
  store ptr %324, ptr %193, align 8, !tbaa !28
  %325 = load ptr, ptr %192, align 8, !tbaa !27
  %326 = icmp ugt ptr %325, %324
  br i1 %326, label %301, label %327, !llvm.loop !38

327:                                              ; preds = %321
  %328 = load i32, ptr %191, align 8, !tbaa !26
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %295
  %331 = load i32, ptr %181, align 8, !tbaa !18
  store i32 %331, ptr %191, align 8, !tbaa !26
  %332 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %332, ptr %192, align 8, !tbaa !27
  store ptr %332, ptr %193, align 8, !tbaa !28
  br label %333

333:                                              ; preds = %330, %327, %292
  %334 = phi i32 [ %328, %327 ], [ %331, %330 ], [ %293, %292 ]
  %335 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %336 = icmp eq i32 %335, -2
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %344

338:                                              ; preds = %333
  %339 = load i32, ptr %191, align 8, !tbaa !26
  %340 = icmp ult i32 %334, %339
  br i1 %340, label %341, label %342, !prof !34, !nosanitize !33

341:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

342:                                              ; preds = %338
  %343 = icmp eq i32 %334, %339
  br i1 %343, label %344, label %292, !llvm.loop !39

344:                                              ; preds = %342, %337, %318, %285, %276, %268, %248, %234, %228, %219
  %345 = phi i1 [ true, %268 ], [ true, %318 ], [ true, %337 ], [ false, %285 ], [ true, %219 ], [ true, %228 ], [ true, %234 ], [ false, %248 ], [ false, %342 ], [ false, %276 ]
  %346 = load i32, ptr %24, align 8, !tbaa !30
  %347 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %346), !nosanitize !33
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !33
  br i1 %348, label %349, label %350, !prof !34, !nosanitize !33

349:                                              ; preds = %357, %344
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

350:                                              ; preds = %344
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !33
  %352 = zext i32 %351 to i64
  %353 = load i64, ptr %195, align 8, !tbaa !40
  %354 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %353, i64 %352), !nosanitize !33
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !33
  br i1 %355, label %356, label %357, !prof !34, !nosanitize !33

356:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

357:                                              ; preds = %350
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !33
  store i64 %358, ptr %195, align 8, !tbaa !40
  %359 = load i64, ptr %19, align 8, !tbaa !29
  %360 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %359, i64 %352), !nosanitize !33
  %361 = extractvalue { i64, i1 } %360, 0, !nosanitize !33
  %362 = extractvalue { i64, i1 } %360, 1, !nosanitize !33
  br i1 %362, label %349, label %363, !prof !34, !nosanitize !33

363:                                              ; preds = %357
  store i64 %361, ptr %19, align 8, !tbaa !29
  br i1 %345, label %535, label %364

364:                                              ; preds = %363
  %365 = icmp eq i64 %361, 0
  br i1 %365, label %366, label %197, !llvm.loop !41

366:                                              ; preds = %364, %18
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %369 = load i32, ptr %368, align 8, !tbaa !18
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %411

371:                                              ; preds = %366
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %373 = load i32, ptr %372, align 4, !tbaa !19
  %374 = shl i32 %373, 1
  %375 = zext i32 %374 to i64
  %376 = tail call noalias ptr @malloc(i64 noundef %375) #16
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %376, ptr %377, align 8, !tbaa !20
  %378 = icmp eq ptr %376, null
  br i1 %378, label %379, label %380

379:                                              ; preds = %371
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %535

380:                                              ; preds = %371
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %382 = load i32, ptr %381, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  store i32 %373, ptr %368, align 8, !tbaa !18
  br label %415

385:                                              ; preds = %380
  %386 = zext i32 %373 to i64
  %387 = tail call noalias ptr @malloc(i64 noundef %386) #16
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %387, ptr %388, align 8, !tbaa !22
  %389 = icmp eq ptr %387, null
  br i1 %389, label %390, label %391

390:                                              ; preds = %385
  tail call void @free(ptr noundef nonnull %376) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %535

391:                                              ; preds = %385
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %392, i8 0, i64 24, i1 false)
  %394 = load i32, ptr %393, align 8, !tbaa !23
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %396 = load i32, ptr %395, align 4, !tbaa !24
  %397 = tail call i32 @deflateInit2_(ptr noundef nonnull %367, i32 noundef %394, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %396, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %391
  %400 = load ptr, ptr %388, align 8, !tbaa !22
  tail call void @free(ptr noundef %400) #15
  %401 = load ptr, ptr %377, align 8, !tbaa !20
  tail call void @free(ptr noundef %401) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %535

402:                                              ; preds = %391
  store ptr null, ptr %367, align 8, !tbaa !25
  %403 = load i32, ptr %381, align 8, !tbaa !21
  %404 = load i32, ptr %372, align 4, !tbaa !19
  store i32 %404, ptr %368, align 8, !tbaa !18
  %405 = icmp eq i32 %403, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %402
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %404, ptr %407, align 8, !tbaa !26
  %408 = load ptr, ptr %388, align 8, !tbaa !22
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %408, ptr %409, align 8, !tbaa !27
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %408, ptr %410, align 8, !tbaa !28
  br label %452

411:                                              ; preds = %366
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %413 = load i32, ptr %412, align 8, !tbaa !21
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %452, label %415

415:                                              ; preds = %411, %402, %384
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %417 = load i32, ptr %416, align 8, !tbaa !30
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %535, label %419

419:                                              ; preds = %415
  %420 = tail call ptr @__errno_location() #17
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %423 = load ptr, ptr %367, align 8, !tbaa !25
  br label %424

424:                                              ; preds = %446, %419
  %425 = phi ptr [ %423, %419 ], [ %450, %446 ]
  store i32 0, ptr %420, align 4, !tbaa !31
  store i32 0, ptr %421, align 4, !tbaa !17
  %426 = load i32, ptr %416, align 8, !tbaa !30
  %427 = tail call i32 @llvm.umin.i32(i32 %426, i32 1073741824)
  %428 = zext nneg i32 %427 to i64
  %429 = load i32, ptr %422, align 4, !tbaa !32
  %430 = tail call i64 @write(i32 noundef %429, ptr noundef %425, i64 noundef %428) #15
  %431 = trunc i64 %430 to i32
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %424
  %434 = load i32, ptr %420, align 4, !tbaa !31
  %435 = icmp eq i32 %434, 11
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  store i32 1, ptr %421, align 4, !tbaa !17
  %437 = load i32, ptr %420, align 4, !tbaa !31
  br label %438

438:                                              ; preds = %436, %433
  %439 = phi i32 [ %434, %433 ], [ %437, %436 ]
  %440 = tail call ptr @strerror(i32 noundef %439) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %440) #15
  br label %535

441:                                              ; preds = %424
  %442 = load i32, ptr %416, align 8, !tbaa !30
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %442, i32 %431), !nosanitize !33
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !33
  br i1 %444, label %445, label %446, !prof !34, !nosanitize !33

445:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

446:                                              ; preds = %441
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !33
  store i32 %447, ptr %416, align 8, !tbaa !30
  %448 = load ptr, ptr %367, align 8, !tbaa !25
  %449 = and i64 %430, 2147483647
  %450 = getelementptr inbounds nuw i8, ptr %448, i64 %449
  store ptr %450, ptr %367, align 8, !tbaa !25
  %451 = icmp eq i32 %447, 0
  br i1 %451, label %535, label %424, !llvm.loop !35

452:                                              ; preds = %411, %406
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %454 = load i32, ptr %453, align 8, !tbaa !37
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %463, label %456

456:                                              ; preds = %452
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %458 = load i32, ptr %457, align 8, !tbaa !30
  %459 = or i32 %458, %1
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %535, label %461

461:                                              ; preds = %456
  %462 = tail call i32 @deflateReset(ptr noundef nonnull %367) #15
  store i32 0, ptr %453, align 8, !tbaa !37
  br label %463

463:                                              ; preds = %461, %452
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %465 = icmp ne i32 %1, 0
  %466 = icmp ne i32 %1, 4
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %472 = load i32, ptr %464, align 8, !tbaa !26
  br label %473

473:                                              ; preds = %530, %463
  %474 = phi i32 [ %472, %463 ], [ %527, %530 ]
  %475 = phi i32 [ 0, %463 ], [ %523, %530 ]
  %476 = icmp eq i32 %474, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %473
  %478 = icmp eq i32 %475, 1
  %479 = or i1 %466, %478
  %480 = and i1 %465, %479
  br i1 %480, label %481, label %521

481:                                              ; preds = %477, %473
  %482 = load ptr, ptr %467, align 8, !tbaa !27
  %483 = load ptr, ptr %468, align 8, !tbaa !28
  %484 = icmp ugt ptr %482, %483
  br i1 %484, label %485, label %515

485:                                              ; preds = %481
  %486 = tail call ptr @__errno_location() #17
  br label %487

487:                                              ; preds = %507, %485
  %488 = phi ptr [ %483, %485 ], [ %510, %507 ]
  %489 = phi ptr [ %482, %485 ], [ %511, %507 ]
  store i32 0, ptr %486, align 4, !tbaa !31
  store i32 0, ptr %469, align 4, !tbaa !17
  %490 = ptrtoint ptr %489 to i64
  %491 = ptrtoint ptr %488 to i64
  %492 = sub i64 %490, %491
  %493 = tail call i64 @llvm.smin.i64(i64 %492, i64 1073741824)
  %494 = and i64 %493, 4294967295
  %495 = load i32, ptr %470, align 4, !tbaa !32
  %496 = tail call i64 @write(i32 noundef %495, ptr noundef %488, i64 noundef %494) #15
  %497 = and i64 %496, 2147483648
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %507, label %499

499:                                              ; preds = %487
  %500 = load i32, ptr %486, align 4, !tbaa !31
  %501 = icmp eq i32 %500, 11
  br i1 %501, label %502, label %504

502:                                              ; preds = %499
  store i32 1, ptr %469, align 4, !tbaa !17
  %503 = load i32, ptr %486, align 4, !tbaa !31
  br label %504

504:                                              ; preds = %502, %499
  %505 = phi i32 [ %500, %499 ], [ %503, %502 ]
  %506 = tail call ptr @strerror(i32 noundef %505) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %506) #15
  br label %535

507:                                              ; preds = %487
  %508 = load ptr, ptr %468, align 8, !tbaa !28
  %509 = and i64 %496, 2147483647
  %510 = getelementptr inbounds nuw i8, ptr %508, i64 %509
  store ptr %510, ptr %468, align 8, !tbaa !28
  %511 = load ptr, ptr %467, align 8, !tbaa !27
  %512 = icmp ugt ptr %511, %510
  br i1 %512, label %487, label %513, !llvm.loop !38

513:                                              ; preds = %507
  %514 = load i32, ptr %464, align 8, !tbaa !26
  br label %515

515:                                              ; preds = %513, %481
  %516 = phi i32 [ %514, %513 ], [ %474, %481 ]
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = load i32, ptr %368, align 8, !tbaa !18
  store i32 %519, ptr %464, align 8, !tbaa !26
  %520 = load ptr, ptr %471, align 8, !tbaa !22
  store ptr %520, ptr %467, align 8, !tbaa !27
  store ptr %520, ptr %468, align 8, !tbaa !28
  br label %521

521:                                              ; preds = %518, %515, %477
  %522 = phi i32 [ %516, %515 ], [ %519, %518 ], [ %474, %477 ]
  %523 = tail call i32 @deflate(ptr noundef nonnull %367, i32 noundef range(i32 0, 6) %1) #15
  %524 = icmp eq i32 %523, -2
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %535

526:                                              ; preds = %521
  %527 = load i32, ptr %464, align 8, !tbaa !26
  %528 = icmp ult i32 %522, %527
  br i1 %528, label %529, label %530, !prof !34, !nosanitize !33

529:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

530:                                              ; preds = %526
  %531 = icmp eq i32 %522, %527
  br i1 %531, label %532, label %473, !llvm.loop !39

532:                                              ; preds = %530
  %533 = icmp eq i32 %1, 4
  br i1 %533, label %534, label %535

534:                                              ; preds = %532
  store i32 1, ptr %453, align 8, !tbaa !37
  br label %535

535:                                              ; preds = %534, %532, %525, %504, %456, %446, %438, %415, %399, %390, %379, %363, %173, %154, %97, %59, %50, %39
  %536 = load i32, ptr %9, align 8, !tbaa !16
  br label %537

537:                                              ; preds = %535, %16, %12, %4, %2
  %538 = phi i32 [ -2, %2 ], [ -2, %12 ], [ -2, %4 ], [ -2, %16 ], [ %536, %535 ]
  ret i32 %538
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %489, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %489

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %489, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %489

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
  br i1 %29, label %489, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %373, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %187, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %40 = load i32, ptr %39, align 8, !tbaa !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %79

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
  br label %371

51:                                               ; preds = %42
  %52 = load i32, ptr %19, align 8, !tbaa !21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 %44, ptr %39, align 8, !tbaa !18
  br label %85

55:                                               ; preds = %51
  %56 = zext i32 %44 to i64
  %57 = tail call noalias ptr @malloc(i64 noundef %56) #16
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %57, ptr %58, align 8, !tbaa !22
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @free(ptr noundef nonnull %47) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %371

61:                                               ; preds = %55
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %24, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %64, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %58, align 8, !tbaa !22
  tail call void @free(ptr noundef %68) #15
  %69 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void @free(ptr noundef %69) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %371

70:                                               ; preds = %61
  store ptr null, ptr %6, align 8, !tbaa !25
  %71 = load i32, ptr %19, align 8, !tbaa !21
  %72 = load i32, ptr %43, align 4, !tbaa !19
  store i32 %72, ptr %39, align 8, !tbaa !18
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %72, ptr %75, align 8, !tbaa !26
  %76 = load ptr, ptr %58, align 8, !tbaa !22
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %76, ptr %77, align 8, !tbaa !27
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %76, ptr %78, align 8, !tbaa !28
  br label %118

79:                                               ; preds = %38
  %80 = load i32, ptr %19, align 8, !tbaa !21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %118, label %85

82:                                               ; preds = %70
  %83 = load i32, ptr %35, align 8, !tbaa !30
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %187, label %85

85:                                               ; preds = %82, %79, %54
  %86 = tail call ptr @__errno_location() #17
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %89 = load ptr, ptr %6, align 8, !tbaa !25
  br label %90

90:                                               ; preds = %112, %85
  %91 = phi ptr [ %89, %85 ], [ %116, %112 ]
  store i32 0, ptr %86, align 4, !tbaa !31
  store i32 0, ptr %87, align 4, !tbaa !17
  %92 = load i32, ptr %35, align 8, !tbaa !30
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 1073741824)
  %94 = zext nneg i32 %93 to i64
  %95 = load i32, ptr %88, align 4, !tbaa !32
  %96 = tail call i64 @write(i32 noundef %95, ptr noundef %91, i64 noundef %94) #15
  %97 = trunc i64 %96 to i32
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i32, ptr %86, align 4, !tbaa !31
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  store i32 1, ptr %87, align 4, !tbaa !17
  %103 = load i32, ptr %86, align 4, !tbaa !31
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %102 ]
  %106 = tail call ptr @strerror(i32 noundef %105) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %106) #15
  br label %371

107:                                              ; preds = %90
  %108 = load i32, ptr %35, align 8, !tbaa !30
  %109 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 %97), !nosanitize !33
  %110 = extractvalue { i32, i1 } %109, 1, !nosanitize !33
  br i1 %110, label %111, label %112, !prof !34, !nosanitize !33

111:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

112:                                              ; preds = %107
  %113 = extractvalue { i32, i1 } %109, 0, !nosanitize !33
  store i32 %113, ptr %35, align 8, !tbaa !30
  %114 = load ptr, ptr %6, align 8, !tbaa !25
  %115 = and i64 %96, 2147483647
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 %115
  store ptr %116, ptr %6, align 8, !tbaa !25
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %187, label %90, !llvm.loop !35

118:                                              ; preds = %79, %74
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %120 = load i32, ptr %119, align 8, !tbaa !37
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %35, align 8, !tbaa !30
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %187, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %119, align 8, !tbaa !37
  br label %127

127:                                              ; preds = %125, %118
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %134 = load i32, ptr %128, align 8, !tbaa !26
  br label %135

135:                                              ; preds = %185, %127
  %136 = phi i32 [ %134, %127 ], [ %182, %185 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %176

138:                                              ; preds = %135
  %139 = load ptr, ptr %129, align 8, !tbaa !27
  %140 = load ptr, ptr %130, align 8, !tbaa !28
  %141 = icmp ugt ptr %139, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %138
  %143 = tail call ptr @__errno_location() #17
  br label %144

144:                                              ; preds = %164, %142
  %145 = phi ptr [ %140, %142 ], [ %167, %164 ]
  %146 = phi ptr [ %139, %142 ], [ %168, %164 ]
  store i32 0, ptr %143, align 4, !tbaa !31
  store i32 0, ptr %131, align 4, !tbaa !17
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %145 to i64
  %149 = sub i64 %147, %148
  %150 = tail call i64 @llvm.smin.i64(i64 %149, i64 1073741824)
  %151 = and i64 %150, 4294967295
  %152 = load i32, ptr %132, align 4, !tbaa !32
  %153 = tail call i64 @write(i32 noundef %152, ptr noundef %145, i64 noundef %151) #15
  %154 = and i64 %153, 2147483648
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %144
  %157 = load i32, ptr %143, align 4, !tbaa !31
  %158 = icmp eq i32 %157, 11
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  store i32 1, ptr %131, align 4, !tbaa !17
  %160 = load i32, ptr %143, align 4, !tbaa !31
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i32 [ %157, %156 ], [ %160, %159 ]
  %163 = tail call ptr @strerror(i32 noundef %162) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %163) #15
  br label %371

164:                                              ; preds = %144
  %165 = load ptr, ptr %130, align 8, !tbaa !28
  %166 = and i64 %153, 2147483647
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  store ptr %167, ptr %130, align 8, !tbaa !28
  %168 = load ptr, ptr %129, align 8, !tbaa !27
  %169 = icmp ugt ptr %168, %167
  br i1 %169, label %144, label %170, !llvm.loop !38

170:                                              ; preds = %164
  %171 = load i32, ptr %128, align 8, !tbaa !26
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170, %138
  %174 = load i32, ptr %39, align 8, !tbaa !18
  store i32 %174, ptr %128, align 8, !tbaa !26
  %175 = load ptr, ptr %133, align 8, !tbaa !22
  store ptr %175, ptr %129, align 8, !tbaa !27
  store ptr %175, ptr %130, align 8, !tbaa !28
  br label %176

176:                                              ; preds = %173, %170, %135
  %177 = phi i32 [ %171, %170 ], [ %174, %173 ], [ %136, %135 ]
  %178 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %179 = icmp eq i32 %178, -2
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %371

181:                                              ; preds = %176
  %182 = load i32, ptr %128, align 8, !tbaa !26
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %184, label %185, !prof !34, !nosanitize !33

184:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

185:                                              ; preds = %181
  %186 = icmp eq i32 %177, %182
  br i1 %186, label %187, label %135, !llvm.loop !39

187:                                              ; preds = %185, %122, %112, %82, %34
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %201 = load i64, ptr %31, align 8, !tbaa !29
  br label %202

202:                                              ; preds = %369, %187
  %203 = phi i64 [ %201, %187 ], [ %366, %369 ]
  %204 = phi i1 [ false, %187 ], [ true, %369 ]
  %205 = load i32, ptr %188, align 8, !tbaa !18
  %206 = zext i32 %205 to i64
  %207 = tail call i64 @llvm.smin.i64(i64 %203, i64 %206)
  %208 = trunc i64 %207 to i32
  %209 = load ptr, ptr %189, align 8, !tbaa !20
  br i1 %204, label %214, label %210

210:                                              ; preds = %202
  %211 = and i64 %207, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %209, i8 0, i64 %211, i1 false)
  %212 = load ptr, ptr %189, align 8, !tbaa !20
  %213 = load i32, ptr %188, align 8, !tbaa !18
  br label %214

214:                                              ; preds = %210, %202
  %215 = phi i32 [ %213, %210 ], [ %205, %202 ]
  %216 = phi ptr [ %212, %210 ], [ %209, %202 ]
  store i32 %208, ptr %35, align 8, !tbaa !30
  store ptr %216, ptr %6, align 8, !tbaa !25
  %217 = icmp eq i32 %215, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i32, ptr %190, align 4, !tbaa !19
  %220 = shl i32 %219, 1
  %221 = zext i32 %220 to i64
  %222 = tail call noalias ptr @malloc(i64 noundef %221) #16
  store ptr %222, ptr %189, align 8, !tbaa !20
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %349

225:                                              ; preds = %218
  %226 = load i32, ptr %19, align 8, !tbaa !21
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  store i32 %219, ptr %188, align 8, !tbaa !18
  br label %253

229:                                              ; preds = %225
  %230 = zext i32 %219 to i64
  %231 = tail call noalias ptr @malloc(i64 noundef %230) #16
  store ptr %231, ptr %191, align 8, !tbaa !22
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  tail call void @free(ptr noundef nonnull %222) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %349

234:                                              ; preds = %229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %192, i8 0, i64 24, i1 false)
  %235 = load i32, ptr %23, align 8, !tbaa !23
  %236 = load i32, ptr %193, align 4, !tbaa !24
  %237 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %235, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %236, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %191, align 8, !tbaa !22
  tail call void @free(ptr noundef %240) #15
  %241 = load ptr, ptr %189, align 8, !tbaa !20
  tail call void @free(ptr noundef %241) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %349

242:                                              ; preds = %234
  store ptr null, ptr %6, align 8, !tbaa !25
  %243 = load i32, ptr %19, align 8, !tbaa !21
  %244 = load i32, ptr %190, align 4, !tbaa !19
  store i32 %244, ptr %188, align 8, !tbaa !18
  %245 = icmp eq i32 %243, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %35, align 8, !tbaa !30
  br label %253

248:                                              ; preds = %242
  store i32 %244, ptr %196, align 8, !tbaa !26
  %249 = load ptr, ptr %191, align 8, !tbaa !22
  store ptr %249, ptr %197, align 8, !tbaa !27
  store ptr %249, ptr %198, align 8, !tbaa !28
  br label %287

250:                                              ; preds = %214
  %251 = load i32, ptr %19, align 8, !tbaa !21
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %287, label %253

253:                                              ; preds = %250, %246, %228
  %254 = phi ptr [ null, %246 ], [ %216, %250 ], [ %216, %228 ]
  %255 = phi i32 [ %247, %246 ], [ %208, %250 ], [ %208, %228 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %349, label %257

257:                                              ; preds = %253
  %258 = tail call ptr @__errno_location() #17
  br label %259

259:                                              ; preds = %281, %257
  %260 = phi ptr [ %254, %257 ], [ %285, %281 ]
  store i32 0, ptr %258, align 4, !tbaa !31
  store i32 0, ptr %194, align 4, !tbaa !17
  %261 = load i32, ptr %35, align 8, !tbaa !30
  %262 = tail call i32 @llvm.umin.i32(i32 %261, i32 1073741824)
  %263 = zext nneg i32 %262 to i64
  %264 = load i32, ptr %195, align 4, !tbaa !32
  %265 = tail call i64 @write(i32 noundef %264, ptr noundef %260, i64 noundef %263) #15
  %266 = trunc i64 %265 to i32
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %259
  %269 = load i32, ptr %258, align 4, !tbaa !31
  %270 = icmp eq i32 %269, 11
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  store i32 1, ptr %194, align 4, !tbaa !17
  %272 = load i32, ptr %258, align 4, !tbaa !31
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %269, %268 ], [ %272, %271 ]
  %275 = tail call ptr @strerror(i32 noundef %274) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %275) #15
  br label %349

276:                                              ; preds = %259
  %277 = load i32, ptr %35, align 8, !tbaa !30
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %277, i32 %266), !nosanitize !33
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !33
  br i1 %279, label %280, label %281, !prof !34, !nosanitize !33

280:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

281:                                              ; preds = %276
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !33
  store i32 %282, ptr %35, align 8, !tbaa !30
  %283 = load ptr, ptr %6, align 8, !tbaa !25
  %284 = and i64 %265, 2147483647
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 %284
  store ptr %285, ptr %6, align 8, !tbaa !25
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %349, label %259, !llvm.loop !35

287:                                              ; preds = %250, %248
  %288 = load i32, ptr %199, align 8, !tbaa !37
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %35, align 8, !tbaa !30
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %349, label %293

293:                                              ; preds = %290
  %294 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %199, align 8, !tbaa !37
  br label %295

295:                                              ; preds = %293, %287
  %296 = load i32, ptr %196, align 8, !tbaa !26
  br label %297

297:                                              ; preds = %347, %295
  %298 = phi i32 [ %296, %295 ], [ %344, %347 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %338

300:                                              ; preds = %297
  %301 = load ptr, ptr %197, align 8, !tbaa !27
  %302 = load ptr, ptr %198, align 8, !tbaa !28
  %303 = icmp ugt ptr %301, %302
  br i1 %303, label %304, label %335

304:                                              ; preds = %300
  %305 = tail call ptr @__errno_location() #17
  br label %306

306:                                              ; preds = %326, %304
  %307 = phi ptr [ %302, %304 ], [ %329, %326 ]
  %308 = phi ptr [ %301, %304 ], [ %330, %326 ]
  store i32 0, ptr %305, align 4, !tbaa !31
  store i32 0, ptr %194, align 4, !tbaa !17
  %309 = ptrtoint ptr %308 to i64
  %310 = ptrtoint ptr %307 to i64
  %311 = sub i64 %309, %310
  %312 = tail call i64 @llvm.smin.i64(i64 %311, i64 1073741824)
  %313 = and i64 %312, 4294967295
  %314 = load i32, ptr %195, align 4, !tbaa !32
  %315 = tail call i64 @write(i32 noundef %314, ptr noundef %307, i64 noundef %313) #15
  %316 = and i64 %315, 2147483648
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %326, label %318

318:                                              ; preds = %306
  %319 = load i32, ptr %305, align 4, !tbaa !31
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  store i32 1, ptr %194, align 4, !tbaa !17
  %322 = load i32, ptr %305, align 4, !tbaa !31
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %319, %318 ], [ %322, %321 ]
  %325 = tail call ptr @strerror(i32 noundef %324) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %325) #15
  br label %349

326:                                              ; preds = %306
  %327 = load ptr, ptr %198, align 8, !tbaa !28
  %328 = and i64 %315, 2147483647
  %329 = getelementptr inbounds nuw i8, ptr %327, i64 %328
  store ptr %329, ptr %198, align 8, !tbaa !28
  %330 = load ptr, ptr %197, align 8, !tbaa !27
  %331 = icmp ugt ptr %330, %329
  br i1 %331, label %306, label %332, !llvm.loop !38

332:                                              ; preds = %326
  %333 = load i32, ptr %196, align 8, !tbaa !26
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332, %300
  %336 = load i32, ptr %188, align 8, !tbaa !18
  store i32 %336, ptr %196, align 8, !tbaa !26
  %337 = load ptr, ptr %191, align 8, !tbaa !22
  store ptr %337, ptr %197, align 8, !tbaa !27
  store ptr %337, ptr %198, align 8, !tbaa !28
  br label %338

338:                                              ; preds = %335, %332, %297
  %339 = phi i32 [ %333, %332 ], [ %336, %335 ], [ %298, %297 ]
  %340 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %341 = icmp eq i32 %340, -2
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %349

343:                                              ; preds = %338
  %344 = load i32, ptr %196, align 8, !tbaa !26
  %345 = icmp ult i32 %339, %344
  br i1 %345, label %346, label %347, !prof !34, !nosanitize !33

346:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

347:                                              ; preds = %343
  %348 = icmp eq i32 %339, %344
  br i1 %348, label %349, label %297, !llvm.loop !39

349:                                              ; preds = %347, %342, %323, %290, %281, %273, %253, %239, %233, %224
  %350 = phi i1 [ true, %273 ], [ true, %323 ], [ true, %342 ], [ false, %290 ], [ true, %224 ], [ true, %233 ], [ true, %239 ], [ false, %253 ], [ false, %347 ], [ false, %281 ]
  %351 = load i32, ptr %35, align 8, !tbaa !30
  %352 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %208, i32 %351), !nosanitize !33
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !33
  br i1 %353, label %354, label %355, !prof !34, !nosanitize !33

354:                                              ; preds = %362, %349
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

355:                                              ; preds = %349
  %356 = extractvalue { i32, i1 } %352, 0, !nosanitize !33
  %357 = zext i32 %356 to i64
  %358 = load i64, ptr %200, align 8, !tbaa !40
  %359 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %358, i64 %357), !nosanitize !33
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !33
  br i1 %360, label %361, label %362, !prof !34, !nosanitize !33

361:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

362:                                              ; preds = %355
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !33
  store i64 %363, ptr %200, align 8, !tbaa !40
  %364 = load i64, ptr %31, align 8, !tbaa !29
  %365 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %364, i64 %357), !nosanitize !33
  %366 = extractvalue { i64, i1 } %365, 0, !nosanitize !33
  %367 = extractvalue { i64, i1 } %365, 1, !nosanitize !33
  br i1 %367, label %354, label %368, !prof !34, !nosanitize !33

368:                                              ; preds = %362
  store i64 %366, ptr %31, align 8, !tbaa !29
  br i1 %350, label %371, label %369

369:                                              ; preds = %368
  %370 = icmp eq i64 %366, 0
  br i1 %370, label %373, label %202, !llvm.loop !41

371:                                              ; preds = %368, %180, %161, %104, %67, %60, %50
  %372 = load i32, ptr %11, align 8, !tbaa !16
  br label %489

373:                                              ; preds = %369, %30
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %375 = load i32, ptr %374, align 8, !tbaa !18
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %487, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %379 = load i32, ptr %378, align 8, !tbaa !30
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %485, label %381

381:                                              ; preds = %377
  %382 = load i32, ptr %19, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %417, label %384

384:                                              ; preds = %381
  %385 = tail call ptr @__errno_location() #17
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %388 = load ptr, ptr %6, align 8, !tbaa !25
  br label %389

389:                                              ; preds = %411, %384
  %390 = phi ptr [ %388, %384 ], [ %415, %411 ]
  store i32 0, ptr %385, align 4, !tbaa !31
  store i32 0, ptr %386, align 4, !tbaa !17
  %391 = load i32, ptr %378, align 8, !tbaa !30
  %392 = tail call i32 @llvm.umin.i32(i32 %391, i32 1073741824)
  %393 = zext nneg i32 %392 to i64
  %394 = load i32, ptr %387, align 4, !tbaa !32
  %395 = tail call i64 @write(i32 noundef %394, ptr noundef %390, i64 noundef %393) #15
  %396 = trunc i64 %395 to i32
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %389
  %399 = load i32, ptr %385, align 4, !tbaa !31
  %400 = icmp eq i32 %399, 11
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  store i32 1, ptr %386, align 4, !tbaa !17
  %402 = load i32, ptr %385, align 4, !tbaa !31
  br label %403

403:                                              ; preds = %401, %398
  %404 = phi i32 [ %399, %398 ], [ %402, %401 ]
  %405 = tail call ptr @strerror(i32 noundef %404) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %405) #15
  br label %483

406:                                              ; preds = %389
  %407 = load i32, ptr %378, align 8, !tbaa !30
  %408 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %407, i32 %396), !nosanitize !33
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !33
  br i1 %409, label %410, label %411, !prof !34, !nosanitize !33

410:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

411:                                              ; preds = %406
  %412 = extractvalue { i32, i1 } %408, 0, !nosanitize !33
  store i32 %412, ptr %378, align 8, !tbaa !30
  %413 = load ptr, ptr %6, align 8, !tbaa !25
  %414 = and i64 %395, 2147483647
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  store ptr %415, ptr %6, align 8, !tbaa !25
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %485, label %389, !llvm.loop !35

417:                                              ; preds = %381
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %419 = load i32, ptr %418, align 8, !tbaa !37
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %417
  %422 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %418, align 8, !tbaa !37
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

431:                                              ; preds = %481, %423
  %432 = phi i32 [ %430, %423 ], [ %478, %481 ]
  %433 = load ptr, ptr %425, align 8, !tbaa !27
  %434 = load ptr, ptr %426, align 8, !tbaa !28
  %435 = icmp ugt ptr %433, %434
  br i1 %435, label %436, label %466

436:                                              ; preds = %431
  %437 = tail call ptr @__errno_location() #17
  br label %438

438:                                              ; preds = %458, %436
  %439 = phi ptr [ %434, %436 ], [ %461, %458 ]
  %440 = phi ptr [ %433, %436 ], [ %462, %458 ]
  store i32 0, ptr %437, align 4, !tbaa !31
  store i32 0, ptr %427, align 4, !tbaa !17
  %441 = ptrtoint ptr %440 to i64
  %442 = ptrtoint ptr %439 to i64
  %443 = sub i64 %441, %442
  %444 = tail call i64 @llvm.smin.i64(i64 %443, i64 1073741824)
  %445 = and i64 %444, 4294967295
  %446 = load i32, ptr %428, align 4, !tbaa !32
  %447 = tail call i64 @write(i32 noundef %446, ptr noundef %439, i64 noundef %445) #15
  %448 = and i64 %447, 2147483648
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %458, label %450

450:                                              ; preds = %438
  %451 = load i32, ptr %437, align 4, !tbaa !31
  %452 = icmp eq i32 %451, 11
  br i1 %452, label %453, label %455

453:                                              ; preds = %450
  store i32 1, ptr %427, align 4, !tbaa !17
  %454 = load i32, ptr %437, align 4, !tbaa !31
  br label %455

455:                                              ; preds = %453, %450
  %456 = phi i32 [ %451, %450 ], [ %454, %453 ]
  %457 = tail call ptr @strerror(i32 noundef %456) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %457) #15
  br label %483

458:                                              ; preds = %438
  %459 = load ptr, ptr %426, align 8, !tbaa !28
  %460 = and i64 %447, 2147483647
  %461 = getelementptr inbounds nuw i8, ptr %459, i64 %460
  store ptr %461, ptr %426, align 8, !tbaa !28
  %462 = load ptr, ptr %425, align 8, !tbaa !27
  %463 = icmp ugt ptr %462, %461
  br i1 %463, label %438, label %464, !llvm.loop !38

464:                                              ; preds = %458
  %465 = load i32, ptr %424, align 8, !tbaa !26
  br label %466

466:                                              ; preds = %464, %431
  %467 = phi i32 [ %465, %464 ], [ %432, %431 ]
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i32, ptr %374, align 8, !tbaa !18
  store i32 %470, ptr %424, align 8, !tbaa !26
  %471 = load ptr, ptr %429, align 8, !tbaa !22
  store ptr %471, ptr %425, align 8, !tbaa !27
  store ptr %471, ptr %426, align 8, !tbaa !28
  br label %472

472:                                              ; preds = %469, %466
  %473 = phi i32 [ %467, %466 ], [ %470, %469 ]
  %474 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %475 = icmp eq i32 %474, -2
  br i1 %475, label %476, label %477

476:                                              ; preds = %472
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %483

477:                                              ; preds = %472
  %478 = load i32, ptr %424, align 8, !tbaa !26
  %479 = icmp ult i32 %473, %478
  br i1 %479, label %480, label %481, !prof !34, !nosanitize !33

480:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

481:                                              ; preds = %477
  %482 = icmp eq i32 %473, %478
  br i1 %482, label %485, label %431, !llvm.loop !39

483:                                              ; preds = %476, %455, %403
  %484 = load i32, ptr %11, align 8, !tbaa !16
  br label %489

485:                                              ; preds = %481, %411, %377
  %486 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %487

487:                                              ; preds = %485, %373
  store i32 %1, ptr %23, align 8, !tbaa !23
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %488, align 4, !tbaa !24
  br label %489

489:                                              ; preds = %487, %483, %371, %26, %18, %14, %5, %3
  %490 = phi i32 [ %372, %371 ], [ %484, %483 ], [ 0, %487 ], [ -2, %3 ], [ -2, %18 ], [ -2, %14 ], [ -2, %5 ], [ 0, %26 ]
  ret i32 %490
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %543, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %543

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %358, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %169, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %60

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
  br label %355

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = load i32, ptr %30, align 8, !tbaa !21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 %22, ptr %17, align 8, !tbaa !18
  br label %67

34:                                               ; preds = %29
  %35 = zext i32 %22 to i64
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #16
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %36, ptr %37, align 8, !tbaa !22
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %25) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %355

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %43 = load i32, ptr %42, align 8, !tbaa !23
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %45 = load i32, ptr %44, align 4, !tbaa !24
  %46 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %43, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %45, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %37, align 8, !tbaa !22
  tail call void @free(ptr noundef %49) #15
  %50 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void @free(ptr noundef %50) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %355

51:                                               ; preds = %40
  store ptr null, ptr %12, align 8, !tbaa !25
  %52 = load i32, ptr %30, align 8, !tbaa !21
  %53 = load i32, ptr %21, align 4, !tbaa !19
  store i32 %53, ptr %17, align 8, !tbaa !18
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %53, ptr %56, align 8, !tbaa !26
  %57 = load ptr, ptr %37, align 8, !tbaa !22
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %57, ptr %58, align 8, !tbaa !27
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %57, ptr %59, align 8, !tbaa !28
  br label %100

60:                                               ; preds = %16
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %62 = load i32, ptr %61, align 8, !tbaa !21
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %100, label %67

64:                                               ; preds = %51
  %65 = load i32, ptr %13, align 8, !tbaa !30
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %169, label %67

67:                                               ; preds = %64, %60, %33
  %68 = tail call ptr @__errno_location() #17
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %71 = load ptr, ptr %12, align 8, !tbaa !25
  br label %72

72:                                               ; preds = %94, %67
  %73 = phi ptr [ %71, %67 ], [ %98, %94 ]
  store i32 0, ptr %68, align 4, !tbaa !31
  store i32 0, ptr %69, align 4, !tbaa !17
  %74 = load i32, ptr %13, align 8, !tbaa !30
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 1073741824)
  %76 = zext nneg i32 %75 to i64
  %77 = load i32, ptr %70, align 4, !tbaa !32
  %78 = tail call i64 @write(i32 noundef %77, ptr noundef %73, i64 noundef %76) #15
  %79 = trunc i64 %78 to i32
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, ptr %68, align 4, !tbaa !31
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i32 1, ptr %69, align 4, !tbaa !17
  %85 = load i32, ptr %68, align 4, !tbaa !31
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %84 ]
  %88 = tail call ptr @strerror(i32 noundef %87) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %88) #15
  br label %355

89:                                               ; preds = %72
  %90 = load i32, ptr %13, align 8, !tbaa !30
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 %79), !nosanitize !33
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !33
  br i1 %92, label %93, label %94, !prof !34, !nosanitize !33

93:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !33
  store i32 %95, ptr %13, align 8, !tbaa !30
  %96 = load ptr, ptr %12, align 8, !tbaa !25
  %97 = and i64 %78, 2147483647
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 %97
  store ptr %98, ptr %12, align 8, !tbaa !25
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %169, label %72, !llvm.loop !35

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %102 = load i32, ptr %101, align 8, !tbaa !37
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %13, align 8, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %169, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %101, align 8, !tbaa !37
  br label %109

109:                                              ; preds = %107, %100
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %116 = load i32, ptr %110, align 8, !tbaa !26
  br label %117

117:                                              ; preds = %167, %109
  %118 = phi i32 [ %116, %109 ], [ %164, %167 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load ptr, ptr %111, align 8, !tbaa !27
  %122 = load ptr, ptr %112, align 8, !tbaa !28
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = tail call ptr @__errno_location() #17
  br label %126

126:                                              ; preds = %146, %124
  %127 = phi ptr [ %122, %124 ], [ %149, %146 ]
  %128 = phi ptr [ %121, %124 ], [ %150, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !31
  store i32 0, ptr %113, align 4, !tbaa !17
  %129 = ptrtoint ptr %128 to i64
  %130 = ptrtoint ptr %127 to i64
  %131 = sub i64 %129, %130
  %132 = tail call i64 @llvm.smin.i64(i64 %131, i64 1073741824)
  %133 = and i64 %132, 4294967295
  %134 = load i32, ptr %114, align 4, !tbaa !32
  %135 = tail call i64 @write(i32 noundef %134, ptr noundef %127, i64 noundef %133) #15
  %136 = and i64 %135, 2147483648
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %126
  %139 = load i32, ptr %125, align 4, !tbaa !31
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %113, align 4, !tbaa !17
  %142 = load i32, ptr %125, align 4, !tbaa !31
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = tail call ptr @strerror(i32 noundef %144) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #15
  br label %355

146:                                              ; preds = %126
  %147 = load ptr, ptr %112, align 8, !tbaa !28
  %148 = and i64 %135, 2147483647
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  store ptr %149, ptr %112, align 8, !tbaa !28
  %150 = load ptr, ptr %111, align 8, !tbaa !27
  %151 = icmp ugt ptr %150, %149
  br i1 %151, label %126, label %152, !llvm.loop !38

152:                                              ; preds = %146
  %153 = load i32, ptr %110, align 8, !tbaa !26
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %120
  %156 = load i32, ptr %17, align 8, !tbaa !18
  store i32 %156, ptr %110, align 8, !tbaa !26
  %157 = load ptr, ptr %115, align 8, !tbaa !22
  store ptr %157, ptr %111, align 8, !tbaa !27
  store ptr %157, ptr %112, align 8, !tbaa !28
  br label %158

158:                                              ; preds = %155, %152, %117
  %159 = phi i32 [ %153, %152 ], [ %156, %155 ], [ %118, %117 ]
  %160 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %161 = icmp eq i32 %160, -2
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %355

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !26
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %166, label %167, !prof !34, !nosanitize !33

166:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

167:                                              ; preds = %163
  %168 = icmp eq i32 %159, %164
  br i1 %168, label %169, label %117, !llvm.loop !39

169:                                              ; preds = %167, %104, %94, %64, %11
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %185 = load i64, ptr %8, align 8, !tbaa !29
  br label %186

186:                                              ; preds = %353, %169
  %187 = phi i64 [ %185, %169 ], [ %350, %353 ]
  %188 = phi i1 [ false, %169 ], [ true, %353 ]
  %189 = load i32, ptr %170, align 8, !tbaa !18
  %190 = zext i32 %189 to i64
  %191 = tail call i64 @llvm.smin.i64(i64 %187, i64 %190)
  %192 = trunc i64 %191 to i32
  %193 = load ptr, ptr %171, align 8, !tbaa !20
  br i1 %188, label %198, label %194

194:                                              ; preds = %186
  %195 = and i64 %191, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %193, i8 0, i64 %195, i1 false)
  %196 = load ptr, ptr %171, align 8, !tbaa !20
  %197 = load i32, ptr %170, align 8, !tbaa !18
  br label %198

198:                                              ; preds = %194, %186
  %199 = phi i32 [ %197, %194 ], [ %189, %186 ]
  %200 = phi ptr [ %196, %194 ], [ %193, %186 ]
  store i32 %192, ptr %13, align 8, !tbaa !30
  store ptr %200, ptr %12, align 8, !tbaa !25
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %198
  %203 = load i32, ptr %173, align 4, !tbaa !19
  %204 = shl i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = tail call noalias ptr @malloc(i64 noundef %205) #16
  store ptr %206, ptr %171, align 8, !tbaa !20
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

209:                                              ; preds = %202
  %210 = load i32, ptr %172, align 8, !tbaa !21
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  store i32 %203, ptr %170, align 8, !tbaa !18
  br label %237

213:                                              ; preds = %209
  %214 = zext i32 %203 to i64
  %215 = tail call noalias ptr @malloc(i64 noundef %214) #16
  store ptr %215, ptr %174, align 8, !tbaa !22
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @free(ptr noundef nonnull %206) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

218:                                              ; preds = %213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %175, i8 0, i64 24, i1 false)
  %219 = load i32, ptr %176, align 8, !tbaa !23
  %220 = load i32, ptr %177, align 4, !tbaa !24
  %221 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %219, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %220, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load ptr, ptr %174, align 8, !tbaa !22
  tail call void @free(ptr noundef %224) #15
  %225 = load ptr, ptr %171, align 8, !tbaa !20
  tail call void @free(ptr noundef %225) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

226:                                              ; preds = %218
  store ptr null, ptr %12, align 8, !tbaa !25
  %227 = load i32, ptr %172, align 8, !tbaa !21
  %228 = load i32, ptr %173, align 4, !tbaa !19
  store i32 %228, ptr %170, align 8, !tbaa !18
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = load i32, ptr %13, align 8, !tbaa !30
  br label %237

232:                                              ; preds = %226
  store i32 %228, ptr %180, align 8, !tbaa !26
  %233 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %233, ptr %181, align 8, !tbaa !27
  store ptr %233, ptr %182, align 8, !tbaa !28
  br label %271

234:                                              ; preds = %198
  %235 = load i32, ptr %172, align 8, !tbaa !21
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %271, label %237

237:                                              ; preds = %234, %230, %212
  %238 = phi ptr [ null, %230 ], [ %200, %234 ], [ %200, %212 ]
  %239 = phi i32 [ %231, %230 ], [ %192, %234 ], [ %192, %212 ]
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %333, label %241

241:                                              ; preds = %237
  %242 = tail call ptr @__errno_location() #17
  br label %243

243:                                              ; preds = %265, %241
  %244 = phi ptr [ %238, %241 ], [ %269, %265 ]
  store i32 0, ptr %242, align 4, !tbaa !31
  store i32 0, ptr %178, align 4, !tbaa !17
  %245 = load i32, ptr %13, align 8, !tbaa !30
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 1073741824)
  %247 = zext nneg i32 %246 to i64
  %248 = load i32, ptr %179, align 4, !tbaa !32
  %249 = tail call i64 @write(i32 noundef %248, ptr noundef %244, i64 noundef %247) #15
  %250 = trunc i64 %249 to i32
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %243
  %253 = load i32, ptr %242, align 4, !tbaa !31
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  store i32 1, ptr %178, align 4, !tbaa !17
  %256 = load i32, ptr %242, align 4, !tbaa !31
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i32 [ %253, %252 ], [ %256, %255 ]
  %259 = tail call ptr @strerror(i32 noundef %258) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %259) #15
  br label %333

260:                                              ; preds = %243
  %261 = load i32, ptr %13, align 8, !tbaa !30
  %262 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %261, i32 %250), !nosanitize !33
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !33
  br i1 %263, label %264, label %265, !prof !34, !nosanitize !33

264:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

265:                                              ; preds = %260
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !33
  store i32 %266, ptr %13, align 8, !tbaa !30
  %267 = load ptr, ptr %12, align 8, !tbaa !25
  %268 = and i64 %249, 2147483647
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  store ptr %269, ptr %12, align 8, !tbaa !25
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %333, label %243, !llvm.loop !35

271:                                              ; preds = %234, %232
  %272 = load i32, ptr %183, align 8, !tbaa !37
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %13, align 8, !tbaa !30
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %333, label %277

277:                                              ; preds = %274
  %278 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %183, align 8, !tbaa !37
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i32, ptr %180, align 8, !tbaa !26
  br label %281

281:                                              ; preds = %331, %279
  %282 = phi i32 [ %280, %279 ], [ %328, %331 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %322

284:                                              ; preds = %281
  %285 = load ptr, ptr %181, align 8, !tbaa !27
  %286 = load ptr, ptr %182, align 8, !tbaa !28
  %287 = icmp ugt ptr %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #17
  br label %290

290:                                              ; preds = %310, %288
  %291 = phi ptr [ %286, %288 ], [ %313, %310 ]
  %292 = phi ptr [ %285, %288 ], [ %314, %310 ]
  store i32 0, ptr %289, align 4, !tbaa !31
  store i32 0, ptr %178, align 4, !tbaa !17
  %293 = ptrtoint ptr %292 to i64
  %294 = ptrtoint ptr %291 to i64
  %295 = sub i64 %293, %294
  %296 = tail call i64 @llvm.smin.i64(i64 %295, i64 1073741824)
  %297 = and i64 %296, 4294967295
  %298 = load i32, ptr %179, align 4, !tbaa !32
  %299 = tail call i64 @write(i32 noundef %298, ptr noundef %291, i64 noundef %297) #15
  %300 = and i64 %299, 2147483648
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %290
  %303 = load i32, ptr %289, align 4, !tbaa !31
  %304 = icmp eq i32 %303, 11
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  store i32 1, ptr %178, align 4, !tbaa !17
  %306 = load i32, ptr %289, align 4, !tbaa !31
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %303, %302 ], [ %306, %305 ]
  %309 = tail call ptr @strerror(i32 noundef %308) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %309) #15
  br label %333

310:                                              ; preds = %290
  %311 = load ptr, ptr %182, align 8, !tbaa !28
  %312 = and i64 %299, 2147483647
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %182, align 8, !tbaa !28
  %314 = load ptr, ptr %181, align 8, !tbaa !27
  %315 = icmp ugt ptr %314, %313
  br i1 %315, label %290, label %316, !llvm.loop !38

316:                                              ; preds = %310
  %317 = load i32, ptr %180, align 8, !tbaa !26
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316, %284
  %320 = load i32, ptr %170, align 8, !tbaa !18
  store i32 %320, ptr %180, align 8, !tbaa !26
  %321 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %321, ptr %181, align 8, !tbaa !27
  store ptr %321, ptr %182, align 8, !tbaa !28
  br label %322

322:                                              ; preds = %319, %316, %281
  %323 = phi i32 [ %317, %316 ], [ %320, %319 ], [ %282, %281 ]
  %324 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %325 = icmp eq i32 %324, -2
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %333

327:                                              ; preds = %322
  %328 = load i32, ptr %180, align 8, !tbaa !26
  %329 = icmp ult i32 %323, %328
  br i1 %329, label %330, label %331, !prof !34, !nosanitize !33

330:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

331:                                              ; preds = %327
  %332 = icmp eq i32 %323, %328
  br i1 %332, label %333, label %281, !llvm.loop !39

333:                                              ; preds = %331, %326, %307, %274, %265, %257, %237, %223, %217, %208
  %334 = phi i1 [ true, %257 ], [ true, %307 ], [ true, %326 ], [ false, %274 ], [ true, %208 ], [ true, %217 ], [ true, %223 ], [ false, %237 ], [ false, %331 ], [ false, %265 ]
  %335 = load i32, ptr %13, align 8, !tbaa !30
  %336 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %335), !nosanitize !33
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !33
  br i1 %337, label %338, label %339, !prof !34, !nosanitize !33

338:                                              ; preds = %346, %333
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

339:                                              ; preds = %333
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !33
  %341 = zext i32 %340 to i64
  %342 = load i64, ptr %184, align 8, !tbaa !40
  %343 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %342, i64 %341), !nosanitize !33
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !33
  br i1 %344, label %345, label %346, !prof !34, !nosanitize !33

345:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

346:                                              ; preds = %339
  %347 = extractvalue { i64, i1 } %343, 0, !nosanitize !33
  store i64 %347, ptr %184, align 8, !tbaa !40
  %348 = load i64, ptr %8, align 8, !tbaa !29
  %349 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %348, i64 %341), !nosanitize !33
  %350 = extractvalue { i64, i1 } %349, 0, !nosanitize !33
  %351 = extractvalue { i64, i1 } %349, 1, !nosanitize !33
  br i1 %351, label %338, label %352, !prof !34, !nosanitize !33

352:                                              ; preds = %346
  store i64 %350, ptr %8, align 8, !tbaa !29
  br i1 %334, label %355, label %353

353:                                              ; preds = %352
  %354 = icmp eq i64 %350, 0
  br i1 %354, label %358, label %186, !llvm.loop !41

355:                                              ; preds = %352, %162, %143, %86, %48, %39, %28
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %357 = load i32, ptr %356, align 8, !tbaa !16
  br label %358

358:                                              ; preds = %355, %353, %7
  %359 = phi i32 [ %357, %355 ], [ 0, %7 ], [ 0, %353 ]
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %362 = load i32, ptr %361, align 8, !tbaa !18
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %404

364:                                              ; preds = %358
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %366 = load i32, ptr %365, align 4, !tbaa !19
  %367 = shl i32 %366, 1
  %368 = zext i32 %367 to i64
  %369 = tail call noalias ptr @malloc(i64 noundef %368) #16
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %369, ptr %370, align 8, !tbaa !20
  %371 = icmp eq ptr %369, null
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %517

373:                                              ; preds = %364
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %375 = load i32, ptr %374, align 8, !tbaa !21
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %373
  store i32 %366, ptr %361, align 8, !tbaa !18
  br label %408

378:                                              ; preds = %373
  %379 = zext i32 %366 to i64
  %380 = tail call noalias ptr @malloc(i64 noundef %379) #16
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %380, ptr %381, align 8, !tbaa !22
  %382 = icmp eq ptr %380, null
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  tail call void @free(ptr noundef nonnull %369) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %517

384:                                              ; preds = %378
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %385, i8 0, i64 24, i1 false)
  %387 = load i32, ptr %386, align 8, !tbaa !23
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %389 = load i32, ptr %388, align 4, !tbaa !24
  %390 = tail call i32 @deflateInit2_(ptr noundef nonnull %360, i32 noundef %387, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %389, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %384
  %393 = load ptr, ptr %381, align 8, !tbaa !22
  tail call void @free(ptr noundef %393) #15
  %394 = load ptr, ptr %370, align 8, !tbaa !20
  tail call void @free(ptr noundef %394) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %517

395:                                              ; preds = %384
  store ptr null, ptr %360, align 8, !tbaa !25
  %396 = load i32, ptr %374, align 8, !tbaa !21
  %397 = load i32, ptr %365, align 4, !tbaa !19
  store i32 %397, ptr %361, align 8, !tbaa !18
  %398 = icmp eq i32 %396, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %397, ptr %400, align 8, !tbaa !26
  %401 = load ptr, ptr %381, align 8, !tbaa !22
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %401, ptr %402, align 8, !tbaa !27
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %401, ptr %403, align 8, !tbaa !28
  br label %445

404:                                              ; preds = %358
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %406 = load i32, ptr %405, align 8, !tbaa !21
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %445, label %408

408:                                              ; preds = %404, %395, %377
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %410 = load i32, ptr %409, align 8, !tbaa !30
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %520, label %412

412:                                              ; preds = %408
  %413 = tail call ptr @__errno_location() #17
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %416 = load ptr, ptr %360, align 8, !tbaa !25
  br label %417

417:                                              ; preds = %439, %412
  %418 = phi ptr [ %416, %412 ], [ %443, %439 ]
  store i32 0, ptr %413, align 4, !tbaa !31
  store i32 0, ptr %414, align 4, !tbaa !17
  %419 = load i32, ptr %409, align 8, !tbaa !30
  %420 = tail call i32 @llvm.umin.i32(i32 %419, i32 1073741824)
  %421 = zext nneg i32 %420 to i64
  %422 = load i32, ptr %415, align 4, !tbaa !32
  %423 = tail call i64 @write(i32 noundef %422, ptr noundef %418, i64 noundef %421) #15
  %424 = trunc i64 %423 to i32
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %417
  %427 = load i32, ptr %413, align 4, !tbaa !31
  %428 = icmp eq i32 %427, 11
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  store i32 1, ptr %414, align 4, !tbaa !17
  %430 = load i32, ptr %413, align 4, !tbaa !31
  br label %431

431:                                              ; preds = %429, %426
  %432 = phi i32 [ %427, %426 ], [ %430, %429 ]
  %433 = tail call ptr @strerror(i32 noundef %432) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %433) #15
  br label %517

434:                                              ; preds = %417
  %435 = load i32, ptr %409, align 8, !tbaa !30
  %436 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %435, i32 %424), !nosanitize !33
  %437 = extractvalue { i32, i1 } %436, 1, !nosanitize !33
  br i1 %437, label %438, label %439, !prof !34, !nosanitize !33

438:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

439:                                              ; preds = %434
  %440 = extractvalue { i32, i1 } %436, 0, !nosanitize !33
  store i32 %440, ptr %409, align 8, !tbaa !30
  %441 = load ptr, ptr %360, align 8, !tbaa !25
  %442 = and i64 %423, 2147483647
  %443 = getelementptr inbounds nuw i8, ptr %441, i64 %442
  store ptr %443, ptr %360, align 8, !tbaa !25
  %444 = icmp eq i32 %440, 0
  br i1 %444, label %520, label %417, !llvm.loop !35

445:                                              ; preds = %404, %399
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %447 = load i32, ptr %446, align 8, !tbaa !37
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %445
  %450 = tail call i32 @deflateReset(ptr noundef nonnull %360) #15
  store i32 0, ptr %446, align 8, !tbaa !37
  br label %451

451:                                              ; preds = %449, %445
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %458 = load i32, ptr %452, align 8, !tbaa !26
  br label %459

459:                                              ; preds = %514, %451
  %460 = phi i32 [ %458, %451 ], [ %511, %514 ]
  %461 = phi i32 [ 0, %451 ], [ %507, %514 ]
  %462 = icmp eq i32 %460, 0
  %463 = icmp eq i32 %461, 1
  %464 = or i1 %462, %463
  br i1 %464, label %465, label %505

465:                                              ; preds = %459
  %466 = load ptr, ptr %453, align 8, !tbaa !27
  %467 = load ptr, ptr %454, align 8, !tbaa !28
  %468 = icmp ugt ptr %466, %467
  br i1 %468, label %469, label %499

469:                                              ; preds = %465
  %470 = tail call ptr @__errno_location() #17
  br label %471

471:                                              ; preds = %491, %469
  %472 = phi ptr [ %467, %469 ], [ %494, %491 ]
  %473 = phi ptr [ %466, %469 ], [ %495, %491 ]
  store i32 0, ptr %470, align 4, !tbaa !31
  store i32 0, ptr %455, align 4, !tbaa !17
  %474 = ptrtoint ptr %473 to i64
  %475 = ptrtoint ptr %472 to i64
  %476 = sub i64 %474, %475
  %477 = tail call i64 @llvm.smin.i64(i64 %476, i64 1073741824)
  %478 = and i64 %477, 4294967295
  %479 = load i32, ptr %456, align 4, !tbaa !32
  %480 = tail call i64 @write(i32 noundef %479, ptr noundef %472, i64 noundef %478) #15
  %481 = and i64 %480, 2147483648
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %491, label %483

483:                                              ; preds = %471
  %484 = load i32, ptr %470, align 4, !tbaa !31
  %485 = icmp eq i32 %484, 11
  br i1 %485, label %486, label %488

486:                                              ; preds = %483
  store i32 1, ptr %455, align 4, !tbaa !17
  %487 = load i32, ptr %470, align 4, !tbaa !31
  br label %488

488:                                              ; preds = %486, %483
  %489 = phi i32 [ %484, %483 ], [ %487, %486 ]
  %490 = tail call ptr @strerror(i32 noundef %489) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %490) #15
  br label %517

491:                                              ; preds = %471
  %492 = load ptr, ptr %454, align 8, !tbaa !28
  %493 = and i64 %480, 2147483647
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 %493
  store ptr %494, ptr %454, align 8, !tbaa !28
  %495 = load ptr, ptr %453, align 8, !tbaa !27
  %496 = icmp ugt ptr %495, %494
  br i1 %496, label %471, label %497, !llvm.loop !38

497:                                              ; preds = %491
  %498 = load i32, ptr %452, align 8, !tbaa !26
  br label %499

499:                                              ; preds = %497, %465
  %500 = phi i32 [ %498, %497 ], [ %460, %465 ]
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %499
  %503 = load i32, ptr %361, align 8, !tbaa !18
  store i32 %503, ptr %452, align 8, !tbaa !26
  %504 = load ptr, ptr %457, align 8, !tbaa !22
  store ptr %504, ptr %453, align 8, !tbaa !27
  store ptr %504, ptr %454, align 8, !tbaa !28
  br label %505

505:                                              ; preds = %502, %499, %459
  %506 = phi i32 [ %500, %499 ], [ %503, %502 ], [ %460, %459 ]
  %507 = tail call i32 @deflate(ptr noundef nonnull %360, i32 noundef 4) #15
  %508 = icmp eq i32 %507, -2
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %517

510:                                              ; preds = %505
  %511 = load i32, ptr %452, align 8, !tbaa !26
  %512 = icmp ult i32 %506, %511
  br i1 %512, label %513, label %514, !prof !34, !nosanitize !33

513:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

514:                                              ; preds = %510
  %515 = icmp eq i32 %506, %511
  br i1 %515, label %516, label %459, !llvm.loop !39

516:                                              ; preds = %514
  store i32 1, ptr %446, align 8, !tbaa !37
  br label %520

517:                                              ; preds = %509, %488, %431, %392, %383, %372
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %519 = load i32, ptr %518, align 8, !tbaa !16
  br label %520

520:                                              ; preds = %517, %516, %439, %408
  %521 = phi i32 [ %519, %517 ], [ %359, %408 ], [ %359, %516 ], [ %359, %439 ]
  %522 = load i32, ptr %361, align 8, !tbaa !18
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %535, label %524

524:                                              ; preds = %520
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %526 = load i32, ptr %525, align 8, !tbaa !21
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  %529 = tail call i32 @deflateEnd(ptr noundef nonnull %360) #15
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %531 = load ptr, ptr %530, align 8, !tbaa !22
  tail call void @free(ptr noundef %531) #15
  br label %532

532:                                              ; preds = %528, %524
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %534 = load ptr, ptr %533, align 8, !tbaa !20
  tail call void @free(ptr noundef %534) #15
  br label %535

535:                                              ; preds = %532, %520
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %537 = load ptr, ptr %536, align 8, !tbaa !46
  tail call void @free(ptr noundef %537) #15
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %539 = load i32, ptr %538, align 4, !tbaa !32
  %540 = tail call i32 @close(i32 noundef %539) #15
  %541 = icmp eq i32 %540, -1
  %542 = select i1 %541, i32 -1, i32 %521
  tail call void @free(ptr noundef nonnull %0) #15
  br label %543

543:                                              ; preds = %535, %3, %1
  %544 = phi i32 [ %542, %535 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %544
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #1

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nomerge noreturn nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !8, i64 24}
!6 = !{!"", !7, i64 0, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40, !8, i64 44, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !13, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !13, i64 112, !8, i64 120, !11, i64 128, !14, i64 136}
!7 = !{!"gzFile_s", !8, i64 0, !11, i64 8, !13, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !8, i64 8, !13, i64 16, !11, i64 24, !8, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !8, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!6, !8, i64 120}
!17 = !{!6, !8, i64 76}
!18 = !{!6, !8, i64 40}
!19 = !{!6, !8, i64 44}
!20 = !{!6, !11, i64 48}
!21 = !{!6, !8, i64 64}
!22 = !{!6, !11, i64 56}
!23 = !{!6, !8, i64 96}
!24 = !{!6, !8, i64 100}
!25 = !{!14, !11, i64 0}
!26 = !{!14, !8, i64 32}
!27 = !{!14, !11, i64 24}
!28 = !{!6, !11, i64 8}
!29 = !{!6, !13, i64 112}
!30 = !{!14, !8, i64 8}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !8, i64 28}
!33 = !{}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!6, !8, i64 104}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = !{!6, !13, i64 16}
!41 = distinct !{!41, !36}
!42 = !{!6, !8, i64 144}
!43 = !{!6, !11, i64 136}
!44 = distinct !{!44, !36}
!45 = !{!9, !9, i64 0}
!46 = !{!6, !11, i64 32}
