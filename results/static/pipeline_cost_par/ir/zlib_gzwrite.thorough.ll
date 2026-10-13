; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_gzwrite.thorough.mid.ll'
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
  br i1 %4, label %947, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %947

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %947, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %947

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %.loopexit70, label %23

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br i1 %72, label %414, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit80, label %78

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br i1 %126, label %.loopexit80, label %127

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
  br label %.loopexit70

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
  br i1 %159, label %.loopexit80, label %132, !llvm.loop !35

160:                                              ; preds = %120, %115
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %162 = load i32, ptr %161, align 8, !tbaa !37
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %75, align 8, !tbaa !30
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %.loopexit80, label %167

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
  br label %.loopexit70

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
  br label %.loopexit70

223:                                              ; preds = %218
  %224 = load i32, ptr %170, align 8, !tbaa !26
  %225 = icmp ult i32 %219, %224
  br i1 %225, label %226, label %227, !prof !34, !nosanitize !33

226:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

227:                                              ; preds = %223
  %228 = icmp eq i32 %219, %224
  br i1 %228, label %.loopexit80, label %177, !llvm.loop !39

.loopexit80:                                      ; preds = %154, %227, %164, %124, %73
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
  %243 = load i64, ptr %70, align 8, !tbaa !29
  br label %244

244:                                              ; preds = %410, %.loopexit80
  %245 = phi i64 [ %243, %.loopexit80 ], [ %407, %410 ]
  %246 = phi i1 [ false, %.loopexit80 ], [ true, %410 ]
  %247 = load i32, ptr %24, align 8, !tbaa !18
  %248 = zext i32 %247 to i64
  %249 = tail call i64 @llvm.smin.i64(i64 %245, i64 %248)
  %250 = trunc i64 %249 to i32
  %251 = load ptr, ptr %229, align 8, !tbaa !20
  br i1 %246, label %256, label %252

252:                                              ; preds = %244
  %253 = and i64 %249, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %251, i8 0, i64 %253, i1 false)
  %254 = load ptr, ptr %229, align 8, !tbaa !20
  %255 = load i32, ptr %24, align 8, !tbaa !18
  br label %256

256:                                              ; preds = %252, %244
  %257 = phi i32 [ %255, %252 ], [ %247, %244 ]
  %258 = phi ptr [ %254, %252 ], [ %251, %244 ]
  store i32 %250, ptr %75, align 8, !tbaa !30
  store ptr %258, ptr %74, align 8, !tbaa !25
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
  br label %.loopexit77

267:                                              ; preds = %260
  %268 = load i32, ptr %230, align 8, !tbaa !21
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i32 %261, ptr %24, align 8, !tbaa !18
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
  br label %.loopexit77

276:                                              ; preds = %271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %233, i8 0, i64 24, i1 false)
  %277 = load i32, ptr %234, align 8, !tbaa !23
  %278 = load i32, ptr %235, align 4, !tbaa !24
  %279 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %277, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %278, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %232, align 8, !tbaa !22
  tail call void @free(ptr noundef %282) #15
  %283 = load ptr, ptr %229, align 8, !tbaa !20
  tail call void @free(ptr noundef %283) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit77

284:                                              ; preds = %276
  store ptr null, ptr %74, align 8, !tbaa !25
  %285 = load i32, ptr %230, align 8, !tbaa !21
  %286 = load i32, ptr %231, align 4, !tbaa !19
  store i32 %286, ptr %24, align 8, !tbaa !18
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %75, align 8, !tbaa !30
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
  br i1 %298, label %.loopexit77, label %299

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #17
  br label %301

301:                                              ; preds = %323, %299
  %302 = phi ptr [ %296, %299 ], [ %327, %323 ]
  store i32 0, ptr %300, align 4, !tbaa !31
  store i32 0, ptr %236, align 4, !tbaa !17
  %303 = load i32, ptr %75, align 8, !tbaa !30
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
  br label %.loopexit77

318:                                              ; preds = %301
  %319 = load i32, ptr %75, align 8, !tbaa !30
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %308), !nosanitize !33
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !33
  br i1 %321, label %322, label %323, !prof !34, !nosanitize !33

322:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !33
  store i32 %324, ptr %75, align 8, !tbaa !30
  %325 = load ptr, ptr %74, align 8, !tbaa !25
  %326 = and i64 %307, 2147483647
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 %326
  store ptr %327, ptr %74, align 8, !tbaa !25
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %.loopexit77, label %301, !llvm.loop !35

329:                                              ; preds = %292, %290
  %330 = load i32, ptr %241, align 8, !tbaa !37
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %75, align 8, !tbaa !30
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %.loopexit77, label %335

335:                                              ; preds = %332
  %336 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
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
  br label %.loopexit77

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
  %378 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %378, ptr %238, align 8, !tbaa !26
  %379 = load ptr, ptr %232, align 8, !tbaa !22
  store ptr %379, ptr %239, align 8, !tbaa !27
  store ptr %379, ptr %240, align 8, !tbaa !28
  br label %380

380:                                              ; preds = %377, %374, %339
  %381 = phi i32 [ %375, %374 ], [ %378, %377 ], [ %340, %339 ]
  %382 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %383 = icmp eq i32 %382, -2
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit77

385:                                              ; preds = %380
  %386 = load i32, ptr %238, align 8, !tbaa !26
  %387 = icmp ult i32 %381, %386
  br i1 %387, label %388, label %389, !prof !34, !nosanitize !33

388:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

389:                                              ; preds = %385
  %390 = icmp eq i32 %381, %386
  br i1 %390, label %.loopexit77, label %339, !llvm.loop !39

.loopexit77:                                      ; preds = %323, %389, %384, %365, %332, %315, %295, %281, %275, %266
  %391 = phi i1 [ true, %315 ], [ true, %365 ], [ true, %384 ], [ false, %332 ], [ true, %266 ], [ true, %275 ], [ true, %281 ], [ false, %295 ], [ false, %389 ], [ false, %323 ]
  %392 = load i32, ptr %75, align 8, !tbaa !30
  %393 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %250, i32 %392), !nosanitize !33
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !33
  br i1 %394, label %395, label %396, !prof !34, !nosanitize !33

395:                                              ; preds = %403, %.loopexit77
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

396:                                              ; preds = %.loopexit77
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !33
  %398 = zext i32 %397 to i64
  %399 = load i64, ptr %242, align 8, !tbaa !40
  %400 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %399, i64 %398), !nosanitize !33
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !33
  br i1 %401, label %402, label %403, !prof !34, !nosanitize !33

402:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

403:                                              ; preds = %396
  %404 = extractvalue { i64, i1 } %400, 0, !nosanitize !33
  store i64 %404, ptr %242, align 8, !tbaa !40
  %405 = load i64, ptr %70, align 8, !tbaa !29
  %406 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %405, i64 %398), !nosanitize !33
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !33
  %408 = extractvalue { i64, i1 } %406, 1, !nosanitize !33
  br i1 %408, label %395, label %409, !prof !34, !nosanitize !33

409:                                              ; preds = %403
  store i64 %407, ptr %70, align 8, !tbaa !29
  br i1 %391, label %.loopexit70, label %410

410:                                              ; preds = %409
  %411 = icmp eq i64 %407, 0
  br i1 %411, label %412, label %244, !llvm.loop !41

412:                                              ; preds = %410
  %413 = load i32, ptr %24, align 8, !tbaa !18
  br label %414

414:                                              ; preds = %412, %68
  %415 = phi i32 [ %413, %412 ], [ %69, %68 ]
  %416 = icmp ult i32 %2, %415
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %416, label %419, label %618

419:                                              ; preds = %414
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %419
  %434 = phi i64 [ %21, %419 ], [ %474, %.loopexit.backedge ]
  %435 = phi ptr [ %1, %419 ], [ %473, %.loopexit.backedge ]
  %436 = load i32, ptr %418, align 8, !tbaa !42
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %.loopexit
  %439 = load ptr, ptr %417, align 8, !tbaa !43
  %440 = load ptr, ptr %420, align 8, !tbaa !20
  br label %443

441:                                              ; preds = %.loopexit
  %442 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %442, ptr %417, align 8, !tbaa !43
  br label %443

443:                                              ; preds = %441, %438
  %444 = phi ptr [ %440, %438 ], [ %442, %441 ]
  %445 = phi ptr [ %439, %438 ], [ %442, %441 ]
  %446 = zext i32 %436 to i64
  %447 = getelementptr inbounds nuw i8, ptr %445, i64 %446
  %448 = ptrtoint ptr %447 to i64
  %449 = ptrtoint ptr %444 to i64
  %450 = sub i64 %448, %449
  %451 = trunc i64 %450 to i32
  %452 = load i32, ptr %24, align 8, !tbaa !18
  %453 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %452, i32 %451), !nosanitize !33
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !33
  br i1 %454, label %455, label %456, !prof !34, !nosanitize !33

455:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

456:                                              ; preds = %443
  %457 = extractvalue { i32, i1 } %453, 0, !nosanitize !33
  %458 = zext i32 %457 to i64
  %459 = tail call i64 @llvm.umin.i64(i64 %434, i64 %458)
  %460 = trunc nuw i64 %459 to i32
  %461 = and i64 %450, 4294967295
  %462 = getelementptr inbounds nuw i8, ptr %444, i64 %461
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %462, ptr align 1 %435, i64 %459, i1 false)
  %463 = load i32, ptr %418, align 8, !tbaa !42
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 %460), !nosanitize !33
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !33
  br i1 %465, label %.loopexit69, label %466, !prof !34, !nosanitize !33

.loopexit69:                                      ; preds = %926, %466, %456
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

466:                                              ; preds = %456
  %467 = extractvalue { i32, i1 } %464, 0, !nosanitize !33
  store i32 %467, ptr %418, align 8, !tbaa !42
  %468 = load i64, ptr %421, align 8, !tbaa !40
  %469 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %468, i64 %459), !nosanitize !33
  %470 = extractvalue { i64, i1 } %469, 1, !nosanitize !33
  br i1 %470, label %.loopexit69, label %471, !prof !34, !nosanitize !33

471:                                              ; preds = %466
  %472 = extractvalue { i64, i1 } %469, 0, !nosanitize !33
  store i64 %472, ptr %421, align 8, !tbaa !40
  %473 = getelementptr inbounds nuw i8, ptr %435, i64 %459
  %474 = sub i64 %434, %459
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %.loopexit70, label %476

476:                                              ; preds = %471
  %477 = load i32, ptr %24, align 8, !tbaa !18
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %511

479:                                              ; preds = %476
  %480 = load i32, ptr %423, align 4, !tbaa !19
  %481 = shl i32 %480, 1
  %482 = zext i32 %481 to i64
  %483 = tail call noalias ptr @malloc(i64 noundef %482) #16
  store ptr %483, ptr %420, align 8, !tbaa !20
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %486

485:                                              ; preds = %479
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

486:                                              ; preds = %479
  %487 = load i32, ptr %422, align 8, !tbaa !21
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %486
  store i32 %480, ptr %24, align 8, !tbaa !18
  br label %514

490:                                              ; preds = %486
  %491 = zext i32 %480 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %424, align 8, !tbaa !22
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %490
  tail call void @free(ptr noundef nonnull %483) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

495:                                              ; preds = %490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %425, i8 0, i64 24, i1 false)
  %496 = load i32, ptr %426, align 8, !tbaa !23
  %497 = load i32, ptr %427, align 4, !tbaa !24
  %498 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %496, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %497, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load ptr, ptr %424, align 8, !tbaa !22
  tail call void @free(ptr noundef %501) #15
  %502 = load ptr, ptr %420, align 8, !tbaa !20
  tail call void @free(ptr noundef %502) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

503:                                              ; preds = %495
  store ptr null, ptr %417, align 8, !tbaa !25
  %504 = load i32, ptr %422, align 8, !tbaa !21
  %505 = load i32, ptr %423, align 4, !tbaa !19
  store i32 %505, ptr %24, align 8, !tbaa !18
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %503
  %508 = load i32, ptr %418, align 8, !tbaa !30
  br label %514

509:                                              ; preds = %503
  store i32 %505, ptr %430, align 8, !tbaa !26
  %510 = load ptr, ptr %424, align 8, !tbaa !22
  store ptr %510, ptr %431, align 8, !tbaa !27
  store ptr %510, ptr %432, align 8, !tbaa !28
  br label %548

511:                                              ; preds = %476
  %512 = load i32, ptr %422, align 8, !tbaa !21
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %548, label %514

514:                                              ; preds = %511, %507, %489
  %515 = phi i32 [ %508, %507 ], [ %467, %511 ], [ %467, %489 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %.loopexit.backedge, label %517

517:                                              ; preds = %514
  %518 = tail call ptr @__errno_location() #17
  %519 = load ptr, ptr %417, align 8, !tbaa !25
  br label %520

520:                                              ; preds = %542, %517
  %521 = phi ptr [ %519, %517 ], [ %546, %542 ]
  store i32 0, ptr %518, align 4, !tbaa !31
  store i32 0, ptr %428, align 4, !tbaa !17
  %522 = load i32, ptr %418, align 8, !tbaa !30
  %523 = tail call i32 @llvm.umin.i32(i32 %522, i32 1073741824)
  %524 = zext nneg i32 %523 to i64
  %525 = load i32, ptr %429, align 4, !tbaa !32
  %526 = tail call i64 @write(i32 noundef %525, ptr noundef %521, i64 noundef %524) #15
  %527 = trunc i64 %526 to i32
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %520
  %530 = load i32, ptr %518, align 4, !tbaa !31
  %531 = icmp eq i32 %530, 11
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  store i32 1, ptr %428, align 4, !tbaa !17
  %533 = load i32, ptr %518, align 4, !tbaa !31
  br label %534

534:                                              ; preds = %532, %529
  %535 = phi i32 [ %530, %529 ], [ %533, %532 ]
  %536 = tail call ptr @strerror(i32 noundef %535) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %536) #15
  br label %610

537:                                              ; preds = %520
  %538 = load i32, ptr %418, align 8, !tbaa !30
  %539 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %538, i32 %527), !nosanitize !33
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !33
  br i1 %540, label %541, label %542, !prof !34, !nosanitize !33

541:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

542:                                              ; preds = %537
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !33
  store i32 %543, ptr %418, align 8, !tbaa !30
  %544 = load ptr, ptr %417, align 8, !tbaa !25
  %545 = and i64 %526, 2147483647
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store ptr %546, ptr %417, align 8, !tbaa !25
  %547 = icmp eq i32 %543, 0
  br i1 %547, label %.loopexit.backedge, label %520, !llvm.loop !35

548:                                              ; preds = %511, %509
  %549 = load i32, ptr %433, align 8, !tbaa !37
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %548
  %552 = load i32, ptr %418, align 8, !tbaa !30
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %.loopexit.backedge, label %554

.loopexit.backedge:                               ; preds = %542, %608, %551, %514
  br label %.loopexit

554:                                              ; preds = %551
  %555 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %433, align 8, !tbaa !37
  br label %556

556:                                              ; preds = %554, %548
  %557 = load i32, ptr %430, align 8, !tbaa !26
  br label %558

558:                                              ; preds = %608, %556
  %559 = phi i32 [ %557, %556 ], [ %605, %608 ]
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %599

561:                                              ; preds = %558
  %562 = load ptr, ptr %431, align 8, !tbaa !27
  %563 = load ptr, ptr %432, align 8, !tbaa !28
  %564 = icmp ugt ptr %562, %563
  br i1 %564, label %565, label %596

565:                                              ; preds = %561
  %566 = tail call ptr @__errno_location() #17
  br label %567

567:                                              ; preds = %587, %565
  %568 = phi ptr [ %563, %565 ], [ %590, %587 ]
  %569 = phi ptr [ %562, %565 ], [ %591, %587 ]
  store i32 0, ptr %566, align 4, !tbaa !31
  store i32 0, ptr %428, align 4, !tbaa !17
  %570 = ptrtoint ptr %569 to i64
  %571 = ptrtoint ptr %568 to i64
  %572 = sub i64 %570, %571
  %573 = tail call i64 @llvm.smin.i64(i64 %572, i64 1073741824)
  %574 = and i64 %573, 4294967295
  %575 = load i32, ptr %429, align 4, !tbaa !32
  %576 = tail call i64 @write(i32 noundef %575, ptr noundef %568, i64 noundef %574) #15
  %577 = and i64 %576, 2147483648
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %567
  %580 = load i32, ptr %566, align 4, !tbaa !31
  %581 = icmp eq i32 %580, 11
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  store i32 1, ptr %428, align 4, !tbaa !17
  %583 = load i32, ptr %566, align 4, !tbaa !31
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i32 [ %580, %579 ], [ %583, %582 ]
  %586 = tail call ptr @strerror(i32 noundef %585) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %586) #15
  br label %610

587:                                              ; preds = %567
  %588 = load ptr, ptr %432, align 8, !tbaa !28
  %589 = and i64 %576, 2147483647
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  store ptr %590, ptr %432, align 8, !tbaa !28
  %591 = load ptr, ptr %431, align 8, !tbaa !27
  %592 = icmp ugt ptr %591, %590
  br i1 %592, label %567, label %593, !llvm.loop !38

593:                                              ; preds = %587
  %594 = load i32, ptr %430, align 8, !tbaa !26
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %599

596:                                              ; preds = %593, %561
  %597 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %597, ptr %430, align 8, !tbaa !26
  %598 = load ptr, ptr %424, align 8, !tbaa !22
  store ptr %598, ptr %431, align 8, !tbaa !27
  store ptr %598, ptr %432, align 8, !tbaa !28
  br label %599

599:                                              ; preds = %596, %593, %558
  %600 = phi i32 [ %594, %593 ], [ %597, %596 ], [ %559, %558 ]
  %601 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %602 = icmp eq i32 %601, -2
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %610

604:                                              ; preds = %599
  %605 = load i32, ptr %430, align 8, !tbaa !26
  %606 = icmp ult i32 %600, %605
  br i1 %606, label %607, label %608, !prof !34, !nosanitize !33

607:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

608:                                              ; preds = %604
  %609 = icmp eq i32 %600, %605
  br i1 %609, label %.loopexit.backedge, label %558, !llvm.loop !39

610:                                              ; preds = %603, %584, %534, %500, %494, %485
  %611 = load i32, ptr %428, align 4, !tbaa !17
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %.loopexit70, label %613

613:                                              ; preds = %610
  %614 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %474), !nosanitize !33
  %615 = extractvalue { i64, i1 } %614, 0, !nosanitize !33
  %616 = extractvalue { i64, i1 } %614, 1, !nosanitize !33
  br i1 %616, label %617, label %.loopexit70, !prof !34, !nosanitize !33

617:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

618:                                              ; preds = %414
  %619 = load i32, ptr %418, align 8, !tbaa !42
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit75, label %621

621:                                              ; preds = %618
  %622 = icmp eq i32 %415, 0
  br i1 %622, label %623, label %663

623:                                              ; preds = %621
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %625 = load i32, ptr %624, align 4, !tbaa !19
  %626 = shl i32 %625, 1
  %627 = zext i32 %626 to i64
  %628 = tail call noalias ptr @malloc(i64 noundef %627) #16
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %628, ptr %629, align 8, !tbaa !20
  %630 = icmp eq ptr %628, null
  br i1 %630, label %631, label %632

631:                                              ; preds = %623
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

632:                                              ; preds = %623
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %634 = load i32, ptr %633, align 8, !tbaa !21
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %632
  store i32 %625, ptr %24, align 8, !tbaa !18
  br label %670

637:                                              ; preds = %632
  %638 = zext i32 %625 to i64
  %639 = tail call noalias ptr @malloc(i64 noundef %638) #16
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %639, ptr %640, align 8, !tbaa !22
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @free(ptr noundef nonnull %628) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

643:                                              ; preds = %637
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %644, i8 0, i64 24, i1 false)
  %646 = load i32, ptr %645, align 8, !tbaa !23
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %648 = load i32, ptr %647, align 4, !tbaa !24
  %649 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %646, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %648, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %640, align 8, !tbaa !22
  tail call void @free(ptr noundef %652) #15
  %653 = load ptr, ptr %629, align 8, !tbaa !20
  tail call void @free(ptr noundef %653) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

654:                                              ; preds = %643
  store ptr null, ptr %417, align 8, !tbaa !25
  %655 = load i32, ptr %633, align 8, !tbaa !21
  %656 = load i32, ptr %624, align 4, !tbaa !19
  store i32 %656, ptr %24, align 8, !tbaa !18
  %657 = icmp eq i32 %655, 0
  br i1 %657, label %658, label %667

658:                                              ; preds = %654
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %656, ptr %659, align 8, !tbaa !26
  %660 = load ptr, ptr %640, align 8, !tbaa !22
  %661 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %660, ptr %661, align 8, !tbaa !27
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %660, ptr %662, align 8, !tbaa !28
  br label %703

663:                                              ; preds = %621
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %665 = load i32, ptr %664, align 8, !tbaa !21
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %703, label %670

667:                                              ; preds = %654
  %668 = load i32, ptr %418, align 8, !tbaa !30
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %.loopexit75, label %670

670:                                              ; preds = %667, %663, %636
  %671 = tail call ptr @__errno_location() #17
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = load ptr, ptr %417, align 8, !tbaa !25
  br label %675

675:                                              ; preds = %697, %670
  %676 = phi ptr [ %674, %670 ], [ %701, %697 ]
  store i32 0, ptr %671, align 4, !tbaa !31
  store i32 0, ptr %672, align 4, !tbaa !17
  %677 = load i32, ptr %418, align 8, !tbaa !30
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 1073741824)
  %679 = zext nneg i32 %678 to i64
  %680 = load i32, ptr %673, align 4, !tbaa !32
  %681 = tail call i64 @write(i32 noundef %680, ptr noundef %676, i64 noundef %679) #15
  %682 = trunc i64 %681 to i32
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %675
  %685 = load i32, ptr %671, align 4, !tbaa !31
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %689

687:                                              ; preds = %684
  store i32 1, ptr %672, align 4, !tbaa !17
  %688 = load i32, ptr %671, align 4, !tbaa !31
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i32 [ %685, %684 ], [ %688, %687 ]
  %691 = tail call ptr @strerror(i32 noundef %690) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %691) #15
  br label %.loopexit70

692:                                              ; preds = %675
  %693 = load i32, ptr %418, align 8, !tbaa !30
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %682), !nosanitize !33
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !33
  br i1 %695, label %696, label %697, !prof !34, !nosanitize !33

696:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

697:                                              ; preds = %692
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !33
  store i32 %698, ptr %418, align 8, !tbaa !30
  %699 = load ptr, ptr %417, align 8, !tbaa !25
  %700 = and i64 %681, 2147483647
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store ptr %701, ptr %417, align 8, !tbaa !25
  %702 = icmp eq i32 %698, 0
  br i1 %702, label %.loopexit75, label %675, !llvm.loop !35

703:                                              ; preds = %663, %658
  %704 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %705 = load i32, ptr %704, align 8, !tbaa !37
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %703
  %708 = load i32, ptr %418, align 8, !tbaa !30
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %.loopexit75, label %710

710:                                              ; preds = %707
  %711 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %704, align 8, !tbaa !37
  br label %712

712:                                              ; preds = %710, %703
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %714 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %717 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %718 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %719 = load i32, ptr %713, align 8, !tbaa !26
  br label %720

720:                                              ; preds = %770, %712
  %721 = phi i32 [ %719, %712 ], [ %767, %770 ]
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %761

723:                                              ; preds = %720
  %724 = load ptr, ptr %714, align 8, !tbaa !27
  %725 = load ptr, ptr %715, align 8, !tbaa !28
  %726 = icmp ugt ptr %724, %725
  br i1 %726, label %727, label %758

727:                                              ; preds = %723
  %728 = tail call ptr @__errno_location() #17
  br label %729

729:                                              ; preds = %749, %727
  %730 = phi ptr [ %725, %727 ], [ %752, %749 ]
  %731 = phi ptr [ %724, %727 ], [ %753, %749 ]
  store i32 0, ptr %728, align 4, !tbaa !31
  store i32 0, ptr %716, align 4, !tbaa !17
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %730 to i64
  %734 = sub i64 %732, %733
  %735 = tail call i64 @llvm.smin.i64(i64 %734, i64 1073741824)
  %736 = and i64 %735, 4294967295
  %737 = load i32, ptr %717, align 4, !tbaa !32
  %738 = tail call i64 @write(i32 noundef %737, ptr noundef %730, i64 noundef %736) #15
  %739 = and i64 %738, 2147483648
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %729
  %742 = load i32, ptr %728, align 4, !tbaa !31
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %746

744:                                              ; preds = %741
  store i32 1, ptr %716, align 4, !tbaa !17
  %745 = load i32, ptr %728, align 4, !tbaa !31
  br label %746

746:                                              ; preds = %744, %741
  %747 = phi i32 [ %742, %741 ], [ %745, %744 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #15
  br label %.loopexit70

749:                                              ; preds = %729
  %750 = load ptr, ptr %715, align 8, !tbaa !28
  %751 = and i64 %738, 2147483647
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store ptr %752, ptr %715, align 8, !tbaa !28
  %753 = load ptr, ptr %714, align 8, !tbaa !27
  %754 = icmp ugt ptr %753, %752
  br i1 %754, label %729, label %755, !llvm.loop !38

755:                                              ; preds = %749
  %756 = load i32, ptr %713, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %755, %723
  %759 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %759, ptr %713, align 8, !tbaa !26
  %760 = load ptr, ptr %718, align 8, !tbaa !22
  store ptr %760, ptr %714, align 8, !tbaa !27
  store ptr %760, ptr %715, align 8, !tbaa !28
  br label %761

761:                                              ; preds = %758, %755, %720
  %762 = phi i32 [ %756, %755 ], [ %759, %758 ], [ %721, %720 ]
  %763 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %764 = icmp eq i32 %763, -2
  br i1 %764, label %765, label %766

765:                                              ; preds = %761
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit70

766:                                              ; preds = %761
  %767 = load i32, ptr %713, align 8, !tbaa !26
  %768 = icmp ult i32 %762, %767
  br i1 %768, label %769, label %770, !prof !34, !nosanitize !33

769:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

770:                                              ; preds = %766
  %771 = icmp eq i32 %762, %767
  br i1 %771, label %.loopexit75, label %720, !llvm.loop !39

.loopexit75:                                      ; preds = %697, %770, %707, %667, %618
  store ptr %1, ptr %417, align 8, !tbaa !43
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %778 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %786

786:                                              ; preds = %943, %.loopexit75
  %787 = phi i64 [ %21, %.loopexit75 ], [ %934, %943 ]
  %788 = tail call i64 @llvm.umin.i64(i64 %787, i64 4294967295)
  %789 = trunc nuw i64 %788 to i32
  store i32 %789, ptr %418, align 8, !tbaa !42
  %790 = load i32, ptr %24, align 8, !tbaa !18
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %822

792:                                              ; preds = %786
  %793 = load i32, ptr %773, align 4, !tbaa !19
  %794 = shl i32 %793, 1
  %795 = zext i32 %794 to i64
  %796 = tail call noalias ptr @malloc(i64 noundef %795) #16
  store ptr %796, ptr %774, align 8, !tbaa !20
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %799

798:                                              ; preds = %792
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

799:                                              ; preds = %792
  %800 = load i32, ptr %772, align 8, !tbaa !21
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %803, label %802

802:                                              ; preds = %799
  store i32 %793, ptr %24, align 8, !tbaa !18
  br label %828

803:                                              ; preds = %799
  %804 = zext i32 %793 to i64
  %805 = tail call noalias ptr @malloc(i64 noundef %804) #16
  store ptr %805, ptr %775, align 8, !tbaa !22
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %808

807:                                              ; preds = %803
  tail call void @free(ptr noundef nonnull %796) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

808:                                              ; preds = %803
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %776, i8 0, i64 24, i1 false)
  %809 = load i32, ptr %777, align 8, !tbaa !23
  %810 = load i32, ptr %778, align 4, !tbaa !24
  %811 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %809, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %810, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %808
  %814 = load ptr, ptr %775, align 8, !tbaa !22
  tail call void @free(ptr noundef %814) #15
  %815 = load ptr, ptr %774, align 8, !tbaa !20
  tail call void @free(ptr noundef %815) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

816:                                              ; preds = %808
  store ptr null, ptr %417, align 8, !tbaa !25
  %817 = load i32, ptr %772, align 8, !tbaa !21
  %818 = load i32, ptr %773, align 4, !tbaa !19
  store i32 %818, ptr %24, align 8, !tbaa !18
  %819 = icmp eq i32 %817, 0
  br i1 %819, label %820, label %825

820:                                              ; preds = %816
  store i32 %818, ptr %781, align 8, !tbaa !26
  %821 = load ptr, ptr %775, align 8, !tbaa !22
  store ptr %821, ptr %782, align 8, !tbaa !27
  store ptr %821, ptr %783, align 8, !tbaa !28
  br label %859

822:                                              ; preds = %786
  %823 = load i32, ptr %772, align 8, !tbaa !21
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %859, label %828

825:                                              ; preds = %816
  %826 = load i32, ptr %418, align 8, !tbaa !30
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %.loopexit71, label %828

828:                                              ; preds = %825, %822, %802
  %829 = tail call ptr @__errno_location() #17
  %830 = load ptr, ptr %417, align 8, !tbaa !25
  br label %831

831:                                              ; preds = %853, %828
  %832 = phi ptr [ %830, %828 ], [ %857, %853 ]
  store i32 0, ptr %829, align 4, !tbaa !31
  store i32 0, ptr %779, align 4, !tbaa !17
  %833 = load i32, ptr %418, align 8, !tbaa !30
  %834 = tail call i32 @llvm.umin.i32(i32 %833, i32 1073741824)
  %835 = zext nneg i32 %834 to i64
  %836 = load i32, ptr %780, align 4, !tbaa !32
  %837 = tail call i64 @write(i32 noundef %836, ptr noundef %832, i64 noundef %835) #15
  %838 = trunc i64 %837 to i32
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %848

840:                                              ; preds = %831
  %841 = load i32, ptr %829, align 4, !tbaa !31
  %842 = icmp eq i32 %841, 11
  br i1 %842, label %843, label %845

843:                                              ; preds = %840
  store i32 1, ptr %779, align 4, !tbaa !17
  %844 = load i32, ptr %829, align 4, !tbaa !31
  br label %845

845:                                              ; preds = %843, %840
  %846 = phi i32 [ %841, %840 ], [ %844, %843 ]
  %847 = tail call ptr @strerror(i32 noundef %846) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %847) #15
  br label %.loopexit71

848:                                              ; preds = %831
  %849 = load i32, ptr %418, align 8, !tbaa !30
  %850 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %849, i32 %838), !nosanitize !33
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !33
  br i1 %851, label %852, label %853, !prof !34, !nosanitize !33

852:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

853:                                              ; preds = %848
  %854 = extractvalue { i32, i1 } %850, 0, !nosanitize !33
  store i32 %854, ptr %418, align 8, !tbaa !30
  %855 = load ptr, ptr %417, align 8, !tbaa !25
  %856 = and i64 %837, 2147483647
  %857 = getelementptr inbounds nuw i8, ptr %855, i64 %856
  store ptr %857, ptr %417, align 8, !tbaa !25
  %858 = icmp eq i32 %854, 0
  br i1 %858, label %.loopexit71, label %831, !llvm.loop !35

859:                                              ; preds = %822, %820
  %860 = load i32, ptr %784, align 8, !tbaa !37
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %867, label %862

862:                                              ; preds = %859
  %863 = load i32, ptr %418, align 8, !tbaa !30
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %.loopexit71, label %865

865:                                              ; preds = %862
  %866 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %784, align 8, !tbaa !37
  br label %867

867:                                              ; preds = %865, %859
  %868 = load i32, ptr %781, align 8, !tbaa !26
  br label %869

869:                                              ; preds = %919, %867
  %870 = phi i32 [ %868, %867 ], [ %916, %919 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %910

872:                                              ; preds = %869
  %873 = load ptr, ptr %782, align 8, !tbaa !27
  %874 = load ptr, ptr %783, align 8, !tbaa !28
  %875 = icmp ugt ptr %873, %874
  br i1 %875, label %876, label %907

876:                                              ; preds = %872
  %877 = tail call ptr @__errno_location() #17
  br label %878

878:                                              ; preds = %898, %876
  %879 = phi ptr [ %874, %876 ], [ %901, %898 ]
  %880 = phi ptr [ %873, %876 ], [ %902, %898 ]
  store i32 0, ptr %877, align 4, !tbaa !31
  store i32 0, ptr %779, align 4, !tbaa !17
  %881 = ptrtoint ptr %880 to i64
  %882 = ptrtoint ptr %879 to i64
  %883 = sub i64 %881, %882
  %884 = tail call i64 @llvm.smin.i64(i64 %883, i64 1073741824)
  %885 = and i64 %884, 4294967295
  %886 = load i32, ptr %780, align 4, !tbaa !32
  %887 = tail call i64 @write(i32 noundef %886, ptr noundef %879, i64 noundef %885) #15
  %888 = and i64 %887, 2147483648
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %898, label %890

890:                                              ; preds = %878
  %891 = load i32, ptr %877, align 4, !tbaa !31
  %892 = icmp eq i32 %891, 11
  br i1 %892, label %893, label %895

893:                                              ; preds = %890
  store i32 1, ptr %779, align 4, !tbaa !17
  %894 = load i32, ptr %877, align 4, !tbaa !31
  br label %895

895:                                              ; preds = %893, %890
  %896 = phi i32 [ %891, %890 ], [ %894, %893 ]
  %897 = tail call ptr @strerror(i32 noundef %896) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %897) #15
  br label %.loopexit71

898:                                              ; preds = %878
  %899 = load ptr, ptr %783, align 8, !tbaa !28
  %900 = and i64 %887, 2147483647
  %901 = getelementptr inbounds nuw i8, ptr %899, i64 %900
  store ptr %901, ptr %783, align 8, !tbaa !28
  %902 = load ptr, ptr %782, align 8, !tbaa !27
  %903 = icmp ugt ptr %902, %901
  br i1 %903, label %878, label %904, !llvm.loop !38

904:                                              ; preds = %898
  %905 = load i32, ptr %781, align 8, !tbaa !26
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %910

907:                                              ; preds = %904, %872
  %908 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %908, ptr %781, align 8, !tbaa !26
  %909 = load ptr, ptr %775, align 8, !tbaa !22
  store ptr %909, ptr %782, align 8, !tbaa !27
  store ptr %909, ptr %783, align 8, !tbaa !28
  br label %910

910:                                              ; preds = %907, %904, %869
  %911 = phi i32 [ %905, %904 ], [ %908, %907 ], [ %870, %869 ]
  %912 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %913 = icmp eq i32 %912, -2
  br i1 %913, label %914, label %915

914:                                              ; preds = %910
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit71

915:                                              ; preds = %910
  %916 = load i32, ptr %781, align 8, !tbaa !26
  %917 = icmp ult i32 %911, %916
  br i1 %917, label %918, label %919, !prof !34, !nosanitize !33

918:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

919:                                              ; preds = %915
  %920 = icmp eq i32 %911, %916
  br i1 %920, label %.loopexit71, label %869, !llvm.loop !39

.loopexit71:                                      ; preds = %853, %919, %914, %895, %862, %845, %825, %813, %807, %798
  %921 = phi i1 [ true, %845 ], [ true, %895 ], [ true, %914 ], [ false, %862 ], [ true, %798 ], [ true, %807 ], [ true, %813 ], [ false, %825 ], [ false, %919 ], [ false, %853 ]
  %922 = load i32, ptr %418, align 8, !tbaa !42
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %789, i32 %922), !nosanitize !33
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !33
  br i1 %924, label %925, label %926, !prof !34, !nosanitize !33

925:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

926:                                              ; preds = %.loopexit71
  %927 = extractvalue { i32, i1 } %923, 0, !nosanitize !33
  %928 = zext i32 %927 to i64
  %929 = load i64, ptr %785, align 8, !tbaa !40
  %930 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %929, i64 %928), !nosanitize !33
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !33
  br i1 %931, label %.loopexit69, label %932, !prof !34, !nosanitize !33

932:                                              ; preds = %926
  %933 = extractvalue { i64, i1 } %930, 0, !nosanitize !33
  store i64 %933, ptr %785, align 8, !tbaa !40
  %934 = sub i64 %787, %928
  br i1 %921, label %935, label %943

935:                                              ; preds = %932
  %936 = load i32, ptr %779, align 4, !tbaa !17
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %.loopexit70, label %938

938:                                              ; preds = %935
  %939 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %934), !nosanitize !33
  %940 = extractvalue { i64, i1 } %939, 0, !nosanitize !33
  %941 = extractvalue { i64, i1 } %939, 1, !nosanitize !33
  br i1 %941, label %942, label %.loopexit70, !prof !34, !nosanitize !33

942:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

943:                                              ; preds = %932
  %944 = icmp eq i64 %934, 0
  br i1 %944, label %.loopexit70, label %786, !llvm.loop !44

.loopexit70:                                      ; preds = %409, %943, %471, %938, %935, %765, %746, %689, %651, %642, %631, %613, %610, %222, %203, %146, %108, %99, %88, %56, %47, %36, %20
  %945 = phi i64 [ 0, %20 ], [ 0, %36 ], [ 0, %47 ], [ 0, %56 ], [ 0, %146 ], [ 0, %203 ], [ 0, %222 ], [ 0, %88 ], [ 0, %99 ], [ 0, %108 ], [ 0, %610 ], [ %615, %613 ], [ 0, %689 ], [ 0, %746 ], [ 0, %765 ], [ 0, %631 ], [ 0, %642 ], [ 0, %651 ], [ 0, %935 ], [ %940, %938 ], [ %21, %471 ], [ %21, %943 ], [ 0, %409 ]
  %946 = trunc i64 %945 to i32
  br label %947

