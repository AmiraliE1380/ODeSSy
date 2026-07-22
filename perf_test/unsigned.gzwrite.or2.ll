; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.gzwrite.or.ll'
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
  br i1 %4, label %937, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %937

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %937, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %937

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %.loopexit68, label %23

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
  br label %.loopexit68

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
  br label %.loopexit68

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
  br label %.loopexit68

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
  br i1 %73, label %408, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit77, label %79

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
  br label %.loopexit68

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
  br label %.loopexit68

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
  br label %.loopexit68

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
  br label %162

122:                                              ; preds = %79
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %124 = load i32, ptr %123, align 8, !tbaa !21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %162, label %126

126:                                              ; preds = %122, %113, %95
  %127 = load i32, ptr %76, align 8, !tbaa !30
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %.loopexit77, label %129

129:                                              ; preds = %126
  %130 = tail call ptr @__errno_location() #17
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %133 = load ptr, ptr %75, align 8, !tbaa !25
  br label %134

134:                                              ; preds = %156, %129
  %135 = phi ptr [ %133, %129 ], [ %160, %156 ]
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
  br label %.loopexit68

151:                                              ; preds = %134
  %152 = load i32, ptr %76, align 8, !tbaa !30
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %152, i32 %141), !nosanitize !32
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !32
  br i1 %154, label %155, label %156, !prof !33, !nosanitize !32

155:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

156:                                              ; preds = %151
  %157 = extractvalue { i32, i1 } %153, 0, !nosanitize !32
  store i32 %157, ptr %76, align 8, !tbaa !30
  %158 = load ptr, ptr %75, align 8, !tbaa !25
  %159 = and i64 %140, 2147483647
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store ptr %160, ptr %75, align 8, !tbaa !25
  %161 = icmp eq i32 %157, 0
  br i1 %161, label %.loopexit77, label %134, !llvm.loop !34

162:                                              ; preds = %122, %117
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %164 = load i32, ptr %163, align 8, !tbaa !36
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %76, align 8, !tbaa !30
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %.loopexit77, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @deflateReset(ptr noundef nonnull %75) #15
  store i32 0, ptr %163, align 8, !tbaa !36
  br label %171

171:                                              ; preds = %169, %162
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %178 = load i32, ptr %172, align 8, !tbaa !26
  br label %179

179:                                              ; preds = %229, %171
  %180 = phi i32 [ %178, %171 ], [ %226, %229 ]
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %207) #15
  br label %.loopexit68

208:                                              ; preds = %188
  %209 = load ptr, ptr %174, align 8, !tbaa !28
  %210 = and i64 %197, 2147483647
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  store ptr %211, ptr %174, align 8, !tbaa !28
  %212 = load ptr, ptr %173, align 8, !tbaa !27
  %213 = icmp ugt ptr %212, %211
  br i1 %213, label %188, label %214, !llvm.loop !37

214:                                              ; preds = %208
  %215 = load i32, ptr %172, align 8, !tbaa !26
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214, %182
  %218 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %218, ptr %172, align 8, !tbaa !26
  %219 = load ptr, ptr %177, align 8, !tbaa !22
  store ptr %219, ptr %173, align 8, !tbaa !27
  store ptr %219, ptr %174, align 8, !tbaa !28
  br label %220

220:                                              ; preds = %217, %214, %179
  %221 = phi i32 [ %215, %214 ], [ %218, %217 ], [ %180, %179 ]
  %222 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #15
  %223 = icmp eq i32 %222, -2
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit68

225:                                              ; preds = %220
  %226 = load i32, ptr %172, align 8, !tbaa !26
  %227 = icmp ult i32 %221, %226
  br i1 %227, label %228, label %229, !prof !33, !nosanitize !32

228:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

229:                                              ; preds = %225
  %230 = icmp eq i32 %221, %226
  br i1 %230, label %.loopexit77, label %179, !llvm.loop !38

.loopexit77:                                      ; preds = %156, %229, %166, %126, %74
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %245 = load i64, ptr %71, align 8, !tbaa !29
  br label %246

246:                                              ; preds = %404, %.loopexit77
  %247 = phi i64 [ %245, %.loopexit77 ], [ %403, %404 ]
  %248 = phi i1 [ false, %.loopexit77 ], [ true, %404 ]
  %249 = load i32, ptr %24, align 8, !tbaa !18
  %250 = zext i32 %249 to i64
  %251 = tail call i64 @llvm.smin.i64(i64 %247, i64 %250)
  %252 = trunc i64 %251 to i32
  %253 = load ptr, ptr %231, align 8, !tbaa !20
  br i1 %248, label %258, label %254

254:                                              ; preds = %246
  %255 = and i64 %251, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %253, i8 0, i64 %255, i1 false)
  %256 = load ptr, ptr %231, align 8, !tbaa !20
  %257 = load i32, ptr %24, align 8, !tbaa !18
  br label %258

258:                                              ; preds = %254, %246
  %259 = phi i32 [ %257, %254 ], [ %249, %246 ]
  %260 = phi ptr [ %256, %254 ], [ %253, %246 ]
  store i32 %252, ptr %76, align 8, !tbaa !30
  store ptr %260, ptr %75, align 8, !tbaa !25
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %262, label %293

262:                                              ; preds = %258
  %263 = load i32, ptr %233, align 4, !tbaa !19
  %264 = shl i32 %263, 1
  %265 = zext i32 %264 to i64
  %266 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %266, ptr %231, align 8, !tbaa !20
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

269:                                              ; preds = %262
  %270 = load i32, ptr %232, align 8, !tbaa !21
  %271 = icmp eq i32 %270, 0
  %272 = load i32, ptr %233, align 4, !tbaa !19
  br i1 %271, label %274, label %273

273:                                              ; preds = %269
  store i32 %272, ptr %24, align 8, !tbaa !18
  br label %296

274:                                              ; preds = %269
  %275 = zext i32 %272 to i64
  %276 = tail call noalias ptr @malloc(i64 noundef %275) #16
  store ptr %276, ptr %234, align 8, !tbaa !22
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  tail call void @free(ptr noundef nonnull %266) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

279:                                              ; preds = %274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %235, i8 0, i64 24, i1 false)
  %280 = load i32, ptr %236, align 8, !tbaa !23
  %281 = load i32, ptr %237, align 4, !tbaa !24
  %282 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %280, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %281, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr %234, align 8, !tbaa !22
  tail call void @free(ptr noundef %285) #15
  %286 = load ptr, ptr %231, align 8, !tbaa !20
  tail call void @free(ptr noundef %286) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

287:                                              ; preds = %279
  store ptr null, ptr %75, align 8, !tbaa !25
  %288 = load i32, ptr %232, align 8, !tbaa !21
  %289 = load i32, ptr %233, align 4, !tbaa !19
  store i32 %289, ptr %24, align 8, !tbaa !18
  %290 = icmp eq i32 %288, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %287
  store i32 %289, ptr %240, align 8, !tbaa !26
  %292 = load ptr, ptr %234, align 8, !tbaa !22
  store ptr %292, ptr %241, align 8, !tbaa !27
  store ptr %292, ptr %242, align 8, !tbaa !28
  br label %330

293:                                              ; preds = %258
  %294 = load i32, ptr %232, align 8, !tbaa !21
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %330, label %296

296:                                              ; preds = %293, %287, %273
  %297 = phi ptr [ %260, %293 ], [ null, %287 ], [ %260, %273 ]
  %298 = load i32, ptr %76, align 8, !tbaa !30
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %.loopexit74, label %300

300:                                              ; preds = %296
  %301 = tail call ptr @__errno_location() #17
  br label %302

302:                                              ; preds = %324, %300
  %303 = phi ptr [ %297, %300 ], [ %328, %324 ]
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %238, align 4, !tbaa !17
  %304 = load i32, ptr %76, align 8, !tbaa !30
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = zext nneg i32 %305 to i64
  %307 = load i32, ptr %239, align 4, !tbaa !31
  %308 = tail call i64 @write(i32 noundef %307, ptr noundef %303, i64 noundef %306) #15
  %309 = trunc i64 %308 to i32
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %302
  %312 = load i32, ptr %301, align 4, !tbaa !4
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  store i32 1, ptr %238, align 4, !tbaa !17
  %315 = load i32, ptr %301, align 4, !tbaa !4
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %314 ]
  %318 = tail call ptr @strerror(i32 noundef %317) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %318) #15
  br label %.loopexit74

319:                                              ; preds = %302
  %320 = load i32, ptr %76, align 8, !tbaa !30
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %309), !nosanitize !32
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !32
  br i1 %322, label %323, label %324, !prof !33, !nosanitize !32

323:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

324:                                              ; preds = %319
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !32
  store i32 %325, ptr %76, align 8, !tbaa !30
  %326 = load ptr, ptr %75, align 8, !tbaa !25
  %327 = and i64 %308, 2147483647
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store ptr %328, ptr %75, align 8, !tbaa !25
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %.loopexit74, label %302, !llvm.loop !34

330:                                              ; preds = %293, %291
  %331 = load i32, ptr %243, align 8, !tbaa !36
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %76, align 8, !tbaa !30
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %.loopexit74, label %336

336:                                              ; preds = %333
  %337 = tail call i32 @deflateReset(ptr noundef nonnull %75) #15
  store i32 0, ptr %243, align 8, !tbaa !36
  br label %338

338:                                              ; preds = %336, %330
  %339 = load i32, ptr %240, align 8, !tbaa !26
  br label %340

340:                                              ; preds = %390, %338
  %341 = phi i32 [ %339, %338 ], [ %387, %390 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %381

343:                                              ; preds = %340
  %344 = load ptr, ptr %241, align 8, !tbaa !27
  %345 = load ptr, ptr %242, align 8, !tbaa !28
  %346 = icmp ugt ptr %344, %345
  br i1 %346, label %347, label %378

347:                                              ; preds = %343
  %348 = tail call ptr @__errno_location() #17
  br label %349

349:                                              ; preds = %369, %347
  %350 = phi ptr [ %345, %347 ], [ %372, %369 ]
  %351 = phi ptr [ %344, %347 ], [ %373, %369 ]
  store i32 0, ptr %348, align 4, !tbaa !4
  store i32 0, ptr %238, align 4, !tbaa !17
  %352 = ptrtoint ptr %351 to i64
  %353 = ptrtoint ptr %350 to i64
  %354 = sub i64 %352, %353
  %355 = tail call i64 @llvm.smin.i64(i64 %354, i64 1073741824)
  %356 = and i64 %355, 4294967295
  %357 = load i32, ptr %239, align 4, !tbaa !31
  %358 = tail call i64 @write(i32 noundef %357, ptr noundef %350, i64 noundef %356) #15
  %359 = and i64 %358, 2147483648
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %349
  %362 = load i32, ptr %348, align 4, !tbaa !4
  %363 = icmp eq i32 %362, 11
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  store i32 1, ptr %238, align 4, !tbaa !17
  %365 = load i32, ptr %348, align 4, !tbaa !4
  br label %366

366:                                              ; preds = %364, %361
  %367 = phi i32 [ %362, %361 ], [ %365, %364 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #15
  br label %.loopexit74

369:                                              ; preds = %349
  %370 = load ptr, ptr %242, align 8, !tbaa !28
  %371 = and i64 %358, 2147483647
  %372 = getelementptr inbounds nuw i8, ptr %370, i64 %371
  store ptr %372, ptr %242, align 8, !tbaa !28
  %373 = load ptr, ptr %241, align 8, !tbaa !27
  %374 = icmp ugt ptr %373, %372
  br i1 %374, label %349, label %375, !llvm.loop !37

375:                                              ; preds = %369
  %376 = load i32, ptr %240, align 8, !tbaa !26
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375, %343
  %379 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %379, ptr %240, align 8, !tbaa !26
  %380 = load ptr, ptr %234, align 8, !tbaa !22
  store ptr %380, ptr %241, align 8, !tbaa !27
  store ptr %380, ptr %242, align 8, !tbaa !28
  br label %381

381:                                              ; preds = %378, %375, %340
  %382 = phi i32 [ %376, %375 ], [ %379, %378 ], [ %341, %340 ]
  %383 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #15
  %384 = icmp eq i32 %383, -2
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit74

386:                                              ; preds = %381
  %387 = load i32, ptr %240, align 8, !tbaa !26
  %388 = icmp ult i32 %382, %387
  br i1 %388, label %389, label %390, !prof !33, !nosanitize !32

389:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

390:                                              ; preds = %386
  %391 = icmp eq i32 %382, %387
  br i1 %391, label %.loopexit74, label %340, !llvm.loop !38

.loopexit74:                                      ; preds = %324, %390, %385, %366, %333, %316, %296, %284, %278, %268
  %392 = phi i1 [ false, %333 ], [ true, %316 ], [ false, %296 ], [ true, %278 ], [ true, %366 ], [ true, %385 ], [ false, %390 ], [ true, %268 ], [ true, %284 ], [ false, %324 ]
  %393 = load i32, ptr %76, align 8, !tbaa !30
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %252, i32 %393), !nosanitize !32
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !32
  br i1 %395, label %396, label %397, !prof !33, !nosanitize !32

396:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

397:                                              ; preds = %.loopexit74
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !32
  %399 = zext i32 %398 to i64
  %400 = load i64, ptr %244, align 8, !tbaa !39
  %401 = add nsw i64 %400, %399
  store i64 %401, ptr %244, align 8, !tbaa !39
  %402 = load i64, ptr %71, align 8, !tbaa !29
  %403 = sub nsw i64 %402, %399
  store i64 %403, ptr %71, align 8, !tbaa !29
  br i1 %392, label %.loopexit68, label %404

404:                                              ; preds = %397
  %405 = icmp eq i64 %402, %399
  br i1 %405, label %406, label %246, !llvm.loop !40

406:                                              ; preds = %404
  %407 = load i32, ptr %24, align 8, !tbaa !18
  br label %408

408:                                              ; preds = %406, %69
  %409 = phi i32 [ %407, %406 ], [ %70, %69 ]
  %410 = icmp ult i32 %2, %409
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %410, label %413, label %609

413:                                              ; preds = %408
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %413
  %428 = phi i64 [ %21, %413 ], [ %466, %.loopexit.backedge ]
  %429 = phi ptr [ %1, %413 ], [ %465, %.loopexit.backedge ]
  %430 = load i32, ptr %412, align 8, !tbaa !41
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %.loopexit
  %433 = load ptr, ptr %411, align 8, !tbaa !42
  %434 = load ptr, ptr %414, align 8, !tbaa !20
  br label %437

435:                                              ; preds = %.loopexit
  %436 = load ptr, ptr %414, align 8, !tbaa !20
  store ptr %436, ptr %411, align 8, !tbaa !42
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi ptr [ %434, %432 ], [ %436, %435 ]
  %439 = phi ptr [ %433, %432 ], [ %436, %435 ]
  %440 = zext i32 %430 to i64
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  %442 = ptrtoint ptr %441 to i64
  %443 = ptrtoint ptr %438 to i64
  %444 = sub i64 %442, %443
  %445 = trunc i64 %444 to i32
  %446 = load i32, ptr %24, align 8, !tbaa !18
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 %445), !nosanitize !32
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !32
  br i1 %448, label %449, label %450, !prof !33, !nosanitize !32

449:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

450:                                              ; preds = %437
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !32
  %452 = zext i32 %451 to i64
  %453 = tail call i64 @llvm.umin.i64(i64 %428, i64 %452)
  %454 = trunc nuw i64 %453 to i32
  %455 = and i64 %444, 4294967295
  %456 = getelementptr inbounds nuw i8, ptr %438, i64 %455
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %456, ptr align 1 %429, i64 %453, i1 false)
  %457 = load i32, ptr %412, align 8, !tbaa !41
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 %454), !nosanitize !32
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !32
  br i1 %459, label %460, label %461, !prof !33, !nosanitize !32

460:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

461:                                              ; preds = %450
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !32
  store i32 %462, ptr %412, align 8, !tbaa !41
  %463 = load i64, ptr %415, align 8, !tbaa !39
  %464 = add nsw i64 %463, %453
  store i64 %464, ptr %415, align 8, !tbaa !39
  %465 = getelementptr inbounds nuw i8, ptr %429, i64 %453
  %466 = sub i64 %428, %453
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %.loopexit68, label %468

468:                                              ; preds = %461
  %469 = load i32, ptr %24, align 8, !tbaa !18
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %502

471:                                              ; preds = %468
  %472 = load i32, ptr %417, align 4, !tbaa !19
  %473 = shl i32 %472, 1
  %474 = zext i32 %473 to i64
  %475 = tail call noalias ptr @malloc(i64 noundef %474) #16
  store ptr %475, ptr %414, align 8, !tbaa !20
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %478

477:                                              ; preds = %471
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

478:                                              ; preds = %471
  %479 = load i32, ptr %416, align 8, !tbaa !21
  %480 = icmp eq i32 %479, 0
  %481 = load i32, ptr %417, align 4, !tbaa !19
  br i1 %480, label %483, label %482

482:                                              ; preds = %478
  store i32 %481, ptr %24, align 8, !tbaa !18
  br label %505

483:                                              ; preds = %478
  %484 = zext i32 %481 to i64
  %485 = tail call noalias ptr @malloc(i64 noundef %484) #16
  store ptr %485, ptr %418, align 8, !tbaa !22
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  tail call void @free(ptr noundef nonnull %475) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

488:                                              ; preds = %483
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %419, i8 0, i64 24, i1 false)
  %489 = load i32, ptr %420, align 8, !tbaa !23
  %490 = load i32, ptr %421, align 4, !tbaa !24
  %491 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %489, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %490, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %488
  %494 = load ptr, ptr %418, align 8, !tbaa !22
  tail call void @free(ptr noundef %494) #15
  %495 = load ptr, ptr %414, align 8, !tbaa !20
  tail call void @free(ptr noundef %495) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

496:                                              ; preds = %488
  store ptr null, ptr %411, align 8, !tbaa !25
  %497 = load i32, ptr %416, align 8, !tbaa !21
  %498 = load i32, ptr %417, align 4, !tbaa !19
  store i32 %498, ptr %24, align 8, !tbaa !18
  %499 = icmp eq i32 %497, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %496
  store i32 %498, ptr %424, align 8, !tbaa !26
  %501 = load ptr, ptr %418, align 8, !tbaa !22
  store ptr %501, ptr %425, align 8, !tbaa !27
  store ptr %501, ptr %426, align 8, !tbaa !28
  br label %539

502:                                              ; preds = %468
  %503 = load i32, ptr %416, align 8, !tbaa !21
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %539, label %505

505:                                              ; preds = %502, %496, %482
  %506 = load i32, ptr %412, align 8, !tbaa !30
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %.loopexit.backedge, label %508

508:                                              ; preds = %505
  %509 = tail call ptr @__errno_location() #17
  %510 = load ptr, ptr %411, align 8, !tbaa !25
  br label %511

511:                                              ; preds = %533, %508
  %512 = phi ptr [ %510, %508 ], [ %537, %533 ]
  store i32 0, ptr %509, align 4, !tbaa !4
  store i32 0, ptr %422, align 4, !tbaa !17
  %513 = load i32, ptr %412, align 8, !tbaa !30
  %514 = tail call i32 @llvm.umin.i32(i32 %513, i32 1073741824)
  %515 = zext nneg i32 %514 to i64
  %516 = load i32, ptr %423, align 4, !tbaa !31
  %517 = tail call i64 @write(i32 noundef %516, ptr noundef %512, i64 noundef %515) #15
  %518 = trunc i64 %517 to i32
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %511
  %521 = load i32, ptr %509, align 4, !tbaa !4
  %522 = icmp eq i32 %521, 11
  br i1 %522, label %523, label %525

523:                                              ; preds = %520
  store i32 1, ptr %422, align 4, !tbaa !17
  %524 = load i32, ptr %509, align 4, !tbaa !4
  br label %525

525:                                              ; preds = %523, %520
  %526 = phi i32 [ %521, %520 ], [ %524, %523 ]
  %527 = tail call ptr @strerror(i32 noundef %526) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %527) #15
  br label %601

528:                                              ; preds = %511
  %529 = load i32, ptr %412, align 8, !tbaa !30
  %530 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %518), !nosanitize !32
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !32
  br i1 %531, label %532, label %533, !prof !33, !nosanitize !32

532:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

533:                                              ; preds = %528
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !32
  store i32 %534, ptr %412, align 8, !tbaa !30
  %535 = load ptr, ptr %411, align 8, !tbaa !25
  %536 = and i64 %517, 2147483647
  %537 = getelementptr inbounds nuw i8, ptr %535, i64 %536
  store ptr %537, ptr %411, align 8, !tbaa !25
  %538 = icmp eq i32 %534, 0
  br i1 %538, label %.loopexit.backedge, label %511, !llvm.loop !34

539:                                              ; preds = %502, %500
  %540 = load i32, ptr %427, align 8, !tbaa !36
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %547, label %542

542:                                              ; preds = %539
  %543 = load i32, ptr %412, align 8, !tbaa !30
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %.loopexit.backedge, label %545

.loopexit.backedge:                               ; preds = %533, %599, %542, %505
  br label %.loopexit

545:                                              ; preds = %542
  %546 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %427, align 8, !tbaa !36
  br label %547

547:                                              ; preds = %545, %539
  %548 = load i32, ptr %424, align 8, !tbaa !26
  br label %549

549:                                              ; preds = %599, %547
  %550 = phi i32 [ %548, %547 ], [ %596, %599 ]
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %590

552:                                              ; preds = %549
  %553 = load ptr, ptr %425, align 8, !tbaa !27
  %554 = load ptr, ptr %426, align 8, !tbaa !28
  %555 = icmp ugt ptr %553, %554
  br i1 %555, label %556, label %587

556:                                              ; preds = %552
  %557 = tail call ptr @__errno_location() #17
  br label %558

558:                                              ; preds = %578, %556
  %559 = phi ptr [ %554, %556 ], [ %581, %578 ]
  %560 = phi ptr [ %553, %556 ], [ %582, %578 ]
  store i32 0, ptr %557, align 4, !tbaa !4
  store i32 0, ptr %422, align 4, !tbaa !17
  %561 = ptrtoint ptr %560 to i64
  %562 = ptrtoint ptr %559 to i64
  %563 = sub i64 %561, %562
  %564 = tail call i64 @llvm.smin.i64(i64 %563, i64 1073741824)
  %565 = and i64 %564, 4294967295
  %566 = load i32, ptr %423, align 4, !tbaa !31
  %567 = tail call i64 @write(i32 noundef %566, ptr noundef %559, i64 noundef %565) #15
  %568 = and i64 %567, 2147483648
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %558
  %571 = load i32, ptr %557, align 4, !tbaa !4
  %572 = icmp eq i32 %571, 11
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  store i32 1, ptr %422, align 4, !tbaa !17
  %574 = load i32, ptr %557, align 4, !tbaa !4
  br label %575

575:                                              ; preds = %573, %570
  %576 = phi i32 [ %571, %570 ], [ %574, %573 ]
  %577 = tail call ptr @strerror(i32 noundef %576) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %577) #15
  br label %601

578:                                              ; preds = %558
  %579 = load ptr, ptr %426, align 8, !tbaa !28
  %580 = and i64 %567, 2147483647
  %581 = getelementptr inbounds nuw i8, ptr %579, i64 %580
  store ptr %581, ptr %426, align 8, !tbaa !28
  %582 = load ptr, ptr %425, align 8, !tbaa !27
  %583 = icmp ugt ptr %582, %581
  br i1 %583, label %558, label %584, !llvm.loop !37

584:                                              ; preds = %578
  %585 = load i32, ptr %424, align 8, !tbaa !26
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %584, %552
  %588 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %588, ptr %424, align 8, !tbaa !26
  %589 = load ptr, ptr %418, align 8, !tbaa !22
  store ptr %589, ptr %425, align 8, !tbaa !27
  store ptr %589, ptr %426, align 8, !tbaa !28
  br label %590

590:                                              ; preds = %587, %584, %549
  %591 = phi i32 [ %585, %584 ], [ %588, %587 ], [ %550, %549 ]
  %592 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %593 = icmp eq i32 %592, -2
  br i1 %593, label %594, label %595

594:                                              ; preds = %590
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %601

595:                                              ; preds = %590
  %596 = load i32, ptr %424, align 8, !tbaa !26
  %597 = icmp ult i32 %591, %596
  br i1 %597, label %598, label %599, !prof !33, !nosanitize !32

598:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

599:                                              ; preds = %595
  %600 = icmp eq i32 %591, %596
  br i1 %600, label %.loopexit.backedge, label %549, !llvm.loop !38

601:                                              ; preds = %594, %575, %525, %493, %487, %477
  %602 = load i32, ptr %422, align 4, !tbaa !17
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %.loopexit68, label %604

604:                                              ; preds = %601
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %466), !nosanitize !32
  %606 = extractvalue { i64, i1 } %605, 0, !nosanitize !32
  %607 = extractvalue { i64, i1 } %605, 1, !nosanitize !32
  br i1 %607, label %608, label %.loopexit68, !prof !33, !nosanitize !32

608:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

609:                                              ; preds = %408
  %610 = load i32, ptr %412, align 8, !tbaa !41
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %.loopexit72, label %612

612:                                              ; preds = %609
  %613 = icmp eq i32 %409, 0
  br i1 %613, label %614, label %655

614:                                              ; preds = %612
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %616 = load i32, ptr %615, align 4, !tbaa !19
  %617 = shl i32 %616, 1
  %618 = zext i32 %617 to i64
  %619 = tail call noalias ptr @malloc(i64 noundef %618) #16
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %619, ptr %620, align 8, !tbaa !20
  %621 = icmp eq ptr %619, null
  br i1 %621, label %622, label %623

622:                                              ; preds = %614
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

623:                                              ; preds = %614
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %625 = load i32, ptr %624, align 8, !tbaa !21
  %626 = icmp eq i32 %625, 0
  %627 = load i32, ptr %615, align 4, !tbaa !19
  br i1 %626, label %629, label %628

628:                                              ; preds = %623
  store i32 %627, ptr %24, align 8, !tbaa !18
  br label %659

629:                                              ; preds = %623
  %630 = zext i32 %627 to i64
  %631 = tail call noalias ptr @malloc(i64 noundef %630) #16
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %631, ptr %632, align 8, !tbaa !22
  %633 = icmp eq ptr %631, null
  br i1 %633, label %634, label %635

634:                                              ; preds = %629
  tail call void @free(ptr noundef nonnull %619) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

635:                                              ; preds = %629
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %636, i8 0, i64 24, i1 false)
  %638 = load i32, ptr %637, align 8, !tbaa !23
  %639 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %640 = load i32, ptr %639, align 4, !tbaa !24
  %641 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %638, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %640, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %646, label %643

643:                                              ; preds = %635
  %644 = load ptr, ptr %632, align 8, !tbaa !22
  tail call void @free(ptr noundef %644) #15
  %645 = load ptr, ptr %620, align 8, !tbaa !20
  tail call void @free(ptr noundef %645) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

646:                                              ; preds = %635
  store ptr null, ptr %411, align 8, !tbaa !25
  %647 = load i32, ptr %624, align 8, !tbaa !21
  %648 = load i32, ptr %615, align 4, !tbaa !19
  store i32 %648, ptr %24, align 8, !tbaa !18
  %649 = icmp eq i32 %647, 0
  br i1 %649, label %650, label %659

650:                                              ; preds = %646
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %648, ptr %651, align 8, !tbaa !26
  %652 = load ptr, ptr %632, align 8, !tbaa !22
  %653 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %652, ptr %653, align 8, !tbaa !27
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %652, ptr %654, align 8, !tbaa !28
  br label %695

655:                                              ; preds = %612
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %657 = load i32, ptr %656, align 8, !tbaa !21
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %695, label %659

659:                                              ; preds = %655, %646, %628
  %660 = load i32, ptr %412, align 8, !tbaa !30
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %.loopexit72, label %662

662:                                              ; preds = %659
  %663 = tail call ptr @__errno_location() #17
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %665 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %666 = load ptr, ptr %411, align 8, !tbaa !25
  br label %667

667:                                              ; preds = %689, %662
  %668 = phi ptr [ %666, %662 ], [ %693, %689 ]
  store i32 0, ptr %663, align 4, !tbaa !4
  store i32 0, ptr %664, align 4, !tbaa !17
  %669 = load i32, ptr %412, align 8, !tbaa !30
  %670 = tail call i32 @llvm.umin.i32(i32 %669, i32 1073741824)
  %671 = zext nneg i32 %670 to i64
  %672 = load i32, ptr %665, align 4, !tbaa !31
  %673 = tail call i64 @write(i32 noundef %672, ptr noundef %668, i64 noundef %671) #15
  %674 = trunc i64 %673 to i32
  %675 = icmp slt i32 %674, 0
  br i1 %675, label %676, label %684

676:                                              ; preds = %667
  %677 = load i32, ptr %663, align 4, !tbaa !4
  %678 = icmp eq i32 %677, 11
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  store i32 1, ptr %664, align 4, !tbaa !17
  %680 = load i32, ptr %663, align 4, !tbaa !4
  br label %681

681:                                              ; preds = %679, %676
  %682 = phi i32 [ %677, %676 ], [ %680, %679 ]
  %683 = tail call ptr @strerror(i32 noundef %682) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %683) #15
  br label %.loopexit68

684:                                              ; preds = %667
  %685 = load i32, ptr %412, align 8, !tbaa !30
  %686 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %685, i32 %674), !nosanitize !32
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !32
  br i1 %687, label %688, label %689, !prof !33, !nosanitize !32

688:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

689:                                              ; preds = %684
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !32
  store i32 %690, ptr %412, align 8, !tbaa !30
  %691 = load ptr, ptr %411, align 8, !tbaa !25
  %692 = and i64 %673, 2147483647
  %693 = getelementptr inbounds nuw i8, ptr %691, i64 %692
  store ptr %693, ptr %411, align 8, !tbaa !25
  %694 = icmp eq i32 %690, 0
  br i1 %694, label %.loopexit72, label %667, !llvm.loop !34

695:                                              ; preds = %655, %650
  %696 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %697 = load i32, ptr %696, align 8, !tbaa !36
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %704, label %699

699:                                              ; preds = %695
  %700 = load i32, ptr %412, align 8, !tbaa !30
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.loopexit72, label %702

702:                                              ; preds = %699
  %703 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %696, align 8, !tbaa !36
  br label %704

704:                                              ; preds = %702, %695
  %705 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %706 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %707 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %708 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %709 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %710 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %711 = load i32, ptr %705, align 8, !tbaa !26
  br label %712

712:                                              ; preds = %762, %704
  %713 = phi i32 [ %711, %704 ], [ %759, %762 ]
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %753

715:                                              ; preds = %712
  %716 = load ptr, ptr %706, align 8, !tbaa !27
  %717 = load ptr, ptr %707, align 8, !tbaa !28
  %718 = icmp ugt ptr %716, %717
  br i1 %718, label %719, label %750

719:                                              ; preds = %715
  %720 = tail call ptr @__errno_location() #17
  br label %721

721:                                              ; preds = %741, %719
  %722 = phi ptr [ %717, %719 ], [ %744, %741 ]
  %723 = phi ptr [ %716, %719 ], [ %745, %741 ]
  store i32 0, ptr %720, align 4, !tbaa !4
  store i32 0, ptr %708, align 4, !tbaa !17
  %724 = ptrtoint ptr %723 to i64
  %725 = ptrtoint ptr %722 to i64
  %726 = sub i64 %724, %725
  %727 = tail call i64 @llvm.smin.i64(i64 %726, i64 1073741824)
  %728 = and i64 %727, 4294967295
  %729 = load i32, ptr %709, align 4, !tbaa !31
  %730 = tail call i64 @write(i32 noundef %729, ptr noundef %722, i64 noundef %728) #15
  %731 = and i64 %730, 2147483648
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %741, label %733

733:                                              ; preds = %721
  %734 = load i32, ptr %720, align 4, !tbaa !4
  %735 = icmp eq i32 %734, 11
  br i1 %735, label %736, label %738

736:                                              ; preds = %733
  store i32 1, ptr %708, align 4, !tbaa !17
  %737 = load i32, ptr %720, align 4, !tbaa !4
  br label %738

738:                                              ; preds = %736, %733
  %739 = phi i32 [ %734, %733 ], [ %737, %736 ]
  %740 = tail call ptr @strerror(i32 noundef %739) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %740) #15
  br label %.loopexit68

741:                                              ; preds = %721
  %742 = load ptr, ptr %707, align 8, !tbaa !28
  %743 = and i64 %730, 2147483647
  %744 = getelementptr inbounds nuw i8, ptr %742, i64 %743
  store ptr %744, ptr %707, align 8, !tbaa !28
  %745 = load ptr, ptr %706, align 8, !tbaa !27
  %746 = icmp ugt ptr %745, %744
  br i1 %746, label %721, label %747, !llvm.loop !37

747:                                              ; preds = %741
  %748 = load i32, ptr %705, align 8, !tbaa !26
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %753

750:                                              ; preds = %747, %715
  %751 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %751, ptr %705, align 8, !tbaa !26
  %752 = load ptr, ptr %710, align 8, !tbaa !22
  store ptr %752, ptr %706, align 8, !tbaa !27
  store ptr %752, ptr %707, align 8, !tbaa !28
  br label %753

753:                                              ; preds = %750, %747, %712
  %754 = phi i32 [ %748, %747 ], [ %751, %750 ], [ %713, %712 ]
  %755 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %756 = icmp eq i32 %755, -2
  br i1 %756, label %757, label %758

757:                                              ; preds = %753
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit68

758:                                              ; preds = %753
  %759 = load i32, ptr %705, align 8, !tbaa !26
  %760 = icmp ult i32 %754, %759
  br i1 %760, label %761, label %762, !prof !33, !nosanitize !32

761:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

762:                                              ; preds = %758
  %763 = icmp eq i32 %754, %759
  br i1 %763, label %.loopexit72, label %712, !llvm.loop !38

.loopexit72:                                      ; preds = %689, %762, %699, %659, %609
  store ptr %1, ptr %411, align 8, !tbaa !42
  %764 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %765 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %766 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %768 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %769 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %770 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %771 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %778

778:                                              ; preds = %933, %.loopexit72
  %779 = phi i64 [ %21, %.loopexit72 ], [ %924, %933 ]
  %780 = tail call i64 @llvm.umin.i64(i64 %779, i64 4294967295)
  %781 = trunc nuw i64 %780 to i32
  store i32 %781, ptr %412, align 8, !tbaa !41
  %782 = load i32, ptr %24, align 8, !tbaa !18
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %815

784:                                              ; preds = %778
  %785 = load i32, ptr %765, align 4, !tbaa !19
  %786 = shl i32 %785, 1
  %787 = zext i32 %786 to i64
  %788 = tail call noalias ptr @malloc(i64 noundef %787) #16
  store ptr %788, ptr %766, align 8, !tbaa !20
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %791

790:                                              ; preds = %784
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

791:                                              ; preds = %784
  %792 = load i32, ptr %764, align 8, !tbaa !21
  %793 = icmp eq i32 %792, 0
  %794 = load i32, ptr %765, align 4, !tbaa !19
  br i1 %793, label %796, label %795

795:                                              ; preds = %791
  store i32 %794, ptr %24, align 8, !tbaa !18
  br label %818

796:                                              ; preds = %791
  %797 = zext i32 %794 to i64
  %798 = tail call noalias ptr @malloc(i64 noundef %797) #16
  store ptr %798, ptr %767, align 8, !tbaa !22
  %799 = icmp eq ptr %798, null
  br i1 %799, label %800, label %801

800:                                              ; preds = %796
  tail call void @free(ptr noundef nonnull %788) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

801:                                              ; preds = %796
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %768, i8 0, i64 24, i1 false)
  %802 = load i32, ptr %769, align 8, !tbaa !23
  %803 = load i32, ptr %770, align 4, !tbaa !24
  %804 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %802, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %803, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %809, label %806

806:                                              ; preds = %801
  %807 = load ptr, ptr %767, align 8, !tbaa !22
  tail call void @free(ptr noundef %807) #15
  %808 = load ptr, ptr %766, align 8, !tbaa !20
  tail call void @free(ptr noundef %808) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

809:                                              ; preds = %801
  store ptr null, ptr %411, align 8, !tbaa !25
  %810 = load i32, ptr %764, align 8, !tbaa !21
  %811 = load i32, ptr %765, align 4, !tbaa !19
  store i32 %811, ptr %24, align 8, !tbaa !18
  %812 = icmp eq i32 %810, 0
  br i1 %812, label %813, label %818

813:                                              ; preds = %809
  store i32 %811, ptr %773, align 8, !tbaa !26
  %814 = load ptr, ptr %767, align 8, !tbaa !22
  store ptr %814, ptr %774, align 8, !tbaa !27
  store ptr %814, ptr %775, align 8, !tbaa !28
  br label %852

815:                                              ; preds = %778
  %816 = load i32, ptr %764, align 8, !tbaa !21
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %852, label %818

818:                                              ; preds = %815, %809, %795
  %819 = load i32, ptr %412, align 8, !tbaa !30
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %.loopexit69, label %821

821:                                              ; preds = %818
  %822 = tail call ptr @__errno_location() #17
  %823 = load ptr, ptr %411, align 8, !tbaa !25
  br label %824

824:                                              ; preds = %846, %821
  %825 = phi ptr [ %823, %821 ], [ %850, %846 ]
  store i32 0, ptr %822, align 4, !tbaa !4
  store i32 0, ptr %771, align 4, !tbaa !17
  %826 = load i32, ptr %412, align 8, !tbaa !30
  %827 = tail call i32 @llvm.umin.i32(i32 %826, i32 1073741824)
  %828 = zext nneg i32 %827 to i64
  %829 = load i32, ptr %772, align 4, !tbaa !31
  %830 = tail call i64 @write(i32 noundef %829, ptr noundef %825, i64 noundef %828) #15
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %831, 0
  br i1 %832, label %833, label %841

833:                                              ; preds = %824
  %834 = load i32, ptr %822, align 4, !tbaa !4
  %835 = icmp eq i32 %834, 11
  br i1 %835, label %836, label %838

836:                                              ; preds = %833
  store i32 1, ptr %771, align 4, !tbaa !17
  %837 = load i32, ptr %822, align 4, !tbaa !4
  br label %838

838:                                              ; preds = %836, %833
  %839 = phi i32 [ %834, %833 ], [ %837, %836 ]
  %840 = tail call ptr @strerror(i32 noundef %839) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %840) #15
  br label %.loopexit69

841:                                              ; preds = %824
  %842 = load i32, ptr %412, align 8, !tbaa !30
  %843 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 %831), !nosanitize !32
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !32
  br i1 %844, label %845, label %846, !prof !33, !nosanitize !32

845:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

846:                                              ; preds = %841
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !32
  store i32 %847, ptr %412, align 8, !tbaa !30
  %848 = load ptr, ptr %411, align 8, !tbaa !25
  %849 = and i64 %830, 2147483647
  %850 = getelementptr inbounds nuw i8, ptr %848, i64 %849
  store ptr %850, ptr %411, align 8, !tbaa !25
  %851 = icmp eq i32 %847, 0
  br i1 %851, label %.loopexit69, label %824, !llvm.loop !34

852:                                              ; preds = %815, %813
  %853 = load i32, ptr %776, align 8, !tbaa !36
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %860, label %855

855:                                              ; preds = %852
  %856 = load i32, ptr %412, align 8, !tbaa !30
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %.loopexit69, label %858

858:                                              ; preds = %855
  %859 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %776, align 8, !tbaa !36
  br label %860

860:                                              ; preds = %858, %852
  %861 = load i32, ptr %773, align 8, !tbaa !26
  br label %862

862:                                              ; preds = %912, %860
  %863 = phi i32 [ %861, %860 ], [ %909, %912 ]
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %903

865:                                              ; preds = %862
  %866 = load ptr, ptr %774, align 8, !tbaa !27
  %867 = load ptr, ptr %775, align 8, !tbaa !28
  %868 = icmp ugt ptr %866, %867
  br i1 %868, label %869, label %900

869:                                              ; preds = %865
  %870 = tail call ptr @__errno_location() #17
  br label %871

871:                                              ; preds = %891, %869
  %872 = phi ptr [ %867, %869 ], [ %894, %891 ]
  %873 = phi ptr [ %866, %869 ], [ %895, %891 ]
  store i32 0, ptr %870, align 4, !tbaa !4
  store i32 0, ptr %771, align 4, !tbaa !17
  %874 = ptrtoint ptr %873 to i64
  %875 = ptrtoint ptr %872 to i64
  %876 = sub i64 %874, %875
  %877 = tail call i64 @llvm.smin.i64(i64 %876, i64 1073741824)
  %878 = and i64 %877, 4294967295
  %879 = load i32, ptr %772, align 4, !tbaa !31
  %880 = tail call i64 @write(i32 noundef %879, ptr noundef %872, i64 noundef %878) #15
  %881 = and i64 %880, 2147483648
  %882 = icmp eq i64 %881, 0
  br i1 %882, label %891, label %883

883:                                              ; preds = %871
  %884 = load i32, ptr %870, align 4, !tbaa !4
  %885 = icmp eq i32 %884, 11
  br i1 %885, label %886, label %888

886:                                              ; preds = %883
  store i32 1, ptr %771, align 4, !tbaa !17
  %887 = load i32, ptr %870, align 4, !tbaa !4
  br label %888

888:                                              ; preds = %886, %883
  %889 = phi i32 [ %884, %883 ], [ %887, %886 ]
  %890 = tail call ptr @strerror(i32 noundef %889) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %890) #15
  br label %.loopexit69

891:                                              ; preds = %871
  %892 = load ptr, ptr %775, align 8, !tbaa !28
  %893 = and i64 %880, 2147483647
  %894 = getelementptr inbounds nuw i8, ptr %892, i64 %893
  store ptr %894, ptr %775, align 8, !tbaa !28
  %895 = load ptr, ptr %774, align 8, !tbaa !27
  %896 = icmp ugt ptr %895, %894
  br i1 %896, label %871, label %897, !llvm.loop !37

897:                                              ; preds = %891
  %898 = load i32, ptr %773, align 8, !tbaa !26
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %903

900:                                              ; preds = %897, %865
  %901 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %901, ptr %773, align 8, !tbaa !26
  %902 = load ptr, ptr %767, align 8, !tbaa !22
  store ptr %902, ptr %774, align 8, !tbaa !27
  store ptr %902, ptr %775, align 8, !tbaa !28
  br label %903

903:                                              ; preds = %900, %897, %862
  %904 = phi i32 [ %898, %897 ], [ %901, %900 ], [ %863, %862 ]
  %905 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %906 = icmp eq i32 %905, -2
  br i1 %906, label %907, label %908

907:                                              ; preds = %903
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit69

908:                                              ; preds = %903
  %909 = load i32, ptr %773, align 8, !tbaa !26
  %910 = icmp ult i32 %904, %909
  br i1 %910, label %911, label %912, !prof !33, !nosanitize !32

911:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

912:                                              ; preds = %908
  %913 = icmp eq i32 %904, %909
  br i1 %913, label %.loopexit69, label %862, !llvm.loop !38

.loopexit69:                                      ; preds = %846, %912, %907, %888, %855, %838, %818, %806, %800, %790
  %914 = phi i1 [ false, %855 ], [ true, %838 ], [ false, %818 ], [ true, %800 ], [ true, %888 ], [ true, %907 ], [ false, %912 ], [ true, %790 ], [ true, %806 ], [ false, %846 ]
  %915 = load i32, ptr %412, align 8, !tbaa !41
  %916 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %781, i32 %915), !nosanitize !32
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !32
  br i1 %917, label %918, label %919, !prof !33, !nosanitize !32

918:                                              ; preds = %.loopexit69
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

919:                                              ; preds = %.loopexit69
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !32
  %921 = zext i32 %920 to i64
  %922 = load i64, ptr %777, align 8, !tbaa !39
  %923 = add nsw i64 %922, %921
  store i64 %923, ptr %777, align 8, !tbaa !39
  %924 = sub i64 %779, %921
  br i1 %914, label %925, label %933

925:                                              ; preds = %919
  %926 = load i32, ptr %771, align 4, !tbaa !17
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %.loopexit68, label %928

928:                                              ; preds = %925
  %929 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %924), !nosanitize !32
  %930 = extractvalue { i64, i1 } %929, 0, !nosanitize !32
  %931 = extractvalue { i64, i1 } %929, 1, !nosanitize !32
  br i1 %931, label %932, label %.loopexit68, !prof !33, !nosanitize !32

932:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

933:                                              ; preds = %919
  %934 = icmp eq i64 %924, 0
  br i1 %934, label %.loopexit68, label %778, !llvm.loop !43

.loopexit68:                                      ; preds = %397, %933, %461, %928, %925, %757, %738, %681, %643, %634, %622, %604, %601, %224, %205, %148, %110, %101, %89, %57, %48, %36, %20
  %935 = phi i64 [ 0, %643 ], [ 0, %20 ], [ %21, %933 ], [ 0, %925 ], [ 0, %601 ], [ 0, %48 ], [ %21, %461 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %205 ], [ 0, %224 ], [ %606, %604 ], [ 0, %681 ], [ 0, %634 ], [ 0, %738 ], [ 0, %757 ], [ 0, %622 ], [ %930, %928 ], [ 0, %397 ]
  %936 = trunc i64 %935 to i32
  br label %937

937:                                              ; preds = %.loopexit68, %19, %13, %5, %3
  %938 = phi i32 [ %936, %.loopexit68 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %938
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %946, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %946

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %946, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #15
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !32
  %20 = extractvalue { i64, i1 } %19, 0, !nosanitize !32
  %21 = extractvalue { i64, i1 } %19, 1, !nosanitize !32
  br i1 %21, label %22, label %23, !prof !33, !nosanitize !32

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 12) #18, !nosanitize !32
  unreachable, !nosanitize !32

23:                                               ; preds = %18
  %24 = icmp eq i64 %1, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = udiv i64 %20, %1
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #15
  br label %946

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %946, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %77

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
  br label %.loopexit68

45:                                               ; preds = %35
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %47 = load i32, ptr %46, align 8, !tbaa !21
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %37, align 4, !tbaa !19
  br i1 %48, label %51, label %50

50:                                               ; preds = %45
  store i32 %49, ptr %32, align 8, !tbaa !18
  br label %77

51:                                               ; preds = %45
  %52 = zext i32 %49 to i64
  %53 = tail call noalias ptr @malloc(i64 noundef %52) #16
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %53, ptr %54, align 8, !tbaa !22
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @free(ptr noundef nonnull %41) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

57:                                               ; preds = %51
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %60 = load i32, ptr %59, align 8, !tbaa !23
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %62 = load i32, ptr %61, align 4, !tbaa !24
  %63 = tail call i32 @deflateInit2_(ptr noundef nonnull %36, i32 noundef %60, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %62, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr %54, align 8, !tbaa !22
  tail call void @free(ptr noundef %66) #15
  %67 = load ptr, ptr %42, align 8, !tbaa !20
  tail call void @free(ptr noundef %67) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

68:                                               ; preds = %57
  store ptr null, ptr %36, align 8, !tbaa !25
  %69 = load i32, ptr %46, align 8, !tbaa !21
  %70 = load i32, ptr %37, align 4, !tbaa !19
  store i32 %70, ptr %32, align 8, !tbaa !18
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %70, ptr %73, align 8, !tbaa !26
  %74 = load ptr, ptr %54, align 8, !tbaa !22
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %74, ptr %75, align 8, !tbaa !27
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %74, ptr %76, align 8, !tbaa !28
  br label %77

77:                                               ; preds = %72, %68, %50, %31
  %78 = phi i32 [ %70, %72 ], [ %70, %68 ], [ %49, %50 ], [ %33, %31 ]
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %80 = load i64, ptr %79, align 8, !tbaa !29
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %416, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %85 = load i32, ptr %84, align 8, !tbaa !30
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit77, label %87

87:                                               ; preds = %82
  %88 = icmp eq i32 %78, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %91 = load i32, ptr %90, align 4, !tbaa !19
  %92 = shl i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = tail call noalias ptr @malloc(i64 noundef %93) #16
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %94, ptr %95, align 8, !tbaa !20
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

98:                                               ; preds = %89
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %100 = load i32, ptr %99, align 8, !tbaa !21
  %101 = icmp eq i32 %100, 0
  %102 = load i32, ptr %90, align 4, !tbaa !19
  br i1 %101, label %104, label %103

103:                                              ; preds = %98
  store i32 %102, ptr %32, align 8, !tbaa !18
  br label %134

104:                                              ; preds = %98
  %105 = zext i32 %102 to i64
  %106 = tail call noalias ptr @malloc(i64 noundef %105) #16
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %106, ptr %107, align 8, !tbaa !22
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call void @free(ptr noundef nonnull %94) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

110:                                              ; preds = %104
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %111, i8 0, i64 24, i1 false)
  %113 = load i32, ptr %112, align 8, !tbaa !23
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %115 = load i32, ptr %114, align 4, !tbaa !24
  %116 = tail call i32 @deflateInit2_(ptr noundef nonnull %83, i32 noundef %113, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %115, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %107, align 8, !tbaa !22
  tail call void @free(ptr noundef %119) #15
  %120 = load ptr, ptr %95, align 8, !tbaa !20
  tail call void @free(ptr noundef %120) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

121:                                              ; preds = %110
  store ptr null, ptr %83, align 8, !tbaa !25
  %122 = load i32, ptr %99, align 8, !tbaa !21
  %123 = load i32, ptr %90, align 4, !tbaa !19
  store i32 %123, ptr %32, align 8, !tbaa !18
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %123, ptr %126, align 8, !tbaa !26
  %127 = load ptr, ptr %107, align 8, !tbaa !22
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %127, ptr %128, align 8, !tbaa !27
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %127, ptr %129, align 8, !tbaa !28
  br label %170

130:                                              ; preds = %87
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %132 = load i32, ptr %131, align 8, !tbaa !21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %170, label %134

134:                                              ; preds = %130, %121, %103
  %135 = load i32, ptr %84, align 8, !tbaa !30
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %.loopexit77, label %137

137:                                              ; preds = %134
  %138 = tail call ptr @__errno_location() #17
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %141 = load ptr, ptr %83, align 8, !tbaa !25
  br label %142

142:                                              ; preds = %164, %137
  %143 = phi ptr [ %141, %137 ], [ %168, %164 ]
  store i32 0, ptr %138, align 4, !tbaa !4
  store i32 0, ptr %139, align 4, !tbaa !17
  %144 = load i32, ptr %84, align 8, !tbaa !30
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 1073741824)
  %146 = zext nneg i32 %145 to i64
  %147 = load i32, ptr %140, align 4, !tbaa !31
  %148 = tail call i64 @write(i32 noundef %147, ptr noundef %143, i64 noundef %146) #15
  %149 = trunc i64 %148 to i32
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %142
  %152 = load i32, ptr %138, align 4, !tbaa !4
  %153 = icmp eq i32 %152, 11
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  store i32 1, ptr %139, align 4, !tbaa !17
  %155 = load i32, ptr %138, align 4, !tbaa !4
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi i32 [ %152, %151 ], [ %155, %154 ]
  %158 = tail call ptr @strerror(i32 noundef %157) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %158) #15
  br label %.loopexit68

159:                                              ; preds = %142
  %160 = load i32, ptr %84, align 8, !tbaa !30
  %161 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %160, i32 %149), !nosanitize !32
  %162 = extractvalue { i32, i1 } %161, 1, !nosanitize !32
  br i1 %162, label %163, label %164, !prof !33, !nosanitize !32

163:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

164:                                              ; preds = %159
  %165 = extractvalue { i32, i1 } %161, 0, !nosanitize !32
  store i32 %165, ptr %84, align 8, !tbaa !30
  %166 = load ptr, ptr %83, align 8, !tbaa !25
  %167 = and i64 %148, 2147483647
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 %167
  store ptr %168, ptr %83, align 8, !tbaa !25
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %.loopexit77, label %142, !llvm.loop !34

170:                                              ; preds = %130, %125
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %172 = load i32, ptr %171, align 8, !tbaa !36
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %84, align 8, !tbaa !30
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %.loopexit77, label %177

177:                                              ; preds = %174
  %178 = tail call i32 @deflateReset(ptr noundef nonnull %83) #15
  store i32 0, ptr %171, align 8, !tbaa !36
  br label %179

179:                                              ; preds = %177, %170
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %186 = load i32, ptr %180, align 8, !tbaa !26
  br label %187

187:                                              ; preds = %237, %179
  %188 = phi i32 [ %186, %179 ], [ %234, %237 ]
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %228

190:                                              ; preds = %187
  %191 = load ptr, ptr %181, align 8, !tbaa !27
  %192 = load ptr, ptr %182, align 8, !tbaa !28
  %193 = icmp ugt ptr %191, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = tail call ptr @__errno_location() #17
  br label %196

196:                                              ; preds = %216, %194
  %197 = phi ptr [ %192, %194 ], [ %219, %216 ]
  %198 = phi ptr [ %191, %194 ], [ %220, %216 ]
  store i32 0, ptr %195, align 4, !tbaa !4
  store i32 0, ptr %183, align 4, !tbaa !17
  %199 = ptrtoint ptr %198 to i64
  %200 = ptrtoint ptr %197 to i64
  %201 = sub i64 %199, %200
  %202 = tail call i64 @llvm.smin.i64(i64 %201, i64 1073741824)
  %203 = and i64 %202, 4294967295
  %204 = load i32, ptr %184, align 4, !tbaa !31
  %205 = tail call i64 @write(i32 noundef %204, ptr noundef %197, i64 noundef %203) #15
  %206 = and i64 %205, 2147483648
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %196
  %209 = load i32, ptr %195, align 4, !tbaa !4
  %210 = icmp eq i32 %209, 11
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  store i32 1, ptr %183, align 4, !tbaa !17
  %212 = load i32, ptr %195, align 4, !tbaa !4
  br label %213

213:                                              ; preds = %211, %208
  %214 = phi i32 [ %209, %208 ], [ %212, %211 ]
  %215 = tail call ptr @strerror(i32 noundef %214) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %215) #15
  br label %.loopexit68

216:                                              ; preds = %196
  %217 = load ptr, ptr %182, align 8, !tbaa !28
  %218 = and i64 %205, 2147483647
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  store ptr %219, ptr %182, align 8, !tbaa !28
  %220 = load ptr, ptr %181, align 8, !tbaa !27
  %221 = icmp ugt ptr %220, %219
  br i1 %221, label %196, label %222, !llvm.loop !37

222:                                              ; preds = %216
  %223 = load i32, ptr %180, align 8, !tbaa !26
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222, %190
  %226 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %226, ptr %180, align 8, !tbaa !26
  %227 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %227, ptr %181, align 8, !tbaa !27
  store ptr %227, ptr %182, align 8, !tbaa !28
  br label %228

228:                                              ; preds = %225, %222, %187
  %229 = phi i32 [ %223, %222 ], [ %226, %225 ], [ %188, %187 ]
  %230 = tail call i32 @deflate(ptr noundef nonnull %83, i32 noundef 0) #15
  %231 = icmp eq i32 %230, -2
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit68

233:                                              ; preds = %228
  %234 = load i32, ptr %180, align 8, !tbaa !26
  %235 = icmp ult i32 %229, %234
  br i1 %235, label %236, label %237, !prof !33, !nosanitize !32

236:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

237:                                              ; preds = %233
  %238 = icmp eq i32 %229, %234
  br i1 %238, label %.loopexit77, label %187, !llvm.loop !38

.loopexit77:                                      ; preds = %164, %237, %174, %134, %82
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %253 = load i64, ptr %79, align 8, !tbaa !29
  br label %254

254:                                              ; preds = %412, %.loopexit77
  %255 = phi i64 [ %253, %.loopexit77 ], [ %411, %412 ]
  %256 = phi i1 [ false, %.loopexit77 ], [ true, %412 ]
  %257 = load i32, ptr %32, align 8, !tbaa !18
  %258 = zext i32 %257 to i64
  %259 = tail call i64 @llvm.smin.i64(i64 %255, i64 %258)
  %260 = trunc i64 %259 to i32
  %261 = load ptr, ptr %239, align 8, !tbaa !20
  br i1 %256, label %266, label %262

262:                                              ; preds = %254
  %263 = and i64 %259, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %261, i8 0, i64 %263, i1 false)
  %264 = load ptr, ptr %239, align 8, !tbaa !20
  %265 = load i32, ptr %32, align 8, !tbaa !18
  br label %266

266:                                              ; preds = %262, %254
  %267 = phi i32 [ %265, %262 ], [ %257, %254 ]
  %268 = phi ptr [ %264, %262 ], [ %261, %254 ]
  store i32 %260, ptr %84, align 8, !tbaa !30
  store ptr %268, ptr %83, align 8, !tbaa !25
  %269 = icmp eq i32 %267, 0
  br i1 %269, label %270, label %301

270:                                              ; preds = %266
  %271 = load i32, ptr %241, align 4, !tbaa !19
  %272 = shl i32 %271, 1
  %273 = zext i32 %272 to i64
  %274 = tail call noalias ptr @malloc(i64 noundef %273) #16
  store ptr %274, ptr %239, align 8, !tbaa !20
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

277:                                              ; preds = %270
  %278 = load i32, ptr %240, align 8, !tbaa !21
  %279 = icmp eq i32 %278, 0
  %280 = load i32, ptr %241, align 4, !tbaa !19
  br i1 %279, label %282, label %281

281:                                              ; preds = %277
  store i32 %280, ptr %32, align 8, !tbaa !18
  br label %304

282:                                              ; preds = %277
  %283 = zext i32 %280 to i64
  %284 = tail call noalias ptr @malloc(i64 noundef %283) #16
  store ptr %284, ptr %242, align 8, !tbaa !22
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  tail call void @free(ptr noundef nonnull %274) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

287:                                              ; preds = %282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %243, i8 0, i64 24, i1 false)
  %288 = load i32, ptr %244, align 8, !tbaa !23
  %289 = load i32, ptr %245, align 4, !tbaa !24
  %290 = tail call i32 @deflateInit2_(ptr noundef nonnull %83, i32 noundef %288, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %289, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %287
  %293 = load ptr, ptr %242, align 8, !tbaa !22
  tail call void @free(ptr noundef %293) #15
  %294 = load ptr, ptr %239, align 8, !tbaa !20
  tail call void @free(ptr noundef %294) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit74

295:                                              ; preds = %287
  store ptr null, ptr %83, align 8, !tbaa !25
  %296 = load i32, ptr %240, align 8, !tbaa !21
  %297 = load i32, ptr %241, align 4, !tbaa !19
  store i32 %297, ptr %32, align 8, !tbaa !18
  %298 = icmp eq i32 %296, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  store i32 %297, ptr %248, align 8, !tbaa !26
  %300 = load ptr, ptr %242, align 8, !tbaa !22
  store ptr %300, ptr %249, align 8, !tbaa !27
  store ptr %300, ptr %250, align 8, !tbaa !28
  br label %338

301:                                              ; preds = %266
  %302 = load i32, ptr %240, align 8, !tbaa !21
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %338, label %304

304:                                              ; preds = %301, %295, %281
  %305 = phi ptr [ %268, %301 ], [ null, %295 ], [ %268, %281 ]
  %306 = load i32, ptr %84, align 8, !tbaa !30
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %.loopexit74, label %308

308:                                              ; preds = %304
  %309 = tail call ptr @__errno_location() #17
  br label %310

310:                                              ; preds = %332, %308
  %311 = phi ptr [ %305, %308 ], [ %336, %332 ]
  store i32 0, ptr %309, align 4, !tbaa !4
  store i32 0, ptr %246, align 4, !tbaa !17
  %312 = load i32, ptr %84, align 8, !tbaa !30
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 1073741824)
  %314 = zext nneg i32 %313 to i64
  %315 = load i32, ptr %247, align 4, !tbaa !31
  %316 = tail call i64 @write(i32 noundef %315, ptr noundef %311, i64 noundef %314) #15
  %317 = trunc i64 %316 to i32
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = load i32, ptr %309, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  store i32 1, ptr %246, align 4, !tbaa !17
  %323 = load i32, ptr %309, align 4, !tbaa !4
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %320, %319 ], [ %323, %322 ]
  %326 = tail call ptr @strerror(i32 noundef %325) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %326) #15
  br label %.loopexit74

327:                                              ; preds = %310
  %328 = load i32, ptr %84, align 8, !tbaa !30
  %329 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %328, i32 %317), !nosanitize !32
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !32
  br i1 %330, label %331, label %332, !prof !33, !nosanitize !32

331:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !32
  store i32 %333, ptr %84, align 8, !tbaa !30
  %334 = load ptr, ptr %83, align 8, !tbaa !25
  %335 = and i64 %316, 2147483647
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 %335
  store ptr %336, ptr %83, align 8, !tbaa !25
  %337 = icmp eq i32 %333, 0
  br i1 %337, label %.loopexit74, label %310, !llvm.loop !34

338:                                              ; preds = %301, %299
  %339 = load i32, ptr %251, align 8, !tbaa !36
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %338
  %342 = load i32, ptr %84, align 8, !tbaa !30
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %.loopexit74, label %344

344:                                              ; preds = %341
  %345 = tail call i32 @deflateReset(ptr noundef nonnull %83) #15
  store i32 0, ptr %251, align 8, !tbaa !36
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i32, ptr %248, align 8, !tbaa !26
  br label %348

348:                                              ; preds = %398, %346
  %349 = phi i32 [ %347, %346 ], [ %395, %398 ]
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %348
  %352 = load ptr, ptr %249, align 8, !tbaa !27
  %353 = load ptr, ptr %250, align 8, !tbaa !28
  %354 = icmp ugt ptr %352, %353
  br i1 %354, label %355, label %386

355:                                              ; preds = %351
  %356 = tail call ptr @__errno_location() #17
  br label %357

357:                                              ; preds = %377, %355
  %358 = phi ptr [ %353, %355 ], [ %380, %377 ]
  %359 = phi ptr [ %352, %355 ], [ %381, %377 ]
  store i32 0, ptr %356, align 4, !tbaa !4
  store i32 0, ptr %246, align 4, !tbaa !17
  %360 = ptrtoint ptr %359 to i64
  %361 = ptrtoint ptr %358 to i64
  %362 = sub i64 %360, %361
  %363 = tail call i64 @llvm.smin.i64(i64 %362, i64 1073741824)
  %364 = and i64 %363, 4294967295
  %365 = load i32, ptr %247, align 4, !tbaa !31
  %366 = tail call i64 @write(i32 noundef %365, ptr noundef %358, i64 noundef %364) #15
  %367 = and i64 %366, 2147483648
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %377, label %369

369:                                              ; preds = %357
  %370 = load i32, ptr %356, align 4, !tbaa !4
  %371 = icmp eq i32 %370, 11
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  store i32 1, ptr %246, align 4, !tbaa !17
  %373 = load i32, ptr %356, align 4, !tbaa !4
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i32 [ %370, %369 ], [ %373, %372 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %376) #15
  br label %.loopexit74

377:                                              ; preds = %357
  %378 = load ptr, ptr %250, align 8, !tbaa !28
  %379 = and i64 %366, 2147483647
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 %379
  store ptr %380, ptr %250, align 8, !tbaa !28
  %381 = load ptr, ptr %249, align 8, !tbaa !27
  %382 = icmp ugt ptr %381, %380
  br i1 %382, label %357, label %383, !llvm.loop !37

383:                                              ; preds = %377
  %384 = load i32, ptr %248, align 8, !tbaa !26
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383, %351
  %387 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %387, ptr %248, align 8, !tbaa !26
  %388 = load ptr, ptr %242, align 8, !tbaa !22
  store ptr %388, ptr %249, align 8, !tbaa !27
  store ptr %388, ptr %250, align 8, !tbaa !28
  br label %389

389:                                              ; preds = %386, %383, %348
  %390 = phi i32 [ %384, %383 ], [ %387, %386 ], [ %349, %348 ]
  %391 = tail call i32 @deflate(ptr noundef nonnull %83, i32 noundef 0) #15
  %392 = icmp eq i32 %391, -2
  br i1 %392, label %393, label %394

393:                                              ; preds = %389
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit74

394:                                              ; preds = %389
  %395 = load i32, ptr %248, align 8, !tbaa !26
  %396 = icmp ult i32 %390, %395
  br i1 %396, label %397, label %398, !prof !33, !nosanitize !32

397:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

398:                                              ; preds = %394
  %399 = icmp eq i32 %390, %395
  br i1 %399, label %.loopexit74, label %348, !llvm.loop !38

.loopexit74:                                      ; preds = %332, %398, %393, %374, %341, %324, %304, %292, %286, %276
  %400 = phi i1 [ false, %341 ], [ true, %324 ], [ false, %304 ], [ true, %286 ], [ true, %374 ], [ true, %393 ], [ false, %398 ], [ true, %276 ], [ true, %292 ], [ false, %332 ]
  %401 = load i32, ptr %84, align 8, !tbaa !30
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %401), !nosanitize !32
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !32
  br i1 %403, label %404, label %405, !prof !33, !nosanitize !32

404:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

405:                                              ; preds = %.loopexit74
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !32
  %407 = zext i32 %406 to i64
  %408 = load i64, ptr %252, align 8, !tbaa !39
  %409 = add nsw i64 %408, %407
  store i64 %409, ptr %252, align 8, !tbaa !39
  %410 = load i64, ptr %79, align 8, !tbaa !29
  %411 = sub nsw i64 %410, %407
  store i64 %411, ptr %79, align 8, !tbaa !29
  br i1 %400, label %.loopexit68, label %412

412:                                              ; preds = %405
  %413 = icmp eq i64 %410, %407
  br i1 %413, label %414, label %254, !llvm.loop !40

414:                                              ; preds = %412
  %415 = load i32, ptr %32, align 8, !tbaa !18
  br label %416

416:                                              ; preds = %414, %77
  %417 = phi i32 [ %415, %414 ], [ %78, %77 ]
  %418 = zext i32 %417 to i64
  %419 = icmp ult i64 %20, %418
  %420 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %419, label %422, label %618

422:                                              ; preds = %416
  %423 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %424 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %425 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %426 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %427 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %428 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %430 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %432 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %422
  %437 = phi i64 [ %20, %422 ], [ %475, %.loopexit.backedge ]
  %438 = phi ptr [ %0, %422 ], [ %474, %.loopexit.backedge ]
  %439 = load i32, ptr %421, align 8, !tbaa !41
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %.loopexit
  %442 = load ptr, ptr %420, align 8, !tbaa !42
  %443 = load ptr, ptr %423, align 8, !tbaa !20
  br label %446

444:                                              ; preds = %.loopexit
  %445 = load ptr, ptr %423, align 8, !tbaa !20
  store ptr %445, ptr %420, align 8, !tbaa !42
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
  %455 = load i32, ptr %32, align 8, !tbaa !18
  %456 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %454), !nosanitize !32
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !32
  br i1 %457, label %458, label %459, !prof !33, !nosanitize !32

458:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

459:                                              ; preds = %446
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !32
  %461 = zext i32 %460 to i64
  %462 = tail call i64 @llvm.umin.i64(i64 %437, i64 %461)
  %463 = trunc nuw i64 %462 to i32
  %464 = and i64 %453, 4294967295
  %465 = getelementptr inbounds nuw i8, ptr %447, i64 %464
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %438, i64 %462, i1 false)
  %466 = load i32, ptr %421, align 8, !tbaa !41
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 %463), !nosanitize !32
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !32
  br i1 %468, label %469, label %470, !prof !33, !nosanitize !32

469:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

470:                                              ; preds = %459
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !32
  store i32 %471, ptr %421, align 8, !tbaa !41
  %472 = load i64, ptr %424, align 8, !tbaa !39
  %473 = add nsw i64 %472, %462
  store i64 %473, ptr %424, align 8, !tbaa !39
  %474 = getelementptr inbounds nuw i8, ptr %438, i64 %462
  %475 = sub i64 %437, %462
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %.loopexit68, label %477

477:                                              ; preds = %470
  %478 = load i32, ptr %32, align 8, !tbaa !18
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %511

480:                                              ; preds = %477
  %481 = load i32, ptr %426, align 4, !tbaa !19
  %482 = shl i32 %481, 1
  %483 = zext i32 %482 to i64
  %484 = tail call noalias ptr @malloc(i64 noundef %483) #16
  store ptr %484, ptr %423, align 8, !tbaa !20
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %487

486:                                              ; preds = %480
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

487:                                              ; preds = %480
  %488 = load i32, ptr %425, align 8, !tbaa !21
  %489 = icmp eq i32 %488, 0
  %490 = load i32, ptr %426, align 4, !tbaa !19
  br i1 %489, label %492, label %491

491:                                              ; preds = %487
  store i32 %490, ptr %32, align 8, !tbaa !18
  br label %514

492:                                              ; preds = %487
  %493 = zext i32 %490 to i64
  %494 = tail call noalias ptr @malloc(i64 noundef %493) #16
  store ptr %494, ptr %427, align 8, !tbaa !22
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %497

496:                                              ; preds = %492
  tail call void @free(ptr noundef nonnull %484) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

497:                                              ; preds = %492
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %428, i8 0, i64 24, i1 false)
  %498 = load i32, ptr %429, align 8, !tbaa !23
  %499 = load i32, ptr %430, align 4, !tbaa !24
  %500 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %498, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %499, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %497
  %503 = load ptr, ptr %427, align 8, !tbaa !22
  tail call void @free(ptr noundef %503) #15
  %504 = load ptr, ptr %423, align 8, !tbaa !20
  tail call void @free(ptr noundef %504) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %610

505:                                              ; preds = %497
  store ptr null, ptr %420, align 8, !tbaa !25
  %506 = load i32, ptr %425, align 8, !tbaa !21
  %507 = load i32, ptr %426, align 4, !tbaa !19
  store i32 %507, ptr %32, align 8, !tbaa !18
  %508 = icmp eq i32 %506, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %505
  store i32 %507, ptr %433, align 8, !tbaa !26
  %510 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %510, ptr %434, align 8, !tbaa !27
  store ptr %510, ptr %435, align 8, !tbaa !28
  br label %548

511:                                              ; preds = %477
  %512 = load i32, ptr %425, align 8, !tbaa !21
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %548, label %514

514:                                              ; preds = %511, %505, %491
  %515 = load i32, ptr %421, align 8, !tbaa !30
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %.loopexit.backedge, label %517

517:                                              ; preds = %514
  %518 = tail call ptr @__errno_location() #17
  %519 = load ptr, ptr %420, align 8, !tbaa !25
  br label %520

520:                                              ; preds = %542, %517
  %521 = phi ptr [ %519, %517 ], [ %546, %542 ]
  store i32 0, ptr %518, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %522 = load i32, ptr %421, align 8, !tbaa !30
  %523 = tail call i32 @llvm.umin.i32(i32 %522, i32 1073741824)
  %524 = zext nneg i32 %523 to i64
  %525 = load i32, ptr %432, align 4, !tbaa !31
  %526 = tail call i64 @write(i32 noundef %525, ptr noundef %521, i64 noundef %524) #15
  %527 = trunc i64 %526 to i32
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %520
  %530 = load i32, ptr %518, align 4, !tbaa !4
  %531 = icmp eq i32 %530, 11
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  store i32 1, ptr %431, align 4, !tbaa !17
  %533 = load i32, ptr %518, align 4, !tbaa !4
  br label %534

534:                                              ; preds = %532, %529
  %535 = phi i32 [ %530, %529 ], [ %533, %532 ]
  %536 = tail call ptr @strerror(i32 noundef %535) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %536) #15
  br label %610

537:                                              ; preds = %520
  %538 = load i32, ptr %421, align 8, !tbaa !30
  %539 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %538, i32 %527), !nosanitize !32
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !32
  br i1 %540, label %541, label %542, !prof !33, !nosanitize !32

541:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

542:                                              ; preds = %537
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !32
  store i32 %543, ptr %421, align 8, !tbaa !30
  %544 = load ptr, ptr %420, align 8, !tbaa !25
  %545 = and i64 %526, 2147483647
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store ptr %546, ptr %420, align 8, !tbaa !25
  %547 = icmp eq i32 %543, 0
  br i1 %547, label %.loopexit.backedge, label %520, !llvm.loop !34

548:                                              ; preds = %511, %509
  %549 = load i32, ptr %436, align 8, !tbaa !36
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %548
  %552 = load i32, ptr %421, align 8, !tbaa !30
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %.loopexit.backedge, label %554

.loopexit.backedge:                               ; preds = %542, %608, %551, %514
  br label %.loopexit

554:                                              ; preds = %551
  %555 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %436, align 8, !tbaa !36
  br label %556

556:                                              ; preds = %554, %548
  %557 = load i32, ptr %433, align 8, !tbaa !26
  br label %558

558:                                              ; preds = %608, %556
  %559 = phi i32 [ %557, %556 ], [ %605, %608 ]
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %599

561:                                              ; preds = %558
  %562 = load ptr, ptr %434, align 8, !tbaa !27
  %563 = load ptr, ptr %435, align 8, !tbaa !28
  %564 = icmp ugt ptr %562, %563
  br i1 %564, label %565, label %596

565:                                              ; preds = %561
  %566 = tail call ptr @__errno_location() #17
  br label %567

567:                                              ; preds = %587, %565
  %568 = phi ptr [ %563, %565 ], [ %590, %587 ]
  %569 = phi ptr [ %562, %565 ], [ %591, %587 ]
  store i32 0, ptr %566, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %570 = ptrtoint ptr %569 to i64
  %571 = ptrtoint ptr %568 to i64
  %572 = sub i64 %570, %571
  %573 = tail call i64 @llvm.smin.i64(i64 %572, i64 1073741824)
  %574 = and i64 %573, 4294967295
  %575 = load i32, ptr %432, align 4, !tbaa !31
  %576 = tail call i64 @write(i32 noundef %575, ptr noundef %568, i64 noundef %574) #15
  %577 = and i64 %576, 2147483648
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %567
  %580 = load i32, ptr %566, align 4, !tbaa !4
  %581 = icmp eq i32 %580, 11
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  store i32 1, ptr %431, align 4, !tbaa !17
  %583 = load i32, ptr %566, align 4, !tbaa !4
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i32 [ %580, %579 ], [ %583, %582 ]
  %586 = tail call ptr @strerror(i32 noundef %585) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %586) #15
  br label %610

587:                                              ; preds = %567
  %588 = load ptr, ptr %435, align 8, !tbaa !28
  %589 = and i64 %576, 2147483647
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  store ptr %590, ptr %435, align 8, !tbaa !28
  %591 = load ptr, ptr %434, align 8, !tbaa !27
  %592 = icmp ugt ptr %591, %590
  br i1 %592, label %567, label %593, !llvm.loop !37

593:                                              ; preds = %587
  %594 = load i32, ptr %433, align 8, !tbaa !26
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %599

596:                                              ; preds = %593, %561
  %597 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %597, ptr %433, align 8, !tbaa !26
  %598 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %598, ptr %434, align 8, !tbaa !27
  store ptr %598, ptr %435, align 8, !tbaa !28
  br label %599

599:                                              ; preds = %596, %593, %558
  %600 = phi i32 [ %594, %593 ], [ %597, %596 ], [ %559, %558 ]
  %601 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %602 = icmp eq i32 %601, -2
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %610

604:                                              ; preds = %599
  %605 = load i32, ptr %433, align 8, !tbaa !26
  %606 = icmp ult i32 %600, %605
  br i1 %606, label %607, label %608, !prof !33, !nosanitize !32

607:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

608:                                              ; preds = %604
  %609 = icmp eq i32 %600, %605
  br i1 %609, label %.loopexit.backedge, label %558, !llvm.loop !38

610:                                              ; preds = %603, %584, %534, %502, %496, %486
  %611 = load i32, ptr %431, align 4, !tbaa !17
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %.loopexit68, label %613

613:                                              ; preds = %610
  %614 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %475), !nosanitize !32
  %615 = extractvalue { i64, i1 } %614, 0, !nosanitize !32
  %616 = extractvalue { i64, i1 } %614, 1, !nosanitize !32
  br i1 %616, label %617, label %.loopexit68, !prof !33, !nosanitize !32

617:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

618:                                              ; preds = %416
  %619 = load i32, ptr %421, align 8, !tbaa !41
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit72, label %621

621:                                              ; preds = %618
  %622 = icmp eq i32 %417, 0
  br i1 %622, label %623, label %664

623:                                              ; preds = %621
  %624 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %625 = load i32, ptr %624, align 4, !tbaa !19
  %626 = shl i32 %625, 1
  %627 = zext i32 %626 to i64
  %628 = tail call noalias ptr @malloc(i64 noundef %627) #16
  %629 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %628, ptr %629, align 8, !tbaa !20
  %630 = icmp eq ptr %628, null
  br i1 %630, label %631, label %632

631:                                              ; preds = %623
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

632:                                              ; preds = %623
  %633 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %634 = load i32, ptr %633, align 8, !tbaa !21
  %635 = icmp eq i32 %634, 0
  %636 = load i32, ptr %624, align 4, !tbaa !19
  br i1 %635, label %638, label %637

637:                                              ; preds = %632
  store i32 %636, ptr %32, align 8, !tbaa !18
  br label %668

638:                                              ; preds = %632
  %639 = zext i32 %636 to i64
  %640 = tail call noalias ptr @malloc(i64 noundef %639) #16
  %641 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %640, ptr %641, align 8, !tbaa !22
  %642 = icmp eq ptr %640, null
  br i1 %642, label %643, label %644

643:                                              ; preds = %638
  tail call void @free(ptr noundef nonnull %628) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

644:                                              ; preds = %638
  %645 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %646 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %645, i8 0, i64 24, i1 false)
  %647 = load i32, ptr %646, align 8, !tbaa !23
  %648 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %649 = load i32, ptr %648, align 4, !tbaa !24
  %650 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %647, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %649, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %655, label %652

652:                                              ; preds = %644
  %653 = load ptr, ptr %641, align 8, !tbaa !22
  tail call void @free(ptr noundef %653) #15
  %654 = load ptr, ptr %629, align 8, !tbaa !20
  tail call void @free(ptr noundef %654) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

655:                                              ; preds = %644
  store ptr null, ptr %420, align 8, !tbaa !25
  %656 = load i32, ptr %633, align 8, !tbaa !21
  %657 = load i32, ptr %624, align 4, !tbaa !19
  store i32 %657, ptr %32, align 8, !tbaa !18
  %658 = icmp eq i32 %656, 0
  br i1 %658, label %659, label %668

659:                                              ; preds = %655
  %660 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %657, ptr %660, align 8, !tbaa !26
  %661 = load ptr, ptr %641, align 8, !tbaa !22
  %662 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %661, ptr %662, align 8, !tbaa !27
  %663 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %661, ptr %663, align 8, !tbaa !28
  br label %704

664:                                              ; preds = %621
  %665 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %666 = load i32, ptr %665, align 8, !tbaa !21
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %704, label %668

668:                                              ; preds = %664, %655, %637
  %669 = load i32, ptr %421, align 8, !tbaa !30
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %.loopexit72, label %671

671:                                              ; preds = %668
  %672 = tail call ptr @__errno_location() #17
  %673 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %674 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %675 = load ptr, ptr %420, align 8, !tbaa !25
  br label %676

676:                                              ; preds = %698, %671
  %677 = phi ptr [ %675, %671 ], [ %702, %698 ]
  store i32 0, ptr %672, align 4, !tbaa !4
  store i32 0, ptr %673, align 4, !tbaa !17
  %678 = load i32, ptr %421, align 8, !tbaa !30
  %679 = tail call i32 @llvm.umin.i32(i32 %678, i32 1073741824)
  %680 = zext nneg i32 %679 to i64
  %681 = load i32, ptr %674, align 4, !tbaa !31
  %682 = tail call i64 @write(i32 noundef %681, ptr noundef %677, i64 noundef %680) #15
  %683 = trunc i64 %682 to i32
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %685, label %693

685:                                              ; preds = %676
  %686 = load i32, ptr %672, align 4, !tbaa !4
  %687 = icmp eq i32 %686, 11
  br i1 %687, label %688, label %690

688:                                              ; preds = %685
  store i32 1, ptr %673, align 4, !tbaa !17
  %689 = load i32, ptr %672, align 4, !tbaa !4
  br label %690

690:                                              ; preds = %688, %685
  %691 = phi i32 [ %686, %685 ], [ %689, %688 ]
  %692 = tail call ptr @strerror(i32 noundef %691) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %692) #15
  br label %.loopexit68

693:                                              ; preds = %676
  %694 = load i32, ptr %421, align 8, !tbaa !30
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 %683), !nosanitize !32
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !32
  br i1 %696, label %697, label %698, !prof !33, !nosanitize !32

697:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

698:                                              ; preds = %693
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !32
  store i32 %699, ptr %421, align 8, !tbaa !30
  %700 = load ptr, ptr %420, align 8, !tbaa !25
  %701 = and i64 %682, 2147483647
  %702 = getelementptr inbounds nuw i8, ptr %700, i64 %701
  store ptr %702, ptr %420, align 8, !tbaa !25
  %703 = icmp eq i32 %699, 0
  br i1 %703, label %.loopexit72, label %676, !llvm.loop !34

704:                                              ; preds = %664, %659
  %705 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %706 = load i32, ptr %705, align 8, !tbaa !36
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %713, label %708

708:                                              ; preds = %704
  %709 = load i32, ptr %421, align 8, !tbaa !30
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %.loopexit72, label %711

711:                                              ; preds = %708
  %712 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %705, align 8, !tbaa !36
  br label %713

713:                                              ; preds = %711, %704
  %714 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %715 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %716 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %717 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %718 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %719 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %720 = load i32, ptr %714, align 8, !tbaa !26
  br label %721

721:                                              ; preds = %771, %713
  %722 = phi i32 [ %720, %713 ], [ %768, %771 ]
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %762

724:                                              ; preds = %721
  %725 = load ptr, ptr %715, align 8, !tbaa !27
  %726 = load ptr, ptr %716, align 8, !tbaa !28
  %727 = icmp ugt ptr %725, %726
  br i1 %727, label %728, label %759

728:                                              ; preds = %724
  %729 = tail call ptr @__errno_location() #17
  br label %730

730:                                              ; preds = %750, %728
  %731 = phi ptr [ %726, %728 ], [ %753, %750 ]
  %732 = phi ptr [ %725, %728 ], [ %754, %750 ]
  store i32 0, ptr %729, align 4, !tbaa !4
  store i32 0, ptr %717, align 4, !tbaa !17
  %733 = ptrtoint ptr %732 to i64
  %734 = ptrtoint ptr %731 to i64
  %735 = sub i64 %733, %734
  %736 = tail call i64 @llvm.smin.i64(i64 %735, i64 1073741824)
  %737 = and i64 %736, 4294967295
  %738 = load i32, ptr %718, align 4, !tbaa !31
  %739 = tail call i64 @write(i32 noundef %738, ptr noundef %731, i64 noundef %737) #15
  %740 = and i64 %739, 2147483648
  %741 = icmp eq i64 %740, 0
  br i1 %741, label %750, label %742

742:                                              ; preds = %730
  %743 = load i32, ptr %729, align 4, !tbaa !4
  %744 = icmp eq i32 %743, 11
  br i1 %744, label %745, label %747

745:                                              ; preds = %742
  store i32 1, ptr %717, align 4, !tbaa !17
  %746 = load i32, ptr %729, align 4, !tbaa !4
  br label %747

747:                                              ; preds = %745, %742
  %748 = phi i32 [ %743, %742 ], [ %746, %745 ]
  %749 = tail call ptr @strerror(i32 noundef %748) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %749) #15
  br label %.loopexit68

750:                                              ; preds = %730
  %751 = load ptr, ptr %716, align 8, !tbaa !28
  %752 = and i64 %739, 2147483647
  %753 = getelementptr inbounds nuw i8, ptr %751, i64 %752
  store ptr %753, ptr %716, align 8, !tbaa !28
  %754 = load ptr, ptr %715, align 8, !tbaa !27
  %755 = icmp ugt ptr %754, %753
  br i1 %755, label %730, label %756, !llvm.loop !37

756:                                              ; preds = %750
  %757 = load i32, ptr %714, align 8, !tbaa !26
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %762

759:                                              ; preds = %756, %724
  %760 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %760, ptr %714, align 8, !tbaa !26
  %761 = load ptr, ptr %719, align 8, !tbaa !22
  store ptr %761, ptr %715, align 8, !tbaa !27
  store ptr %761, ptr %716, align 8, !tbaa !28
  br label %762

762:                                              ; preds = %759, %756, %721
  %763 = phi i32 [ %757, %756 ], [ %760, %759 ], [ %722, %721 ]
  %764 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %765 = icmp eq i32 %764, -2
  br i1 %765, label %766, label %767

766:                                              ; preds = %762
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit68

767:                                              ; preds = %762
  %768 = load i32, ptr %714, align 8, !tbaa !26
  %769 = icmp ult i32 %763, %768
  br i1 %769, label %770, label %771, !prof !33, !nosanitize !32

770:                                              ; preds = %767
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

771:                                              ; preds = %767
  %772 = icmp eq i32 %763, %768
  br i1 %772, label %.loopexit72, label %721, !llvm.loop !38

.loopexit72:                                      ; preds = %698, %771, %708, %668, %618
  store ptr %0, ptr %420, align 8, !tbaa !42
  %773 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %774 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %775 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %776 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %777 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %778 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %779 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %780 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %781 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %782 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %783 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %784 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %785 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %786 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %787

787:                                              ; preds = %942, %.loopexit72
  %788 = phi i64 [ %20, %.loopexit72 ], [ %933, %942 ]
  %789 = tail call i64 @llvm.umin.i64(i64 %788, i64 4294967295)
  %790 = trunc nuw i64 %789 to i32
  store i32 %790, ptr %421, align 8, !tbaa !41
  %791 = load i32, ptr %32, align 8, !tbaa !18
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %824

793:                                              ; preds = %787
  %794 = load i32, ptr %774, align 4, !tbaa !19
  %795 = shl i32 %794, 1
  %796 = zext i32 %795 to i64
  %797 = tail call noalias ptr @malloc(i64 noundef %796) #16
  store ptr %797, ptr %775, align 8, !tbaa !20
  %798 = icmp eq ptr %797, null
  br i1 %798, label %799, label %800

799:                                              ; preds = %793
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

800:                                              ; preds = %793
  %801 = load i32, ptr %773, align 8, !tbaa !21
  %802 = icmp eq i32 %801, 0
  %803 = load i32, ptr %774, align 4, !tbaa !19
  br i1 %802, label %805, label %804

804:                                              ; preds = %800
  store i32 %803, ptr %32, align 8, !tbaa !18
  br label %827

805:                                              ; preds = %800
  %806 = zext i32 %803 to i64
  %807 = tail call noalias ptr @malloc(i64 noundef %806) #16
  store ptr %807, ptr %776, align 8, !tbaa !22
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %810

809:                                              ; preds = %805
  tail call void @free(ptr noundef nonnull %797) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

810:                                              ; preds = %805
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %777, i8 0, i64 24, i1 false)
  %811 = load i32, ptr %778, align 8, !tbaa !23
  %812 = load i32, ptr %779, align 4, !tbaa !24
  %813 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %811, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %812, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %810
  %816 = load ptr, ptr %776, align 8, !tbaa !22
  tail call void @free(ptr noundef %816) #15
  %817 = load ptr, ptr %775, align 8, !tbaa !20
  tail call void @free(ptr noundef %817) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit69

818:                                              ; preds = %810
  store ptr null, ptr %420, align 8, !tbaa !25
  %819 = load i32, ptr %773, align 8, !tbaa !21
  %820 = load i32, ptr %774, align 4, !tbaa !19
  store i32 %820, ptr %32, align 8, !tbaa !18
  %821 = icmp eq i32 %819, 0
  br i1 %821, label %822, label %827

822:                                              ; preds = %818
  store i32 %820, ptr %782, align 8, !tbaa !26
  %823 = load ptr, ptr %776, align 8, !tbaa !22
  store ptr %823, ptr %783, align 8, !tbaa !27
  store ptr %823, ptr %784, align 8, !tbaa !28
  br label %861

824:                                              ; preds = %787
  %825 = load i32, ptr %773, align 8, !tbaa !21
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %861, label %827

827:                                              ; preds = %824, %818, %804
  %828 = load i32, ptr %421, align 8, !tbaa !30
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %.loopexit69, label %830

830:                                              ; preds = %827
  %831 = tail call ptr @__errno_location() #17
  %832 = load ptr, ptr %420, align 8, !tbaa !25
  br label %833

833:                                              ; preds = %855, %830
  %834 = phi ptr [ %832, %830 ], [ %859, %855 ]
  store i32 0, ptr %831, align 4, !tbaa !4
  store i32 0, ptr %780, align 4, !tbaa !17
  %835 = load i32, ptr %421, align 8, !tbaa !30
  %836 = tail call i32 @llvm.umin.i32(i32 %835, i32 1073741824)
  %837 = zext nneg i32 %836 to i64
  %838 = load i32, ptr %781, align 4, !tbaa !31
  %839 = tail call i64 @write(i32 noundef %838, ptr noundef %834, i64 noundef %837) #15
  %840 = trunc i64 %839 to i32
  %841 = icmp slt i32 %840, 0
  br i1 %841, label %842, label %850

842:                                              ; preds = %833
  %843 = load i32, ptr %831, align 4, !tbaa !4
  %844 = icmp eq i32 %843, 11
  br i1 %844, label %845, label %847

845:                                              ; preds = %842
  store i32 1, ptr %780, align 4, !tbaa !17
  %846 = load i32, ptr %831, align 4, !tbaa !4
  br label %847

847:                                              ; preds = %845, %842
  %848 = phi i32 [ %843, %842 ], [ %846, %845 ]
  %849 = tail call ptr @strerror(i32 noundef %848) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %849) #15
  br label %.loopexit69

850:                                              ; preds = %833
  %851 = load i32, ptr %421, align 8, !tbaa !30
  %852 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %851, i32 %840), !nosanitize !32
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !32
  br i1 %853, label %854, label %855, !prof !33, !nosanitize !32

854:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

855:                                              ; preds = %850
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !32
  store i32 %856, ptr %421, align 8, !tbaa !30
  %857 = load ptr, ptr %420, align 8, !tbaa !25
  %858 = and i64 %839, 2147483647
  %859 = getelementptr inbounds nuw i8, ptr %857, i64 %858
  store ptr %859, ptr %420, align 8, !tbaa !25
  %860 = icmp eq i32 %856, 0
  br i1 %860, label %.loopexit69, label %833, !llvm.loop !34

861:                                              ; preds = %824, %822
  %862 = load i32, ptr %785, align 8, !tbaa !36
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %869, label %864

864:                                              ; preds = %861
  %865 = load i32, ptr %421, align 8, !tbaa !30
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %.loopexit69, label %867

867:                                              ; preds = %864
  %868 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %785, align 8, !tbaa !36
  br label %869

869:                                              ; preds = %867, %861
  %870 = load i32, ptr %782, align 8, !tbaa !26
  br label %871

871:                                              ; preds = %921, %869
  %872 = phi i32 [ %870, %869 ], [ %918, %921 ]
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %912

874:                                              ; preds = %871
  %875 = load ptr, ptr %783, align 8, !tbaa !27
  %876 = load ptr, ptr %784, align 8, !tbaa !28
  %877 = icmp ugt ptr %875, %876
  br i1 %877, label %878, label %909

878:                                              ; preds = %874
  %879 = tail call ptr @__errno_location() #17
  br label %880

880:                                              ; preds = %900, %878
  %881 = phi ptr [ %876, %878 ], [ %903, %900 ]
  %882 = phi ptr [ %875, %878 ], [ %904, %900 ]
  store i32 0, ptr %879, align 4, !tbaa !4
  store i32 0, ptr %780, align 4, !tbaa !17
  %883 = ptrtoint ptr %882 to i64
  %884 = ptrtoint ptr %881 to i64
  %885 = sub i64 %883, %884
  %886 = tail call i64 @llvm.smin.i64(i64 %885, i64 1073741824)
  %887 = and i64 %886, 4294967295
  %888 = load i32, ptr %781, align 4, !tbaa !31
  %889 = tail call i64 @write(i32 noundef %888, ptr noundef %881, i64 noundef %887) #15
  %890 = and i64 %889, 2147483648
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %900, label %892

892:                                              ; preds = %880
  %893 = load i32, ptr %879, align 4, !tbaa !4
  %894 = icmp eq i32 %893, 11
  br i1 %894, label %895, label %897

895:                                              ; preds = %892
  store i32 1, ptr %780, align 4, !tbaa !17
  %896 = load i32, ptr %879, align 4, !tbaa !4
  br label %897

897:                                              ; preds = %895, %892
  %898 = phi i32 [ %893, %892 ], [ %896, %895 ]
  %899 = tail call ptr @strerror(i32 noundef %898) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %899) #15
  br label %.loopexit69

900:                                              ; preds = %880
  %901 = load ptr, ptr %784, align 8, !tbaa !28
  %902 = and i64 %889, 2147483647
  %903 = getelementptr inbounds nuw i8, ptr %901, i64 %902
  store ptr %903, ptr %784, align 8, !tbaa !28
  %904 = load ptr, ptr %783, align 8, !tbaa !27
  %905 = icmp ugt ptr %904, %903
  br i1 %905, label %880, label %906, !llvm.loop !37

906:                                              ; preds = %900
  %907 = load i32, ptr %782, align 8, !tbaa !26
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %912

909:                                              ; preds = %906, %874
  %910 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %910, ptr %782, align 8, !tbaa !26
  %911 = load ptr, ptr %776, align 8, !tbaa !22
  store ptr %911, ptr %783, align 8, !tbaa !27
  store ptr %911, ptr %784, align 8, !tbaa !28
  br label %912

912:                                              ; preds = %909, %906, %871
  %913 = phi i32 [ %907, %906 ], [ %910, %909 ], [ %872, %871 ]
  %914 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %915 = icmp eq i32 %914, -2
  br i1 %915, label %916, label %917

916:                                              ; preds = %912
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit69

917:                                              ; preds = %912
  %918 = load i32, ptr %782, align 8, !tbaa !26
  %919 = icmp ult i32 %913, %918
  br i1 %919, label %920, label %921, !prof !33, !nosanitize !32

920:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

921:                                              ; preds = %917
  %922 = icmp eq i32 %913, %918
  br i1 %922, label %.loopexit69, label %871, !llvm.loop !38

.loopexit69:                                      ; preds = %855, %921, %916, %897, %864, %847, %827, %815, %809, %799
  %923 = phi i1 [ false, %864 ], [ true, %847 ], [ false, %827 ], [ true, %809 ], [ true, %897 ], [ true, %916 ], [ false, %921 ], [ true, %799 ], [ true, %815 ], [ false, %855 ]
  %924 = load i32, ptr %421, align 8, !tbaa !41
  %925 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %790, i32 %924), !nosanitize !32
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !32
  br i1 %926, label %927, label %928, !prof !33, !nosanitize !32

927:                                              ; preds = %.loopexit69
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

928:                                              ; preds = %.loopexit69
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !32
  %930 = zext i32 %929 to i64
  %931 = load i64, ptr %786, align 8, !tbaa !39
  %932 = add nsw i64 %931, %930
  store i64 %932, ptr %786, align 8, !tbaa !39
  %933 = sub i64 %788, %930
  br i1 %923, label %934, label %942

934:                                              ; preds = %928
  %935 = load i32, ptr %780, align 4, !tbaa !17
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %.loopexit68, label %937

937:                                              ; preds = %934
  %938 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %933), !nosanitize !32
  %939 = extractvalue { i64, i1 } %938, 0, !nosanitize !32
  %940 = extractvalue { i64, i1 } %938, 1, !nosanitize !32
  br i1 %940, label %941, label %.loopexit68, !prof !33, !nosanitize !32

941:                                              ; preds = %937
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

942:                                              ; preds = %928
  %943 = icmp eq i64 %933, 0
  br i1 %943, label %.loopexit68, label %787, !llvm.loop !43

.loopexit68:                                      ; preds = %405, %942, %470, %937, %934, %766, %747, %690, %652, %643, %631, %613, %610, %232, %213, %156, %118, %109, %97, %65, %56, %44
  %944 = phi i64 [ 0, %652 ], [ %20, %470 ], [ %20, %942 ], [ 0, %934 ], [ 0, %610 ], [ 0, %56 ], [ %939, %937 ], [ 0, %44 ], [ 0, %65 ], [ 0, %97 ], [ 0, %118 ], [ 0, %156 ], [ 0, %109 ], [ 0, %213 ], [ 0, %232 ], [ %615, %613 ], [ 0, %690 ], [ 0, %643 ], [ 0, %747 ], [ 0, %766 ], [ 0, %631 ], [ 0, %405 ]
  %945 = udiv i64 %944, %1
  br label %946

946:                                              ; preds = %.loopexit68, %29, %28, %14, %6, %4
  %947 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %28 ], [ 0, %14 ], [ %945, %.loopexit68 ], [ 0, %29 ]
  ret i64 %947
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit102, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %.loopexit102

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %.loopexit102, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit108, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %.loopexit109, label %26

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
  br label %.loopexit102

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
  br label %.loopexit102

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
  br label %.loopexit102

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
  br label %111

71:                                               ; preds = %26
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %73 = load i32, ptr %72, align 8, !tbaa !21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %71, %62, %44
  %76 = load i32, ptr %23, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit109, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @__errno_location() #17
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %82 = load ptr, ptr %6, align 8, !tbaa !25
  br label %83

83:                                               ; preds = %105, %78
  %84 = phi ptr [ %82, %78 ], [ %109, %105 ]
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
  br label %.loopexit102

100:                                              ; preds = %83
  %101 = load i32, ptr %23, align 8, !tbaa !30
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %90), !nosanitize !32
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !32
  br i1 %103, label %104, label %105, !prof !33, !nosanitize !32

104:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

105:                                              ; preds = %100
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !32
  store i32 %106, ptr %23, align 8, !tbaa !30
  %107 = load ptr, ptr %6, align 8, !tbaa !25
  %108 = and i64 %89, 2147483647
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  store ptr %109, ptr %6, align 8, !tbaa !25
  %110 = icmp eq i32 %106, 0
  br i1 %110, label %.loopexit109, label %83, !llvm.loop !34

111:                                              ; preds = %71, %66
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %113 = load i32, ptr %112, align 8, !tbaa !36
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %23, align 8, !tbaa !30
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %.loopexit109, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %112, align 8, !tbaa !36
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
  store i32 0, ptr %136, align 4, !tbaa !4
  store i32 0, ptr %124, align 4, !tbaa !17
  %140 = ptrtoint ptr %139 to i64
  %141 = ptrtoint ptr %138 to i64
  %142 = sub i64 %140, %141
  %143 = tail call i64 @llvm.smin.i64(i64 %142, i64 1073741824)
  %144 = and i64 %143, 4294967295
  %145 = load i32, ptr %125, align 4, !tbaa !31
  %146 = tail call i64 @write(i32 noundef %145, ptr noundef %138, i64 noundef %144) #15
  %147 = and i64 %146, 2147483648
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %137
  %150 = load i32, ptr %136, align 4, !tbaa !4
  %151 = icmp eq i32 %150, 11
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i32 1, ptr %124, align 4, !tbaa !17
  %153 = load i32, ptr %136, align 4, !tbaa !4
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %152 ]
  %156 = tail call ptr @strerror(i32 noundef %155) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %156) #15
  br label %.loopexit102

157:                                              ; preds = %137
  %158 = load ptr, ptr %123, align 8, !tbaa !28
  %159 = and i64 %146, 2147483647
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store ptr %160, ptr %123, align 8, !tbaa !28
  %161 = load ptr, ptr %122, align 8, !tbaa !27
  %162 = icmp ugt ptr %161, %160
  br i1 %162, label %137, label %163, !llvm.loop !37

163:                                              ; preds = %157
  %164 = load i32, ptr %121, align 8, !tbaa !26
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %131
  %167 = load i32, ptr %27, align 8, !tbaa !18
  store i32 %167, ptr %121, align 8, !tbaa !26
  %168 = load ptr, ptr %126, align 8, !tbaa !22
  store ptr %168, ptr %122, align 8, !tbaa !27
  store ptr %168, ptr %123, align 8, !tbaa !28
  br label %169

169:                                              ; preds = %166, %163, %128
  %170 = phi i32 [ %164, %163 ], [ %167, %166 ], [ %129, %128 ]
  %171 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %172 = icmp eq i32 %171, -2
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit102

174:                                              ; preds = %169
  %175 = load i32, ptr %121, align 8, !tbaa !26
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %177, label %178, !prof !33, !nosanitize !32

177:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

178:                                              ; preds = %174
  %179 = icmp eq i32 %170, %175
  br i1 %179, label %.loopexit109, label %128, !llvm.loop !38

.loopexit109:                                     ; preds = %105, %178, %115, %75, %22
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

196:                                              ; preds = %354, %.loopexit109
  %197 = phi i64 [ %195, %.loopexit109 ], [ %353, %354 ]
  %198 = phi i1 [ false, %.loopexit109 ], [ true, %354 ]
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
  br i1 %211, label %212, label %243

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
  br label %.loopexit105

219:                                              ; preds = %212
  %220 = load i32, ptr %182, align 8, !tbaa !21
  %221 = icmp eq i32 %220, 0
  %222 = load i32, ptr %183, align 4, !tbaa !19
  br i1 %221, label %224, label %223

223:                                              ; preds = %219
  store i32 %222, ptr %180, align 8, !tbaa !18
  br label %246

224:                                              ; preds = %219
  %225 = zext i32 %222 to i64
  %226 = tail call noalias ptr @malloc(i64 noundef %225) #16
  store ptr %226, ptr %184, align 8, !tbaa !22
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  tail call void @free(ptr noundef nonnull %216) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit105

229:                                              ; preds = %224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %185, i8 0, i64 24, i1 false)
  %230 = load i32, ptr %186, align 8, !tbaa !23
  %231 = load i32, ptr %187, align 4, !tbaa !24
  %232 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %230, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %231, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %184, align 8, !tbaa !22
  tail call void @free(ptr noundef %235) #15
  %236 = load ptr, ptr %181, align 8, !tbaa !20
  tail call void @free(ptr noundef %236) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit105

237:                                              ; preds = %229
  store ptr null, ptr %6, align 8, !tbaa !25
  %238 = load i32, ptr %182, align 8, !tbaa !21
  %239 = load i32, ptr %183, align 4, !tbaa !19
  store i32 %239, ptr %180, align 8, !tbaa !18
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  store i32 %239, ptr %190, align 8, !tbaa !26
  %242 = load ptr, ptr %184, align 8, !tbaa !22
  store ptr %242, ptr %191, align 8, !tbaa !27
  store ptr %242, ptr %192, align 8, !tbaa !28
  br label %280

243:                                              ; preds = %208
  %244 = load i32, ptr %182, align 8, !tbaa !21
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %280, label %246

246:                                              ; preds = %243, %237, %223
  %247 = phi ptr [ %210, %243 ], [ null, %237 ], [ %210, %223 ]
  %248 = load i32, ptr %23, align 8, !tbaa !30
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %.loopexit105, label %250

250:                                              ; preds = %246
  %251 = tail call ptr @__errno_location() #17
  br label %252

252:                                              ; preds = %274, %250
  %253 = phi ptr [ %247, %250 ], [ %278, %274 ]
  store i32 0, ptr %251, align 4, !tbaa !4
  store i32 0, ptr %188, align 4, !tbaa !17
  %254 = load i32, ptr %23, align 8, !tbaa !30
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
  br label %.loopexit105

269:                                              ; preds = %252
  %270 = load i32, ptr %23, align 8, !tbaa !30
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 %259), !nosanitize !32
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !32
  br i1 %272, label %273, label %274, !prof !33, !nosanitize !32

273:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !32
  store i32 %275, ptr %23, align 8, !tbaa !30
  %276 = load ptr, ptr %6, align 8, !tbaa !25
  %277 = and i64 %258, 2147483647
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 %277
  store ptr %278, ptr %6, align 8, !tbaa !25
  %279 = icmp eq i32 %275, 0
  br i1 %279, label %.loopexit105, label %252, !llvm.loop !34

280:                                              ; preds = %243, %241
  %281 = load i32, ptr %193, align 8, !tbaa !36
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %23, align 8, !tbaa !30
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %.loopexit105, label %286

286:                                              ; preds = %283
  %287 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %193, align 8, !tbaa !36
  br label %288

288:                                              ; preds = %286, %280
  %289 = load i32, ptr %190, align 8, !tbaa !26
  br label %290

290:                                              ; preds = %340, %288
  %291 = phi i32 [ %289, %288 ], [ %337, %340 ]
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %331

293:                                              ; preds = %290
  %294 = load ptr, ptr %191, align 8, !tbaa !27
  %295 = load ptr, ptr %192, align 8, !tbaa !28
  %296 = icmp ugt ptr %294, %295
  br i1 %296, label %297, label %328

297:                                              ; preds = %293
  %298 = tail call ptr @__errno_location() #17
  br label %299

299:                                              ; preds = %319, %297
  %300 = phi ptr [ %295, %297 ], [ %322, %319 ]
  %301 = phi ptr [ %294, %297 ], [ %323, %319 ]
  store i32 0, ptr %298, align 4, !tbaa !4
  store i32 0, ptr %188, align 4, !tbaa !17
  %302 = ptrtoint ptr %301 to i64
  %303 = ptrtoint ptr %300 to i64
  %304 = sub i64 %302, %303
  %305 = tail call i64 @llvm.smin.i64(i64 %304, i64 1073741824)
  %306 = and i64 %305, 4294967295
  %307 = load i32, ptr %189, align 4, !tbaa !31
  %308 = tail call i64 @write(i32 noundef %307, ptr noundef %300, i64 noundef %306) #15
  %309 = and i64 %308, 2147483648
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %299
  %312 = load i32, ptr %298, align 4, !tbaa !4
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  store i32 1, ptr %188, align 4, !tbaa !17
  %315 = load i32, ptr %298, align 4, !tbaa !4
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %314 ]
  %318 = tail call ptr @strerror(i32 noundef %317) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %318) #15
  br label %.loopexit105

319:                                              ; preds = %299
  %320 = load ptr, ptr %192, align 8, !tbaa !28
  %321 = and i64 %308, 2147483647
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store ptr %322, ptr %192, align 8, !tbaa !28
  %323 = load ptr, ptr %191, align 8, !tbaa !27
  %324 = icmp ugt ptr %323, %322
  br i1 %324, label %299, label %325, !llvm.loop !37

325:                                              ; preds = %319
  %326 = load i32, ptr %190, align 8, !tbaa !26
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325, %293
  %329 = load i32, ptr %180, align 8, !tbaa !18
  store i32 %329, ptr %190, align 8, !tbaa !26
  %330 = load ptr, ptr %184, align 8, !tbaa !22
  store ptr %330, ptr %191, align 8, !tbaa !27
  store ptr %330, ptr %192, align 8, !tbaa !28
  br label %331

331:                                              ; preds = %328, %325, %290
  %332 = phi i32 [ %326, %325 ], [ %329, %328 ], [ %291, %290 ]
  %333 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %334 = icmp eq i32 %333, -2
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit105

336:                                              ; preds = %331
  %337 = load i32, ptr %190, align 8, !tbaa !26
  %338 = icmp ult i32 %332, %337
  br i1 %338, label %339, label %340, !prof !33, !nosanitize !32

339:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

340:                                              ; preds = %336
  %341 = icmp eq i32 %332, %337
  br i1 %341, label %.loopexit105, label %290, !llvm.loop !38

.loopexit105:                                     ; preds = %274, %340, %335, %316, %283, %266, %246, %234, %228, %218
  %342 = phi i1 [ false, %283 ], [ true, %266 ], [ false, %246 ], [ true, %228 ], [ true, %316 ], [ true, %335 ], [ false, %340 ], [ true, %218 ], [ true, %234 ], [ false, %274 ]
  %343 = load i32, ptr %23, align 8, !tbaa !30
  %344 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %202, i32 %343), !nosanitize !32
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !32
  br i1 %345, label %346, label %347, !prof !33, !nosanitize !32

346:                                              ; preds = %.loopexit105
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

347:                                              ; preds = %.loopexit105
  %348 = extractvalue { i32, i1 } %344, 0, !nosanitize !32
  %349 = zext i32 %348 to i64
  %350 = load i64, ptr %194, align 8, !tbaa !39
  %351 = add nsw i64 %350, %349
  store i64 %351, ptr %194, align 8, !tbaa !39
  %352 = load i64, ptr %19, align 8, !tbaa !29
  %353 = sub nsw i64 %352, %349
  store i64 %353, ptr %19, align 8, !tbaa !29
  br i1 %342, label %.loopexit102, label %354

354:                                              ; preds = %347
  %355 = icmp eq i64 %352, %349
  br i1 %355, label %.loopexit108, label %196, !llvm.loop !40

.loopexit108:                                     ; preds = %354, %18
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %357 = load i32, ptr %356, align 8, !tbaa !18
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %395, label %359

359:                                              ; preds = %.loopexit108
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %361 = load i32, ptr %360, align 8, !tbaa !30
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load ptr, ptr %6, align 8, !tbaa !25
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %366 = load ptr, ptr %365, align 8, !tbaa !20
  br label %370

367:                                              ; preds = %359
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %369 = load ptr, ptr %368, align 8, !tbaa !20
  store ptr %369, ptr %6, align 8, !tbaa !25
  br label %370

370:                                              ; preds = %367, %363
  %371 = phi ptr [ %366, %363 ], [ %369, %367 ]
  %372 = phi ptr [ %364, %363 ], [ %369, %367 ]
  %373 = zext i32 %361 to i64
  %374 = getelementptr inbounds nuw i8, ptr %372, i64 %373
  %375 = ptrtoint ptr %374 to i64
  %376 = ptrtoint ptr %371 to i64
  %377 = sub i64 %375, %376
  %378 = trunc i64 %377 to i32
  %379 = icmp ugt i32 %357, %378
  %380 = trunc i32 %1 to i8
  br i1 %379, label %381, label %394

381:                                              ; preds = %370
  %382 = and i64 %377, 4294967295
  %383 = getelementptr inbounds nuw i8, ptr %371, i64 %382
  store i8 %380, ptr %383, align 1, !tbaa !44
  %384 = load i32, ptr %360, align 8, !tbaa !30
  %385 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %384, i32 1), !nosanitize !32
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !32
  br i1 %386, label %387, label %388, !prof !33, !nosanitize !32

387:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

388:                                              ; preds = %381
  %389 = extractvalue { i32, i1 } %385, 0, !nosanitize !32
  store i32 %389, ptr %360, align 8, !tbaa !30
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %391 = load i64, ptr %390, align 8, !tbaa !39
  %392 = add nsw i64 %391, 1
  store i64 %392, ptr %390, align 8, !tbaa !39
  %393 = and i32 %1, 255
  br label %.loopexit102

394:                                              ; preds = %370
  store i8 %380, ptr %3, align 1, !tbaa !44
  br label %437

395:                                              ; preds = %.loopexit108
  %396 = trunc i32 %1 to i8
  store i8 %396, ptr %3, align 1, !tbaa !44
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %398 = load i32, ptr %397, align 4, !tbaa !19
  %399 = shl i32 %398, 1
  %400 = zext i32 %399 to i64
  %401 = tail call noalias ptr @malloc(i64 noundef %400) #16
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %401, ptr %402, align 8, !tbaa !20
  %403 = icmp eq ptr %401, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %395
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

405:                                              ; preds = %395
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %407 = load i32, ptr %406, align 8, !tbaa !21
  %408 = icmp eq i32 %407, 0
  %409 = load i32, ptr %397, align 4, !tbaa !19
  br i1 %408, label %411, label %410

410:                                              ; preds = %405
  store i32 %409, ptr %356, align 8, !tbaa !18
  br label %437

411:                                              ; preds = %405
  %412 = zext i32 %409 to i64
  %413 = tail call noalias ptr @malloc(i64 noundef %412) #16
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %413, ptr %414, align 8, !tbaa !22
  %415 = icmp eq ptr %413, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %411
  tail call void @free(ptr noundef nonnull %401) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

417:                                              ; preds = %411
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %418, i8 0, i64 24, i1 false)
  %420 = load i32, ptr %419, align 8, !tbaa !23
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %422 = load i32, ptr %421, align 4, !tbaa !24
  %423 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %420, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %422, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %417
  %426 = load ptr, ptr %414, align 8, !tbaa !22
  tail call void @free(ptr noundef %426) #15
  %427 = load ptr, ptr %402, align 8, !tbaa !20
  tail call void @free(ptr noundef %427) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

428:                                              ; preds = %417
  store ptr null, ptr %6, align 8, !tbaa !25
  %429 = load i32, ptr %406, align 8, !tbaa !21
  %430 = load i32, ptr %397, align 4, !tbaa !19
  store i32 %430, ptr %356, align 8, !tbaa !18
  %431 = icmp eq i32 %429, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %428
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %430, ptr %433, align 8, !tbaa !26
  %434 = load ptr, ptr %414, align 8, !tbaa !22
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %434, ptr %435, align 8, !tbaa !27
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %434, ptr %436, align 8, !tbaa !28
  br label %437

437:                                              ; preds = %432, %428, %410, %394
  %438 = phi i32 [ %430, %432 ], [ %430, %428 ], [ %409, %410 ], [ %357, %394 ]
  %439 = load i64, ptr %19, align 8, !tbaa !29
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %774, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %443 = load i32, ptr %442, align 8, !tbaa !30
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %.loopexit103, label %445

445:                                              ; preds = %441
  %446 = icmp eq i32 %438, 0
  br i1 %446, label %447, label %488

447:                                              ; preds = %445
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %449 = load i32, ptr %448, align 4, !tbaa !19
  %450 = shl i32 %449, 1
  %451 = zext i32 %450 to i64
  %452 = tail call noalias ptr @malloc(i64 noundef %451) #16
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %452, ptr %453, align 8, !tbaa !20
  %454 = icmp eq ptr %452, null
  br i1 %454, label %455, label %456

455:                                              ; preds = %447
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

456:                                              ; preds = %447
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %458 = load i32, ptr %457, align 8, !tbaa !21
  %459 = icmp eq i32 %458, 0
  %460 = load i32, ptr %448, align 4, !tbaa !19
  br i1 %459, label %462, label %461

461:                                              ; preds = %456
  store i32 %460, ptr %356, align 8, !tbaa !18
  br label %492

462:                                              ; preds = %456
  %463 = zext i32 %460 to i64
  %464 = tail call noalias ptr @malloc(i64 noundef %463) #16
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %464, ptr %465, align 8, !tbaa !22
  %466 = icmp eq ptr %464, null
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  tail call void @free(ptr noundef nonnull %452) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

468:                                              ; preds = %462
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %469, i8 0, i64 24, i1 false)
  %471 = load i32, ptr %470, align 8, !tbaa !23
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %473 = load i32, ptr %472, align 4, !tbaa !24
  %474 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %471, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %473, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %468
  %477 = load ptr, ptr %465, align 8, !tbaa !22
  tail call void @free(ptr noundef %477) #15
  %478 = load ptr, ptr %453, align 8, !tbaa !20
  tail call void @free(ptr noundef %478) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

479:                                              ; preds = %468
  store ptr null, ptr %6, align 8, !tbaa !25
  %480 = load i32, ptr %457, align 8, !tbaa !21
  %481 = load i32, ptr %448, align 4, !tbaa !19
  store i32 %481, ptr %356, align 8, !tbaa !18
  %482 = icmp eq i32 %480, 0
  br i1 %482, label %483, label %492

483:                                              ; preds = %479
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %481, ptr %484, align 8, !tbaa !26
  %485 = load ptr, ptr %465, align 8, !tbaa !22
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %485, ptr %486, align 8, !tbaa !27
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %485, ptr %487, align 8, !tbaa !28
  br label %528

488:                                              ; preds = %445
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %490 = load i32, ptr %489, align 8, !tbaa !21
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %528, label %492

492:                                              ; preds = %488, %479, %461
  %493 = load i32, ptr %442, align 8, !tbaa !30
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %.loopexit103, label %495

495:                                              ; preds = %492
  %496 = tail call ptr @__errno_location() #17
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %499 = load ptr, ptr %6, align 8, !tbaa !25
  br label %500

500:                                              ; preds = %522, %495
  %501 = phi ptr [ %499, %495 ], [ %526, %522 ]
  store i32 0, ptr %496, align 4, !tbaa !4
  store i32 0, ptr %497, align 4, !tbaa !17
  %502 = load i32, ptr %442, align 8, !tbaa !30
  %503 = tail call i32 @llvm.umin.i32(i32 %502, i32 1073741824)
  %504 = zext nneg i32 %503 to i64
  %505 = load i32, ptr %498, align 4, !tbaa !31
  %506 = tail call i64 @write(i32 noundef %505, ptr noundef %501, i64 noundef %504) #15
  %507 = trunc i64 %506 to i32
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %517

509:                                              ; preds = %500
  %510 = load i32, ptr %496, align 4, !tbaa !4
  %511 = icmp eq i32 %510, 11
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  store i32 1, ptr %497, align 4, !tbaa !17
  %513 = load i32, ptr %496, align 4, !tbaa !4
  br label %514

514:                                              ; preds = %512, %509
  %515 = phi i32 [ %510, %509 ], [ %513, %512 ]
  %516 = tail call ptr @strerror(i32 noundef %515) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %516) #15
  br label %.loopexit102

517:                                              ; preds = %500
  %518 = load i32, ptr %442, align 8, !tbaa !30
  %519 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %518, i32 %507), !nosanitize !32
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !32
  br i1 %520, label %521, label %522, !prof !33, !nosanitize !32

521:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

522:                                              ; preds = %517
  %523 = extractvalue { i32, i1 } %519, 0, !nosanitize !32
  store i32 %523, ptr %442, align 8, !tbaa !30
  %524 = load ptr, ptr %6, align 8, !tbaa !25
  %525 = and i64 %506, 2147483647
  %526 = getelementptr inbounds nuw i8, ptr %524, i64 %525
  store ptr %526, ptr %6, align 8, !tbaa !25
  %527 = icmp eq i32 %523, 0
  br i1 %527, label %.loopexit103, label %500, !llvm.loop !34

528:                                              ; preds = %488, %483
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %530 = load i32, ptr %529, align 8, !tbaa !36
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %537, label %532

532:                                              ; preds = %528
  %533 = load i32, ptr %442, align 8, !tbaa !30
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %.loopexit103, label %535

535:                                              ; preds = %532
  %536 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %529, align 8, !tbaa !36
  br label %537

537:                                              ; preds = %535, %528
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %544 = load i32, ptr %538, align 8, !tbaa !26
  br label %545

545:                                              ; preds = %595, %537
  %546 = phi i32 [ %544, %537 ], [ %592, %595 ]
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %586

548:                                              ; preds = %545
  %549 = load ptr, ptr %539, align 8, !tbaa !27
  %550 = load ptr, ptr %540, align 8, !tbaa !28
  %551 = icmp ugt ptr %549, %550
  br i1 %551, label %552, label %583

552:                                              ; preds = %548
  %553 = tail call ptr @__errno_location() #17
  br label %554

554:                                              ; preds = %574, %552
  %555 = phi ptr [ %550, %552 ], [ %577, %574 ]
  %556 = phi ptr [ %549, %552 ], [ %578, %574 ]
  store i32 0, ptr %553, align 4, !tbaa !4
  store i32 0, ptr %541, align 4, !tbaa !17
  %557 = ptrtoint ptr %556 to i64
  %558 = ptrtoint ptr %555 to i64
  %559 = sub i64 %557, %558
  %560 = tail call i64 @llvm.smin.i64(i64 %559, i64 1073741824)
  %561 = and i64 %560, 4294967295
  %562 = load i32, ptr %542, align 4, !tbaa !31
  %563 = tail call i64 @write(i32 noundef %562, ptr noundef %555, i64 noundef %561) #15
  %564 = and i64 %563, 2147483648
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %574, label %566

566:                                              ; preds = %554
  %567 = load i32, ptr %553, align 4, !tbaa !4
  %568 = icmp eq i32 %567, 11
  br i1 %568, label %569, label %571

569:                                              ; preds = %566
  store i32 1, ptr %541, align 4, !tbaa !17
  %570 = load i32, ptr %553, align 4, !tbaa !4
  br label %571

571:                                              ; preds = %569, %566
  %572 = phi i32 [ %567, %566 ], [ %570, %569 ]
  %573 = tail call ptr @strerror(i32 noundef %572) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %573) #15
  br label %.loopexit102

574:                                              ; preds = %554
  %575 = load ptr, ptr %540, align 8, !tbaa !28
  %576 = and i64 %563, 2147483647
  %577 = getelementptr inbounds nuw i8, ptr %575, i64 %576
  store ptr %577, ptr %540, align 8, !tbaa !28
  %578 = load ptr, ptr %539, align 8, !tbaa !27
  %579 = icmp ugt ptr %578, %577
  br i1 %579, label %554, label %580, !llvm.loop !37

580:                                              ; preds = %574
  %581 = load i32, ptr %538, align 8, !tbaa !26
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %586

583:                                              ; preds = %580, %548
  %584 = load i32, ptr %356, align 8, !tbaa !18
  store i32 %584, ptr %538, align 8, !tbaa !26
  %585 = load ptr, ptr %543, align 8, !tbaa !22
  store ptr %585, ptr %539, align 8, !tbaa !27
  store ptr %585, ptr %540, align 8, !tbaa !28
  br label %586

586:                                              ; preds = %583, %580, %545
  %587 = phi i32 [ %581, %580 ], [ %584, %583 ], [ %546, %545 ]
  %588 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %589 = icmp eq i32 %588, -2
  br i1 %589, label %590, label %591

590:                                              ; preds = %586
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit102

591:                                              ; preds = %586
  %592 = load i32, ptr %538, align 8, !tbaa !26
  %593 = icmp ult i32 %587, %592
  br i1 %593, label %594, label %595, !prof !33, !nosanitize !32

594:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

595:                                              ; preds = %591
  %596 = icmp eq i32 %587, %592
  br i1 %596, label %.loopexit103, label %545, !llvm.loop !38

.loopexit103:                                     ; preds = %522, %595, %532, %492, %441
  %597 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %598 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %599 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %606 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %608 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %609 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %611 = load i64, ptr %19, align 8, !tbaa !29
  br label %612

612:                                              ; preds = %770, %.loopexit103
  %613 = phi i64 [ %611, %.loopexit103 ], [ %769, %770 ]
  %614 = phi i1 [ false, %.loopexit103 ], [ true, %770 ]
  %615 = load i32, ptr %356, align 8, !tbaa !18
  %616 = zext i32 %615 to i64
  %617 = tail call i64 @llvm.smin.i64(i64 %613, i64 %616)
  %618 = trunc i64 %617 to i32
  %619 = load ptr, ptr %597, align 8, !tbaa !20
  br i1 %614, label %624, label %620

620:                                              ; preds = %612
  %621 = and i64 %617, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %619, i8 0, i64 %621, i1 false)
  %622 = load ptr, ptr %597, align 8, !tbaa !20
  %623 = load i32, ptr %356, align 8, !tbaa !18
  br label %624

624:                                              ; preds = %620, %612
  %625 = phi i32 [ %623, %620 ], [ %615, %612 ]
  %626 = phi ptr [ %622, %620 ], [ %619, %612 ]
  store i32 %618, ptr %442, align 8, !tbaa !30
  store ptr %626, ptr %6, align 8, !tbaa !25
  %627 = icmp eq i32 %625, 0
  br i1 %627, label %628, label %659

628:                                              ; preds = %624
  %629 = load i32, ptr %599, align 4, !tbaa !19
  %630 = shl i32 %629, 1
  %631 = zext i32 %630 to i64
  %632 = tail call noalias ptr @malloc(i64 noundef %631) #16
  store ptr %632, ptr %597, align 8, !tbaa !20
  %633 = icmp eq ptr %632, null
  br i1 %633, label %634, label %635

634:                                              ; preds = %628
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

635:                                              ; preds = %628
  %636 = load i32, ptr %598, align 8, !tbaa !21
  %637 = icmp eq i32 %636, 0
  %638 = load i32, ptr %599, align 4, !tbaa !19
  br i1 %637, label %640, label %639

639:                                              ; preds = %635
  store i32 %638, ptr %356, align 8, !tbaa !18
  br label %662

640:                                              ; preds = %635
  %641 = zext i32 %638 to i64
  %642 = tail call noalias ptr @malloc(i64 noundef %641) #16
  store ptr %642, ptr %600, align 8, !tbaa !22
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %645

644:                                              ; preds = %640
  tail call void @free(ptr noundef nonnull %632) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

645:                                              ; preds = %640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %601, i8 0, i64 24, i1 false)
  %646 = load i32, ptr %602, align 8, !tbaa !23
  %647 = load i32, ptr %603, align 4, !tbaa !24
  %648 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %646, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %647, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %653, label %650

650:                                              ; preds = %645
  %651 = load ptr, ptr %600, align 8, !tbaa !22
  tail call void @free(ptr noundef %651) #15
  %652 = load ptr, ptr %597, align 8, !tbaa !20
  tail call void @free(ptr noundef %652) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit100

653:                                              ; preds = %645
  store ptr null, ptr %6, align 8, !tbaa !25
  %654 = load i32, ptr %598, align 8, !tbaa !21
  %655 = load i32, ptr %599, align 4, !tbaa !19
  store i32 %655, ptr %356, align 8, !tbaa !18
  %656 = icmp eq i32 %654, 0
  br i1 %656, label %657, label %662

657:                                              ; preds = %653
  store i32 %655, ptr %606, align 8, !tbaa !26
  %658 = load ptr, ptr %600, align 8, !tbaa !22
  store ptr %658, ptr %607, align 8, !tbaa !27
  store ptr %658, ptr %608, align 8, !tbaa !28
  br label %696

659:                                              ; preds = %624
  %660 = load i32, ptr %598, align 8, !tbaa !21
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %696, label %662

662:                                              ; preds = %659, %653, %639
  %663 = phi ptr [ %626, %659 ], [ null, %653 ], [ %626, %639 ]
  %664 = load i32, ptr %442, align 8, !tbaa !30
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %.loopexit100, label %666

666:                                              ; preds = %662
  %667 = tail call ptr @__errno_location() #17
  br label %668

668:                                              ; preds = %690, %666
  %669 = phi ptr [ %663, %666 ], [ %694, %690 ]
  store i32 0, ptr %667, align 4, !tbaa !4
  store i32 0, ptr %604, align 4, !tbaa !17
  %670 = load i32, ptr %442, align 8, !tbaa !30
  %671 = tail call i32 @llvm.umin.i32(i32 %670, i32 1073741824)
  %672 = zext nneg i32 %671 to i64
  %673 = load i32, ptr %605, align 4, !tbaa !31
  %674 = tail call i64 @write(i32 noundef %673, ptr noundef %669, i64 noundef %672) #15
  %675 = trunc i64 %674 to i32
  %676 = icmp slt i32 %675, 0
  br i1 %676, label %677, label %685

677:                                              ; preds = %668
  %678 = load i32, ptr %667, align 4, !tbaa !4
  %679 = icmp eq i32 %678, 11
  br i1 %679, label %680, label %682

680:                                              ; preds = %677
  store i32 1, ptr %604, align 4, !tbaa !17
  %681 = load i32, ptr %667, align 4, !tbaa !4
  br label %682

682:                                              ; preds = %680, %677
  %683 = phi i32 [ %678, %677 ], [ %681, %680 ]
  %684 = tail call ptr @strerror(i32 noundef %683) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %684) #15
  br label %.loopexit100

685:                                              ; preds = %668
  %686 = load i32, ptr %442, align 8, !tbaa !30
  %687 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %686, i32 %675), !nosanitize !32
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !32
  br i1 %688, label %689, label %690, !prof !33, !nosanitize !32

689:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

690:                                              ; preds = %685
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !32
  store i32 %691, ptr %442, align 8, !tbaa !30
  %692 = load ptr, ptr %6, align 8, !tbaa !25
  %693 = and i64 %674, 2147483647
  %694 = getelementptr inbounds nuw i8, ptr %692, i64 %693
  store ptr %694, ptr %6, align 8, !tbaa !25
  %695 = icmp eq i32 %691, 0
  br i1 %695, label %.loopexit100, label %668, !llvm.loop !34

696:                                              ; preds = %659, %657
  %697 = load i32, ptr %609, align 8, !tbaa !36
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %704, label %699

699:                                              ; preds = %696
  %700 = load i32, ptr %442, align 8, !tbaa !30
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.loopexit100, label %702

702:                                              ; preds = %699
  %703 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %609, align 8, !tbaa !36
  br label %704

704:                                              ; preds = %702, %696
  %705 = load i32, ptr %606, align 8, !tbaa !26
  br label %706

706:                                              ; preds = %756, %704
  %707 = phi i32 [ %705, %704 ], [ %753, %756 ]
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %747

709:                                              ; preds = %706
  %710 = load ptr, ptr %607, align 8, !tbaa !27
  %711 = load ptr, ptr %608, align 8, !tbaa !28
  %712 = icmp ugt ptr %710, %711
  br i1 %712, label %713, label %744

713:                                              ; preds = %709
  %714 = tail call ptr @__errno_location() #17
  br label %715

715:                                              ; preds = %735, %713
  %716 = phi ptr [ %711, %713 ], [ %738, %735 ]
  %717 = phi ptr [ %710, %713 ], [ %739, %735 ]
  store i32 0, ptr %714, align 4, !tbaa !4
  store i32 0, ptr %604, align 4, !tbaa !17
  %718 = ptrtoint ptr %717 to i64
  %719 = ptrtoint ptr %716 to i64
  %720 = sub i64 %718, %719
  %721 = tail call i64 @llvm.smin.i64(i64 %720, i64 1073741824)
  %722 = and i64 %721, 4294967295
  %723 = load i32, ptr %605, align 4, !tbaa !31
  %724 = tail call i64 @write(i32 noundef %723, ptr noundef %716, i64 noundef %722) #15
  %725 = and i64 %724, 2147483648
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %735, label %727

727:                                              ; preds = %715
  %728 = load i32, ptr %714, align 4, !tbaa !4
  %729 = icmp eq i32 %728, 11
  br i1 %729, label %730, label %732

730:                                              ; preds = %727
  store i32 1, ptr %604, align 4, !tbaa !17
  %731 = load i32, ptr %714, align 4, !tbaa !4
  br label %732

732:                                              ; preds = %730, %727
  %733 = phi i32 [ %728, %727 ], [ %731, %730 ]
  %734 = tail call ptr @strerror(i32 noundef %733) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %734) #15
  br label %.loopexit100

735:                                              ; preds = %715
  %736 = load ptr, ptr %608, align 8, !tbaa !28
  %737 = and i64 %724, 2147483647
  %738 = getelementptr inbounds nuw i8, ptr %736, i64 %737
  store ptr %738, ptr %608, align 8, !tbaa !28
  %739 = load ptr, ptr %607, align 8, !tbaa !27
  %740 = icmp ugt ptr %739, %738
  br i1 %740, label %715, label %741, !llvm.loop !37

741:                                              ; preds = %735
  %742 = load i32, ptr %606, align 8, !tbaa !26
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %747

744:                                              ; preds = %741, %709
  %745 = load i32, ptr %356, align 8, !tbaa !18
  store i32 %745, ptr %606, align 8, !tbaa !26
  %746 = load ptr, ptr %600, align 8, !tbaa !22
  store ptr %746, ptr %607, align 8, !tbaa !27
  store ptr %746, ptr %608, align 8, !tbaa !28
  br label %747

747:                                              ; preds = %744, %741, %706
  %748 = phi i32 [ %742, %741 ], [ %745, %744 ], [ %707, %706 ]
  %749 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %750 = icmp eq i32 %749, -2
  br i1 %750, label %751, label %752

751:                                              ; preds = %747
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit100

752:                                              ; preds = %747
  %753 = load i32, ptr %606, align 8, !tbaa !26
  %754 = icmp ult i32 %748, %753
  br i1 %754, label %755, label %756, !prof !33, !nosanitize !32

755:                                              ; preds = %752
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

756:                                              ; preds = %752
  %757 = icmp eq i32 %748, %753
  br i1 %757, label %.loopexit100, label %706, !llvm.loop !38

.loopexit100:                                     ; preds = %690, %756, %751, %732, %699, %682, %662, %650, %644, %634
  %758 = phi i1 [ false, %699 ], [ true, %682 ], [ false, %662 ], [ true, %644 ], [ true, %732 ], [ true, %751 ], [ false, %756 ], [ true, %634 ], [ true, %650 ], [ false, %690 ]
  %759 = load i32, ptr %442, align 8, !tbaa !30
  %760 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 %759), !nosanitize !32
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !32
  br i1 %761, label %762, label %763, !prof !33, !nosanitize !32

762:                                              ; preds = %.loopexit100
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

763:                                              ; preds = %.loopexit100
  %764 = extractvalue { i32, i1 } %760, 0, !nosanitize !32
  %765 = zext i32 %764 to i64
  %766 = load i64, ptr %610, align 8, !tbaa !39
  %767 = add nsw i64 %766, %765
  store i64 %767, ptr %610, align 8, !tbaa !39
  %768 = load i64, ptr %19, align 8, !tbaa !29
  %769 = sub nsw i64 %768, %765
  store i64 %769, ptr %19, align 8, !tbaa !29
  br i1 %758, label %.loopexit102, label %770

770:                                              ; preds = %763
  %771 = icmp eq i64 %768, %765
  br i1 %771, label %772, label %612, !llvm.loop !40

772:                                              ; preds = %770
  %773 = load i32, ptr %356, align 8, !tbaa !18
  br label %774

774:                                              ; preds = %772, %437
  %775 = phi i32 [ %773, %772 ], [ %438, %437 ]
  %776 = icmp ugt i32 %775, 1
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %776, label %778, label %963

778:                                              ; preds = %774
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %778
  %793 = phi ptr [ %3, %778 ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.loopexit.backedge ]
  %794 = load i32, ptr %777, align 8, !tbaa !41
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %799, label %796

796:                                              ; preds = %.loopexit
  %797 = load ptr, ptr %6, align 8, !tbaa !42
  %798 = load ptr, ptr %779, align 8, !tbaa !20
  br label %801

799:                                              ; preds = %.loopexit
  %800 = load ptr, ptr %779, align 8, !tbaa !20
  store ptr %800, ptr %6, align 8, !tbaa !42
  br label %801

801:                                              ; preds = %799, %796
  %802 = phi ptr [ %798, %796 ], [ %800, %799 ]
  %803 = phi ptr [ %797, %796 ], [ %800, %799 ]
  %804 = zext i32 %794 to i64
  %805 = getelementptr inbounds nuw i8, ptr %803, i64 %804
  %806 = ptrtoint ptr %805 to i64
  %807 = ptrtoint ptr %802 to i64
  %808 = sub i64 %806, %807
  %809 = trunc i64 %808 to i32
  %810 = load i32, ptr %356, align 8, !tbaa !18
  %811 = icmp ult i32 %810, %809
  br i1 %811, label %812, label %813, !prof !33, !nosanitize !32

812:                                              ; preds = %801
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

813:                                              ; preds = %801
  %814 = icmp ne i32 %810, %809
  %815 = zext i1 %814 to i64
  %816 = zext i1 %814 to i32
  %817 = and i64 %808, 4294967295
  %818 = getelementptr inbounds nuw i8, ptr %802, i64 %817
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %818, ptr align 1 %793, i64 %815, i1 false)
  %819 = load i32, ptr %777, align 8, !tbaa !41
  %820 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %819, i32 %816), !nosanitize !32
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !32
  br i1 %821, label %822, label %823, !prof !33, !nosanitize !32

822:                                              ; preds = %813
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

823:                                              ; preds = %813
  %824 = extractvalue { i32, i1 } %820, 0, !nosanitize !32
  store i32 %824, ptr %777, align 8, !tbaa !41
  %825 = load i64, ptr %780, align 8, !tbaa !39
  %826 = add nsw i64 %825, %815
  store i64 %826, ptr %780, align 8, !tbaa !39
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %814 to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %793, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br i1 %814, label %.loopexit94, label %827

827:                                              ; preds = %823
  %828 = load i32, ptr %356, align 8, !tbaa !18
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %861

830:                                              ; preds = %827
  %831 = load i32, ptr %782, align 4, !tbaa !19
  %832 = shl i32 %831, 1
  %833 = zext i32 %832 to i64
  %834 = tail call noalias ptr @malloc(i64 noundef %833) #16
  store ptr %834, ptr %779, align 8, !tbaa !20
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %837

836:                                              ; preds = %830
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

837:                                              ; preds = %830
  %838 = load i32, ptr %781, align 8, !tbaa !21
  %839 = icmp eq i32 %838, 0
  %840 = load i32, ptr %782, align 4, !tbaa !19
  br i1 %839, label %842, label %841

841:                                              ; preds = %837
  store i32 %840, ptr %356, align 8, !tbaa !18
  br label %864

842:                                              ; preds = %837
  %843 = zext i32 %840 to i64
  %844 = tail call noalias ptr @malloc(i64 noundef %843) #16
  store ptr %844, ptr %783, align 8, !tbaa !22
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %847

846:                                              ; preds = %842
  tail call void @free(ptr noundef nonnull %834) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

847:                                              ; preds = %842
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %784, i8 0, i64 24, i1 false)
  %848 = load i32, ptr %785, align 8, !tbaa !23
  %849 = load i32, ptr %786, align 4, !tbaa !24
  %850 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %848, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %849, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %855, label %852

852:                                              ; preds = %847
  %853 = load ptr, ptr %783, align 8, !tbaa !22
  tail call void @free(ptr noundef %853) #15
  %854 = load ptr, ptr %779, align 8, !tbaa !20
  tail call void @free(ptr noundef %854) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %960

855:                                              ; preds = %847
  store ptr null, ptr %6, align 8, !tbaa !25
  %856 = load i32, ptr %781, align 8, !tbaa !21
  %857 = load i32, ptr %782, align 4, !tbaa !19
  store i32 %857, ptr %356, align 8, !tbaa !18
  %858 = icmp eq i32 %856, 0
  br i1 %858, label %859, label %864

859:                                              ; preds = %855
  store i32 %857, ptr %789, align 8, !tbaa !26
  %860 = load ptr, ptr %783, align 8, !tbaa !22
  store ptr %860, ptr %790, align 8, !tbaa !27
  store ptr %860, ptr %791, align 8, !tbaa !28
  br label %898

861:                                              ; preds = %827
  %862 = load i32, ptr %781, align 8, !tbaa !21
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %898, label %864

864:                                              ; preds = %861, %855, %841
  %865 = load i32, ptr %777, align 8, !tbaa !30
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %.loopexit.backedge, label %867

867:                                              ; preds = %864
  %868 = tail call ptr @__errno_location() #17
  %869 = load ptr, ptr %6, align 8, !tbaa !25
  br label %870

870:                                              ; preds = %892, %867
  %871 = phi ptr [ %869, %867 ], [ %896, %892 ]
  store i32 0, ptr %868, align 4, !tbaa !4
  store i32 0, ptr %787, align 4, !tbaa !17
  %872 = load i32, ptr %777, align 8, !tbaa !30
  %873 = tail call i32 @llvm.umin.i32(i32 %872, i32 1073741824)
  %874 = zext nneg i32 %873 to i64
  %875 = load i32, ptr %788, align 4, !tbaa !31
  %876 = tail call i64 @write(i32 noundef %875, ptr noundef %871, i64 noundef %874) #15
  %877 = trunc i64 %876 to i32
  %878 = icmp slt i32 %877, 0
  br i1 %878, label %879, label %887

879:                                              ; preds = %870
  %880 = load i32, ptr %868, align 4, !tbaa !4
  %881 = icmp eq i32 %880, 11
  br i1 %881, label %882, label %884

882:                                              ; preds = %879
  store i32 1, ptr %787, align 4, !tbaa !17
  %883 = load i32, ptr %868, align 4, !tbaa !4
  br label %884

884:                                              ; preds = %882, %879
  %885 = phi i32 [ %880, %879 ], [ %883, %882 ]
  %886 = tail call ptr @strerror(i32 noundef %885) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %886) #15
  br label %960

887:                                              ; preds = %870
  %888 = load i32, ptr %777, align 8, !tbaa !30
  %889 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %888, i32 %877), !nosanitize !32
  %890 = extractvalue { i32, i1 } %889, 1, !nosanitize !32
  br i1 %890, label %891, label %892, !prof !33, !nosanitize !32

891:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

892:                                              ; preds = %887
  %893 = extractvalue { i32, i1 } %889, 0, !nosanitize !32
  store i32 %893, ptr %777, align 8, !tbaa !30
  %894 = load ptr, ptr %6, align 8, !tbaa !25
  %895 = and i64 %876, 2147483647
  %896 = getelementptr inbounds nuw i8, ptr %894, i64 %895
  store ptr %896, ptr %6, align 8, !tbaa !25
  %897 = icmp eq i32 %893, 0
  br i1 %897, label %.loopexit.backedge, label %870, !llvm.loop !34

898:                                              ; preds = %861, %859
  %899 = load i32, ptr %792, align 8, !tbaa !36
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %906, label %901

901:                                              ; preds = %898
  %902 = load i32, ptr %777, align 8, !tbaa !30
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %.loopexit.backedge, label %904

.loopexit.backedge:                               ; preds = %892, %958, %901, %864
  br label %.loopexit

904:                                              ; preds = %901
  %905 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %792, align 8, !tbaa !36
  br label %906

906:                                              ; preds = %904, %898
  %907 = load i32, ptr %789, align 8, !tbaa !26
  br label %908

908:                                              ; preds = %958, %906
  %909 = phi i32 [ %907, %906 ], [ %955, %958 ]
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %949

911:                                              ; preds = %908
  %912 = load ptr, ptr %790, align 8, !tbaa !27
  %913 = load ptr, ptr %791, align 8, !tbaa !28
  %914 = icmp ugt ptr %912, %913
  br i1 %914, label %915, label %946

915:                                              ; preds = %911
  %916 = tail call ptr @__errno_location() #17
  br label %917

917:                                              ; preds = %937, %915
  %918 = phi ptr [ %913, %915 ], [ %940, %937 ]
  %919 = phi ptr [ %912, %915 ], [ %941, %937 ]
  store i32 0, ptr %916, align 4, !tbaa !4
  store i32 0, ptr %787, align 4, !tbaa !17
  %920 = ptrtoint ptr %919 to i64
  %921 = ptrtoint ptr %918 to i64
  %922 = sub i64 %920, %921
  %923 = tail call i64 @llvm.smin.i64(i64 %922, i64 1073741824)
  %924 = and i64 %923, 4294967295
  %925 = load i32, ptr %788, align 4, !tbaa !31
  %926 = tail call i64 @write(i32 noundef %925, ptr noundef %918, i64 noundef %924) #15
  %927 = and i64 %926, 2147483648
  %928 = icmp eq i64 %927, 0
  br i1 %928, label %937, label %929

929:                                              ; preds = %917
  %930 = load i32, ptr %916, align 4, !tbaa !4
  %931 = icmp eq i32 %930, 11
  br i1 %931, label %932, label %934

932:                                              ; preds = %929
  store i32 1, ptr %787, align 4, !tbaa !17
  %933 = load i32, ptr %916, align 4, !tbaa !4
  br label %934

934:                                              ; preds = %932, %929
  %935 = phi i32 [ %930, %929 ], [ %933, %932 ]
  %936 = tail call ptr @strerror(i32 noundef %935) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %936) #15
  br label %960

937:                                              ; preds = %917
  %938 = load ptr, ptr %791, align 8, !tbaa !28
  %939 = and i64 %926, 2147483647
  %940 = getelementptr inbounds nuw i8, ptr %938, i64 %939
  store ptr %940, ptr %791, align 8, !tbaa !28
  %941 = load ptr, ptr %790, align 8, !tbaa !27
  %942 = icmp ugt ptr %941, %940
  br i1 %942, label %917, label %943, !llvm.loop !37

943:                                              ; preds = %937
  %944 = load i32, ptr %789, align 8, !tbaa !26
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %949

946:                                              ; preds = %943, %911
  %947 = load i32, ptr %356, align 8, !tbaa !18
  store i32 %947, ptr %789, align 8, !tbaa !26
  %948 = load ptr, ptr %783, align 8, !tbaa !22
  store ptr %948, ptr %790, align 8, !tbaa !27
  store ptr %948, ptr %791, align 8, !tbaa !28
  br label %949

949:                                              ; preds = %946, %943, %908
  %950 = phi i32 [ %944, %943 ], [ %947, %946 ], [ %909, %908 ]
  %951 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %952 = icmp eq i32 %951, -2
  br i1 %952, label %953, label %954

953:                                              ; preds = %949
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %960

954:                                              ; preds = %949
  %955 = load i32, ptr %789, align 8, !tbaa !26
  %956 = icmp ult i32 %950, %955
  br i1 %956, label %957, label %958, !prof !33, !nosanitize !32

957:                                              ; preds = %954
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

958:                                              ; preds = %954
  %959 = icmp eq i32 %950, %955
  br i1 %959, label %.loopexit.backedge, label %908, !llvm.loop !38

960:                                              ; preds = %953, %934, %884, %852, %846, %836
  %961 = load i32, ptr %787, align 4, !tbaa !17
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %.loopexit102, label %1289

963:                                              ; preds = %774
  %964 = load i32, ptr %777, align 8, !tbaa !41
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %.loopexit98, label %966

966:                                              ; preds = %963
  %967 = icmp eq i32 %775, 0
  br i1 %967, label %968, label %1009

968:                                              ; preds = %966
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %970 = load i32, ptr %969, align 4, !tbaa !19
  %971 = shl i32 %970, 1
  %972 = zext i32 %971 to i64
  %973 = tail call noalias ptr @malloc(i64 noundef %972) #16
  %974 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %973, ptr %974, align 8, !tbaa !20
  %975 = icmp eq ptr %973, null
  br i1 %975, label %976, label %977

976:                                              ; preds = %968
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

977:                                              ; preds = %968
  %978 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %979 = load i32, ptr %978, align 8, !tbaa !21
  %980 = icmp eq i32 %979, 0
  %981 = load i32, ptr %969, align 4, !tbaa !19
  br i1 %980, label %983, label %982

982:                                              ; preds = %977
  store i32 %981, ptr %356, align 8, !tbaa !18
  br label %1013

983:                                              ; preds = %977
  %984 = zext i32 %981 to i64
  %985 = tail call noalias ptr @malloc(i64 noundef %984) #16
  %986 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %985, ptr %986, align 8, !tbaa !22
  %987 = icmp eq ptr %985, null
  br i1 %987, label %988, label %989

988:                                              ; preds = %983
  tail call void @free(ptr noundef nonnull %973) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

989:                                              ; preds = %983
  %990 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %991 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %990, i8 0, i64 24, i1 false)
  %992 = load i32, ptr %991, align 8, !tbaa !23
  %993 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %994 = load i32, ptr %993, align 4, !tbaa !24
  %995 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %992, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %994, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1000, label %997

997:                                              ; preds = %989
  %998 = load ptr, ptr %986, align 8, !tbaa !22
  tail call void @free(ptr noundef %998) #15
  %999 = load ptr, ptr %974, align 8, !tbaa !20
  tail call void @free(ptr noundef %999) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit102

1000:                                             ; preds = %989
  store ptr null, ptr %6, align 8, !tbaa !25
  %1001 = load i32, ptr %978, align 8, !tbaa !21
  %1002 = load i32, ptr %969, align 4, !tbaa !19
  store i32 %1002, ptr %356, align 8, !tbaa !18
  %1003 = icmp eq i32 %1001, 0
  br i1 %1003, label %1004, label %1013

1004:                                             ; preds = %1000
  %1005 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1002, ptr %1005, align 8, !tbaa !26
  %1006 = load ptr, ptr %986, align 8, !tbaa !22
  %1007 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1006, ptr %1007, align 8, !tbaa !27
  %1008 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1006, ptr %1008, align 8, !tbaa !28
  br label %1049

1009:                                             ; preds = %966
  %1010 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1011 = load i32, ptr %1010, align 8, !tbaa !21
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1049, label %1013

1013:                                             ; preds = %1009, %1000, %982
  %1014 = load i32, ptr %777, align 8, !tbaa !30
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %.loopexit98, label %1016

1016:                                             ; preds = %1013
  %1017 = tail call ptr @__errno_location() #17
  %1018 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1019 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1020 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1021

1021:                                             ; preds = %1043, %1016
  %1022 = phi ptr [ %1020, %1016 ], [ %1047, %1043 ]
  store i32 0, ptr %1017, align 4, !tbaa !4
  store i32 0, ptr %1018, align 4, !tbaa !17
  %1023 = load i32, ptr %777, align 8, !tbaa !30
  %1024 = tail call i32 @llvm.umin.i32(i32 %1023, i32 1073741824)
  %1025 = zext nneg i32 %1024 to i64
  %1026 = load i32, ptr %1019, align 4, !tbaa !31
  %1027 = tail call i64 @write(i32 noundef %1026, ptr noundef %1022, i64 noundef %1025) #15
  %1028 = trunc i64 %1027 to i32
  %1029 = icmp slt i32 %1028, 0
  br i1 %1029, label %1030, label %1038

1030:                                             ; preds = %1021
  %1031 = load i32, ptr %1017, align 4, !tbaa !4
  %1032 = icmp eq i32 %1031, 11
  br i1 %1032, label %1033, label %1035

1033:                                             ; preds = %1030
  store i32 1, ptr %1018, align 4, !tbaa !17
  %1034 = load i32, ptr %1017, align 4, !tbaa !4
  br label %1035

1035:                                             ; preds = %1033, %1030
  %1036 = phi i32 [ %1031, %1030 ], [ %1034, %1033 ]
  %1037 = tail call ptr @strerror(i32 noundef %1036) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1037) #15
  br label %.loopexit102

1038:                                             ; preds = %1021
  %1039 = load i32, ptr %777, align 8, !tbaa !30
  %1040 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1039, i32 %1028), !nosanitize !32
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !32
  br i1 %1041, label %1042, label %1043, !prof !33, !nosanitize !32

1042:                                             ; preds = %1038
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1043:                                             ; preds = %1038
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !32
  store i32 %1044, ptr %777, align 8, !tbaa !30
  %1045 = load ptr, ptr %6, align 8, !tbaa !25
  %1046 = and i64 %1027, 2147483647
  %1047 = getelementptr inbounds nuw i8, ptr %1045, i64 %1046
  store ptr %1047, ptr %6, align 8, !tbaa !25
  %1048 = icmp eq i32 %1044, 0
  br i1 %1048, label %.loopexit98, label %1021, !llvm.loop !34

1049:                                             ; preds = %1009, %1004
  %1050 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1051 = load i32, ptr %1050, align 8, !tbaa !36
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1058, label %1053

1053:                                             ; preds = %1049
  %1054 = load i32, ptr %777, align 8, !tbaa !30
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %.loopexit98, label %1056

1056:                                             ; preds = %1053
  %1057 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1050, align 8, !tbaa !36
  br label %1058

1058:                                             ; preds = %1056, %1049
  %1059 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1060 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1061 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1062 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1063 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1064 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1065 = load i32, ptr %1059, align 8, !tbaa !26
  br label %1066

1066:                                             ; preds = %1116, %1058
  %1067 = phi i32 [ %1065, %1058 ], [ %1113, %1116 ]
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1107

1069:                                             ; preds = %1066
  %1070 = load ptr, ptr %1060, align 8, !tbaa !27
  %1071 = load ptr, ptr %1061, align 8, !tbaa !28
  %1072 = icmp ugt ptr %1070, %1071
  br i1 %1072, label %1073, label %1104

1073:                                             ; preds = %1069
  %1074 = tail call ptr @__errno_location() #17
  br label %1075

1075:                                             ; preds = %1095, %1073
  %1076 = phi ptr [ %1071, %1073 ], [ %1098, %1095 ]
  %1077 = phi ptr [ %1070, %1073 ], [ %1099, %1095 ]
  store i32 0, ptr %1074, align 4, !tbaa !4
  store i32 0, ptr %1062, align 4, !tbaa !17
  %1078 = ptrtoint ptr %1077 to i64
  %1079 = ptrtoint ptr %1076 to i64
  %1080 = sub i64 %1078, %1079
  %1081 = tail call i64 @llvm.smin.i64(i64 %1080, i64 1073741824)
  %1082 = and i64 %1081, 4294967295
  %1083 = load i32, ptr %1063, align 4, !tbaa !31
  %1084 = tail call i64 @write(i32 noundef %1083, ptr noundef %1076, i64 noundef %1082) #15
  %1085 = and i64 %1084, 2147483648
  %1086 = icmp eq i64 %1085, 0
  br i1 %1086, label %1095, label %1087

1087:                                             ; preds = %1075
  %1088 = load i32, ptr %1074, align 4, !tbaa !4
  %1089 = icmp eq i32 %1088, 11
  br i1 %1089, label %1090, label %1092

1090:                                             ; preds = %1087
  store i32 1, ptr %1062, align 4, !tbaa !17
  %1091 = load i32, ptr %1074, align 4, !tbaa !4
  br label %1092

1092:                                             ; preds = %1090, %1087
  %1093 = phi i32 [ %1088, %1087 ], [ %1091, %1090 ]
  %1094 = tail call ptr @strerror(i32 noundef %1093) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1094) #15
  br label %.loopexit102

1095:                                             ; preds = %1075
  %1096 = load ptr, ptr %1061, align 8, !tbaa !28
  %1097 = and i64 %1084, 2147483647
  %1098 = getelementptr inbounds nuw i8, ptr %1096, i64 %1097
  store ptr %1098, ptr %1061, align 8, !tbaa !28
  %1099 = load ptr, ptr %1060, align 8, !tbaa !27
  %1100 = icmp ugt ptr %1099, %1098
  br i1 %1100, label %1075, label %1101, !llvm.loop !37

1101:                                             ; preds = %1095
  %1102 = load i32, ptr %1059, align 8, !tbaa !26
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1107

1104:                                             ; preds = %1101, %1069
  %1105 = load i32, ptr %356, align 8, !tbaa !18
  store i32 %1105, ptr %1059, align 8, !tbaa !26
  %1106 = load ptr, ptr %1064, align 8, !tbaa !22
  store ptr %1106, ptr %1060, align 8, !tbaa !27
  store ptr %1106, ptr %1061, align 8, !tbaa !28
  br label %1107

1107:                                             ; preds = %1104, %1101, %1066
  %1108 = phi i32 [ %1102, %1101 ], [ %1105, %1104 ], [ %1067, %1066 ]
  %1109 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1110 = icmp eq i32 %1109, -2
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1107
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit102

1112:                                             ; preds = %1107
  %1113 = load i32, ptr %1059, align 8, !tbaa !26
  %1114 = icmp ult i32 %1108, %1113
  br i1 %1114, label %1115, label %1116, !prof !33, !nosanitize !32

1115:                                             ; preds = %1112
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1116:                                             ; preds = %1112
  %1117 = icmp eq i32 %1108, %1113
  br i1 %1117, label %.loopexit98, label %1066, !llvm.loop !38

.loopexit98:                                      ; preds = %1043, %1116, %1053, %1013, %963
  store ptr %3, ptr %6, align 8, !tbaa !42
  %1118 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1119 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1120 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1121 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1122 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1123 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1124 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1125 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1126 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1127 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1128 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1129 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1130 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1131 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1132

1132:                                             ; preds = %1286, %.loopexit98
  %1133 = phi i64 [ 1, %.loopexit98 ], [ %1278, %1286 ]
  %1134 = call i64 @llvm.umin.i64(i64 %1133, i64 4294967295)
  %1135 = trunc nuw i64 %1134 to i32
  store i32 %1135, ptr %777, align 8, !tbaa !41
  %1136 = load i32, ptr %356, align 8, !tbaa !18
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1169

1138:                                             ; preds = %1132
  %1139 = load i32, ptr %1119, align 4, !tbaa !19
  %1140 = shl i32 %1139, 1
  %1141 = zext i32 %1140 to i64
  %1142 = call noalias ptr @malloc(i64 noundef %1141) #16
  store ptr %1142, ptr %1120, align 8, !tbaa !20
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1138
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

1145:                                             ; preds = %1138
  %1146 = load i32, ptr %1118, align 8, !tbaa !21
  %1147 = icmp eq i32 %1146, 0
  %1148 = load i32, ptr %1119, align 4, !tbaa !19
  br i1 %1147, label %1150, label %1149

1149:                                             ; preds = %1145
  store i32 %1148, ptr %356, align 8, !tbaa !18
  br label %1172

1150:                                             ; preds = %1145
  %1151 = zext i32 %1148 to i64
  %1152 = call noalias ptr @malloc(i64 noundef %1151) #16
  store ptr %1152, ptr %1121, align 8, !tbaa !22
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1150
  call void @free(ptr noundef nonnull %1142) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

1155:                                             ; preds = %1150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1122, i8 0, i64 24, i1 false)
  %1156 = load i32, ptr %1123, align 8, !tbaa !23
  %1157 = load i32, ptr %1124, align 4, !tbaa !24
  %1158 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1156, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1157, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1163, label %1160

1160:                                             ; preds = %1155
  %1161 = load ptr, ptr %1121, align 8, !tbaa !22
  call void @free(ptr noundef %1161) #15
  %1162 = load ptr, ptr %1120, align 8, !tbaa !20
  call void @free(ptr noundef %1162) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit95

1163:                                             ; preds = %1155
  store ptr null, ptr %6, align 8, !tbaa !25
  %1164 = load i32, ptr %1118, align 8, !tbaa !21
  %1165 = load i32, ptr %1119, align 4, !tbaa !19
  store i32 %1165, ptr %356, align 8, !tbaa !18
  %1166 = icmp eq i32 %1164, 0
  br i1 %1166, label %1167, label %1172

1167:                                             ; preds = %1163
  store i32 %1165, ptr %1127, align 8, !tbaa !26
  %1168 = load ptr, ptr %1121, align 8, !tbaa !22
  store ptr %1168, ptr %1128, align 8, !tbaa !27
  store ptr %1168, ptr %1129, align 8, !tbaa !28
  br label %1206

1169:                                             ; preds = %1132
  %1170 = load i32, ptr %1118, align 8, !tbaa !21
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1206, label %1172

1172:                                             ; preds = %1169, %1163, %1149
  %1173 = load i32, ptr %777, align 8, !tbaa !30
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %.loopexit95, label %1175

1175:                                             ; preds = %1172
  %1176 = tail call ptr @__errno_location() #17
  %1177 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1178

1178:                                             ; preds = %1200, %1175
  %1179 = phi ptr [ %1177, %1175 ], [ %1204, %1200 ]
  store i32 0, ptr %1176, align 4, !tbaa !4
  store i32 0, ptr %1125, align 4, !tbaa !17
  %1180 = load i32, ptr %777, align 8, !tbaa !30
  %1181 = call i32 @llvm.umin.i32(i32 %1180, i32 1073741824)
  %1182 = zext nneg i32 %1181 to i64
  %1183 = load i32, ptr %1126, align 4, !tbaa !31
  %1184 = call i64 @write(i32 noundef %1183, ptr noundef %1179, i64 noundef %1182) #15
  %1185 = trunc i64 %1184 to i32
  %1186 = icmp slt i32 %1185, 0
  br i1 %1186, label %1187, label %1195

1187:                                             ; preds = %1178
  %1188 = load i32, ptr %1176, align 4, !tbaa !4
  %1189 = icmp eq i32 %1188, 11
  br i1 %1189, label %1190, label %1192

1190:                                             ; preds = %1187
  store i32 1, ptr %1125, align 4, !tbaa !17
  %1191 = load i32, ptr %1176, align 4, !tbaa !4
  br label %1192

1192:                                             ; preds = %1190, %1187
  %1193 = phi i32 [ %1188, %1187 ], [ %1191, %1190 ]
  %1194 = call ptr @strerror(i32 noundef %1193) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1194) #15
  br label %.loopexit95

1195:                                             ; preds = %1178
  %1196 = load i32, ptr %777, align 8, !tbaa !30
  %1197 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1196, i32 %1185), !nosanitize !32
  %1198 = extractvalue { i32, i1 } %1197, 1, !nosanitize !32
  br i1 %1198, label %1199, label %1200, !prof !33, !nosanitize !32

1199:                                             ; preds = %1195
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1200:                                             ; preds = %1195
  %1201 = extractvalue { i32, i1 } %1197, 0, !nosanitize !32
  store i32 %1201, ptr %777, align 8, !tbaa !30
  %1202 = load ptr, ptr %6, align 8, !tbaa !25
  %1203 = and i64 %1184, 2147483647
  %1204 = getelementptr inbounds nuw i8, ptr %1202, i64 %1203
  store ptr %1204, ptr %6, align 8, !tbaa !25
  %1205 = icmp eq i32 %1201, 0
  br i1 %1205, label %.loopexit95, label %1178, !llvm.loop !34

1206:                                             ; preds = %1169, %1167
  %1207 = load i32, ptr %1130, align 8, !tbaa !36
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1214, label %1209

1209:                                             ; preds = %1206
  %1210 = load i32, ptr %777, align 8, !tbaa !30
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %.loopexit95, label %1212

1212:                                             ; preds = %1209
  %1213 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1130, align 8, !tbaa !36
  br label %1214

1214:                                             ; preds = %1212, %1206
  %1215 = load i32, ptr %1127, align 8, !tbaa !26
  br label %1216

1216:                                             ; preds = %1266, %1214
  %1217 = phi i32 [ %1215, %1214 ], [ %1263, %1266 ]
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1219, label %1257

1219:                                             ; preds = %1216
  %1220 = load ptr, ptr %1128, align 8, !tbaa !27
  %1221 = load ptr, ptr %1129, align 8, !tbaa !28
  %1222 = icmp ugt ptr %1220, %1221
  br i1 %1222, label %1223, label %1254

1223:                                             ; preds = %1219
  %1224 = tail call ptr @__errno_location() #17
  br label %1225

1225:                                             ; preds = %1245, %1223
  %1226 = phi ptr [ %1221, %1223 ], [ %1248, %1245 ]
  %1227 = phi ptr [ %1220, %1223 ], [ %1249, %1245 ]
  store i32 0, ptr %1224, align 4, !tbaa !4
  store i32 0, ptr %1125, align 4, !tbaa !17
  %1228 = ptrtoint ptr %1227 to i64
  %1229 = ptrtoint ptr %1226 to i64
  %1230 = sub i64 %1228, %1229
  %1231 = call i64 @llvm.smin.i64(i64 %1230, i64 1073741824)
  %1232 = and i64 %1231, 4294967295
  %1233 = load i32, ptr %1126, align 4, !tbaa !31
  %1234 = call i64 @write(i32 noundef %1233, ptr noundef %1226, i64 noundef %1232) #15
  %1235 = and i64 %1234, 2147483648
  %1236 = icmp eq i64 %1235, 0
  br i1 %1236, label %1245, label %1237

1237:                                             ; preds = %1225
  %1238 = load i32, ptr %1224, align 4, !tbaa !4
  %1239 = icmp eq i32 %1238, 11
  br i1 %1239, label %1240, label %1242

1240:                                             ; preds = %1237
  store i32 1, ptr %1125, align 4, !tbaa !17
  %1241 = load i32, ptr %1224, align 4, !tbaa !4
  br label %1242

1242:                                             ; preds = %1240, %1237
  %1243 = phi i32 [ %1238, %1237 ], [ %1241, %1240 ]
  %1244 = call ptr @strerror(i32 noundef %1243) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1244) #15
  br label %.loopexit95

1245:                                             ; preds = %1225
  %1246 = load ptr, ptr %1129, align 8, !tbaa !28
  %1247 = and i64 %1234, 2147483647
  %1248 = getelementptr inbounds nuw i8, ptr %1246, i64 %1247
  store ptr %1248, ptr %1129, align 8, !tbaa !28
  %1249 = load ptr, ptr %1128, align 8, !tbaa !27
  %1250 = icmp ugt ptr %1249, %1248
  br i1 %1250, label %1225, label %1251, !llvm.loop !37

1251:                                             ; preds = %1245
  %1252 = load i32, ptr %1127, align 8, !tbaa !26
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1254, label %1257

1254:                                             ; preds = %1251, %1219
  %1255 = load i32, ptr %356, align 8, !tbaa !18
  store i32 %1255, ptr %1127, align 8, !tbaa !26
  %1256 = load ptr, ptr %1121, align 8, !tbaa !22
  store ptr %1256, ptr %1128, align 8, !tbaa !27
  store ptr %1256, ptr %1129, align 8, !tbaa !28
  br label %1257

1257:                                             ; preds = %1254, %1251, %1216
  %1258 = phi i32 [ %1252, %1251 ], [ %1255, %1254 ], [ %1217, %1216 ]
  %1259 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1260 = icmp eq i32 %1259, -2
  br i1 %1260, label %1261, label %1262

1261:                                             ; preds = %1257
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit95

1262:                                             ; preds = %1257
  %1263 = load i32, ptr %1127, align 8, !tbaa !26
  %1264 = icmp ult i32 %1258, %1263
  br i1 %1264, label %1265, label %1266, !prof !33, !nosanitize !32

1265:                                             ; preds = %1262
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1266:                                             ; preds = %1262
  %1267 = icmp eq i32 %1258, %1263
  br i1 %1267, label %.loopexit95, label %1216, !llvm.loop !38

.loopexit95:                                      ; preds = %1200, %1266, %1261, %1242, %1209, %1192, %1172, %1160, %1154, %1144
  %1268 = phi i1 [ false, %1209 ], [ true, %1192 ], [ false, %1172 ], [ true, %1154 ], [ true, %1242 ], [ true, %1261 ], [ false, %1266 ], [ true, %1144 ], [ true, %1160 ], [ false, %1200 ]
  %1269 = load i32, ptr %777, align 8, !tbaa !41
  %1270 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1135, i32 %1269), !nosanitize !32
  %1271 = extractvalue { i32, i1 } %1270, 1, !nosanitize !32
  br i1 %1271, label %1272, label %1273, !prof !33, !nosanitize !32

1272:                                             ; preds = %.loopexit95
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1273:                                             ; preds = %.loopexit95
  %1274 = extractvalue { i32, i1 } %1270, 0, !nosanitize !32
  %1275 = zext i32 %1274 to i64
  %1276 = load i64, ptr %1131, align 8, !tbaa !39
  %1277 = add nsw i64 %1276, %1275
  store i64 %1277, ptr %1131, align 8, !tbaa !39
  %1278 = sub i64 %1133, %1275
  br i1 %1268, label %1279, label %1286

1279:                                             ; preds = %1273
  %1280 = load i32, ptr %1125, align 4, !tbaa !17
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %.loopexit102, label %1282

1282:                                             ; preds = %1279
  %1283 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1278), !nosanitize !32
  %1284 = extractvalue { i64, i1 } %1283, 1, !nosanitize !32
  br i1 %1284, label %1285, label %1289, !prof !33, !nosanitize !32

1285:                                             ; preds = %1282
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1286:                                             ; preds = %1273
  %1287 = icmp eq i64 %1278, 0
  br i1 %1287, label %.loopexit94, label %1132, !llvm.loop !43

.loopexit94:                                      ; preds = %1286, %823
  %1288 = and i32 %1, 255
  br label %.loopexit102

1289:                                             ; preds = %1282, %960
  %1290 = phi { i64, i1 } [ %1283, %1282 ], [ zeroinitializer, %960 ]
  %1291 = freeze { i64, i1 } %1290
  %1292 = extractvalue { i64, i1 } %1291, 0
  %1293 = icmp eq i64 %1292, 1
  %1294 = and i32 %1, 255
  %1295 = select i1 %1293, i32 %1294, i32 -1
  br label %.loopexit102

.loopexit102:                                     ; preds = %347, %763, %1289, %.loopexit94, %1279, %1111, %1092, %1035, %997, %988, %976, %960, %590, %571, %514, %476, %467, %455, %425, %416, %404, %388, %173, %154, %97, %59, %50, %38, %14, %5, %2
  %1296 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %393, %388 ], [ -1, %976 ], [ -1, %763 ], [ %1295, %1289 ], [ %1288, %.loopexit94 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %154 ], [ -1, %173 ], [ -1, %997 ], [ -1, %1111 ], [ -1, %1279 ], [ -1, %960 ], [ -1, %416 ], [ -1, %404 ], [ -1, %425 ], [ -1, %455 ], [ -1, %476 ], [ -1, %514 ], [ -1, %467 ], [ -1, %571 ], [ -1, %590 ], [ -1, %1035 ], [ -1, %988 ], [ -1, %1092 ], [ -1, %347 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %1296
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %941, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %941

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %941, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %941

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %.loopexit67, label %22

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
  br label %.loopexit67

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
  br label %.loopexit67

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
  br label %.loopexit67

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
  br i1 %72, label %407, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit76, label %78

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
  br label %.loopexit67

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
  br label %.loopexit67

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
  br label %.loopexit67

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
  br label %161

121:                                              ; preds = %78
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %123 = load i32, ptr %122, align 8, !tbaa !21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %161, label %125

125:                                              ; preds = %121, %112, %94
  %126 = load i32, ptr %75, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit76, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #17
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %132 = load ptr, ptr %74, align 8, !tbaa !25
  br label %133

133:                                              ; preds = %155, %128
  %134 = phi ptr [ %132, %128 ], [ %159, %155 ]
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
  br label %.loopexit67

150:                                              ; preds = %133
  %151 = load i32, ptr %75, align 8, !tbaa !30
  %152 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 %140), !nosanitize !32
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !32
  br i1 %153, label %154, label %155, !prof !33, !nosanitize !32

154:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

155:                                              ; preds = %150
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !32
  store i32 %156, ptr %75, align 8, !tbaa !30
  %157 = load ptr, ptr %74, align 8, !tbaa !25
  %158 = and i64 %139, 2147483647
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  store ptr %159, ptr %74, align 8, !tbaa !25
  %160 = icmp eq i32 %156, 0
  br i1 %160, label %.loopexit76, label %133, !llvm.loop !34

161:                                              ; preds = %121, %116
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %163 = load i32, ptr %162, align 8, !tbaa !36
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %75, align 8, !tbaa !30
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %.loopexit76, label %168

168:                                              ; preds = %165
  %169 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %162, align 8, !tbaa !36
  br label %170

170:                                              ; preds = %168, %161
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %177 = load i32, ptr %171, align 8, !tbaa !26
  br label %178

178:                                              ; preds = %228, %170
  %179 = phi i32 [ %177, %170 ], [ %225, %228 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %219

181:                                              ; preds = %178
  %182 = load ptr, ptr %172, align 8, !tbaa !27
  %183 = load ptr, ptr %173, align 8, !tbaa !28
  %184 = icmp ugt ptr %182, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %181
  %186 = tail call ptr @__errno_location() #17
  br label %187

187:                                              ; preds = %207, %185
  %188 = phi ptr [ %183, %185 ], [ %210, %207 ]
  %189 = phi ptr [ %182, %185 ], [ %211, %207 ]
  store i32 0, ptr %186, align 4, !tbaa !4
  store i32 0, ptr %174, align 4, !tbaa !17
  %190 = ptrtoint ptr %189 to i64
  %191 = ptrtoint ptr %188 to i64
  %192 = sub i64 %190, %191
  %193 = tail call i64 @llvm.smin.i64(i64 %192, i64 1073741824)
  %194 = and i64 %193, 4294967295
  %195 = load i32, ptr %175, align 4, !tbaa !31
  %196 = tail call i64 @write(i32 noundef %195, ptr noundef %188, i64 noundef %194) #15
  %197 = and i64 %196, 2147483648
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %187
  %200 = load i32, ptr %186, align 4, !tbaa !4
  %201 = icmp eq i32 %200, 11
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  store i32 1, ptr %174, align 4, !tbaa !17
  %203 = load i32, ptr %186, align 4, !tbaa !4
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi i32 [ %200, %199 ], [ %203, %202 ]
  %206 = tail call ptr @strerror(i32 noundef %205) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %206) #15
  br label %.loopexit67

207:                                              ; preds = %187
  %208 = load ptr, ptr %173, align 8, !tbaa !28
  %209 = and i64 %196, 2147483647
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  store ptr %210, ptr %173, align 8, !tbaa !28
  %211 = load ptr, ptr %172, align 8, !tbaa !27
  %212 = icmp ugt ptr %211, %210
  br i1 %212, label %187, label %213, !llvm.loop !37

213:                                              ; preds = %207
  %214 = load i32, ptr %171, align 8, !tbaa !26
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213, %181
  %217 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %217, ptr %171, align 8, !tbaa !26
  %218 = load ptr, ptr %176, align 8, !tbaa !22
  store ptr %218, ptr %172, align 8, !tbaa !27
  store ptr %218, ptr %173, align 8, !tbaa !28
  br label %219

219:                                              ; preds = %216, %213, %178
  %220 = phi i32 [ %214, %213 ], [ %217, %216 ], [ %179, %178 ]
  %221 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %222 = icmp eq i32 %221, -2
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit67

224:                                              ; preds = %219
  %225 = load i32, ptr %171, align 8, !tbaa !26
  %226 = icmp ult i32 %220, %225
  br i1 %226, label %227, label %228, !prof !33, !nosanitize !32

227:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

228:                                              ; preds = %224
  %229 = icmp eq i32 %220, %225
  br i1 %229, label %.loopexit76, label %178, !llvm.loop !38

.loopexit76:                                      ; preds = %155, %228, %165, %125, %73
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

245:                                              ; preds = %403, %.loopexit76
  %246 = phi i64 [ %244, %.loopexit76 ], [ %402, %403 ]
  %247 = phi i1 [ false, %.loopexit76 ], [ true, %403 ]
  %248 = load i32, ptr %23, align 8, !tbaa !18
  %249 = zext i32 %248 to i64
  %250 = tail call i64 @llvm.smin.i64(i64 %246, i64 %249)
  %251 = trunc i64 %250 to i32
  %252 = load ptr, ptr %230, align 8, !tbaa !20
  br i1 %247, label %257, label %253

253:                                              ; preds = %245
  %254 = and i64 %250, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %252, i8 0, i64 %254, i1 false)
  %255 = load ptr, ptr %230, align 8, !tbaa !20
  %256 = load i32, ptr %23, align 8, !tbaa !18
  br label %257

257:                                              ; preds = %253, %245
  %258 = phi i32 [ %256, %253 ], [ %248, %245 ]
  %259 = phi ptr [ %255, %253 ], [ %252, %245 ]
  store i32 %251, ptr %75, align 8, !tbaa !30
  store ptr %259, ptr %74, align 8, !tbaa !25
  %260 = icmp eq i32 %258, 0
  br i1 %260, label %261, label %292

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
  br label %.loopexit73

268:                                              ; preds = %261
  %269 = load i32, ptr %231, align 8, !tbaa !21
  %270 = icmp eq i32 %269, 0
  %271 = load i32, ptr %232, align 4, !tbaa !19
  br i1 %270, label %273, label %272

272:                                              ; preds = %268
  store i32 %271, ptr %23, align 8, !tbaa !18
  br label %295

273:                                              ; preds = %268
  %274 = zext i32 %271 to i64
  %275 = tail call noalias ptr @malloc(i64 noundef %274) #16
  store ptr %275, ptr %233, align 8, !tbaa !22
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  tail call void @free(ptr noundef nonnull %265) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit73

278:                                              ; preds = %273
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, i8 0, i64 24, i1 false)
  %279 = load i32, ptr %235, align 8, !tbaa !23
  %280 = load i32, ptr %236, align 4, !tbaa !24
  %281 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %279, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %280, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr %233, align 8, !tbaa !22
  tail call void @free(ptr noundef %284) #15
  %285 = load ptr, ptr %230, align 8, !tbaa !20
  tail call void @free(ptr noundef %285) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit73

286:                                              ; preds = %278
  store ptr null, ptr %74, align 8, !tbaa !25
  %287 = load i32, ptr %231, align 8, !tbaa !21
  %288 = load i32, ptr %232, align 4, !tbaa !19
  store i32 %288, ptr %23, align 8, !tbaa !18
  %289 = icmp eq i32 %287, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  store i32 %288, ptr %239, align 8, !tbaa !26
  %291 = load ptr, ptr %233, align 8, !tbaa !22
  store ptr %291, ptr %240, align 8, !tbaa !27
  store ptr %291, ptr %241, align 8, !tbaa !28
  br label %329

292:                                              ; preds = %257
  %293 = load i32, ptr %231, align 8, !tbaa !21
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %329, label %295

295:                                              ; preds = %292, %286, %272
  %296 = phi ptr [ %259, %292 ], [ null, %286 ], [ %259, %272 ]
  %297 = load i32, ptr %75, align 8, !tbaa !30
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %.loopexit73, label %299

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #17
  br label %301

301:                                              ; preds = %323, %299
  %302 = phi ptr [ %296, %299 ], [ %327, %323 ]
  store i32 0, ptr %300, align 4, !tbaa !4
  store i32 0, ptr %237, align 4, !tbaa !17
  %303 = load i32, ptr %75, align 8, !tbaa !30
  %304 = tail call i32 @llvm.umin.i32(i32 %303, i32 1073741824)
  %305 = zext nneg i32 %304 to i64
  %306 = load i32, ptr %238, align 4, !tbaa !31
  %307 = tail call i64 @write(i32 noundef %306, ptr noundef %302, i64 noundef %305) #15
  %308 = trunc i64 %307 to i32
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %301
  %311 = load i32, ptr %300, align 4, !tbaa !4
  %312 = icmp eq i32 %311, 11
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  store i32 1, ptr %237, align 4, !tbaa !17
  %314 = load i32, ptr %300, align 4, !tbaa !4
  br label %315

315:                                              ; preds = %313, %310
  %316 = phi i32 [ %311, %310 ], [ %314, %313 ]
  %317 = tail call ptr @strerror(i32 noundef %316) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %317) #15
  br label %.loopexit73

318:                                              ; preds = %301
  %319 = load i32, ptr %75, align 8, !tbaa !30
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %308), !nosanitize !32
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !32
  br i1 %321, label %322, label %323, !prof !33, !nosanitize !32

322:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !32
  store i32 %324, ptr %75, align 8, !tbaa !30
  %325 = load ptr, ptr %74, align 8, !tbaa !25
  %326 = and i64 %307, 2147483647
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 %326
  store ptr %327, ptr %74, align 8, !tbaa !25
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %.loopexit73, label %301, !llvm.loop !34

329:                                              ; preds = %292, %290
  %330 = load i32, ptr %242, align 8, !tbaa !36
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %75, align 8, !tbaa !30
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %.loopexit73, label %335

335:                                              ; preds = %332
  %336 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
  store i32 0, ptr %242, align 8, !tbaa !36
  br label %337

337:                                              ; preds = %335, %329
  %338 = load i32, ptr %239, align 8, !tbaa !26
  br label %339

339:                                              ; preds = %389, %337
  %340 = phi i32 [ %338, %337 ], [ %386, %389 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %380

342:                                              ; preds = %339
  %343 = load ptr, ptr %240, align 8, !tbaa !27
  %344 = load ptr, ptr %241, align 8, !tbaa !28
  %345 = icmp ugt ptr %343, %344
  br i1 %345, label %346, label %377

346:                                              ; preds = %342
  %347 = tail call ptr @__errno_location() #17
  br label %348

348:                                              ; preds = %368, %346
  %349 = phi ptr [ %344, %346 ], [ %371, %368 ]
  %350 = phi ptr [ %343, %346 ], [ %372, %368 ]
  store i32 0, ptr %347, align 4, !tbaa !4
  store i32 0, ptr %237, align 4, !tbaa !17
  %351 = ptrtoint ptr %350 to i64
  %352 = ptrtoint ptr %349 to i64
  %353 = sub i64 %351, %352
  %354 = tail call i64 @llvm.smin.i64(i64 %353, i64 1073741824)
  %355 = and i64 %354, 4294967295
  %356 = load i32, ptr %238, align 4, !tbaa !31
  %357 = tail call i64 @write(i32 noundef %356, ptr noundef %349, i64 noundef %355) #15
  %358 = and i64 %357, 2147483648
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %348
  %361 = load i32, ptr %347, align 4, !tbaa !4
  %362 = icmp eq i32 %361, 11
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  store i32 1, ptr %237, align 4, !tbaa !17
  %364 = load i32, ptr %347, align 4, !tbaa !4
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i32 [ %361, %360 ], [ %364, %363 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #15
  br label %.loopexit73

368:                                              ; preds = %348
  %369 = load ptr, ptr %241, align 8, !tbaa !28
  %370 = and i64 %357, 2147483647
  %371 = getelementptr inbounds nuw i8, ptr %369, i64 %370
  store ptr %371, ptr %241, align 8, !tbaa !28
  %372 = load ptr, ptr %240, align 8, !tbaa !27
  %373 = icmp ugt ptr %372, %371
  br i1 %373, label %348, label %374, !llvm.loop !37

374:                                              ; preds = %368
  %375 = load i32, ptr %239, align 8, !tbaa !26
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374, %342
  %378 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %378, ptr %239, align 8, !tbaa !26
  %379 = load ptr, ptr %233, align 8, !tbaa !22
  store ptr %379, ptr %240, align 8, !tbaa !27
  store ptr %379, ptr %241, align 8, !tbaa !28
  br label %380

380:                                              ; preds = %377, %374, %339
  %381 = phi i32 [ %375, %374 ], [ %378, %377 ], [ %340, %339 ]
  %382 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #15
  %383 = icmp eq i32 %382, -2
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit73

385:                                              ; preds = %380
  %386 = load i32, ptr %239, align 8, !tbaa !26
  %387 = icmp ult i32 %381, %386
  br i1 %387, label %388, label %389, !prof !33, !nosanitize !32

388:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

389:                                              ; preds = %385
  %390 = icmp eq i32 %381, %386
  br i1 %390, label %.loopexit73, label %339, !llvm.loop !38

.loopexit73:                                      ; preds = %323, %389, %384, %365, %332, %315, %295, %283, %277, %267
  %391 = phi i1 [ false, %332 ], [ true, %315 ], [ false, %295 ], [ true, %277 ], [ true, %365 ], [ true, %384 ], [ false, %389 ], [ true, %267 ], [ true, %283 ], [ false, %323 ]
  %392 = load i32, ptr %75, align 8, !tbaa !30
  %393 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %392), !nosanitize !32
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !32
  br i1 %394, label %395, label %396, !prof !33, !nosanitize !32

395:                                              ; preds = %.loopexit73
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

396:                                              ; preds = %.loopexit73
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !32
  %398 = zext i32 %397 to i64
  %399 = load i64, ptr %243, align 8, !tbaa !39
  %400 = add nsw i64 %399, %398
  store i64 %400, ptr %243, align 8, !tbaa !39
  %401 = load i64, ptr %70, align 8, !tbaa !29
  %402 = sub nsw i64 %401, %398
  store i64 %402, ptr %70, align 8, !tbaa !29
  br i1 %391, label %.loopexit67, label %403

403:                                              ; preds = %396
  %404 = icmp eq i64 %401, %398
  br i1 %404, label %405, label %245, !llvm.loop !40

405:                                              ; preds = %403
  %406 = load i32, ptr %23, align 8, !tbaa !18
  br label %407

407:                                              ; preds = %405, %68
  %408 = phi i32 [ %406, %405 ], [ %69, %68 ]
  %409 = zext i32 %408 to i64
  %410 = icmp ult i64 %17, %409
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %410, label %413, label %609

413:                                              ; preds = %407
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %413
  %428 = phi i64 [ %17, %413 ], [ %466, %.loopexit.backedge ]
  %429 = phi ptr [ %1, %413 ], [ %465, %.loopexit.backedge ]
  %430 = load i32, ptr %412, align 8, !tbaa !41
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %.loopexit
  %433 = load ptr, ptr %411, align 8, !tbaa !42
  %434 = load ptr, ptr %414, align 8, !tbaa !20
  br label %437

435:                                              ; preds = %.loopexit
  %436 = load ptr, ptr %414, align 8, !tbaa !20
  store ptr %436, ptr %411, align 8, !tbaa !42
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi ptr [ %434, %432 ], [ %436, %435 ]
  %439 = phi ptr [ %433, %432 ], [ %436, %435 ]
  %440 = zext i32 %430 to i64
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  %442 = ptrtoint ptr %441 to i64
  %443 = ptrtoint ptr %438 to i64
  %444 = sub i64 %442, %443
  %445 = trunc i64 %444 to i32
  %446 = load i32, ptr %23, align 8, !tbaa !18
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 %445), !nosanitize !32
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !32
  br i1 %448, label %449, label %450, !prof !33, !nosanitize !32

449:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

450:                                              ; preds = %437
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !32
  %452 = zext i32 %451 to i64
  %453 = tail call i64 @llvm.umin.i64(i64 %428, i64 %452)
  %454 = trunc nuw i64 %453 to i32
  %455 = and i64 %444, 4294967295
  %456 = getelementptr inbounds nuw i8, ptr %438, i64 %455
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %456, ptr align 1 %429, i64 %453, i1 false)
  %457 = load i32, ptr %412, align 8, !tbaa !41
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 %454), !nosanitize !32
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !32
  br i1 %459, label %460, label %461, !prof !33, !nosanitize !32

460:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

461:                                              ; preds = %450
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !32
  store i32 %462, ptr %412, align 8, !tbaa !41
  %463 = load i64, ptr %415, align 8, !tbaa !39
  %464 = add nsw i64 %463, %453
  store i64 %464, ptr %415, align 8, !tbaa !39
  %465 = getelementptr inbounds nuw i8, ptr %429, i64 %453
  %466 = sub i64 %428, %453
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %.loopexit67, label %468

468:                                              ; preds = %461
  %469 = load i32, ptr %23, align 8, !tbaa !18
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %502

471:                                              ; preds = %468
  %472 = load i32, ptr %417, align 4, !tbaa !19
  %473 = shl i32 %472, 1
  %474 = zext i32 %473 to i64
  %475 = tail call noalias ptr @malloc(i64 noundef %474) #16
  store ptr %475, ptr %414, align 8, !tbaa !20
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %478

477:                                              ; preds = %471
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

478:                                              ; preds = %471
  %479 = load i32, ptr %416, align 8, !tbaa !21
  %480 = icmp eq i32 %479, 0
  %481 = load i32, ptr %417, align 4, !tbaa !19
  br i1 %480, label %483, label %482

482:                                              ; preds = %478
  store i32 %481, ptr %23, align 8, !tbaa !18
  br label %505

483:                                              ; preds = %478
  %484 = zext i32 %481 to i64
  %485 = tail call noalias ptr @malloc(i64 noundef %484) #16
  store ptr %485, ptr %418, align 8, !tbaa !22
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  tail call void @free(ptr noundef nonnull %475) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

488:                                              ; preds = %483
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %419, i8 0, i64 24, i1 false)
  %489 = load i32, ptr %420, align 8, !tbaa !23
  %490 = load i32, ptr %421, align 4, !tbaa !24
  %491 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %489, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %490, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %488
  %494 = load ptr, ptr %418, align 8, !tbaa !22
  tail call void @free(ptr noundef %494) #15
  %495 = load ptr, ptr %414, align 8, !tbaa !20
  tail call void @free(ptr noundef %495) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %601

496:                                              ; preds = %488
  store ptr null, ptr %411, align 8, !tbaa !25
  %497 = load i32, ptr %416, align 8, !tbaa !21
  %498 = load i32, ptr %417, align 4, !tbaa !19
  store i32 %498, ptr %23, align 8, !tbaa !18
  %499 = icmp eq i32 %497, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %496
  store i32 %498, ptr %424, align 8, !tbaa !26
  %501 = load ptr, ptr %418, align 8, !tbaa !22
  store ptr %501, ptr %425, align 8, !tbaa !27
  store ptr %501, ptr %426, align 8, !tbaa !28
  br label %539

502:                                              ; preds = %468
  %503 = load i32, ptr %416, align 8, !tbaa !21
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %539, label %505

505:                                              ; preds = %502, %496, %482
  %506 = load i32, ptr %412, align 8, !tbaa !30
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %.loopexit.backedge, label %508

508:                                              ; preds = %505
  %509 = tail call ptr @__errno_location() #17
  %510 = load ptr, ptr %411, align 8, !tbaa !25
  br label %511

511:                                              ; preds = %533, %508
  %512 = phi ptr [ %510, %508 ], [ %537, %533 ]
  store i32 0, ptr %509, align 4, !tbaa !4
  store i32 0, ptr %422, align 4, !tbaa !17
  %513 = load i32, ptr %412, align 8, !tbaa !30
  %514 = tail call i32 @llvm.umin.i32(i32 %513, i32 1073741824)
  %515 = zext nneg i32 %514 to i64
  %516 = load i32, ptr %423, align 4, !tbaa !31
  %517 = tail call i64 @write(i32 noundef %516, ptr noundef %512, i64 noundef %515) #15
  %518 = trunc i64 %517 to i32
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %511
  %521 = load i32, ptr %509, align 4, !tbaa !4
  %522 = icmp eq i32 %521, 11
  br i1 %522, label %523, label %525

523:                                              ; preds = %520
  store i32 1, ptr %422, align 4, !tbaa !17
  %524 = load i32, ptr %509, align 4, !tbaa !4
  br label %525

525:                                              ; preds = %523, %520
  %526 = phi i32 [ %521, %520 ], [ %524, %523 ]
  %527 = tail call ptr @strerror(i32 noundef %526) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %527) #15
  br label %601

528:                                              ; preds = %511
  %529 = load i32, ptr %412, align 8, !tbaa !30
  %530 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %518), !nosanitize !32
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !32
  br i1 %531, label %532, label %533, !prof !33, !nosanitize !32

532:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

533:                                              ; preds = %528
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !32
  store i32 %534, ptr %412, align 8, !tbaa !30
  %535 = load ptr, ptr %411, align 8, !tbaa !25
  %536 = and i64 %517, 2147483647
  %537 = getelementptr inbounds nuw i8, ptr %535, i64 %536
  store ptr %537, ptr %411, align 8, !tbaa !25
  %538 = icmp eq i32 %534, 0
  br i1 %538, label %.loopexit.backedge, label %511, !llvm.loop !34

539:                                              ; preds = %502, %500
  %540 = load i32, ptr %427, align 8, !tbaa !36
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %547, label %542

542:                                              ; preds = %539
  %543 = load i32, ptr %412, align 8, !tbaa !30
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %.loopexit.backedge, label %545

.loopexit.backedge:                               ; preds = %533, %599, %542, %505
  br label %.loopexit

545:                                              ; preds = %542
  %546 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %427, align 8, !tbaa !36
  br label %547

547:                                              ; preds = %545, %539
  %548 = load i32, ptr %424, align 8, !tbaa !26
  br label %549

549:                                              ; preds = %599, %547
  %550 = phi i32 [ %548, %547 ], [ %596, %599 ]
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %590

552:                                              ; preds = %549
  %553 = load ptr, ptr %425, align 8, !tbaa !27
  %554 = load ptr, ptr %426, align 8, !tbaa !28
  %555 = icmp ugt ptr %553, %554
  br i1 %555, label %556, label %587

556:                                              ; preds = %552
  %557 = tail call ptr @__errno_location() #17
  br label %558

558:                                              ; preds = %578, %556
  %559 = phi ptr [ %554, %556 ], [ %581, %578 ]
  %560 = phi ptr [ %553, %556 ], [ %582, %578 ]
  store i32 0, ptr %557, align 4, !tbaa !4
  store i32 0, ptr %422, align 4, !tbaa !17
  %561 = ptrtoint ptr %560 to i64
  %562 = ptrtoint ptr %559 to i64
  %563 = sub i64 %561, %562
  %564 = tail call i64 @llvm.smin.i64(i64 %563, i64 1073741824)
  %565 = and i64 %564, 4294967295
  %566 = load i32, ptr %423, align 4, !tbaa !31
  %567 = tail call i64 @write(i32 noundef %566, ptr noundef %559, i64 noundef %565) #15
  %568 = and i64 %567, 2147483648
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %558
  %571 = load i32, ptr %557, align 4, !tbaa !4
  %572 = icmp eq i32 %571, 11
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  store i32 1, ptr %422, align 4, !tbaa !17
  %574 = load i32, ptr %557, align 4, !tbaa !4
  br label %575

575:                                              ; preds = %573, %570
  %576 = phi i32 [ %571, %570 ], [ %574, %573 ]
  %577 = tail call ptr @strerror(i32 noundef %576) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %577) #15
  br label %601

578:                                              ; preds = %558
  %579 = load ptr, ptr %426, align 8, !tbaa !28
  %580 = and i64 %567, 2147483647
  %581 = getelementptr inbounds nuw i8, ptr %579, i64 %580
  store ptr %581, ptr %426, align 8, !tbaa !28
  %582 = load ptr, ptr %425, align 8, !tbaa !27
  %583 = icmp ugt ptr %582, %581
  br i1 %583, label %558, label %584, !llvm.loop !37

584:                                              ; preds = %578
  %585 = load i32, ptr %424, align 8, !tbaa !26
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %584, %552
  %588 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %588, ptr %424, align 8, !tbaa !26
  %589 = load ptr, ptr %418, align 8, !tbaa !22
  store ptr %589, ptr %425, align 8, !tbaa !27
  store ptr %589, ptr %426, align 8, !tbaa !28
  br label %590

590:                                              ; preds = %587, %584, %549
  %591 = phi i32 [ %585, %584 ], [ %588, %587 ], [ %550, %549 ]
  %592 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %593 = icmp eq i32 %592, -2
  br i1 %593, label %594, label %595

594:                                              ; preds = %590
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %601

595:                                              ; preds = %590
  %596 = load i32, ptr %424, align 8, !tbaa !26
  %597 = icmp ult i32 %591, %596
  br i1 %597, label %598, label %599, !prof !33, !nosanitize !32

598:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

599:                                              ; preds = %595
  %600 = icmp eq i32 %591, %596
  br i1 %600, label %.loopexit.backedge, label %549, !llvm.loop !38

601:                                              ; preds = %594, %575, %525, %493, %487, %477
  %602 = load i32, ptr %422, align 4, !tbaa !17
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %.loopexit67, label %604

604:                                              ; preds = %601
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %466), !nosanitize !32
  %606 = extractvalue { i64, i1 } %605, 0, !nosanitize !32
  %607 = extractvalue { i64, i1 } %605, 1, !nosanitize !32
  br i1 %607, label %608, label %.loopexit67, !prof !33, !nosanitize !32

608:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

609:                                              ; preds = %407
  %610 = load i32, ptr %412, align 8, !tbaa !41
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %.loopexit71, label %612

612:                                              ; preds = %609
  %613 = icmp eq i32 %408, 0
  br i1 %613, label %614, label %655

614:                                              ; preds = %612
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %616 = load i32, ptr %615, align 4, !tbaa !19
  %617 = shl i32 %616, 1
  %618 = zext i32 %617 to i64
  %619 = tail call noalias ptr @malloc(i64 noundef %618) #16
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %619, ptr %620, align 8, !tbaa !20
  %621 = icmp eq ptr %619, null
  br i1 %621, label %622, label %623

622:                                              ; preds = %614
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit67

623:                                              ; preds = %614
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %625 = load i32, ptr %624, align 8, !tbaa !21
  %626 = icmp eq i32 %625, 0
  %627 = load i32, ptr %615, align 4, !tbaa !19
  br i1 %626, label %629, label %628

628:                                              ; preds = %623
  store i32 %627, ptr %23, align 8, !tbaa !18
  br label %659

629:                                              ; preds = %623
  %630 = zext i32 %627 to i64
  %631 = tail call noalias ptr @malloc(i64 noundef %630) #16
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %631, ptr %632, align 8, !tbaa !22
  %633 = icmp eq ptr %631, null
  br i1 %633, label %634, label %635

634:                                              ; preds = %629
  tail call void @free(ptr noundef nonnull %619) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit67

635:                                              ; preds = %629
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %636, i8 0, i64 24, i1 false)
  %638 = load i32, ptr %637, align 8, !tbaa !23
  %639 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %640 = load i32, ptr %639, align 4, !tbaa !24
  %641 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %638, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %640, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %646, label %643

643:                                              ; preds = %635
  %644 = load ptr, ptr %632, align 8, !tbaa !22
  tail call void @free(ptr noundef %644) #15
  %645 = load ptr, ptr %620, align 8, !tbaa !20
  tail call void @free(ptr noundef %645) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit67

646:                                              ; preds = %635
  store ptr null, ptr %411, align 8, !tbaa !25
  %647 = load i32, ptr %624, align 8, !tbaa !21
  %648 = load i32, ptr %615, align 4, !tbaa !19
  store i32 %648, ptr %23, align 8, !tbaa !18
  %649 = icmp eq i32 %647, 0
  br i1 %649, label %650, label %659

650:                                              ; preds = %646
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %648, ptr %651, align 8, !tbaa !26
  %652 = load ptr, ptr %632, align 8, !tbaa !22
  %653 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %652, ptr %653, align 8, !tbaa !27
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %652, ptr %654, align 8, !tbaa !28
  br label %695

655:                                              ; preds = %612
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %657 = load i32, ptr %656, align 8, !tbaa !21
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %695, label %659

659:                                              ; preds = %655, %646, %628
  %660 = load i32, ptr %412, align 8, !tbaa !30
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %.loopexit71, label %662

662:                                              ; preds = %659
  %663 = tail call ptr @__errno_location() #17
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %665 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %666 = load ptr, ptr %411, align 8, !tbaa !25
  br label %667

667:                                              ; preds = %689, %662
  %668 = phi ptr [ %666, %662 ], [ %693, %689 ]
  store i32 0, ptr %663, align 4, !tbaa !4
  store i32 0, ptr %664, align 4, !tbaa !17
  %669 = load i32, ptr %412, align 8, !tbaa !30
  %670 = tail call i32 @llvm.umin.i32(i32 %669, i32 1073741824)
  %671 = zext nneg i32 %670 to i64
  %672 = load i32, ptr %665, align 4, !tbaa !31
  %673 = tail call i64 @write(i32 noundef %672, ptr noundef %668, i64 noundef %671) #15
  %674 = trunc i64 %673 to i32
  %675 = icmp slt i32 %674, 0
  br i1 %675, label %676, label %684

676:                                              ; preds = %667
  %677 = load i32, ptr %663, align 4, !tbaa !4
  %678 = icmp eq i32 %677, 11
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  store i32 1, ptr %664, align 4, !tbaa !17
  %680 = load i32, ptr %663, align 4, !tbaa !4
  br label %681

681:                                              ; preds = %679, %676
  %682 = phi i32 [ %677, %676 ], [ %680, %679 ]
  %683 = tail call ptr @strerror(i32 noundef %682) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %683) #15
  br label %.loopexit67

684:                                              ; preds = %667
  %685 = load i32, ptr %412, align 8, !tbaa !30
  %686 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %685, i32 %674), !nosanitize !32
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !32
  br i1 %687, label %688, label %689, !prof !33, !nosanitize !32

688:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

689:                                              ; preds = %684
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !32
  store i32 %690, ptr %412, align 8, !tbaa !30
  %691 = load ptr, ptr %411, align 8, !tbaa !25
  %692 = and i64 %673, 2147483647
  %693 = getelementptr inbounds nuw i8, ptr %691, i64 %692
  store ptr %693, ptr %411, align 8, !tbaa !25
  %694 = icmp eq i32 %690, 0
  br i1 %694, label %.loopexit71, label %667, !llvm.loop !34

695:                                              ; preds = %655, %650
  %696 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %697 = load i32, ptr %696, align 8, !tbaa !36
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %704, label %699

699:                                              ; preds = %695
  %700 = load i32, ptr %412, align 8, !tbaa !30
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.loopexit71, label %702

702:                                              ; preds = %699
  %703 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %696, align 8, !tbaa !36
  br label %704

704:                                              ; preds = %702, %695
  %705 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %706 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %707 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %708 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %709 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %710 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %711 = load i32, ptr %705, align 8, !tbaa !26
  br label %712

712:                                              ; preds = %762, %704
  %713 = phi i32 [ %711, %704 ], [ %759, %762 ]
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %753

715:                                              ; preds = %712
  %716 = load ptr, ptr %706, align 8, !tbaa !27
  %717 = load ptr, ptr %707, align 8, !tbaa !28
  %718 = icmp ugt ptr %716, %717
  br i1 %718, label %719, label %750

719:                                              ; preds = %715
  %720 = tail call ptr @__errno_location() #17
  br label %721

721:                                              ; preds = %741, %719
  %722 = phi ptr [ %717, %719 ], [ %744, %741 ]
  %723 = phi ptr [ %716, %719 ], [ %745, %741 ]
  store i32 0, ptr %720, align 4, !tbaa !4
  store i32 0, ptr %708, align 4, !tbaa !17
  %724 = ptrtoint ptr %723 to i64
  %725 = ptrtoint ptr %722 to i64
  %726 = sub i64 %724, %725
  %727 = tail call i64 @llvm.smin.i64(i64 %726, i64 1073741824)
  %728 = and i64 %727, 4294967295
  %729 = load i32, ptr %709, align 4, !tbaa !31
  %730 = tail call i64 @write(i32 noundef %729, ptr noundef %722, i64 noundef %728) #15
  %731 = and i64 %730, 2147483648
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %741, label %733

733:                                              ; preds = %721
  %734 = load i32, ptr %720, align 4, !tbaa !4
  %735 = icmp eq i32 %734, 11
  br i1 %735, label %736, label %738

736:                                              ; preds = %733
  store i32 1, ptr %708, align 4, !tbaa !17
  %737 = load i32, ptr %720, align 4, !tbaa !4
  br label %738

738:                                              ; preds = %736, %733
  %739 = phi i32 [ %734, %733 ], [ %737, %736 ]
  %740 = tail call ptr @strerror(i32 noundef %739) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %740) #15
  br label %.loopexit67

741:                                              ; preds = %721
  %742 = load ptr, ptr %707, align 8, !tbaa !28
  %743 = and i64 %730, 2147483647
  %744 = getelementptr inbounds nuw i8, ptr %742, i64 %743
  store ptr %744, ptr %707, align 8, !tbaa !28
  %745 = load ptr, ptr %706, align 8, !tbaa !27
  %746 = icmp ugt ptr %745, %744
  br i1 %746, label %721, label %747, !llvm.loop !37

747:                                              ; preds = %741
  %748 = load i32, ptr %705, align 8, !tbaa !26
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %753

750:                                              ; preds = %747, %715
  %751 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %751, ptr %705, align 8, !tbaa !26
  %752 = load ptr, ptr %710, align 8, !tbaa !22
  store ptr %752, ptr %706, align 8, !tbaa !27
  store ptr %752, ptr %707, align 8, !tbaa !28
  br label %753

753:                                              ; preds = %750, %747, %712
  %754 = phi i32 [ %748, %747 ], [ %751, %750 ], [ %713, %712 ]
  %755 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %756 = icmp eq i32 %755, -2
  br i1 %756, label %757, label %758

757:                                              ; preds = %753
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit67

758:                                              ; preds = %753
  %759 = load i32, ptr %705, align 8, !tbaa !26
  %760 = icmp ult i32 %754, %759
  br i1 %760, label %761, label %762, !prof !33, !nosanitize !32

761:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

762:                                              ; preds = %758
  %763 = icmp eq i32 %754, %759
  br i1 %763, label %.loopexit71, label %712, !llvm.loop !38

.loopexit71:                                      ; preds = %689, %762, %699, %659, %609
  store ptr %1, ptr %411, align 8, !tbaa !42
  %764 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %765 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %766 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %768 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %769 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %770 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %771 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %778

778:                                              ; preds = %933, %.loopexit71
  %779 = phi i64 [ %17, %.loopexit71 ], [ %924, %933 ]
  %780 = tail call i64 @llvm.umin.i64(i64 %779, i64 4294967295)
  %781 = trunc nuw i64 %780 to i32
  store i32 %781, ptr %412, align 8, !tbaa !41
  %782 = load i32, ptr %23, align 8, !tbaa !18
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %815

784:                                              ; preds = %778
  %785 = load i32, ptr %765, align 4, !tbaa !19
  %786 = shl i32 %785, 1
  %787 = zext i32 %786 to i64
  %788 = tail call noalias ptr @malloc(i64 noundef %787) #16
  store ptr %788, ptr %766, align 8, !tbaa !20
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %791

790:                                              ; preds = %784
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

791:                                              ; preds = %784
  %792 = load i32, ptr %764, align 8, !tbaa !21
  %793 = icmp eq i32 %792, 0
  %794 = load i32, ptr %765, align 4, !tbaa !19
  br i1 %793, label %796, label %795

795:                                              ; preds = %791
  store i32 %794, ptr %23, align 8, !tbaa !18
  br label %818

796:                                              ; preds = %791
  %797 = zext i32 %794 to i64
  %798 = tail call noalias ptr @malloc(i64 noundef %797) #16
  store ptr %798, ptr %767, align 8, !tbaa !22
  %799 = icmp eq ptr %798, null
  br i1 %799, label %800, label %801

800:                                              ; preds = %796
  tail call void @free(ptr noundef nonnull %788) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

801:                                              ; preds = %796
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %768, i8 0, i64 24, i1 false)
  %802 = load i32, ptr %769, align 8, !tbaa !23
  %803 = load i32, ptr %770, align 4, !tbaa !24
  %804 = tail call i32 @deflateInit2_(ptr noundef nonnull %411, i32 noundef %802, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %803, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %809, label %806

806:                                              ; preds = %801
  %807 = load ptr, ptr %767, align 8, !tbaa !22
  tail call void @free(ptr noundef %807) #15
  %808 = load ptr, ptr %766, align 8, !tbaa !20
  tail call void @free(ptr noundef %808) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit68

809:                                              ; preds = %801
  store ptr null, ptr %411, align 8, !tbaa !25
  %810 = load i32, ptr %764, align 8, !tbaa !21
  %811 = load i32, ptr %765, align 4, !tbaa !19
  store i32 %811, ptr %23, align 8, !tbaa !18
  %812 = icmp eq i32 %810, 0
  br i1 %812, label %813, label %818

813:                                              ; preds = %809
  store i32 %811, ptr %773, align 8, !tbaa !26
  %814 = load ptr, ptr %767, align 8, !tbaa !22
  store ptr %814, ptr %774, align 8, !tbaa !27
  store ptr %814, ptr %775, align 8, !tbaa !28
  br label %852

815:                                              ; preds = %778
  %816 = load i32, ptr %764, align 8, !tbaa !21
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %852, label %818

818:                                              ; preds = %815, %809, %795
  %819 = load i32, ptr %412, align 8, !tbaa !30
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %.loopexit68, label %821

821:                                              ; preds = %818
  %822 = tail call ptr @__errno_location() #17
  %823 = load ptr, ptr %411, align 8, !tbaa !25
  br label %824

824:                                              ; preds = %846, %821
  %825 = phi ptr [ %823, %821 ], [ %850, %846 ]
  store i32 0, ptr %822, align 4, !tbaa !4
  store i32 0, ptr %771, align 4, !tbaa !17
  %826 = load i32, ptr %412, align 8, !tbaa !30
  %827 = tail call i32 @llvm.umin.i32(i32 %826, i32 1073741824)
  %828 = zext nneg i32 %827 to i64
  %829 = load i32, ptr %772, align 4, !tbaa !31
  %830 = tail call i64 @write(i32 noundef %829, ptr noundef %825, i64 noundef %828) #15
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %831, 0
  br i1 %832, label %833, label %841

833:                                              ; preds = %824
  %834 = load i32, ptr %822, align 4, !tbaa !4
  %835 = icmp eq i32 %834, 11
  br i1 %835, label %836, label %838

836:                                              ; preds = %833
  store i32 1, ptr %771, align 4, !tbaa !17
  %837 = load i32, ptr %822, align 4, !tbaa !4
  br label %838

838:                                              ; preds = %836, %833
  %839 = phi i32 [ %834, %833 ], [ %837, %836 ]
  %840 = tail call ptr @strerror(i32 noundef %839) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %840) #15
  br label %.loopexit68

841:                                              ; preds = %824
  %842 = load i32, ptr %412, align 8, !tbaa !30
  %843 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 %831), !nosanitize !32
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !32
  br i1 %844, label %845, label %846, !prof !33, !nosanitize !32

845:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

846:                                              ; preds = %841
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !32
  store i32 %847, ptr %412, align 8, !tbaa !30
  %848 = load ptr, ptr %411, align 8, !tbaa !25
  %849 = and i64 %830, 2147483647
  %850 = getelementptr inbounds nuw i8, ptr %848, i64 %849
  store ptr %850, ptr %411, align 8, !tbaa !25
  %851 = icmp eq i32 %847, 0
  br i1 %851, label %.loopexit68, label %824, !llvm.loop !34

852:                                              ; preds = %815, %813
  %853 = load i32, ptr %776, align 8, !tbaa !36
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %860, label %855

855:                                              ; preds = %852
  %856 = load i32, ptr %412, align 8, !tbaa !30
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %.loopexit68, label %858

858:                                              ; preds = %855
  %859 = tail call i32 @deflateReset(ptr noundef nonnull %411) #15
  store i32 0, ptr %776, align 8, !tbaa !36
  br label %860

860:                                              ; preds = %858, %852
  %861 = load i32, ptr %773, align 8, !tbaa !26
  br label %862

862:                                              ; preds = %912, %860
  %863 = phi i32 [ %861, %860 ], [ %909, %912 ]
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %903

865:                                              ; preds = %862
  %866 = load ptr, ptr %774, align 8, !tbaa !27
  %867 = load ptr, ptr %775, align 8, !tbaa !28
  %868 = icmp ugt ptr %866, %867
  br i1 %868, label %869, label %900

869:                                              ; preds = %865
  %870 = tail call ptr @__errno_location() #17
  br label %871

871:                                              ; preds = %891, %869
  %872 = phi ptr [ %867, %869 ], [ %894, %891 ]
  %873 = phi ptr [ %866, %869 ], [ %895, %891 ]
  store i32 0, ptr %870, align 4, !tbaa !4
  store i32 0, ptr %771, align 4, !tbaa !17
  %874 = ptrtoint ptr %873 to i64
  %875 = ptrtoint ptr %872 to i64
  %876 = sub i64 %874, %875
  %877 = tail call i64 @llvm.smin.i64(i64 %876, i64 1073741824)
  %878 = and i64 %877, 4294967295
  %879 = load i32, ptr %772, align 4, !tbaa !31
  %880 = tail call i64 @write(i32 noundef %879, ptr noundef %872, i64 noundef %878) #15
  %881 = and i64 %880, 2147483648
  %882 = icmp eq i64 %881, 0
  br i1 %882, label %891, label %883

883:                                              ; preds = %871
  %884 = load i32, ptr %870, align 4, !tbaa !4
  %885 = icmp eq i32 %884, 11
  br i1 %885, label %886, label %888

886:                                              ; preds = %883
  store i32 1, ptr %771, align 4, !tbaa !17
  %887 = load i32, ptr %870, align 4, !tbaa !4
  br label %888

888:                                              ; preds = %886, %883
  %889 = phi i32 [ %884, %883 ], [ %887, %886 ]
  %890 = tail call ptr @strerror(i32 noundef %889) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %890) #15
  br label %.loopexit68

891:                                              ; preds = %871
  %892 = load ptr, ptr %775, align 8, !tbaa !28
  %893 = and i64 %880, 2147483647
  %894 = getelementptr inbounds nuw i8, ptr %892, i64 %893
  store ptr %894, ptr %775, align 8, !tbaa !28
  %895 = load ptr, ptr %774, align 8, !tbaa !27
  %896 = icmp ugt ptr %895, %894
  br i1 %896, label %871, label %897, !llvm.loop !37

897:                                              ; preds = %891
  %898 = load i32, ptr %773, align 8, !tbaa !26
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %903

900:                                              ; preds = %897, %865
  %901 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %901, ptr %773, align 8, !tbaa !26
  %902 = load ptr, ptr %767, align 8, !tbaa !22
  store ptr %902, ptr %774, align 8, !tbaa !27
  store ptr %902, ptr %775, align 8, !tbaa !28
  br label %903

903:                                              ; preds = %900, %897, %862
  %904 = phi i32 [ %898, %897 ], [ %901, %900 ], [ %863, %862 ]
  %905 = tail call i32 @deflate(ptr noundef nonnull %411, i32 noundef 0) #15
  %906 = icmp eq i32 %905, -2
  br i1 %906, label %907, label %908

907:                                              ; preds = %903
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit68

908:                                              ; preds = %903
  %909 = load i32, ptr %773, align 8, !tbaa !26
  %910 = icmp ult i32 %904, %909
  br i1 %910, label %911, label %912, !prof !33, !nosanitize !32

911:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

912:                                              ; preds = %908
  %913 = icmp eq i32 %904, %909
  br i1 %913, label %.loopexit68, label %862, !llvm.loop !38

.loopexit68:                                      ; preds = %846, %912, %907, %888, %855, %838, %818, %806, %800, %790
  %914 = phi i1 [ false, %855 ], [ true, %838 ], [ false, %818 ], [ true, %800 ], [ true, %888 ], [ true, %907 ], [ false, %912 ], [ true, %790 ], [ true, %806 ], [ false, %846 ]
  %915 = load i32, ptr %412, align 8, !tbaa !41
  %916 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %781, i32 %915), !nosanitize !32
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !32
  br i1 %917, label %918, label %919, !prof !33, !nosanitize !32

918:                                              ; preds = %.loopexit68
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

919:                                              ; preds = %.loopexit68
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !32
  %921 = zext i32 %920 to i64
  %922 = load i64, ptr %777, align 8, !tbaa !39
  %923 = add nsw i64 %922, %921
  store i64 %923, ptr %777, align 8, !tbaa !39
  %924 = sub i64 %779, %921
  br i1 %914, label %925, label %933

925:                                              ; preds = %919
  %926 = load i32, ptr %771, align 4, !tbaa !17
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %.loopexit67, label %928

928:                                              ; preds = %925
  %929 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %924), !nosanitize !32
  %930 = extractvalue { i64, i1 } %929, 0, !nosanitize !32
  %931 = extractvalue { i64, i1 } %929, 1, !nosanitize !32
  br i1 %931, label %932, label %.loopexit67, !prof !33, !nosanitize !32

932:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

933:                                              ; preds = %919
  %934 = icmp eq i64 %924, 0
  br i1 %934, label %.loopexit67, label %778, !llvm.loop !43

.loopexit67:                                      ; preds = %396, %933, %461, %928, %925, %757, %738, %681, %643, %634, %622, %604, %601, %223, %204, %147, %109, %100, %88, %56, %47, %35, %20
  %935 = phi i64 [ 0, %643 ], [ 0, %20 ], [ %17, %933 ], [ 0, %925 ], [ 0, %601 ], [ 0, %47 ], [ %17, %461 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %204 ], [ 0, %223 ], [ %606, %604 ], [ 0, %681 ], [ 0, %634 ], [ 0, %738 ], [ 0, %757 ], [ 0, %622 ], [ %930, %928 ], [ 0, %396 ]
  %936 = icmp ne i64 %17, 0
  %937 = icmp eq i64 %935, 0
  %938 = select i1 %936, i1 %937, i1 false
  %939 = trunc i64 %935 to i32
  %940 = select i1 %938, i32 -1, i32 %939
  br label %941

941:                                              ; preds = %.loopexit67, %19, %12, %4, %2
  %942 = phi i32 [ %940, %.loopexit67 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %942
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %650, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %650

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %650, label %18

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
  br label %650

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %.loopexit48, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit49, label %74

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
  br label %.loopexit47

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
  br label %.loopexit47

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
  br label %.loopexit47

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
  br label %157

117:                                              ; preds = %74
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %119 = load i32, ptr %118, align 8, !tbaa !21
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %157, label %121

121:                                              ; preds = %117, %108, %90
  %122 = load i32, ptr %71, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit49, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #17
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %128 = load ptr, ptr %6, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %151, %124
  %130 = phi ptr [ %128, %124 ], [ %155, %151 ]
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
  br label %.loopexit47

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %136), !nosanitize !32
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !32
  br i1 %149, label %150, label %151, !prof !33, !nosanitize !32

150:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

151:                                              ; preds = %146
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !32
  store i32 %152, ptr %71, align 8, !tbaa !30
  %153 = load ptr, ptr %6, align 8, !tbaa !25
  %154 = and i64 %135, 2147483647
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  store ptr %155, ptr %6, align 8, !tbaa !25
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %.loopexit49, label %129, !llvm.loop !34

157:                                              ; preds = %117, %112
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !36
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %71, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %.loopexit49, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %158, align 8, !tbaa !36
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

174:                                              ; preds = %224, %166
  %175 = phi i32 [ %173, %166 ], [ %221, %224 ]
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
  br label %.loopexit47

203:                                              ; preds = %183
  %204 = load ptr, ptr %169, align 8, !tbaa !28
  %205 = and i64 %192, 2147483647
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  store ptr %206, ptr %169, align 8, !tbaa !28
  %207 = load ptr, ptr %168, align 8, !tbaa !27
  %208 = icmp ugt ptr %207, %206
  br i1 %208, label %183, label %209, !llvm.loop !37

209:                                              ; preds = %203
  %210 = load i32, ptr %167, align 8, !tbaa !26
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %177
  %213 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %213, ptr %167, align 8, !tbaa !26
  %214 = load ptr, ptr %172, align 8, !tbaa !22
  store ptr %214, ptr %168, align 8, !tbaa !27
  store ptr %214, ptr %169, align 8, !tbaa !28
  br label %215

215:                                              ; preds = %212, %209, %174
  %216 = phi i32 [ %210, %209 ], [ %213, %212 ], [ %175, %174 ]
  %217 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %218 = icmp eq i32 %217, -2
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit47

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp ult i32 %216, %221
  br i1 %222, label %223, label %224, !prof !33, !nosanitize !32

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

224:                                              ; preds = %220
  %225 = icmp eq i32 %216, %221
  br i1 %225, label %.loopexit49, label %174, !llvm.loop !38

.loopexit49:                                      ; preds = %151, %224, %161, %121, %70
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %240 = load i64, ptr %67, align 8, !tbaa !29
  br label %241

241:                                              ; preds = %399, %.loopexit49
  %242 = phi i64 [ %240, %.loopexit49 ], [ %398, %399 ]
  %243 = phi i1 [ false, %.loopexit49 ], [ true, %399 ]
  %244 = load i32, ptr %19, align 8, !tbaa !18
  %245 = zext i32 %244 to i64
  %246 = tail call i64 @llvm.smin.i64(i64 %242, i64 %245)
  %247 = trunc i64 %246 to i32
  %248 = load ptr, ptr %226, align 8, !tbaa !20
  br i1 %243, label %253, label %249

249:                                              ; preds = %241
  %250 = and i64 %246, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %248, i8 0, i64 %250, i1 false)
  %251 = load ptr, ptr %226, align 8, !tbaa !20
  %252 = load i32, ptr %19, align 8, !tbaa !18
  br label %253

253:                                              ; preds = %249, %241
  %254 = phi i32 [ %252, %249 ], [ %244, %241 ]
  %255 = phi ptr [ %251, %249 ], [ %248, %241 ]
  store i32 %247, ptr %71, align 8, !tbaa !30
  store ptr %255, ptr %6, align 8, !tbaa !25
  %256 = icmp eq i32 %254, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %253
  %258 = load i32, ptr %228, align 4, !tbaa !19
  %259 = shl i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = tail call noalias ptr @malloc(i64 noundef %260) #16
  store ptr %261, ptr %226, align 8, !tbaa !20
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

264:                                              ; preds = %257
  %265 = load i32, ptr %227, align 8, !tbaa !21
  %266 = icmp eq i32 %265, 0
  %267 = load i32, ptr %228, align 4, !tbaa !19
  br i1 %266, label %269, label %268

268:                                              ; preds = %264
  store i32 %267, ptr %19, align 8, !tbaa !18
  br label %291

269:                                              ; preds = %264
  %270 = zext i32 %267 to i64
  %271 = tail call noalias ptr @malloc(i64 noundef %270) #16
  store ptr %271, ptr %229, align 8, !tbaa !22
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  tail call void @free(ptr noundef nonnull %261) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

274:                                              ; preds = %269
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %230, i8 0, i64 24, i1 false)
  %275 = load i32, ptr %231, align 8, !tbaa !23
  %276 = load i32, ptr %232, align 4, !tbaa !24
  %277 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %275, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %276, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = load ptr, ptr %229, align 8, !tbaa !22
  tail call void @free(ptr noundef %280) #15
  %281 = load ptr, ptr %226, align 8, !tbaa !20
  tail call void @free(ptr noundef %281) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

282:                                              ; preds = %274
  store ptr null, ptr %6, align 8, !tbaa !25
  %283 = load i32, ptr %227, align 8, !tbaa !21
  %284 = load i32, ptr %228, align 4, !tbaa !19
  store i32 %284, ptr %19, align 8, !tbaa !18
  %285 = icmp eq i32 %283, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  store i32 %284, ptr %235, align 8, !tbaa !26
  %287 = load ptr, ptr %229, align 8, !tbaa !22
  store ptr %287, ptr %236, align 8, !tbaa !27
  store ptr %287, ptr %237, align 8, !tbaa !28
  br label %325

288:                                              ; preds = %253
  %289 = load i32, ptr %227, align 8, !tbaa !21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %325, label %291

291:                                              ; preds = %288, %282, %268
  %292 = phi ptr [ %255, %288 ], [ null, %282 ], [ %255, %268 ]
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %.loopexit45, label %295

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #17
  br label %297

297:                                              ; preds = %319, %295
  %298 = phi ptr [ %292, %295 ], [ %323, %319 ]
  store i32 0, ptr %296, align 4, !tbaa !4
  store i32 0, ptr %233, align 4, !tbaa !17
  %299 = load i32, ptr %71, align 8, !tbaa !30
  %300 = tail call i32 @llvm.umin.i32(i32 %299, i32 1073741824)
  %301 = zext nneg i32 %300 to i64
  %302 = load i32, ptr %234, align 4, !tbaa !31
  %303 = tail call i64 @write(i32 noundef %302, ptr noundef %298, i64 noundef %301) #15
  %304 = trunc i64 %303 to i32
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load i32, ptr %296, align 4, !tbaa !4
  %308 = icmp eq i32 %307, 11
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  store i32 1, ptr %233, align 4, !tbaa !17
  %310 = load i32, ptr %296, align 4, !tbaa !4
  br label %311

311:                                              ; preds = %309, %306
  %312 = phi i32 [ %307, %306 ], [ %310, %309 ]
  %313 = tail call ptr @strerror(i32 noundef %312) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %313) #15
  br label %.loopexit45

314:                                              ; preds = %297
  %315 = load i32, ptr %71, align 8, !tbaa !30
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 %304), !nosanitize !32
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !32
  br i1 %317, label %318, label %319, !prof !33, !nosanitize !32

318:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !32
  store i32 %320, ptr %71, align 8, !tbaa !30
  %321 = load ptr, ptr %6, align 8, !tbaa !25
  %322 = and i64 %303, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %6, align 8, !tbaa !25
  %324 = icmp eq i32 %320, 0
  br i1 %324, label %.loopexit45, label %297, !llvm.loop !34

325:                                              ; preds = %288, %286
  %326 = load i32, ptr %238, align 8, !tbaa !36
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %71, align 8, !tbaa !30
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %.loopexit45, label %331

331:                                              ; preds = %328
  %332 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %238, align 8, !tbaa !36
  br label %333

333:                                              ; preds = %331, %325
  %334 = load i32, ptr %235, align 8, !tbaa !26
  br label %335

335:                                              ; preds = %385, %333
  %336 = phi i32 [ %334, %333 ], [ %382, %385 ]
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load ptr, ptr %236, align 8, !tbaa !27
  %340 = load ptr, ptr %237, align 8, !tbaa !28
  %341 = icmp ugt ptr %339, %340
  br i1 %341, label %342, label %373

342:                                              ; preds = %338
  %343 = tail call ptr @__errno_location() #17
  br label %344

344:                                              ; preds = %364, %342
  %345 = phi ptr [ %340, %342 ], [ %367, %364 ]
  %346 = phi ptr [ %339, %342 ], [ %368, %364 ]
  store i32 0, ptr %343, align 4, !tbaa !4
  store i32 0, ptr %233, align 4, !tbaa !17
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %345 to i64
  %349 = sub i64 %347, %348
  %350 = tail call i64 @llvm.smin.i64(i64 %349, i64 1073741824)
  %351 = and i64 %350, 4294967295
  %352 = load i32, ptr %234, align 4, !tbaa !31
  %353 = tail call i64 @write(i32 noundef %352, ptr noundef %345, i64 noundef %351) #15
  %354 = and i64 %353, 2147483648
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %344
  %357 = load i32, ptr %343, align 4, !tbaa !4
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  store i32 1, ptr %233, align 4, !tbaa !17
  %360 = load i32, ptr %343, align 4, !tbaa !4
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %357, %356 ], [ %360, %359 ]
  %363 = tail call ptr @strerror(i32 noundef %362) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %363) #15
  br label %.loopexit45

364:                                              ; preds = %344
  %365 = load ptr, ptr %237, align 8, !tbaa !28
  %366 = and i64 %353, 2147483647
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  store ptr %367, ptr %237, align 8, !tbaa !28
  %368 = load ptr, ptr %236, align 8, !tbaa !27
  %369 = icmp ugt ptr %368, %367
  br i1 %369, label %344, label %370, !llvm.loop !37

370:                                              ; preds = %364
  %371 = load i32, ptr %235, align 8, !tbaa !26
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370, %338
  %374 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %374, ptr %235, align 8, !tbaa !26
  %375 = load ptr, ptr %229, align 8, !tbaa !22
  store ptr %375, ptr %236, align 8, !tbaa !27
  store ptr %375, ptr %237, align 8, !tbaa !28
  br label %376

376:                                              ; preds = %373, %370, %335
  %377 = phi i32 [ %371, %370 ], [ %374, %373 ], [ %336, %335 ]
  %378 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %379 = icmp eq i32 %378, -2
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit45

381:                                              ; preds = %376
  %382 = load i32, ptr %235, align 8, !tbaa !26
  %383 = icmp ult i32 %377, %382
  br i1 %383, label %384, label %385, !prof !33, !nosanitize !32

384:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

385:                                              ; preds = %381
  %386 = icmp eq i32 %377, %382
  br i1 %386, label %.loopexit45, label %335, !llvm.loop !38

.loopexit45:                                      ; preds = %319, %385, %380, %361, %328, %311, %291, %279, %273, %263
  %387 = phi i1 [ false, %328 ], [ true, %311 ], [ false, %291 ], [ true, %273 ], [ true, %361 ], [ true, %380 ], [ false, %385 ], [ true, %263 ], [ true, %279 ], [ false, %319 ]
  %388 = load i32, ptr %71, align 8, !tbaa !30
  %389 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %247, i32 %388), !nosanitize !32
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !32
  br i1 %390, label %391, label %392, !prof !33, !nosanitize !32

391:                                              ; preds = %.loopexit45
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

392:                                              ; preds = %.loopexit45
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !32
  %394 = zext i32 %393 to i64
  %395 = load i64, ptr %239, align 8, !tbaa !39
  %396 = add nsw i64 %395, %394
  store i64 %396, ptr %239, align 8, !tbaa !39
  %397 = load i64, ptr %67, align 8, !tbaa !29
  %398 = sub nsw i64 %397, %394
  store i64 %398, ptr %67, align 8, !tbaa !29
  br i1 %387, label %.loopexit47, label %399

399:                                              ; preds = %392
  %400 = icmp eq i64 %397, %394
  br i1 %400, label %.loopexit48, label %241, !llvm.loop !40

.loopexit47:                                      ; preds = %392, %219, %200, %143, %105, %96, %84
  %401 = load i32, ptr %11, align 8, !tbaa !16
  br label %650

.loopexit48:                                      ; preds = %399, %65
  %402 = load ptr, ptr %6, align 8, !tbaa !25
  %403 = icmp eq ptr %402, null
  br i1 %403, label %578, label %404

404:                                              ; preds = %.loopexit48
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %406 = load i32, ptr %405, align 8, !tbaa !30
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %407
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %410 = load ptr, ptr %409, align 8, !tbaa !20
  %411 = load i32, ptr %19, align 8, !tbaa !18
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds nuw i8, ptr %410, i64 %412
  %414 = icmp ugt ptr %408, %413
  br i1 %414, label %415, label %578

415:                                              ; preds = %404
  %416 = icmp eq i32 %411, 0
  br i1 %416, label %417, label %457

417:                                              ; preds = %415
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %419 = load i32, ptr %418, align 4, !tbaa !19
  %420 = shl i32 %419, 1
  %421 = zext i32 %420 to i64
  %422 = tail call noalias ptr @malloc(i64 noundef %421) #16
  store ptr %422, ptr %409, align 8, !tbaa !20
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

425:                                              ; preds = %417
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %427 = load i32, ptr %426, align 8, !tbaa !21
  %428 = icmp eq i32 %427, 0
  %429 = load i32, ptr %418, align 4, !tbaa !19
  br i1 %428, label %431, label %430

430:                                              ; preds = %425
  store i32 %429, ptr %19, align 8, !tbaa !18
  br label %461

431:                                              ; preds = %425
  %432 = zext i32 %429 to i64
  %433 = tail call noalias ptr @malloc(i64 noundef %432) #16
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %433, ptr %434, align 8, !tbaa !22
  %435 = icmp eq ptr %433, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %431
  tail call void @free(ptr noundef nonnull %422) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

437:                                              ; preds = %431
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %438, i8 0, i64 24, i1 false)
  %440 = load i32, ptr %439, align 8, !tbaa !23
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %442 = load i32, ptr %441, align 4, !tbaa !24
  %443 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %440, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %442, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %437
  %446 = load ptr, ptr %434, align 8, !tbaa !22
  tail call void @free(ptr noundef %446) #15
  %447 = load ptr, ptr %409, align 8, !tbaa !20
  tail call void @free(ptr noundef %447) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

448:                                              ; preds = %437
  store ptr null, ptr %6, align 8, !tbaa !25
  %449 = load i32, ptr %426, align 8, !tbaa !21
  %450 = load i32, ptr %418, align 4, !tbaa !19
  store i32 %450, ptr %19, align 8, !tbaa !18
  %451 = icmp eq i32 %449, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %448
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %450, ptr %453, align 8, !tbaa !26
  %454 = load ptr, ptr %434, align 8, !tbaa !22
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %454, ptr %455, align 8, !tbaa !27
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %454, ptr %456, align 8, !tbaa !28
  br label %497

457:                                              ; preds = %415
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %459 = load i32, ptr %458, align 8, !tbaa !21
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %497, label %461

461:                                              ; preds = %457, %448, %430
  %462 = phi ptr [ %402, %457 ], [ null, %448 ], [ %402, %430 ]
  %463 = load i32, ptr %405, align 8, !tbaa !30
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %568, label %465

465:                                              ; preds = %461
  %466 = tail call ptr @__errno_location() #17
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %469

469:                                              ; preds = %491, %465
  %470 = phi ptr [ %462, %465 ], [ %495, %491 ]
  store i32 0, ptr %466, align 4, !tbaa !4
  store i32 0, ptr %467, align 4, !tbaa !17
  %471 = load i32, ptr %405, align 8, !tbaa !30
  %472 = tail call i32 @llvm.umin.i32(i32 %471, i32 1073741824)
  %473 = zext nneg i32 %472 to i64
  %474 = load i32, ptr %468, align 4, !tbaa !31
  %475 = tail call i64 @write(i32 noundef %474, ptr noundef %470, i64 noundef %473) #15
  %476 = trunc i64 %475 to i32
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %469
  %479 = load i32, ptr %466, align 4, !tbaa !4
  %480 = icmp eq i32 %479, 11
  br i1 %480, label %481, label %483

481:                                              ; preds = %478
  store i32 1, ptr %467, align 4, !tbaa !17
  %482 = load i32, ptr %466, align 4, !tbaa !4
  br label %483

483:                                              ; preds = %481, %478
  %484 = phi i32 [ %479, %478 ], [ %482, %481 ]
  %485 = tail call ptr @strerror(i32 noundef %484) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %485) #15
  br label %.loopexit

486:                                              ; preds = %469
  %487 = load i32, ptr %405, align 8, !tbaa !30
  %488 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %476), !nosanitize !32
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !32
  br i1 %489, label %490, label %491, !prof !33, !nosanitize !32

490:                                              ; preds = %486
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

491:                                              ; preds = %486
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !32
  store i32 %492, ptr %405, align 8, !tbaa !30
  %493 = load ptr, ptr %6, align 8, !tbaa !25
  %494 = and i64 %475, 2147483647
  %495 = getelementptr inbounds nuw i8, ptr %493, i64 %494
  store ptr %495, ptr %6, align 8, !tbaa !25
  %496 = icmp eq i32 %492, 0
  br i1 %496, label %.loopexit, label %469, !llvm.loop !34

497:                                              ; preds = %457, %452
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %499 = load i32, ptr %498, align 8, !tbaa !36
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %506, label %501

501:                                              ; preds = %497
  %502 = load i32, ptr %405, align 8, !tbaa !30
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %568, label %504

504:                                              ; preds = %501
  %505 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %498, align 8, !tbaa !36
  br label %506

506:                                              ; preds = %504, %497
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %513 = load i32, ptr %507, align 8, !tbaa !26
  br label %514

514:                                              ; preds = %564, %506
  %515 = phi i32 [ %513, %506 ], [ %561, %564 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %555

517:                                              ; preds = %514
  %518 = load ptr, ptr %508, align 8, !tbaa !27
  %519 = load ptr, ptr %509, align 8, !tbaa !28
  %520 = icmp ugt ptr %518, %519
  br i1 %520, label %521, label %552

521:                                              ; preds = %517
  %522 = tail call ptr @__errno_location() #17
  br label %523

523:                                              ; preds = %543, %521
  %524 = phi ptr [ %519, %521 ], [ %546, %543 ]
  %525 = phi ptr [ %518, %521 ], [ %547, %543 ]
  store i32 0, ptr %522, align 4, !tbaa !4
  store i32 0, ptr %510, align 4, !tbaa !17
  %526 = ptrtoint ptr %525 to i64
  %527 = ptrtoint ptr %524 to i64
  %528 = sub i64 %526, %527
  %529 = tail call i64 @llvm.smin.i64(i64 %528, i64 1073741824)
  %530 = and i64 %529, 4294967295
  %531 = load i32, ptr %511, align 4, !tbaa !31
  %532 = tail call i64 @write(i32 noundef %531, ptr noundef %524, i64 noundef %530) #15
  %533 = and i64 %532, 2147483648
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %543, label %535

535:                                              ; preds = %523
  %536 = load i32, ptr %522, align 4, !tbaa !4
  %537 = icmp eq i32 %536, 11
  br i1 %537, label %538, label %540

538:                                              ; preds = %535
  store i32 1, ptr %510, align 4, !tbaa !17
  %539 = load i32, ptr %522, align 4, !tbaa !4
  br label %540

540:                                              ; preds = %538, %535
  %541 = phi i32 [ %536, %535 ], [ %539, %538 ]
  %542 = tail call ptr @strerror(i32 noundef %541) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %542) #15
  br label %.loopexit

543:                                              ; preds = %523
  %544 = load ptr, ptr %509, align 8, !tbaa !28
  %545 = and i64 %532, 2147483647
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store ptr %546, ptr %509, align 8, !tbaa !28
  %547 = load ptr, ptr %508, align 8, !tbaa !27
  %548 = icmp ugt ptr %547, %546
  br i1 %548, label %523, label %549, !llvm.loop !37

549:                                              ; preds = %543
  %550 = load i32, ptr %507, align 8, !tbaa !26
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %549, %517
  %553 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %553, ptr %507, align 8, !tbaa !26
  %554 = load ptr, ptr %512, align 8, !tbaa !22
  store ptr %554, ptr %508, align 8, !tbaa !27
  store ptr %554, ptr %509, align 8, !tbaa !28
  br label %555

555:                                              ; preds = %552, %549, %514
  %556 = phi i32 [ %550, %549 ], [ %553, %552 ], [ %515, %514 ]
  %557 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %558 = icmp eq i32 %557, -2
  br i1 %558, label %559, label %560

559:                                              ; preds = %555
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

560:                                              ; preds = %555
  %561 = load i32, ptr %507, align 8, !tbaa !26
  %562 = icmp ult i32 %556, %561
  br i1 %562, label %563, label %564, !prof !33, !nosanitize !32

563:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

564:                                              ; preds = %560
  %565 = icmp eq i32 %556, %561
  br i1 %565, label %.loopexit, label %514, !llvm.loop !38

.loopexit:                                        ; preds = %491, %564, %559, %540, %483, %445, %436, %424
  %566 = load i32, ptr %405, align 8, !tbaa !30
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %570

568:                                              ; preds = %.loopexit, %501, %461
  %569 = load ptr, ptr %409, align 8, !tbaa !20
  store ptr %569, ptr %6, align 8, !tbaa !25
  br label %578

570:                                              ; preds = %.loopexit
  %571 = load ptr, ptr %409, align 8, !tbaa !20
  %572 = load ptr, ptr %6, align 8, !tbaa !25
  %573 = zext i32 %566 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %571, ptr align 1 %572, i64 %573, i1 false)
  %574 = load ptr, ptr %409, align 8, !tbaa !20
  store ptr %574, ptr %6, align 8, !tbaa !25
  %575 = load i32, ptr %405, align 8, !tbaa !30
  %576 = load i32, ptr %19, align 8, !tbaa !18
  %577 = icmp ule i32 %575, %576
  br label %578

578:                                              ; preds = %570, %568, %404, %.loopexit48
  %579 = phi i1 [ %577, %570 ], [ true, %568 ], [ true, %404 ], [ true, %.loopexit48 ]
  %580 = load i32, ptr %11, align 8, !tbaa !16
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %594, label %582

582:                                              ; preds = %578
  br i1 %579, label %588, label %583

583:                                              ; preds = %582
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %585 = load i32, ptr %584, align 4, !tbaa !17
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587

587:                                              ; preds = %583
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %588

588:                                              ; preds = %587, %583, %582
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %590 = load i32, ptr %589, align 4, !tbaa !17
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %588
  %593 = load i32, ptr %11, align 8, !tbaa !16
  br label %650

594:                                              ; preds = %588, %578
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %596 = load i32, ptr %595, align 8, !tbaa !30
  %597 = icmp eq i32 %596, 0
  %598 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %599 = load ptr, ptr %598, align 8, !tbaa !20
  br i1 %597, label %602, label %600

600:                                              ; preds = %594
  %601 = load ptr, ptr %6, align 8, !tbaa !25
  br label %603

602:                                              ; preds = %594
  store ptr %599, ptr %6, align 8, !tbaa !25
  br label %603

603:                                              ; preds = %602, %600
  %604 = phi ptr [ %601, %600 ], [ %599, %602 ]
  %605 = ptrtoint ptr %604 to i64
  %606 = ptrtoint ptr %599 to i64
  %607 = sub i64 %605, %606
  %608 = getelementptr inbounds i8, ptr %599, i64 %607
  %609 = zext i32 %596 to i64
  %610 = getelementptr inbounds nuw i8, ptr %608, i64 %609
  %611 = load i32, ptr %19, align 8, !tbaa !18
  %612 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %611, i32 1), !nosanitize !32
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !32
  br i1 %613, label %614, label %615, !prof !33, !nosanitize !32

614:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

615:                                              ; preds = %603
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !32
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds nuw i8, ptr %610, i64 %617
  store i8 0, ptr %618, align 1, !tbaa !44
  %619 = load i32, ptr %19, align 8, !tbaa !18
  %620 = zext i32 %619 to i64
  %621 = tail call i32 @vsnprintf(ptr noundef %610, i64 noundef %620, ptr noundef %1, ptr noundef %2) #15
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %650, label %623

623:                                              ; preds = %615
  %624 = load i32, ptr %19, align 8, !tbaa !18
  %625 = icmp ult i32 %621, %624
  br i1 %625, label %626, label %650

626:                                              ; preds = %623
  %627 = add i32 %624, -1
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw i8, ptr %610, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !44
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %632, label %650

632:                                              ; preds = %626
  %633 = load i32, ptr %595, align 8, !tbaa !30
  %634 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %633, i32 %621), !nosanitize !32
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !32
  br i1 %635, label %636, label %637, !prof !33, !nosanitize !32

636:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

637:                                              ; preds = %632
  %638 = extractvalue { i32, i1 } %634, 0, !nosanitize !32
  store i32 %638, ptr %595, align 8, !tbaa !30
  %639 = sext i32 %621 to i64
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %641 = load i64, ptr %640, align 8, !tbaa !39
  %642 = add nsw i64 %641, %639
  store i64 %642, ptr %640, align 8, !tbaa !39
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %643 = load i32, ptr %11, align 8, !tbaa !16
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %637
  %646 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %647 = load i32, ptr %646, align 4, !tbaa !17
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %650, label %649

649:                                              ; preds = %645, %637
  br label %650

650:                                              ; preds = %649, %645, %626, %623, %615, %592, %.loopexit47, %63, %14, %5, %3
  %651 = phi i32 [ %593, %592 ], [ -2, %3 ], [ %64, %63 ], [ %401, %.loopexit47 ], [ -2, %5 ], [ %621, %649 ], [ 0, %615 ], [ -2, %14 ], [ 0, %626 ], [ 0, %623 ], [ %643, %645 ]
  ret i32 %651
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %176, label %5

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
  br i1 %16, label %17, label %176

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
  br label %99

59:                                               ; preds = %17
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %61 = load i32, ptr %60, align 8, !tbaa !21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %59, %50, %32
  %64 = phi ptr [ %3, %59 ], [ null, %50 ], [ %3, %32 ]
  %65 = load i32, ptr %6, align 8, !tbaa !30
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %174, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @__errno_location() #17
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %71

71:                                               ; preds = %93, %67
  %72 = phi ptr [ %64, %67 ], [ %97, %93 ]
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
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 %78), !nosanitize !32
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !32
  br i1 %91, label %92, label %93, !prof !33, !nosanitize !32

92:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

93:                                               ; preds = %88
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !32
  store i32 %94, ptr %6, align 8, !tbaa !30
  %95 = load ptr, ptr %2, align 8, !tbaa !25
  %96 = and i64 %77, 2147483647
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %96
  store ptr %97, ptr %2, align 8, !tbaa !25
  %98 = icmp eq i32 %94, 0
  br i1 %98, label %.loopexit, label %71, !llvm.loop !34

99:                                               ; preds = %59, %54
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %101 = load i32, ptr %100, align 8, !tbaa !36
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %6, align 8, !tbaa !30
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %174, label %106

106:                                              ; preds = %103
  %107 = tail call i32 @deflateReset(ptr noundef nonnull %2) #15
  store i32 0, ptr %100, align 8, !tbaa !36
  br label %108

108:                                              ; preds = %106, %99
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %115 = load i32, ptr %109, align 8, !tbaa !26
  br label %116

116:                                              ; preds = %166, %108
  %117 = phi i32 [ %115, %108 ], [ %163, %166 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  %120 = load ptr, ptr %110, align 8, !tbaa !27
  %121 = load ptr, ptr %111, align 8, !tbaa !28
  %122 = icmp ugt ptr %120, %121
  br i1 %122, label %123, label %154

123:                                              ; preds = %119
  %124 = tail call ptr @__errno_location() #17
  br label %125

125:                                              ; preds = %145, %123
  %126 = phi ptr [ %121, %123 ], [ %148, %145 ]
  %127 = phi ptr [ %120, %123 ], [ %149, %145 ]
  store i32 0, ptr %124, align 4, !tbaa !4
  store i32 0, ptr %112, align 4, !tbaa !17
  %128 = ptrtoint ptr %127 to i64
  %129 = ptrtoint ptr %126 to i64
  %130 = sub i64 %128, %129
  %131 = tail call i64 @llvm.smin.i64(i64 %130, i64 1073741824)
  %132 = and i64 %131, 4294967295
  %133 = load i32, ptr %113, align 4, !tbaa !31
  %134 = tail call i64 @write(i32 noundef %133, ptr noundef %126, i64 noundef %132) #15
  %135 = and i64 %134, 2147483648
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %125
  %138 = load i32, ptr %124, align 4, !tbaa !4
  %139 = icmp eq i32 %138, 11
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  store i32 1, ptr %112, align 4, !tbaa !17
  %141 = load i32, ptr %124, align 4, !tbaa !4
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i32 [ %138, %137 ], [ %141, %140 ]
  %144 = tail call ptr @strerror(i32 noundef %143) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %144) #15
  br label %.loopexit

145:                                              ; preds = %125
  %146 = load ptr, ptr %111, align 8, !tbaa !28
  %147 = and i64 %134, 2147483647
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 %147
  store ptr %148, ptr %111, align 8, !tbaa !28
  %149 = load ptr, ptr %110, align 8, !tbaa !27
  %150 = icmp ugt ptr %149, %148
  br i1 %150, label %125, label %151, !llvm.loop !37

151:                                              ; preds = %145
  %152 = load i32, ptr %109, align 8, !tbaa !26
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %119
  %155 = load i32, ptr %12, align 8, !tbaa !18
  store i32 %155, ptr %109, align 8, !tbaa !26
  %156 = load ptr, ptr %114, align 8, !tbaa !22
  store ptr %156, ptr %110, align 8, !tbaa !27
  store ptr %156, ptr %111, align 8, !tbaa !28
  br label %157

157:                                              ; preds = %154, %151, %116
  %158 = phi i32 [ %152, %151 ], [ %155, %154 ], [ %117, %116 ]
  %159 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #15
  %160 = icmp eq i32 %159, -2
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

162:                                              ; preds = %157
  %163 = load i32, ptr %109, align 8, !tbaa !26
  %164 = icmp ult i32 %158, %163
  br i1 %164, label %165, label %166, !prof !33, !nosanitize !32

165:                                              ; preds = %162
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

166:                                              ; preds = %162
  %167 = icmp eq i32 %158, %163
  br i1 %167, label %.loopexit, label %116, !llvm.loop !38

.loopexit:                                        ; preds = %93, %166, %161, %142, %85, %47, %38, %26
  %168 = load i32, ptr %6, align 8, !tbaa !30
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %.loopexit
  %171 = load ptr, ptr %10, align 8, !tbaa !20
  %172 = load ptr, ptr %2, align 8, !tbaa !25
  %173 = zext i32 %168 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %171, ptr align 1 %172, i64 %173, i1 false)
  br label %174

174:                                              ; preds = %170, %.loopexit, %103, %63
  %175 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %175, ptr %2, align 8, !tbaa !25
  br label %176

176:                                              ; preds = %174, %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %650, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %650

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %650, label %18

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
  br label %650

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %.loopexit48, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit49, label %74

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
  br label %.loopexit47

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
  br label %.loopexit47

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
  br label %.loopexit47

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
  br label %157

117:                                              ; preds = %74
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %119 = load i32, ptr %118, align 8, !tbaa !21
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %157, label %121

121:                                              ; preds = %117, %108, %90
  %122 = load i32, ptr %71, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit49, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @__errno_location() #17
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %128 = load ptr, ptr %6, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %151, %124
  %130 = phi ptr [ %128, %124 ], [ %155, %151 ]
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
  br label %.loopexit47

146:                                              ; preds = %129
  %147 = load i32, ptr %71, align 8, !tbaa !30
  %148 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %136), !nosanitize !32
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !32
  br i1 %149, label %150, label %151, !prof !33, !nosanitize !32

150:                                              ; preds = %146
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

151:                                              ; preds = %146
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !32
  store i32 %152, ptr %71, align 8, !tbaa !30
  %153 = load ptr, ptr %6, align 8, !tbaa !25
  %154 = and i64 %135, 2147483647
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  store ptr %155, ptr %6, align 8, !tbaa !25
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %.loopexit49, label %129, !llvm.loop !34

157:                                              ; preds = %117, %112
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !36
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %71, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %.loopexit49, label %164

164:                                              ; preds = %161
  %165 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %158, align 8, !tbaa !36
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

174:                                              ; preds = %224, %166
  %175 = phi i32 [ %173, %166 ], [ %221, %224 ]
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
  %189 = call i64 @llvm.smin.i64(i64 %188, i64 1073741824)
  %190 = and i64 %189, 4294967295
  %191 = load i32, ptr %171, align 4, !tbaa !31
  %192 = call i64 @write(i32 noundef %191, ptr noundef %184, i64 noundef %190) #15
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
  %202 = call ptr @strerror(i32 noundef %201) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %202) #15
  br label %.loopexit47

203:                                              ; preds = %183
  %204 = load ptr, ptr %169, align 8, !tbaa !28
  %205 = and i64 %192, 2147483647
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  store ptr %206, ptr %169, align 8, !tbaa !28
  %207 = load ptr, ptr %168, align 8, !tbaa !27
  %208 = icmp ugt ptr %207, %206
  br i1 %208, label %183, label %209, !llvm.loop !37

209:                                              ; preds = %203
  %210 = load i32, ptr %167, align 8, !tbaa !26
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %177
  %213 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %213, ptr %167, align 8, !tbaa !26
  %214 = load ptr, ptr %172, align 8, !tbaa !22
  store ptr %214, ptr %168, align 8, !tbaa !27
  store ptr %214, ptr %169, align 8, !tbaa !28
  br label %215

215:                                              ; preds = %212, %209, %174
  %216 = phi i32 [ %210, %209 ], [ %213, %212 ], [ %175, %174 ]
  %217 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %218 = icmp eq i32 %217, -2
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit47

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp ult i32 %216, %221
  br i1 %222, label %223, label %224, !prof !33, !nosanitize !32

223:                                              ; preds = %220
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

224:                                              ; preds = %220
  %225 = icmp eq i32 %216, %221
  br i1 %225, label %.loopexit49, label %174, !llvm.loop !38

.loopexit49:                                      ; preds = %151, %224, %161, %121, %70
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %240 = load i64, ptr %67, align 8, !tbaa !29
  br label %241

241:                                              ; preds = %399, %.loopexit49
  %242 = phi i64 [ %240, %.loopexit49 ], [ %398, %399 ]
  %243 = phi i1 [ false, %.loopexit49 ], [ true, %399 ]
  %244 = load i32, ptr %19, align 8, !tbaa !18
  %245 = zext i32 %244 to i64
  %246 = call i64 @llvm.smin.i64(i64 %242, i64 %245)
  %247 = trunc i64 %246 to i32
  %248 = load ptr, ptr %226, align 8, !tbaa !20
  br i1 %243, label %253, label %249

249:                                              ; preds = %241
  %250 = and i64 %246, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %248, i8 0, i64 %250, i1 false)
  %251 = load ptr, ptr %226, align 8, !tbaa !20
  %252 = load i32, ptr %19, align 8, !tbaa !18
  br label %253

253:                                              ; preds = %249, %241
  %254 = phi i32 [ %252, %249 ], [ %244, %241 ]
  %255 = phi ptr [ %251, %249 ], [ %248, %241 ]
  store i32 %247, ptr %71, align 8, !tbaa !30
  store ptr %255, ptr %6, align 8, !tbaa !25
  %256 = icmp eq i32 %254, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %253
  %258 = load i32, ptr %228, align 4, !tbaa !19
  %259 = shl i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = call noalias ptr @malloc(i64 noundef %260) #16
  store ptr %261, ptr %226, align 8, !tbaa !20
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

264:                                              ; preds = %257
  %265 = load i32, ptr %227, align 8, !tbaa !21
  %266 = icmp eq i32 %265, 0
  %267 = load i32, ptr %228, align 4, !tbaa !19
  br i1 %266, label %269, label %268

268:                                              ; preds = %264
  store i32 %267, ptr %19, align 8, !tbaa !18
  br label %291

269:                                              ; preds = %264
  %270 = zext i32 %267 to i64
  %271 = call noalias ptr @malloc(i64 noundef %270) #16
  store ptr %271, ptr %229, align 8, !tbaa !22
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  call void @free(ptr noundef nonnull %261) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

274:                                              ; preds = %269
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %230, i8 0, i64 24, i1 false)
  %275 = load i32, ptr %231, align 8, !tbaa !23
  %276 = load i32, ptr %232, align 4, !tbaa !24
  %277 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %275, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %276, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = load ptr, ptr %229, align 8, !tbaa !22
  call void @free(ptr noundef %280) #15
  %281 = load ptr, ptr %226, align 8, !tbaa !20
  call void @free(ptr noundef %281) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit45

282:                                              ; preds = %274
  store ptr null, ptr %6, align 8, !tbaa !25
  %283 = load i32, ptr %227, align 8, !tbaa !21
  %284 = load i32, ptr %228, align 4, !tbaa !19
  store i32 %284, ptr %19, align 8, !tbaa !18
  %285 = icmp eq i32 %283, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  store i32 %284, ptr %235, align 8, !tbaa !26
  %287 = load ptr, ptr %229, align 8, !tbaa !22
  store ptr %287, ptr %236, align 8, !tbaa !27
  store ptr %287, ptr %237, align 8, !tbaa !28
  br label %325

288:                                              ; preds = %253
  %289 = load i32, ptr %227, align 8, !tbaa !21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %325, label %291

291:                                              ; preds = %288, %282, %268
  %292 = phi ptr [ %255, %288 ], [ null, %282 ], [ %255, %268 ]
  %293 = load i32, ptr %71, align 8, !tbaa !30
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %.loopexit45, label %295

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #17
  br label %297

297:                                              ; preds = %319, %295
  %298 = phi ptr [ %292, %295 ], [ %323, %319 ]
  store i32 0, ptr %296, align 4, !tbaa !4
  store i32 0, ptr %233, align 4, !tbaa !17
  %299 = load i32, ptr %71, align 8, !tbaa !30
  %300 = call i32 @llvm.umin.i32(i32 %299, i32 1073741824)
  %301 = zext nneg i32 %300 to i64
  %302 = load i32, ptr %234, align 4, !tbaa !31
  %303 = call i64 @write(i32 noundef %302, ptr noundef %298, i64 noundef %301) #15
  %304 = trunc i64 %303 to i32
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load i32, ptr %296, align 4, !tbaa !4
  %308 = icmp eq i32 %307, 11
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  store i32 1, ptr %233, align 4, !tbaa !17
  %310 = load i32, ptr %296, align 4, !tbaa !4
  br label %311

311:                                              ; preds = %309, %306
  %312 = phi i32 [ %307, %306 ], [ %310, %309 ]
  %313 = call ptr @strerror(i32 noundef %312) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %313) #15
  br label %.loopexit45

314:                                              ; preds = %297
  %315 = load i32, ptr %71, align 8, !tbaa !30
  %316 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 %304), !nosanitize !32
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !32
  br i1 %317, label %318, label %319, !prof !33, !nosanitize !32

318:                                              ; preds = %314
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !32
  store i32 %320, ptr %71, align 8, !tbaa !30
  %321 = load ptr, ptr %6, align 8, !tbaa !25
  %322 = and i64 %303, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %6, align 8, !tbaa !25
  %324 = icmp eq i32 %320, 0
  br i1 %324, label %.loopexit45, label %297, !llvm.loop !34

325:                                              ; preds = %288, %286
  %326 = load i32, ptr %238, align 8, !tbaa !36
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %71, align 8, !tbaa !30
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %.loopexit45, label %331

331:                                              ; preds = %328
  %332 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %238, align 8, !tbaa !36
  br label %333

333:                                              ; preds = %331, %325
  %334 = load i32, ptr %235, align 8, !tbaa !26
  br label %335

335:                                              ; preds = %385, %333
  %336 = phi i32 [ %334, %333 ], [ %382, %385 ]
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load ptr, ptr %236, align 8, !tbaa !27
  %340 = load ptr, ptr %237, align 8, !tbaa !28
  %341 = icmp ugt ptr %339, %340
  br i1 %341, label %342, label %373

342:                                              ; preds = %338
  %343 = tail call ptr @__errno_location() #17
  br label %344

344:                                              ; preds = %364, %342
  %345 = phi ptr [ %340, %342 ], [ %367, %364 ]
  %346 = phi ptr [ %339, %342 ], [ %368, %364 ]
  store i32 0, ptr %343, align 4, !tbaa !4
  store i32 0, ptr %233, align 4, !tbaa !17
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %345 to i64
  %349 = sub i64 %347, %348
  %350 = call i64 @llvm.smin.i64(i64 %349, i64 1073741824)
  %351 = and i64 %350, 4294967295
  %352 = load i32, ptr %234, align 4, !tbaa !31
  %353 = call i64 @write(i32 noundef %352, ptr noundef %345, i64 noundef %351) #15
  %354 = and i64 %353, 2147483648
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %344
  %357 = load i32, ptr %343, align 4, !tbaa !4
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  store i32 1, ptr %233, align 4, !tbaa !17
  %360 = load i32, ptr %343, align 4, !tbaa !4
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %357, %356 ], [ %360, %359 ]
  %363 = call ptr @strerror(i32 noundef %362) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %363) #15
  br label %.loopexit45

364:                                              ; preds = %344
  %365 = load ptr, ptr %237, align 8, !tbaa !28
  %366 = and i64 %353, 2147483647
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  store ptr %367, ptr %237, align 8, !tbaa !28
  %368 = load ptr, ptr %236, align 8, !tbaa !27
  %369 = icmp ugt ptr %368, %367
  br i1 %369, label %344, label %370, !llvm.loop !37

370:                                              ; preds = %364
  %371 = load i32, ptr %235, align 8, !tbaa !26
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370, %338
  %374 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %374, ptr %235, align 8, !tbaa !26
  %375 = load ptr, ptr %229, align 8, !tbaa !22
  store ptr %375, ptr %236, align 8, !tbaa !27
  store ptr %375, ptr %237, align 8, !tbaa !28
  br label %376

376:                                              ; preds = %373, %370, %335
  %377 = phi i32 [ %371, %370 ], [ %374, %373 ], [ %336, %335 ]
  %378 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %379 = icmp eq i32 %378, -2
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit45

381:                                              ; preds = %376
  %382 = load i32, ptr %235, align 8, !tbaa !26
  %383 = icmp ult i32 %377, %382
  br i1 %383, label %384, label %385, !prof !33, !nosanitize !32

384:                                              ; preds = %381
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

385:                                              ; preds = %381
  %386 = icmp eq i32 %377, %382
  br i1 %386, label %.loopexit45, label %335, !llvm.loop !38

.loopexit45:                                      ; preds = %319, %385, %380, %361, %328, %311, %291, %279, %273, %263
  %387 = phi i1 [ false, %328 ], [ true, %311 ], [ false, %291 ], [ true, %273 ], [ true, %361 ], [ true, %380 ], [ false, %385 ], [ true, %263 ], [ true, %279 ], [ false, %319 ]
  %388 = load i32, ptr %71, align 8, !tbaa !30
  %389 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %247, i32 %388), !nosanitize !32
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !32
  br i1 %390, label %391, label %392, !prof !33, !nosanitize !32

391:                                              ; preds = %.loopexit45
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

392:                                              ; preds = %.loopexit45
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !32
  %394 = zext i32 %393 to i64
  %395 = load i64, ptr %239, align 8, !tbaa !39
  %396 = add nsw i64 %395, %394
  store i64 %396, ptr %239, align 8, !tbaa !39
  %397 = load i64, ptr %67, align 8, !tbaa !29
  %398 = sub nsw i64 %397, %394
  store i64 %398, ptr %67, align 8, !tbaa !29
  br i1 %387, label %.loopexit47, label %399

399:                                              ; preds = %392
  %400 = icmp eq i64 %397, %394
  br i1 %400, label %.loopexit48, label %241, !llvm.loop !40

.loopexit47:                                      ; preds = %392, %219, %200, %143, %105, %96, %84
  %401 = load i32, ptr %11, align 8, !tbaa !16
  br label %650

.loopexit48:                                      ; preds = %399, %65
  %402 = load ptr, ptr %6, align 8, !tbaa !25
  %403 = icmp eq ptr %402, null
  br i1 %403, label %578, label %404

404:                                              ; preds = %.loopexit48
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %406 = load i32, ptr %405, align 8, !tbaa !30
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %407
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %410 = load ptr, ptr %409, align 8, !tbaa !20
  %411 = load i32, ptr %19, align 8, !tbaa !18
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds nuw i8, ptr %410, i64 %412
  %414 = icmp ugt ptr %408, %413
  br i1 %414, label %415, label %578

415:                                              ; preds = %404
  %416 = icmp eq i32 %411, 0
  br i1 %416, label %417, label %457

417:                                              ; preds = %415
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %419 = load i32, ptr %418, align 4, !tbaa !19
  %420 = shl i32 %419, 1
  %421 = zext i32 %420 to i64
  %422 = call noalias ptr @malloc(i64 noundef %421) #16
  store ptr %422, ptr %409, align 8, !tbaa !20
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

425:                                              ; preds = %417
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %427 = load i32, ptr %426, align 8, !tbaa !21
  %428 = icmp eq i32 %427, 0
  %429 = load i32, ptr %418, align 4, !tbaa !19
  br i1 %428, label %431, label %430

430:                                              ; preds = %425
  store i32 %429, ptr %19, align 8, !tbaa !18
  br label %461

431:                                              ; preds = %425
  %432 = zext i32 %429 to i64
  %433 = call noalias ptr @malloc(i64 noundef %432) #16
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %433, ptr %434, align 8, !tbaa !22
  %435 = icmp eq ptr %433, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %431
  call void @free(ptr noundef nonnull %422) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

437:                                              ; preds = %431
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %438, i8 0, i64 24, i1 false)
  %440 = load i32, ptr %439, align 8, !tbaa !23
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %442 = load i32, ptr %441, align 4, !tbaa !24
  %443 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %440, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %442, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %437
  %446 = load ptr, ptr %434, align 8, !tbaa !22
  call void @free(ptr noundef %446) #15
  %447 = load ptr, ptr %409, align 8, !tbaa !20
  call void @free(ptr noundef %447) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

448:                                              ; preds = %437
  store ptr null, ptr %6, align 8, !tbaa !25
  %449 = load i32, ptr %426, align 8, !tbaa !21
  %450 = load i32, ptr %418, align 4, !tbaa !19
  store i32 %450, ptr %19, align 8, !tbaa !18
  %451 = icmp eq i32 %449, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %448
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %450, ptr %453, align 8, !tbaa !26
  %454 = load ptr, ptr %434, align 8, !tbaa !22
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %454, ptr %455, align 8, !tbaa !27
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %454, ptr %456, align 8, !tbaa !28
  br label %497

457:                                              ; preds = %415
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %459 = load i32, ptr %458, align 8, !tbaa !21
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %497, label %461

461:                                              ; preds = %457, %448, %430
  %462 = phi ptr [ %402, %457 ], [ null, %448 ], [ %402, %430 ]
  %463 = load i32, ptr %405, align 8, !tbaa !30
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %568, label %465

465:                                              ; preds = %461
  %466 = tail call ptr @__errno_location() #17
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %469

469:                                              ; preds = %491, %465
  %470 = phi ptr [ %462, %465 ], [ %495, %491 ]
  store i32 0, ptr %466, align 4, !tbaa !4
  store i32 0, ptr %467, align 4, !tbaa !17
  %471 = load i32, ptr %405, align 8, !tbaa !30
  %472 = call i32 @llvm.umin.i32(i32 %471, i32 1073741824)
  %473 = zext nneg i32 %472 to i64
  %474 = load i32, ptr %468, align 4, !tbaa !31
  %475 = call i64 @write(i32 noundef %474, ptr noundef %470, i64 noundef %473) #15
  %476 = trunc i64 %475 to i32
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %469
  %479 = load i32, ptr %466, align 4, !tbaa !4
  %480 = icmp eq i32 %479, 11
  br i1 %480, label %481, label %483

481:                                              ; preds = %478
  store i32 1, ptr %467, align 4, !tbaa !17
  %482 = load i32, ptr %466, align 4, !tbaa !4
  br label %483

483:                                              ; preds = %481, %478
  %484 = phi i32 [ %479, %478 ], [ %482, %481 ]
  %485 = call ptr @strerror(i32 noundef %484) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %485) #15
  br label %.loopexit

486:                                              ; preds = %469
  %487 = load i32, ptr %405, align 8, !tbaa !30
  %488 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %476), !nosanitize !32
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !32
  br i1 %489, label %490, label %491, !prof !33, !nosanitize !32

490:                                              ; preds = %486
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

491:                                              ; preds = %486
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !32
  store i32 %492, ptr %405, align 8, !tbaa !30
  %493 = load ptr, ptr %6, align 8, !tbaa !25
  %494 = and i64 %475, 2147483647
  %495 = getelementptr inbounds nuw i8, ptr %493, i64 %494
  store ptr %495, ptr %6, align 8, !tbaa !25
  %496 = icmp eq i32 %492, 0
  br i1 %496, label %.loopexit, label %469, !llvm.loop !34

497:                                              ; preds = %457, %452
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %499 = load i32, ptr %498, align 8, !tbaa !36
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %506, label %501

501:                                              ; preds = %497
  %502 = load i32, ptr %405, align 8, !tbaa !30
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %568, label %504

504:                                              ; preds = %501
  %505 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %498, align 8, !tbaa !36
  br label %506

506:                                              ; preds = %504, %497
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %513 = load i32, ptr %507, align 8, !tbaa !26
  br label %514

514:                                              ; preds = %564, %506
  %515 = phi i32 [ %513, %506 ], [ %561, %564 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %555

517:                                              ; preds = %514
  %518 = load ptr, ptr %508, align 8, !tbaa !27
  %519 = load ptr, ptr %509, align 8, !tbaa !28
  %520 = icmp ugt ptr %518, %519
  br i1 %520, label %521, label %552

521:                                              ; preds = %517
  %522 = tail call ptr @__errno_location() #17
  br label %523

523:                                              ; preds = %543, %521
  %524 = phi ptr [ %519, %521 ], [ %546, %543 ]
  %525 = phi ptr [ %518, %521 ], [ %547, %543 ]
  store i32 0, ptr %522, align 4, !tbaa !4
  store i32 0, ptr %510, align 4, !tbaa !17
  %526 = ptrtoint ptr %525 to i64
  %527 = ptrtoint ptr %524 to i64
  %528 = sub i64 %526, %527
  %529 = call i64 @llvm.smin.i64(i64 %528, i64 1073741824)
  %530 = and i64 %529, 4294967295
  %531 = load i32, ptr %511, align 4, !tbaa !31
  %532 = call i64 @write(i32 noundef %531, ptr noundef %524, i64 noundef %530) #15
  %533 = and i64 %532, 2147483648
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %543, label %535

535:                                              ; preds = %523
  %536 = load i32, ptr %522, align 4, !tbaa !4
  %537 = icmp eq i32 %536, 11
  br i1 %537, label %538, label %540

538:                                              ; preds = %535
  store i32 1, ptr %510, align 4, !tbaa !17
  %539 = load i32, ptr %522, align 4, !tbaa !4
  br label %540

540:                                              ; preds = %538, %535
  %541 = phi i32 [ %536, %535 ], [ %539, %538 ]
  %542 = call ptr @strerror(i32 noundef %541) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %542) #15
  br label %.loopexit

543:                                              ; preds = %523
  %544 = load ptr, ptr %509, align 8, !tbaa !28
  %545 = and i64 %532, 2147483647
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store ptr %546, ptr %509, align 8, !tbaa !28
  %547 = load ptr, ptr %508, align 8, !tbaa !27
  %548 = icmp ugt ptr %547, %546
  br i1 %548, label %523, label %549, !llvm.loop !37

549:                                              ; preds = %543
  %550 = load i32, ptr %507, align 8, !tbaa !26
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %549, %517
  %553 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %553, ptr %507, align 8, !tbaa !26
  %554 = load ptr, ptr %512, align 8, !tbaa !22
  store ptr %554, ptr %508, align 8, !tbaa !27
  store ptr %554, ptr %509, align 8, !tbaa !28
  br label %555

555:                                              ; preds = %552, %549, %514
  %556 = phi i32 [ %550, %549 ], [ %553, %552 ], [ %515, %514 ]
  %557 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %558 = icmp eq i32 %557, -2
  br i1 %558, label %559, label %560

559:                                              ; preds = %555
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

560:                                              ; preds = %555
  %561 = load i32, ptr %507, align 8, !tbaa !26
  %562 = icmp ult i32 %556, %561
  br i1 %562, label %563, label %564, !prof !33, !nosanitize !32

563:                                              ; preds = %560
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

564:                                              ; preds = %560
  %565 = icmp eq i32 %556, %561
  br i1 %565, label %.loopexit, label %514, !llvm.loop !38

.loopexit:                                        ; preds = %491, %564, %559, %540, %483, %445, %436, %424
  %566 = load i32, ptr %405, align 8, !tbaa !30
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %570

568:                                              ; preds = %.loopexit, %501, %461
  %569 = load ptr, ptr %409, align 8, !tbaa !20
  store ptr %569, ptr %6, align 8, !tbaa !25
  br label %578

570:                                              ; preds = %.loopexit
  %571 = load ptr, ptr %409, align 8, !tbaa !20
  %572 = load ptr, ptr %6, align 8, !tbaa !25
  %573 = zext i32 %566 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %571, ptr align 1 %572, i64 %573, i1 false)
  %574 = load ptr, ptr %409, align 8, !tbaa !20
  store ptr %574, ptr %6, align 8, !tbaa !25
  %575 = load i32, ptr %405, align 8, !tbaa !30
  %576 = load i32, ptr %19, align 8, !tbaa !18
  %577 = icmp ule i32 %575, %576
  br label %578

578:                                              ; preds = %570, %568, %404, %.loopexit48
  %579 = phi i1 [ %577, %570 ], [ true, %568 ], [ true, %404 ], [ true, %.loopexit48 ]
  %580 = load i32, ptr %11, align 8, !tbaa !16
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %594, label %582

582:                                              ; preds = %578
  br i1 %579, label %588, label %583

583:                                              ; preds = %582
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %585 = load i32, ptr %584, align 4, !tbaa !17
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587

587:                                              ; preds = %583
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %588

588:                                              ; preds = %587, %583, %582
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %590 = load i32, ptr %589, align 4, !tbaa !17
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %588
  %593 = load i32, ptr %11, align 8, !tbaa !16
  br label %650

594:                                              ; preds = %588, %578
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %596 = load i32, ptr %595, align 8, !tbaa !30
  %597 = icmp eq i32 %596, 0
  %598 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %599 = load ptr, ptr %598, align 8, !tbaa !20
  br i1 %597, label %602, label %600

600:                                              ; preds = %594
  %601 = load ptr, ptr %6, align 8, !tbaa !25
  br label %603

602:                                              ; preds = %594
  store ptr %599, ptr %6, align 8, !tbaa !25
  br label %603

603:                                              ; preds = %602, %600
  %604 = phi ptr [ %601, %600 ], [ %599, %602 ]
  %605 = ptrtoint ptr %604 to i64
  %606 = ptrtoint ptr %599 to i64
  %607 = sub i64 %605, %606
  %608 = getelementptr inbounds i8, ptr %599, i64 %607
  %609 = zext i32 %596 to i64
  %610 = getelementptr inbounds nuw i8, ptr %608, i64 %609
  %611 = load i32, ptr %19, align 8, !tbaa !18
  %612 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %611, i32 1), !nosanitize !32
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !32
  br i1 %613, label %614, label %615, !prof !33, !nosanitize !32

614:                                              ; preds = %603
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

615:                                              ; preds = %603
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !32
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds nuw i8, ptr %610, i64 %617
  store i8 0, ptr %618, align 1, !tbaa !44
  %619 = load i32, ptr %19, align 8, !tbaa !18
  %620 = zext i32 %619 to i64
  %621 = call i32 @vsnprintf(ptr noundef %610, i64 noundef %620, ptr noundef readonly %1, ptr noundef nonnull %3) #15
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %650, label %623

623:                                              ; preds = %615
  %624 = load i32, ptr %19, align 8, !tbaa !18
  %625 = icmp ult i32 %621, %624
  br i1 %625, label %626, label %650

626:                                              ; preds = %623
  %627 = add i32 %624, -1
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw i8, ptr %610, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !44
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %632, label %650

632:                                              ; preds = %626
  %633 = load i32, ptr %595, align 8, !tbaa !30
  %634 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %633, i32 %621), !nosanitize !32
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !32
  br i1 %635, label %636, label %637, !prof !33, !nosanitize !32

636:                                              ; preds = %632
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

637:                                              ; preds = %632
  %638 = extractvalue { i32, i1 } %634, 0, !nosanitize !32
  store i32 %638, ptr %595, align 8, !tbaa !30
  %639 = sext i32 %621 to i64
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %641 = load i64, ptr %640, align 8, !tbaa !39
  %642 = add nsw i64 %641, %639
  store i64 %642, ptr %640, align 8, !tbaa !39
  call fastcc void @gz_vacate(ptr noundef %0)
  %643 = load i32, ptr %11, align 8, !tbaa !16
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %637
  %646 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %647 = load i32, ptr %646, align 4, !tbaa !17
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %650, label %649

649:                                              ; preds = %645, %637
  br label %650

650:                                              ; preds = %649, %645, %626, %623, %615, %592, %.loopexit47, %63, %14, %5, %2
  %651 = phi i32 [ %593, %592 ], [ -2, %2 ], [ %64, %63 ], [ %401, %.loopexit47 ], [ -2, %5 ], [ %621, %649 ], [ 0, %615 ], [ -2, %14 ], [ 0, %626 ], [ 0, %623 ], [ %643, %645 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %651
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %527, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %527

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %527, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %527, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.loopexit42, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %.loopexit43, label %27

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
  br label %112

72:                                               ; preds = %27
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %74 = load i32, ptr %73, align 8, !tbaa !21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %72, %63, %45
  %77 = load i32, ptr %24, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit43, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @__errno_location() #17
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %83 = load ptr, ptr %23, align 8, !tbaa !25
  br label %84

84:                                               ; preds = %106, %79
  %85 = phi ptr [ %83, %79 ], [ %110, %106 ]
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
  %103 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %102, i32 %91), !nosanitize !32
  %104 = extractvalue { i32, i1 } %103, 1, !nosanitize !32
  br i1 %104, label %105, label %106, !prof !33, !nosanitize !32

105:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

106:                                              ; preds = %101
  %107 = extractvalue { i32, i1 } %103, 0, !nosanitize !32
  store i32 %107, ptr %24, align 8, !tbaa !30
  %108 = load ptr, ptr %23, align 8, !tbaa !25
  %109 = and i64 %90, 2147483647
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 %109
  store ptr %110, ptr %23, align 8, !tbaa !25
  %111 = icmp eq i32 %107, 0
  br i1 %111, label %.loopexit43, label %84, !llvm.loop !34

112:                                              ; preds = %72, %67
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %114 = load i32, ptr %113, align 8, !tbaa !36
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %24, align 8, !tbaa !30
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %.loopexit43, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %113, align 8, !tbaa !36
  br label %121

121:                                              ; preds = %119, %112
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %128 = load i32, ptr %122, align 8, !tbaa !26
  br label %129

129:                                              ; preds = %179, %121
  %130 = phi i32 [ %128, %121 ], [ %176, %179 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %170

132:                                              ; preds = %129
  %133 = load ptr, ptr %123, align 8, !tbaa !27
  %134 = load ptr, ptr %124, align 8, !tbaa !28
  %135 = icmp ugt ptr %133, %134
  br i1 %135, label %136, label %167

136:                                              ; preds = %132
  %137 = tail call ptr @__errno_location() #17
  br label %138

138:                                              ; preds = %158, %136
  %139 = phi ptr [ %134, %136 ], [ %161, %158 ]
  %140 = phi ptr [ %133, %136 ], [ %162, %158 ]
  store i32 0, ptr %137, align 4, !tbaa !4
  store i32 0, ptr %125, align 4, !tbaa !17
  %141 = ptrtoint ptr %140 to i64
  %142 = ptrtoint ptr %139 to i64
  %143 = sub i64 %141, %142
  %144 = tail call i64 @llvm.smin.i64(i64 %143, i64 1073741824)
  %145 = and i64 %144, 4294967295
  %146 = load i32, ptr %126, align 4, !tbaa !31
  %147 = tail call i64 @write(i32 noundef %146, ptr noundef %139, i64 noundef %145) #15
  %148 = and i64 %147, 2147483648
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %138
  %151 = load i32, ptr %137, align 4, !tbaa !4
  %152 = icmp eq i32 %151, 11
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  store i32 1, ptr %125, align 4, !tbaa !17
  %154 = load i32, ptr %137, align 4, !tbaa !4
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi i32 [ %151, %150 ], [ %154, %153 ]
  %157 = tail call ptr @strerror(i32 noundef %156) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %157) #15
  br label %.loopexit

158:                                              ; preds = %138
  %159 = load ptr, ptr %124, align 8, !tbaa !28
  %160 = and i64 %147, 2147483647
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 %160
  store ptr %161, ptr %124, align 8, !tbaa !28
  %162 = load ptr, ptr %123, align 8, !tbaa !27
  %163 = icmp ugt ptr %162, %161
  br i1 %163, label %138, label %164, !llvm.loop !37

164:                                              ; preds = %158
  %165 = load i32, ptr %122, align 8, !tbaa !26
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %132
  %168 = load i32, ptr %28, align 8, !tbaa !18
  store i32 %168, ptr %122, align 8, !tbaa !26
  %169 = load ptr, ptr %127, align 8, !tbaa !22
  store ptr %169, ptr %123, align 8, !tbaa !27
  store ptr %169, ptr %124, align 8, !tbaa !28
  br label %170

170:                                              ; preds = %167, %164, %129
  %171 = phi i32 [ %165, %164 ], [ %168, %167 ], [ %130, %129 ]
  %172 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %173 = icmp eq i32 %172, -2
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

175:                                              ; preds = %170
  %176 = load i32, ptr %122, align 8, !tbaa !26
  %177 = icmp ult i32 %171, %176
  br i1 %177, label %178, label %179, !prof !33, !nosanitize !32

178:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

179:                                              ; preds = %175
  %180 = icmp eq i32 %171, %176
  br i1 %180, label %.loopexit43, label %129, !llvm.loop !38

.loopexit43:                                      ; preds = %106, %179, %116, %76, %22
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

197:                                              ; preds = %355, %.loopexit43
  %198 = phi i64 [ %196, %.loopexit43 ], [ %354, %355 ]
  %199 = phi i1 [ false, %.loopexit43 ], [ true, %355 ]
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
  br i1 %212, label %213, label %244

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
  br label %.loopexit39

220:                                              ; preds = %213
  %221 = load i32, ptr %183, align 8, !tbaa !21
  %222 = icmp eq i32 %221, 0
  %223 = load i32, ptr %184, align 4, !tbaa !19
  br i1 %222, label %225, label %224

224:                                              ; preds = %220
  store i32 %223, ptr %181, align 8, !tbaa !18
  br label %247

225:                                              ; preds = %220
  %226 = zext i32 %223 to i64
  %227 = tail call noalias ptr @malloc(i64 noundef %226) #16
  store ptr %227, ptr %185, align 8, !tbaa !22
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  tail call void @free(ptr noundef nonnull %217) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit39

230:                                              ; preds = %225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  %231 = load i32, ptr %187, align 8, !tbaa !23
  %232 = load i32, ptr %188, align 4, !tbaa !24
  %233 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %231, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %232, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %185, align 8, !tbaa !22
  tail call void @free(ptr noundef %236) #15
  %237 = load ptr, ptr %182, align 8, !tbaa !20
  tail call void @free(ptr noundef %237) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit39

238:                                              ; preds = %230
  store ptr null, ptr %23, align 8, !tbaa !25
  %239 = load i32, ptr %183, align 8, !tbaa !21
  %240 = load i32, ptr %184, align 4, !tbaa !19
  store i32 %240, ptr %181, align 8, !tbaa !18
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  store i32 %240, ptr %191, align 8, !tbaa !26
  %243 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %243, ptr %192, align 8, !tbaa !27
  store ptr %243, ptr %193, align 8, !tbaa !28
  br label %281

244:                                              ; preds = %209
  %245 = load i32, ptr %183, align 8, !tbaa !21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %281, label %247

247:                                              ; preds = %244, %238, %224
  %248 = phi ptr [ %211, %244 ], [ null, %238 ], [ %211, %224 ]
  %249 = load i32, ptr %24, align 8, !tbaa !30
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %.loopexit39, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #17
  br label %253

253:                                              ; preds = %275, %251
  %254 = phi ptr [ %248, %251 ], [ %279, %275 ]
  store i32 0, ptr %252, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %255 = load i32, ptr %24, align 8, !tbaa !30
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = zext nneg i32 %256 to i64
  %258 = load i32, ptr %190, align 4, !tbaa !31
  %259 = tail call i64 @write(i32 noundef %258, ptr noundef %254, i64 noundef %257) #15
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
  %269 = tail call ptr @strerror(i32 noundef %268) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #15
  br label %.loopexit39

270:                                              ; preds = %253
  %271 = load i32, ptr %24, align 8, !tbaa !30
  %272 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 %260), !nosanitize !32
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !32
  br i1 %273, label %274, label %275, !prof !33, !nosanitize !32

274:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

275:                                              ; preds = %270
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !32
  store i32 %276, ptr %24, align 8, !tbaa !30
  %277 = load ptr, ptr %23, align 8, !tbaa !25
  %278 = and i64 %259, 2147483647
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 %278
  store ptr %279, ptr %23, align 8, !tbaa !25
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %.loopexit39, label %253, !llvm.loop !34

281:                                              ; preds = %244, %242
  %282 = load i32, ptr %194, align 8, !tbaa !36
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %24, align 8, !tbaa !30
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %.loopexit39, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %194, align 8, !tbaa !36
  br label %289

289:                                              ; preds = %287, %281
  %290 = load i32, ptr %191, align 8, !tbaa !26
  br label %291

291:                                              ; preds = %341, %289
  %292 = phi i32 [ %290, %289 ], [ %338, %341 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %332

294:                                              ; preds = %291
  %295 = load ptr, ptr %192, align 8, !tbaa !27
  %296 = load ptr, ptr %193, align 8, !tbaa !28
  %297 = icmp ugt ptr %295, %296
  br i1 %297, label %298, label %329

298:                                              ; preds = %294
  %299 = tail call ptr @__errno_location() #17
  br label %300

300:                                              ; preds = %320, %298
  %301 = phi ptr [ %296, %298 ], [ %323, %320 ]
  %302 = phi ptr [ %295, %298 ], [ %324, %320 ]
  store i32 0, ptr %299, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %303 = ptrtoint ptr %302 to i64
  %304 = ptrtoint ptr %301 to i64
  %305 = sub i64 %303, %304
  %306 = tail call i64 @llvm.smin.i64(i64 %305, i64 1073741824)
  %307 = and i64 %306, 4294967295
  %308 = load i32, ptr %190, align 4, !tbaa !31
  %309 = tail call i64 @write(i32 noundef %308, ptr noundef %301, i64 noundef %307) #15
  %310 = and i64 %309, 2147483648
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %300
  %313 = load i32, ptr %299, align 4, !tbaa !4
  %314 = icmp eq i32 %313, 11
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  store i32 1, ptr %189, align 4, !tbaa !17
  %316 = load i32, ptr %299, align 4, !tbaa !4
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i32 [ %313, %312 ], [ %316, %315 ]
  %319 = tail call ptr @strerror(i32 noundef %318) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %319) #15
  br label %.loopexit39

320:                                              ; preds = %300
  %321 = load ptr, ptr %193, align 8, !tbaa !28
  %322 = and i64 %309, 2147483647
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store ptr %323, ptr %193, align 8, !tbaa !28
  %324 = load ptr, ptr %192, align 8, !tbaa !27
  %325 = icmp ugt ptr %324, %323
  br i1 %325, label %300, label %326, !llvm.loop !37

326:                                              ; preds = %320
  %327 = load i32, ptr %191, align 8, !tbaa !26
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326, %294
  %330 = load i32, ptr %181, align 8, !tbaa !18
  store i32 %330, ptr %191, align 8, !tbaa !26
  %331 = load ptr, ptr %185, align 8, !tbaa !22
  store ptr %331, ptr %192, align 8, !tbaa !27
  store ptr %331, ptr %193, align 8, !tbaa !28
  br label %332

332:                                              ; preds = %329, %326, %291
  %333 = phi i32 [ %327, %326 ], [ %330, %329 ], [ %292, %291 ]
  %334 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #15
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit39

337:                                              ; preds = %332
  %338 = load i32, ptr %191, align 8, !tbaa !26
  %339 = icmp ult i32 %333, %338
  br i1 %339, label %340, label %341, !prof !33, !nosanitize !32

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

341:                                              ; preds = %337
  %342 = icmp eq i32 %333, %338
  br i1 %342, label %.loopexit39, label %291, !llvm.loop !38

.loopexit39:                                      ; preds = %275, %341, %336, %317, %284, %267, %247, %235, %229, %219
  %343 = phi i1 [ false, %284 ], [ true, %267 ], [ false, %247 ], [ true, %229 ], [ true, %317 ], [ true, %336 ], [ false, %341 ], [ true, %219 ], [ true, %235 ], [ false, %275 ]
  %344 = load i32, ptr %24, align 8, !tbaa !30
  %345 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %344), !nosanitize !32
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !32
  br i1 %346, label %347, label %348, !prof !33, !nosanitize !32

347:                                              ; preds = %.loopexit39
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

348:                                              ; preds = %.loopexit39
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !32
  %350 = zext i32 %349 to i64
  %351 = load i64, ptr %195, align 8, !tbaa !39
  %352 = add nsw i64 %351, %350
  store i64 %352, ptr %195, align 8, !tbaa !39
  %353 = load i64, ptr %19, align 8, !tbaa !29
  %354 = sub nsw i64 %353, %350
  store i64 %354, ptr %19, align 8, !tbaa !29
  br i1 %343, label %.loopexit, label %355

355:                                              ; preds = %348
  %356 = icmp eq i64 %353, %350
  br i1 %356, label %.loopexit42, label %197, !llvm.loop !40

.loopexit42:                                      ; preds = %355, %18
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %359 = load i32, ptr %358, align 8, !tbaa !18
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %402

361:                                              ; preds = %.loopexit42
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %363 = load i32, ptr %362, align 4, !tbaa !19
  %364 = shl i32 %363, 1
  %365 = zext i32 %364 to i64
  %366 = tail call noalias ptr @malloc(i64 noundef %365) #16
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %366, ptr %367, align 8, !tbaa !20
  %368 = icmp eq ptr %366, null
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

370:                                              ; preds = %361
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %372 = load i32, ptr %371, align 8, !tbaa !21
  %373 = icmp eq i32 %372, 0
  %374 = load i32, ptr %362, align 4, !tbaa !19
  br i1 %373, label %376, label %375

375:                                              ; preds = %370
  store i32 %374, ptr %358, align 8, !tbaa !18
  br label %406

376:                                              ; preds = %370
  %377 = zext i32 %374 to i64
  %378 = tail call noalias ptr @malloc(i64 noundef %377) #16
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %378, ptr %379, align 8, !tbaa !22
  %380 = icmp eq ptr %378, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  tail call void @free(ptr noundef nonnull %366) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

382:                                              ; preds = %376
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %383, i8 0, i64 24, i1 false)
  %385 = load i32, ptr %384, align 8, !tbaa !23
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %387 = load i32, ptr %386, align 4, !tbaa !24
  %388 = tail call i32 @deflateInit2_(ptr noundef nonnull %357, i32 noundef %385, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %387, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %382
  %391 = load ptr, ptr %379, align 8, !tbaa !22
  tail call void @free(ptr noundef %391) #15
  %392 = load ptr, ptr %367, align 8, !tbaa !20
  tail call void @free(ptr noundef %392) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit

393:                                              ; preds = %382
  store ptr null, ptr %357, align 8, !tbaa !25
  %394 = load i32, ptr %371, align 8, !tbaa !21
  %395 = load i32, ptr %362, align 4, !tbaa !19
  store i32 %395, ptr %358, align 8, !tbaa !18
  %396 = icmp eq i32 %394, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %393
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %395, ptr %398, align 8, !tbaa !26
  %399 = load ptr, ptr %379, align 8, !tbaa !22
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %399, ptr %400, align 8, !tbaa !27
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %399, ptr %401, align 8, !tbaa !28
  br label %443

402:                                              ; preds = %.loopexit42
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %404 = load i32, ptr %403, align 8, !tbaa !21
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %443, label %406

406:                                              ; preds = %402, %393, %375
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %408 = load i32, ptr %407, align 8, !tbaa !30
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %.loopexit, label %410

410:                                              ; preds = %406
  %411 = tail call ptr @__errno_location() #17
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %414 = load ptr, ptr %357, align 8, !tbaa !25
  br label %415

415:                                              ; preds = %437, %410
  %416 = phi ptr [ %414, %410 ], [ %441, %437 ]
  store i32 0, ptr %411, align 4, !tbaa !4
  store i32 0, ptr %412, align 4, !tbaa !17
  %417 = load i32, ptr %407, align 8, !tbaa !30
  %418 = tail call i32 @llvm.umin.i32(i32 %417, i32 1073741824)
  %419 = zext nneg i32 %418 to i64
  %420 = load i32, ptr %413, align 4, !tbaa !31
  %421 = tail call i64 @write(i32 noundef %420, ptr noundef %416, i64 noundef %419) #15
  %422 = trunc i64 %421 to i32
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %415
  %425 = load i32, ptr %411, align 4, !tbaa !4
  %426 = icmp eq i32 %425, 11
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  store i32 1, ptr %412, align 4, !tbaa !17
  %428 = load i32, ptr %411, align 4, !tbaa !4
  br label %429

429:                                              ; preds = %427, %424
  %430 = phi i32 [ %425, %424 ], [ %428, %427 ]
  %431 = tail call ptr @strerror(i32 noundef %430) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %431) #15
  br label %.loopexit

432:                                              ; preds = %415
  %433 = load i32, ptr %407, align 8, !tbaa !30
  %434 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %433, i32 %422), !nosanitize !32
  %435 = extractvalue { i32, i1 } %434, 1, !nosanitize !32
  br i1 %435, label %436, label %437, !prof !33, !nosanitize !32

436:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

437:                                              ; preds = %432
  %438 = extractvalue { i32, i1 } %434, 0, !nosanitize !32
  store i32 %438, ptr %407, align 8, !tbaa !30
  %439 = load ptr, ptr %357, align 8, !tbaa !25
  %440 = and i64 %421, 2147483647
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  store ptr %441, ptr %357, align 8, !tbaa !25
  %442 = icmp eq i32 %438, 0
  br i1 %442, label %.loopexit, label %415, !llvm.loop !34

443:                                              ; preds = %402, %397
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %445 = load i32, ptr %444, align 8, !tbaa !36
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %454, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %449 = load i32, ptr %448, align 8, !tbaa !30
  %450 = or i32 %449, %1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %.loopexit, label %452

452:                                              ; preds = %447
  %453 = tail call i32 @deflateReset(ptr noundef nonnull %357) #15
  store i32 0, ptr %444, align 8, !tbaa !36
  br label %454

454:                                              ; preds = %452, %443
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %456 = icmp ne i32 %1, 0
  %457 = icmp ne i32 %1, 4
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %463 = load i32, ptr %455, align 8, !tbaa !26
  br label %464

464:                                              ; preds = %521, %454
  %465 = phi i32 [ %463, %454 ], [ %518, %521 ]
  %466 = phi i32 [ 0, %454 ], [ %514, %521 ]
  %467 = icmp eq i32 %465, 0
  br i1 %467, label %472, label %468

468:                                              ; preds = %464
  %469 = icmp eq i32 %466, 1
  %470 = or i1 %457, %469
  %471 = and i1 %456, %470
  br i1 %471, label %472, label %512

472:                                              ; preds = %468, %464
  %473 = load ptr, ptr %458, align 8, !tbaa !27
  %474 = load ptr, ptr %459, align 8, !tbaa !28
  %475 = icmp ugt ptr %473, %474
  br i1 %475, label %476, label %506

476:                                              ; preds = %472
  %477 = tail call ptr @__errno_location() #17
  br label %478

478:                                              ; preds = %498, %476
  %479 = phi ptr [ %474, %476 ], [ %501, %498 ]
  %480 = phi ptr [ %473, %476 ], [ %502, %498 ]
  store i32 0, ptr %477, align 4, !tbaa !4
  store i32 0, ptr %460, align 4, !tbaa !17
  %481 = ptrtoint ptr %480 to i64
  %482 = ptrtoint ptr %479 to i64
  %483 = sub i64 %481, %482
  %484 = tail call i64 @llvm.smin.i64(i64 %483, i64 1073741824)
  %485 = and i64 %484, 4294967295
  %486 = load i32, ptr %461, align 4, !tbaa !31
  %487 = tail call i64 @write(i32 noundef %486, ptr noundef %479, i64 noundef %485) #15
  %488 = and i64 %487, 2147483648
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %478
  %491 = load i32, ptr %477, align 4, !tbaa !4
  %492 = icmp eq i32 %491, 11
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  store i32 1, ptr %460, align 4, !tbaa !17
  %494 = load i32, ptr %477, align 4, !tbaa !4
  br label %495

495:                                              ; preds = %493, %490
  %496 = phi i32 [ %491, %490 ], [ %494, %493 ]
  %497 = tail call ptr @strerror(i32 noundef %496) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %497) #15
  br label %.loopexit

498:                                              ; preds = %478
  %499 = load ptr, ptr %459, align 8, !tbaa !28
  %500 = and i64 %487, 2147483647
  %501 = getelementptr inbounds nuw i8, ptr %499, i64 %500
  store ptr %501, ptr %459, align 8, !tbaa !28
  %502 = load ptr, ptr %458, align 8, !tbaa !27
  %503 = icmp ugt ptr %502, %501
  br i1 %503, label %478, label %504, !llvm.loop !37

504:                                              ; preds = %498
  %505 = load i32, ptr %455, align 8, !tbaa !26
  br label %506

506:                                              ; preds = %504, %472
  %507 = phi i32 [ %505, %504 ], [ %465, %472 ]
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = load i32, ptr %358, align 8, !tbaa !18
  store i32 %510, ptr %455, align 8, !tbaa !26
  %511 = load ptr, ptr %462, align 8, !tbaa !22
  store ptr %511, ptr %458, align 8, !tbaa !27
  store ptr %511, ptr %459, align 8, !tbaa !28
  br label %512

512:                                              ; preds = %509, %506, %468
  %513 = phi i32 [ %507, %506 ], [ %510, %509 ], [ %465, %468 ]
  %514 = tail call i32 @deflate(ptr noundef nonnull %357, i32 noundef range(i32 0, 6) %1) #15
  %515 = icmp eq i32 %514, -2
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit

517:                                              ; preds = %512
  %518 = load i32, ptr %455, align 8, !tbaa !26
  %519 = icmp ult i32 %513, %518
  br i1 %519, label %520, label %521, !prof !33, !nosanitize !32

520:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

521:                                              ; preds = %517
  %522 = icmp eq i32 %513, %518
  br i1 %522, label %523, label %464, !llvm.loop !38

523:                                              ; preds = %521
  %524 = icmp eq i32 %1, 4
  br i1 %524, label %525, label %.loopexit

525:                                              ; preds = %523
  store i32 1, ptr %444, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %348, %437, %525, %523, %516, %495, %447, %429, %406, %390, %381, %369, %174, %155, %98, %60, %51, %39
  %526 = load i32, ptr %9, align 8, !tbaa !16
  br label %527

527:                                              ; preds = %.loopexit, %16, %12, %4, %2
  %528 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %526, %.loopexit ]
  ret i32 %528
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %478, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %478

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %478, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %478

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
  br i1 %29, label %478, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.loopexit40, label %38

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
  br label %.loopexit38

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
  br label %.loopexit38

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
  br label %.loopexit38

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
  br label %120

81:                                               ; preds = %38
  %82 = load i32, ptr %19, align 8, !tbaa !21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %81, %72, %55
  %85 = load i32, ptr %35, align 8, !tbaa !30
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit40, label %87

87:                                               ; preds = %84
  %88 = tail call ptr @__errno_location() #17
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %91 = load ptr, ptr %6, align 8, !tbaa !25
  br label %92

92:                                               ; preds = %114, %87
  %93 = phi ptr [ %91, %87 ], [ %118, %114 ]
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
  br label %.loopexit38

109:                                              ; preds = %92
  %110 = load i32, ptr %35, align 8, !tbaa !30
  %111 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %110, i32 %99), !nosanitize !32
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !32
  br i1 %112, label %113, label %114, !prof !33, !nosanitize !32

113:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

114:                                              ; preds = %109
  %115 = extractvalue { i32, i1 } %111, 0, !nosanitize !32
  store i32 %115, ptr %35, align 8, !tbaa !30
  %116 = load ptr, ptr %6, align 8, !tbaa !25
  %117 = and i64 %98, 2147483647
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 %117
  store ptr %118, ptr %6, align 8, !tbaa !25
  %119 = icmp eq i32 %115, 0
  br i1 %119, label %.loopexit40, label %92, !llvm.loop !34

120:                                              ; preds = %81, %76
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %122 = load i32, ptr %121, align 8, !tbaa !36
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %35, align 8, !tbaa !30
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %.loopexit40, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %121, align 8, !tbaa !36
  br label %129

129:                                              ; preds = %127, %120
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %136 = load i32, ptr %130, align 8, !tbaa !26
  br label %137

137:                                              ; preds = %187, %129
  %138 = phi i32 [ %136, %129 ], [ %184, %187 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %178

140:                                              ; preds = %137
  %141 = load ptr, ptr %131, align 8, !tbaa !27
  %142 = load ptr, ptr %132, align 8, !tbaa !28
  %143 = icmp ugt ptr %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %140
  %145 = tail call ptr @__errno_location() #17
  br label %146

146:                                              ; preds = %166, %144
  %147 = phi ptr [ %142, %144 ], [ %169, %166 ]
  %148 = phi ptr [ %141, %144 ], [ %170, %166 ]
  store i32 0, ptr %145, align 4, !tbaa !4
  store i32 0, ptr %133, align 4, !tbaa !17
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %147 to i64
  %151 = sub i64 %149, %150
  %152 = tail call i64 @llvm.smin.i64(i64 %151, i64 1073741824)
  %153 = and i64 %152, 4294967295
  %154 = load i32, ptr %134, align 4, !tbaa !31
  %155 = tail call i64 @write(i32 noundef %154, ptr noundef %147, i64 noundef %153) #15
  %156 = and i64 %155, 2147483648
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %146
  %159 = load i32, ptr %145, align 4, !tbaa !4
  %160 = icmp eq i32 %159, 11
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  store i32 1, ptr %133, align 4, !tbaa !17
  %162 = load i32, ptr %145, align 4, !tbaa !4
  br label %163

163:                                              ; preds = %161, %158
  %164 = phi i32 [ %159, %158 ], [ %162, %161 ]
  %165 = tail call ptr @strerror(i32 noundef %164) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %165) #15
  br label %.loopexit38

166:                                              ; preds = %146
  %167 = load ptr, ptr %132, align 8, !tbaa !28
  %168 = and i64 %155, 2147483647
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 %168
  store ptr %169, ptr %132, align 8, !tbaa !28
  %170 = load ptr, ptr %131, align 8, !tbaa !27
  %171 = icmp ugt ptr %170, %169
  br i1 %171, label %146, label %172, !llvm.loop !37

172:                                              ; preds = %166
  %173 = load i32, ptr %130, align 8, !tbaa !26
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %140
  %176 = load i32, ptr %39, align 8, !tbaa !18
  store i32 %176, ptr %130, align 8, !tbaa !26
  %177 = load ptr, ptr %135, align 8, !tbaa !22
  store ptr %177, ptr %131, align 8, !tbaa !27
  store ptr %177, ptr %132, align 8, !tbaa !28
  br label %178

178:                                              ; preds = %175, %172, %137
  %179 = phi i32 [ %173, %172 ], [ %176, %175 ], [ %138, %137 ]
  %180 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %181 = icmp eq i32 %180, -2
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit38

183:                                              ; preds = %178
  %184 = load i32, ptr %130, align 8, !tbaa !26
  %185 = icmp ult i32 %179, %184
  br i1 %185, label %186, label %187, !prof !33, !nosanitize !32

186:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

187:                                              ; preds = %183
  %188 = icmp eq i32 %179, %184
  br i1 %188, label %.loopexit40, label %137, !llvm.loop !38

.loopexit40:                                      ; preds = %114, %187, %124, %84, %34
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %202 = load i64, ptr %31, align 8, !tbaa !29
  br label %203

203:                                              ; preds = %361, %.loopexit40
  %204 = phi i64 [ %202, %.loopexit40 ], [ %360, %361 ]
  %205 = phi i1 [ false, %.loopexit40 ], [ true, %361 ]
  %206 = load i32, ptr %189, align 8, !tbaa !18
  %207 = zext i32 %206 to i64
  %208 = tail call i64 @llvm.smin.i64(i64 %204, i64 %207)
  %209 = trunc i64 %208 to i32
  %210 = load ptr, ptr %190, align 8, !tbaa !20
  br i1 %205, label %215, label %211

211:                                              ; preds = %203
  %212 = and i64 %208, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %210, i8 0, i64 %212, i1 false)
  %213 = load ptr, ptr %190, align 8, !tbaa !20
  %214 = load i32, ptr %189, align 8, !tbaa !18
  br label %215

215:                                              ; preds = %211, %203
  %216 = phi i32 [ %214, %211 ], [ %206, %203 ]
  %217 = phi ptr [ %213, %211 ], [ %210, %203 ]
  store i32 %209, ptr %35, align 8, !tbaa !30
  store ptr %217, ptr %6, align 8, !tbaa !25
  %218 = icmp eq i32 %216, 0
  br i1 %218, label %219, label %250

219:                                              ; preds = %215
  %220 = load i32, ptr %191, align 4, !tbaa !19
  %221 = shl i32 %220, 1
  %222 = zext i32 %221 to i64
  %223 = tail call noalias ptr @malloc(i64 noundef %222) #16
  store ptr %223, ptr %190, align 8, !tbaa !20
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

226:                                              ; preds = %219
  %227 = load i32, ptr %19, align 8, !tbaa !21
  %228 = icmp eq i32 %227, 0
  %229 = load i32, ptr %191, align 4, !tbaa !19
  br i1 %228, label %231, label %230

230:                                              ; preds = %226
  store i32 %229, ptr %189, align 8, !tbaa !18
  br label %253

231:                                              ; preds = %226
  %232 = zext i32 %229 to i64
  %233 = tail call noalias ptr @malloc(i64 noundef %232) #16
  store ptr %233, ptr %192, align 8, !tbaa !22
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  tail call void @free(ptr noundef nonnull %223) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

236:                                              ; preds = %231
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %193, i8 0, i64 24, i1 false)
  %237 = load i32, ptr %23, align 8, !tbaa !23
  %238 = load i32, ptr %194, align 4, !tbaa !24
  %239 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %237, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %238, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load ptr, ptr %192, align 8, !tbaa !22
  tail call void @free(ptr noundef %242) #15
  %243 = load ptr, ptr %190, align 8, !tbaa !20
  tail call void @free(ptr noundef %243) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit36

244:                                              ; preds = %236
  store ptr null, ptr %6, align 8, !tbaa !25
  %245 = load i32, ptr %19, align 8, !tbaa !21
  %246 = load i32, ptr %191, align 4, !tbaa !19
  store i32 %246, ptr %189, align 8, !tbaa !18
  %247 = icmp eq i32 %245, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  store i32 %246, ptr %197, align 8, !tbaa !26
  %249 = load ptr, ptr %192, align 8, !tbaa !22
  store ptr %249, ptr %198, align 8, !tbaa !27
  store ptr %249, ptr %199, align 8, !tbaa !28
  br label %287

250:                                              ; preds = %215
  %251 = load i32, ptr %19, align 8, !tbaa !21
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %287, label %253

253:                                              ; preds = %250, %244, %230
  %254 = phi ptr [ %217, %250 ], [ null, %244 ], [ %217, %230 ]
  %255 = load i32, ptr %35, align 8, !tbaa !30
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %.loopexit36, label %257

257:                                              ; preds = %253
  %258 = tail call ptr @__errno_location() #17
  br label %259

259:                                              ; preds = %281, %257
  %260 = phi ptr [ %254, %257 ], [ %285, %281 ]
  store i32 0, ptr %258, align 4, !tbaa !4
  store i32 0, ptr %195, align 4, !tbaa !17
  %261 = load i32, ptr %35, align 8, !tbaa !30
  %262 = tail call i32 @llvm.umin.i32(i32 %261, i32 1073741824)
  %263 = zext nneg i32 %262 to i64
  %264 = load i32, ptr %196, align 4, !tbaa !31
  %265 = tail call i64 @write(i32 noundef %264, ptr noundef %260, i64 noundef %263) #15
  %266 = trunc i64 %265 to i32
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %259
  %269 = load i32, ptr %258, align 4, !tbaa !4
  %270 = icmp eq i32 %269, 11
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  store i32 1, ptr %195, align 4, !tbaa !17
  %272 = load i32, ptr %258, align 4, !tbaa !4
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %269, %268 ], [ %272, %271 ]
  %275 = tail call ptr @strerror(i32 noundef %274) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %275) #15
  br label %.loopexit36

276:                                              ; preds = %259
  %277 = load i32, ptr %35, align 8, !tbaa !30
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %277, i32 %266), !nosanitize !32
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !32
  br i1 %279, label %280, label %281, !prof !33, !nosanitize !32

280:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

281:                                              ; preds = %276
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !32
  store i32 %282, ptr %35, align 8, !tbaa !30
  %283 = load ptr, ptr %6, align 8, !tbaa !25
  %284 = and i64 %265, 2147483647
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 %284
  store ptr %285, ptr %6, align 8, !tbaa !25
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %.loopexit36, label %259, !llvm.loop !34

287:                                              ; preds = %250, %248
  %288 = load i32, ptr %200, align 8, !tbaa !36
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %35, align 8, !tbaa !30
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %.loopexit36, label %293

293:                                              ; preds = %290
  %294 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %200, align 8, !tbaa !36
  br label %295

295:                                              ; preds = %293, %287
  %296 = load i32, ptr %197, align 8, !tbaa !26
  br label %297

297:                                              ; preds = %347, %295
  %298 = phi i32 [ %296, %295 ], [ %344, %347 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %338

300:                                              ; preds = %297
  %301 = load ptr, ptr %198, align 8, !tbaa !27
  %302 = load ptr, ptr %199, align 8, !tbaa !28
  %303 = icmp ugt ptr %301, %302
  br i1 %303, label %304, label %335

304:                                              ; preds = %300
  %305 = tail call ptr @__errno_location() #17
  br label %306

306:                                              ; preds = %326, %304
  %307 = phi ptr [ %302, %304 ], [ %329, %326 ]
  %308 = phi ptr [ %301, %304 ], [ %330, %326 ]
  store i32 0, ptr %305, align 4, !tbaa !4
  store i32 0, ptr %195, align 4, !tbaa !17
  %309 = ptrtoint ptr %308 to i64
  %310 = ptrtoint ptr %307 to i64
  %311 = sub i64 %309, %310
  %312 = tail call i64 @llvm.smin.i64(i64 %311, i64 1073741824)
  %313 = and i64 %312, 4294967295
  %314 = load i32, ptr %196, align 4, !tbaa !31
  %315 = tail call i64 @write(i32 noundef %314, ptr noundef %307, i64 noundef %313) #15
  %316 = and i64 %315, 2147483648
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %326, label %318

318:                                              ; preds = %306
  %319 = load i32, ptr %305, align 4, !tbaa !4
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  store i32 1, ptr %195, align 4, !tbaa !17
  %322 = load i32, ptr %305, align 4, !tbaa !4
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %319, %318 ], [ %322, %321 ]
  %325 = tail call ptr @strerror(i32 noundef %324) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %325) #15
  br label %.loopexit36

326:                                              ; preds = %306
  %327 = load ptr, ptr %199, align 8, !tbaa !28
  %328 = and i64 %315, 2147483647
  %329 = getelementptr inbounds nuw i8, ptr %327, i64 %328
  store ptr %329, ptr %199, align 8, !tbaa !28
  %330 = load ptr, ptr %198, align 8, !tbaa !27
  %331 = icmp ugt ptr %330, %329
  br i1 %331, label %306, label %332, !llvm.loop !37

332:                                              ; preds = %326
  %333 = load i32, ptr %197, align 8, !tbaa !26
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332, %300
  %336 = load i32, ptr %189, align 8, !tbaa !18
  store i32 %336, ptr %197, align 8, !tbaa !26
  %337 = load ptr, ptr %192, align 8, !tbaa !22
  store ptr %337, ptr %198, align 8, !tbaa !27
  store ptr %337, ptr %199, align 8, !tbaa !28
  br label %338

338:                                              ; preds = %335, %332, %297
  %339 = phi i32 [ %333, %332 ], [ %336, %335 ], [ %298, %297 ]
  %340 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %341 = icmp eq i32 %340, -2
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit36

343:                                              ; preds = %338
  %344 = load i32, ptr %197, align 8, !tbaa !26
  %345 = icmp ult i32 %339, %344
  br i1 %345, label %346, label %347, !prof !33, !nosanitize !32

346:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

347:                                              ; preds = %343
  %348 = icmp eq i32 %339, %344
  br i1 %348, label %.loopexit36, label %297, !llvm.loop !38

.loopexit36:                                      ; preds = %281, %347, %342, %323, %290, %273, %253, %241, %235, %225
  %349 = phi i1 [ false, %290 ], [ true, %273 ], [ false, %253 ], [ true, %235 ], [ true, %323 ], [ true, %342 ], [ false, %347 ], [ true, %225 ], [ true, %241 ], [ false, %281 ]
  %350 = load i32, ptr %35, align 8, !tbaa !30
  %351 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %350), !nosanitize !32
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !32
  br i1 %352, label %353, label %354, !prof !33, !nosanitize !32

353:                                              ; preds = %.loopexit36
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

354:                                              ; preds = %.loopexit36
  %355 = extractvalue { i32, i1 } %351, 0, !nosanitize !32
  %356 = zext i32 %355 to i64
  %357 = load i64, ptr %201, align 8, !tbaa !39
  %358 = add nsw i64 %357, %356
  store i64 %358, ptr %201, align 8, !tbaa !39
  %359 = load i64, ptr %31, align 8, !tbaa !29
  %360 = sub nsw i64 %359, %356
  store i64 %360, ptr %31, align 8, !tbaa !29
  br i1 %349, label %.loopexit38, label %361

361:                                              ; preds = %354
  %362 = icmp eq i64 %359, %356
  br i1 %362, label %.loopexit39, label %203, !llvm.loop !40

.loopexit38:                                      ; preds = %354, %182, %163, %106, %69, %61, %50
  %363 = load i32, ptr %11, align 8, !tbaa !16
  br label %478

.loopexit39:                                      ; preds = %361, %30
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %365 = load i32, ptr %364, align 8, !tbaa !18
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %476, label %367

367:                                              ; preds = %.loopexit39
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %369 = load i32, ptr %368, align 8, !tbaa !30
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %.loopexit, label %371

371:                                              ; preds = %367
  %372 = load i32, ptr %19, align 8, !tbaa !21
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %407, label %374

374:                                              ; preds = %371
  %375 = tail call ptr @__errno_location() #17
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %378 = load ptr, ptr %6, align 8, !tbaa !25
  br label %379

379:                                              ; preds = %401, %374
  %380 = phi ptr [ %378, %374 ], [ %405, %401 ]
  store i32 0, ptr %375, align 4, !tbaa !4
  store i32 0, ptr %376, align 4, !tbaa !17
  %381 = load i32, ptr %368, align 8, !tbaa !30
  %382 = tail call i32 @llvm.umin.i32(i32 %381, i32 1073741824)
  %383 = zext nneg i32 %382 to i64
  %384 = load i32, ptr %377, align 4, !tbaa !31
  %385 = tail call i64 @write(i32 noundef %384, ptr noundef %380, i64 noundef %383) #15
  %386 = trunc i64 %385 to i32
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %396

388:                                              ; preds = %379
  %389 = load i32, ptr %375, align 4, !tbaa !4
  %390 = icmp eq i32 %389, 11
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  store i32 1, ptr %376, align 4, !tbaa !17
  %392 = load i32, ptr %375, align 4, !tbaa !4
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi i32 [ %389, %388 ], [ %392, %391 ]
  %395 = tail call ptr @strerror(i32 noundef %394) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %395) #15
  br label %473

396:                                              ; preds = %379
  %397 = load i32, ptr %368, align 8, !tbaa !30
  %398 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %397, i32 %386), !nosanitize !32
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !32
  br i1 %399, label %400, label %401, !prof !33, !nosanitize !32

400:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

401:                                              ; preds = %396
  %402 = extractvalue { i32, i1 } %398, 0, !nosanitize !32
  store i32 %402, ptr %368, align 8, !tbaa !30
  %403 = load ptr, ptr %6, align 8, !tbaa !25
  %404 = and i64 %385, 2147483647
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 %404
  store ptr %405, ptr %6, align 8, !tbaa !25
  %406 = icmp eq i32 %402, 0
  br i1 %406, label %.loopexit, label %379, !llvm.loop !34

407:                                              ; preds = %371
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %409 = load i32, ptr %408, align 8, !tbaa !36
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %413, label %411

411:                                              ; preds = %407
  %412 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %408, align 8, !tbaa !36
  br label %413

413:                                              ; preds = %411, %407
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %420 = load i32, ptr %414, align 8, !tbaa !26
  br label %421

421:                                              ; preds = %471, %413
  %422 = phi i32 [ %420, %413 ], [ %468, %471 ]
  %423 = load ptr, ptr %415, align 8, !tbaa !27
  %424 = load ptr, ptr %416, align 8, !tbaa !28
  %425 = icmp ugt ptr %423, %424
  br i1 %425, label %426, label %456

426:                                              ; preds = %421
  %427 = tail call ptr @__errno_location() #17
  br label %428

428:                                              ; preds = %448, %426
  %429 = phi ptr [ %424, %426 ], [ %451, %448 ]
  %430 = phi ptr [ %423, %426 ], [ %452, %448 ]
  store i32 0, ptr %427, align 4, !tbaa !4
  store i32 0, ptr %417, align 4, !tbaa !17
  %431 = ptrtoint ptr %430 to i64
  %432 = ptrtoint ptr %429 to i64
  %433 = sub i64 %431, %432
  %434 = tail call i64 @llvm.smin.i64(i64 %433, i64 1073741824)
  %435 = and i64 %434, 4294967295
  %436 = load i32, ptr %418, align 4, !tbaa !31
  %437 = tail call i64 @write(i32 noundef %436, ptr noundef %429, i64 noundef %435) #15
  %438 = and i64 %437, 2147483648
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %448, label %440

440:                                              ; preds = %428
  %441 = load i32, ptr %427, align 4, !tbaa !4
  %442 = icmp eq i32 %441, 11
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  store i32 1, ptr %417, align 4, !tbaa !17
  %444 = load i32, ptr %427, align 4, !tbaa !4
  br label %445

445:                                              ; preds = %443, %440
  %446 = phi i32 [ %441, %440 ], [ %444, %443 ]
  %447 = tail call ptr @strerror(i32 noundef %446) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %447) #15
  br label %473

448:                                              ; preds = %428
  %449 = load ptr, ptr %416, align 8, !tbaa !28
  %450 = and i64 %437, 2147483647
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 %450
  store ptr %451, ptr %416, align 8, !tbaa !28
  %452 = load ptr, ptr %415, align 8, !tbaa !27
  %453 = icmp ugt ptr %452, %451
  br i1 %453, label %428, label %454, !llvm.loop !37

454:                                              ; preds = %448
  %455 = load i32, ptr %414, align 8, !tbaa !26
  br label %456

456:                                              ; preds = %454, %421
  %457 = phi i32 [ %455, %454 ], [ %422, %421 ]
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load i32, ptr %364, align 8, !tbaa !18
  store i32 %460, ptr %414, align 8, !tbaa !26
  %461 = load ptr, ptr %419, align 8, !tbaa !22
  store ptr %461, ptr %415, align 8, !tbaa !27
  store ptr %461, ptr %416, align 8, !tbaa !28
  br label %462

462:                                              ; preds = %459, %456
  %463 = phi i32 [ %457, %456 ], [ %460, %459 ]
  %464 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %465 = icmp eq i32 %464, -2
  br i1 %465, label %466, label %467

466:                                              ; preds = %462
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %473

467:                                              ; preds = %462
  %468 = load i32, ptr %414, align 8, !tbaa !26
  %469 = icmp ult i32 %463, %468
  br i1 %469, label %470, label %471, !prof !33, !nosanitize !32

470:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

471:                                              ; preds = %467
  %472 = icmp eq i32 %463, %468
  br i1 %472, label %.loopexit, label %421, !llvm.loop !38

473:                                              ; preds = %466, %445, %393
  %474 = load i32, ptr %11, align 8, !tbaa !16
  br label %478

.loopexit:                                        ; preds = %401, %471, %367
  %475 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %476

476:                                              ; preds = %.loopexit, %.loopexit39
  store i32 %1, ptr %23, align 8, !tbaa !23
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %477, align 4, !tbaa !24
  br label %478

478:                                              ; preds = %476, %473, %.loopexit38, %26, %18, %14, %5, %3
  %479 = phi i32 [ 0, %476 ], [ -2, %3 ], [ -2, %5 ], [ %363, %.loopexit38 ], [ %474, %473 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %479
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %532, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %532

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.loopexit41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %.loopexit42, label %16

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
  br label %.loopexit40

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
  br label %.loopexit40

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
  br label %.loopexit40

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
  br label %101

61:                                               ; preds = %16
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %61, %52, %34
  %66 = load i32, ptr %13, align 8, !tbaa !30
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %.loopexit42, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @__errno_location() #17
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %72 = load ptr, ptr %12, align 8, !tbaa !25
  br label %73

73:                                               ; preds = %95, %68
  %74 = phi ptr [ %72, %68 ], [ %99, %95 ]
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
  br label %.loopexit40

90:                                               ; preds = %73
  %91 = load i32, ptr %13, align 8, !tbaa !30
  %92 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %91, i32 %80), !nosanitize !32
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !32
  br i1 %93, label %94, label %95, !prof !33, !nosanitize !32

94:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

95:                                               ; preds = %90
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !32
  store i32 %96, ptr %13, align 8, !tbaa !30
  %97 = load ptr, ptr %12, align 8, !tbaa !25
  %98 = and i64 %79, 2147483647
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 %98
  store ptr %99, ptr %12, align 8, !tbaa !25
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %.loopexit42, label %73, !llvm.loop !34

101:                                              ; preds = %61, %56
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %103 = load i32, ptr %102, align 8, !tbaa !36
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %13, align 8, !tbaa !30
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %.loopexit42, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %102, align 8, !tbaa !36
  br label %110

110:                                              ; preds = %108, %101
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %117 = load i32, ptr %111, align 8, !tbaa !26
  br label %118

118:                                              ; preds = %168, %110
  %119 = phi i32 [ %117, %110 ], [ %165, %168 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %159

121:                                              ; preds = %118
  %122 = load ptr, ptr %112, align 8, !tbaa !27
  %123 = load ptr, ptr %113, align 8, !tbaa !28
  %124 = icmp ugt ptr %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %121
  %126 = tail call ptr @__errno_location() #17
  br label %127

127:                                              ; preds = %147, %125
  %128 = phi ptr [ %123, %125 ], [ %150, %147 ]
  %129 = phi ptr [ %122, %125 ], [ %151, %147 ]
  store i32 0, ptr %126, align 4, !tbaa !4
  store i32 0, ptr %114, align 4, !tbaa !17
  %130 = ptrtoint ptr %129 to i64
  %131 = ptrtoint ptr %128 to i64
  %132 = sub i64 %130, %131
  %133 = tail call i64 @llvm.smin.i64(i64 %132, i64 1073741824)
  %134 = and i64 %133, 4294967295
  %135 = load i32, ptr %115, align 4, !tbaa !31
  %136 = tail call i64 @write(i32 noundef %135, ptr noundef %128, i64 noundef %134) #15
  %137 = and i64 %136, 2147483648
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %127
  %140 = load i32, ptr %126, align 4, !tbaa !4
  %141 = icmp eq i32 %140, 11
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  store i32 1, ptr %114, align 4, !tbaa !17
  %143 = load i32, ptr %126, align 4, !tbaa !4
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i32 [ %140, %139 ], [ %143, %142 ]
  %146 = tail call ptr @strerror(i32 noundef %145) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %146) #15
  br label %.loopexit40

147:                                              ; preds = %127
  %148 = load ptr, ptr %113, align 8, !tbaa !28
  %149 = and i64 %136, 2147483647
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 %149
  store ptr %150, ptr %113, align 8, !tbaa !28
  %151 = load ptr, ptr %112, align 8, !tbaa !27
  %152 = icmp ugt ptr %151, %150
  br i1 %152, label %127, label %153, !llvm.loop !37

153:                                              ; preds = %147
  %154 = load i32, ptr %111, align 8, !tbaa !26
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153, %121
  %157 = load i32, ptr %17, align 8, !tbaa !18
  store i32 %157, ptr %111, align 8, !tbaa !26
  %158 = load ptr, ptr %116, align 8, !tbaa !22
  store ptr %158, ptr %112, align 8, !tbaa !27
  store ptr %158, ptr %113, align 8, !tbaa !28
  br label %159

159:                                              ; preds = %156, %153, %118
  %160 = phi i32 [ %154, %153 ], [ %157, %156 ], [ %119, %118 ]
  %161 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %162 = icmp eq i32 %161, -2
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit40

164:                                              ; preds = %159
  %165 = load i32, ptr %111, align 8, !tbaa !26
  %166 = icmp ult i32 %160, %165
  br i1 %166, label %167, label %168, !prof !33, !nosanitize !32

167:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

168:                                              ; preds = %164
  %169 = icmp eq i32 %160, %165
  br i1 %169, label %.loopexit42, label %118, !llvm.loop !38

.loopexit42:                                      ; preds = %95, %168, %105, %65, %11
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

186:                                              ; preds = %344, %.loopexit42
  %187 = phi i64 [ %185, %.loopexit42 ], [ %343, %344 ]
  %188 = phi i1 [ false, %.loopexit42 ], [ true, %344 ]
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
  br i1 %201, label %202, label %233

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
  br label %.loopexit38

209:                                              ; preds = %202
  %210 = load i32, ptr %172, align 8, !tbaa !21
  %211 = icmp eq i32 %210, 0
  %212 = load i32, ptr %173, align 4, !tbaa !19
  br i1 %211, label %214, label %213

213:                                              ; preds = %209
  store i32 %212, ptr %170, align 8, !tbaa !18
  br label %236

214:                                              ; preds = %209
  %215 = zext i32 %212 to i64
  %216 = tail call noalias ptr @malloc(i64 noundef %215) #16
  store ptr %216, ptr %174, align 8, !tbaa !22
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  tail call void @free(ptr noundef nonnull %206) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit38

219:                                              ; preds = %214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %175, i8 0, i64 24, i1 false)
  %220 = load i32, ptr %176, align 8, !tbaa !23
  %221 = load i32, ptr %177, align 4, !tbaa !24
  %222 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %220, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %221, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = load ptr, ptr %174, align 8, !tbaa !22
  tail call void @free(ptr noundef %225) #15
  %226 = load ptr, ptr %171, align 8, !tbaa !20
  tail call void @free(ptr noundef %226) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %.loopexit38

227:                                              ; preds = %219
  store ptr null, ptr %12, align 8, !tbaa !25
  %228 = load i32, ptr %172, align 8, !tbaa !21
  %229 = load i32, ptr %173, align 4, !tbaa !19
  store i32 %229, ptr %170, align 8, !tbaa !18
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  store i32 %229, ptr %180, align 8, !tbaa !26
  %232 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %232, ptr %181, align 8, !tbaa !27
  store ptr %232, ptr %182, align 8, !tbaa !28
  br label %270

233:                                              ; preds = %198
  %234 = load i32, ptr %172, align 8, !tbaa !21
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %270, label %236

236:                                              ; preds = %233, %227, %213
  %237 = phi ptr [ %200, %233 ], [ null, %227 ], [ %200, %213 ]
  %238 = load i32, ptr %13, align 8, !tbaa !30
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %.loopexit38, label %240

240:                                              ; preds = %236
  %241 = tail call ptr @__errno_location() #17
  br label %242

242:                                              ; preds = %264, %240
  %243 = phi ptr [ %237, %240 ], [ %268, %264 ]
  store i32 0, ptr %241, align 4, !tbaa !4
  store i32 0, ptr %178, align 4, !tbaa !17
  %244 = load i32, ptr %13, align 8, !tbaa !30
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = zext nneg i32 %245 to i64
  %247 = load i32, ptr %179, align 4, !tbaa !31
  %248 = tail call i64 @write(i32 noundef %247, ptr noundef %243, i64 noundef %246) #15
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %242
  %252 = load i32, ptr %241, align 4, !tbaa !4
  %253 = icmp eq i32 %252, 11
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  store i32 1, ptr %178, align 4, !tbaa !17
  %255 = load i32, ptr %241, align 4, !tbaa !4
  br label %256

256:                                              ; preds = %254, %251
  %257 = phi i32 [ %252, %251 ], [ %255, %254 ]
  %258 = tail call ptr @strerror(i32 noundef %257) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %258) #15
  br label %.loopexit38

259:                                              ; preds = %242
  %260 = load i32, ptr %13, align 8, !tbaa !30
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %249), !nosanitize !32
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !32
  br i1 %262, label %263, label %264, !prof !33, !nosanitize !32

263:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

264:                                              ; preds = %259
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !32
  store i32 %265, ptr %13, align 8, !tbaa !30
  %266 = load ptr, ptr %12, align 8, !tbaa !25
  %267 = and i64 %248, 2147483647
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 %267
  store ptr %268, ptr %12, align 8, !tbaa !25
  %269 = icmp eq i32 %265, 0
  br i1 %269, label %.loopexit38, label %242, !llvm.loop !34

270:                                              ; preds = %233, %231
  %271 = load i32, ptr %183, align 8, !tbaa !36
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %13, align 8, !tbaa !30
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %.loopexit38, label %276

276:                                              ; preds = %273
  %277 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %183, align 8, !tbaa !36
  br label %278

278:                                              ; preds = %276, %270
  %279 = load i32, ptr %180, align 8, !tbaa !26
  br label %280

280:                                              ; preds = %330, %278
  %281 = phi i32 [ %279, %278 ], [ %327, %330 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %321

283:                                              ; preds = %280
  %284 = load ptr, ptr %181, align 8, !tbaa !27
  %285 = load ptr, ptr %182, align 8, !tbaa !28
  %286 = icmp ugt ptr %284, %285
  br i1 %286, label %287, label %318

287:                                              ; preds = %283
  %288 = tail call ptr @__errno_location() #17
  br label %289

289:                                              ; preds = %309, %287
  %290 = phi ptr [ %285, %287 ], [ %312, %309 ]
  %291 = phi ptr [ %284, %287 ], [ %313, %309 ]
  store i32 0, ptr %288, align 4, !tbaa !4
  store i32 0, ptr %178, align 4, !tbaa !17
  %292 = ptrtoint ptr %291 to i64
  %293 = ptrtoint ptr %290 to i64
  %294 = sub i64 %292, %293
  %295 = tail call i64 @llvm.smin.i64(i64 %294, i64 1073741824)
  %296 = and i64 %295, 4294967295
  %297 = load i32, ptr %179, align 4, !tbaa !31
  %298 = tail call i64 @write(i32 noundef %297, ptr noundef %290, i64 noundef %296) #15
  %299 = and i64 %298, 2147483648
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %309, label %301

301:                                              ; preds = %289
  %302 = load i32, ptr %288, align 4, !tbaa !4
  %303 = icmp eq i32 %302, 11
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  store i32 1, ptr %178, align 4, !tbaa !17
  %305 = load i32, ptr %288, align 4, !tbaa !4
  br label %306

306:                                              ; preds = %304, %301
  %307 = phi i32 [ %302, %301 ], [ %305, %304 ]
  %308 = tail call ptr @strerror(i32 noundef %307) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %308) #15
  br label %.loopexit38

309:                                              ; preds = %289
  %310 = load ptr, ptr %182, align 8, !tbaa !28
  %311 = and i64 %298, 2147483647
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %182, align 8, !tbaa !28
  %313 = load ptr, ptr %181, align 8, !tbaa !27
  %314 = icmp ugt ptr %313, %312
  br i1 %314, label %289, label %315, !llvm.loop !37

315:                                              ; preds = %309
  %316 = load i32, ptr %180, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315, %283
  %319 = load i32, ptr %170, align 8, !tbaa !18
  store i32 %319, ptr %180, align 8, !tbaa !26
  %320 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %320, ptr %181, align 8, !tbaa !27
  store ptr %320, ptr %182, align 8, !tbaa !28
  br label %321

321:                                              ; preds = %318, %315, %280
  %322 = phi i32 [ %316, %315 ], [ %319, %318 ], [ %281, %280 ]
  %323 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #15
  %324 = icmp eq i32 %323, -2
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %.loopexit38

326:                                              ; preds = %321
  %327 = load i32, ptr %180, align 8, !tbaa !26
  %328 = icmp ult i32 %322, %327
  br i1 %328, label %329, label %330, !prof !33, !nosanitize !32

329:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

330:                                              ; preds = %326
  %331 = icmp eq i32 %322, %327
  br i1 %331, label %.loopexit38, label %280, !llvm.loop !38

.loopexit38:                                      ; preds = %264, %330, %325, %306, %273, %256, %236, %224, %218, %208
  %332 = phi i1 [ false, %273 ], [ true, %256 ], [ false, %236 ], [ true, %218 ], [ true, %306 ], [ true, %325 ], [ false, %330 ], [ true, %208 ], [ true, %224 ], [ false, %264 ]
  %333 = load i32, ptr %13, align 8, !tbaa !30
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %333), !nosanitize !32
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !32
  br i1 %335, label %336, label %337, !prof !33, !nosanitize !32

336:                                              ; preds = %.loopexit38
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

337:                                              ; preds = %.loopexit38
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !32
  %339 = zext i32 %338 to i64
  %340 = load i64, ptr %184, align 8, !tbaa !39
  %341 = add nsw i64 %340, %339
  store i64 %341, ptr %184, align 8, !tbaa !39
  %342 = load i64, ptr %8, align 8, !tbaa !29
  %343 = sub nsw i64 %342, %339
  store i64 %343, ptr %8, align 8, !tbaa !29
  br i1 %332, label %.loopexit40, label %344

344:                                              ; preds = %337
  %345 = icmp eq i64 %342, %339
  br i1 %345, label %.loopexit41, label %186, !llvm.loop !40

.loopexit40:                                      ; preds = %337, %163, %144, %87, %49, %40, %28
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %347 = load i32, ptr %346, align 8, !tbaa !16
  br label %.loopexit41

.loopexit41:                                      ; preds = %344, %.loopexit40, %7
  %348 = phi i32 [ %347, %.loopexit40 ], [ 0, %7 ], [ 0, %344 ]
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %351 = load i32, ptr %350, align 8, !tbaa !18
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %394

353:                                              ; preds = %.loopexit41
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %355 = load i32, ptr %354, align 4, !tbaa !19
  %356 = shl i32 %355, 1
  %357 = zext i32 %356 to i64
  %358 = tail call noalias ptr @malloc(i64 noundef %357) #16
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %358, ptr %359, align 8, !tbaa !20
  %360 = icmp eq ptr %358, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %507

362:                                              ; preds = %353
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %364 = load i32, ptr %363, align 8, !tbaa !21
  %365 = icmp eq i32 %364, 0
  %366 = load i32, ptr %354, align 4, !tbaa !19
  br i1 %365, label %368, label %367

367:                                              ; preds = %362
  store i32 %366, ptr %350, align 8, !tbaa !18
  br label %398

368:                                              ; preds = %362
  %369 = zext i32 %366 to i64
  %370 = tail call noalias ptr @malloc(i64 noundef %369) #16
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %370, ptr %371, align 8, !tbaa !22
  %372 = icmp eq ptr %370, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  tail call void @free(ptr noundef nonnull %358) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %507

374:                                              ; preds = %368
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %375, i8 0, i64 24, i1 false)
  %377 = load i32, ptr %376, align 8, !tbaa !23
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %379 = load i32, ptr %378, align 4, !tbaa !24
  %380 = tail call i32 @deflateInit2_(ptr noundef nonnull %349, i32 noundef %377, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %379, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %374
  %383 = load ptr, ptr %371, align 8, !tbaa !22
  tail call void @free(ptr noundef %383) #15
  %384 = load ptr, ptr %359, align 8, !tbaa !20
  tail call void @free(ptr noundef %384) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %507

385:                                              ; preds = %374
  store ptr null, ptr %349, align 8, !tbaa !25
  %386 = load i32, ptr %363, align 8, !tbaa !21
  %387 = load i32, ptr %354, align 4, !tbaa !19
  store i32 %387, ptr %350, align 8, !tbaa !18
  %388 = icmp eq i32 %386, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %385
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %387, ptr %390, align 8, !tbaa !26
  %391 = load ptr, ptr %371, align 8, !tbaa !22
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %391, ptr %392, align 8, !tbaa !27
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %391, ptr %393, align 8, !tbaa !28
  br label %435

394:                                              ; preds = %.loopexit41
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %396 = load i32, ptr %395, align 8, !tbaa !21
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %435, label %398

398:                                              ; preds = %394, %385, %367
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %400 = load i32, ptr %399, align 8, !tbaa !30
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %.loopexit, label %402

402:                                              ; preds = %398
  %403 = tail call ptr @__errno_location() #17
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %406 = load ptr, ptr %349, align 8, !tbaa !25
  br label %407

407:                                              ; preds = %429, %402
  %408 = phi ptr [ %406, %402 ], [ %433, %429 ]
  store i32 0, ptr %403, align 4, !tbaa !4
  store i32 0, ptr %404, align 4, !tbaa !17
  %409 = load i32, ptr %399, align 8, !tbaa !30
  %410 = tail call i32 @llvm.umin.i32(i32 %409, i32 1073741824)
  %411 = zext nneg i32 %410 to i64
  %412 = load i32, ptr %405, align 4, !tbaa !31
  %413 = tail call i64 @write(i32 noundef %412, ptr noundef %408, i64 noundef %411) #15
  %414 = trunc i64 %413 to i32
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %407
  %417 = load i32, ptr %403, align 4, !tbaa !4
  %418 = icmp eq i32 %417, 11
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  store i32 1, ptr %404, align 4, !tbaa !17
  %420 = load i32, ptr %403, align 4, !tbaa !4
  br label %421

421:                                              ; preds = %419, %416
  %422 = phi i32 [ %417, %416 ], [ %420, %419 ]
  %423 = tail call ptr @strerror(i32 noundef %422) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %423) #15
  br label %507

424:                                              ; preds = %407
  %425 = load i32, ptr %399, align 8, !tbaa !30
  %426 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %425, i32 %414), !nosanitize !32
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !32
  br i1 %427, label %428, label %429, !prof !33, !nosanitize !32

428:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

429:                                              ; preds = %424
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !32
  store i32 %430, ptr %399, align 8, !tbaa !30
  %431 = load ptr, ptr %349, align 8, !tbaa !25
  %432 = and i64 %413, 2147483647
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  store ptr %433, ptr %349, align 8, !tbaa !25
  %434 = icmp eq i32 %430, 0
  br i1 %434, label %.loopexit, label %407, !llvm.loop !34

435:                                              ; preds = %394, %389
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %437 = load i32, ptr %436, align 8, !tbaa !36
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %441, label %439

439:                                              ; preds = %435
  %440 = tail call i32 @deflateReset(ptr noundef nonnull %349) #15
  store i32 0, ptr %436, align 8, !tbaa !36
  br label %441

441:                                              ; preds = %439, %435
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %448 = load i32, ptr %442, align 8, !tbaa !26
  br label %449

449:                                              ; preds = %504, %441
  %450 = phi i32 [ %448, %441 ], [ %501, %504 ]
  %451 = phi i32 [ 0, %441 ], [ %497, %504 ]
  %452 = icmp eq i32 %450, 0
  %453 = icmp eq i32 %451, 1
  %454 = or i1 %452, %453
  br i1 %454, label %455, label %495

455:                                              ; preds = %449
  %456 = load ptr, ptr %443, align 8, !tbaa !27
  %457 = load ptr, ptr %444, align 8, !tbaa !28
  %458 = icmp ugt ptr %456, %457
  br i1 %458, label %459, label %489

459:                                              ; preds = %455
  %460 = tail call ptr @__errno_location() #17
  br label %461

461:                                              ; preds = %481, %459
  %462 = phi ptr [ %457, %459 ], [ %484, %481 ]
  %463 = phi ptr [ %456, %459 ], [ %485, %481 ]
  store i32 0, ptr %460, align 4, !tbaa !4
  store i32 0, ptr %445, align 4, !tbaa !17
  %464 = ptrtoint ptr %463 to i64
  %465 = ptrtoint ptr %462 to i64
  %466 = sub i64 %464, %465
  %467 = tail call i64 @llvm.smin.i64(i64 %466, i64 1073741824)
  %468 = and i64 %467, 4294967295
  %469 = load i32, ptr %446, align 4, !tbaa !31
  %470 = tail call i64 @write(i32 noundef %469, ptr noundef %462, i64 noundef %468) #15
  %471 = and i64 %470, 2147483648
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %481, label %473

473:                                              ; preds = %461
  %474 = load i32, ptr %460, align 4, !tbaa !4
  %475 = icmp eq i32 %474, 11
  br i1 %475, label %476, label %478

476:                                              ; preds = %473
  store i32 1, ptr %445, align 4, !tbaa !17
  %477 = load i32, ptr %460, align 4, !tbaa !4
  br label %478

478:                                              ; preds = %476, %473
  %479 = phi i32 [ %474, %473 ], [ %477, %476 ]
  %480 = tail call ptr @strerror(i32 noundef %479) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %480) #15
  br label %507

481:                                              ; preds = %461
  %482 = load ptr, ptr %444, align 8, !tbaa !28
  %483 = and i64 %470, 2147483647
  %484 = getelementptr inbounds nuw i8, ptr %482, i64 %483
  store ptr %484, ptr %444, align 8, !tbaa !28
  %485 = load ptr, ptr %443, align 8, !tbaa !27
  %486 = icmp ugt ptr %485, %484
  br i1 %486, label %461, label %487, !llvm.loop !37

487:                                              ; preds = %481
  %488 = load i32, ptr %442, align 8, !tbaa !26
  br label %489

489:                                              ; preds = %487, %455
  %490 = phi i32 [ %488, %487 ], [ %450, %455 ]
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load i32, ptr %350, align 8, !tbaa !18
  store i32 %493, ptr %442, align 8, !tbaa !26
  %494 = load ptr, ptr %447, align 8, !tbaa !22
  store ptr %494, ptr %443, align 8, !tbaa !27
  store ptr %494, ptr %444, align 8, !tbaa !28
  br label %495

495:                                              ; preds = %492, %489, %449
  %496 = phi i32 [ %490, %489 ], [ %493, %492 ], [ %450, %449 ]
  %497 = tail call i32 @deflate(ptr noundef nonnull %349, i32 noundef 4) #15
  %498 = icmp eq i32 %497, -2
  br i1 %498, label %499, label %500

499:                                              ; preds = %495
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %507

500:                                              ; preds = %495
  %501 = load i32, ptr %442, align 8, !tbaa !26
  %502 = icmp ult i32 %496, %501
  br i1 %502, label %503, label %504, !prof !33, !nosanitize !32

503:                                              ; preds = %500
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

504:                                              ; preds = %500
  %505 = icmp eq i32 %496, %501
  br i1 %505, label %506, label %449, !llvm.loop !38

506:                                              ; preds = %504
  store i32 1, ptr %436, align 8, !tbaa !36
  br label %.loopexit

507:                                              ; preds = %499, %478, %421, %382, %373, %361
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %509 = load i32, ptr %508, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %429, %507, %506, %398
  %510 = phi i32 [ %509, %507 ], [ %348, %398 ], [ %348, %506 ], [ %348, %429 ]
  %511 = load i32, ptr %350, align 8, !tbaa !18
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %524, label %513

513:                                              ; preds = %.loopexit
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %515 = load i32, ptr %514, align 8, !tbaa !21
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %513
  %518 = tail call i32 @deflateEnd(ptr noundef nonnull %349) #15
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %520 = load ptr, ptr %519, align 8, !tbaa !22
  tail call void @free(ptr noundef %520) #15
  br label %521

521:                                              ; preds = %517, %513
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %523 = load ptr, ptr %522, align 8, !tbaa !20
  tail call void @free(ptr noundef %523) #15
  br label %524

524:                                              ; preds = %521, %.loopexit
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %526 = load ptr, ptr %525, align 8, !tbaa !45
  tail call void @free(ptr noundef %526) #15
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %528 = load i32, ptr %527, align 4, !tbaa !31
  %529 = tail call i32 @close(i32 noundef %528) #15
  %530 = icmp eq i32 %529, -1
  %531 = select i1 %530, i32 -1, i32 %510
  tail call void @free(ptr noundef nonnull %0) #15
  br label %532

532:                                              ; preds = %524, %3, %1
  %533 = phi i32 [ %531, %524 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %533
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

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
attributes #18 = { nomerge noreturn nounwind }
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
!32 = !{}
!33 = !{!"branch_weights", i32 1, i32 1048575}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!9, !5, i64 104}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!9, !13, i64 16}
!40 = distinct !{!40, !35}
!41 = !{!9, !5, i64 144}
!42 = !{!9, !11, i64 136}
!43 = distinct !{!43, !35}
!44 = !{!6, !6, i64 0}
!45 = !{!9, !11, i64 32}