947:                                              ; preds = %.loopexit70, %19, %13, %5, %3
  %948 = phi i32 [ 0, %19 ], [ %946, %.loopexit70 ], [ 0, %3 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %948
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %956, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %956

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %956, label %18

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
  br label %956

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %956, label %31

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br i1 %80, label %422, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %84 = load i32, ptr %83, align 8, !tbaa !30
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %.loopexit80, label %86

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br label %.loopexit70

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
  br i1 %134, label %.loopexit80, label %135

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
  br label %.loopexit70

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
  br i1 %167, label %.loopexit80, label %140, !llvm.loop !35

168:                                              ; preds = %128, %123
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %170 = load i32, ptr %169, align 8, !tbaa !37
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = load i32, ptr %83, align 8, !tbaa !30
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %.loopexit80, label %175

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
  br label %.loopexit70

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
  br label %.loopexit70

231:                                              ; preds = %226
  %232 = load i32, ptr %178, align 8, !tbaa !26
  %233 = icmp ult i32 %227, %232
  br i1 %233, label %234, label %235, !prof !34, !nosanitize !33

234:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

235:                                              ; preds = %231
  %236 = icmp eq i32 %227, %232
  br i1 %236, label %.loopexit80, label %185, !llvm.loop !39

.loopexit80:                                      ; preds = %162, %235, %172, %132, %81
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %251 = load i64, ptr %78, align 8, !tbaa !29
  br label %252

252:                                              ; preds = %418, %.loopexit80
  %253 = phi i64 [ %251, %.loopexit80 ], [ %415, %418 ]
  %254 = phi i1 [ false, %.loopexit80 ], [ true, %418 ]
  %255 = load i32, ptr %32, align 8, !tbaa !18
  %256 = zext i32 %255 to i64
  %257 = tail call i64 @llvm.smin.i64(i64 %253, i64 %256)
  %258 = trunc i64 %257 to i32
  %259 = load ptr, ptr %237, align 8, !tbaa !20
  br i1 %254, label %264, label %260

260:                                              ; preds = %252
  %261 = and i64 %257, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %259, i8 0, i64 %261, i1 false)
  %262 = load ptr, ptr %237, align 8, !tbaa !20
  %263 = load i32, ptr %32, align 8, !tbaa !18
  br label %264

264:                                              ; preds = %260, %252
  %265 = phi i32 [ %263, %260 ], [ %255, %252 ]
  %266 = phi ptr [ %262, %260 ], [ %259, %252 ]
  store i32 %258, ptr %83, align 8, !tbaa !30
  store ptr %266, ptr %82, align 8, !tbaa !25
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %268, label %300

268:                                              ; preds = %264
  %269 = load i32, ptr %239, align 4, !tbaa !19
  %270 = shl i32 %269, 1
  %271 = zext i32 %270 to i64
  %272 = tail call noalias ptr @malloc(i64 noundef %271) #16
  store ptr %272, ptr %237, align 8, !tbaa !20
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit77

275:                                              ; preds = %268
  %276 = load i32, ptr %238, align 8, !tbaa !21
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  store i32 %269, ptr %32, align 8, !tbaa !18
  br label %303

279:                                              ; preds = %275
  %280 = zext i32 %269 to i64
  %281 = tail call noalias ptr @malloc(i64 noundef %280) #16
  store ptr %281, ptr %240, align 8, !tbaa !22
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  tail call void @free(ptr noundef nonnull %272) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit77

284:                                              ; preds = %279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %241, i8 0, i64 24, i1 false)
  %285 = load i32, ptr %242, align 8, !tbaa !23
  %286 = load i32, ptr %243, align 4, !tbaa !24
  %287 = tail call i32 @deflateInit2_(ptr noundef nonnull %82, i32 noundef %285, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %286, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  %290 = load ptr, ptr %240, align 8, !tbaa !22
  tail call void @free(ptr noundef %290) #15
  %291 = load ptr, ptr %237, align 8, !tbaa !20
  tail call void @free(ptr noundef %291) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit77

292:                                              ; preds = %284
  store ptr null, ptr %82, align 8, !tbaa !25
  %293 = load i32, ptr %238, align 8, !tbaa !21
  %294 = load i32, ptr %239, align 4, !tbaa !19
  store i32 %294, ptr %32, align 8, !tbaa !18
  %295 = icmp eq i32 %293, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %83, align 8, !tbaa !30
  br label %303

298:                                              ; preds = %292
  store i32 %294, ptr %246, align 8, !tbaa !26
  %299 = load ptr, ptr %240, align 8, !tbaa !22
  store ptr %299, ptr %247, align 8, !tbaa !27
  store ptr %299, ptr %248, align 8, !tbaa !28
  br label %337

300:                                              ; preds = %264
  %301 = load i32, ptr %238, align 8, !tbaa !21
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %337, label %303

303:                                              ; preds = %300, %296, %278
  %304 = phi ptr [ null, %296 ], [ %266, %300 ], [ %266, %278 ]
  %305 = phi i32 [ %297, %296 ], [ %258, %300 ], [ %258, %278 ]
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %.loopexit77, label %307

307:                                              ; preds = %303
  %308 = tail call ptr @__errno_location() #17
  br label %309

309:                                              ; preds = %331, %307
  %310 = phi ptr [ %304, %307 ], [ %335, %331 ]
  store i32 0, ptr %308, align 4, !tbaa !31
  store i32 0, ptr %244, align 4, !tbaa !17
  %311 = load i32, ptr %83, align 8, !tbaa !30
  %312 = tail call i32 @llvm.umin.i32(i32 %311, i32 1073741824)
  %313 = zext nneg i32 %312 to i64
  %314 = load i32, ptr %245, align 4, !tbaa !32
  %315 = tail call i64 @write(i32 noundef %314, ptr noundef %310, i64 noundef %313) #15
  %316 = trunc i64 %315 to i32
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %309
  %319 = load i32, ptr %308, align 4, !tbaa !31
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  store i32 1, ptr %244, align 4, !tbaa !17
  %322 = load i32, ptr %308, align 4, !tbaa !31
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %319, %318 ], [ %322, %321 ]
  %325 = tail call ptr @strerror(i32 noundef %324) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %325) #15
  br label %.loopexit77

326:                                              ; preds = %309
  %327 = load i32, ptr %83, align 8, !tbaa !30
  %328 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %327, i32 %316), !nosanitize !33
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !33
  br i1 %329, label %330, label %331, !prof !34, !nosanitize !33

330:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

331:                                              ; preds = %326
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !33
  store i32 %332, ptr %83, align 8, !tbaa !30
  %333 = load ptr, ptr %82, align 8, !tbaa !25
  %334 = and i64 %315, 2147483647
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 %334
  store ptr %335, ptr %82, align 8, !tbaa !25
  %336 = icmp eq i32 %332, 0
  br i1 %336, label %.loopexit77, label %309, !llvm.loop !35

337:                                              ; preds = %300, %298
  %338 = load i32, ptr %249, align 8, !tbaa !37
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = load i32, ptr %83, align 8, !tbaa !30
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %.loopexit77, label %343

343:                                              ; preds = %340
  %344 = tail call i32 @deflateReset(ptr noundef nonnull %82) #15
  store i32 0, ptr %249, align 8, !tbaa !37
  br label %345

345:                                              ; preds = %343, %337
  %346 = load i32, ptr %246, align 8, !tbaa !26
  br label %347

347:                                              ; preds = %397, %345
  %348 = phi i32 [ %346, %345 ], [ %394, %397 ]
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %388

350:                                              ; preds = %347
  %351 = load ptr, ptr %247, align 8, !tbaa !27
  %352 = load ptr, ptr %248, align 8, !tbaa !28
  %353 = icmp ugt ptr %351, %352
  br i1 %353, label %354, label %385

354:                                              ; preds = %350
  %355 = tail call ptr @__errno_location() #17
  br label %356

356:                                              ; preds = %376, %354
  %357 = phi ptr [ %352, %354 ], [ %379, %376 ]
  %358 = phi ptr [ %351, %354 ], [ %380, %376 ]
  store i32 0, ptr %355, align 4, !tbaa !31
  store i32 0, ptr %244, align 4, !tbaa !17
  %359 = ptrtoint ptr %358 to i64
  %360 = ptrtoint ptr %357 to i64
  %361 = sub i64 %359, %360
  %362 = tail call i64 @llvm.smin.i64(i64 %361, i64 1073741824)
  %363 = and i64 %362, 4294967295
  %364 = load i32, ptr %245, align 4, !tbaa !32
  %365 = tail call i64 @write(i32 noundef %364, ptr noundef %357, i64 noundef %363) #15
  %366 = and i64 %365, 2147483648
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %376, label %368

368:                                              ; preds = %356
  %369 = load i32, ptr %355, align 4, !tbaa !31
  %370 = icmp eq i32 %369, 11
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  store i32 1, ptr %244, align 4, !tbaa !17
  %372 = load i32, ptr %355, align 4, !tbaa !31
  br label %373

373:                                              ; preds = %371, %368
  %374 = phi i32 [ %369, %368 ], [ %372, %371 ]
  %375 = tail call ptr @strerror(i32 noundef %374) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %375) #15
  br label %.loopexit77

376:                                              ; preds = %356
  %377 = load ptr, ptr %248, align 8, !tbaa !28
  %378 = and i64 %365, 2147483647
  %379 = getelementptr inbounds nuw i8, ptr %377, i64 %378
  store ptr %379, ptr %248, align 8, !tbaa !28
  %380 = load ptr, ptr %247, align 8, !tbaa !27
  %381 = icmp ugt ptr %380, %379
  br i1 %381, label %356, label %382, !llvm.loop !38

382:                                              ; preds = %376
  %383 = load i32, ptr %246, align 8, !tbaa !26
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382, %350
  %386 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %386, ptr %246, align 8, !tbaa !26
  %387 = load ptr, ptr %240, align 8, !tbaa !22
  store ptr %387, ptr %247, align 8, !tbaa !27
  store ptr %387, ptr %248, align 8, !tbaa !28
  br label %388

388:                                              ; preds = %385, %382, %347
  %389 = phi i32 [ %383, %382 ], [ %386, %385 ], [ %348, %347 ]
  %390 = tail call i32 @deflate(ptr noundef nonnull %82, i32 noundef 0) #15
  %391 = icmp eq i32 %390, -2
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit77

393:                                              ; preds = %388
  %394 = load i32, ptr %246, align 8, !tbaa !26
  %395 = icmp ult i32 %389, %394
  br i1 %395, label %396, label %397, !prof !34, !nosanitize !33

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

397:                                              ; preds = %393
  %398 = icmp eq i32 %389, %394
  br i1 %398, label %.loopexit77, label %347, !llvm.loop !39

.loopexit77:                                      ; preds = %331, %397, %392, %373, %340, %323, %303, %289, %283, %274
  %399 = phi i1 [ true, %323 ], [ true, %373 ], [ true, %392 ], [ false, %340 ], [ true, %274 ], [ true, %283 ], [ true, %289 ], [ false, %303 ], [ false, %397 ], [ false, %331 ]
  %400 = load i32, ptr %83, align 8, !tbaa !30
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %258, i32 %400), !nosanitize !33
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !33
  br i1 %402, label %403, label %404, !prof !34, !nosanitize !33

403:                                              ; preds = %411, %.loopexit77
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

404:                                              ; preds = %.loopexit77
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !33
  %406 = zext i32 %405 to i64
  %407 = load i64, ptr %250, align 8, !tbaa !40
  %408 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %407, i64 %406), !nosanitize !33
  %409 = extractvalue { i64, i1 } %408, 1, !nosanitize !33
  br i1 %409, label %410, label %411, !prof !34, !nosanitize !33

410:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

411:                                              ; preds = %404
  %412 = extractvalue { i64, i1 } %408, 0, !nosanitize !33
  store i64 %412, ptr %250, align 8, !tbaa !40
  %413 = load i64, ptr %78, align 8, !tbaa !29
  %414 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %413, i64 %406), !nosanitize !33
  %415 = extractvalue { i64, i1 } %414, 0, !nosanitize !33
  %416 = extractvalue { i64, i1 } %414, 1, !nosanitize !33
  br i1 %416, label %403, label %417, !prof !34, !nosanitize !33

417:                                              ; preds = %411
  store i64 %415, ptr %78, align 8, !tbaa !29
  br i1 %399, label %.loopexit70, label %418

418:                                              ; preds = %417
  %419 = icmp eq i64 %415, 0
  br i1 %419, label %420, label %252, !llvm.loop !41

420:                                              ; preds = %418
  %421 = load i32, ptr %32, align 8, !tbaa !18
  br label %422

422:                                              ; preds = %420, %76
  %423 = phi i32 [ %421, %420 ], [ %77, %76 ]
  %424 = zext i32 %423 to i64
  %425 = icmp ult i64 %20, %424
  %426 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %427 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %425, label %428, label %627

428:                                              ; preds = %422
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %430 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %432 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %437 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %438 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %428
  %443 = phi i64 [ %20, %428 ], [ %483, %.loopexit.backedge ]
  %444 = phi ptr [ %0, %428 ], [ %482, %.loopexit.backedge ]
  %445 = load i32, ptr %427, align 8, !tbaa !42
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %.loopexit
  %448 = load ptr, ptr %426, align 8, !tbaa !43
  %449 = load ptr, ptr %429, align 8, !tbaa !20
  br label %452

450:                                              ; preds = %.loopexit
  %451 = load ptr, ptr %429, align 8, !tbaa !20
  store ptr %451, ptr %426, align 8, !tbaa !43
  br label %452

452:                                              ; preds = %450, %447
  %453 = phi ptr [ %449, %447 ], [ %451, %450 ]
  %454 = phi ptr [ %448, %447 ], [ %451, %450 ]
  %455 = zext i32 %445 to i64
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 %455
  %457 = ptrtoint ptr %456 to i64
  %458 = ptrtoint ptr %453 to i64
  %459 = sub i64 %457, %458
  %460 = trunc i64 %459 to i32
  %461 = load i32, ptr %32, align 8, !tbaa !18
  %462 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %461, i32 %460), !nosanitize !33
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !33
  br i1 %463, label %464, label %465, !prof !34, !nosanitize !33

464:                                              ; preds = %452
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

465:                                              ; preds = %452
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !33
  %467 = zext i32 %466 to i64
  %468 = tail call i64 @llvm.umin.i64(i64 %443, i64 %467)
  %469 = trunc nuw i64 %468 to i32
  %470 = and i64 %459, 4294967295
  %471 = getelementptr inbounds nuw i8, ptr %453, i64 %470
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %471, ptr align 1 %444, i64 %468, i1 false)
  %472 = load i32, ptr %427, align 8, !tbaa !42
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %469), !nosanitize !33
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !33
  br i1 %474, label %.loopexit69, label %475, !prof !34, !nosanitize !33

.loopexit69:                                      ; preds = %935, %475, %465
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

475:                                              ; preds = %465
  %476 = extractvalue { i32, i1 } %473, 0, !nosanitize !33
  store i32 %476, ptr %427, align 8, !tbaa !42
  %477 = load i64, ptr %430, align 8, !tbaa !40
  %478 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %477, i64 %468), !nosanitize !33
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !33
  br i1 %479, label %.loopexit69, label %480, !prof !34, !nosanitize !33

480:                                              ; preds = %475
  %481 = extractvalue { i64, i1 } %478, 0, !nosanitize !33
  store i64 %481, ptr %430, align 8, !tbaa !40
  %482 = getelementptr inbounds nuw i8, ptr %444, i64 %468
  %483 = sub i64 %443, %468
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %.loopexit70, label %485

485:                                              ; preds = %480
  %486 = load i32, ptr %32, align 8, !tbaa !18
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %520

488:                                              ; preds = %485
  %489 = load i32, ptr %432, align 4, !tbaa !19
  %490 = shl i32 %489, 1
  %491 = zext i32 %490 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %429, align 8, !tbaa !20
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

495:                                              ; preds = %488
  %496 = load i32, ptr %431, align 8, !tbaa !21
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %495
  store i32 %489, ptr %32, align 8, !tbaa !18
  br label %523

499:                                              ; preds = %495
  %500 = zext i32 %489 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #16
  store ptr %501, ptr %433, align 8, !tbaa !22
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %504

503:                                              ; preds = %499
  tail call void @free(ptr noundef nonnull %492) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

504:                                              ; preds = %499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %434, i8 0, i64 24, i1 false)
  %505 = load i32, ptr %435, align 8, !tbaa !23
  %506 = load i32, ptr %436, align 4, !tbaa !24
  %507 = tail call i32 @deflateInit2_(ptr noundef nonnull %426, i32 noundef %505, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %506, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %504
  %510 = load ptr, ptr %433, align 8, !tbaa !22
  tail call void @free(ptr noundef %510) #15
  %511 = load ptr, ptr %429, align 8, !tbaa !20
  tail call void @free(ptr noundef %511) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

512:                                              ; preds = %504
  store ptr null, ptr %426, align 8, !tbaa !25
  %513 = load i32, ptr %431, align 8, !tbaa !21
  %514 = load i32, ptr %432, align 4, !tbaa !19
  store i32 %514, ptr %32, align 8, !tbaa !18
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %518, label %516

516:                                              ; preds = %512
  %517 = load i32, ptr %427, align 8, !tbaa !30
  br label %523

518:                                              ; preds = %512
  store i32 %514, ptr %439, align 8, !tbaa !26
  %519 = load ptr, ptr %433, align 8, !tbaa !22
  store ptr %519, ptr %440, align 8, !tbaa !27
  store ptr %519, ptr %441, align 8, !tbaa !28
  br label %557

520:                                              ; preds = %485
  %521 = load i32, ptr %431, align 8, !tbaa !21
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %557, label %523

523:                                              ; preds = %520, %516, %498
  %524 = phi i32 [ %517, %516 ], [ %476, %520 ], [ %476, %498 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %.loopexit.backedge, label %526

526:                                              ; preds = %523
  %527 = tail call ptr @__errno_location() #17
  %528 = load ptr, ptr %426, align 8, !tbaa !25
  br label %529

529:                                              ; preds = %551, %526
  %530 = phi ptr [ %528, %526 ], [ %555, %551 ]
  store i32 0, ptr %527, align 4, !tbaa !31
  store i32 0, ptr %437, align 4, !tbaa !17
  %531 = load i32, ptr %427, align 8, !tbaa !30
  %532 = tail call i32 @llvm.umin.i32(i32 %531, i32 1073741824)
  %533 = zext nneg i32 %532 to i64
  %534 = load i32, ptr %438, align 4, !tbaa !32
  %535 = tail call i64 @write(i32 noundef %534, ptr noundef %530, i64 noundef %533) #15
  %536 = trunc i64 %535 to i32
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %529
  %539 = load i32, ptr %527, align 4, !tbaa !31
  %540 = icmp eq i32 %539, 11
  br i1 %540, label %541, label %543

541:                                              ; preds = %538
  store i32 1, ptr %437, align 4, !tbaa !17
  %542 = load i32, ptr %527, align 4, !tbaa !31
  br label %543

543:                                              ; preds = %541, %538
  %544 = phi i32 [ %539, %538 ], [ %542, %541 ]
  %545 = tail call ptr @strerror(i32 noundef %544) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %545) #15
  br label %619

546:                                              ; preds = %529
  %547 = load i32, ptr %427, align 8, !tbaa !30
  %548 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %547, i32 %536), !nosanitize !33
  %549 = extractvalue { i32, i1 } %548, 1, !nosanitize !33
  br i1 %549, label %550, label %551, !prof !34, !nosanitize !33

550:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

551:                                              ; preds = %546
  %552 = extractvalue { i32, i1 } %548, 0, !nosanitize !33
  store i32 %552, ptr %427, align 8, !tbaa !30
  %553 = load ptr, ptr %426, align 8, !tbaa !25
  %554 = and i64 %535, 2147483647
  %555 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  store ptr %555, ptr %426, align 8, !tbaa !25
  %556 = icmp eq i32 %552, 0
  br i1 %556, label %.loopexit.backedge, label %529, !llvm.loop !35

557:                                              ; preds = %520, %518
  %558 = load i32, ptr %442, align 8, !tbaa !37
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %565, label %560

560:                                              ; preds = %557
  %561 = load i32, ptr %427, align 8, !tbaa !30
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %.loopexit.backedge, label %563

.loopexit.backedge:                               ; preds = %551, %617, %560, %523
  br label %.loopexit

563:                                              ; preds = %560
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %426) #15
  store i32 0, ptr %442, align 8, !tbaa !37
  br label %565

565:                                              ; preds = %563, %557
  %566 = load i32, ptr %439, align 8, !tbaa !26
  br label %567

567:                                              ; preds = %617, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %617 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %440, align 8, !tbaa !27
  %572 = load ptr, ptr %441, align 8, !tbaa !28
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #17
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !31
  store i32 0, ptr %437, align 4, !tbaa !17
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = and i64 %582, 4294967295
  %584 = load i32, ptr %438, align 4, !tbaa !32
  %585 = tail call i64 @write(i32 noundef %584, ptr noundef %577, i64 noundef %583) #15
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !31
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %437, align 4, !tbaa !17
  %592 = load i32, ptr %575, align 4, !tbaa !31
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %595) #15
  br label %619

596:                                              ; preds = %576
  %597 = load ptr, ptr %441, align 8, !tbaa !28
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  store ptr %599, ptr %441, align 8, !tbaa !28
  %600 = load ptr, ptr %440, align 8, !tbaa !27
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !38

602:                                              ; preds = %596
  %603 = load i32, ptr %439, align 8, !tbaa !26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %606, ptr %439, align 8, !tbaa !26
  %607 = load ptr, ptr %433, align 8, !tbaa !22
  store ptr %607, ptr %440, align 8, !tbaa !27
  store ptr %607, ptr %441, align 8, !tbaa !28
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %426, i32 noundef 0) #15
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %619

613:                                              ; preds = %608
  %614 = load i32, ptr %439, align 8, !tbaa !26
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %617, !prof !34, !nosanitize !33

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

617:                                              ; preds = %613
  %618 = icmp eq i32 %609, %614
  br i1 %618, label %.loopexit.backedge, label %567, !llvm.loop !39

619:                                              ; preds = %612, %593, %543, %509, %503, %494
  %620 = load i32, ptr %437, align 4, !tbaa !17
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %.loopexit70, label %622

622:                                              ; preds = %619
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %483), !nosanitize !33
  %624 = extractvalue { i64, i1 } %623, 0, !nosanitize !33
  %625 = extractvalue { i64, i1 } %623, 1, !nosanitize !33
  br i1 %625, label %626, label %.loopexit70, !prof !34, !nosanitize !33

626:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

627:                                              ; preds = %422
  %628 = load i32, ptr %427, align 8, !tbaa !42
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %.loopexit75, label %630

630:                                              ; preds = %627
  %631 = icmp eq i32 %423, 0
  br i1 %631, label %632, label %672

632:                                              ; preds = %630
  %633 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %634 = load i32, ptr %633, align 4, !tbaa !19
  %635 = shl i32 %634, 1
  %636 = zext i32 %635 to i64
  %637 = tail call noalias ptr @malloc(i64 noundef %636) #16
  %638 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %637, ptr %638, align 8, !tbaa !20
  %639 = icmp eq ptr %637, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %632
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

641:                                              ; preds = %632
  %642 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %643 = load i32, ptr %642, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %641
  store i32 %634, ptr %32, align 8, !tbaa !18
  br label %679

646:                                              ; preds = %641
  %647 = zext i32 %634 to i64
  %648 = tail call noalias ptr @malloc(i64 noundef %647) #16
  %649 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %648, ptr %649, align 8, !tbaa !22
  %650 = icmp eq ptr %648, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  tail call void @free(ptr noundef nonnull %637) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

652:                                              ; preds = %646
  %653 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %654 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %653, i8 0, i64 24, i1 false)
  %655 = load i32, ptr %654, align 8, !tbaa !23
  %656 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %657 = load i32, ptr %656, align 4, !tbaa !24
  %658 = tail call i32 @deflateInit2_(ptr noundef nonnull %426, i32 noundef %655, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %657, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %652
  %661 = load ptr, ptr %649, align 8, !tbaa !22
  tail call void @free(ptr noundef %661) #15
  %662 = load ptr, ptr %638, align 8, !tbaa !20
  tail call void @free(ptr noundef %662) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

663:                                              ; preds = %652
  store ptr null, ptr %426, align 8, !tbaa !25
  %664 = load i32, ptr %642, align 8, !tbaa !21
  %665 = load i32, ptr %633, align 4, !tbaa !19
  store i32 %665, ptr %32, align 8, !tbaa !18
  %666 = icmp eq i32 %664, 0
  br i1 %666, label %667, label %676

667:                                              ; preds = %663
  %668 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %665, ptr %668, align 8, !tbaa !26
  %669 = load ptr, ptr %649, align 8, !tbaa !22
  %670 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %669, ptr %670, align 8, !tbaa !27
  %671 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %669, ptr %671, align 8, !tbaa !28
  br label %712

672:                                              ; preds = %630
  %673 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %674 = load i32, ptr %673, align 8, !tbaa !21
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %712, label %679

676:                                              ; preds = %663
  %677 = load i32, ptr %427, align 8, !tbaa !30
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %.loopexit75, label %679

679:                                              ; preds = %676, %672, %645
  %680 = tail call ptr @__errno_location() #17
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %683 = load ptr, ptr %426, align 8, !tbaa !25
  br label %684

684:                                              ; preds = %706, %679
  %685 = phi ptr [ %683, %679 ], [ %710, %706 ]
  store i32 0, ptr %680, align 4, !tbaa !31
  store i32 0, ptr %681, align 4, !tbaa !17
  %686 = load i32, ptr %427, align 8, !tbaa !30
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
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %700) #15
  br label %.loopexit70

701:                                              ; preds = %684
  %702 = load i32, ptr %427, align 8, !tbaa !30
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %691), !nosanitize !33
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !33
  br i1 %704, label %705, label %706, !prof !34, !nosanitize !33

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !33
  store i32 %707, ptr %427, align 8, !tbaa !30
  %708 = load ptr, ptr %426, align 8, !tbaa !25
  %709 = and i64 %690, 2147483647
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  store ptr %710, ptr %426, align 8, !tbaa !25
  %711 = icmp eq i32 %707, 0
  br i1 %711, label %.loopexit75, label %684, !llvm.loop !35

712:                                              ; preds = %672, %667
  %713 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %714 = load i32, ptr %713, align 8, !tbaa !37
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %721, label %716

716:                                              ; preds = %712
  %717 = load i32, ptr %427, align 8, !tbaa !30
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %.loopexit75, label %719

719:                                              ; preds = %716
  %720 = tail call i32 @deflateReset(ptr noundef nonnull %426) #15
  store i32 0, ptr %713, align 8, !tbaa !37
  br label %721

721:                                              ; preds = %719, %712
  %722 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %723 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %724 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %725 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %726 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %727 = getelementptr inbounds nuw i8, ptr %3, i64 56
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
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %757) #15
  br label %.loopexit70

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
  %768 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %768, ptr %722, align 8, !tbaa !26
  %769 = load ptr, ptr %727, align 8, !tbaa !22
  store ptr %769, ptr %723, align 8, !tbaa !27
  store ptr %769, ptr %724, align 8, !tbaa !28
  br label %770

770:                                              ; preds = %767, %764, %729
  %771 = phi i32 [ %765, %764 ], [ %768, %767 ], [ %730, %729 ]
  %772 = tail call i32 @deflate(ptr noundef nonnull %426, i32 noundef 0) #15
  %773 = icmp eq i32 %772, -2
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit70

775:                                              ; preds = %770
  %776 = load i32, ptr %722, align 8, !tbaa !26
  %777 = icmp ult i32 %771, %776
  br i1 %777, label %778, label %779, !prof !34, !nosanitize !33

778:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

779:                                              ; preds = %775
  %780 = icmp eq i32 %771, %776
  br i1 %780, label %.loopexit75, label %729, !llvm.loop !39

.loopexit75:                                      ; preds = %706, %779, %716, %676, %627
  store ptr %0, ptr %426, align 8, !tbaa !43
  %781 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %782 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %783 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %784 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %785 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %786 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %787 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %788 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %789 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %790 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %791 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %792 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %793 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %794 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %795

795:                                              ; preds = %952, %.loopexit75
  %796 = phi i64 [ %20, %.loopexit75 ], [ %943, %952 ]
  %797 = tail call i64 @llvm.umin.i64(i64 %796, i64 4294967295)
  %798 = trunc nuw i64 %797 to i32
  store i32 %798, ptr %427, align 8, !tbaa !42
  %799 = load i32, ptr %32, align 8, !tbaa !18
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %831

801:                                              ; preds = %795
  %802 = load i32, ptr %782, align 4, !tbaa !19
  %803 = shl i32 %802, 1
  %804 = zext i32 %803 to i64
  %805 = tail call noalias ptr @malloc(i64 noundef %804) #16
  store ptr %805, ptr %783, align 8, !tbaa !20
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %808

807:                                              ; preds = %801
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

808:                                              ; preds = %801
  %809 = load i32, ptr %781, align 8, !tbaa !21
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %812, label %811

811:                                              ; preds = %808
  store i32 %802, ptr %32, align 8, !tbaa !18
  br label %837

812:                                              ; preds = %808
  %813 = zext i32 %802 to i64
  %814 = tail call noalias ptr @malloc(i64 noundef %813) #16
  store ptr %814, ptr %784, align 8, !tbaa !22
  %815 = icmp eq ptr %814, null
  br i1 %815, label %816, label %817

816:                                              ; preds = %812
  tail call void @free(ptr noundef nonnull %805) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

817:                                              ; preds = %812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %785, i8 0, i64 24, i1 false)
  %818 = load i32, ptr %786, align 8, !tbaa !23
  %819 = load i32, ptr %787, align 4, !tbaa !24
  %820 = tail call i32 @deflateInit2_(ptr noundef nonnull %426, i32 noundef %818, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %819, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %825, label %822

822:                                              ; preds = %817
  %823 = load ptr, ptr %784, align 8, !tbaa !22
  tail call void @free(ptr noundef %823) #15
  %824 = load ptr, ptr %783, align 8, !tbaa !20
  tail call void @free(ptr noundef %824) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit71

825:                                              ; preds = %817
  store ptr null, ptr %426, align 8, !tbaa !25
  %826 = load i32, ptr %781, align 8, !tbaa !21
  %827 = load i32, ptr %782, align 4, !tbaa !19
  store i32 %827, ptr %32, align 8, !tbaa !18
  %828 = icmp eq i32 %826, 0
  br i1 %828, label %829, label %834

829:                                              ; preds = %825
  store i32 %827, ptr %790, align 8, !tbaa !26
  %830 = load ptr, ptr %784, align 8, !tbaa !22
  store ptr %830, ptr %791, align 8, !tbaa !27
  store ptr %830, ptr %792, align 8, !tbaa !28
  br label %868

831:                                              ; preds = %795
  %832 = load i32, ptr %781, align 8, !tbaa !21
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %868, label %837

834:                                              ; preds = %825
  %835 = load i32, ptr %427, align 8, !tbaa !30
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %.loopexit71, label %837

837:                                              ; preds = %834, %831, %811
  %838 = tail call ptr @__errno_location() #17
  %839 = load ptr, ptr %426, align 8, !tbaa !25
  br label %840

840:                                              ; preds = %862, %837
  %841 = phi ptr [ %839, %837 ], [ %866, %862 ]
  store i32 0, ptr %838, align 4, !tbaa !31
  store i32 0, ptr %788, align 4, !tbaa !17
  %842 = load i32, ptr %427, align 8, !tbaa !30
  %843 = tail call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = zext nneg i32 %843 to i64
  %845 = load i32, ptr %789, align 4, !tbaa !32
  %846 = tail call i64 @write(i32 noundef %845, ptr noundef %841, i64 noundef %844) #15
  %847 = trunc i64 %846 to i32
  %848 = icmp slt i32 %847, 0
  br i1 %848, label %849, label %857

849:                                              ; preds = %840
  %850 = load i32, ptr %838, align 4, !tbaa !31
  %851 = icmp eq i32 %850, 11
  br i1 %851, label %852, label %854

852:                                              ; preds = %849
  store i32 1, ptr %788, align 4, !tbaa !17
  %853 = load i32, ptr %838, align 4, !tbaa !31
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi i32 [ %850, %849 ], [ %853, %852 ]
  %856 = tail call ptr @strerror(i32 noundef %855) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %856) #15
  br label %.loopexit71

857:                                              ; preds = %840
  %858 = load i32, ptr %427, align 8, !tbaa !30
  %859 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %858, i32 %847), !nosanitize !33
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !33
  br i1 %860, label %861, label %862, !prof !34, !nosanitize !33

861:                                              ; preds = %857
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

862:                                              ; preds = %857
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !33
  store i32 %863, ptr %427, align 8, !tbaa !30
  %864 = load ptr, ptr %426, align 8, !tbaa !25
  %865 = and i64 %846, 2147483647
  %866 = getelementptr inbounds nuw i8, ptr %864, i64 %865
  store ptr %866, ptr %426, align 8, !tbaa !25
  %867 = icmp eq i32 %863, 0
  br i1 %867, label %.loopexit71, label %840, !llvm.loop !35

868:                                              ; preds = %831, %829
  %869 = load i32, ptr %793, align 8, !tbaa !37
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %876, label %871

871:                                              ; preds = %868
  %872 = load i32, ptr %427, align 8, !tbaa !30
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %.loopexit71, label %874

874:                                              ; preds = %871
  %875 = tail call i32 @deflateReset(ptr noundef nonnull %426) #15
  store i32 0, ptr %793, align 8, !tbaa !37
  br label %876

876:                                              ; preds = %874, %868
  %877 = load i32, ptr %790, align 8, !tbaa !26
  br label %878

878:                                              ; preds = %928, %876
  %879 = phi i32 [ %877, %876 ], [ %925, %928 ]
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %919

881:                                              ; preds = %878
  %882 = load ptr, ptr %791, align 8, !tbaa !27
  %883 = load ptr, ptr %792, align 8, !tbaa !28
  %884 = icmp ugt ptr %882, %883
  br i1 %884, label %885, label %916

885:                                              ; preds = %881
  %886 = tail call ptr @__errno_location() #17
  br label %887

887:                                              ; preds = %907, %885
  %888 = phi ptr [ %883, %885 ], [ %910, %907 ]
  %889 = phi ptr [ %882, %885 ], [ %911, %907 ]
  store i32 0, ptr %886, align 4, !tbaa !31
  store i32 0, ptr %788, align 4, !tbaa !17
  %890 = ptrtoint ptr %889 to i64
  %891 = ptrtoint ptr %888 to i64
  %892 = sub i64 %890, %891
  %893 = tail call i64 @llvm.smin.i64(i64 %892, i64 1073741824)
  %894 = and i64 %893, 4294967295
  %895 = load i32, ptr %789, align 4, !tbaa !32
  %896 = tail call i64 @write(i32 noundef %895, ptr noundef %888, i64 noundef %894) #15
  %897 = and i64 %896, 2147483648
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %887
  %900 = load i32, ptr %886, align 4, !tbaa !31
  %901 = icmp eq i32 %900, 11
  br i1 %901, label %902, label %904

902:                                              ; preds = %899
  store i32 1, ptr %788, align 4, !tbaa !17
  %903 = load i32, ptr %886, align 4, !tbaa !31
  br label %904

904:                                              ; preds = %902, %899
  %905 = phi i32 [ %900, %899 ], [ %903, %902 ]
  %906 = tail call ptr @strerror(i32 noundef %905) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %906) #15
  br label %.loopexit71

907:                                              ; preds = %887
  %908 = load ptr, ptr %792, align 8, !tbaa !28
  %909 = and i64 %896, 2147483647
  %910 = getelementptr inbounds nuw i8, ptr %908, i64 %909
  store ptr %910, ptr %792, align 8, !tbaa !28
  %911 = load ptr, ptr %791, align 8, !tbaa !27
  %912 = icmp ugt ptr %911, %910
  br i1 %912, label %887, label %913, !llvm.loop !38

913:                                              ; preds = %907
  %914 = load i32, ptr %790, align 8, !tbaa !26
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %919

916:                                              ; preds = %913, %881
  %917 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %917, ptr %790, align 8, !tbaa !26
  %918 = load ptr, ptr %784, align 8, !tbaa !22
  store ptr %918, ptr %791, align 8, !tbaa !27
  store ptr %918, ptr %792, align 8, !tbaa !28
  br label %919

919:                                              ; preds = %916, %913, %878
  %920 = phi i32 [ %914, %913 ], [ %917, %916 ], [ %879, %878 ]
  %921 = tail call i32 @deflate(ptr noundef nonnull %426, i32 noundef 0) #15
  %922 = icmp eq i32 %921, -2
  br i1 %922, label %923, label %924

923:                                              ; preds = %919
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit71

924:                                              ; preds = %919
  %925 = load i32, ptr %790, align 8, !tbaa !26
  %926 = icmp ult i32 %920, %925
  br i1 %926, label %927, label %928, !prof !34, !nosanitize !33

927:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

928:                                              ; preds = %924
  %929 = icmp eq i32 %920, %925
  br i1 %929, label %.loopexit71, label %878, !llvm.loop !39

.loopexit71:                                      ; preds = %862, %928, %923, %904, %871, %854, %834, %822, %816, %807
  %930 = phi i1 [ true, %854 ], [ true, %904 ], [ true, %923 ], [ false, %871 ], [ true, %807 ], [ true, %816 ], [ true, %822 ], [ false, %834 ], [ false, %928 ], [ false, %862 ]
  %931 = load i32, ptr %427, align 8, !tbaa !42
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %798, i32 %931), !nosanitize !33
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !33
  br i1 %933, label %934, label %935, !prof !34, !nosanitize !33

934:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

935:                                              ; preds = %.loopexit71
  %936 = extractvalue { i32, i1 } %932, 0, !nosanitize !33
  %937 = zext i32 %936 to i64
  %938 = load i64, ptr %794, align 8, !tbaa !40
  %939 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %938, i64 %937), !nosanitize !33
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !33
  br i1 %940, label %.loopexit69, label %941, !prof !34, !nosanitize !33

941:                                              ; preds = %935
  %942 = extractvalue { i64, i1 } %939, 0, !nosanitize !33
  store i64 %942, ptr %794, align 8, !tbaa !40
  %943 = sub i64 %796, %937
  br i1 %930, label %944, label %952

944:                                              ; preds = %941
  %945 = load i32, ptr %788, align 4, !tbaa !17
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %.loopexit70, label %947

947:                                              ; preds = %944
  %948 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %943), !nosanitize !33
  %949 = extractvalue { i64, i1 } %948, 0, !nosanitize !33
  %950 = extractvalue { i64, i1 } %948, 1, !nosanitize !33
  br i1 %950, label %951, label %.loopexit70, !prof !34, !nosanitize !33

951:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

952:                                              ; preds = %941
  %953 = icmp eq i64 %943, 0
  br i1 %953, label %.loopexit70, label %795, !llvm.loop !44

.loopexit70:                                      ; preds = %417, %952, %480, %947, %944, %774, %755, %698, %660, %651, %640, %622, %619, %230, %211, %154, %116, %107, %96, %64, %55, %44
  %954 = phi i64 [ 0, %44 ], [ 0, %55 ], [ 0, %64 ], [ 0, %154 ], [ 0, %211 ], [ 0, %230 ], [ 0, %96 ], [ 0, %107 ], [ 0, %116 ], [ 0, %619 ], [ %624, %622 ], [ 0, %698 ], [ 0, %755 ], [ 0, %774 ], [ 0, %640 ], [ 0, %651 ], [ 0, %660 ], [ 0, %944 ], [ %949, %947 ], [ %20, %480 ], [ %20, %952 ], [ 0, %417 ]
  %955 = udiv i64 %954, %1
  br label %956

956:                                              ; preds = %.loopexit70, %29, %28, %14, %6, %4
  %957 = phi i64 [ 0, %28 ], [ 0, %4 ], [ 0, %14 ], [ 0, %6 ], [ %955, %.loopexit70 ], [ 0, %29 ]
  ret i64 %957
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit104, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %.loopexit104

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %.loopexit104, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit110, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %.loopexit111, label %26

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
  br label %.loopexit104

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
  br label %.loopexit104

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
  br label %.loopexit104

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
  br i1 %76, label %.loopexit111, label %77

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
  br label %.loopexit104

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
  br i1 %109, label %.loopexit111, label %82, !llvm.loop !35

110:                                              ; preds = %70, %65
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %112 = load i32, ptr %111, align 8, !tbaa !37
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %23, align 8, !tbaa !30
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %.loopexit111, label %117

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
  br label %.loopexit104

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
  br label %.loopexit104

173:                                              ; preds = %168
  %174 = load i32, ptr %120, align 8, !tbaa !26
  %175 = icmp ult i32 %169, %174
  br i1 %175, label %176, label %177, !prof !34, !nosanitize !33

176:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

177:                                              ; preds = %173
  %178 = icmp eq i32 %169, %174
  br i1 %178, label %.loopexit111, label %127, !llvm.loop !39

.loopexit111:                                     ; preds = %104, %177, %114, %74, %22
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %194 = load i64, ptr %19, align 8, !tbaa !29
  br label %195

195:                                              ; preds = %361, %.loopexit111
  %196 = phi i64 [ %194, %.loopexit111 ], [ %358, %361 ]
  %197 = phi i1 [ false, %.loopexit111 ], [ true, %361 ]
  %198 = load i32, ptr %179, align 8, !tbaa !18
  %199 = zext i32 %198 to i64
  %200 = tail call i64 @llvm.smin.i64(i64 %196, i64 %199)
  %201 = trunc i64 %200 to i32
  %202 = load ptr, ptr %180, align 8, !tbaa !20
  br i1 %197, label %207, label %203

203:                                              ; preds = %195
  %204 = and i64 %200, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %202, i8 0, i64 %204, i1 false)
  %205 = load ptr, ptr %180, align 8, !tbaa !20
  %206 = load i32, ptr %179, align 8, !tbaa !18
  br label %207

207:                                              ; preds = %203, %195
  %208 = phi i32 [ %206, %203 ], [ %198, %195 ]
  %209 = phi ptr [ %205, %203 ], [ %202, %195 ]
  store i32 %201, ptr %23, align 8, !tbaa !30
  store ptr %209, ptr %6, align 8, !tbaa !25
  %210 = icmp eq i32 %208, 0
  br i1 %210, label %211, label %243

211:                                              ; preds = %207
  %212 = load i32, ptr %182, align 4, !tbaa !19
  %213 = shl i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = tail call noalias ptr @malloc(i64 noundef %214) #16
  store ptr %215, ptr %180, align 8, !tbaa !20
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit107

218:                                              ; preds = %211
  %219 = load i32, ptr %181, align 8, !tbaa !21
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  store i32 %212, ptr %179, align 8, !tbaa !18
  br label %246

222:                                              ; preds = %218
  %223 = zext i32 %212 to i64
  %224 = tail call noalias ptr @malloc(i64 noundef %223) #16
  store ptr %224, ptr %183, align 8, !tbaa !22
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  tail call void @free(ptr noundef nonnull %215) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit107

227:                                              ; preds = %222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %184, i8 0, i64 24, i1 false)
  %228 = load i32, ptr %185, align 8, !tbaa !23
  %229 = load i32, ptr %186, align 4, !tbaa !24
  %230 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %228, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %229, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr %183, align 8, !tbaa !22
  tail call void @free(ptr noundef %233) #15
  %234 = load ptr, ptr %180, align 8, !tbaa !20
  tail call void @free(ptr noundef %234) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit107

235:                                              ; preds = %227
  store ptr null, ptr %6, align 8, !tbaa !25
  %236 = load i32, ptr %181, align 8, !tbaa !21
  %237 = load i32, ptr %182, align 4, !tbaa !19
  store i32 %237, ptr %179, align 8, !tbaa !18
  %238 = icmp eq i32 %236, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr %23, align 8, !tbaa !30
  br label %246

241:                                              ; preds = %235
  store i32 %237, ptr %189, align 8, !tbaa !26
  %242 = load ptr, ptr %183, align 8, !tbaa !22
  store ptr %242, ptr %190, align 8, !tbaa !27
  store ptr %242, ptr %191, align 8, !tbaa !28
  br label %280

243:                                              ; preds = %207
  %244 = load i32, ptr %181, align 8, !tbaa !21
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %280, label %246

246:                                              ; preds = %243, %239, %221
  %247 = phi ptr [ null, %239 ], [ %209, %243 ], [ %209, %221 ]
  %248 = phi i32 [ %240, %239 ], [ %201, %243 ], [ %201, %221 ]
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %.loopexit107, label %250

250:                                              ; preds = %246
  %251 = tail call ptr @__errno_location() #17
  br label %252

252:                                              ; preds = %274, %250
  %253 = phi ptr [ %247, %250 ], [ %278, %274 ]
  store i32 0, ptr %251, align 4, !tbaa !31
  store i32 0, ptr %187, align 4, !tbaa !17
  %254 = load i32, ptr %23, align 8, !tbaa !30
  %255 = tail call i32 @llvm.umin.i32(i32 %254, i32 1073741824)
  %256 = zext nneg i32 %255 to i64
  %257 = load i32, ptr %188, align 4, !tbaa !32
  %258 = tail call i64 @write(i32 noundef %257, ptr noundef %253, i64 noundef %256) #15
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %252
  %262 = load i32, ptr %251, align 4, !tbaa !31
  %263 = icmp eq i32 %262, 11
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  store i32 1, ptr %187, align 4, !tbaa !17
  %265 = load i32, ptr %251, align 4, !tbaa !31
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi i32 [ %262, %261 ], [ %265, %264 ]
  %268 = tail call ptr @strerror(i32 noundef %267) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %268) #15
  br label %.loopexit107

269:                                              ; preds = %252
  %270 = load i32, ptr %23, align 8, !tbaa !30
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 %259), !nosanitize !33
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !33
  br i1 %272, label %273, label %274, !prof !34, !nosanitize !33

273:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !33
  store i32 %275, ptr %23, align 8, !tbaa !30
  %276 = load ptr, ptr %6, align 8, !tbaa !25
  %277 = and i64 %258, 2147483647
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 %277
  store ptr %278, ptr %6, align 8, !tbaa !25
  %279 = icmp eq i32 %275, 0
  br i1 %279, label %.loopexit107, label %252, !llvm.loop !35

280:                                              ; preds = %243, %241
  %281 = load i32, ptr %192, align 8, !tbaa !37
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %23, align 8, !tbaa !30
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %.loopexit107, label %286

286:                                              ; preds = %283
  %287 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %192, align 8, !tbaa !37
  br label %288

288:                                              ; preds = %286, %280
  %289 = load i32, ptr %189, align 8, !tbaa !26
  br label %290

290:                                              ; preds = %340, %288
  %291 = phi i32 [ %289, %288 ], [ %337, %340 ]
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %331

293:                                              ; preds = %290
  %294 = load ptr, ptr %190, align 8, !tbaa !27
  %295 = load ptr, ptr %191, align 8, !tbaa !28
  %296 = icmp ugt ptr %294, %295
  br i1 %296, label %297, label %328

297:                                              ; preds = %293
  %298 = tail call ptr @__errno_location() #17
  br label %299

299:                                              ; preds = %319, %297
  %300 = phi ptr [ %295, %297 ], [ %322, %319 ]
  %301 = phi ptr [ %294, %297 ], [ %323, %319 ]
  store i32 0, ptr %298, align 4, !tbaa !31
  store i32 0, ptr %187, align 4, !tbaa !17
  %302 = ptrtoint ptr %301 to i64
  %303 = ptrtoint ptr %300 to i64
  %304 = sub i64 %302, %303
  %305 = tail call i64 @llvm.smin.i64(i64 %304, i64 1073741824)
  %306 = and i64 %305, 4294967295
  %307 = load i32, ptr %188, align 4, !tbaa !32
  %308 = tail call i64 @write(i32 noundef %307, ptr noundef %300, i64 noundef %306) #15
  %309 = and i64 %308, 2147483648
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %299
  %312 = load i32, ptr %298, align 4, !tbaa !31
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  store i32 1, ptr %187, align 4, !tbaa !17
  %315 = load i32, ptr %298, align 4, !tbaa !31
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %314 ]
  %318 = tail call ptr @strerror(i32 noundef %317) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %318) #15
  br label %.loopexit107

319:                                              ; preds = %299
  %320 = load ptr, ptr %191, align 8, !tbaa !28
  %321 = and i64 %308, 2147483647
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store ptr %322, ptr %191, align 8, !tbaa !28
  %323 = load ptr, ptr %190, align 8, !tbaa !27
  %324 = icmp ugt ptr %323, %322
  br i1 %324, label %299, label %325, !llvm.loop !38

325:                                              ; preds = %319
  %326 = load i32, ptr %189, align 8, !tbaa !26
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325, %293
  %329 = load i32, ptr %179, align 8, !tbaa !18
  store i32 %329, ptr %189, align 8, !tbaa !26
  %330 = load ptr, ptr %183, align 8, !tbaa !22
  store ptr %330, ptr %190, align 8, !tbaa !27
  store ptr %330, ptr %191, align 8, !tbaa !28
  br label %331

331:                                              ; preds = %328, %325, %290
  %332 = phi i32 [ %326, %325 ], [ %329, %328 ], [ %291, %290 ]
  %333 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %334 = icmp eq i32 %333, -2
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit107

336:                                              ; preds = %331
  %337 = load i32, ptr %189, align 8, !tbaa !26
  %338 = icmp ult i32 %332, %337
  br i1 %338, label %339, label %340, !prof !34, !nosanitize !33

339:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

340:                                              ; preds = %336
  %341 = icmp eq i32 %332, %337
  br i1 %341, label %.loopexit107, label %290, !llvm.loop !39

.loopexit107:                                     ; preds = %274, %340, %335, %316, %283, %266, %246, %232, %226, %217
  %342 = phi i1 [ true, %266 ], [ true, %316 ], [ true, %335 ], [ false, %283 ], [ true, %217 ], [ true, %226 ], [ true, %232 ], [ false, %246 ], [ false, %340 ], [ false, %274 ]
  %343 = load i32, ptr %23, align 8, !tbaa !30
  %344 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 %343), !nosanitize !33
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !33
  br i1 %345, label %346, label %347, !prof !34, !nosanitize !33

346:                                              ; preds = %354, %.loopexit107
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

347:                                              ; preds = %.loopexit107
  %348 = extractvalue { i32, i1 } %344, 0, !nosanitize !33
  %349 = zext i32 %348 to i64
  %350 = load i64, ptr %193, align 8, !tbaa !40
  %351 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %350, i64 %349), !nosanitize !33
  %352 = extractvalue { i64, i1 } %351, 1, !nosanitize !33
  br i1 %352, label %353, label %354, !prof !34, !nosanitize !33

353:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

354:                                              ; preds = %347
  %355 = extractvalue { i64, i1 } %351, 0, !nosanitize !33
  store i64 %355, ptr %193, align 8, !tbaa !40
  %356 = load i64, ptr %19, align 8, !tbaa !29
  %357 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %356, i64 %349), !nosanitize !33
  %358 = extractvalue { i64, i1 } %357, 0, !nosanitize !33
  %359 = extractvalue { i64, i1 } %357, 1, !nosanitize !33
  br i1 %359, label %346, label %360, !prof !34, !nosanitize !33

360:                                              ; preds = %354
  store i64 %358, ptr %19, align 8, !tbaa !29
  br i1 %342, label %.loopexit104, label %361

361:                                              ; preds = %360
  %362 = icmp eq i64 %358, 0
  br i1 %362, label %.loopexit110, label %195, !llvm.loop !41

.loopexit110:                                     ; preds = %361, %18
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %364 = load i32, ptr %363, align 8, !tbaa !18
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %405, label %366

366:                                              ; preds = %.loopexit110
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %368 = load i32, ptr %367, align 8, !tbaa !30
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %6, align 8, !tbaa !25
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %373 = load ptr, ptr %372, align 8, !tbaa !20
  br label %377

374:                                              ; preds = %366
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %376 = load ptr, ptr %375, align 8, !tbaa !20
  store ptr %376, ptr %6, align 8, !tbaa !25
  br label %377

377:                                              ; preds = %374, %370
  %378 = phi ptr [ %373, %370 ], [ %376, %374 ]
  %379 = phi ptr [ %371, %370 ], [ %376, %374 ]
  %380 = zext i32 %368 to i64
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 %380
  %382 = ptrtoint ptr %381 to i64
  %383 = ptrtoint ptr %378 to i64
  %384 = sub i64 %382, %383
  %385 = trunc i64 %384 to i32
  %386 = icmp ugt i32 %364, %385
  %387 = trunc i32 %1 to i8
  br i1 %386, label %388, label %404

388:                                              ; preds = %377
  %389 = and i64 %384, 4294967295
  %390 = getelementptr inbounds nuw i8, ptr %378, i64 %389
  store i8 %387, ptr %390, align 1, !tbaa !45
  %391 = load i32, ptr %367, align 8, !tbaa !30
  %392 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %391, i32 1), !nosanitize !33
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !33
  br i1 %393, label %394, label %395, !prof !34, !nosanitize !33

394:                                              ; preds = %395, %388
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

395:                                              ; preds = %388
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !33
  store i32 %396, ptr %367, align 8, !tbaa !30
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %398 = load i64, ptr %397, align 8, !tbaa !40
  %399 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !33
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !33
  br i1 %400, label %394, label %401, !prof !34, !nosanitize !33

401:                                              ; preds = %395
  %402 = extractvalue { i64, i1 } %399, 0, !nosanitize !33
  store i64 %402, ptr %397, align 8, !tbaa !40
  %403 = and i32 %1, 255
  br label %.loopexit104

404:                                              ; preds = %377
  store i8 %387, ptr %3, align 1, !tbaa !45
  br label %446

405:                                              ; preds = %.loopexit110
  %406 = trunc i32 %1 to i8
  store i8 %406, ptr %3, align 1, !tbaa !45
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %408 = load i32, ptr %407, align 4, !tbaa !19
  %409 = shl i32 %408, 1
  %410 = zext i32 %409 to i64
  %411 = tail call noalias ptr @malloc(i64 noundef %410) #16
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %411, ptr %412, align 8, !tbaa !20
  %413 = icmp eq ptr %411, null
  br i1 %413, label %414, label %415

414:                                              ; preds = %405
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

415:                                              ; preds = %405
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %417 = load i32, ptr %416, align 8, !tbaa !21
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %420, label %419

419:                                              ; preds = %415
  store i32 %408, ptr %363, align 8, !tbaa !18
  br label %446

420:                                              ; preds = %415
  %421 = zext i32 %408 to i64
  %422 = tail call noalias ptr @malloc(i64 noundef %421) #16
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %422, ptr %423, align 8, !tbaa !22
  %424 = icmp eq ptr %422, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %420
  tail call void @free(ptr noundef nonnull %411) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

426:                                              ; preds = %420
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %427, i8 0, i64 24, i1 false)
  %429 = load i32, ptr %428, align 8, !tbaa !23
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %431 = load i32, ptr %430, align 4, !tbaa !24
  %432 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %429, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %431, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %437, label %434

434:                                              ; preds = %426
  %435 = load ptr, ptr %423, align 8, !tbaa !22
  tail call void @free(ptr noundef %435) #15
  %436 = load ptr, ptr %412, align 8, !tbaa !20
  tail call void @free(ptr noundef %436) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

437:                                              ; preds = %426
  store ptr null, ptr %6, align 8, !tbaa !25
  %438 = load i32, ptr %416, align 8, !tbaa !21
  %439 = load i32, ptr %407, align 4, !tbaa !19
  store i32 %439, ptr %363, align 8, !tbaa !18
  %440 = icmp eq i32 %438, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %437
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %439, ptr %442, align 8, !tbaa !26
  %443 = load ptr, ptr %423, align 8, !tbaa !22
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %443, ptr %444, align 8, !tbaa !27
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %443, ptr %445, align 8, !tbaa !28
  br label %446

446:                                              ; preds = %441, %437, %419, %404
  %447 = phi i32 [ %439, %441 ], [ %439, %437 ], [ %408, %419 ], [ %364, %404 ]
  %448 = load i64, ptr %19, align 8, !tbaa !29
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %790, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %452 = load i32, ptr %451, align 8, !tbaa !30
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %.loopexit105, label %454

454:                                              ; preds = %450
  %455 = icmp eq i32 %447, 0
  br i1 %455, label %456, label %496

456:                                              ; preds = %454
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %458 = load i32, ptr %457, align 4, !tbaa !19
  %459 = shl i32 %458, 1
  %460 = zext i32 %459 to i64
  %461 = tail call noalias ptr @malloc(i64 noundef %460) #16
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %461, ptr %462, align 8, !tbaa !20
  %463 = icmp eq ptr %461, null
  br i1 %463, label %464, label %465

464:                                              ; preds = %456
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

465:                                              ; preds = %456
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %467 = load i32, ptr %466, align 8, !tbaa !21
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %465
  store i32 %458, ptr %363, align 8, !tbaa !18
  br label %503

470:                                              ; preds = %465
  %471 = zext i32 %458 to i64
  %472 = tail call noalias ptr @malloc(i64 noundef %471) #16
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %472, ptr %473, align 8, !tbaa !22
  %474 = icmp eq ptr %472, null
  br i1 %474, label %475, label %476

475:                                              ; preds = %470
  tail call void @free(ptr noundef nonnull %461) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

476:                                              ; preds = %470
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %477, i8 0, i64 24, i1 false)
  %479 = load i32, ptr %478, align 8, !tbaa !23
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %481 = load i32, ptr %480, align 4, !tbaa !24
  %482 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %479, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %481, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %476
  %485 = load ptr, ptr %473, align 8, !tbaa !22
  tail call void @free(ptr noundef %485) #15
  %486 = load ptr, ptr %462, align 8, !tbaa !20
  tail call void @free(ptr noundef %486) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

487:                                              ; preds = %476
  store ptr null, ptr %6, align 8, !tbaa !25
  %488 = load i32, ptr %466, align 8, !tbaa !21
  %489 = load i32, ptr %457, align 4, !tbaa !19
  store i32 %489, ptr %363, align 8, !tbaa !18
  %490 = icmp eq i32 %488, 0
  br i1 %490, label %491, label %500

491:                                              ; preds = %487
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %489, ptr %492, align 8, !tbaa !26
  %493 = load ptr, ptr %473, align 8, !tbaa !22
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %493, ptr %494, align 8, !tbaa !27
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %493, ptr %495, align 8, !tbaa !28
  br label %536

496:                                              ; preds = %454
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %498 = load i32, ptr %497, align 8, !tbaa !21
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %536, label %503

500:                                              ; preds = %487
  %501 = load i32, ptr %451, align 8, !tbaa !30
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %.loopexit105, label %503

503:                                              ; preds = %500, %496, %469
  %504 = tail call ptr @__errno_location() #17
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %507 = load ptr, ptr %6, align 8, !tbaa !25
  br label %508

508:                                              ; preds = %530, %503
  %509 = phi ptr [ %507, %503 ], [ %534, %530 ]
  store i32 0, ptr %504, align 4, !tbaa !31
  store i32 0, ptr %505, align 4, !tbaa !17
  %510 = load i32, ptr %451, align 8, !tbaa !30
  %511 = tail call i32 @llvm.umin.i32(i32 %510, i32 1073741824)
  %512 = zext nneg i32 %511 to i64
  %513 = load i32, ptr %506, align 4, !tbaa !32
  %514 = tail call i64 @write(i32 noundef %513, ptr noundef %509, i64 noundef %512) #15
  %515 = trunc i64 %514 to i32
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %525

517:                                              ; preds = %508
  %518 = load i32, ptr %504, align 4, !tbaa !31
  %519 = icmp eq i32 %518, 11
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  store i32 1, ptr %505, align 4, !tbaa !17
  %521 = load i32, ptr %504, align 4, !tbaa !31
  br label %522

522:                                              ; preds = %520, %517
  %523 = phi i32 [ %518, %517 ], [ %521, %520 ]
  %524 = tail call ptr @strerror(i32 noundef %523) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %524) #15
  br label %.loopexit104

525:                                              ; preds = %508
  %526 = load i32, ptr %451, align 8, !tbaa !30
  %527 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %526, i32 %515), !nosanitize !33
  %528 = extractvalue { i32, i1 } %527, 1, !nosanitize !33
  br i1 %528, label %529, label %530, !prof !34, !nosanitize !33

529:                                              ; preds = %525
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

530:                                              ; preds = %525
  %531 = extractvalue { i32, i1 } %527, 0, !nosanitize !33
  store i32 %531, ptr %451, align 8, !tbaa !30
  %532 = load ptr, ptr %6, align 8, !tbaa !25
  %533 = and i64 %514, 2147483647
  %534 = getelementptr inbounds nuw i8, ptr %532, i64 %533
  store ptr %534, ptr %6, align 8, !tbaa !25
  %535 = icmp eq i32 %531, 0
  br i1 %535, label %.loopexit105, label %508, !llvm.loop !35

536:                                              ; preds = %496, %491
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %538 = load i32, ptr %537, align 8, !tbaa !37
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %545, label %540

540:                                              ; preds = %536
  %541 = load i32, ptr %451, align 8, !tbaa !30
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %.loopexit105, label %543

543:                                              ; preds = %540
  %544 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %537, align 8, !tbaa !37
  br label %545

545:                                              ; preds = %543, %536
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %547 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %548 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %551 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %552 = load i32, ptr %546, align 8, !tbaa !26
  br label %553

553:                                              ; preds = %603, %545
  %554 = phi i32 [ %552, %545 ], [ %600, %603 ]
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %594

556:                                              ; preds = %553
  %557 = load ptr, ptr %547, align 8, !tbaa !27
  %558 = load ptr, ptr %548, align 8, !tbaa !28
  %559 = icmp ugt ptr %557, %558
  br i1 %559, label %560, label %591

560:                                              ; preds = %556
  %561 = tail call ptr @__errno_location() #17
  br label %562

562:                                              ; preds = %582, %560
  %563 = phi ptr [ %558, %560 ], [ %585, %582 ]
  %564 = phi ptr [ %557, %560 ], [ %586, %582 ]
  store i32 0, ptr %561, align 4, !tbaa !31
  store i32 0, ptr %549, align 4, !tbaa !17
  %565 = ptrtoint ptr %564 to i64
  %566 = ptrtoint ptr %563 to i64
  %567 = sub i64 %565, %566
  %568 = tail call i64 @llvm.smin.i64(i64 %567, i64 1073741824)
  %569 = and i64 %568, 4294967295
  %570 = load i32, ptr %550, align 4, !tbaa !32
  %571 = tail call i64 @write(i32 noundef %570, ptr noundef %563, i64 noundef %569) #15
  %572 = and i64 %571, 2147483648
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %582, label %574

574:                                              ; preds = %562
  %575 = load i32, ptr %561, align 4, !tbaa !31
  %576 = icmp eq i32 %575, 11
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  store i32 1, ptr %549, align 4, !tbaa !17
  %578 = load i32, ptr %561, align 4, !tbaa !31
  br label %579

579:                                              ; preds = %577, %574
  %580 = phi i32 [ %575, %574 ], [ %578, %577 ]
  %581 = tail call ptr @strerror(i32 noundef %580) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %581) #15
  br label %.loopexit104

582:                                              ; preds = %562
  %583 = load ptr, ptr %548, align 8, !tbaa !28
  %584 = and i64 %571, 2147483647
  %585 = getelementptr inbounds nuw i8, ptr %583, i64 %584
  store ptr %585, ptr %548, align 8, !tbaa !28
  %586 = load ptr, ptr %547, align 8, !tbaa !27
  %587 = icmp ugt ptr %586, %585
  br i1 %587, label %562, label %588, !llvm.loop !38

588:                                              ; preds = %582
  %589 = load i32, ptr %546, align 8, !tbaa !26
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %588, %556
  %592 = load i32, ptr %363, align 8, !tbaa !18
  store i32 %592, ptr %546, align 8, !tbaa !26
  %593 = load ptr, ptr %551, align 8, !tbaa !22
  store ptr %593, ptr %547, align 8, !tbaa !27
  store ptr %593, ptr %548, align 8, !tbaa !28
  br label %594

594:                                              ; preds = %591, %588, %553
  %595 = phi i32 [ %589, %588 ], [ %592, %591 ], [ %554, %553 ]
  %596 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %597 = icmp eq i32 %596, -2
  br i1 %597, label %598, label %599

598:                                              ; preds = %594
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit104

599:                                              ; preds = %594
  %600 = load i32, ptr %546, align 8, !tbaa !26
  %601 = icmp ult i32 %595, %600
  br i1 %601, label %602, label %603, !prof !34, !nosanitize !33

602:                                              ; preds = %599
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

603:                                              ; preds = %599
  %604 = icmp eq i32 %595, %600
  br i1 %604, label %.loopexit105, label %553, !llvm.loop !39

.loopexit105:                                     ; preds = %530, %603, %540, %500, %450
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %606 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %608 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %609 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %613 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %618 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %619 = load i64, ptr %19, align 8, !tbaa !29
  br label %620

620:                                              ; preds = %786, %.loopexit105
  %621 = phi i64 [ %619, %.loopexit105 ], [ %783, %786 ]
  %622 = phi i1 [ false, %.loopexit105 ], [ true, %786 ]
  %623 = load i32, ptr %363, align 8, !tbaa !18
  %624 = zext i32 %623 to i64
  %625 = tail call i64 @llvm.smin.i64(i64 %621, i64 %624)
  %626 = trunc i64 %625 to i32
  %627 = load ptr, ptr %605, align 8, !tbaa !20
  br i1 %622, label %632, label %628

628:                                              ; preds = %620
  %629 = and i64 %625, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %627, i8 0, i64 %629, i1 false)
  %630 = load ptr, ptr %605, align 8, !tbaa !20
  %631 = load i32, ptr %363, align 8, !tbaa !18
  br label %632

632:                                              ; preds = %628, %620
  %633 = phi i32 [ %631, %628 ], [ %623, %620 ]
  %634 = phi ptr [ %630, %628 ], [ %627, %620 ]
  store i32 %626, ptr %451, align 8, !tbaa !30
  store ptr %634, ptr %6, align 8, !tbaa !25
  %635 = icmp eq i32 %633, 0
  br i1 %635, label %636, label %668

636:                                              ; preds = %632
  %637 = load i32, ptr %607, align 4, !tbaa !19
  %638 = shl i32 %637, 1
  %639 = zext i32 %638 to i64
  %640 = tail call noalias ptr @malloc(i64 noundef %639) #16
  store ptr %640, ptr %605, align 8, !tbaa !20
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %636
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

643:                                              ; preds = %636
  %644 = load i32, ptr %606, align 8, !tbaa !21
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %647, label %646

646:                                              ; preds = %643
  store i32 %637, ptr %363, align 8, !tbaa !18
  br label %671

647:                                              ; preds = %643
  %648 = zext i32 %637 to i64
  %649 = tail call noalias ptr @malloc(i64 noundef %648) #16
  store ptr %649, ptr %608, align 8, !tbaa !22
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %647
  tail call void @free(ptr noundef nonnull %640) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

652:                                              ; preds = %647
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %609, i8 0, i64 24, i1 false)
  %653 = load i32, ptr %610, align 8, !tbaa !23
  %654 = load i32, ptr %611, align 4, !tbaa !24
  %655 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %653, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %654, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %660, label %657

657:                                              ; preds = %652
  %658 = load ptr, ptr %608, align 8, !tbaa !22
  tail call void @free(ptr noundef %658) #15
  %659 = load ptr, ptr %605, align 8, !tbaa !20
  tail call void @free(ptr noundef %659) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

660:                                              ; preds = %652
  store ptr null, ptr %6, align 8, !tbaa !25
  %661 = load i32, ptr %606, align 8, !tbaa !21
  %662 = load i32, ptr %607, align 4, !tbaa !19
  store i32 %662, ptr %363, align 8, !tbaa !18
  %663 = icmp eq i32 %661, 0
  br i1 %663, label %666, label %664

664:                                              ; preds = %660
  %665 = load i32, ptr %451, align 8, !tbaa !30
  br label %671

666:                                              ; preds = %660
  store i32 %662, ptr %614, align 8, !tbaa !26
  %667 = load ptr, ptr %608, align 8, !tbaa !22
  store ptr %667, ptr %615, align 8, !tbaa !27
  store ptr %667, ptr %616, align 8, !tbaa !28
  br label %705

668:                                              ; preds = %632
  %669 = load i32, ptr %606, align 8, !tbaa !21
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %705, label %671

671:                                              ; preds = %668, %664, %646
  %672 = phi ptr [ null, %664 ], [ %634, %668 ], [ %634, %646 ]
  %673 = phi i32 [ %665, %664 ], [ %626, %668 ], [ %626, %646 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %.loopexit102, label %675

675:                                              ; preds = %671
  %676 = tail call ptr @__errno_location() #17
  br label %677

677:                                              ; preds = %699, %675
  %678 = phi ptr [ %672, %675 ], [ %703, %699 ]
  store i32 0, ptr %676, align 4, !tbaa !31
  store i32 0, ptr %612, align 4, !tbaa !17
  %679 = load i32, ptr %451, align 8, !tbaa !30
  %680 = tail call i32 @llvm.umin.i32(i32 %679, i32 1073741824)
  %681 = zext nneg i32 %680 to i64
  %682 = load i32, ptr %613, align 4, !tbaa !32
  %683 = tail call i64 @write(i32 noundef %682, ptr noundef %678, i64 noundef %681) #15
  %684 = trunc i64 %683 to i32
  %685 = icmp slt i32 %684, 0
  br i1 %685, label %686, label %694

686:                                              ; preds = %677
  %687 = load i32, ptr %676, align 4, !tbaa !31
  %688 = icmp eq i32 %687, 11
  br i1 %688, label %689, label %691

689:                                              ; preds = %686
  store i32 1, ptr %612, align 4, !tbaa !17
  %690 = load i32, ptr %676, align 4, !tbaa !31
  br label %691

691:                                              ; preds = %689, %686
  %692 = phi i32 [ %687, %686 ], [ %690, %689 ]
  %693 = tail call ptr @strerror(i32 noundef %692) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %693) #15
  br label %.loopexit102

694:                                              ; preds = %677
  %695 = load i32, ptr %451, align 8, !tbaa !30
  %696 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 %684), !nosanitize !33
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !33
  br i1 %697, label %698, label %699, !prof !34, !nosanitize !33

698:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

699:                                              ; preds = %694
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !33
  store i32 %700, ptr %451, align 8, !tbaa !30
  %701 = load ptr, ptr %6, align 8, !tbaa !25
  %702 = and i64 %683, 2147483647
  %703 = getelementptr inbounds nuw i8, ptr %701, i64 %702
  store ptr %703, ptr %6, align 8, !tbaa !25
  %704 = icmp eq i32 %700, 0
  br i1 %704, label %.loopexit102, label %677, !llvm.loop !35

705:                                              ; preds = %668, %666
  %706 = load i32, ptr %617, align 8, !tbaa !37
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %713, label %708

708:                                              ; preds = %705
  %709 = load i32, ptr %451, align 8, !tbaa !30
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %.loopexit102, label %711

711:                                              ; preds = %708
  %712 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %617, align 8, !tbaa !37
  br label %713

713:                                              ; preds = %711, %705
  %714 = load i32, ptr %614, align 8, !tbaa !26
  br label %715

715:                                              ; preds = %765, %713
  %716 = phi i32 [ %714, %713 ], [ %762, %765 ]
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %756

718:                                              ; preds = %715
  %719 = load ptr, ptr %615, align 8, !tbaa !27
  %720 = load ptr, ptr %616, align 8, !tbaa !28
  %721 = icmp ugt ptr %719, %720
  br i1 %721, label %722, label %753

722:                                              ; preds = %718
  %723 = tail call ptr @__errno_location() #17
  br label %724

724:                                              ; preds = %744, %722
  %725 = phi ptr [ %720, %722 ], [ %747, %744 ]
  %726 = phi ptr [ %719, %722 ], [ %748, %744 ]
  store i32 0, ptr %723, align 4, !tbaa !31
  store i32 0, ptr %612, align 4, !tbaa !17
  %727 = ptrtoint ptr %726 to i64
  %728 = ptrtoint ptr %725 to i64
  %729 = sub i64 %727, %728
  %730 = tail call i64 @llvm.smin.i64(i64 %729, i64 1073741824)
  %731 = and i64 %730, 4294967295
  %732 = load i32, ptr %613, align 4, !tbaa !32
  %733 = tail call i64 @write(i32 noundef %732, ptr noundef %725, i64 noundef %731) #15
  %734 = and i64 %733, 2147483648
  %735 = icmp eq i64 %734, 0
  br i1 %735, label %744, label %736

736:                                              ; preds = %724
  %737 = load i32, ptr %723, align 4, !tbaa !31
  %738 = icmp eq i32 %737, 11
  br i1 %738, label %739, label %741

739:                                              ; preds = %736
  store i32 1, ptr %612, align 4, !tbaa !17
  %740 = load i32, ptr %723, align 4, !tbaa !31
  br label %741

741:                                              ; preds = %739, %736
  %742 = phi i32 [ %737, %736 ], [ %740, %739 ]
  %743 = tail call ptr @strerror(i32 noundef %742) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %743) #15
  br label %.loopexit102

744:                                              ; preds = %724
  %745 = load ptr, ptr %616, align 8, !tbaa !28
  %746 = and i64 %733, 2147483647
  %747 = getelementptr inbounds nuw i8, ptr %745, i64 %746
  store ptr %747, ptr %616, align 8, !tbaa !28
  %748 = load ptr, ptr %615, align 8, !tbaa !27
  %749 = icmp ugt ptr %748, %747
  br i1 %749, label %724, label %750, !llvm.loop !38

750:                                              ; preds = %744
  %751 = load i32, ptr %614, align 8, !tbaa !26
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %756

753:                                              ; preds = %750, %718
  %754 = load i32, ptr %363, align 8, !tbaa !18
  store i32 %754, ptr %614, align 8, !tbaa !26
  %755 = load ptr, ptr %608, align 8, !tbaa !22
  store ptr %755, ptr %615, align 8, !tbaa !27
  store ptr %755, ptr %616, align 8, !tbaa !28
  br label %756

756:                                              ; preds = %753, %750, %715
  %757 = phi i32 [ %751, %750 ], [ %754, %753 ], [ %716, %715 ]
  %758 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %759 = icmp eq i32 %758, -2
  br i1 %759, label %760, label %761

760:                                              ; preds = %756
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit102

761:                                              ; preds = %756
  %762 = load i32, ptr %614, align 8, !tbaa !26
  %763 = icmp ult i32 %757, %762
  br i1 %763, label %764, label %765, !prof !34, !nosanitize !33

764:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

765:                                              ; preds = %761
  %766 = icmp eq i32 %757, %762
  br i1 %766, label %.loopexit102, label %715, !llvm.loop !39

.loopexit102:                                     ; preds = %699, %765, %760, %741, %708, %691, %671, %657, %651, %642
  %767 = phi i1 [ true, %691 ], [ true, %741 ], [ true, %760 ], [ false, %708 ], [ true, %642 ], [ true, %651 ], [ true, %657 ], [ false, %671 ], [ false, %765 ], [ false, %699 ]
  %768 = load i32, ptr %451, align 8, !tbaa !30
  %769 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %626, i32 %768), !nosanitize !33
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !33
  br i1 %770, label %771, label %772, !prof !34, !nosanitize !33

771:                                              ; preds = %779, %.loopexit102
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

772:                                              ; preds = %.loopexit102
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !33
  %774 = zext i32 %773 to i64
  %775 = load i64, ptr %618, align 8, !tbaa !40
  %776 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %775, i64 %774), !nosanitize !33
  %777 = extractvalue { i64, i1 } %776, 1, !nosanitize !33
  br i1 %777, label %778, label %779, !prof !34, !nosanitize !33

778:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

779:                                              ; preds = %772
  %780 = extractvalue { i64, i1 } %776, 0, !nosanitize !33
  store i64 %780, ptr %618, align 8, !tbaa !40
  %781 = load i64, ptr %19, align 8, !tbaa !29
  %782 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %781, i64 %774), !nosanitize !33
  %783 = extractvalue { i64, i1 } %782, 0, !nosanitize !33
  %784 = extractvalue { i64, i1 } %782, 1, !nosanitize !33
  br i1 %784, label %771, label %785, !prof !34, !nosanitize !33

785:                                              ; preds = %779
  store i64 %783, ptr %19, align 8, !tbaa !29
  br i1 %767, label %.loopexit104, label %786

786:                                              ; preds = %785
  %787 = icmp eq i64 %783, 0
  br i1 %787, label %788, label %620, !llvm.loop !41

788:                                              ; preds = %786
  %789 = load i32, ptr %363, align 8, !tbaa !18
  br label %790

790:                                              ; preds = %788, %446
  %791 = phi i32 [ %789, %788 ], [ %447, %446 ]
  %792 = icmp ugt i32 %791, 1
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %792, label %794, label %982

794:                                              ; preds = %790
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %797 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %798 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %799 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %800 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %802 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %803 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %804 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %805 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %806 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %807 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %808 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %794
  %809 = phi ptr [ %3, %794 ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.loopexit.backedge ]
  %810 = load i32, ptr %793, align 8, !tbaa !42
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %815, label %812

812:                                              ; preds = %.loopexit
  %813 = load ptr, ptr %6, align 8, !tbaa !43
  %814 = load ptr, ptr %795, align 8, !tbaa !20
  br label %817

815:                                              ; preds = %.loopexit
  %816 = load ptr, ptr %795, align 8, !tbaa !20
  store ptr %816, ptr %6, align 8, !tbaa !43
  br label %817

817:                                              ; preds = %815, %812
  %818 = phi ptr [ %814, %812 ], [ %816, %815 ]
  %819 = phi ptr [ %813, %812 ], [ %816, %815 ]
  %820 = zext i32 %810 to i64
  %821 = getelementptr inbounds nuw i8, ptr %819, i64 %820
  %822 = ptrtoint ptr %821 to i64
  %823 = ptrtoint ptr %818 to i64
  %824 = sub i64 %822, %823
  %825 = trunc i64 %824 to i32
  %826 = load i32, ptr %363, align 8, !tbaa !18
  %827 = icmp ult i32 %826, %825
  br i1 %827, label %828, label %829, !prof !34, !nosanitize !33

828:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

829:                                              ; preds = %817
  %830 = icmp ne i32 %826, %825
  %831 = zext i1 %830 to i64
  %832 = zext i1 %830 to i32
  %833 = and i64 %824, 4294967295
  %834 = getelementptr inbounds nuw i8, ptr %818, i64 %833
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %834, ptr align 1 %809, i64 %831, i1 false)
  %835 = load i32, ptr %793, align 8, !tbaa !42
  %836 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %835, i32 %832), !nosanitize !33
  %837 = extractvalue { i32, i1 } %836, 1, !nosanitize !33
  br i1 %837, label %.loopexit94, label %838, !prof !34, !nosanitize !33

.loopexit94:                                      ; preds = %1290, %838, %829
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

838:                                              ; preds = %829
  %839 = extractvalue { i32, i1 } %836, 0, !nosanitize !33
  store i32 %839, ptr %793, align 8, !tbaa !42
  %840 = load i64, ptr %796, align 8, !tbaa !40
  %841 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %840, i64 %831), !nosanitize !33
  %842 = extractvalue { i64, i1 } %841, 1, !nosanitize !33
  br i1 %842, label %.loopexit94, label %843, !prof !34, !nosanitize !33

843:                                              ; preds = %838
  %844 = extractvalue { i64, i1 } %841, 0, !nosanitize !33
  store i64 %844, ptr %796, align 8, !tbaa !40
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %830 to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %809, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br i1 %830, label %.loopexit95, label %845

845:                                              ; preds = %843
  %846 = load i32, ptr %363, align 8, !tbaa !18
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %880

848:                                              ; preds = %845
  %849 = load i32, ptr %798, align 4, !tbaa !19
  %850 = shl i32 %849, 1
  %851 = zext i32 %850 to i64
  %852 = tail call noalias ptr @malloc(i64 noundef %851) #16
  store ptr %852, ptr %795, align 8, !tbaa !20
  %853 = icmp eq ptr %852, null
  br i1 %853, label %854, label %855

854:                                              ; preds = %848
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %979

855:                                              ; preds = %848
  %856 = load i32, ptr %797, align 8, !tbaa !21
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %859, label %858

858:                                              ; preds = %855
  store i32 %849, ptr %363, align 8, !tbaa !18
  br label %883

859:                                              ; preds = %855
  %860 = zext i32 %849 to i64
  %861 = tail call noalias ptr @malloc(i64 noundef %860) #16
  store ptr %861, ptr %799, align 8, !tbaa !22
  %862 = icmp eq ptr %861, null
  br i1 %862, label %863, label %864

863:                                              ; preds = %859
  tail call void @free(ptr noundef nonnull %852) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %979

864:                                              ; preds = %859
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %800, i8 0, i64 24, i1 false)
  %865 = load i32, ptr %801, align 8, !tbaa !23
  %866 = load i32, ptr %802, align 4, !tbaa !24
  %867 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %865, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %866, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %872, label %869

869:                                              ; preds = %864
  %870 = load ptr, ptr %799, align 8, !tbaa !22
  tail call void @free(ptr noundef %870) #15
  %871 = load ptr, ptr %795, align 8, !tbaa !20
  tail call void @free(ptr noundef %871) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %979

872:                                              ; preds = %864
  store ptr null, ptr %6, align 8, !tbaa !25
  %873 = load i32, ptr %797, align 8, !tbaa !21
  %874 = load i32, ptr %798, align 4, !tbaa !19
  store i32 %874, ptr %363, align 8, !tbaa !18
  %875 = icmp eq i32 %873, 0
  br i1 %875, label %878, label %876

876:                                              ; preds = %872
  %877 = load i32, ptr %793, align 8, !tbaa !30
  br label %883

878:                                              ; preds = %872
  store i32 %874, ptr %805, align 8, !tbaa !26
  %879 = load ptr, ptr %799, align 8, !tbaa !22
  store ptr %879, ptr %806, align 8, !tbaa !27
  store ptr %879, ptr %807, align 8, !tbaa !28
  br label %917

880:                                              ; preds = %845
  %881 = load i32, ptr %797, align 8, !tbaa !21
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %917, label %883

883:                                              ; preds = %880, %876, %858
  %884 = phi i32 [ %877, %876 ], [ %839, %880 ], [ %839, %858 ]
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %.loopexit.backedge, label %886

886:                                              ; preds = %883
  %887 = tail call ptr @__errno_location() #17
  %888 = load ptr, ptr %6, align 8, !tbaa !25
  br label %889

889:                                              ; preds = %911, %886
  %890 = phi ptr [ %888, %886 ], [ %915, %911 ]
  store i32 0, ptr %887, align 4, !tbaa !31
  store i32 0, ptr %803, align 4, !tbaa !17
  %891 = load i32, ptr %793, align 8, !tbaa !30
  %892 = tail call i32 @llvm.umin.i32(i32 %891, i32 1073741824)
  %893 = zext nneg i32 %892 to i64
  %894 = load i32, ptr %804, align 4, !tbaa !32
  %895 = tail call i64 @write(i32 noundef %894, ptr noundef %890, i64 noundef %893) #15
  %896 = trunc i64 %895 to i32
  %897 = icmp slt i32 %896, 0
  br i1 %897, label %898, label %906

898:                                              ; preds = %889
  %899 = load i32, ptr %887, align 4, !tbaa !31
  %900 = icmp eq i32 %899, 11
  br i1 %900, label %901, label %903

901:                                              ; preds = %898
  store i32 1, ptr %803, align 4, !tbaa !17
  %902 = load i32, ptr %887, align 4, !tbaa !31
  br label %903

903:                                              ; preds = %901, %898
  %904 = phi i32 [ %899, %898 ], [ %902, %901 ]
  %905 = tail call ptr @strerror(i32 noundef %904) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %905) #15
  br label %979

906:                                              ; preds = %889
  %907 = load i32, ptr %793, align 8, !tbaa !30
  %908 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %907, i32 %896), !nosanitize !33
  %909 = extractvalue { i32, i1 } %908, 1, !nosanitize !33
  br i1 %909, label %910, label %911, !prof !34, !nosanitize !33

910:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

911:                                              ; preds = %906
  %912 = extractvalue { i32, i1 } %908, 0, !nosanitize !33
  store i32 %912, ptr %793, align 8, !tbaa !30
  %913 = load ptr, ptr %6, align 8, !tbaa !25
  %914 = and i64 %895, 2147483647
  %915 = getelementptr inbounds nuw i8, ptr %913, i64 %914
  store ptr %915, ptr %6, align 8, !tbaa !25
  %916 = icmp eq i32 %912, 0
  br i1 %916, label %.loopexit.backedge, label %889, !llvm.loop !35

917:                                              ; preds = %880, %878
  %918 = load i32, ptr %808, align 8, !tbaa !37
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %925, label %920

920:                                              ; preds = %917
  %921 = load i32, ptr %793, align 8, !tbaa !30
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %.loopexit.backedge, label %923

.loopexit.backedge:                               ; preds = %911, %977, %920, %883
  br label %.loopexit

923:                                              ; preds = %920
  %924 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %808, align 8, !tbaa !37
  br label %925

925:                                              ; preds = %923, %917
  %926 = load i32, ptr %805, align 8, !tbaa !26
  br label %927

927:                                              ; preds = %977, %925
  %928 = phi i32 [ %926, %925 ], [ %974, %977 ]
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %968

930:                                              ; preds = %927
  %931 = load ptr, ptr %806, align 8, !tbaa !27
  %932 = load ptr, ptr %807, align 8, !tbaa !28
  %933 = icmp ugt ptr %931, %932
  br i1 %933, label %934, label %965

934:                                              ; preds = %930
  %935 = tail call ptr @__errno_location() #17
  br label %936

936:                                              ; preds = %956, %934
  %937 = phi ptr [ %932, %934 ], [ %959, %956 ]
  %938 = phi ptr [ %931, %934 ], [ %960, %956 ]
  store i32 0, ptr %935, align 4, !tbaa !31
  store i32 0, ptr %803, align 4, !tbaa !17
  %939 = ptrtoint ptr %938 to i64
  %940 = ptrtoint ptr %937 to i64
  %941 = sub i64 %939, %940
  %942 = tail call i64 @llvm.smin.i64(i64 %941, i64 1073741824)
  %943 = and i64 %942, 4294967295
  %944 = load i32, ptr %804, align 4, !tbaa !32
  %945 = tail call i64 @write(i32 noundef %944, ptr noundef %937, i64 noundef %943) #15
  %946 = and i64 %945, 2147483648
  %947 = icmp eq i64 %946, 0
  br i1 %947, label %956, label %948

948:                                              ; preds = %936
  %949 = load i32, ptr %935, align 4, !tbaa !31
  %950 = icmp eq i32 %949, 11
  br i1 %950, label %951, label %953

951:                                              ; preds = %948
  store i32 1, ptr %803, align 4, !tbaa !17
  %952 = load i32, ptr %935, align 4, !tbaa !31
  br label %953

953:                                              ; preds = %951, %948
  %954 = phi i32 [ %949, %948 ], [ %952, %951 ]
  %955 = tail call ptr @strerror(i32 noundef %954) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %955) #15
  br label %979

956:                                              ; preds = %936
  %957 = load ptr, ptr %807, align 8, !tbaa !28
  %958 = and i64 %945, 2147483647
  %959 = getelementptr inbounds nuw i8, ptr %957, i64 %958
  store ptr %959, ptr %807, align 8, !tbaa !28
  %960 = load ptr, ptr %806, align 8, !tbaa !27
  %961 = icmp ugt ptr %960, %959
  br i1 %961, label %936, label %962, !llvm.loop !38

962:                                              ; preds = %956
  %963 = load i32, ptr %805, align 8, !tbaa !26
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %968

965:                                              ; preds = %962, %930
  %966 = load i32, ptr %363, align 8, !tbaa !18
  store i32 %966, ptr %805, align 8, !tbaa !26
  %967 = load ptr, ptr %799, align 8, !tbaa !22
  store ptr %967, ptr %806, align 8, !tbaa !27
  store ptr %967, ptr %807, align 8, !tbaa !28
  br label %968

968:                                              ; preds = %965, %962, %927
  %969 = phi i32 [ %963, %962 ], [ %966, %965 ], [ %928, %927 ]
  %970 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %971 = icmp eq i32 %970, -2
  br i1 %971, label %972, label %973

972:                                              ; preds = %968
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %979

973:                                              ; preds = %968
  %974 = load i32, ptr %805, align 8, !tbaa !26
  %975 = icmp ult i32 %969, %974
  br i1 %975, label %976, label %977, !prof !34, !nosanitize !33

976:                                              ; preds = %973
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

977:                                              ; preds = %973
  %978 = icmp eq i32 %969, %974
  br i1 %978, label %.loopexit.backedge, label %927, !llvm.loop !39

979:                                              ; preds = %972, %953, %903, %869, %863, %854
  %980 = load i32, ptr %803, align 4, !tbaa !17
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %.loopexit104, label %1309

982:                                              ; preds = %790
  %983 = load i32, ptr %793, align 8, !tbaa !42
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %.loopexit100, label %985

985:                                              ; preds = %982
  %986 = icmp eq i32 %791, 0
  br i1 %986, label %987, label %1027

987:                                              ; preds = %985
  %988 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %989 = load i32, ptr %988, align 4, !tbaa !19
  %990 = shl i32 %989, 1
  %991 = zext i32 %990 to i64
  %992 = tail call noalias ptr @malloc(i64 noundef %991) #16
  %993 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %992, ptr %993, align 8, !tbaa !20
  %994 = icmp eq ptr %992, null
  br i1 %994, label %995, label %996

995:                                              ; preds = %987
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

996:                                              ; preds = %987
  %997 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %998 = load i32, ptr %997, align 8, !tbaa !21
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1001, label %1000

1000:                                             ; preds = %996
  store i32 %989, ptr %363, align 8, !tbaa !18
  br label %1034

1001:                                             ; preds = %996
  %1002 = zext i32 %989 to i64
  %1003 = tail call noalias ptr @malloc(i64 noundef %1002) #16
  %1004 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1003, ptr %1004, align 8, !tbaa !22
  %1005 = icmp eq ptr %1003, null
  br i1 %1005, label %1006, label %1007

1006:                                             ; preds = %1001
  tail call void @free(ptr noundef nonnull %992) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

1007:                                             ; preds = %1001
  %1008 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1009 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1008, i8 0, i64 24, i1 false)
  %1010 = load i32, ptr %1009, align 8, !tbaa !23
  %1011 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1012 = load i32, ptr %1011, align 4, !tbaa !24
  %1013 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1010, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1012, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1018, label %1015

1015:                                             ; preds = %1007
  %1016 = load ptr, ptr %1004, align 8, !tbaa !22
  tail call void @free(ptr noundef %1016) #15
  %1017 = load ptr, ptr %993, align 8, !tbaa !20
  tail call void @free(ptr noundef %1017) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit104

1018:                                             ; preds = %1007
  store ptr null, ptr %6, align 8, !tbaa !25
  %1019 = load i32, ptr %997, align 8, !tbaa !21
  %1020 = load i32, ptr %988, align 4, !tbaa !19
  store i32 %1020, ptr %363, align 8, !tbaa !18
  %1021 = icmp eq i32 %1019, 0
  br i1 %1021, label %1022, label %1031

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1020, ptr %1023, align 8, !tbaa !26
  %1024 = load ptr, ptr %1004, align 8, !tbaa !22
  %1025 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1024, ptr %1025, align 8, !tbaa !27
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1024, ptr %1026, align 8, !tbaa !28
  br label %1067

1027:                                             ; preds = %985
  %1028 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1029 = load i32, ptr %1028, align 8, !tbaa !21
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1067, label %1034

1031:                                             ; preds = %1018
  %1032 = load i32, ptr %793, align 8, !tbaa !30
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %.loopexit100, label %1034

1034:                                             ; preds = %1031, %1027, %1000
  %1035 = tail call ptr @__errno_location() #17
  %1036 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1037 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1038 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1039

1039:                                             ; preds = %1061, %1034
  %1040 = phi ptr [ %1038, %1034 ], [ %1065, %1061 ]
  store i32 0, ptr %1035, align 4, !tbaa !31
  store i32 0, ptr %1036, align 4, !tbaa !17
  %1041 = load i32, ptr %793, align 8, !tbaa !30
  %1042 = tail call i32 @llvm.umin.i32(i32 %1041, i32 1073741824)
  %1043 = zext nneg i32 %1042 to i64
  %1044 = load i32, ptr %1037, align 4, !tbaa !32
  %1045 = tail call i64 @write(i32 noundef %1044, ptr noundef %1040, i64 noundef %1043) #15
  %1046 = trunc i64 %1045 to i32
  %1047 = icmp slt i32 %1046, 0
  br i1 %1047, label %1048, label %1056

1048:                                             ; preds = %1039
  %1049 = load i32, ptr %1035, align 4, !tbaa !31
  %1050 = icmp eq i32 %1049, 11
  br i1 %1050, label %1051, label %1053

1051:                                             ; preds = %1048
  store i32 1, ptr %1036, align 4, !tbaa !17
  %1052 = load i32, ptr %1035, align 4, !tbaa !31
  br label %1053

1053:                                             ; preds = %1051, %1048
  %1054 = phi i32 [ %1049, %1048 ], [ %1052, %1051 ]
  %1055 = tail call ptr @strerror(i32 noundef %1054) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1055) #15
  br label %.loopexit104

1056:                                             ; preds = %1039
  %1057 = load i32, ptr %793, align 8, !tbaa !30
  %1058 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1057, i32 %1046), !nosanitize !33
  %1059 = extractvalue { i32, i1 } %1058, 1, !nosanitize !33
  br i1 %1059, label %1060, label %1061, !prof !34, !nosanitize !33

1060:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1061:                                             ; preds = %1056
  %1062 = extractvalue { i32, i1 } %1058, 0, !nosanitize !33
  store i32 %1062, ptr %793, align 8, !tbaa !30
  %1063 = load ptr, ptr %6, align 8, !tbaa !25
  %1064 = and i64 %1045, 2147483647
  %1065 = getelementptr inbounds nuw i8, ptr %1063, i64 %1064
  store ptr %1065, ptr %6, align 8, !tbaa !25
  %1066 = icmp eq i32 %1062, 0
  br i1 %1066, label %.loopexit100, label %1039, !llvm.loop !35

1067:                                             ; preds = %1027, %1022
  %1068 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1069 = load i32, ptr %1068, align 8, !tbaa !37
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1076, label %1071

1071:                                             ; preds = %1067
  %1072 = load i32, ptr %793, align 8, !tbaa !30
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %.loopexit100, label %1074

1074:                                             ; preds = %1071
  %1075 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1068, align 8, !tbaa !37
  br label %1076

1076:                                             ; preds = %1074, %1067
  %1077 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1078 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1079 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1080 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1081 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1082 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1083 = load i32, ptr %1077, align 8, !tbaa !26
  br label %1084

1084:                                             ; preds = %1134, %1076
  %1085 = phi i32 [ %1083, %1076 ], [ %1131, %1134 ]
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1125

1087:                                             ; preds = %1084
  %1088 = load ptr, ptr %1078, align 8, !tbaa !27
  %1089 = load ptr, ptr %1079, align 8, !tbaa !28
  %1090 = icmp ugt ptr %1088, %1089
  br i1 %1090, label %1091, label %1122

1091:                                             ; preds = %1087
  %1092 = tail call ptr @__errno_location() #17
  br label %1093

1093:                                             ; preds = %1113, %1091
  %1094 = phi ptr [ %1089, %1091 ], [ %1116, %1113 ]
  %1095 = phi ptr [ %1088, %1091 ], [ %1117, %1113 ]
  store i32 0, ptr %1092, align 4, !tbaa !31
  store i32 0, ptr %1080, align 4, !tbaa !17
  %1096 = ptrtoint ptr %1095 to i64
  %1097 = ptrtoint ptr %1094 to i64
  %1098 = sub i64 %1096, %1097
  %1099 = tail call i64 @llvm.smin.i64(i64 %1098, i64 1073741824)
  %1100 = and i64 %1099, 4294967295
  %1101 = load i32, ptr %1081, align 4, !tbaa !32
  %1102 = tail call i64 @write(i32 noundef %1101, ptr noundef %1094, i64 noundef %1100) #15
  %1103 = and i64 %1102, 2147483648
  %1104 = icmp eq i64 %1103, 0
  br i1 %1104, label %1113, label %1105

1105:                                             ; preds = %1093
  %1106 = load i32, ptr %1092, align 4, !tbaa !31
  %1107 = icmp eq i32 %1106, 11
  br i1 %1107, label %1108, label %1110

1108:                                             ; preds = %1105
  store i32 1, ptr %1080, align 4, !tbaa !17
  %1109 = load i32, ptr %1092, align 4, !tbaa !31
  br label %1110

1110:                                             ; preds = %1108, %1105
  %1111 = phi i32 [ %1106, %1105 ], [ %1109, %1108 ]
  %1112 = tail call ptr @strerror(i32 noundef %1111) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1112) #15
  br label %.loopexit104

1113:                                             ; preds = %1093
  %1114 = load ptr, ptr %1079, align 8, !tbaa !28
  %1115 = and i64 %1102, 2147483647
  %1116 = getelementptr inbounds nuw i8, ptr %1114, i64 %1115
  store ptr %1116, ptr %1079, align 8, !tbaa !28
  %1117 = load ptr, ptr %1078, align 8, !tbaa !27
  %1118 = icmp ugt ptr %1117, %1116
  br i1 %1118, label %1093, label %1119, !llvm.loop !38

1119:                                             ; preds = %1113
  %1120 = load i32, ptr %1077, align 8, !tbaa !26
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1119, %1087
  %1123 = load i32, ptr %363, align 8, !tbaa !18
  store i32 %1123, ptr %1077, align 8, !tbaa !26
  %1124 = load ptr, ptr %1082, align 8, !tbaa !22
  store ptr %1124, ptr %1078, align 8, !tbaa !27
  store ptr %1124, ptr %1079, align 8, !tbaa !28
  br label %1125

1125:                                             ; preds = %1122, %1119, %1084
  %1126 = phi i32 [ %1120, %1119 ], [ %1123, %1122 ], [ %1085, %1084 ]
  %1127 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1128 = icmp eq i32 %1127, -2
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1125
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit104

1130:                                             ; preds = %1125
  %1131 = load i32, ptr %1077, align 8, !tbaa !26
  %1132 = icmp ult i32 %1126, %1131
  br i1 %1132, label %1133, label %1134, !prof !34, !nosanitize !33

1133:                                             ; preds = %1130
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1134:                                             ; preds = %1130
  %1135 = icmp eq i32 %1126, %1131
  br i1 %1135, label %.loopexit100, label %1084, !llvm.loop !39

.loopexit100:                                     ; preds = %1061, %1134, %1071, %1031, %982
  store ptr %3, ptr %6, align 8, !tbaa !43
  %1136 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1137 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1138 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1139 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1140 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1141 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1142 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1143 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1144 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1145 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1146 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1147 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1148 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1149 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1150

1150:                                             ; preds = %1306, %.loopexit100
  %1151 = phi i64 [ 1, %.loopexit100 ], [ %1298, %1306 ]
  %1152 = call i64 @llvm.umin.i64(i64 %1151, i64 4294967295)
  %1153 = trunc nuw i64 %1152 to i32
  store i32 %1153, ptr %793, align 8, !tbaa !42
  %1154 = load i32, ptr %363, align 8, !tbaa !18
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1156, label %1186

1156:                                             ; preds = %1150
  %1157 = load i32, ptr %1137, align 4, !tbaa !19
  %1158 = shl i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  %1160 = call noalias ptr @malloc(i64 noundef %1159) #16
  store ptr %1160, ptr %1138, align 8, !tbaa !20
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1156
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit96

1163:                                             ; preds = %1156
  %1164 = load i32, ptr %1136, align 8, !tbaa !21
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1167, label %1166

1166:                                             ; preds = %1163
  store i32 %1157, ptr %363, align 8, !tbaa !18
  br label %1192

1167:                                             ; preds = %1163
  %1168 = zext i32 %1157 to i64
  %1169 = call noalias ptr @malloc(i64 noundef %1168) #16
  store ptr %1169, ptr %1139, align 8, !tbaa !22
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1171, label %1172

1171:                                             ; preds = %1167
  call void @free(ptr noundef nonnull %1160) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit96

1172:                                             ; preds = %1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1140, i8 0, i64 24, i1 false)
  %1173 = load i32, ptr %1141, align 8, !tbaa !23
  %1174 = load i32, ptr %1142, align 4, !tbaa !24
  %1175 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1173, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1174, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1180, label %1177

1177:                                             ; preds = %1172
  %1178 = load ptr, ptr %1139, align 8, !tbaa !22
  call void @free(ptr noundef %1178) #15
  %1179 = load ptr, ptr %1138, align 8, !tbaa !20
  call void @free(ptr noundef %1179) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit96

1180:                                             ; preds = %1172
  store ptr null, ptr %6, align 8, !tbaa !25
  %1181 = load i32, ptr %1136, align 8, !tbaa !21
  %1182 = load i32, ptr %1137, align 4, !tbaa !19
  store i32 %1182, ptr %363, align 8, !tbaa !18
  %1183 = icmp eq i32 %1181, 0
  br i1 %1183, label %1184, label %1189

1184:                                             ; preds = %1180
  store i32 %1182, ptr %1145, align 8, !tbaa !26
  %1185 = load ptr, ptr %1139, align 8, !tbaa !22
  store ptr %1185, ptr %1146, align 8, !tbaa !27
  store ptr %1185, ptr %1147, align 8, !tbaa !28
  br label %1223

1186:                                             ; preds = %1150
  %1187 = load i32, ptr %1136, align 8, !tbaa !21
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1223, label %1192

1189:                                             ; preds = %1180
  %1190 = load i32, ptr %793, align 8, !tbaa !30
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %.loopexit96, label %1192

1192:                                             ; preds = %1189, %1186, %1166
  %1193 = tail call ptr @__errno_location() #17
  %1194 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1195

1195:                                             ; preds = %1217, %1192
  %1196 = phi ptr [ %1194, %1192 ], [ %1221, %1217 ]
  store i32 0, ptr %1193, align 4, !tbaa !31
  store i32 0, ptr %1143, align 4, !tbaa !17
  %1197 = load i32, ptr %793, align 8, !tbaa !30
  %1198 = call i32 @llvm.umin.i32(i32 %1197, i32 1073741824)
  %1199 = zext nneg i32 %1198 to i64
  %1200 = load i32, ptr %1144, align 4, !tbaa !32
  %1201 = call i64 @write(i32 noundef %1200, ptr noundef %1196, i64 noundef %1199) #15
  %1202 = trunc i64 %1201 to i32
  %1203 = icmp slt i32 %1202, 0
  br i1 %1203, label %1204, label %1212

1204:                                             ; preds = %1195
  %1205 = load i32, ptr %1193, align 4, !tbaa !31
  %1206 = icmp eq i32 %1205, 11
  br i1 %1206, label %1207, label %1209

1207:                                             ; preds = %1204
  store i32 1, ptr %1143, align 4, !tbaa !17
  %1208 = load i32, ptr %1193, align 4, !tbaa !31
  br label %1209

1209:                                             ; preds = %1207, %1204
  %1210 = phi i32 [ %1205, %1204 ], [ %1208, %1207 ]
  %1211 = call ptr @strerror(i32 noundef %1210) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1211) #15
  br label %.loopexit96

1212:                                             ; preds = %1195
  %1213 = load i32, ptr %793, align 8, !tbaa !30
  %1214 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1213, i32 %1202), !nosanitize !33
  %1215 = extractvalue { i32, i1 } %1214, 1, !nosanitize !33
  br i1 %1215, label %1216, label %1217, !prof !34, !nosanitize !33

1216:                                             ; preds = %1212
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1217:                                             ; preds = %1212
  %1218 = extractvalue { i32, i1 } %1214, 0, !nosanitize !33
  store i32 %1218, ptr %793, align 8, !tbaa !30
  %1219 = load ptr, ptr %6, align 8, !tbaa !25
  %1220 = and i64 %1201, 2147483647
  %1221 = getelementptr inbounds nuw i8, ptr %1219, i64 %1220
  store ptr %1221, ptr %6, align 8, !tbaa !25
  %1222 = icmp eq i32 %1218, 0
  br i1 %1222, label %.loopexit96, label %1195, !llvm.loop !35

1223:                                             ; preds = %1186, %1184
  %1224 = load i32, ptr %1148, align 8, !tbaa !37
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1231, label %1226

1226:                                             ; preds = %1223
  %1227 = load i32, ptr %793, align 8, !tbaa !30
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %.loopexit96, label %1229

1229:                                             ; preds = %1226
  %1230 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1148, align 8, !tbaa !37
  br label %1231

1231:                                             ; preds = %1229, %1223
  %1232 = load i32, ptr %1145, align 8, !tbaa !26
  br label %1233

1233:                                             ; preds = %1283, %1231
  %1234 = phi i32 [ %1232, %1231 ], [ %1280, %1283 ]
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1236, label %1274

1236:                                             ; preds = %1233
  %1237 = load ptr, ptr %1146, align 8, !tbaa !27
  %1238 = load ptr, ptr %1147, align 8, !tbaa !28
  %1239 = icmp ugt ptr %1237, %1238
  br i1 %1239, label %1240, label %1271

1240:                                             ; preds = %1236
  %1241 = tail call ptr @__errno_location() #17
  br label %1242

1242:                                             ; preds = %1262, %1240
  %1243 = phi ptr [ %1238, %1240 ], [ %1265, %1262 ]
  %1244 = phi ptr [ %1237, %1240 ], [ %1266, %1262 ]
  store i32 0, ptr %1241, align 4, !tbaa !31
  store i32 0, ptr %1143, align 4, !tbaa !17
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = ptrtoint ptr %1243 to i64
  %1247 = sub i64 %1245, %1246
  %1248 = call i64 @llvm.smin.i64(i64 %1247, i64 1073741824)
  %1249 = and i64 %1248, 4294967295
  %1250 = load i32, ptr %1144, align 4, !tbaa !32
  %1251 = call i64 @write(i32 noundef %1250, ptr noundef %1243, i64 noundef %1249) #15
  %1252 = and i64 %1251, 2147483648
  %1253 = icmp eq i64 %1252, 0
  br i1 %1253, label %1262, label %1254

1254:                                             ; preds = %1242
  %1255 = load i32, ptr %1241, align 4, !tbaa !31
  %1256 = icmp eq i32 %1255, 11
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1254
  store i32 1, ptr %1143, align 4, !tbaa !17
  %1258 = load i32, ptr %1241, align 4, !tbaa !31
  br label %1259

1259:                                             ; preds = %1257, %1254
  %1260 = phi i32 [ %1255, %1254 ], [ %1258, %1257 ]
  %1261 = call ptr @strerror(i32 noundef %1260) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1261) #15
  br label %.loopexit96

1262:                                             ; preds = %1242
  %1263 = load ptr, ptr %1147, align 8, !tbaa !28
  %1264 = and i64 %1251, 2147483647
  %1265 = getelementptr inbounds nuw i8, ptr %1263, i64 %1264
  store ptr %1265, ptr %1147, align 8, !tbaa !28
  %1266 = load ptr, ptr %1146, align 8, !tbaa !27
  %1267 = icmp ugt ptr %1266, %1265
  br i1 %1267, label %1242, label %1268, !llvm.loop !38

1268:                                             ; preds = %1262
  %1269 = load i32, ptr %1145, align 8, !tbaa !26
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1274

1271:                                             ; preds = %1268, %1236
  %1272 = load i32, ptr %363, align 8, !tbaa !18
  store i32 %1272, ptr %1145, align 8, !tbaa !26
  %1273 = load ptr, ptr %1139, align 8, !tbaa !22
  store ptr %1273, ptr %1146, align 8, !tbaa !27
  store ptr %1273, ptr %1147, align 8, !tbaa !28
  br label %1274

1274:                                             ; preds = %1271, %1268, %1233
  %1275 = phi i32 [ %1269, %1268 ], [ %1272, %1271 ], [ %1234, %1233 ]
  %1276 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1277 = icmp eq i32 %1276, -2
  br i1 %1277, label %1278, label %1279

1278:                                             ; preds = %1274
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit96

1279:                                             ; preds = %1274
  %1280 = load i32, ptr %1145, align 8, !tbaa !26
  %1281 = icmp ult i32 %1275, %1280
  br i1 %1281, label %1282, label %1283, !prof !34, !nosanitize !33

1282:                                             ; preds = %1279
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1283:                                             ; preds = %1279
  %1284 = icmp eq i32 %1275, %1280
  br i1 %1284, label %.loopexit96, label %1233, !llvm.loop !39

.loopexit96:                                      ; preds = %1217, %1283, %1278, %1259, %1226, %1209, %1189, %1177, %1171, %1162
  %1285 = phi i1 [ true, %1209 ], [ true, %1259 ], [ true, %1278 ], [ false, %1226 ], [ true, %1162 ], [ true, %1171 ], [ true, %1177 ], [ false, %1189 ], [ false, %1283 ], [ false, %1217 ]
  %1286 = load i32, ptr %793, align 8, !tbaa !42
  %1287 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1153, i32 %1286), !nosanitize !33
  %1288 = extractvalue { i32, i1 } %1287, 1, !nosanitize !33
  br i1 %1288, label %1289, label %1290, !prof !34, !nosanitize !33

1289:                                             ; preds = %.loopexit96
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1290:                                             ; preds = %.loopexit96
  %1291 = extractvalue { i32, i1 } %1287, 0, !nosanitize !33
  %1292 = zext i32 %1291 to i64
  %1293 = load i64, ptr %1149, align 8, !tbaa !40
  %1294 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1293, i64 %1292), !nosanitize !33
  %1295 = extractvalue { i64, i1 } %1294, 1, !nosanitize !33
  br i1 %1295, label %.loopexit94, label %1296, !prof !34, !nosanitize !33

1296:                                             ; preds = %1290
  %1297 = extractvalue { i64, i1 } %1294, 0, !nosanitize !33
  store i64 %1297, ptr %1149, align 8, !tbaa !40
  %1298 = sub i64 %1151, %1292
  br i1 %1285, label %1299, label %1306

1299:                                             ; preds = %1296
  %1300 = load i32, ptr %1143, align 4, !tbaa !17
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %.loopexit104, label %1302

1302:                                             ; preds = %1299
  %1303 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1298), !nosanitize !33
  %1304 = extractvalue { i64, i1 } %1303, 1, !nosanitize !33
  br i1 %1304, label %1305, label %1309, !prof !34, !nosanitize !33

1305:                                             ; preds = %1302
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

1306:                                             ; preds = %1296
  %1307 = icmp eq i64 %1298, 0
  br i1 %1307, label %.loopexit95, label %1150, !llvm.loop !44

.loopexit95:                                      ; preds = %1306, %843
  %1308 = and i32 %1, 255
  br label %.loopexit104

1309:                                             ; preds = %979, %1302
  %1310 = phi { i64, i1 } [ %1303, %1302 ], [ zeroinitializer, %979 ]
  %1311 = freeze { i64, i1 } %1310
  %1312 = extractvalue { i64, i1 } %1311, 0
  %1313 = icmp eq i64 %1312, 1
  %1314 = and i32 %1, 255
  %1315 = select i1 %1313, i32 %1314, i32 -1
  br label %.loopexit104

.loopexit104:                                     ; preds = %360, %785, %1309, %.loopexit95, %1299, %1129, %1110, %1053, %1015, %1006, %995, %979, %598, %579, %522, %484, %475, %464, %434, %425, %414, %401, %172, %153, %96, %58, %49, %38, %14, %5, %2
  %1316 = phi i32 [ %403, %401 ], [ -1, %2 ], [ -1, %14 ], [ -1, %5 ], [ %1308, %.loopexit95 ], [ -1, %96 ], [ -1, %153 ], [ -1, %172 ], [ -1, %38 ], [ -1, %49 ], [ -1, %58 ], [ -1, %414 ], [ -1, %425 ], [ -1, %434 ], [ -1, %522 ], [ -1, %579 ], [ -1, %598 ], [ -1, %464 ], [ -1, %475 ], [ -1, %484 ], [ -1, %979 ], [ -1, %1053 ], [ -1, %1110 ], [ -1, %1129 ], [ -1, %995 ], [ -1, %1006 ], [ -1, %1015 ], [ -1, %1299 ], [ %1315, %1309 ], [ -1, %785 ], [ -1, %360 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %1316
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %951, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %951

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %951, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %951

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %.loopexit69, label %22

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
  br label %.loopexit69

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
  br label %.loopexit69

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
  br label %.loopexit69

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
  br i1 %71, label %413, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %75 = load i32, ptr %74, align 8, !tbaa !30
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %.loopexit79, label %77

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
  br label %.loopexit69

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
  br label %.loopexit69

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
  br label %.loopexit69

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
  br i1 %125, label %.loopexit79, label %126

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
  br label %.loopexit69

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
  br i1 %158, label %.loopexit79, label %131, !llvm.loop !35

159:                                              ; preds = %119, %114
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %161 = load i32, ptr %160, align 8, !tbaa !37
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %74, align 8, !tbaa !30
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %.loopexit79, label %166

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
  br label %.loopexit69

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
  br label %.loopexit69

222:                                              ; preds = %217
  %223 = load i32, ptr %169, align 8, !tbaa !26
  %224 = icmp ult i32 %218, %223
  br i1 %224, label %225, label %226, !prof !34, !nosanitize !33

225:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

226:                                              ; preds = %222
  %227 = icmp eq i32 %218, %223
  br i1 %227, label %.loopexit79, label %176, !llvm.loop !39

.loopexit79:                                      ; preds = %153, %226, %163, %123, %72
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %242 = load i64, ptr %69, align 8, !tbaa !29
  br label %243

243:                                              ; preds = %409, %.loopexit79
  %244 = phi i64 [ %242, %.loopexit79 ], [ %406, %409 ]
  %245 = phi i1 [ false, %.loopexit79 ], [ true, %409 ]
  %246 = load i32, ptr %23, align 8, !tbaa !18
  %247 = zext i32 %246 to i64
  %248 = tail call i64 @llvm.smin.i64(i64 %244, i64 %247)
  %249 = trunc i64 %248 to i32
  %250 = load ptr, ptr %228, align 8, !tbaa !20
  br i1 %245, label %255, label %251

251:                                              ; preds = %243
  %252 = and i64 %248, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %250, i8 0, i64 %252, i1 false)
  %253 = load ptr, ptr %228, align 8, !tbaa !20
  %254 = load i32, ptr %23, align 8, !tbaa !18
  br label %255

255:                                              ; preds = %251, %243
  %256 = phi i32 [ %254, %251 ], [ %246, %243 ]
  %257 = phi ptr [ %253, %251 ], [ %250, %243 ]
  store i32 %249, ptr %74, align 8, !tbaa !30
  store ptr %257, ptr %73, align 8, !tbaa !25
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %259, label %291

259:                                              ; preds = %255
  %260 = load i32, ptr %230, align 4, !tbaa !19
  %261 = shl i32 %260, 1
  %262 = zext i32 %261 to i64
  %263 = tail call noalias ptr @malloc(i64 noundef %262) #16
  store ptr %263, ptr %228, align 8, !tbaa !20
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit76

266:                                              ; preds = %259
  %267 = load i32, ptr %229, align 8, !tbaa !21
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  store i32 %260, ptr %23, align 8, !tbaa !18
  br label %294

270:                                              ; preds = %266
  %271 = zext i32 %260 to i64
  %272 = tail call noalias ptr @malloc(i64 noundef %271) #16
  store ptr %272, ptr %231, align 8, !tbaa !22
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  tail call void @free(ptr noundef nonnull %263) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit76

275:                                              ; preds = %270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %232, i8 0, i64 24, i1 false)
  %276 = load i32, ptr %233, align 8, !tbaa !23
  %277 = load i32, ptr %234, align 4, !tbaa !24
  %278 = tail call i32 @deflateInit2_(ptr noundef nonnull %73, i32 noundef %276, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %277, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr %231, align 8, !tbaa !22
  tail call void @free(ptr noundef %281) #15
  %282 = load ptr, ptr %228, align 8, !tbaa !20
  tail call void @free(ptr noundef %282) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit76

283:                                              ; preds = %275
  store ptr null, ptr %73, align 8, !tbaa !25
  %284 = load i32, ptr %229, align 8, !tbaa !21
  %285 = load i32, ptr %230, align 4, !tbaa !19
  store i32 %285, ptr %23, align 8, !tbaa !18
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %283
  %288 = load i32, ptr %74, align 8, !tbaa !30
  br label %294

289:                                              ; preds = %283
  store i32 %285, ptr %237, align 8, !tbaa !26
  %290 = load ptr, ptr %231, align 8, !tbaa !22
  store ptr %290, ptr %238, align 8, !tbaa !27
  store ptr %290, ptr %239, align 8, !tbaa !28
  br label %328

291:                                              ; preds = %255
  %292 = load i32, ptr %229, align 8, !tbaa !21
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %328, label %294

294:                                              ; preds = %291, %287, %269
  %295 = phi ptr [ null, %287 ], [ %257, %291 ], [ %257, %269 ]
  %296 = phi i32 [ %288, %287 ], [ %249, %291 ], [ %249, %269 ]
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %.loopexit76, label %298

298:                                              ; preds = %294
  %299 = tail call ptr @__errno_location() #17
  br label %300

300:                                              ; preds = %322, %298
  %301 = phi ptr [ %295, %298 ], [ %326, %322 ]
  store i32 0, ptr %299, align 4, !tbaa !31
  store i32 0, ptr %235, align 4, !tbaa !17
  %302 = load i32, ptr %74, align 8, !tbaa !30
  %303 = tail call i32 @llvm.umin.i32(i32 %302, i32 1073741824)
  %304 = zext nneg i32 %303 to i64
  %305 = load i32, ptr %236, align 4, !tbaa !32
  %306 = tail call i64 @write(i32 noundef %305, ptr noundef %301, i64 noundef %304) #15
  %307 = trunc i64 %306 to i32
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %300
  %310 = load i32, ptr %299, align 4, !tbaa !31
  %311 = icmp eq i32 %310, 11
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  store i32 1, ptr %235, align 4, !tbaa !17
  %313 = load i32, ptr %299, align 4, !tbaa !31
  br label %314

314:                                              ; preds = %312, %309
  %315 = phi i32 [ %310, %309 ], [ %313, %312 ]
  %316 = tail call ptr @strerror(i32 noundef %315) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %316) #15
  br label %.loopexit76

317:                                              ; preds = %300
  %318 = load i32, ptr %74, align 8, !tbaa !30
  %319 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %318, i32 %307), !nosanitize !33
  %320 = extractvalue { i32, i1 } %319, 1, !nosanitize !33
  br i1 %320, label %321, label %322, !prof !34, !nosanitize !33

321:                                              ; preds = %317
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

322:                                              ; preds = %317
  %323 = extractvalue { i32, i1 } %319, 0, !nosanitize !33
  store i32 %323, ptr %74, align 8, !tbaa !30
  %324 = load ptr, ptr %73, align 8, !tbaa !25
  %325 = and i64 %306, 2147483647
  %326 = getelementptr inbounds nuw i8, ptr %324, i64 %325
  store ptr %326, ptr %73, align 8, !tbaa !25
  %327 = icmp eq i32 %323, 0
  br i1 %327, label %.loopexit76, label %300, !llvm.loop !35

328:                                              ; preds = %291, %289
  %329 = load i32, ptr %240, align 8, !tbaa !37
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr %74, align 8, !tbaa !30
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %.loopexit76, label %334

334:                                              ; preds = %331
  %335 = tail call i32 @deflateReset(ptr noundef nonnull %73) #15
  store i32 0, ptr %240, align 8, !tbaa !37
  br label %336

336:                                              ; preds = %334, %328
  %337 = load i32, ptr %237, align 8, !tbaa !26
  br label %338

338:                                              ; preds = %388, %336
  %339 = phi i32 [ %337, %336 ], [ %385, %388 ]
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %379

341:                                              ; preds = %338
  %342 = load ptr, ptr %238, align 8, !tbaa !27
  %343 = load ptr, ptr %239, align 8, !tbaa !28
  %344 = icmp ugt ptr %342, %343
  br i1 %344, label %345, label %376

345:                                              ; preds = %341
  %346 = tail call ptr @__errno_location() #17
  br label %347

347:                                              ; preds = %367, %345
  %348 = phi ptr [ %343, %345 ], [ %370, %367 ]
  %349 = phi ptr [ %342, %345 ], [ %371, %367 ]
  store i32 0, ptr %346, align 4, !tbaa !31
  store i32 0, ptr %235, align 4, !tbaa !17
  %350 = ptrtoint ptr %349 to i64
  %351 = ptrtoint ptr %348 to i64
  %352 = sub i64 %350, %351
  %353 = tail call i64 @llvm.smin.i64(i64 %352, i64 1073741824)
  %354 = and i64 %353, 4294967295
  %355 = load i32, ptr %236, align 4, !tbaa !32
  %356 = tail call i64 @write(i32 noundef %355, ptr noundef %348, i64 noundef %354) #15
  %357 = and i64 %356, 2147483648
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %347
  %360 = load i32, ptr %346, align 4, !tbaa !31
  %361 = icmp eq i32 %360, 11
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  store i32 1, ptr %235, align 4, !tbaa !17
  %363 = load i32, ptr %346, align 4, !tbaa !31
  br label %364

364:                                              ; preds = %362, %359
  %365 = phi i32 [ %360, %359 ], [ %363, %362 ]
  %366 = tail call ptr @strerror(i32 noundef %365) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %366) #15
  br label %.loopexit76

367:                                              ; preds = %347
  %368 = load ptr, ptr %239, align 8, !tbaa !28
  %369 = and i64 %356, 2147483647
  %370 = getelementptr inbounds nuw i8, ptr %368, i64 %369
  store ptr %370, ptr %239, align 8, !tbaa !28
  %371 = load ptr, ptr %238, align 8, !tbaa !27
  %372 = icmp ugt ptr %371, %370
  br i1 %372, label %347, label %373, !llvm.loop !38

373:                                              ; preds = %367
  %374 = load i32, ptr %237, align 8, !tbaa !26
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %373, %341
  %377 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %377, ptr %237, align 8, !tbaa !26
  %378 = load ptr, ptr %231, align 8, !tbaa !22
  store ptr %378, ptr %238, align 8, !tbaa !27
  store ptr %378, ptr %239, align 8, !tbaa !28
  br label %379

379:                                              ; preds = %376, %373, %338
  %380 = phi i32 [ %374, %373 ], [ %377, %376 ], [ %339, %338 ]
  %381 = tail call i32 @deflate(ptr noundef nonnull %73, i32 noundef 0) #15
  %382 = icmp eq i32 %381, -2
  br i1 %382, label %383, label %384

383:                                              ; preds = %379
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit76

384:                                              ; preds = %379
  %385 = load i32, ptr %237, align 8, !tbaa !26
  %386 = icmp ult i32 %380, %385
  br i1 %386, label %387, label %388, !prof !34, !nosanitize !33

387:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

388:                                              ; preds = %384
  %389 = icmp eq i32 %380, %385
  br i1 %389, label %.loopexit76, label %338, !llvm.loop !39

.loopexit76:                                      ; preds = %322, %388, %383, %364, %331, %314, %294, %280, %274, %265
  %390 = phi i1 [ true, %314 ], [ true, %364 ], [ true, %383 ], [ false, %331 ], [ true, %265 ], [ true, %274 ], [ true, %280 ], [ false, %294 ], [ false, %388 ], [ false, %322 ]
  %391 = load i32, ptr %74, align 8, !tbaa !30
  %392 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %249, i32 %391), !nosanitize !33
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !33
  br i1 %393, label %394, label %395, !prof !34, !nosanitize !33

394:                                              ; preds = %402, %.loopexit76
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

395:                                              ; preds = %.loopexit76
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !33
  %397 = zext i32 %396 to i64
  %398 = load i64, ptr %241, align 8, !tbaa !40
  %399 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %398, i64 %397), !nosanitize !33
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !33
  br i1 %400, label %401, label %402, !prof !34, !nosanitize !33

401:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

402:                                              ; preds = %395
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !33
  store i64 %403, ptr %241, align 8, !tbaa !40
  %404 = load i64, ptr %69, align 8, !tbaa !29
  %405 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %404, i64 %397), !nosanitize !33
  %406 = extractvalue { i64, i1 } %405, 0, !nosanitize !33
  %407 = extractvalue { i64, i1 } %405, 1, !nosanitize !33
  br i1 %407, label %394, label %408, !prof !34, !nosanitize !33

408:                                              ; preds = %402
  store i64 %406, ptr %69, align 8, !tbaa !29
  br i1 %390, label %.loopexit69, label %409

409:                                              ; preds = %408
  %410 = icmp eq i64 %406, 0
  br i1 %410, label %411, label %243, !llvm.loop !41

411:                                              ; preds = %409
  %412 = load i32, ptr %23, align 8, !tbaa !18
  br label %413

413:                                              ; preds = %411, %67
  %414 = phi i32 [ %412, %411 ], [ %68, %67 ]
  %415 = zext i32 %414 to i64
  %416 = icmp ult i64 %17, %415
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %416, label %419, label %618

419:                                              ; preds = %413
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %419
  %434 = phi i64 [ %17, %419 ], [ %474, %.loopexit.backedge ]
  %435 = phi ptr [ %1, %419 ], [ %473, %.loopexit.backedge ]
  %436 = load i32, ptr %418, align 8, !tbaa !42
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %.loopexit
  %439 = load ptr, ptr %417, align 8, !tbaa !43
  %440 = load ptr, ptr %420, align 8, !tbaa !20
  br label %443

441:                                              ; preds = %.loopexit
  %442 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %442, ptr %417, align 8, !tbaa !43
  br label %443

443:                                              ; preds = %441, %438
  %444 = phi ptr [ %440, %438 ], [ %442, %441 ]
  %445 = phi ptr [ %439, %438 ], [ %442, %441 ]
  %446 = zext i32 %436 to i64
  %447 = getelementptr inbounds nuw i8, ptr %445, i64 %446
  %448 = ptrtoint ptr %447 to i64
  %449 = ptrtoint ptr %444 to i64
  %450 = sub i64 %448, %449
  %451 = trunc i64 %450 to i32
  %452 = load i32, ptr %23, align 8, !tbaa !18
  %453 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %452, i32 %451), !nosanitize !33
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !33
  br i1 %454, label %455, label %456, !prof !34, !nosanitize !33

455:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

456:                                              ; preds = %443
  %457 = extractvalue { i32, i1 } %453, 0, !nosanitize !33
  %458 = zext i32 %457 to i64
  %459 = tail call i64 @llvm.umin.i64(i64 %434, i64 %458)
  %460 = trunc nuw i64 %459 to i32
  %461 = and i64 %450, 4294967295
  %462 = getelementptr inbounds nuw i8, ptr %444, i64 %461
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %462, ptr align 1 %435, i64 %459, i1 false)
  %463 = load i32, ptr %418, align 8, !tbaa !42
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 %460), !nosanitize !33
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !33
  br i1 %465, label %.loopexit68, label %466, !prof !34, !nosanitize !33

.loopexit68:                                      ; preds = %926, %466, %456
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

466:                                              ; preds = %456
  %467 = extractvalue { i32, i1 } %464, 0, !nosanitize !33
  store i32 %467, ptr %418, align 8, !tbaa !42
  %468 = load i64, ptr %421, align 8, !tbaa !40
  %469 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %468, i64 %459), !nosanitize !33
  %470 = extractvalue { i64, i1 } %469, 1, !nosanitize !33
  br i1 %470, label %.loopexit68, label %471, !prof !34, !nosanitize !33

471:                                              ; preds = %466
  %472 = extractvalue { i64, i1 } %469, 0, !nosanitize !33
  store i64 %472, ptr %421, align 8, !tbaa !40
  %473 = getelementptr inbounds nuw i8, ptr %435, i64 %459
  %474 = sub i64 %434, %459
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %.loopexit69, label %476

476:                                              ; preds = %471
  %477 = load i32, ptr %23, align 8, !tbaa !18
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %511

479:                                              ; preds = %476
  %480 = load i32, ptr %423, align 4, !tbaa !19
  %481 = shl i32 %480, 1
  %482 = zext i32 %481 to i64
  %483 = tail call noalias ptr @malloc(i64 noundef %482) #16
  store ptr %483, ptr %420, align 8, !tbaa !20
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %486

485:                                              ; preds = %479
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

486:                                              ; preds = %479
  %487 = load i32, ptr %422, align 8, !tbaa !21
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %486
  store i32 %480, ptr %23, align 8, !tbaa !18
  br label %514

490:                                              ; preds = %486
  %491 = zext i32 %480 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %424, align 8, !tbaa !22
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %490
  tail call void @free(ptr noundef nonnull %483) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

495:                                              ; preds = %490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %425, i8 0, i64 24, i1 false)
  %496 = load i32, ptr %426, align 8, !tbaa !23
  %497 = load i32, ptr %427, align 4, !tbaa !24
  %498 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %496, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %497, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load ptr, ptr %424, align 8, !tbaa !22
  tail call void @free(ptr noundef %501) #15
  %502 = load ptr, ptr %420, align 8, !tbaa !20
  tail call void @free(ptr noundef %502) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

503:                                              ; preds = %495
  store ptr null, ptr %417, align 8, !tbaa !25
  %504 = load i32, ptr %422, align 8, !tbaa !21
  %505 = load i32, ptr %423, align 4, !tbaa !19
  store i32 %505, ptr %23, align 8, !tbaa !18
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %503
  %508 = load i32, ptr %418, align 8, !tbaa !30
  br label %514

509:                                              ; preds = %503
  store i32 %505, ptr %430, align 8, !tbaa !26
  %510 = load ptr, ptr %424, align 8, !tbaa !22
  store ptr %510, ptr %431, align 8, !tbaa !27
  store ptr %510, ptr %432, align 8, !tbaa !28
  br label %548

511:                                              ; preds = %476
  %512 = load i32, ptr %422, align 8, !tbaa !21
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %548, label %514

514:                                              ; preds = %511, %507, %489
  %515 = phi i32 [ %508, %507 ], [ %467, %511 ], [ %467, %489 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %.loopexit.backedge, label %517

517:                                              ; preds = %514
  %518 = tail call ptr @__errno_location() #17
  %519 = load ptr, ptr %417, align 8, !tbaa !25
  br label %520

520:                                              ; preds = %542, %517
  %521 = phi ptr [ %519, %517 ], [ %546, %542 ]
  store i32 0, ptr %518, align 4, !tbaa !31
  store i32 0, ptr %428, align 4, !tbaa !17
  %522 = load i32, ptr %418, align 8, !tbaa !30
  %523 = tail call i32 @llvm.umin.i32(i32 %522, i32 1073741824)
  %524 = zext nneg i32 %523 to i64
  %525 = load i32, ptr %429, align 4, !tbaa !32
  %526 = tail call i64 @write(i32 noundef %525, ptr noundef %521, i64 noundef %524) #15
  %527 = trunc i64 %526 to i32
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %520
  %530 = load i32, ptr %518, align 4, !tbaa !31
  %531 = icmp eq i32 %530, 11
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  store i32 1, ptr %428, align 4, !tbaa !17
  %533 = load i32, ptr %518, align 4, !tbaa !31
  br label %534

534:                                              ; preds = %532, %529
  %535 = phi i32 [ %530, %529 ], [ %533, %532 ]
  %536 = tail call ptr @strerror(i32 noundef %535) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %536) #15
  br label %610

537:                                              ; preds = %520
  %538 = load i32, ptr %418, align 8, !tbaa !30
  %539 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %538, i32 %527), !nosanitize !33
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !33
  br i1 %540, label %541, label %542, !prof !34, !nosanitize !33

541:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

542:                                              ; preds = %537
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !33
  store i32 %543, ptr %418, align 8, !tbaa !30
  %544 = load ptr, ptr %417, align 8, !tbaa !25
  %545 = and i64 %526, 2147483647
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store ptr %546, ptr %417, align 8, !tbaa !25
  %547 = icmp eq i32 %543, 0
  br i1 %547, label %.loopexit.backedge, label %520, !llvm.loop !35

548:                                              ; preds = %511, %509
  %549 = load i32, ptr %433, align 8, !tbaa !37
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %548
  %552 = load i32, ptr %418, align 8, !tbaa !30
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %.loopexit.backedge, label %554

.loopexit.backedge:                               ; preds = %542, %608, %551, %514
  br label %.loopexit

554:                                              ; preds = %551
  %555 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %433, align 8, !tbaa !37
  br label %556

556:                                              ; preds = %554, %548
  %557 = load i32, ptr %430, align 8, !tbaa !26
  br label %558

558:                                              ; preds = %608, %556
  %559 = phi i32 [ %557, %556 ], [ %605, %608 ]
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %599

561:                                              ; preds = %558
  %562 = load ptr, ptr %431, align 8, !tbaa !27
  %563 = load ptr, ptr %432, align 8, !tbaa !28
  %564 = icmp ugt ptr %562, %563
  br i1 %564, label %565, label %596

565:                                              ; preds = %561
  %566 = tail call ptr @__errno_location() #17
  br label %567

567:                                              ; preds = %587, %565
  %568 = phi ptr [ %563, %565 ], [ %590, %587 ]
  %569 = phi ptr [ %562, %565 ], [ %591, %587 ]
  store i32 0, ptr %566, align 4, !tbaa !31
  store i32 0, ptr %428, align 4, !tbaa !17
  %570 = ptrtoint ptr %569 to i64
  %571 = ptrtoint ptr %568 to i64
  %572 = sub i64 %570, %571
  %573 = tail call i64 @llvm.smin.i64(i64 %572, i64 1073741824)
  %574 = and i64 %573, 4294967295
  %575 = load i32, ptr %429, align 4, !tbaa !32
  %576 = tail call i64 @write(i32 noundef %575, ptr noundef %568, i64 noundef %574) #15
  %577 = and i64 %576, 2147483648
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %567
  %580 = load i32, ptr %566, align 4, !tbaa !31
  %581 = icmp eq i32 %580, 11
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  store i32 1, ptr %428, align 4, !tbaa !17
  %583 = load i32, ptr %566, align 4, !tbaa !31
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i32 [ %580, %579 ], [ %583, %582 ]
  %586 = tail call ptr @strerror(i32 noundef %585) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %586) #15
  br label %610

587:                                              ; preds = %567
  %588 = load ptr, ptr %432, align 8, !tbaa !28
  %589 = and i64 %576, 2147483647
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  store ptr %590, ptr %432, align 8, !tbaa !28
  %591 = load ptr, ptr %431, align 8, !tbaa !27
  %592 = icmp ugt ptr %591, %590
  br i1 %592, label %567, label %593, !llvm.loop !38

593:                                              ; preds = %587
  %594 = load i32, ptr %430, align 8, !tbaa !26
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %599

596:                                              ; preds = %593, %561
  %597 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %597, ptr %430, align 8, !tbaa !26
  %598 = load ptr, ptr %424, align 8, !tbaa !22
  store ptr %598, ptr %431, align 8, !tbaa !27
  store ptr %598, ptr %432, align 8, !tbaa !28
  br label %599

599:                                              ; preds = %596, %593, %558
  %600 = phi i32 [ %594, %593 ], [ %597, %596 ], [ %559, %558 ]
  %601 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %602 = icmp eq i32 %601, -2
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %610

604:                                              ; preds = %599
  %605 = load i32, ptr %430, align 8, !tbaa !26
  %606 = icmp ult i32 %600, %605
  br i1 %606, label %607, label %608, !prof !34, !nosanitize !33

607:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

608:                                              ; preds = %604
  %609 = icmp eq i32 %600, %605
  br i1 %609, label %.loopexit.backedge, label %558, !llvm.loop !39

610:                                              ; preds = %603, %584, %534, %500, %494, %485
  %611 = load i32, ptr %428, align 4, !tbaa !17
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %.loopexit69, label %613

613:                                              ; preds = %610
  %614 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %474), !nosanitize !33
  %615 = extractvalue { i64, i1 } %614, 0, !nosanitize !33
  %616 = extractvalue { i64, i1 } %614, 1, !nosanitize !33
  br i1 %616, label %617, label %.loopexit69, !prof !34, !nosanitize !33

617:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

618:                                              ; preds = %413
  %619 = load i32, ptr %418, align 8, !tbaa !42
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit74, label %621

621:                                              ; preds = %618
  %622 = icmp eq i32 %414, 0
  br i1 %622, label %623, label %663

623:                                              ; preds = %621
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %625 = load i32, ptr %624, align 4, !tbaa !19
  %626 = shl i32 %625, 1
  %627 = zext i32 %626 to i64
  %628 = tail call noalias ptr @malloc(i64 noundef %627) #16
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %628, ptr %629, align 8, !tbaa !20
  %630 = icmp eq ptr %628, null
  br i1 %630, label %631, label %632

631:                                              ; preds = %623
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

632:                                              ; preds = %623
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %634 = load i32, ptr %633, align 8, !tbaa !21
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %632
  store i32 %625, ptr %23, align 8, !tbaa !18
  br label %670

637:                                              ; preds = %632
  %638 = zext i32 %625 to i64
  %639 = tail call noalias ptr @malloc(i64 noundef %638) #16
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %639, ptr %640, align 8, !tbaa !22
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @free(ptr noundef nonnull %628) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

643:                                              ; preds = %637
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %644, i8 0, i64 24, i1 false)
  %646 = load i32, ptr %645, align 8, !tbaa !23
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %648 = load i32, ptr %647, align 4, !tbaa !24
  %649 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %646, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %648, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %640, align 8, !tbaa !22
  tail call void @free(ptr noundef %652) #15
  %653 = load ptr, ptr %629, align 8, !tbaa !20
  tail call void @free(ptr noundef %653) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

654:                                              ; preds = %643
  store ptr null, ptr %417, align 8, !tbaa !25
  %655 = load i32, ptr %633, align 8, !tbaa !21
  %656 = load i32, ptr %624, align 4, !tbaa !19
  store i32 %656, ptr %23, align 8, !tbaa !18
  %657 = icmp eq i32 %655, 0
  br i1 %657, label %658, label %667

658:                                              ; preds = %654
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %656, ptr %659, align 8, !tbaa !26
  %660 = load ptr, ptr %640, align 8, !tbaa !22
  %661 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %660, ptr %661, align 8, !tbaa !27
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %660, ptr %662, align 8, !tbaa !28
  br label %703

663:                                              ; preds = %621
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %665 = load i32, ptr %664, align 8, !tbaa !21
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %703, label %670

667:                                              ; preds = %654
  %668 = load i32, ptr %418, align 8, !tbaa !30
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %.loopexit74, label %670

670:                                              ; preds = %667, %663, %636
  %671 = tail call ptr @__errno_location() #17
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = load ptr, ptr %417, align 8, !tbaa !25
  br label %675

675:                                              ; preds = %697, %670
  %676 = phi ptr [ %674, %670 ], [ %701, %697 ]
  store i32 0, ptr %671, align 4, !tbaa !31
  store i32 0, ptr %672, align 4, !tbaa !17
  %677 = load i32, ptr %418, align 8, !tbaa !30
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 1073741824)
  %679 = zext nneg i32 %678 to i64
  %680 = load i32, ptr %673, align 4, !tbaa !32
  %681 = tail call i64 @write(i32 noundef %680, ptr noundef %676, i64 noundef %679) #15
  %682 = trunc i64 %681 to i32
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %675
  %685 = load i32, ptr %671, align 4, !tbaa !31
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %689

687:                                              ; preds = %684
  store i32 1, ptr %672, align 4, !tbaa !17
  %688 = load i32, ptr %671, align 4, !tbaa !31
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i32 [ %685, %684 ], [ %688, %687 ]
  %691 = tail call ptr @strerror(i32 noundef %690) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %691) #15
  br label %.loopexit69

692:                                              ; preds = %675
  %693 = load i32, ptr %418, align 8, !tbaa !30
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %682), !nosanitize !33
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !33
  br i1 %695, label %696, label %697, !prof !34, !nosanitize !33

696:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

697:                                              ; preds = %692
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !33
  store i32 %698, ptr %418, align 8, !tbaa !30
  %699 = load ptr, ptr %417, align 8, !tbaa !25
  %700 = and i64 %681, 2147483647
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store ptr %701, ptr %417, align 8, !tbaa !25
  %702 = icmp eq i32 %698, 0
  br i1 %702, label %.loopexit74, label %675, !llvm.loop !35

703:                                              ; preds = %663, %658
  %704 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %705 = load i32, ptr %704, align 8, !tbaa !37
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %703
  %708 = load i32, ptr %418, align 8, !tbaa !30
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %.loopexit74, label %710

710:                                              ; preds = %707
  %711 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %704, align 8, !tbaa !37
  br label %712

712:                                              ; preds = %710, %703
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %714 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %717 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %718 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %719 = load i32, ptr %713, align 8, !tbaa !26
  br label %720

720:                                              ; preds = %770, %712
  %721 = phi i32 [ %719, %712 ], [ %767, %770 ]
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %761

723:                                              ; preds = %720
  %724 = load ptr, ptr %714, align 8, !tbaa !27
  %725 = load ptr, ptr %715, align 8, !tbaa !28
  %726 = icmp ugt ptr %724, %725
  br i1 %726, label %727, label %758

727:                                              ; preds = %723
  %728 = tail call ptr @__errno_location() #17
  br label %729

729:                                              ; preds = %749, %727
  %730 = phi ptr [ %725, %727 ], [ %752, %749 ]
  %731 = phi ptr [ %724, %727 ], [ %753, %749 ]
  store i32 0, ptr %728, align 4, !tbaa !31
  store i32 0, ptr %716, align 4, !tbaa !17
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %730 to i64
  %734 = sub i64 %732, %733
  %735 = tail call i64 @llvm.smin.i64(i64 %734, i64 1073741824)
  %736 = and i64 %735, 4294967295
  %737 = load i32, ptr %717, align 4, !tbaa !32
  %738 = tail call i64 @write(i32 noundef %737, ptr noundef %730, i64 noundef %736) #15
  %739 = and i64 %738, 2147483648
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %729
  %742 = load i32, ptr %728, align 4, !tbaa !31
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %746

744:                                              ; preds = %741
  store i32 1, ptr %716, align 4, !tbaa !17
  %745 = load i32, ptr %728, align 4, !tbaa !31
  br label %746

746:                                              ; preds = %744, %741
  %747 = phi i32 [ %742, %741 ], [ %745, %744 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #15
  br label %.loopexit69

749:                                              ; preds = %729
  %750 = load ptr, ptr %715, align 8, !tbaa !28
  %751 = and i64 %738, 2147483647
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store ptr %752, ptr %715, align 8, !tbaa !28
  %753 = load ptr, ptr %714, align 8, !tbaa !27
  %754 = icmp ugt ptr %753, %752
  br i1 %754, label %729, label %755, !llvm.loop !38

755:                                              ; preds = %749
  %756 = load i32, ptr %713, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %755, %723
  %759 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %759, ptr %713, align 8, !tbaa !26
  %760 = load ptr, ptr %718, align 8, !tbaa !22
  store ptr %760, ptr %714, align 8, !tbaa !27
  store ptr %760, ptr %715, align 8, !tbaa !28
  br label %761

761:                                              ; preds = %758, %755, %720
  %762 = phi i32 [ %756, %755 ], [ %759, %758 ], [ %721, %720 ]
  %763 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %764 = icmp eq i32 %763, -2
  br i1 %764, label %765, label %766

765:                                              ; preds = %761
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit69

766:                                              ; preds = %761
  %767 = load i32, ptr %713, align 8, !tbaa !26
  %768 = icmp ult i32 %762, %767
  br i1 %768, label %769, label %770, !prof !34, !nosanitize !33

769:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

770:                                              ; preds = %766
  %771 = icmp eq i32 %762, %767
  br i1 %771, label %.loopexit74, label %720, !llvm.loop !39

.loopexit74:                                      ; preds = %697, %770, %707, %667, %618
  store ptr %1, ptr %417, align 8, !tbaa !43
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %778 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %786

786:                                              ; preds = %943, %.loopexit74
  %787 = phi i64 [ %17, %.loopexit74 ], [ %934, %943 ]
  %788 = tail call i64 @llvm.umin.i64(i64 %787, i64 4294967295)
  %789 = trunc nuw i64 %788 to i32
  store i32 %789, ptr %418, align 8, !tbaa !42
  %790 = load i32, ptr %23, align 8, !tbaa !18
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %822

792:                                              ; preds = %786
  %793 = load i32, ptr %773, align 4, !tbaa !19
  %794 = shl i32 %793, 1
  %795 = zext i32 %794 to i64
  %796 = tail call noalias ptr @malloc(i64 noundef %795) #16
  store ptr %796, ptr %774, align 8, !tbaa !20
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %799

798:                                              ; preds = %792
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

799:                                              ; preds = %792
  %800 = load i32, ptr %772, align 8, !tbaa !21
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %803, label %802

802:                                              ; preds = %799
  store i32 %793, ptr %23, align 8, !tbaa !18
  br label %828

803:                                              ; preds = %799
  %804 = zext i32 %793 to i64
  %805 = tail call noalias ptr @malloc(i64 noundef %804) #16
  store ptr %805, ptr %775, align 8, !tbaa !22
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %808

807:                                              ; preds = %803
  tail call void @free(ptr noundef nonnull %796) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

808:                                              ; preds = %803
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %776, i8 0, i64 24, i1 false)
  %809 = load i32, ptr %777, align 8, !tbaa !23
  %810 = load i32, ptr %778, align 4, !tbaa !24
  %811 = tail call i32 @deflateInit2_(ptr noundef nonnull %417, i32 noundef %809, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %810, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %808
  %814 = load ptr, ptr %775, align 8, !tbaa !22
  tail call void @free(ptr noundef %814) #15
  %815 = load ptr, ptr %774, align 8, !tbaa !20
  tail call void @free(ptr noundef %815) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit70

816:                                              ; preds = %808
  store ptr null, ptr %417, align 8, !tbaa !25
  %817 = load i32, ptr %772, align 8, !tbaa !21
  %818 = load i32, ptr %773, align 4, !tbaa !19
  store i32 %818, ptr %23, align 8, !tbaa !18
  %819 = icmp eq i32 %817, 0
  br i1 %819, label %820, label %825

820:                                              ; preds = %816
  store i32 %818, ptr %781, align 8, !tbaa !26
  %821 = load ptr, ptr %775, align 8, !tbaa !22
  store ptr %821, ptr %782, align 8, !tbaa !27
  store ptr %821, ptr %783, align 8, !tbaa !28
  br label %859

822:                                              ; preds = %786
  %823 = load i32, ptr %772, align 8, !tbaa !21
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %859, label %828

825:                                              ; preds = %816
  %826 = load i32, ptr %418, align 8, !tbaa !30
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %.loopexit70, label %828

828:                                              ; preds = %825, %822, %802
  %829 = tail call ptr @__errno_location() #17
  %830 = load ptr, ptr %417, align 8, !tbaa !25
  br label %831

831:                                              ; preds = %853, %828
  %832 = phi ptr [ %830, %828 ], [ %857, %853 ]
  store i32 0, ptr %829, align 4, !tbaa !31
  store i32 0, ptr %779, align 4, !tbaa !17
  %833 = load i32, ptr %418, align 8, !tbaa !30
  %834 = tail call i32 @llvm.umin.i32(i32 %833, i32 1073741824)
  %835 = zext nneg i32 %834 to i64
  %836 = load i32, ptr %780, align 4, !tbaa !32
  %837 = tail call i64 @write(i32 noundef %836, ptr noundef %832, i64 noundef %835) #15
  %838 = trunc i64 %837 to i32
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %848

840:                                              ; preds = %831
  %841 = load i32, ptr %829, align 4, !tbaa !31
  %842 = icmp eq i32 %841, 11
  br i1 %842, label %843, label %845

843:                                              ; preds = %840
  store i32 1, ptr %779, align 4, !tbaa !17
  %844 = load i32, ptr %829, align 4, !tbaa !31
  br label %845

845:                                              ; preds = %843, %840
  %846 = phi i32 [ %841, %840 ], [ %844, %843 ]
  %847 = tail call ptr @strerror(i32 noundef %846) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %847) #15
  br label %.loopexit70

848:                                              ; preds = %831
  %849 = load i32, ptr %418, align 8, !tbaa !30
  %850 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %849, i32 %838), !nosanitize !33
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !33
  br i1 %851, label %852, label %853, !prof !34, !nosanitize !33

852:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

853:                                              ; preds = %848
  %854 = extractvalue { i32, i1 } %850, 0, !nosanitize !33
  store i32 %854, ptr %418, align 8, !tbaa !30
  %855 = load ptr, ptr %417, align 8, !tbaa !25
  %856 = and i64 %837, 2147483647
  %857 = getelementptr inbounds nuw i8, ptr %855, i64 %856
  store ptr %857, ptr %417, align 8, !tbaa !25
  %858 = icmp eq i32 %854, 0
  br i1 %858, label %.loopexit70, label %831, !llvm.loop !35

859:                                              ; preds = %822, %820
  %860 = load i32, ptr %784, align 8, !tbaa !37
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %867, label %862

862:                                              ; preds = %859
  %863 = load i32, ptr %418, align 8, !tbaa !30
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %.loopexit70, label %865

865:                                              ; preds = %862
  %866 = tail call i32 @deflateReset(ptr noundef nonnull %417) #15
  store i32 0, ptr %784, align 8, !tbaa !37
  br label %867

867:                                              ; preds = %865, %859
  %868 = load i32, ptr %781, align 8, !tbaa !26
  br label %869

869:                                              ; preds = %919, %867
  %870 = phi i32 [ %868, %867 ], [ %916, %919 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %910

872:                                              ; preds = %869
  %873 = load ptr, ptr %782, align 8, !tbaa !27
  %874 = load ptr, ptr %783, align 8, !tbaa !28
  %875 = icmp ugt ptr %873, %874
  br i1 %875, label %876, label %907

876:                                              ; preds = %872
  %877 = tail call ptr @__errno_location() #17
  br label %878

878:                                              ; preds = %898, %876
  %879 = phi ptr [ %874, %876 ], [ %901, %898 ]
  %880 = phi ptr [ %873, %876 ], [ %902, %898 ]
  store i32 0, ptr %877, align 4, !tbaa !31
  store i32 0, ptr %779, align 4, !tbaa !17
  %881 = ptrtoint ptr %880 to i64
  %882 = ptrtoint ptr %879 to i64
  %883 = sub i64 %881, %882
  %884 = tail call i64 @llvm.smin.i64(i64 %883, i64 1073741824)
  %885 = and i64 %884, 4294967295
  %886 = load i32, ptr %780, align 4, !tbaa !32
  %887 = tail call i64 @write(i32 noundef %886, ptr noundef %879, i64 noundef %885) #15
  %888 = and i64 %887, 2147483648
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %898, label %890

890:                                              ; preds = %878
  %891 = load i32, ptr %877, align 4, !tbaa !31
  %892 = icmp eq i32 %891, 11
  br i1 %892, label %893, label %895

893:                                              ; preds = %890
  store i32 1, ptr %779, align 4, !tbaa !17
  %894 = load i32, ptr %877, align 4, !tbaa !31
  br label %895

895:                                              ; preds = %893, %890
  %896 = phi i32 [ %891, %890 ], [ %894, %893 ]
  %897 = tail call ptr @strerror(i32 noundef %896) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %897) #15
  br label %.loopexit70

898:                                              ; preds = %878
  %899 = load ptr, ptr %783, align 8, !tbaa !28
  %900 = and i64 %887, 2147483647
  %901 = getelementptr inbounds nuw i8, ptr %899, i64 %900
  store ptr %901, ptr %783, align 8, !tbaa !28
  %902 = load ptr, ptr %782, align 8, !tbaa !27
  %903 = icmp ugt ptr %902, %901
  br i1 %903, label %878, label %904, !llvm.loop !38

904:                                              ; preds = %898
  %905 = load i32, ptr %781, align 8, !tbaa !26
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %910

907:                                              ; preds = %904, %872
  %908 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %908, ptr %781, align 8, !tbaa !26
  %909 = load ptr, ptr %775, align 8, !tbaa !22
  store ptr %909, ptr %782, align 8, !tbaa !27
  store ptr %909, ptr %783, align 8, !tbaa !28
  br label %910

910:                                              ; preds = %907, %904, %869
  %911 = phi i32 [ %905, %904 ], [ %908, %907 ], [ %870, %869 ]
  %912 = tail call i32 @deflate(ptr noundef nonnull %417, i32 noundef 0) #15
  %913 = icmp eq i32 %912, -2
  br i1 %913, label %914, label %915

914:                                              ; preds = %910
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit70

915:                                              ; preds = %910
  %916 = load i32, ptr %781, align 8, !tbaa !26
  %917 = icmp ult i32 %911, %916
  br i1 %917, label %918, label %919, !prof !34, !nosanitize !33

918:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

919:                                              ; preds = %915
  %920 = icmp eq i32 %911, %916
  br i1 %920, label %.loopexit70, label %869, !llvm.loop !39

.loopexit70:                                      ; preds = %853, %919, %914, %895, %862, %845, %825, %813, %807, %798
  %921 = phi i1 [ true, %845 ], [ true, %895 ], [ true, %914 ], [ false, %862 ], [ true, %798 ], [ true, %807 ], [ true, %813 ], [ false, %825 ], [ false, %919 ], [ false, %853 ]
  %922 = load i32, ptr %418, align 8, !tbaa !42
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %789, i32 %922), !nosanitize !33
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !33
  br i1 %924, label %925, label %926, !prof !34, !nosanitize !33

925:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

926:                                              ; preds = %.loopexit70
  %927 = extractvalue { i32, i1 } %923, 0, !nosanitize !33
  %928 = zext i32 %927 to i64
  %929 = load i64, ptr %785, align 8, !tbaa !40
  %930 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %929, i64 %928), !nosanitize !33
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !33
  br i1 %931, label %.loopexit68, label %932, !prof !34, !nosanitize !33

932:                                              ; preds = %926
  %933 = extractvalue { i64, i1 } %930, 0, !nosanitize !33
  store i64 %933, ptr %785, align 8, !tbaa !40
  %934 = sub i64 %787, %928
  br i1 %921, label %935, label %943

935:                                              ; preds = %932
  %936 = load i32, ptr %779, align 4, !tbaa !17
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %.loopexit69, label %938

938:                                              ; preds = %935
  %939 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %934), !nosanitize !33
  %940 = extractvalue { i64, i1 } %939, 0, !nosanitize !33
  %941 = extractvalue { i64, i1 } %939, 1, !nosanitize !33
  br i1 %941, label %942, label %.loopexit69, !prof !34, !nosanitize !33

942:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

943:                                              ; preds = %932
  %944 = icmp eq i64 %934, 0
  br i1 %944, label %.loopexit69, label %786, !llvm.loop !44

.loopexit69:                                      ; preds = %408, %943, %471, %938, %935, %765, %746, %689, %651, %642, %631, %613, %610, %221, %202, %145, %107, %98, %87, %55, %46, %35, %20
  %945 = phi i64 [ 0, %20 ], [ 0, %35 ], [ 0, %46 ], [ 0, %55 ], [ 0, %145 ], [ 0, %202 ], [ 0, %221 ], [ 0, %87 ], [ 0, %98 ], [ 0, %107 ], [ 0, %610 ], [ %615, %613 ], [ 0, %689 ], [ 0, %746 ], [ 0, %765 ], [ 0, %631 ], [ 0, %642 ], [ 0, %651 ], [ 0, %935 ], [ %940, %938 ], [ %17, %471 ], [ %17, %943 ], [ 0, %408 ]
  %946 = icmp ne i64 %17, 0
  %947 = icmp eq i64 %945, 0
  %948 = select i1 %946, i1 %947, i1 false
  %949 = trunc i64 %945 to i32
  %950 = select i1 %948, i32 -1, i32 %949
  br label %951

951:                                              ; preds = %.loopexit69, %19, %12, %4, %2
  %952 = phi i32 [ -1, %19 ], [ %950, %.loopexit69 ], [ -1, %2 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %952
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %660, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %660

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %660, label %18

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
  br label %660

64:                                               ; preds = %55, %51, %34, %18
  %65 = phi i32 [ %53, %55 ], [ %53, %51 ], [ %24, %34 ], [ %20, %18 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %.loopexit49, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %71 = load i32, ptr %70, align 8, !tbaa !30
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.loopexit50, label %73

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
  br label %.loopexit48

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
  br label %.loopexit48

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
  br label %.loopexit48

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
  br i1 %121, label %.loopexit50, label %122

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
  br label %.loopexit48

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
  br i1 %154, label %.loopexit50, label %127, !llvm.loop !35

155:                                              ; preds = %115, %110
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %157 = load i32, ptr %156, align 8, !tbaa !37
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %70, align 8, !tbaa !30
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %.loopexit50, label %162

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
  br label %.loopexit48

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
  br label %.loopexit48

218:                                              ; preds = %213
  %219 = load i32, ptr %165, align 8, !tbaa !26
  %220 = icmp ult i32 %214, %219
  br i1 %220, label %221, label %222, !prof !34, !nosanitize !33

221:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

222:                                              ; preds = %218
  %223 = icmp eq i32 %214, %219
  br i1 %223, label %.loopexit50, label %172, !llvm.loop !39

.loopexit50:                                      ; preds = %149, %222, %159, %119, %69
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
  %238 = load i64, ptr %66, align 8, !tbaa !29
  br label %239

239:                                              ; preds = %405, %.loopexit50
  %240 = phi i64 [ %238, %.loopexit50 ], [ %402, %405 ]
  %241 = phi i1 [ false, %.loopexit50 ], [ true, %405 ]
  %242 = load i32, ptr %19, align 8, !tbaa !18
  %243 = zext i32 %242 to i64
  %244 = tail call i64 @llvm.smin.i64(i64 %240, i64 %243)
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr %224, align 8, !tbaa !20
  br i1 %241, label %251, label %247

247:                                              ; preds = %239
  %248 = and i64 %244, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %224, align 8, !tbaa !20
  %250 = load i32, ptr %19, align 8, !tbaa !18
  br label %251

251:                                              ; preds = %247, %239
  %252 = phi i32 [ %250, %247 ], [ %242, %239 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %239 ]
  store i32 %245, ptr %70, align 8, !tbaa !30
  store ptr %253, ptr %6, align 8, !tbaa !25
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %287

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
  br label %.loopexit46

262:                                              ; preds = %255
  %263 = load i32, ptr %225, align 8, !tbaa !21
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 %256, ptr %19, align 8, !tbaa !18
  br label %290

266:                                              ; preds = %262
  %267 = zext i32 %256 to i64
  %268 = tail call noalias ptr @malloc(i64 noundef %267) #16
  store ptr %268, ptr %227, align 8, !tbaa !22
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  tail call void @free(ptr noundef nonnull %259) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit46

271:                                              ; preds = %266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %228, i8 0, i64 24, i1 false)
  %272 = load i32, ptr %229, align 8, !tbaa !23
  %273 = load i32, ptr %230, align 4, !tbaa !24
  %274 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %272, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %273, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %227, align 8, !tbaa !22
  tail call void @free(ptr noundef %277) #15
  %278 = load ptr, ptr %224, align 8, !tbaa !20
  tail call void @free(ptr noundef %278) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit46

279:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !25
  %280 = load i32, ptr %225, align 8, !tbaa !21
  %281 = load i32, ptr %226, align 4, !tbaa !19
  store i32 %281, ptr %19, align 8, !tbaa !18
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %70, align 8, !tbaa !30
  br label %290

285:                                              ; preds = %279
  store i32 %281, ptr %233, align 8, !tbaa !26
  %286 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %286, ptr %234, align 8, !tbaa !27
  store ptr %286, ptr %235, align 8, !tbaa !28
  br label %324

287:                                              ; preds = %251
  %288 = load i32, ptr %225, align 8, !tbaa !21
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %287, %283, %265
  %291 = phi ptr [ null, %283 ], [ %253, %287 ], [ %253, %265 ]
  %292 = phi i32 [ %284, %283 ], [ %245, %287 ], [ %245, %265 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %.loopexit46, label %294

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #17
  br label %296

296:                                              ; preds = %318, %294
  %297 = phi ptr [ %291, %294 ], [ %322, %318 ]
  store i32 0, ptr %295, align 4, !tbaa !31
  store i32 0, ptr %231, align 4, !tbaa !17
  %298 = load i32, ptr %70, align 8, !tbaa !30
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = zext nneg i32 %299 to i64
  %301 = load i32, ptr %232, align 4, !tbaa !32
  %302 = tail call i64 @write(i32 noundef %301, ptr noundef %297, i64 noundef %300) #15
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load i32, ptr %295, align 4, !tbaa !31
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  store i32 1, ptr %231, align 4, !tbaa !17
  %309 = load i32, ptr %295, align 4, !tbaa !31
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %306, %305 ], [ %309, %308 ]
  %312 = tail call ptr @strerror(i32 noundef %311) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #15
  br label %.loopexit46

313:                                              ; preds = %296
  %314 = load i32, ptr %70, align 8, !tbaa !30
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %303), !nosanitize !33
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !33
  br i1 %316, label %317, label %318, !prof !34, !nosanitize !33

317:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !33
  store i32 %319, ptr %70, align 8, !tbaa !30
  %320 = load ptr, ptr %6, align 8, !tbaa !25
  %321 = and i64 %302, 2147483647
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store ptr %322, ptr %6, align 8, !tbaa !25
  %323 = icmp eq i32 %319, 0
  br i1 %323, label %.loopexit46, label %296, !llvm.loop !35

324:                                              ; preds = %287, %285
  %325 = load i32, ptr %236, align 8, !tbaa !37
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %70, align 8, !tbaa !30
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %.loopexit46, label %330

330:                                              ; preds = %327
  %331 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %236, align 8, !tbaa !37
  br label %332

332:                                              ; preds = %330, %324
  %333 = load i32, ptr %233, align 8, !tbaa !26
  br label %334

334:                                              ; preds = %384, %332
  %335 = phi i32 [ %333, %332 ], [ %381, %384 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %375

337:                                              ; preds = %334
  %338 = load ptr, ptr %234, align 8, !tbaa !27
  %339 = load ptr, ptr %235, align 8, !tbaa !28
  %340 = icmp ugt ptr %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = tail call ptr @__errno_location() #17
  br label %343

343:                                              ; preds = %363, %341
  %344 = phi ptr [ %339, %341 ], [ %366, %363 ]
  %345 = phi ptr [ %338, %341 ], [ %367, %363 ]
  store i32 0, ptr %342, align 4, !tbaa !31
  store i32 0, ptr %231, align 4, !tbaa !17
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %344 to i64
  %348 = sub i64 %346, %347
  %349 = tail call i64 @llvm.smin.i64(i64 %348, i64 1073741824)
  %350 = and i64 %349, 4294967295
  %351 = load i32, ptr %232, align 4, !tbaa !32
  %352 = tail call i64 @write(i32 noundef %351, ptr noundef %344, i64 noundef %350) #15
  %353 = and i64 %352, 2147483648
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %343
  %356 = load i32, ptr %342, align 4, !tbaa !31
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  store i32 1, ptr %231, align 4, !tbaa !17
  %359 = load i32, ptr %342, align 4, !tbaa !31
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %356, %355 ], [ %359, %358 ]
  %362 = tail call ptr @strerror(i32 noundef %361) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %362) #15
  br label %.loopexit46

363:                                              ; preds = %343
  %364 = load ptr, ptr %235, align 8, !tbaa !28
  %365 = and i64 %352, 2147483647
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  store ptr %366, ptr %235, align 8, !tbaa !28
  %367 = load ptr, ptr %234, align 8, !tbaa !27
  %368 = icmp ugt ptr %367, %366
  br i1 %368, label %343, label %369, !llvm.loop !38

369:                                              ; preds = %363
  %370 = load i32, ptr %233, align 8, !tbaa !26
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369, %337
  %373 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %373, ptr %233, align 8, !tbaa !26
  %374 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %374, ptr %234, align 8, !tbaa !27
  store ptr %374, ptr %235, align 8, !tbaa !28
  br label %375

375:                                              ; preds = %372, %369, %334
  %376 = phi i32 [ %370, %369 ], [ %373, %372 ], [ %335, %334 ]
  %377 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit46

380:                                              ; preds = %375
  %381 = load i32, ptr %233, align 8, !tbaa !26
  %382 = icmp ult i32 %376, %381
  br i1 %382, label %383, label %384, !prof !34, !nosanitize !33

383:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

384:                                              ; preds = %380
  %385 = icmp eq i32 %376, %381
  br i1 %385, label %.loopexit46, label %334, !llvm.loop !39

.loopexit46:                                      ; preds = %318, %384, %379, %360, %327, %310, %290, %276, %270, %261
  %386 = phi i1 [ true, %310 ], [ true, %360 ], [ true, %379 ], [ false, %327 ], [ true, %261 ], [ true, %270 ], [ true, %276 ], [ false, %290 ], [ false, %384 ], [ false, %318 ]
  %387 = load i32, ptr %70, align 8, !tbaa !30
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %387), !nosanitize !33
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !33
  br i1 %389, label %390, label %391, !prof !34, !nosanitize !33

390:                                              ; preds = %398, %.loopexit46
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

391:                                              ; preds = %.loopexit46
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !33
  %393 = zext i32 %392 to i64
  %394 = load i64, ptr %237, align 8, !tbaa !40
  %395 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %394, i64 %393), !nosanitize !33
  %396 = extractvalue { i64, i1 } %395, 1, !nosanitize !33
  br i1 %396, label %397, label %398, !prof !34, !nosanitize !33

397:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

398:                                              ; preds = %391
  %399 = extractvalue { i64, i1 } %395, 0, !nosanitize !33
  store i64 %399, ptr %237, align 8, !tbaa !40
  %400 = load i64, ptr %66, align 8, !tbaa !29
  %401 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %400, i64 %393), !nosanitize !33
  %402 = extractvalue { i64, i1 } %401, 0, !nosanitize !33
  %403 = extractvalue { i64, i1 } %401, 1, !nosanitize !33
  br i1 %403, label %390, label %404, !prof !34, !nosanitize !33

404:                                              ; preds = %398
  store i64 %402, ptr %66, align 8, !tbaa !29
  br i1 %386, label %.loopexit48, label %405

405:                                              ; preds = %404
  %406 = icmp eq i64 %402, 0
  br i1 %406, label %.loopexit49, label %239, !llvm.loop !41

.loopexit48:                                      ; preds = %404, %217, %198, %141, %103, %94, %83
  %407 = load i32, ptr %11, align 8, !tbaa !16
  br label %660

.loopexit49:                                      ; preds = %405, %64
  %408 = load ptr, ptr %6, align 8, !tbaa !25
  %409 = icmp eq ptr %408, null
  br i1 %409, label %585, label %410

410:                                              ; preds = %.loopexit49
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %412 = load i32, ptr %411, align 8, !tbaa !30
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds nuw i8, ptr %408, i64 %413
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %416 = load ptr, ptr %415, align 8, !tbaa !20
  %417 = load i32, ptr %19, align 8, !tbaa !18
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds nuw i8, ptr %416, i64 %418
  %420 = icmp ugt ptr %414, %419
  br i1 %420, label %421, label %585

421:                                              ; preds = %410
  %422 = icmp eq i32 %417, 0
  br i1 %422, label %423, label %464

423:                                              ; preds = %421
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %425 = load i32, ptr %424, align 4, !tbaa !19
  %426 = shl i32 %425, 1
  %427 = zext i32 %426 to i64
  %428 = tail call noalias ptr @malloc(i64 noundef %427) #16
  store ptr %428, ptr %415, align 8, !tbaa !20
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

431:                                              ; preds = %423
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %433 = load i32, ptr %432, align 8, !tbaa !21
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  store i32 %425, ptr %19, align 8, !tbaa !18
  br label %468

436:                                              ; preds = %431
  %437 = zext i32 %425 to i64
  %438 = tail call noalias ptr @malloc(i64 noundef %437) #16
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %438, ptr %439, align 8, !tbaa !22
  %440 = icmp eq ptr %438, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  tail call void @free(ptr noundef nonnull %428) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

442:                                              ; preds = %436
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %443, i8 0, i64 24, i1 false)
  %445 = load i32, ptr %444, align 8, !tbaa !23
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %447 = load i32, ptr %446, align 4, !tbaa !24
  %448 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %445, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %447, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %442
  %451 = load ptr, ptr %439, align 8, !tbaa !22
  tail call void @free(ptr noundef %451) #15
  %452 = load ptr, ptr %415, align 8, !tbaa !20
  tail call void @free(ptr noundef %452) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

453:                                              ; preds = %442
  store ptr null, ptr %6, align 8, !tbaa !25
  %454 = load i32, ptr %432, align 8, !tbaa !21
  %455 = load i32, ptr %424, align 4, !tbaa !19
  store i32 %455, ptr %19, align 8, !tbaa !18
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %453
  %458 = load i32, ptr %411, align 8, !tbaa !30
  br label %468

459:                                              ; preds = %453
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %455, ptr %460, align 8, !tbaa !26
  %461 = load ptr, ptr %439, align 8, !tbaa !22
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %461, ptr %462, align 8, !tbaa !27
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %461, ptr %463, align 8, !tbaa !28
  br label %504

464:                                              ; preds = %421
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %466 = load i32, ptr %465, align 8, !tbaa !21
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %504, label %468

468:                                              ; preds = %464, %457, %435
  %469 = phi ptr [ null, %457 ], [ %408, %464 ], [ %408, %435 ]
  %470 = phi i32 [ %458, %457 ], [ %412, %464 ], [ %412, %435 ]
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %575, label %472

472:                                              ; preds = %468
  %473 = tail call ptr @__errno_location() #17
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %476

476:                                              ; preds = %498, %472
  %477 = phi ptr [ %469, %472 ], [ %502, %498 ]
  store i32 0, ptr %473, align 4, !tbaa !31
  store i32 0, ptr %474, align 4, !tbaa !17
  %478 = load i32, ptr %411, align 8, !tbaa !30
  %479 = tail call i32 @llvm.umin.i32(i32 %478, i32 1073741824)
  %480 = zext nneg i32 %479 to i64
  %481 = load i32, ptr %475, align 4, !tbaa !32
  %482 = tail call i64 @write(i32 noundef %481, ptr noundef %477, i64 noundef %480) #15
  %483 = trunc i64 %482 to i32
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %493

485:                                              ; preds = %476
  %486 = load i32, ptr %473, align 4, !tbaa !31
  %487 = icmp eq i32 %486, 11
  br i1 %487, label %488, label %490

488:                                              ; preds = %485
  store i32 1, ptr %474, align 4, !tbaa !17
  %489 = load i32, ptr %473, align 4, !tbaa !31
  br label %490

490:                                              ; preds = %488, %485
  %491 = phi i32 [ %486, %485 ], [ %489, %488 ]
  %492 = tail call ptr @strerror(i32 noundef %491) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %492) #15
  br label %.loopexit

493:                                              ; preds = %476
  %494 = load i32, ptr %411, align 8, !tbaa !30
  %495 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 %483), !nosanitize !33
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !33
  br i1 %496, label %497, label %498, !prof !34, !nosanitize !33

497:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

498:                                              ; preds = %493
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !33
  store i32 %499, ptr %411, align 8, !tbaa !30
  %500 = load ptr, ptr %6, align 8, !tbaa !25
  %501 = and i64 %482, 2147483647
  %502 = getelementptr inbounds nuw i8, ptr %500, i64 %501
  store ptr %502, ptr %6, align 8, !tbaa !25
  %503 = icmp eq i32 %499, 0
  br i1 %503, label %.loopexit, label %476, !llvm.loop !35

504:                                              ; preds = %464, %459
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %506 = load i32, ptr %505, align 8, !tbaa !37
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %513, label %508

508:                                              ; preds = %504
  %509 = load i32, ptr %411, align 8, !tbaa !30
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %575, label %511

511:                                              ; preds = %508
  %512 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %505, align 8, !tbaa !37
  br label %513

513:                                              ; preds = %511, %504
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %520 = load i32, ptr %514, align 8, !tbaa !26
  br label %521

521:                                              ; preds = %571, %513
  %522 = phi i32 [ %520, %513 ], [ %568, %571 ]
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %562

524:                                              ; preds = %521
  %525 = load ptr, ptr %515, align 8, !tbaa !27
  %526 = load ptr, ptr %516, align 8, !tbaa !28
  %527 = icmp ugt ptr %525, %526
  br i1 %527, label %528, label %559

528:                                              ; preds = %524
  %529 = tail call ptr @__errno_location() #17
  br label %530

530:                                              ; preds = %550, %528
  %531 = phi ptr [ %526, %528 ], [ %553, %550 ]
  %532 = phi ptr [ %525, %528 ], [ %554, %550 ]
  store i32 0, ptr %529, align 4, !tbaa !31
  store i32 0, ptr %517, align 4, !tbaa !17
  %533 = ptrtoint ptr %532 to i64
  %534 = ptrtoint ptr %531 to i64
  %535 = sub i64 %533, %534
  %536 = tail call i64 @llvm.smin.i64(i64 %535, i64 1073741824)
  %537 = and i64 %536, 4294967295
  %538 = load i32, ptr %518, align 4, !tbaa !32
  %539 = tail call i64 @write(i32 noundef %538, ptr noundef %531, i64 noundef %537) #15
  %540 = and i64 %539, 2147483648
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %550, label %542

542:                                              ; preds = %530
  %543 = load i32, ptr %529, align 4, !tbaa !31
  %544 = icmp eq i32 %543, 11
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  store i32 1, ptr %517, align 4, !tbaa !17
  %546 = load i32, ptr %529, align 4, !tbaa !31
  br label %547

547:                                              ; preds = %545, %542
  %548 = phi i32 [ %543, %542 ], [ %546, %545 ]
  %549 = tail call ptr @strerror(i32 noundef %548) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %549) #15
  br label %.loopexit

550:                                              ; preds = %530
  %551 = load ptr, ptr %516, align 8, !tbaa !28
  %552 = and i64 %539, 2147483647
  %553 = getelementptr inbounds nuw i8, ptr %551, i64 %552
  store ptr %553, ptr %516, align 8, !tbaa !28
  %554 = load ptr, ptr %515, align 8, !tbaa !27
  %555 = icmp ugt ptr %554, %553
  br i1 %555, label %530, label %556, !llvm.loop !38

556:                                              ; preds = %550
  %557 = load i32, ptr %514, align 8, !tbaa !26
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %556, %524
  %560 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %560, ptr %514, align 8, !tbaa !26
  %561 = load ptr, ptr %519, align 8, !tbaa !22
  store ptr %561, ptr %515, align 8, !tbaa !27
  store ptr %561, ptr %516, align 8, !tbaa !28
  br label %562

562:                                              ; preds = %559, %556, %521
  %563 = phi i32 [ %557, %556 ], [ %560, %559 ], [ %522, %521 ]
  %564 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %565 = icmp eq i32 %564, -2
  br i1 %565, label %566, label %567

566:                                              ; preds = %562
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

567:                                              ; preds = %562
  %568 = load i32, ptr %514, align 8, !tbaa !26
  %569 = icmp ult i32 %563, %568
  br i1 %569, label %570, label %571, !prof !34, !nosanitize !33

570:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

571:                                              ; preds = %567
  %572 = icmp eq i32 %563, %568
  br i1 %572, label %.loopexit, label %521, !llvm.loop !39

.loopexit:                                        ; preds = %498, %571, %566, %547, %490, %450, %441, %430
  %573 = load i32, ptr %411, align 8, !tbaa !30
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %.loopexit, %508, %468
  %576 = load ptr, ptr %415, align 8, !tbaa !20
  store ptr %576, ptr %6, align 8, !tbaa !25
  br label %585

577:                                              ; preds = %.loopexit
  %578 = load ptr, ptr %415, align 8, !tbaa !20
  %579 = load ptr, ptr %6, align 8, !tbaa !25
  %580 = zext i32 %573 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %578, ptr align 1 %579, i64 %580, i1 false)
  %581 = load ptr, ptr %415, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  %582 = load i32, ptr %411, align 8, !tbaa !30
  %583 = load i32, ptr %19, align 8, !tbaa !18
  %584 = icmp ule i32 %582, %583
  br label %585

585:                                              ; preds = %577, %575, %410, %.loopexit49
  %586 = phi i1 [ true, %575 ], [ %584, %577 ], [ true, %410 ], [ true, %.loopexit49 ]
  %587 = load i32, ptr %11, align 8, !tbaa !16
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %601, label %589

589:                                              ; preds = %585
  br i1 %586, label %595, label %590

590:                                              ; preds = %589
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %592 = load i32, ptr %591, align 4, !tbaa !17
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %595, label %594

594:                                              ; preds = %590
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %595

595:                                              ; preds = %594, %590, %589
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %597 = load i32, ptr %596, align 4, !tbaa !17
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %595
  %600 = load i32, ptr %11, align 8, !tbaa !16
  br label %660

601:                                              ; preds = %595, %585
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %603 = load i32, ptr %602, align 8, !tbaa !30
  %604 = icmp eq i32 %603, 0
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %606 = load ptr, ptr %605, align 8, !tbaa !20
  br i1 %604, label %609, label %607

607:                                              ; preds = %601
  %608 = load ptr, ptr %6, align 8, !tbaa !25
  br label %610

609:                                              ; preds = %601
  store ptr %606, ptr %6, align 8, !tbaa !25
  br label %610

610:                                              ; preds = %609, %607
  %611 = phi ptr [ %608, %607 ], [ %606, %609 ]
  %612 = ptrtoint ptr %611 to i64
  %613 = ptrtoint ptr %606 to i64
  %614 = sub i64 %612, %613
  %615 = getelementptr inbounds i8, ptr %606, i64 %614
  %616 = zext i32 %603 to i64
  %617 = getelementptr inbounds nuw i8, ptr %615, i64 %616
  %618 = load i32, ptr %19, align 8, !tbaa !18
  %619 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 1), !nosanitize !33
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !33
  br i1 %620, label %621, label %622, !prof !34, !nosanitize !33

621:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

622:                                              ; preds = %610
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !33
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds nuw i8, ptr %617, i64 %624
  store i8 0, ptr %625, align 1, !tbaa !45
  %626 = load i32, ptr %19, align 8, !tbaa !18
  %627 = zext i32 %626 to i64
  %628 = tail call i32 @vsnprintf(ptr noundef %617, i64 noundef %627, ptr noundef %1, ptr noundef %2) #15
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %660, label %630

630:                                              ; preds = %622
  %631 = load i32, ptr %19, align 8, !tbaa !18
  %632 = icmp ult i32 %628, %631
  br i1 %632, label %633, label %660

633:                                              ; preds = %630
  %634 = add i32 %631, -1
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds nuw i8, ptr %617, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !45
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %639, label %660

639:                                              ; preds = %633
  %640 = load i32, ptr %602, align 8, !tbaa !30
  %641 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 %628), !nosanitize !33
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !33
  br i1 %642, label %643, label %644, !prof !34, !nosanitize !33

643:                                              ; preds = %644, %639
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

644:                                              ; preds = %639
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !33
  store i32 %645, ptr %602, align 8, !tbaa !30
  %646 = sext i32 %628 to i64
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %648 = load i64, ptr %647, align 8, !tbaa !40
  %649 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %648, i64 %646), !nosanitize !33
  %650 = extractvalue { i64, i1 } %649, 1, !nosanitize !33
  br i1 %650, label %643, label %651, !prof !34, !nosanitize !33

651:                                              ; preds = %644
  %652 = extractvalue { i64, i1 } %649, 0, !nosanitize !33
  store i64 %652, ptr %647, align 8, !tbaa !40
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %653 = load i32, ptr %11, align 8, !tbaa !16
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %659, label %655

655:                                              ; preds = %651
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %657 = load i32, ptr %656, align 4, !tbaa !17
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %655, %651
  br label %660

660:                                              ; preds = %659, %655, %633, %630, %622, %599, %.loopexit48, %62, %14, %5, %3
  %661 = phi i32 [ %63, %62 ], [ %407, %.loopexit48 ], [ %628, %659 ], [ %600, %599 ], [ -2, %3 ], [ -2, %14 ], [ -2, %5 ], [ 0, %633 ], [ 0, %630 ], [ 0, %622 ], [ %653, %655 ]
  ret i32 %661
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %177, label %5

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
  br i1 %16, label %17, label %177

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
  br label %.loopexit

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
  br label %.loopexit

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
  br label %.loopexit

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
  br i1 %67, label %175, label %68

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
  br label %.loopexit

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
  br i1 %99, label %.loopexit, label %72, !llvm.loop !35

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %102 = load i32, ptr %101, align 8, !tbaa !37
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %6, align 8, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %175, label %107

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
  br label %.loopexit

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
  br label %.loopexit

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !26
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %166, label %167, !prof !34, !nosanitize !33

166:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

167:                                              ; preds = %163
  %168 = icmp eq i32 %159, %164
  br i1 %168, label %.loopexit, label %117, !llvm.loop !39

.loopexit:                                        ; preds = %94, %167, %162, %143, %86, %46, %37, %26
  %169 = load i32, ptr %6, align 8, !tbaa !30
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %.loopexit
  %172 = load ptr, ptr %10, align 8, !tbaa !20
  %173 = load ptr, ptr %2, align 8, !tbaa !25
  %174 = zext i32 %169 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %172, ptr align 1 %173, i64 %174, i1 false)
  br label %175

175:                                              ; preds = %171, %.loopexit, %104, %64
  %176 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %176, ptr %2, align 8, !tbaa !25
  br label %177

177:                                              ; preds = %175, %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %660, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %660

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %660, label %18

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
  br label %660

64:                                               ; preds = %55, %51, %34, %18
  %65 = phi i32 [ %53, %55 ], [ %53, %51 ], [ %24, %34 ], [ %20, %18 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %.loopexit49, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %71 = load i32, ptr %70, align 8, !tbaa !30
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.loopexit50, label %73

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
  br label %.loopexit48

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
  br label %.loopexit48

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
  br label %.loopexit48

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
  br i1 %121, label %.loopexit50, label %122

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
  br label %.loopexit48

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
  br i1 %154, label %.loopexit50, label %127, !llvm.loop !35

155:                                              ; preds = %115, %110
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %157 = load i32, ptr %156, align 8, !tbaa !37
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %70, align 8, !tbaa !30
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %.loopexit50, label %162

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
  br label %.loopexit48

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
  br label %.loopexit48

218:                                              ; preds = %213
  %219 = load i32, ptr %165, align 8, !tbaa !26
  %220 = icmp ult i32 %214, %219
  br i1 %220, label %221, label %222, !prof !34, !nosanitize !33

221:                                              ; preds = %218
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

222:                                              ; preds = %218
  %223 = icmp eq i32 %214, %219
  br i1 %223, label %.loopexit50, label %172, !llvm.loop !39

.loopexit50:                                      ; preds = %149, %222, %159, %119, %69
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
  %238 = load i64, ptr %66, align 8, !tbaa !29
  br label %239

239:                                              ; preds = %405, %.loopexit50
  %240 = phi i64 [ %238, %.loopexit50 ], [ %402, %405 ]
  %241 = phi i1 [ false, %.loopexit50 ], [ true, %405 ]
  %242 = load i32, ptr %19, align 8, !tbaa !18
  %243 = zext i32 %242 to i64
  %244 = call i64 @llvm.smin.i64(i64 %240, i64 %243)
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr %224, align 8, !tbaa !20
  br i1 %241, label %251, label %247

247:                                              ; preds = %239
  %248 = and i64 %244, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %224, align 8, !tbaa !20
  %250 = load i32, ptr %19, align 8, !tbaa !18
  br label %251

251:                                              ; preds = %247, %239
  %252 = phi i32 [ %250, %247 ], [ %242, %239 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %239 ]
  store i32 %245, ptr %70, align 8, !tbaa !30
  store ptr %253, ptr %6, align 8, !tbaa !25
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %287

255:                                              ; preds = %251
  %256 = load i32, ptr %226, align 4, !tbaa !19
  %257 = shl i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = call noalias ptr @malloc(i64 noundef %258) #16
  store ptr %259, ptr %224, align 8, !tbaa !20
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit46

262:                                              ; preds = %255
  %263 = load i32, ptr %225, align 8, !tbaa !21
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 %256, ptr %19, align 8, !tbaa !18
  br label %290

266:                                              ; preds = %262
  %267 = zext i32 %256 to i64
  %268 = call noalias ptr @malloc(i64 noundef %267) #16
  store ptr %268, ptr %227, align 8, !tbaa !22
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  call void @free(ptr noundef nonnull %259) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit46

271:                                              ; preds = %266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %228, i8 0, i64 24, i1 false)
  %272 = load i32, ptr %229, align 8, !tbaa !23
  %273 = load i32, ptr %230, align 4, !tbaa !24
  %274 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %272, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %273, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %227, align 8, !tbaa !22
  call void @free(ptr noundef %277) #15
  %278 = load ptr, ptr %224, align 8, !tbaa !20
  call void @free(ptr noundef %278) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit46

279:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !25
  %280 = load i32, ptr %225, align 8, !tbaa !21
  %281 = load i32, ptr %226, align 4, !tbaa !19
  store i32 %281, ptr %19, align 8, !tbaa !18
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %70, align 8, !tbaa !30
  br label %290

285:                                              ; preds = %279
  store i32 %281, ptr %233, align 8, !tbaa !26
  %286 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %286, ptr %234, align 8, !tbaa !27
  store ptr %286, ptr %235, align 8, !tbaa !28
  br label %324

287:                                              ; preds = %251
  %288 = load i32, ptr %225, align 8, !tbaa !21
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %287, %283, %265
  %291 = phi ptr [ null, %283 ], [ %253, %287 ], [ %253, %265 ]
  %292 = phi i32 [ %284, %283 ], [ %245, %287 ], [ %245, %265 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %.loopexit46, label %294

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #17
  br label %296

296:                                              ; preds = %318, %294
  %297 = phi ptr [ %291, %294 ], [ %322, %318 ]
  store i32 0, ptr %295, align 4, !tbaa !31
  store i32 0, ptr %231, align 4, !tbaa !17
  %298 = load i32, ptr %70, align 8, !tbaa !30
  %299 = call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = zext nneg i32 %299 to i64
  %301 = load i32, ptr %232, align 4, !tbaa !32
  %302 = call i64 @write(i32 noundef %301, ptr noundef %297, i64 noundef %300) #15
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load i32, ptr %295, align 4, !tbaa !31
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  store i32 1, ptr %231, align 4, !tbaa !17
  %309 = load i32, ptr %295, align 4, !tbaa !31
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %306, %305 ], [ %309, %308 ]
  %312 = call ptr @strerror(i32 noundef %311) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #15
  br label %.loopexit46

313:                                              ; preds = %296
  %314 = load i32, ptr %70, align 8, !tbaa !30
  %315 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %303), !nosanitize !33
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !33
  br i1 %316, label %317, label %318, !prof !34, !nosanitize !33

317:                                              ; preds = %313
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !33
  store i32 %319, ptr %70, align 8, !tbaa !30
  %320 = load ptr, ptr %6, align 8, !tbaa !25
  %321 = and i64 %302, 2147483647
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store ptr %322, ptr %6, align 8, !tbaa !25
  %323 = icmp eq i32 %319, 0
  br i1 %323, label %.loopexit46, label %296, !llvm.loop !35

324:                                              ; preds = %287, %285
  %325 = load i32, ptr %236, align 8, !tbaa !37
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %70, align 8, !tbaa !30
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %.loopexit46, label %330

330:                                              ; preds = %327
  %331 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %236, align 8, !tbaa !37
  br label %332

332:                                              ; preds = %330, %324
  %333 = load i32, ptr %233, align 8, !tbaa !26
  br label %334

334:                                              ; preds = %384, %332
  %335 = phi i32 [ %333, %332 ], [ %381, %384 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %375

337:                                              ; preds = %334
  %338 = load ptr, ptr %234, align 8, !tbaa !27
  %339 = load ptr, ptr %235, align 8, !tbaa !28
  %340 = icmp ugt ptr %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = tail call ptr @__errno_location() #17
  br label %343

343:                                              ; preds = %363, %341
  %344 = phi ptr [ %339, %341 ], [ %366, %363 ]
  %345 = phi ptr [ %338, %341 ], [ %367, %363 ]
  store i32 0, ptr %342, align 4, !tbaa !31
  store i32 0, ptr %231, align 4, !tbaa !17
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %344 to i64
  %348 = sub i64 %346, %347
  %349 = call i64 @llvm.smin.i64(i64 %348, i64 1073741824)
  %350 = and i64 %349, 4294967295
  %351 = load i32, ptr %232, align 4, !tbaa !32
  %352 = call i64 @write(i32 noundef %351, ptr noundef %344, i64 noundef %350) #15
  %353 = and i64 %352, 2147483648
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %343
  %356 = load i32, ptr %342, align 4, !tbaa !31
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  store i32 1, ptr %231, align 4, !tbaa !17
  %359 = load i32, ptr %342, align 4, !tbaa !31
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %356, %355 ], [ %359, %358 ]
  %362 = call ptr @strerror(i32 noundef %361) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %362) #15
  br label %.loopexit46

363:                                              ; preds = %343
  %364 = load ptr, ptr %235, align 8, !tbaa !28
  %365 = and i64 %352, 2147483647
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  store ptr %366, ptr %235, align 8, !tbaa !28
  %367 = load ptr, ptr %234, align 8, !tbaa !27
  %368 = icmp ugt ptr %367, %366
  br i1 %368, label %343, label %369, !llvm.loop !38

369:                                              ; preds = %363
  %370 = load i32, ptr %233, align 8, !tbaa !26
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369, %337
  %373 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %373, ptr %233, align 8, !tbaa !26
  %374 = load ptr, ptr %227, align 8, !tbaa !22
  store ptr %374, ptr %234, align 8, !tbaa !27
  store ptr %374, ptr %235, align 8, !tbaa !28
  br label %375

375:                                              ; preds = %372, %369, %334
  %376 = phi i32 [ %370, %369 ], [ %373, %372 ], [ %335, %334 ]
  %377 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit46

380:                                              ; preds = %375
  %381 = load i32, ptr %233, align 8, !tbaa !26
  %382 = icmp ult i32 %376, %381
  br i1 %382, label %383, label %384, !prof !34, !nosanitize !33

383:                                              ; preds = %380
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

384:                                              ; preds = %380
  %385 = icmp eq i32 %376, %381
  br i1 %385, label %.loopexit46, label %334, !llvm.loop !39

.loopexit46:                                      ; preds = %318, %384, %379, %360, %327, %310, %290, %276, %270, %261
  %386 = phi i1 [ true, %310 ], [ true, %360 ], [ true, %379 ], [ false, %327 ], [ true, %261 ], [ true, %270 ], [ true, %276 ], [ false, %290 ], [ false, %384 ], [ false, %318 ]
  %387 = load i32, ptr %70, align 8, !tbaa !30
  %388 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %387), !nosanitize !33
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !33
  br i1 %389, label %390, label %391, !prof !34, !nosanitize !33

390:                                              ; preds = %398, %.loopexit46
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

391:                                              ; preds = %.loopexit46
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !33
  %393 = zext i32 %392 to i64
  %394 = load i64, ptr %237, align 8, !tbaa !40
  %395 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %394, i64 %393), !nosanitize !33
  %396 = extractvalue { i64, i1 } %395, 1, !nosanitize !33
  br i1 %396, label %397, label %398, !prof !34, !nosanitize !33

397:                                              ; preds = %391
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

398:                                              ; preds = %391
  %399 = extractvalue { i64, i1 } %395, 0, !nosanitize !33
  store i64 %399, ptr %237, align 8, !tbaa !40
  %400 = load i64, ptr %66, align 8, !tbaa !29
  %401 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %400, i64 %393), !nosanitize !33
  %402 = extractvalue { i64, i1 } %401, 0, !nosanitize !33
  %403 = extractvalue { i64, i1 } %401, 1, !nosanitize !33
  br i1 %403, label %390, label %404, !prof !34, !nosanitize !33

404:                                              ; preds = %398
  store i64 %402, ptr %66, align 8, !tbaa !29
  br i1 %386, label %.loopexit48, label %405

405:                                              ; preds = %404
  %406 = icmp eq i64 %402, 0
  br i1 %406, label %.loopexit49, label %239, !llvm.loop !41

.loopexit48:                                      ; preds = %404, %217, %198, %141, %103, %94, %83
  %407 = load i32, ptr %11, align 8, !tbaa !16
  br label %660

.loopexit49:                                      ; preds = %405, %64
  %408 = load ptr, ptr %6, align 8, !tbaa !25
  %409 = icmp eq ptr %408, null
  br i1 %409, label %585, label %410

410:                                              ; preds = %.loopexit49
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %412 = load i32, ptr %411, align 8, !tbaa !30
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds nuw i8, ptr %408, i64 %413
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %416 = load ptr, ptr %415, align 8, !tbaa !20
  %417 = load i32, ptr %19, align 8, !tbaa !18
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds nuw i8, ptr %416, i64 %418
  %420 = icmp ugt ptr %414, %419
  br i1 %420, label %421, label %585

421:                                              ; preds = %410
  %422 = icmp eq i32 %417, 0
  br i1 %422, label %423, label %464

423:                                              ; preds = %421
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %425 = load i32, ptr %424, align 4, !tbaa !19
  %426 = shl i32 %425, 1
  %427 = zext i32 %426 to i64
  %428 = call noalias ptr @malloc(i64 noundef %427) #16
  store ptr %428, ptr %415, align 8, !tbaa !20
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %423
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

431:                                              ; preds = %423
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %433 = load i32, ptr %432, align 8, !tbaa !21
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  store i32 %425, ptr %19, align 8, !tbaa !18
  br label %468

436:                                              ; preds = %431
  %437 = zext i32 %425 to i64
  %438 = call noalias ptr @malloc(i64 noundef %437) #16
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %438, ptr %439, align 8, !tbaa !22
  %440 = icmp eq ptr %438, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  call void @free(ptr noundef nonnull %428) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

442:                                              ; preds = %436
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %443, i8 0, i64 24, i1 false)
  %445 = load i32, ptr %444, align 8, !tbaa !23
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %447 = load i32, ptr %446, align 4, !tbaa !24
  %448 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %445, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %447, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %442
  %451 = load ptr, ptr %439, align 8, !tbaa !22
  call void @free(ptr noundef %451) #15
  %452 = load ptr, ptr %415, align 8, !tbaa !20
  call void @free(ptr noundef %452) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

453:                                              ; preds = %442
  store ptr null, ptr %6, align 8, !tbaa !25
  %454 = load i32, ptr %432, align 8, !tbaa !21
  %455 = load i32, ptr %424, align 4, !tbaa !19
  store i32 %455, ptr %19, align 8, !tbaa !18
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %453
  %458 = load i32, ptr %411, align 8, !tbaa !30
  br label %468

459:                                              ; preds = %453
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %455, ptr %460, align 8, !tbaa !26
  %461 = load ptr, ptr %439, align 8, !tbaa !22
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %461, ptr %462, align 8, !tbaa !27
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %461, ptr %463, align 8, !tbaa !28
  br label %504

464:                                              ; preds = %421
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %466 = load i32, ptr %465, align 8, !tbaa !21
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %504, label %468

468:                                              ; preds = %464, %457, %435
  %469 = phi ptr [ null, %457 ], [ %408, %464 ], [ %408, %435 ]
  %470 = phi i32 [ %458, %457 ], [ %412, %464 ], [ %412, %435 ]
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %575, label %472

472:                                              ; preds = %468
  %473 = tail call ptr @__errno_location() #17
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %476

476:                                              ; preds = %498, %472
  %477 = phi ptr [ %469, %472 ], [ %502, %498 ]
  store i32 0, ptr %473, align 4, !tbaa !31
  store i32 0, ptr %474, align 4, !tbaa !17
  %478 = load i32, ptr %411, align 8, !tbaa !30
  %479 = call i32 @llvm.umin.i32(i32 %478, i32 1073741824)
  %480 = zext nneg i32 %479 to i64
  %481 = load i32, ptr %475, align 4, !tbaa !32
  %482 = call i64 @write(i32 noundef %481, ptr noundef %477, i64 noundef %480) #15
  %483 = trunc i64 %482 to i32
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %493

485:                                              ; preds = %476
  %486 = load i32, ptr %473, align 4, !tbaa !31
  %487 = icmp eq i32 %486, 11
  br i1 %487, label %488, label %490

488:                                              ; preds = %485
  store i32 1, ptr %474, align 4, !tbaa !17
  %489 = load i32, ptr %473, align 4, !tbaa !31
  br label %490

490:                                              ; preds = %488, %485
  %491 = phi i32 [ %486, %485 ], [ %489, %488 ]
  %492 = call ptr @strerror(i32 noundef %491) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %492) #15
  br label %.loopexit

493:                                              ; preds = %476
  %494 = load i32, ptr %411, align 8, !tbaa !30
  %495 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 %483), !nosanitize !33
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !33
  br i1 %496, label %497, label %498, !prof !34, !nosanitize !33

497:                                              ; preds = %493
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

498:                                              ; preds = %493
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !33
  store i32 %499, ptr %411, align 8, !tbaa !30
  %500 = load ptr, ptr %6, align 8, !tbaa !25
  %501 = and i64 %482, 2147483647
  %502 = getelementptr inbounds nuw i8, ptr %500, i64 %501
  store ptr %502, ptr %6, align 8, !tbaa !25
  %503 = icmp eq i32 %499, 0
  br i1 %503, label %.loopexit, label %476, !llvm.loop !35

504:                                              ; preds = %464, %459
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %506 = load i32, ptr %505, align 8, !tbaa !37
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %513, label %508

508:                                              ; preds = %504
  %509 = load i32, ptr %411, align 8, !tbaa !30
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %575, label %511

511:                                              ; preds = %508
  %512 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %505, align 8, !tbaa !37
  br label %513

513:                                              ; preds = %511, %504
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %520 = load i32, ptr %514, align 8, !tbaa !26
  br label %521

521:                                              ; preds = %571, %513
  %522 = phi i32 [ %520, %513 ], [ %568, %571 ]
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %562

524:                                              ; preds = %521
  %525 = load ptr, ptr %515, align 8, !tbaa !27
  %526 = load ptr, ptr %516, align 8, !tbaa !28
  %527 = icmp ugt ptr %525, %526
  br i1 %527, label %528, label %559

528:                                              ; preds = %524
  %529 = tail call ptr @__errno_location() #17
  br label %530

530:                                              ; preds = %550, %528
  %531 = phi ptr [ %526, %528 ], [ %553, %550 ]
  %532 = phi ptr [ %525, %528 ], [ %554, %550 ]
  store i32 0, ptr %529, align 4, !tbaa !31
  store i32 0, ptr %517, align 4, !tbaa !17
  %533 = ptrtoint ptr %532 to i64
  %534 = ptrtoint ptr %531 to i64
  %535 = sub i64 %533, %534
  %536 = call i64 @llvm.smin.i64(i64 %535, i64 1073741824)
  %537 = and i64 %536, 4294967295
  %538 = load i32, ptr %518, align 4, !tbaa !32
  %539 = call i64 @write(i32 noundef %538, ptr noundef %531, i64 noundef %537) #15
  %540 = and i64 %539, 2147483648
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %550, label %542

542:                                              ; preds = %530
  %543 = load i32, ptr %529, align 4, !tbaa !31
  %544 = icmp eq i32 %543, 11
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  store i32 1, ptr %517, align 4, !tbaa !17
  %546 = load i32, ptr %529, align 4, !tbaa !31
  br label %547

547:                                              ; preds = %545, %542
  %548 = phi i32 [ %543, %542 ], [ %546, %545 ]
  %549 = call ptr @strerror(i32 noundef %548) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %549) #15
  br label %.loopexit

550:                                              ; preds = %530
  %551 = load ptr, ptr %516, align 8, !tbaa !28
  %552 = and i64 %539, 2147483647
  %553 = getelementptr inbounds nuw i8, ptr %551, i64 %552
  store ptr %553, ptr %516, align 8, !tbaa !28
  %554 = load ptr, ptr %515, align 8, !tbaa !27
  %555 = icmp ugt ptr %554, %553
  br i1 %555, label %530, label %556, !llvm.loop !38

556:                                              ; preds = %550
  %557 = load i32, ptr %514, align 8, !tbaa !26
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %556, %524
  %560 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %560, ptr %514, align 8, !tbaa !26
  %561 = load ptr, ptr %519, align 8, !tbaa !22
  store ptr %561, ptr %515, align 8, !tbaa !27
  store ptr %561, ptr %516, align 8, !tbaa !28
  br label %562

562:                                              ; preds = %559, %556, %521
  %563 = phi i32 [ %557, %556 ], [ %560, %559 ], [ %522, %521 ]
  %564 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %565 = icmp eq i32 %564, -2
  br i1 %565, label %566, label %567

566:                                              ; preds = %562
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

567:                                              ; preds = %562
  %568 = load i32, ptr %514, align 8, !tbaa !26
  %569 = icmp ult i32 %563, %568
  br i1 %569, label %570, label %571, !prof !34, !nosanitize !33

570:                                              ; preds = %567
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

571:                                              ; preds = %567
  %572 = icmp eq i32 %563, %568
  br i1 %572, label %.loopexit, label %521, !llvm.loop !39

.loopexit:                                        ; preds = %498, %571, %566, %547, %490, %450, %441, %430
  %573 = load i32, ptr %411, align 8, !tbaa !30
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %.loopexit, %508, %468
  %576 = load ptr, ptr %415, align 8, !tbaa !20
  store ptr %576, ptr %6, align 8, !tbaa !25
  br label %585

577:                                              ; preds = %.loopexit
  %578 = load ptr, ptr %415, align 8, !tbaa !20
  %579 = load ptr, ptr %6, align 8, !tbaa !25
  %580 = zext i32 %573 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %578, ptr align 1 %579, i64 %580, i1 false)
  %581 = load ptr, ptr %415, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  %582 = load i32, ptr %411, align 8, !tbaa !30
  %583 = load i32, ptr %19, align 8, !tbaa !18
  %584 = icmp ule i32 %582, %583
  br label %585

585:                                              ; preds = %577, %575, %410, %.loopexit49
  %586 = phi i1 [ true, %575 ], [ %584, %577 ], [ true, %410 ], [ true, %.loopexit49 ]
  %587 = load i32, ptr %11, align 8, !tbaa !16
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %601, label %589

589:                                              ; preds = %585
  br i1 %586, label %595, label %590

590:                                              ; preds = %589
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %592 = load i32, ptr %591, align 4, !tbaa !17
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %595, label %594

594:                                              ; preds = %590
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %595

595:                                              ; preds = %594, %590, %589
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %597 = load i32, ptr %596, align 4, !tbaa !17
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %595
  %600 = load i32, ptr %11, align 8, !tbaa !16
  br label %660

601:                                              ; preds = %595, %585
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %603 = load i32, ptr %602, align 8, !tbaa !30
  %604 = icmp eq i32 %603, 0
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %606 = load ptr, ptr %605, align 8, !tbaa !20
  br i1 %604, label %609, label %607

607:                                              ; preds = %601
  %608 = load ptr, ptr %6, align 8, !tbaa !25
  br label %610

609:                                              ; preds = %601
  store ptr %606, ptr %6, align 8, !tbaa !25
  br label %610

610:                                              ; preds = %609, %607
  %611 = phi ptr [ %608, %607 ], [ %606, %609 ]
  %612 = ptrtoint ptr %611 to i64
  %613 = ptrtoint ptr %606 to i64
  %614 = sub i64 %612, %613
  %615 = getelementptr inbounds i8, ptr %606, i64 %614
  %616 = zext i32 %603 to i64
  %617 = getelementptr inbounds nuw i8, ptr %615, i64 %616
  %618 = load i32, ptr %19, align 8, !tbaa !18
  %619 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 1), !nosanitize !33
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !33
  br i1 %620, label %621, label %622, !prof !34, !nosanitize !33

621:                                              ; preds = %610
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

622:                                              ; preds = %610
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !33
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds nuw i8, ptr %617, i64 %624
  store i8 0, ptr %625, align 1, !tbaa !45
  %626 = load i32, ptr %19, align 8, !tbaa !18
  %627 = zext i32 %626 to i64
  %628 = call i32 @vsnprintf(ptr noundef %617, i64 noundef %627, ptr noundef readonly %1, ptr noundef nonnull %3) #15
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %660, label %630

630:                                              ; preds = %622
  %631 = load i32, ptr %19, align 8, !tbaa !18
  %632 = icmp ult i32 %628, %631
  br i1 %632, label %633, label %660

633:                                              ; preds = %630
  %634 = add i32 %631, -1
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds nuw i8, ptr %617, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !45
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %639, label %660

639:                                              ; preds = %633
  %640 = load i32, ptr %602, align 8, !tbaa !30
  %641 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 %628), !nosanitize !33
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !33
  br i1 %642, label %643, label %644, !prof !34, !nosanitize !33

643:                                              ; preds = %644, %639
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !33
  unreachable, !nosanitize !33

644:                                              ; preds = %639
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !33
  store i32 %645, ptr %602, align 8, !tbaa !30
  %646 = sext i32 %628 to i64
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %648 = load i64, ptr %647, align 8, !tbaa !40
  %649 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %648, i64 %646), !nosanitize !33
  %650 = extractvalue { i64, i1 } %649, 1, !nosanitize !33
  br i1 %650, label %643, label %651, !prof !34, !nosanitize !33

651:                                              ; preds = %644
  %652 = extractvalue { i64, i1 } %649, 0, !nosanitize !33
  store i64 %652, ptr %647, align 8, !tbaa !40
  call fastcc void @gz_vacate(ptr noundef %0)
  %653 = load i32, ptr %11, align 8, !tbaa !16
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %659, label %655

655:                                              ; preds = %651
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %657 = load i32, ptr %656, align 4, !tbaa !17
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %655, %651
  br label %660

660:                                              ; preds = %659, %655, %633, %630, %622, %599, %.loopexit48, %62, %14, %5, %2
  %661 = phi i32 [ %63, %62 ], [ %407, %.loopexit48 ], [ %628, %659 ], [ %600, %599 ], [ -2, %2 ], [ -2, %14 ], [ -2, %5 ], [ 0, %633 ], [ 0, %630 ], [ 0, %622 ], [ %653, %655 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %661
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %533, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %533

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %533, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %533, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit43, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %.loopexit44, label %27

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
  br label %.loopexit

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
  br label %.loopexit

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
  br label %.loopexit

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
  br i1 %77, label %.loopexit44, label %78

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
  br label %.loopexit

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
  br i1 %110, label %.loopexit44, label %83, !llvm.loop !35

111:                                              ; preds = %71, %66
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %113 = load i32, ptr %112, align 8, !tbaa !37
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %24, align 8, !tbaa !30
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %.loopexit44, label %118

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
  br label %.loopexit

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
  br label %.loopexit

174:                                              ; preds = %169
  %175 = load i32, ptr %121, align 8, !tbaa !26
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %177, label %178, !prof !34, !nosanitize !33

177:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

178:                                              ; preds = %174
  %179 = icmp eq i32 %170, %175
  br i1 %179, label %.loopexit44, label %128, !llvm.loop !39

.loopexit44:                                      ; preds = %105, %178, %115, %75, %22
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

196:                                              ; preds = %362, %.loopexit44
  %197 = phi i64 [ %195, %.loopexit44 ], [ %359, %362 ]
  %198 = phi i1 [ false, %.loopexit44 ], [ true, %362 ]
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
  store i32 %202, ptr %24, align 8, !tbaa !30
  store ptr %210, ptr %23, align 8, !tbaa !25
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
  br label %.loopexit40

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
  br label %.loopexit40

228:                                              ; preds = %223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %185, i8 0, i64 24, i1 false)
  %229 = load i32, ptr %186, align 8, !tbaa !23
  %230 = load i32, ptr %187, align 4, !tbaa !24
  %231 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %229, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %230, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %184, align 8, !tbaa !22
  tail call void @free(ptr noundef %234) #15
  %235 = load ptr, ptr %181, align 8, !tbaa !20
  tail call void @free(ptr noundef %235) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit40

236:                                              ; preds = %228
  store ptr null, ptr %23, align 8, !tbaa !25
  %237 = load i32, ptr %182, align 8, !tbaa !21
  %238 = load i32, ptr %183, align 4, !tbaa !19
  store i32 %238, ptr %180, align 8, !tbaa !18
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %24, align 8, !tbaa !30
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
  br i1 %250, label %.loopexit40, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #17
  br label %253

253:                                              ; preds = %275, %251
  %254 = phi ptr [ %248, %251 ], [ %279, %275 ]
  store i32 0, ptr %252, align 4, !tbaa !31
  store i32 0, ptr %188, align 4, !tbaa !17
  %255 = load i32, ptr %24, align 8, !tbaa !30
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
  br label %.loopexit40

270:                                              ; preds = %253
  %271 = load i32, ptr %24, align 8, !tbaa !30
  %272 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 %260), !nosanitize !33
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !33
  br i1 %273, label %274, label %275, !prof !34, !nosanitize !33

274:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

275:                                              ; preds = %270
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !33
  store i32 %276, ptr %24, align 8, !tbaa !30
  %277 = load ptr, ptr %23, align 8, !tbaa !25
  %278 = and i64 %259, 2147483647
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 %278
  store ptr %279, ptr %23, align 8, !tbaa !25
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %.loopexit40, label %253, !llvm.loop !35

281:                                              ; preds = %244, %242
  %282 = load i32, ptr %193, align 8, !tbaa !37
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %24, align 8, !tbaa !30
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %.loopexit40, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
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
  br label %.loopexit40

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
  %334 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit40

337:                                              ; preds = %332
  %338 = load i32, ptr %190, align 8, !tbaa !26
  %339 = icmp ult i32 %333, %338
  br i1 %339, label %340, label %341, !prof !34, !nosanitize !33

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

341:                                              ; preds = %337
  %342 = icmp eq i32 %333, %338
  br i1 %342, label %.loopexit40, label %291, !llvm.loop !39

.loopexit40:                                      ; preds = %275, %341, %336, %317, %284, %267, %247, %233, %227, %218
  %343 = phi i1 [ true, %267 ], [ true, %317 ], [ true, %336 ], [ false, %284 ], [ true, %218 ], [ true, %227 ], [ true, %233 ], [ false, %247 ], [ false, %341 ], [ false, %275 ]
  %344 = load i32, ptr %24, align 8, !tbaa !30
  %345 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %202, i32 %344), !nosanitize !33
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !33
  br i1 %346, label %347, label %348, !prof !34, !nosanitize !33

347:                                              ; preds = %355, %.loopexit40
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

348:                                              ; preds = %.loopexit40
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !33
  %350 = zext i32 %349 to i64
  %351 = load i64, ptr %194, align 8, !tbaa !40
  %352 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %351, i64 %350), !nosanitize !33
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !33
  br i1 %353, label %354, label %355, !prof !34, !nosanitize !33

354:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

355:                                              ; preds = %348
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !33
  store i64 %356, ptr %194, align 8, !tbaa !40
  %357 = load i64, ptr %19, align 8, !tbaa !29
  %358 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %357, i64 %350), !nosanitize !33
  %359 = extractvalue { i64, i1 } %358, 0, !nosanitize !33
  %360 = extractvalue { i64, i1 } %358, 1, !nosanitize !33
  br i1 %360, label %347, label %361, !prof !34, !nosanitize !33

361:                                              ; preds = %355
  store i64 %359, ptr %19, align 8, !tbaa !29
  br i1 %343, label %.loopexit, label %362

362:                                              ; preds = %361
  %363 = icmp eq i64 %359, 0
  br i1 %363, label %.loopexit43, label %196, !llvm.loop !41

.loopexit43:                                      ; preds = %362, %18
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %366 = load i32, ptr %365, align 8, !tbaa !18
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %408

368:                                              ; preds = %.loopexit43
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %370 = load i32, ptr %369, align 4, !tbaa !19
  %371 = shl i32 %370, 1
  %372 = zext i32 %371 to i64
  %373 = tail call noalias ptr @malloc(i64 noundef %372) #16
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %373, ptr %374, align 8, !tbaa !20
  %375 = icmp eq ptr %373, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

377:                                              ; preds = %368
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %379 = load i32, ptr %378, align 8, !tbaa !21
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %377
  store i32 %370, ptr %365, align 8, !tbaa !18
  br label %412

382:                                              ; preds = %377
  %383 = zext i32 %370 to i64
  %384 = tail call noalias ptr @malloc(i64 noundef %383) #16
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %384, ptr %385, align 8, !tbaa !22
  %386 = icmp eq ptr %384, null
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  tail call void @free(ptr noundef nonnull %373) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

388:                                              ; preds = %382
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %389, i8 0, i64 24, i1 false)
  %391 = load i32, ptr %390, align 8, !tbaa !23
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %393 = load i32, ptr %392, align 4, !tbaa !24
  %394 = tail call i32 @deflateInit2_(ptr noundef nonnull %364, i32 noundef %391, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %393, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %388
  %397 = load ptr, ptr %385, align 8, !tbaa !22
  tail call void @free(ptr noundef %397) #15
  %398 = load ptr, ptr %374, align 8, !tbaa !20
  tail call void @free(ptr noundef %398) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

399:                                              ; preds = %388
  store ptr null, ptr %364, align 8, !tbaa !25
  %400 = load i32, ptr %378, align 8, !tbaa !21
  %401 = load i32, ptr %369, align 4, !tbaa !19
  store i32 %401, ptr %365, align 8, !tbaa !18
  %402 = icmp eq i32 %400, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %399
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %401, ptr %404, align 8, !tbaa !26
  %405 = load ptr, ptr %385, align 8, !tbaa !22
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %405, ptr %406, align 8, !tbaa !27
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %405, ptr %407, align 8, !tbaa !28
  br label %449

408:                                              ; preds = %.loopexit43
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %410 = load i32, ptr %409, align 8, !tbaa !21
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %449, label %412

412:                                              ; preds = %408, %399, %381
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %414 = load i32, ptr %413, align 8, !tbaa !30
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %.loopexit, label %416

416:                                              ; preds = %412
  %417 = tail call ptr @__errno_location() #17
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %420 = load ptr, ptr %364, align 8, !tbaa !25
  br label %421

421:                                              ; preds = %443, %416
  %422 = phi ptr [ %420, %416 ], [ %447, %443 ]
  store i32 0, ptr %417, align 4, !tbaa !31
  store i32 0, ptr %418, align 4, !tbaa !17
  %423 = load i32, ptr %413, align 8, !tbaa !30
  %424 = tail call i32 @llvm.umin.i32(i32 %423, i32 1073741824)
  %425 = zext nneg i32 %424 to i64
  %426 = load i32, ptr %419, align 4, !tbaa !32
  %427 = tail call i64 @write(i32 noundef %426, ptr noundef %422, i64 noundef %425) #15
  %428 = trunc i64 %427 to i32
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %438

430:                                              ; preds = %421
  %431 = load i32, ptr %417, align 4, !tbaa !31
  %432 = icmp eq i32 %431, 11
  br i1 %432, label %433, label %435

433:                                              ; preds = %430
  store i32 1, ptr %418, align 4, !tbaa !17
  %434 = load i32, ptr %417, align 4, !tbaa !31
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi i32 [ %431, %430 ], [ %434, %433 ]
  %437 = tail call ptr @strerror(i32 noundef %436) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %437) #15
  br label %.loopexit

438:                                              ; preds = %421
  %439 = load i32, ptr %413, align 8, !tbaa !30
  %440 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %439, i32 %428), !nosanitize !33
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !33
  br i1 %441, label %442, label %443, !prof !34, !nosanitize !33

442:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

443:                                              ; preds = %438
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !33
  store i32 %444, ptr %413, align 8, !tbaa !30
  %445 = load ptr, ptr %364, align 8, !tbaa !25
  %446 = and i64 %427, 2147483647
  %447 = getelementptr inbounds nuw i8, ptr %445, i64 %446
  store ptr %447, ptr %364, align 8, !tbaa !25
  %448 = icmp eq i32 %444, 0
  br i1 %448, label %.loopexit, label %421, !llvm.loop !35

449:                                              ; preds = %408, %403
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %451 = load i32, ptr %450, align 8, !tbaa !37
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %460, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %455 = load i32, ptr %454, align 8, !tbaa !30
  %456 = or i32 %455, %1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %.loopexit, label %458

458:                                              ; preds = %453
  %459 = tail call i32 @deflateReset(ptr noundef nonnull %364) #15
  store i32 0, ptr %450, align 8, !tbaa !37
  br label %460

460:                                              ; preds = %458, %449
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %462 = icmp ne i32 %1, 0
  %463 = icmp ne i32 %1, 4
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %469 = load i32, ptr %461, align 8, !tbaa !26
  br label %470

470:                                              ; preds = %527, %460
  %471 = phi i32 [ %469, %460 ], [ %524, %527 ]
  %472 = phi i32 [ 0, %460 ], [ %520, %527 ]
  %473 = icmp eq i32 %471, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %470
  %475 = icmp eq i32 %472, 1
  %476 = or i1 %463, %475
  %477 = and i1 %462, %476
  br i1 %477, label %478, label %518

478:                                              ; preds = %474, %470
  %479 = load ptr, ptr %464, align 8, !tbaa !27
  %480 = load ptr, ptr %465, align 8, !tbaa !28
  %481 = icmp ugt ptr %479, %480
  br i1 %481, label %482, label %512

482:                                              ; preds = %478
  %483 = tail call ptr @__errno_location() #17
  br label %484

484:                                              ; preds = %504, %482
  %485 = phi ptr [ %480, %482 ], [ %507, %504 ]
  %486 = phi ptr [ %479, %482 ], [ %508, %504 ]
  store i32 0, ptr %483, align 4, !tbaa !31
  store i32 0, ptr %466, align 4, !tbaa !17
  %487 = ptrtoint ptr %486 to i64
  %488 = ptrtoint ptr %485 to i64
  %489 = sub i64 %487, %488
  %490 = tail call i64 @llvm.smin.i64(i64 %489, i64 1073741824)
  %491 = and i64 %490, 4294967295
  %492 = load i32, ptr %467, align 4, !tbaa !32
  %493 = tail call i64 @write(i32 noundef %492, ptr noundef %485, i64 noundef %491) #15
  %494 = and i64 %493, 2147483648
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %504, label %496

496:                                              ; preds = %484
  %497 = load i32, ptr %483, align 4, !tbaa !31
  %498 = icmp eq i32 %497, 11
  br i1 %498, label %499, label %501

499:                                              ; preds = %496
  store i32 1, ptr %466, align 4, !tbaa !17
  %500 = load i32, ptr %483, align 4, !tbaa !31
  br label %501

501:                                              ; preds = %499, %496
  %502 = phi i32 [ %497, %496 ], [ %500, %499 ]
  %503 = tail call ptr @strerror(i32 noundef %502) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %503) #15
  br label %.loopexit

504:                                              ; preds = %484
  %505 = load ptr, ptr %465, align 8, !tbaa !28
  %506 = and i64 %493, 2147483647
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  store ptr %507, ptr %465, align 8, !tbaa !28
  %508 = load ptr, ptr %464, align 8, !tbaa !27
  %509 = icmp ugt ptr %508, %507
  br i1 %509, label %484, label %510, !llvm.loop !38

510:                                              ; preds = %504
  %511 = load i32, ptr %461, align 8, !tbaa !26
  br label %512

512:                                              ; preds = %510, %478
  %513 = phi i32 [ %511, %510 ], [ %471, %478 ]
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %512
  %516 = load i32, ptr %365, align 8, !tbaa !18
  store i32 %516, ptr %461, align 8, !tbaa !26
  %517 = load ptr, ptr %468, align 8, !tbaa !22
  store ptr %517, ptr %464, align 8, !tbaa !27
  store ptr %517, ptr %465, align 8, !tbaa !28
  br label %518

518:                                              ; preds = %515, %512, %474
  %519 = phi i32 [ %513, %512 ], [ %516, %515 ], [ %471, %474 ]
  %520 = tail call i32 @deflate(ptr noundef nonnull %364, i32 noundef range(i32 0, 6) %1) #15
  %521 = icmp eq i32 %520, -2
  br i1 %521, label %522, label %523

522:                                              ; preds = %518
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

523:                                              ; preds = %518
  %524 = load i32, ptr %461, align 8, !tbaa !26
  %525 = icmp ult i32 %519, %524
  br i1 %525, label %526, label %527, !prof !34, !nosanitize !33

526:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

527:                                              ; preds = %523
  %528 = icmp eq i32 %519, %524
  br i1 %528, label %529, label %470, !llvm.loop !39

529:                                              ; preds = %527
  %530 = icmp eq i32 %1, 4
  br i1 %530, label %531, label %.loopexit

531:                                              ; preds = %529
  store i32 1, ptr %450, align 8, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %361, %443, %531, %529, %522, %501, %453, %435, %412, %396, %387, %376, %173, %154, %97, %59, %50, %39
  %532 = load i32, ptr %9, align 8, !tbaa !16
  br label %533

533:                                              ; preds = %.loopexit, %16, %12, %4, %2
  %534 = phi i32 [ -2, %2 ], [ -2, %12 ], [ -2, %4 ], [ -2, %16 ], [ %532, %.loopexit ]
  ret i32 %534
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %484, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %484

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %484, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %484

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
  br i1 %29, label %484, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.loopexit41, label %38

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
  br label %.loopexit39

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
  br label %.loopexit39

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
  br label %.loopexit39

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
  br i1 %84, label %.loopexit41, label %85

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
  br label %.loopexit39

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
  br i1 %117, label %.loopexit41, label %90, !llvm.loop !35

118:                                              ; preds = %79, %74
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %120 = load i32, ptr %119, align 8, !tbaa !37
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %35, align 8, !tbaa !30
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %.loopexit41, label %125

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
  br label %.loopexit39

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
  br label %.loopexit39

181:                                              ; preds = %176
  %182 = load i32, ptr %128, align 8, !tbaa !26
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %184, label %185, !prof !34, !nosanitize !33

184:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

185:                                              ; preds = %181
  %186 = icmp eq i32 %177, %182
  br i1 %186, label %.loopexit41, label %135, !llvm.loop !39

.loopexit41:                                      ; preds = %112, %185, %122, %82, %34
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %200 = load i64, ptr %31, align 8, !tbaa !29
  br label %201

201:                                              ; preds = %367, %.loopexit41
  %202 = phi i64 [ %200, %.loopexit41 ], [ %364, %367 ]
  %203 = phi i1 [ false, %.loopexit41 ], [ true, %367 ]
  %204 = load i32, ptr %187, align 8, !tbaa !18
  %205 = zext i32 %204 to i64
  %206 = tail call i64 @llvm.smin.i64(i64 %202, i64 %205)
  %207 = trunc i64 %206 to i32
  %208 = load ptr, ptr %188, align 8, !tbaa !20
  br i1 %203, label %213, label %209

209:                                              ; preds = %201
  %210 = and i64 %206, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %208, i8 0, i64 %210, i1 false)
  %211 = load ptr, ptr %188, align 8, !tbaa !20
  %212 = load i32, ptr %187, align 8, !tbaa !18
  br label %213

213:                                              ; preds = %209, %201
  %214 = phi i32 [ %212, %209 ], [ %204, %201 ]
  %215 = phi ptr [ %211, %209 ], [ %208, %201 ]
  store i32 %207, ptr %35, align 8, !tbaa !30
  store ptr %215, ptr %6, align 8, !tbaa !25
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %217, label %249

217:                                              ; preds = %213
  %218 = load i32, ptr %189, align 4, !tbaa !19
  %219 = shl i32 %218, 1
  %220 = zext i32 %219 to i64
  %221 = tail call noalias ptr @malloc(i64 noundef %220) #16
  store ptr %221, ptr %188, align 8, !tbaa !20
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

224:                                              ; preds = %217
  %225 = load i32, ptr %19, align 8, !tbaa !21
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  store i32 %218, ptr %187, align 8, !tbaa !18
  br label %252

228:                                              ; preds = %224
  %229 = zext i32 %218 to i64
  %230 = tail call noalias ptr @malloc(i64 noundef %229) #16
  store ptr %230, ptr %190, align 8, !tbaa !22
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  tail call void @free(ptr noundef nonnull %221) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

233:                                              ; preds = %228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %191, i8 0, i64 24, i1 false)
  %234 = load i32, ptr %23, align 8, !tbaa !23
  %235 = load i32, ptr %192, align 4, !tbaa !24
  %236 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %234, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %235, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = load ptr, ptr %190, align 8, !tbaa !22
  tail call void @free(ptr noundef %239) #15
  %240 = load ptr, ptr %188, align 8, !tbaa !20
  tail call void @free(ptr noundef %240) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit37

241:                                              ; preds = %233
  store ptr null, ptr %6, align 8, !tbaa !25
  %242 = load i32, ptr %19, align 8, !tbaa !21
  %243 = load i32, ptr %189, align 4, !tbaa !19
  store i32 %243, ptr %187, align 8, !tbaa !18
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %35, align 8, !tbaa !30
  br label %252

247:                                              ; preds = %241
  store i32 %243, ptr %195, align 8, !tbaa !26
  %248 = load ptr, ptr %190, align 8, !tbaa !22
  store ptr %248, ptr %196, align 8, !tbaa !27
  store ptr %248, ptr %197, align 8, !tbaa !28
  br label %286

249:                                              ; preds = %213
  %250 = load i32, ptr %19, align 8, !tbaa !21
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %286, label %252

252:                                              ; preds = %249, %245, %227
  %253 = phi ptr [ null, %245 ], [ %215, %249 ], [ %215, %227 ]
  %254 = phi i32 [ %246, %245 ], [ %207, %249 ], [ %207, %227 ]
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %.loopexit37, label %256

256:                                              ; preds = %252
  %257 = tail call ptr @__errno_location() #17
  br label %258

258:                                              ; preds = %280, %256
  %259 = phi ptr [ %253, %256 ], [ %284, %280 ]
  store i32 0, ptr %257, align 4, !tbaa !31
  store i32 0, ptr %193, align 4, !tbaa !17
  %260 = load i32, ptr %35, align 8, !tbaa !30
  %261 = tail call i32 @llvm.umin.i32(i32 %260, i32 1073741824)
  %262 = zext nneg i32 %261 to i64
  %263 = load i32, ptr %194, align 4, !tbaa !32
  %264 = tail call i64 @write(i32 noundef %263, ptr noundef %259, i64 noundef %262) #15
  %265 = trunc i64 %264 to i32
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %258
  %268 = load i32, ptr %257, align 4, !tbaa !31
  %269 = icmp eq i32 %268, 11
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  store i32 1, ptr %193, align 4, !tbaa !17
  %271 = load i32, ptr %257, align 4, !tbaa !31
  br label %272

272:                                              ; preds = %270, %267
  %273 = phi i32 [ %268, %267 ], [ %271, %270 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %274) #15
  br label %.loopexit37

275:                                              ; preds = %258
  %276 = load i32, ptr %35, align 8, !tbaa !30
  %277 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %276, i32 %265), !nosanitize !33
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !33
  br i1 %278, label %279, label %280, !prof !34, !nosanitize !33

279:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

280:                                              ; preds = %275
  %281 = extractvalue { i32, i1 } %277, 0, !nosanitize !33
  store i32 %281, ptr %35, align 8, !tbaa !30
  %282 = load ptr, ptr %6, align 8, !tbaa !25
  %283 = and i64 %264, 2147483647
  %284 = getelementptr inbounds nuw i8, ptr %282, i64 %283
  store ptr %284, ptr %6, align 8, !tbaa !25
  %285 = icmp eq i32 %281, 0
  br i1 %285, label %.loopexit37, label %258, !llvm.loop !35

286:                                              ; preds = %249, %247
  %287 = load i32, ptr %198, align 8, !tbaa !37
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr %35, align 8, !tbaa !30
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %.loopexit37, label %292

292:                                              ; preds = %289
  %293 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %198, align 8, !tbaa !37
  br label %294

294:                                              ; preds = %292, %286
  %295 = load i32, ptr %195, align 8, !tbaa !26
  br label %296

296:                                              ; preds = %346, %294
  %297 = phi i32 [ %295, %294 ], [ %343, %346 ]
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %337

299:                                              ; preds = %296
  %300 = load ptr, ptr %196, align 8, !tbaa !27
  %301 = load ptr, ptr %197, align 8, !tbaa !28
  %302 = icmp ugt ptr %300, %301
  br i1 %302, label %303, label %334

303:                                              ; preds = %299
  %304 = tail call ptr @__errno_location() #17
  br label %305

305:                                              ; preds = %325, %303
  %306 = phi ptr [ %301, %303 ], [ %328, %325 ]
  %307 = phi ptr [ %300, %303 ], [ %329, %325 ]
  store i32 0, ptr %304, align 4, !tbaa !31
  store i32 0, ptr %193, align 4, !tbaa !17
  %308 = ptrtoint ptr %307 to i64
  %309 = ptrtoint ptr %306 to i64
  %310 = sub i64 %308, %309
  %311 = tail call i64 @llvm.smin.i64(i64 %310, i64 1073741824)
  %312 = and i64 %311, 4294967295
  %313 = load i32, ptr %194, align 4, !tbaa !32
  %314 = tail call i64 @write(i32 noundef %313, ptr noundef %306, i64 noundef %312) #15
  %315 = and i64 %314, 2147483648
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %325, label %317

317:                                              ; preds = %305
  %318 = load i32, ptr %304, align 4, !tbaa !31
  %319 = icmp eq i32 %318, 11
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  store i32 1, ptr %193, align 4, !tbaa !17
  %321 = load i32, ptr %304, align 4, !tbaa !31
  br label %322

322:                                              ; preds = %320, %317
  %323 = phi i32 [ %318, %317 ], [ %321, %320 ]
  %324 = tail call ptr @strerror(i32 noundef %323) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %324) #15
  br label %.loopexit37

325:                                              ; preds = %305
  %326 = load ptr, ptr %197, align 8, !tbaa !28
  %327 = and i64 %314, 2147483647
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store ptr %328, ptr %197, align 8, !tbaa !28
  %329 = load ptr, ptr %196, align 8, !tbaa !27
  %330 = icmp ugt ptr %329, %328
  br i1 %330, label %305, label %331, !llvm.loop !38

331:                                              ; preds = %325
  %332 = load i32, ptr %195, align 8, !tbaa !26
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %331, %299
  %335 = load i32, ptr %187, align 8, !tbaa !18
  store i32 %335, ptr %195, align 8, !tbaa !26
  %336 = load ptr, ptr %190, align 8, !tbaa !22
  store ptr %336, ptr %196, align 8, !tbaa !27
  store ptr %336, ptr %197, align 8, !tbaa !28
  br label %337

337:                                              ; preds = %334, %331, %296
  %338 = phi i32 [ %332, %331 ], [ %335, %334 ], [ %297, %296 ]
  %339 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %340 = icmp eq i32 %339, -2
  br i1 %340, label %341, label %342

341:                                              ; preds = %337
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit37

342:                                              ; preds = %337
  %343 = load i32, ptr %195, align 8, !tbaa !26
  %344 = icmp ult i32 %338, %343
  br i1 %344, label %345, label %346, !prof !34, !nosanitize !33

345:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

346:                                              ; preds = %342
  %347 = icmp eq i32 %338, %343
  br i1 %347, label %.loopexit37, label %296, !llvm.loop !39

.loopexit37:                                      ; preds = %280, %346, %341, %322, %289, %272, %252, %238, %232, %223
  %348 = phi i1 [ true, %272 ], [ true, %322 ], [ true, %341 ], [ false, %289 ], [ true, %223 ], [ true, %232 ], [ true, %238 ], [ false, %252 ], [ false, %346 ], [ false, %280 ]
  %349 = load i32, ptr %35, align 8, !tbaa !30
  %350 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %207, i32 %349), !nosanitize !33
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !33
  br i1 %351, label %352, label %353, !prof !34, !nosanitize !33

352:                                              ; preds = %360, %.loopexit37
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

353:                                              ; preds = %.loopexit37
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !33
  %355 = zext i32 %354 to i64
  %356 = load i64, ptr %199, align 8, !tbaa !40
  %357 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %356, i64 %355), !nosanitize !33
  %358 = extractvalue { i64, i1 } %357, 1, !nosanitize !33
  br i1 %358, label %359, label %360, !prof !34, !nosanitize !33

359:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

360:                                              ; preds = %353
  %361 = extractvalue { i64, i1 } %357, 0, !nosanitize !33
  store i64 %361, ptr %199, align 8, !tbaa !40
  %362 = load i64, ptr %31, align 8, !tbaa !29
  %363 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %362, i64 %355), !nosanitize !33
  %364 = extractvalue { i64, i1 } %363, 0, !nosanitize !33
  %365 = extractvalue { i64, i1 } %363, 1, !nosanitize !33
  br i1 %365, label %352, label %366, !prof !34, !nosanitize !33

366:                                              ; preds = %360
  store i64 %364, ptr %31, align 8, !tbaa !29
  br i1 %348, label %.loopexit39, label %367

367:                                              ; preds = %366
  %368 = icmp eq i64 %364, 0
  br i1 %368, label %.loopexit40, label %201, !llvm.loop !41

.loopexit39:                                      ; preds = %366, %180, %161, %104, %67, %60, %50
  %369 = load i32, ptr %11, align 8, !tbaa !16
  br label %484

.loopexit40:                                      ; preds = %367, %30
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %371 = load i32, ptr %370, align 8, !tbaa !18
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %482, label %373

373:                                              ; preds = %.loopexit40
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %375 = load i32, ptr %374, align 8, !tbaa !30
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %.loopexit, label %377

377:                                              ; preds = %373
  %378 = load i32, ptr %19, align 8, !tbaa !21
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %413, label %380

380:                                              ; preds = %377
  %381 = tail call ptr @__errno_location() #17
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %384 = load ptr, ptr %6, align 8, !tbaa !25
  br label %385

385:                                              ; preds = %407, %380
  %386 = phi ptr [ %384, %380 ], [ %411, %407 ]
  store i32 0, ptr %381, align 4, !tbaa !31
  store i32 0, ptr %382, align 4, !tbaa !17
  %387 = load i32, ptr %374, align 8, !tbaa !30
  %388 = tail call i32 @llvm.umin.i32(i32 %387, i32 1073741824)
  %389 = zext nneg i32 %388 to i64
  %390 = load i32, ptr %383, align 4, !tbaa !32
  %391 = tail call i64 @write(i32 noundef %390, ptr noundef %386, i64 noundef %389) #15
  %392 = trunc i64 %391 to i32
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %385
  %395 = load i32, ptr %381, align 4, !tbaa !31
  %396 = icmp eq i32 %395, 11
  br i1 %396, label %397, label %399

397:                                              ; preds = %394
  store i32 1, ptr %382, align 4, !tbaa !17
  %398 = load i32, ptr %381, align 4, !tbaa !31
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi i32 [ %395, %394 ], [ %398, %397 ]
  %401 = tail call ptr @strerror(i32 noundef %400) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %401) #15
  br label %479

402:                                              ; preds = %385
  %403 = load i32, ptr %374, align 8, !tbaa !30
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %403, i32 %392), !nosanitize !33
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !33
  br i1 %405, label %406, label %407, !prof !34, !nosanitize !33

406:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

407:                                              ; preds = %402
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !33
  store i32 %408, ptr %374, align 8, !tbaa !30
  %409 = load ptr, ptr %6, align 8, !tbaa !25
  %410 = and i64 %391, 2147483647
  %411 = getelementptr inbounds nuw i8, ptr %409, i64 %410
  store ptr %411, ptr %6, align 8, !tbaa !25
  %412 = icmp eq i32 %408, 0
  br i1 %412, label %.loopexit, label %385, !llvm.loop !35

413:                                              ; preds = %377
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %415 = load i32, ptr %414, align 8, !tbaa !37
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  %418 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %414, align 8, !tbaa !37
  br label %419

419:                                              ; preds = %417, %413
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %426 = load i32, ptr %420, align 8, !tbaa !26
  br label %427

427:                                              ; preds = %477, %419
  %428 = phi i32 [ %426, %419 ], [ %474, %477 ]
  %429 = load ptr, ptr %421, align 8, !tbaa !27
  %430 = load ptr, ptr %422, align 8, !tbaa !28
  %431 = icmp ugt ptr %429, %430
  br i1 %431, label %432, label %462

432:                                              ; preds = %427
  %433 = tail call ptr @__errno_location() #17
  br label %434

434:                                              ; preds = %454, %432
  %435 = phi ptr [ %430, %432 ], [ %457, %454 ]
  %436 = phi ptr [ %429, %432 ], [ %458, %454 ]
  store i32 0, ptr %433, align 4, !tbaa !31
  store i32 0, ptr %423, align 4, !tbaa !17
  %437 = ptrtoint ptr %436 to i64
  %438 = ptrtoint ptr %435 to i64
  %439 = sub i64 %437, %438
  %440 = tail call i64 @llvm.smin.i64(i64 %439, i64 1073741824)
  %441 = and i64 %440, 4294967295
  %442 = load i32, ptr %424, align 4, !tbaa !32
  %443 = tail call i64 @write(i32 noundef %442, ptr noundef %435, i64 noundef %441) #15
  %444 = and i64 %443, 2147483648
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %454, label %446

446:                                              ; preds = %434
  %447 = load i32, ptr %433, align 4, !tbaa !31
  %448 = icmp eq i32 %447, 11
  br i1 %448, label %449, label %451

449:                                              ; preds = %446
  store i32 1, ptr %423, align 4, !tbaa !17
  %450 = load i32, ptr %433, align 4, !tbaa !31
  br label %451

451:                                              ; preds = %449, %446
  %452 = phi i32 [ %447, %446 ], [ %450, %449 ]
  %453 = tail call ptr @strerror(i32 noundef %452) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %453) #15
  br label %479

454:                                              ; preds = %434
  %455 = load ptr, ptr %422, align 8, !tbaa !28
  %456 = and i64 %443, 2147483647
  %457 = getelementptr inbounds nuw i8, ptr %455, i64 %456
  store ptr %457, ptr %422, align 8, !tbaa !28
  %458 = load ptr, ptr %421, align 8, !tbaa !27
  %459 = icmp ugt ptr %458, %457
  br i1 %459, label %434, label %460, !llvm.loop !38

460:                                              ; preds = %454
  %461 = load i32, ptr %420, align 8, !tbaa !26
  br label %462

462:                                              ; preds = %460, %427
  %463 = phi i32 [ %461, %460 ], [ %428, %427 ]
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i32, ptr %370, align 8, !tbaa !18
  store i32 %466, ptr %420, align 8, !tbaa !26
  %467 = load ptr, ptr %425, align 8, !tbaa !22
  store ptr %467, ptr %421, align 8, !tbaa !27
  store ptr %467, ptr %422, align 8, !tbaa !28
  br label %468

468:                                              ; preds = %465, %462
  %469 = phi i32 [ %463, %462 ], [ %466, %465 ]
  %470 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %471 = icmp eq i32 %470, -2
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %479

473:                                              ; preds = %468
  %474 = load i32, ptr %420, align 8, !tbaa !26
  %475 = icmp ult i32 %469, %474
  br i1 %475, label %476, label %477, !prof !34, !nosanitize !33

476:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

477:                                              ; preds = %473
  %478 = icmp eq i32 %469, %474
  br i1 %478, label %.loopexit, label %427, !llvm.loop !39

479:                                              ; preds = %472, %451, %399
  %480 = load i32, ptr %11, align 8, !tbaa !16
  br label %484

.loopexit:                                        ; preds = %407, %477, %373
  %481 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %482

482:                                              ; preds = %.loopexit, %.loopexit40
  store i32 %1, ptr %23, align 8, !tbaa !23
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %483, align 4, !tbaa !24
  br label %484

484:                                              ; preds = %482, %479, %.loopexit39, %26, %18, %14, %5, %3
  %485 = phi i32 [ %369, %.loopexit39 ], [ %480, %479 ], [ 0, %482 ], [ -2, %3 ], [ -2, %18 ], [ -2, %14 ], [ -2, %5 ], [ 0, %26 ]
  ret i32 %485
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %538, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %538

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.loopexit42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %.loopexit43, label %16

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
  br label %.loopexit41

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
  br label %.loopexit41

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
  br label %.loopexit41

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
  br i1 %66, label %.loopexit43, label %67

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
  br label %.loopexit41

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
  br i1 %99, label %.loopexit43, label %72, !llvm.loop !35

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %102 = load i32, ptr %101, align 8, !tbaa !37
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %13, align 8, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %.loopexit43, label %107

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
  br label %.loopexit41

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
  br label %.loopexit41

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !26
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %166, label %167, !prof !34, !nosanitize !33

166:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

167:                                              ; preds = %163
  %168 = icmp eq i32 %159, %164
  br i1 %168, label %.loopexit43, label %117, !llvm.loop !39

.loopexit43:                                      ; preds = %94, %167, %104, %64, %11
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %184 = load i64, ptr %8, align 8, !tbaa !29
  br label %185

185:                                              ; preds = %351, %.loopexit43
  %186 = phi i64 [ %184, %.loopexit43 ], [ %348, %351 ]
  %187 = phi i1 [ false, %.loopexit43 ], [ true, %351 ]
  %188 = load i32, ptr %169, align 8, !tbaa !18
  %189 = zext i32 %188 to i64
  %190 = tail call i64 @llvm.smin.i64(i64 %186, i64 %189)
  %191 = trunc i64 %190 to i32
  %192 = load ptr, ptr %170, align 8, !tbaa !20
  br i1 %187, label %197, label %193

193:                                              ; preds = %185
  %194 = and i64 %190, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %192, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr %170, align 8, !tbaa !20
  %196 = load i32, ptr %169, align 8, !tbaa !18
  br label %197

197:                                              ; preds = %193, %185
  %198 = phi i32 [ %196, %193 ], [ %188, %185 ]
  %199 = phi ptr [ %195, %193 ], [ %192, %185 ]
  store i32 %191, ptr %13, align 8, !tbaa !30
  store ptr %199, ptr %12, align 8, !tbaa !25
  %200 = icmp eq i32 %198, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %197
  %202 = load i32, ptr %172, align 4, !tbaa !19
  %203 = shl i32 %202, 1
  %204 = zext i32 %203 to i64
  %205 = tail call noalias ptr @malloc(i64 noundef %204) #16
  store ptr %205, ptr %170, align 8, !tbaa !20
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit39

208:                                              ; preds = %201
  %209 = load i32, ptr %171, align 8, !tbaa !21
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  store i32 %202, ptr %169, align 8, !tbaa !18
  br label %236

212:                                              ; preds = %208
  %213 = zext i32 %202 to i64
  %214 = tail call noalias ptr @malloc(i64 noundef %213) #16
  store ptr %214, ptr %173, align 8, !tbaa !22
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  tail call void @free(ptr noundef nonnull %205) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit39

217:                                              ; preds = %212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %174, i8 0, i64 24, i1 false)
  %218 = load i32, ptr %175, align 8, !tbaa !23
  %219 = load i32, ptr %176, align 4, !tbaa !24
  %220 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %218, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %219, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load ptr, ptr %173, align 8, !tbaa !22
  tail call void @free(ptr noundef %223) #15
  %224 = load ptr, ptr %170, align 8, !tbaa !20
  tail call void @free(ptr noundef %224) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit39

225:                                              ; preds = %217
  store ptr null, ptr %12, align 8, !tbaa !25
  %226 = load i32, ptr %171, align 8, !tbaa !21
  %227 = load i32, ptr %172, align 4, !tbaa !19
  store i32 %227, ptr %169, align 8, !tbaa !18
  %228 = icmp eq i32 %226, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load i32, ptr %13, align 8, !tbaa !30
  br label %236

231:                                              ; preds = %225
  store i32 %227, ptr %179, align 8, !tbaa !26
  %232 = load ptr, ptr %173, align 8, !tbaa !22
  store ptr %232, ptr %180, align 8, !tbaa !27
  store ptr %232, ptr %181, align 8, !tbaa !28
  br label %270

233:                                              ; preds = %197
  %234 = load i32, ptr %171, align 8, !tbaa !21
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %270, label %236

236:                                              ; preds = %233, %229, %211
  %237 = phi ptr [ null, %229 ], [ %199, %233 ], [ %199, %211 ]
  %238 = phi i32 [ %230, %229 ], [ %191, %233 ], [ %191, %211 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %.loopexit39, label %240

240:                                              ; preds = %236
  %241 = tail call ptr @__errno_location() #17
  br label %242

242:                                              ; preds = %264, %240
  %243 = phi ptr [ %237, %240 ], [ %268, %264 ]
  store i32 0, ptr %241, align 4, !tbaa !31
  store i32 0, ptr %177, align 4, !tbaa !17
  %244 = load i32, ptr %13, align 8, !tbaa !30
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = zext nneg i32 %245 to i64
  %247 = load i32, ptr %178, align 4, !tbaa !32
  %248 = tail call i64 @write(i32 noundef %247, ptr noundef %243, i64 noundef %246) #15
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %242
  %252 = load i32, ptr %241, align 4, !tbaa !31
  %253 = icmp eq i32 %252, 11
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  store i32 1, ptr %177, align 4, !tbaa !17
  %255 = load i32, ptr %241, align 4, !tbaa !31
  br label %256

256:                                              ; preds = %254, %251
  %257 = phi i32 [ %252, %251 ], [ %255, %254 ]
  %258 = tail call ptr @strerror(i32 noundef %257) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %258) #15
  br label %.loopexit39

259:                                              ; preds = %242
  %260 = load i32, ptr %13, align 8, !tbaa !30
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %249), !nosanitize !33
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !33
  br i1 %262, label %263, label %264, !prof !34, !nosanitize !33

263:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

264:                                              ; preds = %259
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !33
  store i32 %265, ptr %13, align 8, !tbaa !30
  %266 = load ptr, ptr %12, align 8, !tbaa !25
  %267 = and i64 %248, 2147483647
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 %267
  store ptr %268, ptr %12, align 8, !tbaa !25
  %269 = icmp eq i32 %265, 0
  br i1 %269, label %.loopexit39, label %242, !llvm.loop !35

270:                                              ; preds = %233, %231
  %271 = load i32, ptr %182, align 8, !tbaa !37
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %13, align 8, !tbaa !30
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %.loopexit39, label %276

276:                                              ; preds = %273
  %277 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %182, align 8, !tbaa !37
  br label %278

278:                                              ; preds = %276, %270
  %279 = load i32, ptr %179, align 8, !tbaa !26
  br label %280

280:                                              ; preds = %330, %278
  %281 = phi i32 [ %279, %278 ], [ %327, %330 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %321

283:                                              ; preds = %280
  %284 = load ptr, ptr %180, align 8, !tbaa !27
  %285 = load ptr, ptr %181, align 8, !tbaa !28
  %286 = icmp ugt ptr %284, %285
  br i1 %286, label %287, label %318

287:                                              ; preds = %283
  %288 = tail call ptr @__errno_location() #17
  br label %289

289:                                              ; preds = %309, %287
  %290 = phi ptr [ %285, %287 ], [ %312, %309 ]
  %291 = phi ptr [ %284, %287 ], [ %313, %309 ]
  store i32 0, ptr %288, align 4, !tbaa !31
  store i32 0, ptr %177, align 4, !tbaa !17
  %292 = ptrtoint ptr %291 to i64
  %293 = ptrtoint ptr %290 to i64
  %294 = sub i64 %292, %293
  %295 = tail call i64 @llvm.smin.i64(i64 %294, i64 1073741824)
  %296 = and i64 %295, 4294967295
  %297 = load i32, ptr %178, align 4, !tbaa !32
  %298 = tail call i64 @write(i32 noundef %297, ptr noundef %290, i64 noundef %296) #15
  %299 = and i64 %298, 2147483648
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %309, label %301

301:                                              ; preds = %289
  %302 = load i32, ptr %288, align 4, !tbaa !31
  %303 = icmp eq i32 %302, 11
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  store i32 1, ptr %177, align 4, !tbaa !17
  %305 = load i32, ptr %288, align 4, !tbaa !31
  br label %306

306:                                              ; preds = %304, %301
  %307 = phi i32 [ %302, %301 ], [ %305, %304 ]
  %308 = tail call ptr @strerror(i32 noundef %307) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %308) #15
  br label %.loopexit39

309:                                              ; preds = %289
  %310 = load ptr, ptr %181, align 8, !tbaa !28
  %311 = and i64 %298, 2147483647
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %181, align 8, !tbaa !28
  %313 = load ptr, ptr %180, align 8, !tbaa !27
  %314 = icmp ugt ptr %313, %312
  br i1 %314, label %289, label %315, !llvm.loop !38

315:                                              ; preds = %309
  %316 = load i32, ptr %179, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315, %283
  %319 = load i32, ptr %169, align 8, !tbaa !18
  store i32 %319, ptr %179, align 8, !tbaa !26
  %320 = load ptr, ptr %173, align 8, !tbaa !22
  store ptr %320, ptr %180, align 8, !tbaa !27
  store ptr %320, ptr %181, align 8, !tbaa !28
  br label %321

321:                                              ; preds = %318, %315, %280
  %322 = phi i32 [ %316, %315 ], [ %319, %318 ], [ %281, %280 ]
  %323 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %324 = icmp eq i32 %323, -2
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit39

326:                                              ; preds = %321
  %327 = load i32, ptr %179, align 8, !tbaa !26
  %328 = icmp ult i32 %322, %327
  br i1 %328, label %329, label %330, !prof !34, !nosanitize !33

329:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

330:                                              ; preds = %326
  %331 = icmp eq i32 %322, %327
  br i1 %331, label %.loopexit39, label %280, !llvm.loop !39

.loopexit39:                                      ; preds = %264, %330, %325, %306, %273, %256, %236, %222, %216, %207
  %332 = phi i1 [ true, %256 ], [ true, %306 ], [ true, %325 ], [ false, %273 ], [ true, %207 ], [ true, %216 ], [ true, %222 ], [ false, %236 ], [ false, %330 ], [ false, %264 ]
  %333 = load i32, ptr %13, align 8, !tbaa !30
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %191, i32 %333), !nosanitize !33
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !33
  br i1 %335, label %336, label %337, !prof !34, !nosanitize !33

336:                                              ; preds = %344, %.loopexit39
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

337:                                              ; preds = %.loopexit39
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !33
  %339 = zext i32 %338 to i64
  %340 = load i64, ptr %183, align 8, !tbaa !40
  %341 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %340, i64 %339), !nosanitize !33
  %342 = extractvalue { i64, i1 } %341, 1, !nosanitize !33
  br i1 %342, label %343, label %344, !prof !34, !nosanitize !33

343:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !33
  unreachable, !nosanitize !33

344:                                              ; preds = %337
  %345 = extractvalue { i64, i1 } %341, 0, !nosanitize !33
  store i64 %345, ptr %183, align 8, !tbaa !40
  %346 = load i64, ptr %8, align 8, !tbaa !29
  %347 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %346, i64 %339), !nosanitize !33
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !33
  %349 = extractvalue { i64, i1 } %347, 1, !nosanitize !33
  br i1 %349, label %336, label %350, !prof !34, !nosanitize !33

350:                                              ; preds = %344
  store i64 %348, ptr %8, align 8, !tbaa !29
  br i1 %332, label %.loopexit41, label %351

351:                                              ; preds = %350
  %352 = icmp eq i64 %348, 0
  br i1 %352, label %.loopexit42, label %185, !llvm.loop !41

.loopexit41:                                      ; preds = %350, %162, %143, %86, %48, %39, %28
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %354 = load i32, ptr %353, align 8, !tbaa !16
  br label %.loopexit42

.loopexit42:                                      ; preds = %351, %.loopexit41, %7
  %355 = phi i32 [ %354, %.loopexit41 ], [ 0, %7 ], [ 0, %351 ]
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %358 = load i32, ptr %357, align 8, !tbaa !18
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %400

360:                                              ; preds = %.loopexit42
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %362 = load i32, ptr %361, align 4, !tbaa !19
  %363 = shl i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = tail call noalias ptr @malloc(i64 noundef %364) #16
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %365, ptr %366, align 8, !tbaa !20
  %367 = icmp eq ptr %365, null
  br i1 %367, label %368, label %369

368:                                              ; preds = %360
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %513

369:                                              ; preds = %360
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %371 = load i32, ptr %370, align 8, !tbaa !21
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  store i32 %362, ptr %357, align 8, !tbaa !18
  br label %404

374:                                              ; preds = %369
  %375 = zext i32 %362 to i64
  %376 = tail call noalias ptr @malloc(i64 noundef %375) #16
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %376, ptr %377, align 8, !tbaa !22
  %378 = icmp eq ptr %376, null
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  tail call void @free(ptr noundef nonnull %365) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %513

380:                                              ; preds = %374
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %381, i8 0, i64 24, i1 false)
  %383 = load i32, ptr %382, align 8, !tbaa !23
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %385 = load i32, ptr %384, align 4, !tbaa !24
  %386 = tail call i32 @deflateInit2_(ptr noundef nonnull %356, i32 noundef %383, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %385, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %380
  %389 = load ptr, ptr %377, align 8, !tbaa !22
  tail call void @free(ptr noundef %389) #15
  %390 = load ptr, ptr %366, align 8, !tbaa !20
  tail call void @free(ptr noundef %390) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %513

391:                                              ; preds = %380
  store ptr null, ptr %356, align 8, !tbaa !25
  %392 = load i32, ptr %370, align 8, !tbaa !21
  %393 = load i32, ptr %361, align 4, !tbaa !19
  store i32 %393, ptr %357, align 8, !tbaa !18
  %394 = icmp eq i32 %392, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %391
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %393, ptr %396, align 8, !tbaa !26
  %397 = load ptr, ptr %377, align 8, !tbaa !22
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %397, ptr %398, align 8, !tbaa !27
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %397, ptr %399, align 8, !tbaa !28
  br label %441

400:                                              ; preds = %.loopexit42
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %402 = load i32, ptr %401, align 8, !tbaa !21
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %441, label %404

404:                                              ; preds = %400, %391, %373
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %406 = load i32, ptr %405, align 8, !tbaa !30
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %.loopexit, label %408

408:                                              ; preds = %404
  %409 = tail call ptr @__errno_location() #17
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %412 = load ptr, ptr %356, align 8, !tbaa !25
  br label %413

413:                                              ; preds = %435, %408
  %414 = phi ptr [ %412, %408 ], [ %439, %435 ]
  store i32 0, ptr %409, align 4, !tbaa !31
  store i32 0, ptr %410, align 4, !tbaa !17
  %415 = load i32, ptr %405, align 8, !tbaa !30
  %416 = tail call i32 @llvm.umin.i32(i32 %415, i32 1073741824)
  %417 = zext nneg i32 %416 to i64
  %418 = load i32, ptr %411, align 4, !tbaa !32
  %419 = tail call i64 @write(i32 noundef %418, ptr noundef %414, i64 noundef %417) #15
  %420 = trunc i64 %419 to i32
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %413
  %423 = load i32, ptr %409, align 4, !tbaa !31
  %424 = icmp eq i32 %423, 11
  br i1 %424, label %425, label %427

425:                                              ; preds = %422
  store i32 1, ptr %410, align 4, !tbaa !17
  %426 = load i32, ptr %409, align 4, !tbaa !31
  br label %427

427:                                              ; preds = %425, %422
  %428 = phi i32 [ %423, %422 ], [ %426, %425 ]
  %429 = tail call ptr @strerror(i32 noundef %428) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %429) #15
  br label %513

430:                                              ; preds = %413
  %431 = load i32, ptr %405, align 8, !tbaa !30
  %432 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %431, i32 %420), !nosanitize !33
  %433 = extractvalue { i32, i1 } %432, 1, !nosanitize !33
  br i1 %433, label %434, label %435, !prof !34, !nosanitize !33

434:                                              ; preds = %430
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

435:                                              ; preds = %430
  %436 = extractvalue { i32, i1 } %432, 0, !nosanitize !33
  store i32 %436, ptr %405, align 8, !tbaa !30
  %437 = load ptr, ptr %356, align 8, !tbaa !25
  %438 = and i64 %419, 2147483647
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 %438
  store ptr %439, ptr %356, align 8, !tbaa !25
  %440 = icmp eq i32 %436, 0
  br i1 %440, label %.loopexit, label %413, !llvm.loop !35

441:                                              ; preds = %400, %395
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %443 = load i32, ptr %442, align 8, !tbaa !37
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %441
  %446 = tail call i32 @deflateReset(ptr noundef nonnull %356) #15
  store i32 0, ptr %442, align 8, !tbaa !37
  br label %447

447:                                              ; preds = %445, %441
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %454 = load i32, ptr %448, align 8, !tbaa !26
  br label %455

455:                                              ; preds = %510, %447
  %456 = phi i32 [ %454, %447 ], [ %507, %510 ]
  %457 = phi i32 [ 0, %447 ], [ %503, %510 ]
  %458 = icmp eq i32 %456, 0
  %459 = icmp eq i32 %457, 1
  %460 = or i1 %458, %459
  br i1 %460, label %461, label %501

461:                                              ; preds = %455
  %462 = load ptr, ptr %449, align 8, !tbaa !27
  %463 = load ptr, ptr %450, align 8, !tbaa !28
  %464 = icmp ugt ptr %462, %463
  br i1 %464, label %465, label %495

465:                                              ; preds = %461
  %466 = tail call ptr @__errno_location() #17
  br label %467

467:                                              ; preds = %487, %465
  %468 = phi ptr [ %463, %465 ], [ %490, %487 ]
  %469 = phi ptr [ %462, %465 ], [ %491, %487 ]
  store i32 0, ptr %466, align 4, !tbaa !31
  store i32 0, ptr %451, align 4, !tbaa !17
  %470 = ptrtoint ptr %469 to i64
  %471 = ptrtoint ptr %468 to i64
  %472 = sub i64 %470, %471
  %473 = tail call i64 @llvm.smin.i64(i64 %472, i64 1073741824)
  %474 = and i64 %473, 4294967295
  %475 = load i32, ptr %452, align 4, !tbaa !32
  %476 = tail call i64 @write(i32 noundef %475, ptr noundef %468, i64 noundef %474) #15
  %477 = and i64 %476, 2147483648
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %487, label %479

479:                                              ; preds = %467
  %480 = load i32, ptr %466, align 4, !tbaa !31
  %481 = icmp eq i32 %480, 11
  br i1 %481, label %482, label %484

482:                                              ; preds = %479
  store i32 1, ptr %451, align 4, !tbaa !17
  %483 = load i32, ptr %466, align 4, !tbaa !31
  br label %484

484:                                              ; preds = %482, %479
  %485 = phi i32 [ %480, %479 ], [ %483, %482 ]
  %486 = tail call ptr @strerror(i32 noundef %485) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %486) #15
  br label %513

487:                                              ; preds = %467
  %488 = load ptr, ptr %450, align 8, !tbaa !28
  %489 = and i64 %476, 2147483647
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 %489
  store ptr %490, ptr %450, align 8, !tbaa !28
  %491 = load ptr, ptr %449, align 8, !tbaa !27
  %492 = icmp ugt ptr %491, %490
  br i1 %492, label %467, label %493, !llvm.loop !38

493:                                              ; preds = %487
  %494 = load i32, ptr %448, align 8, !tbaa !26
  br label %495

495:                                              ; preds = %493, %461
  %496 = phi i32 [ %494, %493 ], [ %456, %461 ]
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %495
  %499 = load i32, ptr %357, align 8, !tbaa !18
  store i32 %499, ptr %448, align 8, !tbaa !26
  %500 = load ptr, ptr %453, align 8, !tbaa !22
  store ptr %500, ptr %449, align 8, !tbaa !27
  store ptr %500, ptr %450, align 8, !tbaa !28
  br label %501

501:                                              ; preds = %498, %495, %455
  %502 = phi i32 [ %496, %495 ], [ %499, %498 ], [ %456, %455 ]
  %503 = tail call i32 @deflate(ptr noundef nonnull %356, i32 noundef 4) #15
  %504 = icmp eq i32 %503, -2
  br i1 %504, label %505, label %506

505:                                              ; preds = %501
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %513

506:                                              ; preds = %501
  %507 = load i32, ptr %448, align 8, !tbaa !26
  %508 = icmp ult i32 %502, %507
  br i1 %508, label %509, label %510, !prof !34, !nosanitize !33

509:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !33
  unreachable, !nosanitize !33

510:                                              ; preds = %506
  %511 = icmp eq i32 %502, %507
  br i1 %511, label %512, label %455, !llvm.loop !39

512:                                              ; preds = %510
  store i32 1, ptr %442, align 8, !tbaa !37
  br label %.loopexit

513:                                              ; preds = %505, %484, %427, %388, %379, %368
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %515 = load i32, ptr %514, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %435, %513, %512, %404
  %516 = phi i32 [ %515, %513 ], [ %355, %404 ], [ %355, %512 ], [ %355, %435 ]
  %517 = load i32, ptr %357, align 8, !tbaa !18
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %530, label %519

519:                                              ; preds = %.loopexit
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %521 = load i32, ptr %520, align 8, !tbaa !21
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %519
  %524 = tail call i32 @deflateEnd(ptr noundef nonnull %356) #15
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %526 = load ptr, ptr %525, align 8, !tbaa !22
  tail call void @free(ptr noundef %526) #15
  br label %527

527:                                              ; preds = %523, %519
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %529 = load ptr, ptr %528, align 8, !tbaa !20
  tail call void @free(ptr noundef %529) #15
  br label %530

530:                                              ; preds = %527, %.loopexit
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %532 = load ptr, ptr %531, align 8, !tbaa !46
  tail call void @free(ptr noundef %532) #15
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %534 = load i32, ptr %533, align 4, !tbaa !32
  %535 = tail call i32 @close(i32 noundef %534) #15
  %536 = icmp eq i32 %535, -1
  %537 = select i1 %536, i32 -1, i32 %516
  tail call void @free(ptr noundef nonnull %0) #15
  br label %538

538:                                              ; preds = %530, %3, %1
  %539 = phi i32 [ %537, %530 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %539
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #1

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
